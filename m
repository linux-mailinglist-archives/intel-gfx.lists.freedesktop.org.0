Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFD08987CE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 14:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB9111B59E;
	Thu,  4 Apr 2024 12:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49CE011B59A;
 Thu,  4 Apr 2024 12:33:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?DMC_wakelock_implementation_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 04 Apr 2024 12:33:55 -0000
Message-ID: <171223403529.1209302.4142558839850688164@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240404114147.236316-1-luciano.coelho@intel.com>
In-Reply-To: <20240404114147.236316-1-luciano.coelho@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: DMC wakelock implementation (rev4)
URL   : https://patchwork.freedesktop.org/series/131124/
State : warning

== Summary ==

Error: dim checkpatch failed
a1ccddb4cdb9 drm/i915/display: add support for DMC wakelocks
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:225: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#225: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 456 lines checked
da2020a12471 drm/i915/display: don't allow DMC wakelock on older hardware
ead37722284f drm/i915/display: add module parameter to enable DMC wakelock
-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:120:
+intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
+	"Enable DMC wakelock "

total: 0 errors, 0 warnings, 1 checks, 36 lines checked
cf683bc3ca7f drm/i915/display: tie DMC wakelock to DC5/6 state transitions


