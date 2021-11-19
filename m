Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABE4457587
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 18:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDDE06E0DA;
	Fri, 19 Nov 2021 17:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 805756E0DA;
 Fri, 19 Nov 2021 17:35:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7800BAADD1;
 Fri, 19 Nov 2021 17:35:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 19 Nov 2021 17:35:09 -0000
Message-ID: <163734330946.2299.11201992685384284748@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211119141109.644548-1-jani.nikula@intel.com>
In-Reply-To: <20211119141109.644548-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/trace=3A_clean?=
 =?utf-8?q?_up_boilerplate_organization?=
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

Series: series starting with [v2,1/2] drm/i915/trace: clean up boilerplate organization
URL   : https://patchwork.freedesktop.org/series/97106/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
783ba647fe60 drm/i915/trace: clean up boilerplate organization
ce0d4d403c65 drm/i915/trace: split out display trace to a separate file
-:89: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#89: 
new file mode 100644

-:128: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#128: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:20:
+	    TP_STRUCT__entry(

-:133: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#133: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:25:
+	    TP_fast_assign(

-:134: WARNING:TABSTOP: Statements should start on a tabstop
#134: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:26:
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

-:135: WARNING:TABSTOP: Statements should start on a tabstop
#135: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:27:
+			   struct intel_crtc *it__;

-:136: WARNING:LINE_SPACING: Missing a blank line after declarations
#136: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:28:
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {

-:136: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#136: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:28:
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:139: WARNING:TABSTOP: Statements should start on a tabstop
#139: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:31:
+			   }

-:154: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#154: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:46:
+	    TP_STRUCT__entry(

-:160: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#160: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:52:
+	    TP_fast_assign(

-:161: WARNING:TABSTOP: Statements should start on a tabstop
#161: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:53:
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

-:162: WARNING:TABSTOP: Statements should start on a tabstop
#162: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:54:
+			   struct intel_crtc *it__;

-:163: WARNING:LINE_SPACING: Missing a blank line after declarations
#163: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:55:
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {

-:163: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#163: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:55:
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:166: WARNING:TABSTOP: Statements should start on a tabstop
#166: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:58:
+			   }

-:181: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#181: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:73:
+	    TP_STRUCT__entry(

-:188: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#188: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:80:
+	    TP_fast_assign(

-:205: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#205: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:97:
+	    TP_STRUCT__entry(

-:211: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#211: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:103:
+	    TP_fast_assign(

-:212: WARNING:TABSTOP: Statements should start on a tabstop
#212: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:104:
+			    struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

-:227: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#227: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:119:
+	    TP_STRUCT__entry(

-:233: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#233: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:125:
+	    TP_fast_assign(

-:234: WARNING:TABSTOP: Statements should start on a tabstop
#234: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:126:
+			   enum pipe pipe = pch_transcoder;

-:235: WARNING:TABSTOP: Statements should start on a tabstop
#235: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:127:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

-:236: WARNING:LINE_SPACING: Missing a blank line after declarations
#236: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:128:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+			   __entry->pipe = pipe;

-:250: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#250: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:142:
+	    TP_STRUCT__entry(

-:257: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#257: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:149:
+	    TP_fast_assign(

-:258: WARNING:TABSTOP: Statements should start on a tabstop
#258: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:150:
+			   struct intel_crtc *crtc;

-:259: WARNING:LINE_SPACING: Missing a blank line after declarations
#259: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:151:
+			   struct intel_crtc *crtc;
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {

-:259: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#259: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:151:
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {
+				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);

-:262: WARNING:TABSTOP: Statements should start on a tabstop
#262: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:154:
+			   }

-:278: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#278: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:170:
+	    TP_STRUCT__entry(

-:296: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#296: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:188:
+	    TP_fast_assign(

-:318: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#318: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:210:
+		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,

-:326: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#326: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:218:
+	    TP_STRUCT__entry(

-:340: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#340: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:232:
+	    TP_fast_assign(

-:365: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#365: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:257:
+	    TP_STRUCT__entry(

-:374: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#374: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:266:
+	    TP_fast_assign(

-:393: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#393: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:285:
+	    TP_STRUCT__entry(

-:402: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#402: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:294:
+	    TP_fast_assign(

-:411: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#411: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:303:
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:422: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#422: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:314:
+	    TP_STRUCT__entry(

-:431: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#431: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:323:
+	    TP_fast_assign(

-:440: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#440: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:332:
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:451: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#451: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:343:
+	    TP_STRUCT__entry(

-:458: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#458: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:350:
+	    TP_fast_assign(

-:474: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#474: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:366:
+	    TP_STRUCT__entry(

-:480: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#480: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:372:
+	    TP_fast_assign(

-:494: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#494: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:386:
+	    TP_STRUCT__entry(

-:500: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#500: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:392:
+	    TP_fast_assign(

-:514: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#514: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:406:
+	    TP_STRUCT__entry(

-:520: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#520: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:412:
+	    TP_fast_assign(

-:534: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#534: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:426:
+	    TP_STRUCT__entry(

-:540: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#540: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:432:
+	    TP_fast_assign(

-:555: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#555: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:447:
+	    TP_STRUCT__entry(

-:561: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#561: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:453:
+	    TP_fast_assign(

-:576: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#576: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:468:
+	    TP_STRUCT__entry(

-:584: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#584: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:476:
+	    TP_fast_assign(

-:601: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#601: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:493:
+	    TP_STRUCT__entry(

-:609: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#609: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:501:
+	    TP_fast_assign(

-:626: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#626: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:518:
+	    TP_STRUCT__entry(

-:632: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#632: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:524:
+	    TP_fast_assign(

-:647: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#647: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:539:
+	    TP_STRUCT__entry(

-:652: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#652: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:544:
+	    TP_fast_assign(

-:665: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#665: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:557:
+	    TP_STRUCT__entry(

-:670: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#670: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:562:
+	    TP_fast_assign(

-:684: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#684: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:576:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                              ^

-:684: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#684: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:576:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                 ^

-:684: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#684: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:576:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                         ^

-:684: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#684: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:576:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                             ^

-:684: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#684: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:576:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                                 ^

-:684: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#684: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:576:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                                      ^

total: 0 errors, 22 warnings, 50 checks, 1299 lines checked


