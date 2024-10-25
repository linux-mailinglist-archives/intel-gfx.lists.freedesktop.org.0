Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C36A99AFF8B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 12:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6706410EA66;
	Fri, 25 Oct 2024 10:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8D410EA66;
 Fri, 25 Oct 2024 10:08:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_DRM_device?=
 =?utf-8?q?_wedged_event_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2024 10:08:04 -0000
Message-ID: <172985088489.1331322.8934547282140936195@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241025084817.144621-1-raag.jadav@intel.com>
In-Reply-To: <20241025084817.144621-1-raag.jadav@intel.com>
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

Series: Introduce DRM device wedged event (rev6)
URL   : https://patchwork.freedesktop.org/series/138069/
State : warning

== Summary ==

Error: dim checkpatch failed
da83e6333b1b drm: Introduce device wedged event
-:128: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#128: FILE: drivers/gpu/drm/drm_drv.c:84:
+};
+static_assert(ARRAY_SIZE(drm_wedge_recovery_opts) == ffs(DRM_WEDGE_RECOVERY_BUS_RESET));

-:156: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#156: FILE: drivers/gpu/drm/drm_drv.c:532:
+	char *envp[] = { event_string, NULL };

total: 0 errors, 1 warnings, 1 checks, 95 lines checked
0b1ea2f4c526 drm/doc: Document device wedged event
bbdad8e4eafb drm/xe: Use device wedged event
-:20: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#20: 
KERNEL[265.802982] change   /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0 (drm)

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
5201bcf26204 drm/i915: Use device wedged event


