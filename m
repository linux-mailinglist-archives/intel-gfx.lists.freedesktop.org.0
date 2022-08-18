Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC345983FD
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 15:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE396A3C3A;
	Thu, 18 Aug 2022 13:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 197FCB98AA;
 Thu, 18 Aug 2022 13:23:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02C22A77A5;
 Thu, 18 Aug 2022 13:23:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 18 Aug 2022 13:23:12 -0000
Message-ID: <166082899297.16682.12197322301215187814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818103642.501756-1-suraj.kandpal@intel.com>
In-Reply-To: <20220818103642.501756-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Pipewriteback?=
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

Series: Enable Pipewriteback
URL   : https://patchwork.freedesktop.org/series/107440/
State : warning

== Summary ==

Error: dim checkpatch failed
c89414f4d5ea drm/i915: Define WD trancoder for i915
-:68: CHECK:LINE_SPACING: Please don't use multiple blank lines
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:3728:
+
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
cbd7b9684e83 drm/i915 : Changing intel_connector iterators
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1506:
+#define to_intel_connector(x) (((x->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
+				NULL : container_of(x, struct intel_connector, base))

-:56: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#56: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1506:
+#define to_intel_connector(x) (((x->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
+				NULL : container_of(x, struct intel_connector, base))

-:84: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#84: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2092:
+
+	}

total: 0 errors, 0 warnings, 3 checks, 84 lines checked
658200363d65 drm/i915: Enabling WD Transcoder
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
-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/i915/display/intel_display.c:1559:
+static void intel_queue_writeback_job(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:143: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#143: FILE: drivers/gpu/drm/i915/display/intel_display.c:1577:
+static void intel_enable_writeback_capture(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:534: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#534: 
new file mode 100644

-:555: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#555: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:17:
+void intel_wb_connector_attach_encoder(struct intel_wb_connector *connector,
+					struct intel_encoder *encoder);

-:595: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#595: FILE: drivers/gpu/drm/i915/display/intel_wd.c:31:
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+			struct drm_writeback_job,

-:598: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#598: FILE: drivers/gpu/drm/i915/display/intel_wd.c:34:
+	if (job == NULL) {

-:636: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#636: FILE: drivers/gpu/drm/i915/display/intel_wd.c:72:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);

-:656: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#656: FILE: drivers/gpu/drm/i915/display/intel_wd.c:92:
+static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
+			int format)

-:682: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#682: FILE: drivers/gpu/drm/i915/display/intel_wd.c:118:
+static int intel_wd_pin_fb(struct intel_wd *intel_wd,
+			struct drm_framebuffer *fb)

-:690: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#690: FILE: drivers/gpu/drm/i915/display/intel_wd.c:126:
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, false,
+			&intel_wd->flags);

-:700: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#700: FILE: drivers/gpu/drm/i915/display/intel_wd.c:136:
+static void intel_configure_slicing_strategy(struct drm_i915_private *dev_priv,
+		struct intel_wd *intel_wd, u32 *tmp)

-:713: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#713: FILE: drivers/gpu/drm/i915/display/intel_wd.c:149:
+	intel_de_write(dev_priv, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);

-:715: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#715: FILE: drivers/gpu/drm/i915/display/intel_wd.c:151:
+
+}

-:719: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#719: FILE: drivers/gpu/drm/i915/display/intel_wd.c:155:
+intel_wd_mode_valid(struct drm_connector *connector,
+		struct drm_display_mode *mode)

-:731: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#731: FILE: drivers/gpu/drm/i915/display/intel_wd.c:167:
+static void intel_wd_get_config(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:738: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#738: FILE: drivers/gpu/drm/i915/display/intel_wd.c:174:
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));

-:742: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#742: FILE: drivers/gpu/drm/i915/display/intel_wd.c:178:
+
+}

