Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B239451556
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 21:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933016E5C0;
	Mon, 15 Nov 2021 20:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 86C1C6E536;
 Mon, 15 Nov 2021 20:32:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82038A73C7;
 Mon, 15 Nov 2021 20:32:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Mon, 15 Nov 2021 20:32:48 -0000
Message-ID: <163700836852.2947.251675106116509594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211105030434.2828845-1-sean@poorly.run>
In-Reply-To: <20211105030434.2828845-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/hdcp=3A_Pull_HDCP_auth/exchange/check_into_helpers_=28r?=
 =?utf-8?q?ev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/hdcp: Pull HDCP auth/exchange/check into helpers (rev4)
URL   : https://patchwork.freedesktop.org/series/94712/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
afa25cacbd67 drm/hdcp: Add drm_hdcp_atomic_check()
-:11: WARNING:BAD_SIGN_OFF: Duplicate signature
#11: 
Acked-by: Jani Nikula <jani.nikula@intel.com>

-:88: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#88: FILE: drivers/gpu/drm/drm_hdcp.c:464:
+	/*
+	* Fix the HDCP uapi content protection state in case of modeset.

total: 0 errors, 2 warnings, 0 checks, 185 lines checked
87e58e8a4edf drm/hdcp: Avoid changing crtc state in hdcp atomic check
9861e49cd8d8 drm/hdcp: Update property value on content type and user changes
b1199b6354de drm/hdcp: Expand HDCP helper library for enable/disable/check
-:77: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#77: FILE: drivers/gpu/drm/drm_hdcp.c:523:
+	struct mutex mutex;

-:78: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#78: FILE: drivers/gpu/drm/drm_hdcp.c:524:
+	struct mutex *driver_mutex;

-:220: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#220: FILE: drivers/gpu/drm/drm_hdcp.c:666:
+static int drm_hdcp_remote_dpcd_write(struct drm_dp_aux *aux,
+				     unsigned int offset, u8 *value,

-:364: WARNING:LINE_SPACING: Missing a blank line after declarations
#364: FILE: drivers/gpu/drm/drm_hdcp.c:810:
+		size_t len = min(num_downstream - i, 3) * DRM_HDCP_KSV_LEN;
+		ret = drm_hdcp_remote_dpcd_read(data->aux, DP_AUX_HDCP_KSV_FIFO,

-:451: WARNING:TYPO_SPELLING: 'atleast' may be misspelled - perhaps 'at least'?
#451: FILE: drivers/gpu/drm/drm_hdcp.c:897:
+	 * V prime atleast twice.
 	           ^^^^^^^

-:521: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#521: FILE: drivers/gpu/drm/drm_hdcp.c:967:
+		ret = drm_hdcp_remote_write(data, data->hdcp1_lut->an, an.bytes,
+					DRM_HDCP_AN_LEN);

-:528: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#528: FILE: drivers/gpu/drm/drm_hdcp.c:974:
+		ret = drm_hdcp_remote_write(data, data->hdcp1_lut->aksv, aksv.bytes,
+					DRM_HDCP_KSV_LEN);

-:608: WARNING:LINE_SPACING: Missing a blank line after declarations
#608: FILE: drivers/gpu/drm/drm_hdcp.c:1054:
+		u8 val;
+		ret = read_poll_timeout(drm_hdcp_remote_dpcd_read, ret,

-:702: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "data->driver_mutex"
#702: FILE: drivers/gpu/drm/drm_hdcp.c:1148:
+	drm_WARN_ON(dev, data->driver_mutex != NULL);

-:852: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#852: FILE: drivers/gpu/drm/drm_hdcp.c:1298:
+			drm_hdcp_update_value(data, DRM_MODE_CONTENT_PROTECTION_DESIRED,
+					true);

-:908: WARNING:LINE_SPACING: Missing a blank line after declarations
#908: FILE: drivers/gpu/drm/drm_hdcp.c:1354:
+		u8 bstatus;
+		ret = drm_hdcp_remote_dpcd_read(data->aux, DP_AUX_HDCP_BSTATUS,

-:919: ERROR:SPACING: space required after that ',' (ctx:VxV)
#919: FILE: drivers/gpu/drm/drm_hdcp.c:1365:
+			drm_err(dev,"Ri' mismatch, check failed (%d)\n", ret);
 			           ^

-:1046: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1046: FILE: drivers/gpu/drm/drm_hdcp.c:1492:
+	ret = drm_connector_attach_content_protection_property(connector,
+			attach_content_type_property);

-:1067: WARNING:TYPO_SPELLING: 'transfered' may be misspelled - perhaps 'transferred'?
#1067: FILE: drivers/gpu/drm/drm_hdcp.c:1513:
+ * HDCP helper data. Ownership of the underlaying memory is transfered to the
                                                             ^^^^^^^^^^

-:1105: WARNING:TYPO_SPELLING: 'transfered' may be misspelled - perhaps 'transferred'?
#1105: FILE: drivers/gpu/drm/drm_hdcp.c:1551:
+ * helper data. Ownership of the underlaying memory is transfered to the caller
                                                        ^^^^^^^^^^

-:1195: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1195: FILE: include/drm/drm_hdcp.h:305:
+};
+struct drm_hdcp_an {

-:1387: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#1387: FILE: include/drm/drm_hdcp.h:498:
+				   struct mutex *driver_mutex);

total: 1 errors, 6 warnings, 10 checks, 1333 lines checked
22b9c7df2d2a drm/i915/hdcp: Consolidate HDCP setup/state cache
f8654fbc8fd1 drm/i915/hdcp: Retain hdcp_capable return codes
78bdeeb3a019 drm/i915/hdcp: Use HDCP helpers for i915
-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3041:
+		drm_hdcp_helper_atomic_commit(connector->hdcp_helper_data,
+					&state->base,

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3098:
+		drm_hdcp_helper_atomic_commit(connector->hdcp_helper_data,
+					&state->base,

-:527: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#527: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:567:
+	 * all connectors in MST topology.
+	*/

