Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AA1A26CDA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 08:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6C310E29C;
	Tue,  4 Feb 2025 07:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1E710E29C;
 Tue,  4 Feb 2025 07:53:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_DRM_device?=
 =?utf-8?q?_wedged_event_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Raag Jadav" <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Feb 2025 07:53:12 -0000
Message-ID: <173865559263.748045.1678215630206407161@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250204070528.1919158-1-raag.jadav@intel.com>
In-Reply-To: <20250204070528.1919158-1-raag.jadav@intel.com>
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

Series: Introduce DRM device wedged event (rev10)
URL   : https://patchwork.freedesktop.org/series/138069/
State : warning

== Summary ==

Error: dim checkpatch failed
9e92dc048adb drm: Introduce device wedged event
-:198: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#198: FILE: drivers/gpu/drm/drm_drv.c:543:
+	char *envp[] = { event_string, NULL };

total: 0 errors, 1 warnings, 0 checks, 107 lines checked
13908eadb66e drm/doc: Document device wedged event
c89d21c38fb5 drm/xe: Use device wedged event
-:20: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#20: 
KERNEL[265.802982] change   /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0 (drm)

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
3548c4964b04 drm/i915: Use device wedged event
c0a600de029d drm/amdgpu: Use device wedged event


