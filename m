Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A3B824945
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 20:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2AD10E50A;
	Thu,  4 Jan 2024 19:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325B010E50A;
 Thu,  4 Jan 2024 19:53:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Bv3=2C1/2=5D_drm/i915=3A_Disable_DSB_in_Xe_KMD?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 04 Jan 2024 19:53:04 -0000
Message-ID: <170439798420.20654.10711306786158145655@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104160557.48496-1-jose.souza@intel.com>
In-Reply-To: <20240104160557.48496-1-jose.souza@intel.com>
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

Series: series starting with [v3,1/2] drm/i915: Disable DSB in Xe KMD
URL   : https://patchwork.freedesktop.org/series/128212/
State : warning

== Summary ==

Error: dim checkpatch failed
37112d90d4cb drm/i915: Disable DSB in Xe KMD
-:38: WARNING:IS_ENABLED_CONFIG: IS_ENABLED(I915) is normally used as IS_ENABLED(CONFIG_I915)
#38: FILE: drivers/gpu/drm/i915/display/intel_dsb.c:457:
+	if (!IS_ENABLED(I915))

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
dd0c3552f423 drm/xe: Fix definition of intel_wakeref_t
-:19: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#19: 
                 from ./drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11,

-:64: WARNING:NEW_TYPEDEFS: do not add new typedefs
#64: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h:8:
+typedef unsigned long intel_wakeref_t;

total: 0 errors, 2 warnings, 0 checks, 5 lines checked


