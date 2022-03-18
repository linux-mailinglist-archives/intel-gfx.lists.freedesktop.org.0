Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAFA4DD3FD
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 05:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D98210E90D;
	Fri, 18 Mar 2022 04:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 283D610E933;
 Fri, 18 Mar 2022 04:48:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 249F7A00A0;
 Fri, 18 Mar 2022 04:48:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Fri, 18 Mar 2022 04:48:27 -0000
Message-ID: <164757890711.31589.17173114508034836519@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
In-Reply-To: <20220316093740.652925-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915_writeback_private_framework_=28rev4=29?=
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

Series: i915 writeback private framework (rev4)
URL   : https://patchwork.freedesktop.org/series/101425/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
224406362f12 drm/i915: Creating writeback pipeline to bypass drm_writeback framework
-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:86: CHECK:LINE_SPACING: Please don't use multiple blank lines
#86: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:30:
+
+

-:99: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#99: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:43:
+#define fence_to_wb_connector(x) container_of(x->lock, \
+					      struct intel_writeback_connector, \
+					      fence_lock)

-:138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#138: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:82:
+		prop = drm_property_create_object(dev, DRM_MODE_PROP_ATOMIC,
+						"WRITEBACK_FB_ID",

-:157: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#157: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:101:
+		prop = drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
+						"WRITEBACK_OUT_FENCE_PTR", 0,

-:172: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#172: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:116:
+int intel_writeback_connector_init(struct drm_device *dev,
+				 struct intel_writeback_connector *wb_connector,

-:195: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#195: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:139:
+	ret = drm_encoder_init(dev, wb_connector->encoder,
+			&intel_writeback_encoder_funcs,

-:203: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#203: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:147:
+	ret = drm_connector_init(dev, connector, con_funcs,
+				DRM_MODE_CONNECTOR_WRITEBACK);

-:208: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#208: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:152:
+	ret = drm_connector_attach_encoder(connector,
+					wb_connector->encoder);

-:218: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#218: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:162:
+	snprintf(wb_connector->timeline_name,
+		sizeof(wb_connector->timeline_name),

-:222: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#222: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:166:
+	drm_object_attach_property(&connector->base,
+				i915->wb_out_fence_ptr_property, 0);

-:225: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#225: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:169:
+	drm_object_attach_property(&connector->base,
+				i915->wb_fb_id_property, 0);

-:228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#228: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:172:
+	drm_object_attach_property(&connector->base,
+				i915->wb_pixel_formats_property,

-:244: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#244: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:188:
+void intel_writeback_queue_job(struct intel_writeback_connector *wb_connector,
+		struct drm_connector_state *conn_state)

-:260: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#260: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:204:
+int intel_writeback_set_fb(struct drm_connector_state *conn_state,
+			 struct drm_framebuffer *fb)

-:303: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#303: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:247:
+intel_writeback_signal_completion(struct intel_writeback_connector *wb_connector,
+				int status)

-:311: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#311: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:255:
+	job = list_first_entry_or_null(&wb_connector->job_queue,
+					struct intel_writeback_job,

-:348: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#348: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:292:
+	dma_fence_init(fence, &intel_writeback_fence_ops,
+		&wb_connector->fence_lock, wb_connector->fence_context,

-:405: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#405: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:47:
+	spinlock_t job_lock;

-:408: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#408: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:50:
+	spinlock_t fence_lock;

-:427: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#427: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:69:
+int intel_writeback_connector_init(struct drm_device *dev,
+			struct intel_writeback_connector *wb_connector,

-:433: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#433: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:75:
+int intel_writeback_set_fb(struct drm_connector_state *conn_state,
+			struct drm_framebuffer *fb);

-:438: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#438: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:80:
+void intel_writeback_queue_job(struct intel_writeback_connector *wb_connector,
+			struct drm_connector_state *conn_state);

-:444: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#444: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:86:
+intel_writeback_signal_completion(struct intel_writeback_connector *wb_connector,
+			int status);

-:454: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#454: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:96:
+void intel_wb_connector_attach_encoder(struct intel_wb_connector *connector,
+					struct intel_encoder *encoder);

total: 0 errors, 1 warnings, 24 checks, 432 lines checked
cec4957b100a drm/i915: Define WD trancoder for i915
2589a007a64d drm/i915: Enabling WD Transcoder
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/display/intel_display.c:1551:
+static void intel_queue_writeback_job(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:69: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#69: FILE: drivers/gpu/drm/i915/display/intel_display.c:1568:
+
+	}

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/i915/display/intel_display.c:1582:
+static void intel_find_writeback_connector(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:98: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#98: FILE: drivers/gpu/drm/i915/display/intel_display.c:1597:
+
+	}

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/display/intel_display.c:1605:
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]: status: %s\n",
+				connector->base.id, connector->name,

-:115: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#115: FILE: drivers/gpu/drm/i915/display/intel_display.c:1614:
+
+}

-:204: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#204: FILE: drivers/gpu/drm/i915/display/intel_display.h:475:
+#define for_each_intel_encoder_with_wd(dev, intel_encoder)	\
+	for_each_intel_encoder(dev, intel_encoder)		\
+		for_each_if(intel_encoder_is_wd(intel_encoder))

-:204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#204: FILE: drivers/gpu/drm/i915/display/intel_display.h:475:
+#define for_each_intel_encoder_with_wd(dev, intel_encoder)	\
+	for_each_intel_encoder(dev, intel_encoder)		\
+		for_each_if(intel_encoder_is_wd(intel_encoder))

-:278: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#278: 
new file mode 100644

-:338: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#338: FILE: drivers/gpu/drm/i915/display/intel_wd.c:56:
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+			struct intel_writeback_job,

-:341: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#341: FILE: drivers/gpu/drm/i915/display/intel_wd.c:59:
+	if (job == NULL) {

-:380: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#380: FILE: drivers/gpu/drm/i915/display/intel_wd.c:98:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);

-:400: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#400: FILE: drivers/gpu/drm/i915/display/intel_wd.c:118:
+static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
+			int format)

-:426: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#426: FILE: drivers/gpu/drm/i915/display/intel_wd.c:144:
+static int intel_wd_pin_fb(struct intel_wd *intel_wd,
+			struct drm_framebuffer *fb)

-:434: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#434: FILE: drivers/gpu/drm/i915/display/intel_wd.c:152:
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, false,
+			&intel_wd->flags);

-:444: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#444: FILE: drivers/gpu/drm/i915/display/intel_wd.c:162:
+static void intel_configure_slicing_strategy(struct drm_i915_private *i915,
+		struct intel_wd *intel_wd, u32 *tmp)

-:457: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#457: FILE: drivers/gpu/drm/i915/display/intel_wd.c:175:
+	intel_de_write(i915, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);

-:459: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#459: FILE: drivers/gpu/drm/i915/display/intel_wd.c:177:
+
+}

-:463: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#463: FILE: drivers/gpu/drm/i915/display/intel_wd.c:181:
+intel_wd_mode_valid(struct drm_connector *connector,
+		struct drm_display_mode *mode)

-:474: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#474: FILE: drivers/gpu/drm/i915/display/intel_wd.c:192:
+static void intel_wd_get_config(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:483: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#483: FILE: drivers/gpu/drm/i915/display/intel_wd.c:201:
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));

-:488: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#488: FILE: drivers/gpu/drm/i915/display/intel_wd.c:206:
+
+}

-:491: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#491: FILE: drivers/gpu/drm/i915/display/intel_wd.c:209:
+static int intel_wd_compute_config(struct intel_encoder *encoder,
+			struct intel_crtc_state *pipe_config,

-:512: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#512: FILE: drivers/gpu/drm/i915/display/intel_wd.c:230:
+static void intel_wd_get_power_domains(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)

-:519: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#519: FILE: drivers/gpu/drm/i915/display/intel_wd.c:237:
+	wakeref = intel_display_power_get(i915,
+				encoder->power_domain);

-:526: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#526: FILE: drivers/gpu/drm/i915/display/intel_wd.c:244:
+static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
+		enum pipe *pipe)

-:539: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#539: FILE: drivers/gpu/drm/i915/display/intel_wd.c:257:
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);

-:541: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#541: FILE: drivers/gpu/drm/i915/display/intel_wd.c:259:
+	drm_dbg_kms(encoder->base.dev, "power enabled : %s\n",
+			!wakeref ? "false":"true");

-:541: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#541: FILE: drivers/gpu/drm/i915/display/intel_wd.c:259:
+			!wakeref ? "false":"true");
 			                  ^

