Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B11026D7EF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 11:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7856EB92;
	Thu, 17 Sep 2020 09:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771566EB97
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 09:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 3CBCE3F3D0;
 Thu, 17 Sep 2020 11:44:24 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=lxZ9NaoS; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwoXG5odrwbP; Thu, 17 Sep 2020 11:44:23 +0200 (CEST)
Received: by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id C52143F3B9;
 Thu, 17 Sep 2020 11:44:19 +0200 (CEST)
Received: from thellstr-mobl2.intel.com (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 874B836010B;
 Thu, 17 Sep 2020 11:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1600335863; bh=UV0wQ33QbJJmynT5f7OrDL6/teqC1gShqspdMtyma+c=;
 h=From:To:Cc:Subject:Date:From;
 b=lxZ9NaoSyl48r6x2h/eR84zSzSgSya6sPW3cpjTErWMRescff4w8ovtVpGtE7jOyC
 SiQQnFJz2gb8bHDgOveiOcBLGRf/4P3Xe1iPz5dEFBdQhT0ntLB8j7x6R8CDkXi2TU
 UgP68+9ox7LxTQQoBWSa5U1Zq5xVL7ClnFFvchy0=
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28Intel=29?=
 <thomas_os@shipmail.org>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Sep 2020 11:44:07 +0200
Message-Id: <20200917094409.193697-1-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 0/2] Introduce a ww transaction utility
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: maarten.lankhorst@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A ww transaction utility intended to help removing the
obj->mm.lock from the driver and introduce ww transactions
in a robust way.

Patch 1/2 breaks the current i915 utilities out to separate files
Patch 2/2 introduces the ww transaction utility

A similar utility could easily be introduced in the core
ww_mutex code, allowing even for cross-driver ww transactions,
and the template argument could then allow for per-ww-class derived
ww_acquire_mutex types. To facilitate a core implementation, (since we
can never guarantee the contended lock stays alive), we'd need a

void ww_mutex_relax(struct ww_acquire_ctx *)

and its interruptible variant that does the equivalent of
locking and unlocking the contended mutex.

With this driver implementation, we can extend the code to take a
reference on the object containing the contended lock to make sure
it stays alive.

Finally, the drawback of the current implementation is the use of the hash
table and corresponding performance cost, but as mentioned in
patch 2, a core variant could probably do this in a much more
efficient way.


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
