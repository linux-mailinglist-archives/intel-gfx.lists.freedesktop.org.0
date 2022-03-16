Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BECD4DADC9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 10:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C915810E525;
	Wed, 16 Mar 2022 09:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 479B410E456;
 Wed, 16 Mar 2022 09:51:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 437B8AADD4;
 Wed, 16 Mar 2022 09:51:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Wed, 16 Mar 2022 09:51:49 -0000
Message-ID: <164742430927.29208.16447051440035496336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220316093740.652925-1-suraj.kandpal@intel.com>
In-Reply-To: <20220316093740.652925-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915_writeback_private_framework?=
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

Series: i915 writeback private framework
URL   : https://patchwork.freedesktop.org/series/101425/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
91a1acb1ae9e drm/i915: Creating writeback pipeline to bypass drm_writeback framework
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

-:59: CHECK:LINE_SPACING: Please don't use multiple blank lines
#59: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:30:
+
+

-:72: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'x' may be better as '(x)' to avoid precedence issues
#72: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:43:
+#define fence_to_wb_connector(x) container_of(x->lock, \
+					      struct intel_writeback_connector, \
+					      fence_lock)

-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:82:
+		prop = drm_property_create_object(dev, DRM_MODE_PROP_ATOMIC,
+						"WRITEBACK_FB_ID",

-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:101:
+		prop = drm_property_create_range(dev, DRM_MODE_PROP_ATOMIC,
+						"WRITEBACK_OUT_FENCE_PTR", 0,

-:145: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#145: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:116:
+int intel_writeback_connector_init(struct drm_device *dev,
+				 struct intel_writeback_connector *wb_connector,

-:168: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#168: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:139:
+	ret = drm_encoder_init(dev, wb_connector->encoder,
+			&intel_writeback_encoder_funcs,

-:176: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#176: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:147:
+	ret = drm_connector_init(dev, connector, con_funcs,
+				DRM_MODE_CONNECTOR_WRITEBACK);

-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:152:
+	ret = drm_connector_attach_encoder(connector,
+					wb_connector->encoder);

-:191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#191: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:162:
+	snprintf(wb_connector->timeline_name,
+		sizeof(wb_connector->timeline_name),

-:195: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#195: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:166:
+	drm_object_attach_property(&connector->base,
+				i915->wb_out_fence_ptr_property, 0);

-:198: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#198: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:169:
+	drm_object_attach_property(&connector->base,
+				i915->wb_fb_id_property, 0);

-:201: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#201: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:172:
+	drm_object_attach_property(&connector->base,
+				i915->wb_pixel_formats_property,

-:217: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#217: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:188:
+void intel_writeback_queue_job(struct intel_writeback_connector *wb_connector,
+		struct drm_connector_state *conn_state)

-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:204:
+int intel_writeback_set_fb(struct drm_connector_state *conn_state,
+			 struct drm_framebuffer *fb)

-:276: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#276: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:247:
+intel_writeback_signal_completion(struct intel_writeback_connector *wb_connector,
+				int status)

-:284: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#284: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:255:
+	job = list_first_entry_or_null(&wb_connector->job_queue,
+					struct intel_writeback_job,

-:321: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#321: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.c:292:
+	dma_fence_init(fence, &intel_writeback_fence_ops,
+		&wb_connector->fence_lock, wb_connector->fence_context,

-:378: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#378: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:47:
+	spinlock_t job_lock;

-:381: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#381: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:50:
+	spinlock_t fence_lock;

-:400: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#400: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:69:
+int intel_writeback_connector_init(struct drm_device *dev,
+			struct intel_writeback_connector *wb_connector,

-:406: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#406: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:75:
+int intel_writeback_set_fb(struct drm_connector_state *conn_state,
+			struct drm_framebuffer *fb);

-:411: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#411: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:80:
+void intel_writeback_queue_job(struct intel_writeback_connector *wb_connector,
+			struct drm_connector_state *conn_state);

-:417: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#417: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:86:
+intel_writeback_signal_completion(struct intel_writeback_connector *wb_connector,
+			int status);

-:427: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#427: FILE: drivers/gpu/drm/i915/display/intel_wb_connector.h:96:
+void intel_wb_connector_attach_encoder(struct intel_wb_connector *connector,
+					struct intel_encoder *encoder);

total: 0 errors, 1 warnings, 24 checks, 411 lines checked
7d4110d6e4d1 drm/i915: Define WD trancoder for i915
fcaf50c2dbca drm/i915: Enabling WD Transcoder
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/display/intel_display.c:1549:
+static void intel_queue_writeback_job(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:69: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#69: FILE: drivers/gpu/drm/i915/display/intel_display.c:1566:
+
+	}

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/i915/display/intel_display.c:1580:
+static void intel_find_writeback_connector(struct intel_atomic_state *state,
+		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)

-:98: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#98: FILE: drivers/gpu/drm/i915/display/intel_display.c:1595:
+
+	}

-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/display/intel_display.c:1603:
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]: status: %s\n",
+				connector->base.id, connector->name,

-:115: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#115: FILE: drivers/gpu/drm/i915/display/intel_display.c:1612:
+
+}

-:200: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#200: FILE: drivers/gpu/drm/i915/display/intel_display.h:475:
+#define for_each_intel_encoder_with_wd(dev, intel_encoder)	\
+	for_each_intel_encoder(dev, intel_encoder)		\
+		for_each_if(intel_encoder_is_wd(intel_encoder))

-:200: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_encoder' - possible side-effects?
#200: FILE: drivers/gpu/drm/i915/display/intel_display.h:475:
+#define for_each_intel_encoder_with_wd(dev, intel_encoder)	\
+	for_each_intel_encoder(dev, intel_encoder)		\
+		for_each_if(intel_encoder_is_wd(intel_encoder))

-:307: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#307: 
new file mode 100644

-:367: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#367: FILE: drivers/gpu/drm/i915/display/intel_wd.c:56:
+	job = list_first_entry_or_null(&wb_conn->job_queue,
+			struct intel_writeback_job,

-:370: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#370: FILE: drivers/gpu/drm/i915/display/intel_wd.c:59:
+	if (job == NULL) {

-:389: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#389: FILE: drivers/gpu/drm/i915/display/intel_wd.c:78:
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]: status: %s\n",
+			connector->base.id, connector->name,

-:427: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#427: FILE: drivers/gpu/drm/i915/display/intel_wd.c:116:
+		DRM_ERROR("unsupported pixel format %x!\n",
+			pixel_format);

-:447: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#447: FILE: drivers/gpu/drm/i915/display/intel_wd.c:136:
+static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
+			int format)

-:473: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#473: FILE: drivers/gpu/drm/i915/display/intel_wd.c:162:
+static int intel_wd_pin_fb(struct intel_wd *intel_wd,
+			struct drm_framebuffer *fb)

-:481: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#481: FILE: drivers/gpu/drm/i915/display/intel_wd.c:170:
+	vma = intel_pin_and_fence_fb_obj(fb, false, &view, false,
+			&intel_wd->flags);

-:491: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#491: FILE: drivers/gpu/drm/i915/display/intel_wd.c:180:
+static void intel_configure_slicing_strategy(struct drm_i915_private *i915,
+		struct intel_wd *intel_wd, u32 *tmp)

-:504: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#504: FILE: drivers/gpu/drm/i915/display/intel_wd.c:193:
+	intel_de_write(i915, WD_STREAMCAP_CTL(intel_wd->trans),
+			*tmp);

-:506: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#506: FILE: drivers/gpu/drm/i915/display/intel_wd.c:195:
+
+}

-:510: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#510: FILE: drivers/gpu/drm/i915/display/intel_wd.c:199:
+intel_wd_mode_valid(struct drm_connector *connector,
+		struct drm_display_mode *mode)

-:521: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#521: FILE: drivers/gpu/drm/i915/display/intel_wd.c:210:
+static void intel_wd_get_config(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:530: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#530: FILE: drivers/gpu/drm/i915/display/intel_wd.c:219:
+		memcpy(pipe_config, intel_crtc->config,
+			sizeof(*pipe_config));

-:535: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#535: FILE: drivers/gpu/drm/i915/display/intel_wd.c:224:
+
+}

-:538: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#538: FILE: drivers/gpu/drm/i915/display/intel_wd.c:227:
+static int intel_wd_compute_config(struct intel_encoder *encoder,
+			struct intel_crtc_state *pipe_config,

-:559: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#559: FILE: drivers/gpu/drm/i915/display/intel_wd.c:248:
+static void intel_wd_get_power_domains(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)

-:566: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#566: FILE: drivers/gpu/drm/i915/display/intel_wd.c:255:
+	wakeref = intel_display_power_get(i915,
+				encoder->power_domain);

-:573: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#573: FILE: drivers/gpu/drm/i915/display/intel_wd.c:262:
+static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
+		enum pipe *pipe)

-:586: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#586: FILE: drivers/gpu/drm/i915/display/intel_wd.c:275:
+	wakeref = intel_display_power_get_if_enabled(dev_priv,
+				encoder->power_domain);

-:588: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#588: FILE: drivers/gpu/drm/i915/display/intel_wd.c:277:
+	drm_dbg_kms(encoder->base.dev, "power enabled : %s\n",
+			!wakeref ? "false":"true");

-:588: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#588: FILE: drivers/gpu/drm/i915/display/intel_wd.c:277:
+			!wakeref ? "false":"true");
 			                  ^

-:596: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#596: FILE: drivers/gpu/drm/i915/display/intel_wd.c:285:
+	drm_dbg_kms(encoder->base.dev, "trancoder enabled: %s\n",
+			ret ? "true":"false");

-:596: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#596: FILE: drivers/gpu/drm/i915/display/intel_wd.c:285:
+			ret ? "true":"false");
 			            ^

-:600: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#600: FILE: drivers/gpu/drm/i915/display/intel_wd.c:289:
+		drm_dbg_kms(encoder->base.dev, "pipe selected is %d\n",
+			wd_crtc->pipe);

-:606: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#606: FILE: drivers/gpu/drm/i915/display/intel_wd.c:295:
+static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
+				    struct drm_crtc_state *crtc_st,

-:634: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#634: FILE: drivers/gpu/drm/i915/display/intel_wd.c:323:
+		drm_dbg_kms(&i915->drm, "Invalid framebuffer size %ux%u\n",
+				fb->width, fb->height);

-:642: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#642: FILE: drivers/gpu/drm/i915/display/intel_wd.c:331:
+		drm_dbg_kms(&i915->drm, "Unsupported framebuffer format %08x\n",
+				fb->format->format);

-:649: CHECK:LINE_SPACING: Please don't use multiple blank lines
#649: FILE: drivers/gpu/drm/i915/display/intel_wd.c:338:
+
+

-:668: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#668: FILE: drivers/gpu/drm/i915/display/intel_wd.c:357:
+static int intel_atomic_set_writeback_fb_for_connector(

-:681: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#681: FILE: drivers/gpu/drm/i915/display/intel_wd.c:370:
+		drm_dbg_atomic(conn->dev,
+			"Set [FB:%d] for connector state %p\n",

-:685: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#685: FILE: drivers/gpu/drm/i915/display/intel_wd.c:374:
+		drm_dbg_atomic(conn->dev,
+			"Set [NOFB] for connector state %p\n",

-:692: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#692: FILE: drivers/gpu/drm/i915/display/intel_wd.c:381:
+static int set_out_fence_for_connector(struct drm_atomic_state *state,
+					struct drm_connector *connector,

-:709: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#709: FILE: drivers/gpu/drm/i915/display/intel_wd.c:398:
+struct drm_mode_object *__intel_object_find(struct drm_device *dev,
+					       uint32_t id, uint32_t type)

-:709: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#709: FILE: drivers/gpu/drm/i915/display/intel_wd.c:398:
+					       uint32_t id, uint32_t type)

-:729: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#729: FILE: drivers/gpu/drm/i915/display/intel_wd.c:418:
+struct drm_framebuffer *intel_wb_framebuffer_lookup(struct drm_device *dev,
+					       uint32_t id)

-:741: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#741: FILE: drivers/gpu/drm/i915/display/intel_wd.c:430:
+static s32 __user *intel_get_out_fence_for_connector(struct drm_atomic_state *state,
+					       struct drm_connector *connector)

-:753: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#753: FILE: drivers/gpu/drm/i915/display/intel_wd.c:442:
+static int intel_setup_out_fence(struct intel_out_fence_state *fence_state,
+			   struct dma_fence *fence)

-:755: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#755: FILE: drivers/gpu/drm/i915/display/intel_wd.c:444:
+{
+

-:771: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#771: FILE: drivers/gpu/drm/i915/display/intel_wd.c:460:
+int intel_wd_prepare_out_fence(struct drm_device *dev,
+				struct drm_atomic_state *state)

-:825: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#825: FILE: drivers/gpu/drm/i915/display/intel_wd.c:514:
+	fd_install(fence_state->fd,
+		fence_state->sync_file->file);

-:827: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#827: FILE: drivers/gpu/drm/i915/display/intel_wd.c:516:
+
+}

-:830: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#830: FILE: drivers/gpu/drm/i915/display/intel_wd.c:519:
+static int intel_set_writeback_property(struct drm_connector *connector,
+	struct drm_connector_state *state, struct drm_property *property,

-:852: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#852: FILE: drivers/gpu/drm/i915/display/intel_wd.c:541:
+		drm_dbg_atomic(connector->dev,
+			"[CONNECTOR:%d:%s] unknown property [PROP:%d:%s]]\n",

-:860: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#860: FILE: drivers/gpu/drm/i915/display/intel_wd.c:549:
+
+}

-:863: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#863: FILE: drivers/gpu/drm/i915/display/intel_wd.c:552:
+static int intel_get_writeback_property(struct drm_connector *connector,
+	const struct drm_connector_state *state, struct drm_property *property,

-:869: CHECK:BRACES: braces {} should be used on all arms of this statement
#869: FILE: drivers/gpu/drm/i915/display/intel_wd.c:558:
+	if (property == i915->wb_fb_id_property)
[...]
+	else if (property == i915->wb_out_fence_ptr_property)
[...]
+	else {
[...]

-:873: CHECK:BRACES: Unbalanced braces around else statement
#873: FILE: drivers/gpu/drm/i915/display/intel_wd.c:562:
+	else {

-:875: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#875: FILE: drivers/gpu/drm/i915/display/intel_wd.c:564:
+		drm_dbg_atomic(&i915->drm,
+				"Unknown property [PROP:%d:%s]\n",

-:900: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#900: FILE: drivers/gpu/drm/i915/display/intel_wd.c:589:
+static bool intel_fastset_dis(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config)

-:960: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#960: FILE: drivers/gpu/drm/i915/display/intel_wd.c:649:
+	err = intel_writeback_connector_init(&i915->drm, wb_conn,
+		&wd_connector_funcs,

-:966: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#966: FILE: drivers/gpu/drm/i915/display/intel_wd.c:655:
+		drm_dbg_kms(&i915->drm,
+		"intel_writeback_connector_init: Failed: %d\n",

-:982: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#982: FILE: drivers/gpu/drm/i915/display/intel_wd.c:671:
+void intel_wd_writeback_complete(struct intel_wd *intel_wd,
+	struct intel_writeback_job *job, int status)

-:991: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#991: FILE: drivers/gpu/drm/i915/display/intel_wd.c:680:
+int intel_wd_setup_transcoder(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1025: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1025: FILE: drivers/gpu/drm/i915/display/intel_wd.c:714:
+	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
+			i915_ggtt_offset(intel_wd->vma));

-:1030: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1030: FILE: drivers/gpu/drm/i915/display/intel_wd.c:719:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                        ^

-:1030: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1030: FILE: drivers/gpu/drm/i915/display/intel_wd.c:719:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                              ^

-:1030: CHECK:SPACING: space preferred before that '|' (ctx:VxE)
#1030: FILE: drivers/gpu/drm/i915/display/intel_wd.c:719:
+	tmp = ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
 	                                                                    ^

-:1031: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1031: FILE: drivers/gpu/drm/i915/display/intel_wd.c:720:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			             ^

-:1031: CHECK:SPACING: spaces preferred around that '|' (ctx:VxV)
#1031: FILE: drivers/gpu/drm/i915/display/intel_wd.c:720:
+			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
 			                            ^

-:1036: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1036: FILE: drivers/gpu/drm/i915/display/intel_wd.c:725:
+		tmp = intel_de_read(dev_priv,
+				WD_STREAMCAP_CTL(intel_wd->trans));

-:1121: CHECK:SPACING: spaces required around that ':' (ctx:VxV)
#1121: FILE: drivers/gpu/drm/i915/display/intel_wd.c:810:
+	drm_dbg_kms(&dev_priv->drm, "Trancoder enabled: %s\n", ret ? "true":"false");
 	                                                                   ^

-:1131: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1131: FILE: drivers/gpu/drm/i915/display/intel_wd.c:820:
+		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
+				WD_TRANS_ACTIVE, 10))

-:1149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1149: FILE: drivers/gpu/drm/i915/display/intel_wd.c:838:
+	drm_dbg_kms(&dev_priv->drm, "WD Trans_Conf value after disable = 0x%08x\n",
+		intel_de_read(dev_priv, PIPECONF(intel_wd->trans)));

-:1155: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1155: FILE: drivers/gpu/drm/i915/display/intel_wd.c:844:
+int intel_wd_capture(struct intel_wd *intel_wd,
+		struct intel_crtc_state *pipe_config,

-:1173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1173: FILE: drivers/gpu/drm/i915/display/intel_wd.c:862:
+		drm_dbg_kms(&i915->drm,
+		"wd transcoder setup not completed aborting capture\n");

-:1177: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wd_crtc"
#1177: FILE: drivers/gpu/drm/i915/display/intel_wd.c:866:
+	if (wd_crtc == NULL) {

-:1183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1183: FILE: drivers/gpu/drm/i915/display/intel_wd.c:872:
+	tmp = intel_de_read_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1188: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1188: FILE: drivers/gpu/drm/i915/display/intel_wd.c:877:
+	intel_de_write_fw(i915,
+			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1191: FILE: drivers/gpu/drm/i915/display/intel_wd.c:880:
+	if (!intel_de_wait_for_set(i915, WD_IIR(intel_wd->trans),
+				WD_FRAME_COMPLETE_INT, 100)){

-:1199: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1199: FILE: drivers/gpu/drm/i915/display/intel_wd.c:888:
+		tmp = intel_de_read(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans));

-:1202: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1202: FILE: drivers/gpu/drm/i915/display/intel_wd.c:891:
+		intel_de_write(i915,
+				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);

-:1208: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!intel_get_writeback_job_from_queue"
#1208: FILE: drivers/gpu/drm/i915/display/intel_wd.c:897:
+	if (intel_get_writeback_job_from_queue(intel_wd) == NULL)

-:1214: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1214: FILE: drivers/gpu/drm/i915/display/intel_wd.c:903:
+		drm_crtc_send_vblank_event(&wd_crtc->base,
+					wd_crtc->wd.e);

-:1219: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1219: FILE: drivers/gpu/drm/i915/display/intel_wd.c:908:
+		DRM_ERROR("Event NULL! %p, %p\n", &i915->drm,
+			wd_crtc);

-:1223: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1223: FILE: drivers/gpu/drm/i915/display/intel_wd.c:912:
+
+}

-:1226: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1226: FILE: drivers/gpu/drm/i915/display/intel_wd.c:915:
+void intel_wd_enable_capture(struct intel_encoder *encoder,
+		struct intel_crtc_state *pipe_config,

-:1236: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!job"
#1236: FILE: drivers/gpu/drm/i915/display/intel_wd.c:925:
+	if (job == NULL) {

-:1238: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1238: FILE: drivers/gpu/drm/i915/display/intel_wd.c:927:
+		drm_dbg_kms(&i915->drm,
+			"job queue is empty not capturing any frame\n");

-:1245: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#1245: FILE: drivers/gpu/drm/i915/display/intel_wd.c:934:
+
+}

-:1248: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1248: FILE: drivers/gpu/drm/i915/display/intel_wd.c:937:
+void intel_wd_set_vblank_event(struct intel_crtc *intel_crtc,
+			struct intel_crtc_state *intel_crtc_state)

-:1269: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1269: FILE: drivers/gpu/drm/i915/display/intel_wd.c:958:
+			drm_dbg_kms(&i915->drm, "WD event:%p\n",
+				intel_crtc->wd.e);

-:1297: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1297: FILE: drivers/gpu/drm/i915/display/intel_wd.c:986:
+		drm_dbg_kms(&i915->drm,
+		"wd write complete interrupt encountered\n");

-:1302: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1302: FILE: drivers/gpu/drm/i915/display/intel_wd.c:991:
+		drm_dbg_kms(&i915->drm,
+			"frame complete interrupt for wd transcoder\n");

-:1380: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#1380: FILE: drivers/gpu/drm/i915/display/intel_wd.h:67:
+extern struct sync_file *sync_file_create(struct dma_fence *fence);

-:1385: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1385: FILE: drivers/gpu/drm/i915/display/intel_wd.h:72:
+}
+void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder trans);

-:1387: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1387: FILE: drivers/gpu/drm/i915/display/intel_wd.h:74:
+void intel_wd_enable_capture(struct intel_encoder *encoder,
+				struct intel_crtc_state *pipe_config,

-:1391: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1391: FILE: drivers/gpu/drm/i915/display/intel_wd.h:78:
+void intel_wd_set_vblank_event(struct intel_crtc *crtc,
+				struct intel_crtc_state *state);

-:1393: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1393: FILE: drivers/gpu/drm/i915/display/intel_wd.h:80:
+int intel_wd_prepare_out_fence(struct drm_device *dev,
+				struct drm_atomic_state *state);

-:1451: CHECK:SPACING: spaces preferred around that '|' (ctx:VxE)
#1451: FILE: drivers/gpu/drm/i915/i915_pci.c:856:
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
 		                                             ^

-:1486: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1486: FILE: drivers/gpu/drm/i915/i915_reg.h:3804:
+
+

total: 1 errors, 1 warnings, 97 checks, 1545 lines checked


