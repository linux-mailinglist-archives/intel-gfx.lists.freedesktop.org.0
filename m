Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7BA320132
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 23:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C926EC24;
	Fri, 19 Feb 2021 22:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DA1D6E0CE;
 Fri, 19 Feb 2021 22:11:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F44CA41FB;
 Fri, 19 Feb 2021 22:11:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 19 Feb 2021 22:11:41 -0000
Message-ID: <161377270156.703.16717686555120810202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210219215326.2227596-1-lyude@redhat.com>
In-Reply-To: <20210219215326.2227596-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29?=
 =?utf-8?q?=29_in_DP_helpers?=
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

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers
URL   : https://patchwork.freedesktop.org/series/87242/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ce207403b6ba drm/dp: Rewrap kdocs for struct drm_dp_aux
59ab34a09514 drm/dp: Fixup kernel docs for struct drm_dp_aux
76de8b506bb5 drm/tegra: Don't register DP AUX channels before connectors
4477471e11d3 drm/bridge/tc358767: Don't register DP AUX channel until bridge is attached
466a8724aac1 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
bd0cb165e99c drm/bridge/ti-sn65dsi86: (Un)register aux device on bridge attach/detach
b69f1f6665a8 drm/bridge/analogix/anx78xx: Add missing drm_dp_aux_unregister() call
331d6a7a89db drm/bridge/analogix/anx78xx: Setup encoder before registering connector
95ef631558ad drm/bridge/analogix/anx78xx: Cleanup on error in anx78xx_bridge_attach()
a791371e1b1f drm/bridge/analogix/anx6345: Add missing drm_dp_aux_unregister() call
93ea935d7e82 drm/bridge/analogix/anx6345: Don't link encoder until after connector registration
3700184db2e5 drm/bridge/analogix/anx6345: Cleanup on errors in anx6345_bridge_attach()
f6c80edbe8f6 drm/bridge/analogix/dp_core: Unregister DP AUX channel on error in analogix_dp_probe()
011332737c0f drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
89eb0e9ca1fc drm/dp: Add backpointer to drm_device in drm_dp_aux
886105588723 drm/dp: Rewrap drm_dp_aux_register()/drm_dp_aux_init() kdocs
743613ba9017 drm/dp: Clarify DP AUX registration time
815fe1b4dd16 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
-:45: ERROR:CODE_INDENT: code indent should use tabs where possible
#45: FILE: include/drm/drm_print.h:531:
+                                                                                                 \$

-:45: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#45: FILE: include/drm/drm_print.h:531:
+                                                                                                 \$

total: 1 errors, 1 warnings, 0 checks, 28 lines checked
d1b3270dba59 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
6853812a6368 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
dec2312b34cc drm/dp: Always print aux channel name in logs
c7df16b9d24e drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
92e948ca8cba drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
cdcd6958912f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
b610ae839ecd drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
6fe319f1b8e8 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
14a0b6c29fc7 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
-:56: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:74:
+									       crtc_state->port_clock,

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
b215e53e3ce2 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: drivers/gpu/drm/drm_dp_helper.c:224:
+^I^I           aux->name, offset, arrow, ret, min(ret, 20),$

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: drivers/gpu/drm/drm_dp_helper.c:225:
+^I^I           buffer);$

-:78: ERROR:CODE_INDENT: code indent should use tabs where possible
#78: FILE: drivers/gpu/drm/drm_dp_helper.c:228:
+^I^I           aux->name, offset, arrow, ret);$

total: 3 errors, 0 warnings, 0 checks, 277 lines checked
616d97c8c5fb drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
1c0133c9bcf0 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()
-:689: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#689: FILE: drivers/gpu/drm/drm_dp_mst_topology.c:4113:
 	if (!up_req) {
+		drm_err(mgr->dev, "Not enough memory to process MST up req\n");

total: 0 errors, 1 warnings, 0 checks, 906 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
