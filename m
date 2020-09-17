Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01A26E4D4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 21:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64CC6EC74;
	Thu, 17 Sep 2020 18:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB7E6EC74
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 18:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 296AC3F386;
 Thu, 17 Sep 2020 20:59:56 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=j19XcJrn; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPhlgtdXGqMh; Thu, 17 Sep 2020 20:59:55 +0200 (CEST)
Received: by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id BB0C63F2C1;
 Thu, 17 Sep 2020 20:59:53 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 01BC6361D84;
 Thu, 17 Sep 2020 20:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1600369193; bh=p+/hHmSZSBIm3UsNvQLbKQHS4geGjUP8WEmuHF2MEGk=;
 h=From:To:Cc:Subject:Date:From;
 b=j19XcJrn9JZWdx6uyPrBk33z4NW21ZgI7ZQdg4i7sfRlZweRRCtAoK6kZ0BrfmPg2
 kvbadj0rSzU8aQHcjNPcbZAotjN/UHxLz65oIzWmMK/wx8Sphj2pVAsF42FqMHXCrY
 SJFm/xMq3Wc7fhZhDAGOl9XJ+j/QU4Et9OL6aXY0=
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m=20=28Intel=29?=
 <thomas_os@shipmail.org>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Sep 2020 20:59:43 +0200
Message-Id: <20200917185945.11734-1-thomas_os@shipmail.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH v2 0/2] Introduce a ww transaction utility
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

v2: Version 1 of patch 2 was obviously a WIP patch. Fix that.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
