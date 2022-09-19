Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 955EE5BD859
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 01:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B150110E20C;
	Mon, 19 Sep 2022 23:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEB5D10E216;
 Mon, 19 Sep 2022 23:41:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6B8CA77A5;
 Mon, 19 Sep 2022 23:41:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Mon, 19 Sep 2022 23:41:43 -0000
Message-ID: <166363090387.28333.16254715094882145968@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
In-Reply-To: <20220919130505.1984383-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_Pipewriteback_=28rev7=29?=
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

Series: Enable Pipewriteback (rev7)
URL   : https://patchwork.freedesktop.org/series/107440/
State : warning

== Summary ==

Error: dim checkpatch failed
c994ba9a29ce drm/i915: Define WD trancoder for i915
5e7abcf91502 drm/i915 : Changing intel_connector iterators
-:76: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#76: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1507:
+#define to_intel_connector(x) (((x->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
+				NULL : container_of(x, struct intel_connector, base))

-:76: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#76: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1507:
+#define to_intel_connector(x) (((x->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
+				NULL : container_of(x, struct intel_connector, base))

-:104: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#104: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2093:
+
+	}

total: 0 errors, 0 warnings, 3 checks, 104 lines checked
056ada13d2e5 drm/i915: Enabling WD Transcoder
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:559: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#559: 
new file mode 100644

-:597: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#597: FILE: drivers/gpu/drm/i915/display/intel_wd.c:34:
+	if (job == NULL) {

-:634: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#634: FILE: drivers/gpu/drm/i915/display/intel_wd.c:71:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);

-:712: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#712: FILE: drivers/gpu/drm/i915/display/intel_wd.c:149:
+	intel_de_write(i915, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);

-:735: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#735: FILE: drivers/gpu/drm/i915/display/intel_wd.c:172:
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));

-:786: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#786: FILE: drivers/gpu/drm/i915/display/intel_wd.c:223:
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);

-:827: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#827: FILE: drivers/gpu/drm/i915/display/intel_wd.c:264:
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);

-:834: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#834: FILE: drivers/gpu/drm/i915/display/intel_wd.c:271:
+		drm_dbg_kms(&i915->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);

-:875: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#875: FILE: drivers/gpu/drm/i915/display/intel_wd.c:312:
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:929: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#929: FILE: drivers/gpu/drm/i915/display/intel_wd.c:366:
+	drm_encoder_helper_add(drm_enc,
+			&wd_encoder_helper_funcs);

-:944: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#944: FILE: drivers/gpu/drm/i915/display/intel_wd.c:381:
+	err = drm_writeback_connector_init_with_encoder(&i915->drm,
+		wb_conn, drm_enc, &wb_connector_funcs,

-:962: WARNING:RETURN_VOID: void function return statements are not generally useful
#962: FILE: drivers/gpu/drm/i915/display/intel_wd.c:399:
+	return;
+}

-:1008: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1008: FILE: drivers/gpu/drm/i915/display/intel_wd.c:445:
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));

-:1019: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1019: FILE: drivers/gpu/drm/i915/display/intel_wd.c:456:
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));

-:1108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1108: FILE: drivers/gpu/drm/i915/display/intel_wd.c:545:
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))

-:1130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1130: FILE: drivers/gpu/drm/i915/display/intel_wd.c:567:
+	ret = intel_wd_setup_transcoder(intel_wd, pipe_config,
+		conn_state, job);

-:1179: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1179: FILE: drivers/gpu/drm/i915/display/intel_wd.c:616:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+		struct drm_connector_state *conn_state)

-:1196: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1196: FILE: drivers/gpu/drm/i915/display/intel_wd.c:633:
+	intel_wd_capture(intel_wd, pipe_config,
+			conn_state, job);

-:1201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1201: FILE: drivers/gpu/drm/i915/display/intel_wd.c:638:
+void intel_wd_set_vblank_event(struct intel_atomic_state *state, struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)

-:1241: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1241: FILE: drivers/gpu/drm/i915/display/intel_wd.c:678:
+	for_each_intel_encoder(&i915->drm, encoder) {
+

-:1306: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1306: FILE: drivers/gpu/drm/i915/display/intel_wd.h:43:
+void intel_wd_enable_capture(struct intel_crtc_state *pipe_config,
+			struct drm_connector_state *conn_state);

-:1309: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1309: FILE: drivers/gpu/drm/i915/display/intel_wd.h:46:
+void intel_wd_set_vblank_event(struct intel_atomic_state *state, struct intel_crtc *crtc,
+			struct intel_crtc_state *crtc_state);

total: 0 errors, 2 warnings, 20 checks, 1260 lines checked


