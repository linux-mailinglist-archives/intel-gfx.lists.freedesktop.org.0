Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E30589979
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 10:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3207E919B9;
	Thu,  4 Aug 2022 08:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7961391669;
 Thu,  4 Aug 2022 08:46:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72258A73C9;
 Thu,  4 Aug 2022 08:46:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 04 Aug 2022 08:46:41 -0000
Message-ID: <165960280146.14888.13550147211341325286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220804082840.3468949-1-suraj.kandpal@intel.com>
In-Reply-To: <20220804082840.3468949-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enabling_Pipewriteback_=28rev3=29?=
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

Series: Enabling Pipewriteback (rev3)
URL   : https://patchwork.freedesktop.org/series/106902/
State : warning

== Summary ==

Error: dim checkpatch failed
10ad01a5c747 drm/i915: Define WD trancoder for i915
-:68: CHECK:LINE_SPACING: Please don't use multiple blank lines
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:3840:
+
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
d9a8b33b6197 drm/i915: Enabling WD Transcoder
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/display/intel_display.c:1560:
+static void intel_queue_writeback_job(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:133: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#133: FILE: drivers/gpu/drm/i915/display/intel_display.c:1578:
+static void intel_find_writeback_connector(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:246: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#246: FILE: drivers/gpu/drm/i915/display/intel_display.h:484:
+#define for_each_connector_on_encoder(dev, __encoder, drm_connector) \
+	list_for_each_entry((drm_connector), &(dev)->mode_config.connector_list, head) \
+		for_each_if(drm_connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK &&	\
+			(to_intel_connector(drm_connector))->base.encoder == (__encoder))

-:246: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'drm_connector' - possible side-effects?
#246: FILE: drivers/gpu/drm/i915/display/intel_display.h:484:
+#define for_each_connector_on_encoder(dev, __encoder, drm_connector) \
+	list_for_each_entry((drm_connector), &(dev)->mode_config.connector_list, head) \
+		for_each_if(drm_connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK &&	\
+			(to_intel_connector(drm_connector))->base.encoder == (__encoder))

-:350: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#350: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2097:
+
+	}

-:494: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#494: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:573:
+			drm_dbg_kms(&i915->drm,
+					"[CONNECTOR:%d:%s] hw state readout: %s\n",

-:501: CHECK:LINE_SPACING: Please don't use multiple blank lines
#501: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:580:
+
+

-:565: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#565: 
new file mode 100644

-:586: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#586: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:17:
+void intel_wb_connector_attach_encoder(struct intel_wb_connector *connector,
+					struct intel_encoder *encoder);

-:650: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#650: FILE: drivers/gpu/drm/i915/display/intel_wd.c:55:
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+			struct drm_writeback_job,

-:653: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#653: FILE: drivers/gpu/drm/i915/display/intel_wd.c:58:
+	if (job == NULL) {

-:692: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#692: FILE: drivers/gpu/drm/i915/display/intel_wd.c:97:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);

-:712: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#712: FILE: drivers/gpu/drm/i915/display/intel_wd.c:117:
+static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
+			int format)

-:738: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#738: FILE: drivers/gpu/drm/i915/display/intel_wd.c:143:
+static int intel_wd_pin_fb(struct intel_wd *intel_wd,
+			struct drm_framebuffer *fb)

-:746: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#746: FILE: drivers/gpu/drm/i915/display/intel_wd.c:151:
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, false,
+			&intel_wd->flags);

-:756: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#756: FILE: drivers/gpu/drm/i915/display/intel_wd.c:161:
+static void intel_configure_slicing_strategy(struct drm_i915_private *dev_priv,
+		struct intel_wd *intel_wd, u32 *tmp)

-:769: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#769: FILE: drivers/gpu/drm/i915/display/intel_wd.c:174:
+	intel_de_write(dev_priv, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);

-:771: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#771: FILE: drivers/gpu/drm/i915/display/intel_wd.c:176:
+
+}

-:775: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#775: FILE: drivers/gpu/drm/i915/display/intel_wd.c:180:
+intel_wd_mode_valid(struct drm_connector *connector,
+		struct drm_display_mode *mode)

-:787: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#787: FILE: drivers/gpu/drm/i915/display/intel_wd.c:192:
+static void intel_wd_get_config(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:794: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#794: FILE: drivers/gpu/drm/i915/display/intel_wd.c:199:
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));