-:745: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#745: FILE: drivers/gpu/drm/i915/display/intel_wd.c:181:
+static int intel_wd_compute_config(struct intel_encoder *encoder,
+			struct intel_crtc_state *pipe_config,

-:761: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#761: FILE: drivers/gpu/drm/i915/display/intel_wd.c:197:
+static void intel_wd_get_power_domains(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)

-:768: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#768: FILE: drivers/gpu/drm/i915/display/intel_wd.c:204:
+	wakeref = intel_display_power_get(i915,
+				encoder->power_domain);

-:774: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#774: FILE: drivers/gpu/drm/i915/display/intel_wd.c:210:
+static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
+		enum pipe *pipe)

-:787: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#787: FILE: drivers/gpu/drm/i915/display/intel_wd.c:223:
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);

-:803: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#803: FILE: drivers/gpu/drm/i915/display/intel_wd.c:239:
+
+}

-:806: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#806: FILE: drivers/gpu/drm/i915/display/intel_wd.c:242:
+static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
+				    struct drm_crtc_state *crtc_st,

-:829: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#829: FILE: drivers/gpu/drm/i915/display/intel_wd.c:265:
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);

-:836: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#836: FILE: drivers/gpu/drm/i915/display/intel_wd.c:272:
+		drm_dbg_kms(&i915->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);

-:843: CHECK:LINE_SPACING: Please don't use multiple blank lines
#843: FILE: drivers/gpu/drm/i915/display/intel_wd.c:279:
+
+

-:879: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#879: FILE: drivers/gpu/drm/i915/display/intel_wd.c:315:
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:935: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#935: FILE: drivers/gpu/drm/i915/display/intel_wd.c:371:
+	drm_encoder_helper_add(drm_enc,
+			&wd_encoder_helper_funcs);

-:944: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#944: FILE: drivers/gpu/drm/i915/display/intel_wd.c:380:
+		drm_dbg_kms(&i915->drm,
+		"Writeback drm_encoder init Failed: %d\n",

-:950: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#950: FILE: drivers/gpu/drm/i915/display/intel_wd.c:386:
+	err = drm_writeback_connector_init_with_encoder(&i915->drm,
+		wb_conn, drm_enc, &wd_connector_funcs,

-:955: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#955: FILE: drivers/gpu/drm/i915/display/intel_wd.c:391:
+		drm_dbg_kms(&i915->drm,
+		"drm_writeback_connector_init: Failed: %d\n",

-:968: WARNING:RETURN_VOID: void function return statements are not generally useful
#968: FILE: drivers/gpu/drm/i915/display/intel_wd.c:404:
+	return;
+}

-:971: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#971: FILE: drivers/gpu/drm/i915/display/intel_wd.c:407:
+static void intel_wd_writeback_complete(struct intel_wd *intel_wd,
+	struct drm_writeback_job *job, int status)

-:979: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#979: FILE: drivers/gpu/drm/i915/display/intel_wd.c:415:
+static int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1013: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1013: FILE: drivers/gpu/drm/i915/display/intel_wd.c:449:
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));

-:1018: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1018: FILE: drivers/gpu/drm/i915/display/intel_wd.c:454:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                        ^

-:1018: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1018: FILE: drivers/gpu/drm/i915/display/intel_wd.c:454:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                              ^

-:1018: CHECK:SPACING: space preferred before that '|' (ctx:VxE)
#1018: FILE: drivers/gpu/drm/i915/display/intel_wd.c:454:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                                                    ^

-:1019: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1019: FILE: drivers/gpu/drm/i915/display/intel_wd.c:455:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			             ^

-:1019: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1019: FILE: drivers/gpu/drm/i915/display/intel_wd.c:455:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			                            ^

-:1024: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1024: FILE: drivers/gpu/drm/i915/display/intel_wd.c:460:
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));

-:1113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1113: FILE: drivers/gpu/drm/i915/display/intel_wd.c:549:
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))

