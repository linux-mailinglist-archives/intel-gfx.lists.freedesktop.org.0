Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CCF4A513E
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF5910E1CD;
	Mon, 31 Jan 2022 21:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BADD10E1CD;
 Mon, 31 Jan 2022 21:16:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74F44A7DFC;
 Mon, 31 Jan 2022 21:16:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 31 Jan 2022 21:16:52 -0000
Message-ID: <164366381244.8648.1876322575177802410@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_some_fbcon_patches=2C_mostly_locking?=
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

Series: some fbcon patches, mostly locking
URL   : https://patchwork.freedesktop.org/series/99549/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8895b11855ce MAINTAINERS: Add entry for fbdev core
-:64: WARNING:MAINTAINERS_STYLE: Misordered MAINTAINERS entry - list 'S:' before 'F:'
#64: FILE: MAINTAINERS:7582:
+F:	drivers/video/fbdev/core/
+S:	Odd Fixes

-:69: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 12 lines checked
9029711bda24 fbcon: Resurrect fbcon accelerated scrolling code
-:24: WARNING:REPEATED_WORD: Possible repeated word: 'warnings'
#24: 
And finally to shut up unused parameter warnings warnings the macros

-:27: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#27: 
References: https://lore.kernel.org/dri-devel/feea8303-2b83-fc36-972c-4fc8ad723bde@gmx.de/

-:41: WARNING:BAD_SIGN_OFF: Duplicate signature
#41: 
Cc: Claudio Suarez <cssk@net-c.es>

-:209: WARNING:INLINE: plain inline is preferred over __inline__
#209: FILE: drivers/video/fbdev/core/fbcon.c:1437:
+static __inline__ void ywrap_up(struct vc_data *vc, int count)

-:228: WARNING:INLINE: plain inline is preferred over __inline__
#228: FILE: drivers/video/fbdev/core/fbcon.c:1456:
+static __inline__ void ywrap_down(struct vc_data *vc, int count)

-:247: WARNING:INLINE: plain inline is preferred over __inline__
#247: FILE: drivers/video/fbdev/core/fbcon.c:1475:
+static __inline__ void ypan_up(struct vc_data *vc, int count)

-:271: WARNING:INLINE: plain inline is preferred over __inline__
#271: FILE: drivers/video/fbdev/core/fbcon.c:1499:
+static __inline__ void ypan_up_redraw(struct vc_data *vc, int t, int count)

-:295: WARNING:INLINE: plain inline is preferred over __inline__
#295: FILE: drivers/video/fbdev/core/fbcon.c:1523:
+static __inline__ void ypan_down(struct vc_data *vc, int count)

-:319: WARNING:INLINE: plain inline is preferred over __inline__
#319: FILE: drivers/video/fbdev/core/fbcon.c:1547:
+static __inline__ void ypan_down_redraw(struct vc_data *vc, int t, int count)

-:409: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#409: FILE: drivers/video/fbdev/core/fbcon.c:1637:
+static void fbcon_redraw_blit(struct vc_data *vc, struct fb_info *info,
+			struct fbcon_display *p, int line, int count, int ycount)

-:429: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#429: FILE: drivers/video/fbdev/core/fbcon.c:1657:
+						   line, x, 1, s-start);
 						                ^

-:445: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#445: FILE: drivers/video/fbdev/core/fbcon.c:1673:
+				   s-start);
 				    ^