-:798: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#798: FILE: drivers/gpu/drm/i915/display/intel_wd.c:203:
+
+}

-:801: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#801: FILE: drivers/gpu/drm/i915/display/intel_wd.c:206:
+static int intel_wd_compute_config(struct intel_encoder *encoder,
+			struct intel_crtc_state *pipe_config,

-:817: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#817: FILE: drivers/gpu/drm/i915/display/intel_wd.c:222:
+static void intel_wd_get_power_domains(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)

-:824: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#824: FILE: drivers/gpu/drm/i915/display/intel_wd.c:229:
+	wakeref = intel_display_power_get(dev_priv,
+				encoder->power_domain);

-:830: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#830: FILE: drivers/gpu/drm/i915/display/intel_wd.c:235:
+static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
+		enum pipe *pipe)

-:843: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#843: FILE: drivers/gpu/drm/i915/display/intel_wd.c:248:
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);

-:860: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#860: FILE: drivers/gpu/drm/i915/display/intel_wd.c:265:
+
+}

-:863: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#863: FILE: drivers/gpu/drm/i915/display/intel_wd.c:268:
+static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
+				    struct drm_crtc_state *crtc_st,

-:889: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#889: FILE: drivers/gpu/drm/i915/display/intel_wd.c:294:
+		drm_dbg_kms(&dev_priv->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);

-:897: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#897: FILE: drivers/gpu/drm/i915/display/intel_wd.c:302:
+		drm_dbg_kms(&dev_priv->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);

-:904: CHECK:LINE_SPACING: Please don't use multiple blank lines
#904: FILE: drivers/gpu/drm/i915/display/intel_wd.c:309:
+
+

-:941: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#941: FILE: drivers/gpu/drm/i915/display/intel_wd.c:346:
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:985: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#985: FILE: drivers/gpu/drm/i915/display/intel_wd.c:390:
+	drm_encoder_helper_add(drm_enc,
+			&wd_encoder_helper_funcs);

-:995: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#995: FILE: drivers/gpu/drm/i915/display/intel_wd.c:400:
+		drm_dbg_kms(&dev_priv->drm,
+		"Writeback drm_encoder init Failed: %d\n",

-:1001: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1001: FILE: drivers/gpu/drm/i915/display/intel_wd.c:406:
+	err = drm_writeback_connector_init_with_encoder(&dev_priv->drm,
+		wb_conn, drm_enc, &wd_connector_funcs,

-:1006: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1006: FILE: drivers/gpu/drm/i915/display/intel_wd.c:411:
+		drm_dbg_kms(&dev_priv->drm,
+		"drm_writeback_connector_init: Failed: %d\n",

-:1019: WARNING:RETURN_VOID: void function return statements are not generally useful
#1019: FILE: drivers/gpu/drm/i915/display/intel_wd.c:424:
+	return;
+}

-:1022: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1022: FILE: drivers/gpu/drm/i915/display/intel_wd.c:427:
+static void intel_wd_writeback_complete(struct intel_wd *intel_wd,
+	struct drm_writeback_job *job, int status)

-:1030: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1030: FILE: drivers/gpu/drm/i915/display/intel_wd.c:435:
+static int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1064: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1064: FILE: drivers/gpu/drm/i915/display/intel_wd.c:469:
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));

-:1069: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1069: FILE: drivers/gpu/drm/i915/display/intel_wd.c:474:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                        ^

-:1069: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1069: FILE: drivers/gpu/drm/i915/display/intel_wd.c:474:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                              ^

-:1069: CHECK:SPACING: space preferred before that '|' (ctx:VxE)
#1069: FILE: drivers/gpu/drm/i915/display/intel_wd.c:474:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                                                    ^

-:1070: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1070: FILE: drivers/gpu/drm/i915/display/intel_wd.c:475:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			             ^

-:1070: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1070: FILE: drivers/gpu/drm/i915/display/intel_wd.c:475:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			                            ^

-:1075: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1075: FILE: drivers/gpu/drm/i915/display/intel_wd.c:480:
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));

-:1165: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1165: FILE: drivers/gpu/drm/i915/display/intel_wd.c:570:
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))

