Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B44CF97AAD2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 06:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9C210E1D6;
	Tue, 17 Sep 2024 04:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A344510E1D6;
 Tue, 17 Sep 2024 04:53:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_DRM_device?=
 =?utf-8?q?_wedged_event_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2024 04:53:08 -0000
Message-ID: <172654878866.1020355.17534352958720558802@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240917040235.197019-1-raag.jadav@intel.com>
In-Reply-To: <20240917040235.197019-1-raag.jadav@intel.com>
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

Series: Introduce DRM device wedged event (rev3)
URL   : https://patchwork.freedesktop.org/series/138069/
State : warning

== Summary ==

Error: dim checkpatch failed
bfac34ee637f drm: Introduce device wedged event
-:14: WARNING:TYPO_SPELLING: 'upto' may be misspelled - perhaps 'up to'?
#14: 
and hence the vendor agnostic nature of the event. It is upto the drivers
                                                         ^^^^

-:66: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#66: FILE: drivers/gpu/drm/drm_drv.c:521:
+	char *envp[] = { event_string, NULL };

total: 0 errors, 2 warnings, 0 checks, 86 lines checked
4f99ce118a7b drm: Expose wedge recovery methods
-:26: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#26: FILE: drivers/gpu/drm/drm_sysfs.c:39:
+extern const char *const wedge_recovery_opts[];

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
c7419fc3e797 drm/xe: Use device wedged event
-:19: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#19: 
KERNEL[265.802982] change   /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0 (drm)

total: 0 errors, 1 warnings, 0 checks, 53 lines checked
39703e96c624 drm/i915: Use device wedged event


