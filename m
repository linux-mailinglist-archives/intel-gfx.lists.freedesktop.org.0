Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CABB5A1A563
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 15:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F6A10E817;
	Thu, 23 Jan 2025 14:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B665610E816;
 Thu, 23 Jan 2025 14:01:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Disable_?=
 =?utf-8?q?RPG_during_live_selftest?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2025 14:01:38 -0000
Message-ID: <173764089874.3541523.5220615176469415349@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250123122941.925789-1-badal.nilawar@intel.com>
In-Reply-To: <20250123122941.925789-1-badal.nilawar@intel.com>
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

Series: drm/i915: Disable RPG during live selftest
URL   : https://patchwork.freedesktop.org/series/143886/
State : warning

== Summary ==

Error: dim checkpatch failed
5f796f393df5 drm/i915: Disable RPG during live selftest
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
The Forcewake timeout issue has been observed on Gen 12.0 and above. To address this,

-:79: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#79: FILE: drivers/gpu/drm/i915/selftests/i915_selftest.c:272:
+			intel_uncore_write_fw(&i915->uncore, GEN9_PG_ENABLE,
+						pg_enable & ~GEN9_RENDER_PG_ENABLE);

total: 0 errors, 1 warnings, 1 checks, 56 lines checked


