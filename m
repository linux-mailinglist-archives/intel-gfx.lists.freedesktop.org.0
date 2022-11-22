Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEF36340A4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 16:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E3A10E40F;
	Tue, 22 Nov 2022 15:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA76710E40F;
 Tue, 22 Nov 2022 15:55:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3BC3A0169;
 Tue, 22 Nov 2022 15:55:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 15:55:35 -0000
Message-ID: <166913253589.2186.13471749456846927829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dvo=3A_Further_DVO_fixes/cleanups?=
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

Series: drm/i915/dvo: Further DVO fixes/cleanups
URL   : https://patchwork.freedesktop.org/series/111191/
State : warning

== Summary ==

Error: dim checkpatch failed
dcb99cb1b0fc drm/i915/dvo/ch7xxx: Fix suspend/resume
-:31: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#31: FILE: drivers/gpu/drm/i915/display/dvo_ch7xxx.c:55:
+#define CH7xxx_IDF_IBS		(1<<7)
                       		  ^

-:32: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/display/dvo_ch7xxx.c:56:
+#define CH7xxx_IDF_DES		(1<<6)
                       		  ^

total: 0 errors, 0 warnings, 2 checks, 47 lines checked
baba85271cc3 drm/i915/dvo/sil164: Nuke pointless return statements
4ea2f024253a drm/i915/dvo/sil164: Fix suspend/resume
-:29: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/display/dvo_sil164.c:61:
+#define SIL164_C_SCNT (1<<7)
                         ^

-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: drivers/gpu/drm/i915/display/dvo_sil164.c:62:
+#define SIL164_C_PLLF_MASK (0xf<<1)
                                ^

-:31: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#31: FILE: drivers/gpu/drm/i915/display/dvo_sil164.c:63:
+#define SIL164_C_PLLF_REC (4<<1)
                             ^

-:32: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/display/dvo_sil164.c:64:
+#define SIL164_C_PFEN (1<<0)
                         ^

total: 0 errors, 0 warnings, 4 checks, 23 lines checked
bf587d1b8efc drm/i915/dvo: Parametrize DVO/DVO_SRCDIM registers
cfd4b9ef193f drm/i915/dvo: Define a few more DVO register bits
3737127e81b5 drm/i915/dvo: Rename the "active data order" bits
045559c13484 drm/i915/dvo: Use REG_BIT() & co. for DVO registers
dd974869a2b6 drm/i915/dvo: Use intel_de_rmw() for DVO enable/disable
f2a61e0e895a drm/i915/dvo: Extract intel_dvo_regs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 111 lines checked
b464504eb593 drm/i915/dvo: Log about what was detected on which DVO port


