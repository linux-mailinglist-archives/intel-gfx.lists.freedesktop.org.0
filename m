Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B297BDE7
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115AC10E5AE;
	Wed, 18 Sep 2024 14:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01D210E5AE;
 Wed, 18 Sep 2024 14:19:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_wakeref_?=
 =?utf-8?q?fixes_and_improvements?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2024 14:19:52 -0000
Message-ID: <172666919278.1026556.11488746536338493864@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1726658138.git.jani.nikula@intel.com>
In-Reply-To: <cover.1726658138.git.jani.nikula@intel.com>
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

Series: drm/i915: wakeref fixes and improvements
URL   : https://patchwork.freedesktop.org/series/138812/
State : warning

== Summary ==

Error: dim checkpatch failed
b390db2fbd71 drm/i915/gem: fix bitwise and logical AND mixup
3dd00b778f44 drm/i915: use INTEL_WAKEREF_DEF instead of magic -1 for intel_wakeref_t
9e148fd40784 drm/i915/gt: add a macro for mock gt wakeref special value and use it
10e4a2b55518 drm/i915/audio: be explicit about intel_wakeref_t conversions
da4d40b8e01b drm/i915: switch intel_wakeref_t underlying type to struct ref_tracker *
-:46: WARNING:NEW_TYPEDEFS: do not add new typedefs
#46: FILE: drivers/gpu/drm/i915/intel_wakeref.h:24:
+typedef struct ref_tracker *intel_wakeref_t;

-:93: WARNING:NEW_TYPEDEFS: do not add new typedefs
#93: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h:8:
+typedef struct ref_tracker *intel_wakeref_t;

total: 0 errors, 2 warnings, 0 checks, 56 lines checked