-:1186: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1186: FILE: drivers/gpu/drm/i915/display/intel_wd.c:591:
+static int intel_wd_capture(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1200: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1200: FILE: drivers/gpu/drm/i915/display/intel_wd.c:605:
+	ret = intel_wd_setup_transcoder(intel_wd, pipe_config,
+		conn_state, job);

-:1204: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1204: FILE: drivers/gpu/drm/i915/display/intel_wd.c:609:
+		drm_dbg_kms(&dev_priv->drm,
+		"WD transcoder setup not completed aborting capture\n");

-:1208: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wd_crtc"
#1208: FILE: drivers/gpu/drm/i915/display/intel_wd.c:613:
+	if (wd_crtc == NULL) {

-:1214: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1214: FILE: drivers/gpu/drm/i915/display/intel_wd.c:619:
+	tmp = intel_de_read_fw(dev_priv,
+			WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1219: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1219: FILE: drivers/gpu/drm/i915/display/intel_wd.c:624:
+	intel_de_write_fw(dev_priv,
+			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1222: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1222: FILE: drivers/gpu/drm/i915/display/intel_wd.c:627:
+	if (!intel_de_wait_for_set(dev_priv, WD_IIR(intel_wd->trans),
+				WD_FRAME_COMPLETE_INT, 100)){

-:1228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1228: FILE: drivers/gpu/drm/i915/display/intel_wd.c:633:
+		tmp = intel_de_read(dev_priv,
+				WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1231: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1231: FILE: drivers/gpu/drm/i915/display/intel_wd.c:636:
+		intel_de_write(dev_priv,
+				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1237: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_get_writeback_job_from_queue"
#1237: FILE: drivers/gpu/drm/i915/display/intel_wd.c:642:
+	if (intel_get_writeback_job_from_queue(intel_wd) == NULL)

-:1243: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1243: FILE: drivers/gpu/drm/i915/display/intel_wd.c:648:
+		drm_crtc_send_vblank_event(&wd_crtc->base,
+					wd_crtc->wd.e);

-:1248: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1248: FILE: drivers/gpu/drm/i915/display/intel_wd.c:653:
+		DRM_ERROR("Event NULL! %p, %p\n", &dev_priv->drm,
+			wd_crtc);

-:1252: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1252: FILE: drivers/gpu/drm/i915/display/intel_wd.c:657:
+
+}

-:1255: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1255: FILE: drivers/gpu/drm/i915/display/intel_wd.c:660:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state)

-:1265: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#1265: FILE: drivers/gpu/drm/i915/display/intel_wd.c:670:
+	if (job == NULL) {

-:1267: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1267: FILE: drivers/gpu/drm/i915/display/intel_wd.c:672:
+		drm_dbg_kms(&i915->drm,
+			"job queue is empty not capturing any frame\n");

-:1272: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1272: FILE: drivers/gpu/drm/i915/display/intel_wd.c:677:
+	intel_wd_capture(intel_wd, pipe_config,
+			conn_state, job);

-:1275: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1275: FILE: drivers/gpu/drm/i915/display/intel_wd.c:680:
+
+}

-:1278: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1278: FILE: drivers/gpu/drm/i915/display/intel_wd.c:683:
+void intel_wd_set_vblank_event(struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)

-:1286: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1286: FILE: drivers/gpu/drm/i915/display/intel_wd.c:691:
+	for_each_intel_encoder(&dev_priv->drm, encoder) {
+

-:1301: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1301: FILE: drivers/gpu/drm/i915/display/intel_wd.c:706:
+}
+void intel_wd_handle_isr(struct drm_i915_private *dev_priv)

-:1311: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1311: FILE: drivers/gpu/drm/i915/display/intel_wd.c:716:
+	for_each_intel_encoder(&dev_priv->drm, encoder) {
+

-:1406: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1406: FILE: drivers/gpu/drm/i915/display/intel_wd.h:72:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+			struct drm_connector_state *conn_state);

-:1409: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1409: FILE: drivers/gpu/drm/i915/display/intel_wd.h:75:
+void intel_wd_set_vblank_event(struct intel_crtc *crtc,
+			struct intel_crtc_state *state);

-:1466: CHECK:SPACING: spaces preferred around that '|' (ctx:VxE)
#1466: FILE: drivers/gpu/drm/i915/i915_pci.c:867:
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
 		                                             ^

total: 1 errors, 2 warnings, 70 checks, 1352 lines checked


