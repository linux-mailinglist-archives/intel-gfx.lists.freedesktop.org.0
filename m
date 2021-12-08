Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA0E46D4C3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 14:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E026F5AC;
	Wed,  8 Dec 2021 13:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 891DB6F4D8;
 Wed,  8 Dec 2021 13:48:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8510EA363D;
 Wed,  8 Dec 2021 13:48:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 08 Dec 2021 13:48:11 -0000
Message-ID: <163897129153.8234.8709418867592013845@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1638961423.git.jani.nikula@intel.com>
In-Reply-To: <cover.1638961423.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_trace_display_split?=
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

Series: drm/i915: trace display split
URL   : https://patchwork.freedesktop.org/series/97721/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
25fd3bfdc326 drm/i915/trace: clean up boilerplate organization
b994ae8af368 drm/i915/trace: split out display trace to a separate file
-:144: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#144: 
new file mode 100644

-:186: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#186: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:23:
+	    TP_STRUCT__entry(

-:191: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#191: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:28:
+	    TP_fast_assign(

-:192: WARNING:TABSTOP: Statements should start on a tabstop
#192: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:29:
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

-:193: WARNING:TABSTOP: Statements should start on a tabstop
#193: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:30:
+			   struct intel_crtc *it__;

-:194: WARNING:LINE_SPACING: Missing a blank line after declarations
#194: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:31:
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {

-:194: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#194: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:31:
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:197: WARNING:TABSTOP: Statements should start on a tabstop
#197: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:34:
+			   }

-:212: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#212: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:49:
+	    TP_STRUCT__entry(

-:218: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#218: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:55:
+	    TP_fast_assign(

-:219: WARNING:TABSTOP: Statements should start on a tabstop
#219: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:56:
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

-:220: WARNING:TABSTOP: Statements should start on a tabstop
#220: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:57:
+			   struct intel_crtc *it__;

-:221: WARNING:LINE_SPACING: Missing a blank line after declarations
#221: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:58:
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {

-:221: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#221: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:58:
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:224: WARNING:TABSTOP: Statements should start on a tabstop
#224: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:61:
+			   }

-:239: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#239: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:76:
+	    TP_STRUCT__entry(

-:246: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#246: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:83:
+	    TP_fast_assign(

-:263: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#263: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:100:
+	    TP_STRUCT__entry(

-:269: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#269: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:106:
+	    TP_fast_assign(

-:270: WARNING:TABSTOP: Statements should start on a tabstop
#270: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:107:
+			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);

-:285: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#285: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:122:
+	    TP_STRUCT__entry(

-:291: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#291: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:128:
+	    TP_fast_assign(

-:292: WARNING:TABSTOP: Statements should start on a tabstop
#292: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:129:
+			   enum pipe pipe = pch_transcoder;

-:293: WARNING:TABSTOP: Statements should start on a tabstop
#293: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:130:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);

-:294: WARNING:LINE_SPACING: Missing a blank line after declarations
#294: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:131:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   __entry->pipe = pipe;

-:308: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#308: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:145:
+	    TP_STRUCT__entry(

-:315: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#315: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:152:
+	    TP_fast_assign(

-:316: WARNING:TABSTOP: Statements should start on a tabstop
#316: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:153:
+			   struct intel_crtc *crtc;

-:317: WARNING:LINE_SPACING: Missing a blank line after declarations
#317: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:154:
+			   struct intel_crtc *crtc;
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {

-:317: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#317: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:154:
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {
+				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);

-:320: WARNING:TABSTOP: Statements should start on a tabstop
#320: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:157:
+			   }

-:336: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#336: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:173:
+	    TP_STRUCT__entry(

-:354: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#354: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:191:
+	    TP_fast_assign(

-:376: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#376: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:213:
+		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,

-:384: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#384: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:221:
+	    TP_STRUCT__entry(

-:398: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#398: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:235:
+	    TP_fast_assign(

-:423: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#423: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:260:
+	    TP_STRUCT__entry(

-:432: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#432: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:269:
+	    TP_fast_assign(

-:451: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#451: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:288:
+	    TP_STRUCT__entry(

-:460: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#460: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:297:
+	    TP_fast_assign(

-:469: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#469: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:306:
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:480: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#480: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:317:
+	    TP_STRUCT__entry(

-:489: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#489: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:326:
+	    TP_fast_assign(

-:498: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#498: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:335:
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:509: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#509: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:346:
+	    TP_STRUCT__entry(

-:516: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#516: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:353:
+	    TP_fast_assign(

-:532: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#532: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:369:
+	    TP_STRUCT__entry(

-:538: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#538: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:375:
+	    TP_fast_assign(

-:539: WARNING:TABSTOP: Statements should start on a tabstop
#539: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:376:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),

-:554: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#554: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:391:
+	    TP_STRUCT__entry(

-:560: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#560: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:397:
+	    TP_fast_assign(

-:561: WARNING:TABSTOP: Statements should start on a tabstop
#561: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:398:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),

-:576: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#576: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:413:
+	    TP_STRUCT__entry(

-:582: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#582: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:419:
+	    TP_fast_assign(

-:583: WARNING:TABSTOP: Statements should start on a tabstop
#583: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:420:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),

-:598: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#598: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:435:
+	    TP_STRUCT__entry(

-:604: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#604: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:441:
+	    TP_fast_assign(

-:619: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#619: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:456:
+	    TP_STRUCT__entry(

-:625: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#625: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:462:
+	    TP_fast_assign(

-:640: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#640: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:477:
+	    TP_STRUCT__entry(

-:648: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#648: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:485:
+	    TP_fast_assign(

-:665: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#665: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:502:
+	    TP_STRUCT__entry(

-:673: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#673: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:510:
+	    TP_fast_assign(

-:690: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#690: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:527:
+	    TP_STRUCT__entry(

-:696: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#696: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:533:
+	    TP_fast_assign(

-:711: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#711: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:548:
+	    TP_STRUCT__entry(

-:716: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#716: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:553:
+	    TP_fast_assign(

-:729: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#729: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:566:
+	    TP_STRUCT__entry(

-:734: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#734: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:571:
+	    TP_fast_assign(

-:748: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#748: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:585:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                              ^

-:748: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#748: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:585:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                 ^

-:748: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#748: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:585:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                         ^

-:748: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#748: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:585:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                             ^

-:748: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#748: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:585:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                                 ^

-:748: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#748: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:585:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
                                                      ^

total: 0 errors, 25 warnings, 50 checks, 1388 lines checked


