Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4775364E6B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 01:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA796E4A7;
	Mon, 19 Apr 2021 23:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEA8C6E479;
 Mon, 19 Apr 2021 23:08:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A94F9AA0ED;
 Mon, 19 Apr 2021 23:08:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 19 Apr 2021 23:08:03 -0000
Message-ID: <161887368366.27828.2954695417970576731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210419225523.184856-1-lyude@redhat.com>
In-Reply-To: <20210419225523.184856-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29?=
 =?utf-8?q?=29_in_DP_helpers_=28rev6=29?=
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

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev6)
URL   : https://patchwork.freedesktop.org/series/87242/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fffba1b63bf6 drm/amdgpu: Add error handling to amdgpu_dm_initialize_dp_connector()
996c7d026bb9 drm/dp: Add __no_check to drm_dp_aux_register()
6b4b8b73edda drm/dp: Move i2c init to drm_dp_aux_init, add __must_check and fini
-:49: WARNING:LINE_SPACING: Missing a blank line after declarations
#49: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c:1968:
+		int ret = amdgpu_atombios_dp_aux_init(amdgpu_connector);
+		if (ret)

-:310: WARNING:STRLCPY: Prefer strscpy over strlcpy - see: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
#310: FILE: drivers/gpu/drm/drm_dp_helper.c:1760:
+	strlcpy(aux->ddc.name, aux->name ?: dev_name(aux->dev), sizeof(aux->ddc.name));

total: 0 errors, 2 warnings, 0 checks, 440 lines checked
0f2070c3486f drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
b05faee9e18d drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
057f5073ee57 drm/dp: Add backpointer to drm_device in drm_dp_aux
d52ff25d184a drm/dp: Clarify DP AUX registration time
764073b4a508 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
a12a22656307 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
33109c79827e drm/dp: Always print aux channel name in logs
37dae984861b drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
8947ebf4721c drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
91c92d211983 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
70e25b343fb6 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
c4f143e80afd drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
ce547d2b0cb9 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
-:56: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:74:
+									       crtc_state->port_clock,

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
fa4bf5cbb3bb drm/print: Handle potentially NULL drm_devices in drm_dbg_*
8529dfa260fc drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
2cdf118000c8 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
4d85fbc4cd3f drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
