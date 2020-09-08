Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A021D261298
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598916E842;
	Tue,  8 Sep 2020 14:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8F3A6E4E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 10:32:41 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id c10so15450519edk.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Sep 2020 03:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sior-be.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MmrpT2iDfcYtx9VDEEtRqqNAR2mycMe15/tVKCQ8MG8=;
 b=YprpFTHDhaFJkK9f7pzFydwp9te82djacbA8HsrEjou8mk/fBmT1bvs+JV2SJeabVS
 tJUfWRGJIb9jdBS1fdy8gYELiWbTNweOBSy0jE+Xwch3YplVvSsVrHAmW3t59+0uVLp8
 7kIdyod3dn/JF1NTJAellP5qa7EpRyNbAll8NAI6vPYX7Da/yM7sNS+4kJT+jS1OWs7a
 c0tYZrgODcyLtPZeGFrlumXWiOazks2s8p7cEOfRdq1UXLlzrcX5fqapCxstZjK8LctE
 pMX7jwwl175NCouTZJ7U4ZGsCvHwEkv6rgZA33DY8vvrFAaV7rLkBH6Z+XXkxuENlnVj
 T8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MmrpT2iDfcYtx9VDEEtRqqNAR2mycMe15/tVKCQ8MG8=;
 b=o9canFcbCVX1i832cSaNjK4qSSeX3VfsuG8meJhyR6E1PqLhY1vwHx/py19x3h1bhV
 d5SPBAxNTnk22CywcIsPNvu6U7I4ssRkNdKm4k7ViGBg/x9LwazkzxCKn7eXsnbwEDY9
 qtua2lh7kE/cKOVw2L00KjtIlRn82t1aG1sNfHiXFgvbFzlBgcgODmGHE8maCg79HVxy
 iJzu2wfQEwTzVe9GGz7aE68l+cFwmyHqFUVWUeVGvtgjW8MP5U1NN12dsxbA9AxSOPgq
 dbwUHdALqBKqqYOpQSgVNvAoozuwgNhUdzhPy/iYZ79BFRLWQQrkQ3V1TS9S39dop8Be
 YHkQ==
X-Gm-Message-State: AOAM531dkU8eba4e9oqtYno+Z2kktIvJdPVdM+HqXlDnNBXVuVg9iPok
 y1BHeUxZt0HAU9UQ397ZIxPdQg==
X-Google-Smtp-Source: ABdhPJy1342pFfoFTIRUwWKdwb/ygHnwZo9GAVPV1Q2EnNid3WdNBcuTVxSomezSuPgbneDfModeZQ==
X-Received: by 2002:a50:aa94:: with SMTP id q20mr25548359edc.119.1599561160112; 
 Tue, 08 Sep 2020 03:32:40 -0700 (PDT)
Received: from aws.localdomain ([94.107.139.190])
 by smtp.gmail.com with ESMTPSA id j10sm17302091ejf.116.2020.09.08.03.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 03:32:39 -0700 (PDT)
From: Alejandro Sior <aho@sior.be>
To: 
Date: Tue,  8 Sep 2020 12:32:25 +0200
Message-Id: <20200908103226.27616-1-aho@sior.be>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Sep 2020 14:23:54 +0000
Subject: [Intel-gfx] [PATCH] Fixed NULL pointer dereference in handle_edid
 functions for GPUs that do not support EDID
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the function intel_vgpu_reg_rw_edid of gvt/kvmgt.c, pos can get equal to NULL for GPUs that do not
properly support EDID. In those cases, when pos gets passed to the handle_edid functions, it
gets added a short offset then it's dereferenced in memcpy's, leading to a kernel
oops: null pointer dereference.

More concretely, that kernel oops renders Broadwell GPUs users
completely unable to set up virtual machines with virtual GPU passthrough (virtual machines
hang indefinitely when trying to make use of the virtual GPU), and make
them have huge problems when trying to remove the virtual GPUs once the
kernel oops has happened (writing 1 in the vGPU remove file just makes
the operation hang undefinitely, again, and the kernel is unable to shutdown
since the vGPU removing hangs indefinitely). More information on the
issues that this causes are described in details in this github issue post: https://github.com/intel/gvt-linux/issues/170#issuecomment-685806160

This patch solves this problem by checking is pos is equal to NULL, and
if it is, it sets ret to a nagative value, making the module simply indicate that the access to EDID region has failed, without any fatal repercussion.

When this patch is applied, Broadwell GPU users do not suffer from that
kernel oops anymore, and thus do not encounter any of
the described problems and get able to set up virtual machines
with GPU passthrough without problems.
Users of GPUs with proper EDID support, are of course, still able to
benefit from the EDID features.

Signed-off-by: Alejandro W. Sior <aho@sior.be>

---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index ad8a9df49f29..49163363ba4a 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -557,7 +557,9 @@ static size_t intel_vgpu_reg_rw_edid(struct intel_vgpu *vgpu, char *buf,
 		(struct vfio_edid_region *)kvmgt_vdev(vgpu)->region[i].data;
 	loff_t pos = *ppos & VFIO_PCI_OFFSET_MASK;
 
-	if (pos < region->vfio_edid_regs.edid_offset) {
+	if (pos == NULL) {
+		ret = -EINVAL;
+	} else if (pos < region->vfio_edid_regs.edid_offset) {
 		ret = handle_edid_regs(vgpu, region, buf, count, pos, iswrite);
 	} else {
 		pos -= EDID_BLOB_OFFSET;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
