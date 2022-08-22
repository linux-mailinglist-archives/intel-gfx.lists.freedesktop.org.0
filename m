Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A0F5A027F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD474C5C47;
	Wed, 24 Aug 2022 20:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9666D18AE25;
 Mon, 22 Aug 2022 19:51:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CD43AA0EA;
 Mon, 22 Aug 2022 19:51:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Mon, 22 Aug 2022 19:51:00 -0000
Message-ID: <166119786057.28447.16115709077805277333@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220822192457.205072-1-suraj.kandpal@intel.com>
In-Reply-To: <20220822192457.205072-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Pipewriteback_Framework?=
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

Series: Enable Pipewriteback Framework
URL   : https://patchwork.freedesktop.org/series/107573/
State : warning

== Summary ==

Error: dim checkpatch failed
a3caab12b5b5 drm/i915: Define WD trancoder for i915
-:68: CHECK:LINE_SPACING: Please don't use multiple blank lines
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:3728:
+
+

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
8f5082ddbe9c drm/i915 : Changing intel_connector iterators
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

total: 0 errors, 0 warnings, 3 checks, 90 lines checked
a912dfef422c drm/i915: Enabling WD Transcoder
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

-:536: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#536: 
new file mode 100644

-:557: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#557: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:17:
+void intel_wb_connector_attach_encoder(struct intel_wb_connector *connector,
+					struct intel_encoder *encoder);

-:597: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#597: FILE: drivers/gpu/drm/i915/display/intel_wd.c:31:
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+			struct drm_writeback_job,

-:600: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#600: FILE: drivers/gpu/drm/i915/display/intel_wd.c:34:
+	if (job == NULL) {

-:638: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#638: FILE: drivers/gpu/drm/i915/display/intel_wd.c:72:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);

-:658: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#658: FILE: drivers/gpu/drm/i915/display/intel_wd.c:92:
+static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
+			int format)

-:684: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#684: FILE: drivers/gpu/drm/i915/display/intel_wd.c:118:
+static int intel_wd_pin_fb(struct intel_wd *intel_wd,
+			struct drm_framebuffer *fb)

-:692: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#692: FILE: drivers/gpu/drm/i915/display/intel_wd.c:126:
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, false,
+			&intel_wd->flags);

-:702: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#702: FILE: drivers/gpu/drm/i915/display/intel_wd.c:136:
+static void intel_configure_slicing_strategy(struct drm_i915_private *dev_priv,
+		struct intel_wd *intel_wd, u32 *tmp)

-:715: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#715: FILE: drivers/gpu/drm/i915/display/intel_wd.c:149:
+	intel_de_write(dev_priv, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);

-:720: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#720: FILE: drivers/gpu/drm/i915/display/intel_wd.c:154:
+intel_wd_mode_valid(struct drm_connector *connector,
+		struct drm_display_mode *mode)

-:732: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#732: FILE: drivers/gpu/drm/i915/display/intel_wd.c:166:
+static void intel_wd_get_config(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:739: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#739: FILE: drivers/gpu/drm/i915/display/intel_wd.c:173:
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));

-:745: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#745: FILE: drivers/gpu/drm/i915/display/intel_wd.c:179:
+static int intel_wd_compute_config(struct intel_encoder *encoder,
+			struct intel_crtc_state *pipe_config,

-:761: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#761: FILE: drivers/gpu/drm/i915/display/intel_wd.c:195:
+static void intel_wd_get_power_domains(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)

-:768: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#768: FILE: drivers/gpu/drm/i915/display/intel_wd.c:202:
+	wakeref = intel_display_power_get(i915,
+				encoder->power_domain);

-:774: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#774: FILE: drivers/gpu/drm/i915/display/intel_wd.c:208:
+static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
+		enum pipe *pipe)

-:787: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#787: FILE: drivers/gpu/drm/i915/display/intel_wd.c:221:
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);

-:805: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#805: FILE: drivers/gpu/drm/i915/display/intel_wd.c:239:
+static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
+				    struct drm_crtc_state *crtc_st,

-:828: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#828: FILE: drivers/gpu/drm/i915/display/intel_wd.c:262:
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);

-:835: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#835: FILE: drivers/gpu/drm/i915/display/intel_wd.c:269:
+		drm_dbg_kms(&i915->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);

-:842: CHECK:LINE_SPACING: Please don't use multiple blank lines
#842: FILE: drivers/gpu/drm/i915/display/intel_wd.c:276:
+
+