-:449: CHECK:BRACES: Unbalanced braces around else statement
#449: FILE: drivers/video/fbdev/core/fbcon.c:1677:
+		else {

-:490: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#490: FILE: drivers/video/fbdev/core/fbcon.c:1782:
+			fbcon_redraw_blit(vc, info, p, t, b - t - count,
+				     count);

-:492: CHECK:SPACING: No space is necessary after a cast
#492: FILE: drivers/video/fbdev/core/fbcon.c:1784:
+			scr_memsetw((unsigned short *) (vc->vc_origin +

-:500: CHECK:BRACES: braces {} should be used on all arms of this statement
#500: FILE: drivers/video/fbdev/core/fbcon.c:1792:
+			if (b - t - count > 3 * vc->vc_rows >> 2) {
[...]
+			} else if (info->flags & FBINFO_READS_FAST)
[...]
+			else
[...]

-:518: CHECK:BRACES: braces {} should be used on all arms of this statement
#518: FILE: drivers/video/fbdev/core/fbcon.c:1810:
+			if ((p->yscroll + count <=
[...]
+			} else
[...]

-:520: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#520: FILE: drivers/video/fbdev/core/fbcon.c:1812:
+			     2 * (p->vrows - vc->vc_rows))
+			    && ((!scroll_partial && (b - t == vc->vc_rows))

-:521: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#521: FILE: drivers/video/fbdev/core/fbcon.c:1813:
+			    && ((!scroll_partial && (b - t == vc->vc_rows))
+				|| (scroll_partial

-:522: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#522: FILE: drivers/video/fbdev/core/fbcon.c:1814:
+				|| (scroll_partial
+				    && (b - t - count >

-:530: CHECK:BRACES: Unbalanced braces around else statement
#530: FILE: drivers/video/fbdev/core/fbcon.c:1822:
+			} else

-:536: CHECK:BRACES: braces {} should be used on all arms of this statement
#536: FILE: drivers/video/fbdev/core/fbcon.c:1828:
+			if ((p->yscroll + count <=
[...]
+			} else if (info->flags & FBINFO_READS_FAST)
[...]
+			else
[...]

-:538: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#538: FILE: drivers/video/fbdev/core/fbcon.c:1830:
+			     2 * (p->vrows - vc->vc_rows))
+			    && ((!scroll_partial && (b - t == vc->vc_rows))

-:539: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#539: FILE: drivers/video/fbdev/core/fbcon.c:1831:
+			    && ((!scroll_partial && (b - t == vc->vc_rows))
+				|| (scroll_partial

-:540: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#540: FILE: drivers/video/fbdev/core/fbcon.c:1832:
+				|| (scroll_partial
+				    && (b - t - count >

-:559: WARNING:INDENTED_LABEL: labels should not be indented
#559: FILE: drivers/video/fbdev/core/fbcon.c:1851:
+		      redraw_up:

-:563: CHECK:SPACING: No space is necessary after a cast
#563: FILE: drivers/video/fbdev/core/fbcon.c:1855:
+			scr_memsetw((unsigned short *) (vc->vc_origin +

-:590: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#590: FILE: drivers/video/fbdev/core/fbcon.c:1884:
+			fbcon_redraw_blit(vc, info, p, b - 1, b - t - count,
+				     -count);

-:592: CHECK:SPACING: No space is necessary after a cast
#592: FILE: drivers/video/fbdev/core/fbcon.c:1886:
+			scr_memsetw((unsigned short *) (vc->vc_origin +

-:600: CHECK:BRACES: braces {} should be used on all arms of this statement
#600: FILE: drivers/video/fbdev/core/fbcon.c:1894:
+			if (b - t - count > 3 * vc->vc_rows >> 2) {
[...]
+			} else if (info->flags & FBINFO_READS_FAST)
[...]
+			else
[...]

-:618: CHECK:BRACES: braces {} should be used on all arms of this statement
#618: FILE: drivers/video/fbdev/core/fbcon.c:1912:
+			if ((count - p->yscroll <= p->vrows - vc->vc_rows)
[...]
+			} else if (info->flags & FBINFO_READS_FAST)
[...]
+			else
[...]

-:619: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#619: FILE: drivers/video/fbdev/core/fbcon.c:1913:
+			if ((count - p->yscroll <= p->vrows - vc->vc_rows)
+			    && ((!scroll_partial && (b - t == vc->vc_rows))

-:620: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#620: FILE: drivers/video/fbdev/core/fbcon.c:1914:
+			    && ((!scroll_partial && (b - t == vc->vc_rows))
+				|| (scroll_partial

-:621: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#621: FILE: drivers/video/fbdev/core/fbcon.c:1915:
+				|| (scroll_partial
+				    && (b - t - count >

-:640: CHECK:BRACES: braces {} should be used on all arms of this statement
#640: FILE: drivers/video/fbdev/core/fbcon.c:1934:
+			if ((count - p->yscroll <= p->vrows - vc->vc_rows)
[...]
+			} else
[...]

-:641: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#641: FILE: drivers/video/fbdev/core/fbcon.c:1935:
+			if ((count - p->yscroll <= p->vrows - vc->vc_rows)
+			    && ((!scroll_partial && (b - t == vc->vc_rows))

-:642: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#642: FILE: drivers/video/fbdev/core/fbcon.c:1936:
+			    && ((!scroll_partial && (b - t == vc->vc_rows))
+				|| (scroll_partial

-:643: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#643: FILE: drivers/video/fbdev/core/fbcon.c:1937:
+				|| (scroll_partial
+				    && (b - t - count >

-:651: CHECK:BRACES: Unbalanced braces around else statement
#651: FILE: drivers/video/fbdev/core/fbcon.c:1945:
+			} else

-:657: WARNING:INDENTED_LABEL: labels should not be indented
#657: FILE: drivers/video/fbdev/core/fbcon.c:1951:
+		      redraw_down:

-:661: CHECK:SPACING: No space is necessary after a cast
#661: FILE: drivers/video/fbdev/core/fbcon.c:1955:
+			scr_memsetw((unsigned short *) (vc->vc_origin +

-:673: CHECK:LINE_SPACING: Please don't use multiple blank lines
#673: FILE: drivers/video/fbdev/core/fbcon.c:1967:
 
+

-:708: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#708: FILE: drivers/video/fbdev/core/fbcon.h:32:
+    u_short scrollmode;             /* Scroll Method */$

-:792: CHECK:LINE_SPACING: Please don't use multiple blank lines
#792: FILE: drivers/video/fbdev/core/fbcon_ccw.c:62:
 
+

-:794: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#794: FILE: drivers/video/fbdev/core/fbcon_ccw.c:64:
+static void ccw_bmove(struct vc_data *vc, struct fb_info *info, int sy,
+		     int sx, int dy, int dx, int height, int width)

-:864: CHECK:LINE_SPACING: Please don't use multiple blank lines
#864: FILE: drivers/video/fbdev/core/fbcon_cw.c:47:
 
+

-:937: ERROR:SPACING: space required after that ',' (ctx:VxV)
#937: FILE: drivers/video/fbdev/core/fbcon_rotate.h:15:
+#define GETVYRES(s,i) ({                           \
                   ^

-:937: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#937: FILE: drivers/video/fbdev/core/fbcon_rotate.h:15:
+#define GETVYRES(s,i) ({                           \
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE) ? \
+        (i)->var.yres : (i)->var.yres_virtual; })

-:937: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 's' may be better as '(s)' to avoid precedence issues
#937: FILE: drivers/video/fbdev/core/fbcon_rotate.h:15:
+#define GETVYRES(s,i) ({                           \
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE) ? \
+        (i)->var.yres : (i)->var.yres_virtual; })

-:937: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#937: FILE: drivers/video/fbdev/core/fbcon_rotate.h:15:
+#define GETVYRES(s,i) ({                           \
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE) ? \
+        (i)->var.yres : (i)->var.yres_virtual; })

-:938: ERROR:CODE_INDENT: code indent should use tabs where possible
#938: FILE: drivers/video/fbdev/core/fbcon_rotate.h:16:
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE) ? \$

-:938: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#938: FILE: drivers/video/fbdev/core/fbcon_rotate.h:16:
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE) ? \$

-:939: ERROR:CODE_INDENT: code indent should use tabs where possible
#939: FILE: drivers/video/fbdev/core/fbcon_rotate.h:17:
+        (i)->var.yres : (i)->var.yres_virtual; })$

-:939: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#939: FILE: drivers/video/fbdev/core/fbcon_rotate.h:17:
+        (i)->var.yres : (i)->var.yres_virtual; })$

-:941: ERROR:SPACING: space required after that ',' (ctx:VxV)
#941: FILE: drivers/video/fbdev/core/fbcon_rotate.h:19:
+#define GETVXRES(s,i) ({                           \
                   ^

-:941: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#941: FILE: drivers/video/fbdev/core/fbcon_rotate.h:19:
+#define GETVXRES(s,i) ({                           \
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE || !(i)->fix.xpanstep) ? \
+        (i)->var.xres : (i)->var.xres_virtual; })

-:941: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 's' may be better as '(s)' to avoid precedence issues
#941: FILE: drivers/video/fbdev/core/fbcon_rotate.h:19:
+#define GETVXRES(s,i) ({                           \
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE || !(i)->fix.xpanstep) ? \
+        (i)->var.xres : (i)->var.xres_virtual; })

-:941: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#941: FILE: drivers/video/fbdev/core/fbcon_rotate.h:19:
+#define GETVXRES(s,i) ({                           \
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE || !(i)->fix.xpanstep) ? \
+        (i)->var.xres : (i)->var.xres_virtual; })

-:942: ERROR:CODE_INDENT: code indent should use tabs where possible
#942: FILE: drivers/video/fbdev/core/fbcon_rotate.h:20:
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE || !(i)->fix.xpanstep) ? \$

-:942: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#942: FILE: drivers/video/fbdev/core/fbcon_rotate.h:20:
+        (s == SCROLL_REDRAW || s == SCROLL_MOVE || !(i)->fix.xpanstep) ? \$

-:943: ERROR:CODE_INDENT: code indent should use tabs where possible
#943: FILE: drivers/video/fbdev/core/fbcon_rotate.h:21:
+        (i)->var.xres : (i)->var.xres_virtual; })$

-:943: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#943: FILE: drivers/video/fbdev/core/fbcon_rotate.h:21:
+        (i)->var.xres : (i)->var.xres_virtual; })$

