Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780A79CD6A2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 06:46:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2406210E05A;
	Fri, 15 Nov 2024 05:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20FB810E05A;
 Fri, 15 Nov 2024 05:46:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_DRM_device?=
 =?utf-8?q?_wedged_event_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2024 05:46:33 -0000
Message-ID: <173164959312.90813.15189305095661788819@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241115050733.806934-1-raag.jadav@intel.com>
In-Reply-To: <20241115050733.806934-1-raag.jadav@intel.com>
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

Series: Introduce DRM device wedged event (rev7)
URL   : https://patchwork.freedesktop.org/series/138069/
State : warning

== Summary ==

Error: dim checkpatch failed
06ae6f60e8d0 drm: Introduce device wedged event
-:177: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#177: FILE: drivers/gpu/drm/drm_drv.c:539:
+	char *envp[] = { event_string, NULL };

total: 0 errors, 1 warnings, 0 checks, 102 lines checked
11b8a665faa0 drm/doc: Document device wedged event
1a472f3ac74e drm/xe: Use device wedged event
-:20: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#20: 
KERNEL[265.802982] change   /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0 (drm)

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
3a89da3a5080 drm/i915: Use device wedged event


