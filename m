Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0297632823
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:29:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C987110E300;
	Mon, 21 Nov 2022 15:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 574B410E16B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 00:22:30 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 m6-20020aa79006000000b0056bc283f477so1808261pfo.19
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 16:22:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=/Qtct265AUs3mCRq4YXmCFT3mbV9fW5IFtDc5J2z2zs=;
 b=FBR88osY8fIlZLbRznAOCa2Xf7BHDJaHVBD3PLmB9KlLJqRyRDDLI3zyzsZcD0Rn5m
 5oCwjogt2zecTA7RiD9yeOlvc55mEqbD8BgDuCuDPhgkuTUGCTX+PZfFw8d63rpWQhSP
 4YkKHAyfDPUatmW5/skfXM0hFEJa+6kp7KfEuEWXg7E4DNB1ZzIThCPt1PM0BzD8Xdhq
 A/EPbIV3ybXi65UzJTKQ8T8FJMvIkmMoPVo3GTuq4UapPDYeRJRzaqoquBxRN2AYC9KA
 A/DU8ldikEieGp5BDIr3DGthufNFJEG9FQ/iYXTHPCiQh1sE8mL3YkDDK1B4aUDeO2MN
 Z8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/Qtct265AUs3mCRq4YXmCFT3mbV9fW5IFtDc5J2z2zs=;
 b=ZQlQTCuGVYxeSEyxO6Gar9fUl2Cd61mpG9f4SOhNd7Eh6skGDpsXzzqRm5RJIJHoCA
 DDBwZWBi7LVDtaBtjA9xygCyWpMcTDjkMCE3XSCGCh8Ivmi4sBaGRgfmIfVi9cHYLGfo
 wYc/1JVKObZ19eAgFuJsQp88twwIJK93O6yvUG3YV1aRhdfFz8pcLzl4blil1s6R/KaH
 FsGD4lB78ALdkvpceeM1nw5iLuoEhPqtaQv0QhvyLwMEKDkdDgcPuyKN60q+yJ1xd3ya
 LDJbrqQz/lr3CvzZnlazYBSN6ETGb5zLAvx4W0fmTeHsfA4dt0Viz3OZ6duzh2xOyrA1
 8c3w==
X-Gm-Message-State: ACrzQf0/RBiwml1rHBYsk9K0QUE0xwIDh9vHKIiI3noe5+8fSI3TdWH4
 bJzWWhsP/Gee/QB1PBpfBOVCLlCBFT4=
X-Google-Smtp-Source: AMsMyM7iJ8xUv6oGaaWJB9TjFOHAMhWthcMv2slpXsAbeSOdSGcqg31xUyPwviIZlQaEysgjStUI+jeH2IM=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6a00:703:b0:56c:e37d:ec12 with SMTP id
 3-20020a056a00070300b0056ce37dec12mr4208245pfl.80.1668126149761; Thu, 10 Nov
 2022 16:22:29 -0800 (PST)
Date: Fri, 11 Nov 2022 00:22:24 +0000
In-Reply-To: <20221111002225.2418386-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221111002225.2418386-1-seanjc@google.com>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
Message-ID: <20221111002225.2418386-2-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 21 Nov 2022 15:26:23 +0000
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gvt: Get reference to KVM iff
 attachment to VM is successful
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
Reply-To: Sean Christopherson <seanjc@google.com>
Cc: Sean Christopherson <seanjc@google.com>, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Get a reference to KVM if and only if a vGPU is successfully attached to
the VM to avoid leaking a reference if there's no available vGPU.  On
open_device() failure, vfio_device_open() doesn't invoke close_device().

Fixes: 421cfe6596f6 ("vfio: remove VFIO_GROUP_NOTIFY_SET_KVM")
Cc: stable@vger.kernel.org
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 7a45e5360caf..e67d5267fde0 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -664,8 +664,6 @@ static int intel_vgpu_open_device(struct vfio_device *vfio_dev)
 		return -ESRCH;
 	}
 
-	kvm_get_kvm(vgpu->vfio_device.kvm);
-
 	if (__kvmgt_vgpu_exist(vgpu))
 		return -EEXIST;
 
@@ -676,6 +674,7 @@ static int intel_vgpu_open_device(struct vfio_device *vfio_dev)
 
 	vgpu->track_node.track_write = kvmgt_page_track_write;
 	vgpu->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
+	kvm_get_kvm(vgpu->vfio_device.kvm);
 	kvm_page_track_register_notifier(vgpu->vfio_device.kvm,
 					 &vgpu->track_node);
 
-- 
2.38.1.431.g37b22c650d-goog