-:1121: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1121: FILE: drivers/gpu/drm/i915/display/intel_wd.c:557:
+static int intel_wd_capture(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1135: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1135: FILE: drivers/gpu/drm/i915/display/intel_wd.c:571:
+	ret = intel_wd_setup_transcoder(intel_wd, pipe_config,
+		conn_state, job);

-:1139: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1139: FILE: drivers/gpu/drm/i915/display/intel_wd.c:575:
+		drm_dbg_kms(&i915->drm,
+		"WD transcoder setup not completed aborting capture\n");

-:1143: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wd_crtc"
#1143: FILE: drivers/gpu/drm/i915/display/intel_wd.c:579:
+	if (wd_crtc == NULL) {

-:1149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1149: FILE: drivers/gpu/drm/i915/display/intel_wd.c:585:
+	tmp = intel_de_read_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1154: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1154: FILE: drivers/gpu/drm/i915/display/intel_wd.c:590:
+	intel_de_write_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1157: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1157: FILE: drivers/gpu/drm/i915/display/intel_wd.c:593:
+	if (!intel_de_wait_for_set(i915, WD_IIR(intel_wd->trans),
+				WD_FRAME_COMPLETE_INT, 100)){

-:1163: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1163: FILE: drivers/gpu/drm/i915/display/intel_wd.c:599:
+		tmp = intel_de_read(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1166: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1166: FILE: drivers/gpu/drm/i915/display/intel_wd.c:602:
+		intel_de_write(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1175: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1175: FILE: drivers/gpu/drm/i915/display/intel_wd.c:611:
+		drm_crtc_send_vblank_event(&wd_crtc->base,
+					wd_crtc->wd.e);

-:1182: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_get_writeback_job_from_queue"
#1182: FILE: drivers/gpu/drm/i915/display/intel_wd.c:618:
+	if (intel_get_writeback_job_from_queue(intel_wd) == NULL)

-:1186: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1186: FILE: drivers/gpu/drm/i915/display/intel_wd.c:622:
+
+}

-:1189: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1189: FILE: drivers/gpu/drm/i915/display/intel_wd.c:625:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state)

-:1199: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#1199: FILE: drivers/gpu/drm/i915/display/intel_wd.c:635:
+	if (job == NULL) {

-:1201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1201: FILE: drivers/gpu/drm/i915/display/intel_wd.c:637:
+		drm_dbg_kms(&i915->drm,
+			"job queue is empty not capturing any frame\n");

-:1206: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1206: FILE: drivers/gpu/drm/i915/display/intel_wd.c:642:
+	intel_wd_capture(intel_wd, pipe_config,
+			conn_state, job);

-:1209: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1209: FILE: drivers/gpu/drm/i915/display/intel_wd.c:645:
+
+}

-:1212: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1212: FILE: drivers/gpu/drm/i915/display/intel_wd.c:648:
+void intel_wd_set_vblank_event(struct intel_atomic_state *state, struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)

-:1223: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1223: FILE: drivers/gpu/drm/i915/display/intel_wd.c:659:
+	for_each_intel_encoder(&i915->drm, encoder) {
+

-:1243: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1243: FILE: drivers/gpu/drm/i915/display/intel_wd.c:679:
+}
+void intel_wd_handle_isr(struct drm_i915_private *i915)

-:1252: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1252: FILE: drivers/gpu/drm/i915/display/intel_wd.c:688:
+	for_each_intel_encoder(&i915->drm, encoder) {
+

-:1317: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1317: FILE: drivers/gpu/drm/i915/display/intel_wd.h:43:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+			struct drm_connector_state *conn_state);

-:1320: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1320: FILE: drivers/gpu/drm/i915/display/intel_wd.h:46:
+void intel_wd_set_vblank_event(struct intel_atomic_state *state, struct intel_crtc *crtc,
+			struct intel_crtc_state *crtc_state);

-:1377: CHECK:SPACING: spaces preferred around that '|' (ctx:VxE)
#1377: FILE: drivers/gpu/drm/i915/i915_pci.c:868:
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
 		                                             ^

total: 0 errors, 2 warnings, 65 checks, 1268 lines checked


