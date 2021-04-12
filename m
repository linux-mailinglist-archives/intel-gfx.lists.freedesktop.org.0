Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A717435CC89
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 18:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C19989B68;
	Mon, 12 Apr 2021 16:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F6A089B68
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 16:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618245139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=KLSeyjnN+Nc0bGTYt65N2Vzxd1h3fZ8Uio7k1E2dBH0=;
 b=OxW7AoVoe0UY780/FPCejKlGdmEVzcdW2qf/4CK8Ws8ygl+tG69VFY/HNS/rCclizgxX0Y
 ykkRa3Zyr79aa+RIk9h/A76Ii7EywnqJkG19rNklsoqbC9cSFexaFcI0fxNYaI6VdvfhVY
 HjGXRqOAkW8sSDPIKZMtGI60uxLXohk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-rzmZgZcxOXKp6oDTt5Yv7Q-1; Mon, 12 Apr 2021 12:32:17 -0400
X-MC-Unique: rzmZgZcxOXKp6oDTt5Yv7Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D972F6D241;
 Mon, 12 Apr 2021 16:32:15 +0000 (UTC)
Received: from omen (ovpn-117-254.rdu2.redhat.com [10.10.117.254])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 13A0010023AB;
 Mon, 12 Apr 2021 16:32:14 +0000 (UTC)
Date: Mon, 12 Apr 2021 10:32:14 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: zhenyuw@linux.intel.com, zhi.a.wang@intel.com
Message-ID: <20210412103214.337d521a@omen>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] Regression: gvt: vgpu 1: MI_LOAD_REGISTER_MEM handler
 error
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
Cc: intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Running a Windows guest on a i915-GVTg_V4_2 from an HD 5500 IGD on
v5.12-rc6 results in host logs:

gvt: vgpu 1: lrm access to register (20c0)
gvt: vgpu 1: MI_LOAD_REGISTER_MEM handler error
gvt: vgpu 1: cmd parser error
0x0 
0x29 

gvt: vgpu 1: scan wa ctx error
gvt: vgpu 1: failed to submit desc 0
gvt: vgpu 1: fail submit workload on ring rcs0
gvt: vgpu 1: fail to emulate MMIO write 00002230 len 4

The guest goes into a boot loop triggering this error before reaching
the desktop and rebooting.  Guest using Intel driver 20.19.15.5171
dated 11/4/2020 (from driver file 15.40.5171).

This VM works well with the same guest and userspace software stack on
Fedora's kernel 5.11.11-200.fc33.x86_64.  Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