-:549: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#549: FILE: drivers/gpu/drm/i915/display/intel_wd.c:267:
+	drm_dbg_kms(encoder->base.dev, "trancoder enabled: %s\n",
+			ret ? "true":"false");

-:549: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#549: FILE: drivers/gpu/drm/i915/display/intel_wd.c:267:
+			ret ? "true":"false");
 			            ^

-:553: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#553: FILE: drivers/gpu/drm/i915/display/intel_wd.c:271:
+		drm_dbg_kms(encoder->base.dev, "pipe selected is %d\n",
+			wd_crtc->pipe);

-:559: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#559: FILE: drivers/gpu/drm/i915/display/intel_wd.c:277:
+static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
+				    struct drm_crtc_state *crtc_st,

-:587: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#587: FILE: drivers/gpu/drm/i915/display/intel_wd.c:305:
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);

-:595: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#595: FILE: drivers/gpu/drm/i915/display/intel_wd.c:313:
+		drm_dbg_kms(&i915->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);

-:602: CHECK:LINE_SPACING: Please don't use multiple blank lines
#602: FILE: drivers/gpu/drm/i915/display/intel_wd.c:320:
+
+

-:621: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#621: FILE: drivers/gpu/drm/i915/display/intel_wd.c:339:
+static int intel_atomic_set_writeback_fb_for_connector(

-:634: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#634: FILE: drivers/gpu/drm/i915/display/intel_wd.c:352:
+		drm_dbg_atomic(conn->dev,
+			"Set [FB:%d] for connector state %p\n",

-:638: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#638: FILE: drivers/gpu/drm/i915/display/intel_wd.c:356:
+		drm_dbg_atomic(conn->dev,
+			"Set [NOFB] for connector state %p\n",

-:645: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#645: FILE: drivers/gpu/drm/i915/display/intel_wd.c:363:
+static int set_out_fence_for_connector(struct drm_atomic_state *state,
+					struct drm_connector *connector,

-:662: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#662: FILE: drivers/gpu/drm/i915/display/intel_wd.c:380:
+static struct drm_mode_object *__intel_object_find(struct drm_device *dev,
+					       uint32_t id, uint32_t type)

-:662: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#662: FILE: drivers/gpu/drm/i915/display/intel_wd.c:380:
+					       uint32_t id, uint32_t type)

-:682: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#682: FILE: drivers/gpu/drm/i915/display/intel_wd.c:400:
+static struct drm_framebuffer *intel_wb_framebuffer_lookup(struct drm_device *dev,
+					       uint32_t id)

-:694: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#694: FILE: drivers/gpu/drm/i915/display/intel_wd.c:412:
+static s32 *intel_get_out_fence_for_connector(struct drm_atomic_state *state,
+					       struct drm_connector *connector)

-:706: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#706: FILE: drivers/gpu/drm/i915/display/intel_wd.c:424:
+static int intel_setup_out_fence(struct intel_out_fence_state *fence_state,
+			   struct dma_fence *fence)

-:708: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#708: FILE: drivers/gpu/drm/i915/display/intel_wd.c:426:
+{
+

-:724: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#724: FILE: drivers/gpu/drm/i915/display/intel_wd.c:442:
+int intel_wd_prepare_out_fence(struct drm_device *dev,
+				struct drm_atomic_state *state)

-:778: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#778: FILE: drivers/gpu/drm/i915/display/intel_wd.c:496:
+	fd_install(fence_state->fd,
+		fence_state->sync_file->file);

-:780: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#780: FILE: drivers/gpu/drm/i915/display/intel_wd.c:498:
+
+}

-:783: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#783: FILE: drivers/gpu/drm/i915/display/intel_wd.c:501:
+static int intel_set_writeback_property(struct drm_connector *connector,
+	struct drm_connector_state *state, struct drm_property *property,

-:805: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#805: FILE: drivers/gpu/drm/i915/display/intel_wd.c:523:
+		drm_dbg_atomic(connector->dev,
+			"[CONNECTOR:%d:%s] unknown property [PROP:%d:%s]]\n",

-:813: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#813: FILE: drivers/gpu/drm/i915/display/intel_wd.c:531:
+
+}

-:816: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#816: FILE: drivers/gpu/drm/i915/display/intel_wd.c:534:
+static int intel_get_writeback_property(struct drm_connector *connector,
+	const struct drm_connector_state *state, struct drm_property *property,

-:822: CHECK:BRACES: braces {} should be used on all arms of this statement
#822: FILE: drivers/gpu/drm/i915/display/intel_wd.c:540:
+	if (property == i915->wb_fb_id_property)
[...]
+	else if (property == i915->wb_out_fence_ptr_property)
[...]
+	else {
[...]

-:826: CHECK:BRACES: Unbalanced braces around else statement
#826: FILE: drivers/gpu/drm/i915/display/intel_wd.c:544:
+	else {

-:828: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#828: FILE: drivers/gpu/drm/i915/display/intel_wd.c:546:
+		drm_dbg_atomic(&i915->drm,
+				"Unknown property [PROP:%d:%s]\n",

-:853: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#853: FILE: drivers/gpu/drm/i915/display/intel_wd.c:571:
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:913: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#913: FILE: drivers/gpu/drm/i915/display/intel_wd.c:631:
+	err = intel_writeback_connector_init(&i915->drm, wb_conn,
+		&wd_connector_funcs,

-:919: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#919: FILE: drivers/gpu/drm/i915/display/intel_wd.c:637:
+		drm_dbg_kms(&i915->drm,
+		"intel_writeback_connector_init: Failed: %d\n",

-:935: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#935: FILE: drivers/gpu/drm/i915/display/intel_wd.c:653:
+static void intel_wd_writeback_complete(struct intel_wd *intel_wd,
+	struct intel_writeback_job *job, int status)

-:944: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#944: FILE: drivers/gpu/drm/i915/display/intel_wd.c:662:
+static int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:978: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#978: FILE: drivers/gpu/drm/i915/display/intel_wd.c:696:
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));

-:983: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#983: FILE: drivers/gpu/drm/i915/display/intel_wd.c:701:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                        ^

-:983: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#983: FILE: drivers/gpu/drm/i915/display/intel_wd.c:701:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                              ^

-:983: CHECK:SPACING: space preferred before that '|' (ctx:VxE)
#983: FILE: drivers/gpu/drm/i915/display/intel_wd.c:701:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                                                    ^

-:984: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#984: FILE: drivers/gpu/drm/i915/display/intel_wd.c:702:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			             ^

-:984: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#984: FILE: drivers/gpu/drm/i915/display/intel_wd.c:702:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			                            ^

-:989: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#989: FILE: drivers/gpu/drm/i915/display/intel_wd.c:707:
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));

-:1074: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#1074: FILE: drivers/gpu/drm/i915/display/intel_wd.c:792:
+	drm_dbg_kms(&dev_priv->drm, "Trancoder enabled: %s\n", ret ? "true":"false");
 	                                                                   ^

-:1084: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1084: FILE: drivers/gpu/drm/i915/display/intel_wd.c:802:
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))

-:1102: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1102: FILE: drivers/gpu/drm/i915/display/intel_wd.c:820:
+	drm_dbg_kms(&dev_priv->drm, "WD Trans_Conf value after disable = 0x%08x\n",
+		intel_de_read(dev_priv, PIPECONF(intel_wd->trans)));

-:1108: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1108: FILE: drivers/gpu/drm/i915/display/intel_wd.c:826:
+static int intel_wd_capture(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1126: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1126: FILE: drivers/gpu/drm/i915/display/intel_wd.c:844:
+		drm_dbg_kms(&i915->drm,
+		"wd transcoder setup not completed aborting capture\n");

-:1130: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wd_crtc"
#1130: FILE: drivers/gpu/drm/i915/display/intel_wd.c:848:
+	if (wd_crtc == NULL) {

-:1136: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1136: FILE: drivers/gpu/drm/i915/display/intel_wd.c:854:
+	tmp = intel_de_read_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1141: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1141: FILE: drivers/gpu/drm/i915/display/intel_wd.c:859:
+	intel_de_write_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1144: FILE: drivers/gpu/drm/i915/display/intel_wd.c:862:
+	if (!intel_de_wait_for_set(i915, WD_IIR(intel_wd->trans),
+				WD_FRAME_COMPLETE_INT, 100)){

-:1152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1152: FILE: drivers/gpu/drm/i915/display/intel_wd.c:870:
+		tmp = intel_de_read(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1155: FILE: drivers/gpu/drm/i915/display/intel_wd.c:873:
+		intel_de_write(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1161: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_get_writeback_job_from_queue"
#1161: FILE: drivers/gpu/drm/i915/display/intel_wd.c:879:
+	if (intel_get_writeback_job_from_queue(intel_wd) == NULL)

-:1167: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1167: FILE: drivers/gpu/drm/i915/display/intel_wd.c:885:
+		drm_crtc_send_vblank_event(&wd_crtc->base,
+					wd_crtc->wd.e);

-:1172: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1172: FILE: drivers/gpu/drm/i915/display/intel_wd.c:890:
+		DRM_ERROR("Event NULL! %p, %p\n", &i915->drm,
+			wd_crtc);

-:1176: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1176: FILE: drivers/gpu/drm/i915/display/intel_wd.c:894:
+
+}

-:1179: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1179: FILE: drivers/gpu/drm/i915/display/intel_wd.c:897:
+void intel_wd_enable_capture(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config,

-:1189: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#1189: FILE: drivers/gpu/drm/i915/display/intel_wd.c:907:
+	if (job == NULL) {

-:1191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1191: FILE: drivers/gpu/drm/i915/display/intel_wd.c:909:
+		drm_dbg_kms(&i915->drm,
+			"job queue is empty not capturing any frame\n");

-:1198: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1198: FILE: drivers/gpu/drm/i915/display/intel_wd.c:916:
+
+}

-:1201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1201: FILE: drivers/gpu/drm/i915/display/intel_wd.c:919:
+void intel_wd_set_vblank_event(struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)

-:1222: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1222: FILE: drivers/gpu/drm/i915/display/intel_wd.c:940:
+			drm_dbg_kms(&i915->drm, "WD event:%p\n",
+				intel_crtc->wd.e);

-:1250: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1250: FILE: drivers/gpu/drm/i915/display/intel_wd.c:968:
+		drm_dbg_kms(&i915->drm,
+		"wd write complete interrupt encountered\n");

-:1255: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1255: FILE: drivers/gpu/drm/i915/display/intel_wd.c:973:
+		drm_dbg_kms(&i915->drm,
+			"frame complete interrupt for wd transcoder\n");

-:1333: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#1333: FILE: drivers/gpu/drm/i915/display/intel_wd.h:67:
+extern struct sync_file *sync_file_create(struct dma_fence *fence);

-:1338: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1338: FILE: drivers/gpu/drm/i915/display/intel_wd.h:72:
+}
+void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder trans);

-:1340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1340: FILE: drivers/gpu/drm/i915/display/intel_wd.h:74:
+void intel_wd_enable_capture(struct intel_encoder *encoder,
+				struct intel_crtc_state *pipe_config,

-:1344: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1344: FILE: drivers/gpu/drm/i915/display/intel_wd.h:78:
+void intel_wd_set_vblank_event(struct intel_crtc *crtc,
+				struct intel_crtc_state *state);

-:1346: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1346: FILE: drivers/gpu/drm/i915/display/intel_wd.h:80:
+int intel_wd_prepare_out_fence(struct drm_device *dev,
+				struct drm_atomic_state *state);

-:1404: CHECK:SPACING: spaces preferred around that '|' (ctx:VxE)
#1404: FILE: drivers/gpu/drm/i915/i915_pci.c:856:
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
 		                                             ^

-:1439: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1439: FILE: drivers/gpu/drm/i915/i915_reg.h:3804:
+
+

total: 1 errors, 1 warnings, 96 checks, 1501 lines checked


