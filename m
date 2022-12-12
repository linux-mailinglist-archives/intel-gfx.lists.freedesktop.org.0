Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F8E64A3AE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD30710E18B;
	Mon, 12 Dec 2022 14:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0943810E18B;
 Mon, 12 Dec 2022 14:46:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01CBCA8830;
 Mon, 12 Dec 2022 14:46:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 12 Dec 2022 14:46:27 -0000
Message-ID: <167085638796.12116.2282276550430844583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1670855299.git.jani.nikula@intel.com>
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_extract_vblank/scanline_code_to_a_separate_file?=
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

Series: drm/i915: extract vblank/scanline code to a separate file
URL   : https://patchwork.freedesktop.org/series/111854/
State : warning

== Summary ==

Error: dim checkpatch failed
1ab2fa26774a drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
new file mode 100644

-:95: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:38:
+ * -vbs-----> <---vbs+1---> <---vbs+2---> <-----0-----> <-----1-----> <-----2--- (scanline counter gen2)

-:96: WARNING:LONG_LINE_COMMENT: line length of 105 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:39:
+ * -vbs-2---> <---vbs-1---> <---vbs-----> <---vbs+1---> <---vbs+2---> <-----0--- (scanline counter gen3+)

-:97: WARNING:LONG_LINE_COMMENT: line length of 109 exceeds 100 columns
#97: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:40:
+ * -vbs-2---> <---vbs-2---> <---vbs-1---> <---vbs-----> <---vbs+1---> <---vbs+2- (scanline counter hsw+ hdmi)

-:396: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#396: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:339:
+		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

-:460: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#460: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:403:
+	return drm_crtc_vblank_helper_get_vblank_timestamp_internal(

total: 0 errors, 5 warnings, 1 checks, 893 lines checked
f01494675c93 drm/i915/display: move more scanline functions to intel_vblank.[ch]
-:86: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#86: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:428:
+	msleep(5);

total: 0 errors, 1 warnings, 0 checks, 93 lines checked
95e14852bdca drm/i915/display: use common function for checking scanline is moving
52a99694085f drm/i915/hdmi: abstract scanline range wait into intel_vblank.[ch]
77b221471a62 drm/i915/vblank: use intel_de_read()
861132b4e91f drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank counter
ad911901f7a8 drm/i915/reg: split out vblank/scanline regs
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 137 lines checked


