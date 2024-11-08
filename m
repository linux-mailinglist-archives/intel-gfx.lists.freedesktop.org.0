Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BD19C24D0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 19:21:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4DA10E29A;
	Fri,  8 Nov 2024 18:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2156910E295;
 Fri,  8 Nov 2024 18:21:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Refactor_MST_DSC_Det?=
 =?utf-8?q?ermination_Policy_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fangzhi Zuo" <jerry.zuo@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Nov 2024 18:21:48 -0000
Message-ID: <173109010813.1428955.2275483792582211984@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241108174439.141418-1-Jerry.Zuo@amd.com>
In-Reply-To: <20241108174439.141418-1-Jerry.Zuo@amd.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Refactor MST DSC Determination Policy (rev3)
URL   : https://patchwork.freedesktop.org/series/140832/
State : warning

== Summary ==

Error: dim checkpatch failed
4af0868951f8 drm/display/dsc: Refactor DRM MST DSC Determination Policy
-:11: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#11: 
   in drm_dp_mst_is_virtual_dpcd() is not always correct. There are DP1.4 products

-:186: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#186: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6064:
+		drm_info(mgr->dev, "MST_DSC check port %p for dsc decompression capability\n", port);

-:198: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#198: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6074:
+		drm_info(mgr->dev, "MST_DSC check immediate_upstream_port %p for dsc passthrough capability\n",
+				    immediate_upstream_port);

-:226: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#226: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6087:
+	if (endpoint_dsc & DP_DSC_DECOMPRESSION_IS_SUPPORTED &&
+			upstream_dsc & DP_DSC_PASSTHROUGH_IS_SUPPORTED) {

-:257: CHECK:BRACES: braces {} should be used on all arms of this statement
#257: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6111:
+			if (endpoint_dsc & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
[...]
+			else {
[...]

-:259: CHECK:BRACES: Unbalanced braces around else statement
#259: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6113:
+			else {

-:269: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#269: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6121:
+			drm_info(mgr->dev, "MST_DSC topology with multiple mstbs, dsc decompression at immediate_upstream_port %p\n",
+					    dsc_port);

-:282: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#282: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6134:
+			/* read fec cap one more time in case fec not capable return from enum path result */

-:283: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#283: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6135:
+			if ((drm_dp_dpcd_read(&fec_port->aux, DP_FEC_CAPABILITY, &fec_cap, 1) != 1) ||

-:284: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#284: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6136:
+			if ((drm_dp_dpcd_read(&fec_port->aux, DP_FEC_CAPABILITY, &fec_cap, 1) != 1) ||
+					!(fec_cap & DP_FEC_CAPABLE)) {

-:285: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#285: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6137:
+				drm_err(mgr->dev, "MST_DSC Failed to retrieve fec caps at port %p\n", fec_port);

-:303: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#303: FILE: drivers/gpu/drm/display/drm_dp_mst_topology.c:6148:
+	if ((drm_dp_dpcd_read(mgr->aux, DP_FEC_CAPABILITY, &fec_cap, 1) != 1) ||
+			!(fec_cap & DP_FEC_CAPABLE)) {

total: 0 errors, 5 warnings, 7 checks, 297 lines checked
c7a7ec814c6e drm/display/dsc: MST DSC Interface Change
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Starting from dp2 where dsc passthrough is introduced, it is required to identify

-:132: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#132: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c:262:
+	if (drm_dp_dpcd_read(aconnector->mst_output_port->dsc_aux, DP_DSC_SUPPORT, dsc_caps, 16) < 0)

-:137: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#137: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c:266:
+	if (drm_dp_dpcd_read(aconnector->mst_output_port->dsc_aux,
 			DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, dsc_branch_dec_caps_raw, 3) == 3)

-:149: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#149: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c:285:
+	if (drm_dp_dpcd_read(aconnector->mst_output_port->dsc_aux, DP_DOWNSTREAMPORT_PRESENT, &ds_port_present, 1) < 0) {

total: 0 errors, 3 warnings, 1 checks, 271 lines checked