-:956: CHECK:LINE_SPACING: Please don't use multiple blank lines
#956: FILE: drivers/video/fbdev/core/fbcon_rotate.h:34:
+
+

-:968: CHECK:LINE_SPACING: Please don't use multiple blank lines
#968: FILE: drivers/video/fbdev/core/fbcon_ud.c:47:
 
+

-:1085: WARNING:TYPO_SPELLING: 'acclerated' may be misspelled - perhaps 'accelerated'?
#1085: FILE: drivers/video/fbdev/skeletonfb.c:509:
+ *                       non acclerated hardware and packed pixel based.
                              ^^^^^^^^^^

-:1105: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#1105: FILE: drivers/video/fbdev/skeletonfb.c:648:
+^I.fb_fillrect^I= xxxfb_fillrect, ^I/* Needed !!! */$

-:1123: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 6 errors, 19 warnings, 42 checks, 990 lines checked
a3878d341994 fbcon: Restore fbcon scrolling acceleration
-:6: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 39aead8373b3 ("fbcon: Disable accelerated scrolling")'
#6: 
This functionally undoes 39aead8373b3 ("fbcon: Disable accelerated

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
References: https://lore.kernel.org/dri-devel/feea8303-2b83-fc36-972c-4fc8ad723bde@gmx.de/

-:25: WARNING:BAD_SIGN_OFF: Duplicate signature
#25: 
Cc: Claudio Suarez <cssk@net-c.es>

-:109: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 3 warnings, 0 checks, 70 lines checked
4b1ab7c360e5 fbcon: delete a few unneeded forward decl
-:50: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
482b204b2d72 fbcon: Introduce wrapper for console->fb_info lookup
-:332: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 274 lines checked
4c0e3378856f fbcon: delete delayed loading code
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6104c37094e7 ("fbcon: Make fbcon a built-time depency for fbdev")'
#8: 
commit 6104c37094e729f3d4ce65797002112735d49cd1

-:61: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 25 lines checked
6207cb6973bd fbdev/sysfs: Fix locking
-:39: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
ce31c1587b43 fbcon: Use delayed work for cursor
-:281: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 229 lines checked
e9dfbdcf4192 fbcon: Replace FBCON_FLAGS_INIT with a boolean
-:87: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
0483ab4cdecb fb: Delete fb_info->queue
-:24: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
4124d814f49e fbcon: Extract fbcon_open/release helpers
-:120: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#120: FILE: drivers/video/fbdev/core/fbcon.c:757:
+	/*
+	  If oldinfo and newinfo are driving the same hardware,

-:135: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
#135: FILE: drivers/video/fbdev/core/fbcon.c:767:
+			printk(KERN_ERR "con2fb_release_oldinfo: "

-:135: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'con2fb_release_oldinfo', this function's name, in a string
#135: FILE: drivers/video/fbdev/core/fbcon.c:767:
+			printk(KERN_ERR "con2fb_release_oldinfo: "

-:192: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 4 warnings, 0 checks, 164 lines checked
6a6fc4806be7 fbcon: Ditch error handling for con2fb_release_oldinfo
-:100: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
199ad49ede08 fbcon: move more common code into fb_open()
-:47: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops)...) over kzalloc(sizeof(struct fbcon_ops)...)
#47: FILE: drivers/video/fbdev/core/fbcon.c:704:
+	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);

-:148: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 121 lines checked
93f1d498d62f fbcon: use lock_fb_info in fbcon_open/release
-:93: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
d73c168f66f2 fbcon: Consistently protect deferred_takeover with console_lock()
-:42: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
4dbf1caeaf85 fbcon: Move console_lock for register/unlink/unregister
-:86: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#86: FILE: drivers/video/fbdev/core/fbcon.c:2923:
+MODULE_PARM_DESC(lockless_register_fb,
+	"Lockless framebuffer registration for debugging [default=off]");

-:180: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 135 lines checked
e4f1a224b67c fbcon: Move more code into fbcon_release
-:80: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
b50c29f9b1d2 fbcon: untangle fbcon_exit
-:128: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
8994bd236b87 fbcon: Maintain a private array of fb_info
-:48: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#48: FILE: drivers/video/fbdev/core/fbcon.c:109:
+#define fbcon_for_each_registered_fb(i)		\
+	for (i = 0; WARN_CONSOLE_UNLOCKED(), i < FB_MAX; i++)		\
+		if (!fbcon_registered_fb[i]) {} else

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#48: FILE: drivers/video/fbdev/core/fbcon.c:109:
+#define fbcon_for_each_registered_fb(i)		\
+	for (i = 0; WARN_CONSOLE_UNLOCKED(), i < FB_MAX; i++)		\
+		if (!fbcon_registered_fb[i]) {} else

-:50: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#50: FILE: drivers/video/fbdev/core/fbcon.c:111:
+		if (!fbcon_registered_fb[i]) {} else

-:50: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#50: FILE: drivers/video/fbdev/core/fbcon.c:111:
+		if (!fbcon_registered_fb[i]) {} else
[...]
+		if (!fbcon_registered_fb[i]) {} else
[...]

-:210: WARNING:BRACES: braces {} are not necessary for single statement blocks
#210: FILE: drivers/video/fbdev/core/fbcon.c:3084:
+	if (!fbcon_registered_fb[con2fb.framebuffer]) {
 		return -EINVAL;
 	}

-:219: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#219: FILE: drivers/video/fbdev/core/fbcon.c:3151:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:232: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#232: FILE: drivers/video/fbdev/core/fbcon.c:3173:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:245: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#245: FILE: drivers/video/fbdev/core/fbcon.c:3193:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:258: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#258: FILE: drivers/video/fbdev/core/fbcon.c:3213:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:271: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#271: FILE: drivers/video/fbdev/core/fbcon.c:3239:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:289: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 2 errors, 3 warnings, 6 checks, 237 lines checked
b19815011a55 Revert "fbdev: Prevent probing generic drivers if a FB is already registered"
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 27599aacbaef ("fbdev: Hot-unplug firmware fb devices on forced removal")'
#11: 
commit 27599aacbaefcbf2af7b06b0029459bbf682000d

-:24: WARNING:BAD_SIGN_OFF: Duplicate signature
#24: 
Cc: Zack Rusin <zackr@vmware.com>

-:74: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 34 lines checked
142774bdcb86 fbdev: Make registered_fb[] private to fbmem.c
-:43: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#43: FILE: drivers/video/fbdev/core/fbmem.c:57:
+#define for_each_registered_fb(i)		\
+	for (i = 0; i < FB_MAX; i++)		\
+		if (!registered_fb[i]) {} else

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#43: FILE: drivers/video/fbdev/core/fbmem.c:57:
+#define for_each_registered_fb(i)		\
+	for (i = 0; i < FB_MAX; i++)		\
+		if (!registered_fb[i]) {} else

-:45: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#45: FILE: drivers/video/fbdev/core/fbmem.c:59:
+		if (!registered_fb[i]) {} else

-:45: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#45: FILE: drivers/video/fbdev/core/fbmem.c:59:
+		if (!registered_fb[i]) {} else
[...]
+		if (!registered_fb[i]) {} else
[...]

-:72: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 2 errors, 2 warnings, 1 checks, 35 lines checked