-:542: ERROR:CODE_INDENT: code indent should use tabs where possible
#542: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:611:
+^I^I^I          struct intel_connector *connector)$

-:605: CHECK:LINE_SPACING: Please don't use multiple blank lines
#605: FILE: drivers/gpu/drm/i915/display/intel_dp_hdcp.c:675:
+
+

-:675: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#675: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:366:
+		drm_hdcp_helper_atomic_commit(connector->hdcp_helper_data,
+					&state->base,

-:700: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#700: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:585:
+		drm_hdcp_helper_atomic_commit(connector->hdcp_helper_data,
+					&state->base,

-:1973: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1973: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1341:
+
+

-:2173: ERROR:CODE_INDENT: code indent should use tabs where possible
#2173: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:1601:
+^I^I^I        struct intel_connector *connector)$

total: 2 errors, 1 warnings, 6 checks, 2174 lines checked
c4f692f3e312 drm/msm/dpu_kms: Re-order dpu includes
c309d8148853 drm/msm/dpu: Remove useless checks in dpu_encoder
b002fa0155b8 drm/msm/dpu: Remove encoder->enable() hack
fdbb1cab86f1 drm/msm/dp: Re-order dp_audio_put in deinit_sub_modules
f123debe6d01 dt-bindings: msm/dp: Add bindings for HDCP registers
16a4c08a3b10 arm64: dts: qcom: sc7180: Add support for HDCP in dp-controller
d1c143883be0 drm/msm: Implement HDCP 1.x using the new drm HDCP helpers
-:131: WARNING:EXPORTED_WORLD_WRITABLE: Exporting world writable files is usually an error. Consider more restrictive permissions.
#131: FILE: drivers/gpu/drm/msm/dp/dp_debug.c:269:
+	debugfs_create_file("msm_dp_hdcp_key", 0222,

-:131: ERROR:EXPORTED_WORLD_WRITABLE: Exporting writable files is usually an error. Consider more restrictive permissions.
#131: FILE: drivers/gpu/drm/msm/dp/dp_debug.c:269:
+	debugfs_create_file("msm_dp_hdcp_key", 0222,
+			minor->debugfs_root,
+			debug, &dp_hdcp_key_fops);
-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/msm/dp/dp_debug.c:270:
+	debugfs_create_file("msm_dp_hdcp_key", 0222,
+			minor->debugfs_root,

-:347: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#347: FILE: drivers/gpu/drm/msm/dp/dp_drm.c:22:
+};
+#define to_dp_connector_state(x) container_of(x, struct dp_connector_state, base)

-:453: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#453: 
new file mode 100644

-:492: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#492: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:35:
+#define  DP_HDCP_KEY_MSB(x) ^I^I^I(DP_HDCP_KEY_BASE + (x * 8))$

-:492: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#492: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:35:
+#define  DP_HDCP_KEY_MSB(x) 			(DP_HDCP_KEY_BASE + (x * 8))

-:493: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#493: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:36:
+#define  DP_HDCP_KEY_LSB(x) ^I^I^I(DP_HDCP_KEY_MSB(x) + 4)$

-:535: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#535: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:78:
+	struct mutex key_lock;

-:645: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#645: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:188:
+		dp_hdcp_write_key(hdcp, DP_HDCP_KEY_LSB(i),
+				 hdcp->key.keys[i].words[0]);

-:647: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#647: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:190:
+		dp_hdcp_write_key(hdcp, DP_HDCP_KEY_MSB(i),
+				 hdcp->key.keys[i].words[1]);

-:653: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#653: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:196:
+	dp_hdcp_write_link(hdcp, DP_HDCP_ENTROPY_CTRL0,
+			      FIELD_GET(GENMASK(31,0), an_seed));

-:653: ERROR:SPACING: space required after that ',' (ctx:VxV)
#653: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:196:
+			      FIELD_GET(GENMASK(31,0), an_seed));
 			                          ^

-:655: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#655: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:198:
+	dp_hdcp_write_link(hdcp, DP_HDCP_ENTROPY_CTRL1,
+			      FIELD_GET(GENMASK_ULL(63,32), an_seed));

-:655: ERROR:SPACING: space required after that ',' (ctx:VxV)
#655: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:198:
+			      FIELD_GET(GENMASK_ULL(63,32), an_seed));
 			                              ^

-:693: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#693: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.c:236:
+	ret = read_poll_timeout(dp_hdcp_read_ahb, val,
+		(val & DP_HDCP_AN_READY_MASK) == DP_HDCP_AN_READY_MASK,

-:926: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/msm/dp/dp_hdcp.h', please use '/*' instead
#926: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.h:1:
+// SPDX-License-Identifier: MIT

-:926: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#926: FILE: drivers/gpu/drm/msm/dp/dp_hdcp.h:1:
+// SPDX-License-Identifier: MIT

-:986: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#986: FILE: drivers/gpu/drm/msm/dp/dp_parser.c:102:
+				DRM_ERROR("unable to remap hdcp_tz region: %pe\n",
+					dss->hdcp_tz.base);

total: 3 errors, 6 warnings, 10 checks, 997 lines checked


