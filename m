Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A293453A5D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 20:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77296E054;
	Tue, 16 Nov 2021 19:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB7F36E054;
 Tue, 16 Nov 2021 19:45:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6593AADDC;
 Tue, 16 Nov 2021 19:45:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 16 Nov 2021 19:45:24 -0000
Message-ID: <163709192477.28810.16751787062612556132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211116154234.15696-1-jani.nikula@intel.com>
In-Reply-To: <20211116154234.15696-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/trace=3A_clean_up_b?=
 =?utf-8?q?oilerplate_organization?=
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

Series: series starting with [1/2] drm/i915/trace: clean up boilerplate organization
URL   : https://patchwork.freedesktop.org/series/96977/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
85123f803866 drm/i915/trace: clean up boilerplate organization
4c4795e8cf16 drm/i915/trace: split out display trace to a separate file
-:84: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#84: 
new file mode 100644

-:125: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#125: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:22:
+	    TP_STRUCT__entry(

-:130: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#130: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:27:
+	    TP_fast_assign(

-:131: WARNING:TABSTOP: Statements should start on a tabstop
#131: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:28:
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

-:132: WARNING:TABSTOP: Statements should start on a tabstop
#132: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:29:
+			   struct intel_crtc *it__;

-:133: WARNING:LINE_SPACING: Missing a blank line after declarations
#133: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:30:
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {

-:133: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#133: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:30:
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:136: WARNING:TABSTOP: Statements should start on a tabstop
#136: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:33:
+			   }

-:151: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#151: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:48:
+	    TP_STRUCT__entry(

-:157: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#157: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:54:
+	    TP_fast_assign(

-:158: WARNING:TABSTOP: Statements should start on a tabstop
#158: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:55:
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

-:159: WARNING:TABSTOP: Statements should start on a tabstop
#159: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:56:
+			   struct intel_crtc *it__;

-:160: WARNING:LINE_SPACING: Missing a blank line after declarations
#160: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:57:
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {

-:160: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#160: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:57:
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:163: WARNING:TABSTOP: Statements should start on a tabstop
#163: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:60:
+			   }

-:178: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#178: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:75:
+	    TP_STRUCT__entry(

-:185: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#185: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:82:
+	    TP_fast_assign(

-:202: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#202: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:99:
+	    TP_STRUCT__entry(

-:208: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#208: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:105:
+	    TP_fast_assign(

-:209: WARNING:TABSTOP: Statements should start on a tabstop
#209: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:106:
+			    struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

-:224: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#224: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:121:
+	    TP_STRUCT__entry(

-:230: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#230: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:127:
+	    TP_fast_assign(

-:231: WARNING:TABSTOP: Statements should start on a tabstop
#231: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:128:
+			   enum pipe pipe = pch_transcoder;

-:232: WARNING:TABSTOP: Statements should start on a tabstop
#232: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:129:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

-:233: WARNING:LINE_SPACING: Missing a blank line after declarations
#233: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:130:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+			   __entry->pipe = pipe;

-:247: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#247: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:144:
+	    TP_STRUCT__entry(

-:254: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#254: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:151:
+	    TP_fast_assign(

-:255: WARNING:TABSTOP: Statements should start on a tabstop
#255: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:152:
+			   struct intel_crtc *crtc;

-:256: WARNING:LINE_SPACING: Missing a blank line after declarations
#256: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:153:
+			   struct intel_crtc *crtc;
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {

-:256: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#256: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:153:
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {
+				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);

-:259: WARNING:TABSTOP: Statements should start on a tabstop
#259: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:156:
+			   }

-:275: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#275: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:172:
+	    TP_STRUCT__entry(

-:293: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#293: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:190:
+	    TP_fast_assign(

-:315: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#315: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:212:
+		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,

-:323: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#323: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:220:
+	    TP_STRUCT__entry(

-:337: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#337: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:234:
+	    TP_fast_assign(

-:362: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#362: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:259:
+	    TP_STRUCT__entry(

-:371: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#371: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:268:
+	    TP_fast_assign(

-:392: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#392: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:289:
+	    TP_STRUCT__entry(

-:401: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#401: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:298:
+	    TP_fast_assign(

-:410: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#410: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:307:
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:421: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#421: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:318:
+	    TP_STRUCT__entry(

-:430: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#430: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:327:
+	    TP_fast_assign(

-:439: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#439: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:336:
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:450: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#450: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:347:
+	    TP_STRUCT__entry(

-:457: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#457: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:354:
+	    TP_fast_assign(

-:475: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#475: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:372:
+	    TP_STRUCT__entry(

-:481: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#481: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:378:
+	    TP_fast_assign(

-:495: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#495: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:392:
+	    TP_STRUCT__entry(

-:501: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#501: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:398:
+	    TP_fast_assign(

-:515: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#515: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:412:
+	    TP_STRUCT__entry(

-:521: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#521: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:418:
+	    TP_fast_assign(

-:537: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#537: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:434:
+	    TP_STRUCT__entry(

-:543: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#543: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:440:
+	    TP_fast_assign(

-:558: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#558: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:455:
+	    TP_STRUCT__entry(

-:564: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#564: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:461:
+	    TP_fast_assign(

-:579: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#579: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:476:
+	    TP_STRUCT__entry(

-:587: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#587: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:484:
+	    TP_fast_assign(

-:604: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#604: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:501:
+	    TP_STRUCT__entry(

-:612: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#612: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:509:
+	    TP_fast_assign(

-:629: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#629: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:526:
+	    TP_STRUCT__entry(

-:635: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#635: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:532:
+	    TP_fast_assign(

-:652: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#652: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:549:
+	    TP_STRUCT__entry(

-:657: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#657: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:554:
+	    TP_fast_assign(

-:670: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#670: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:567:
+	    TP_STRUCT__entry(

-:675: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#675: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:572:
+	    TP_fast_assign(

-:689: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#689: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:586:
+#define TRACE_INCLUDE_PATH ./display
                             ^

total: 0 errors, 22 warnings, 45 checks, 1309 lines checked