-:878: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#878: FILE: drivers/gpu/drm/i915/display/intel_wd.c:312:
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:934: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#934: FILE: drivers/gpu/drm/i915/display/intel_wd.c:368:
+	drm_encoder_helper_add(drm_enc,
+			&wd_encoder_helper_funcs);

-:943: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#943: FILE: drivers/gpu/drm/i915/display/intel_wd.c:377:
+		drm_dbg_kms(&i915->drm,
+		"Writeback drm_encoder init Failed: %d\n",

-:949: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#949: FILE: drivers/gpu/drm/i915/display/intel_wd.c:383:
+	err = drm_writeback_connector_init_with_encoder(&i915->drm,
+		wb_conn, drm_enc, &wd_connector_funcs,

-:954: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#954: FILE: drivers/gpu/drm/i915/display/intel_wd.c:388:
+		drm_dbg_kms(&i915->drm,
+		"drm_writeback_connector_init: Failed: %d\n",

-:967: WARNING:RETURN_VOID: void function return statements are not generally useful
#967: FILE: drivers/gpu/drm/i915/display/intel_wd.c:401:
+	return;
+}

-:970: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#970: FILE: drivers/gpu/drm/i915/display/intel_wd.c:404:
+static void intel_wd_writeback_complete(struct intel_wd *intel_wd,
+	struct drm_writeback_job *job, int status)

-:978: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#978: FILE: drivers/gpu/drm/i915/display/intel_wd.c:412:
+static int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1012: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1012: FILE: drivers/gpu/drm/i915/display/intel_wd.c:446:
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));

-:1023: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1023: FILE: drivers/gpu/drm/i915/display/intel_wd.c:457:
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));

-:1112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1112: FILE: drivers/gpu/drm/i915/display/intel_wd.c:546:
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))

-:1120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1120: FILE: drivers/gpu/drm/i915/display/intel_wd.c:554:
+static int intel_wd_capture(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1134: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1134: FILE: drivers/gpu/drm/i915/display/intel_wd.c:568:
+	ret = intel_wd_setup_transcoder(intel_wd, pipe_config,
+		conn_state, job);

-:1138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1138: FILE: drivers/gpu/drm/i915/display/intel_wd.c:572:
+		drm_dbg_kms(&i915->drm,
+		"WD transcoder setup not completed aborting capture\n");

-:1148: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1148: FILE: drivers/gpu/drm/i915/display/intel_wd.c:582:
+	tmp = intel_de_read_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1153: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1153: FILE: drivers/gpu/drm/i915/display/intel_wd.c:587:
+	intel_de_write_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1156: FILE: drivers/gpu/drm/i915/display/intel_wd.c:590:
+	if (!intel_de_wait_for_set(i915, WD_IIR(intel_wd->trans),
+				WD_FRAME_COMPLETE_INT, 100)){

-:1162: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1162: FILE: drivers/gpu/drm/i915/display/intel_wd.c:596:
+		tmp = intel_de_read(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1165: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1165: FILE: drivers/gpu/drm/i915/display/intel_wd.c:599:
+		intel_de_write(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1174: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1174: FILE: drivers/gpu/drm/i915/display/intel_wd.c:608:
+		drm_crtc_send_vblank_event(&wd_crtc->base,
+					wd_crtc->wd.e);

-:1187: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1187: FILE: drivers/gpu/drm/i915/display/intel_wd.c:621:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state)

-:1199: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1199: FILE: drivers/gpu/drm/i915/display/intel_wd.c:633:
+		drm_dbg_kms(&i915->drm,
+			"job queue is empty not capturing any frame\n");

-:1204: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1204: FILE: drivers/gpu/drm/i915/display/intel_wd.c:638:
+	intel_wd_capture(intel_wd, pipe_config,
+			conn_state, job);

-:1209: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1209: FILE: drivers/gpu/drm/i915/display/intel_wd.c:643:
+void intel_wd_set_vblank_event(struct intel_atomic_state *state, struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)

-:1249: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1249: FILE: drivers/gpu/drm/i915/display/intel_wd.c:683:
+	for_each_intel_encoder(&i915->drm, encoder) {
+

-:1314: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1314: FILE: drivers/gpu/drm/i915/display/intel_wd.h:43:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+			struct drm_connector_state *conn_state);

-:1317: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1317: FILE: drivers/gpu/drm/i915/display/intel_wd.h:46:
+void intel_wd_set_vblank_event(struct intel_atomic_state *state, struct intel_crtc *crtc,
+			struct intel_crtc_state *crtc_state);

total: 0 errors, 2 warnings, 49 checks, 1265 lines checked


