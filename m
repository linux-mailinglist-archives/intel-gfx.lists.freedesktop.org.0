Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6D2369AA6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Apr 2021 21:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914FD6EC30;
	Fri, 23 Apr 2021 19:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF9916E15D;
 Fri, 23 Apr 2021 19:08:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5F52A3ECB;
 Fri, 23 Apr 2021 19:08:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 23 Apr 2021 19:08:07 -0000
Message-ID: <161920488787.2792.13063723081363799161@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423184309.207645-1-lyude@redhat.com>
In-Reply-To: <20210423184309.207645-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29?=
 =?utf-8?q?=29_in_DP_helpers_=28rev7=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev7)
URL   : https://patchwork.freedesktop.org/series/87242/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
52998af1e7bf drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
cb595a8161ed drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
9fd492eba1f4 drm/dp: Add backpointer to drm_device in drm_dp_aux
20eaf286aee6 drm/dp: Clarify DP AUX registration time
4afbe03f74bd drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
5eec900104fb drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
ec9a3dd1af61 drm/dp: Always print aux channel name in logs
ba18aefd2372 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
780ab29868d5 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
0824283ce661 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
e3c71d7763fc drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
92a042cc3107 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
4eb5d5051d28 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
-:56: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:74:
+									       crtc_state->port_clock,

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
d00493c9e9d3 drm/print: Handle potentially NULL drm_devices in drm_dbg_*
793080602202 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
ca7da68d794d drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
a090abb4f62f drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
