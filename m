Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD6E85BE59
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 15:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B67F10E436;
	Tue, 20 Feb 2024 14:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCED710E436;
 Tue, 20 Feb 2024 14:12:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/tv=3A_Fix_T?=
 =?utf-8?q?V_mode?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maxime Ripard" <mripard@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Feb 2024 14:12:54 -0000
Message-ID: <170843837490.125001.7586778604567392189@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220131251.453060-1-mripard@kernel.org>
In-Reply-To: <20240220131251.453060-1-mripard@kernel.org>
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

Series: drm/i915/tv: Fix TV mode
URL   : https://patchwork.freedesktop.org/series/130123/
State : warning

== Summary ==

Error: dim checkpatch failed
93cae8b61e41 drm/i915/tv: Fix TV mode
-:25: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#25: 
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>

-:73: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:3111:
+	intel_sdvo_connector->base.base.state->tv.legacy_mode = intel_sdvo_connector->tv_format_supported[0];

total: 0 errors, 2 warnings, 0 checks, 80 lines checked


