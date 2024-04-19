Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC38AACAA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 12:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE43110F251;
	Fri, 19 Apr 2024 10:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E4310F251;
 Fri, 19 Apr 2024 10:19:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=3A_firm?=
 =?utf-8?q?ware_path_handling_changes_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Apr 2024 10:19:14 -0000
Message-ID: <171352195465.1519312.9763036398085160893@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1713519628.git.jani.nikula@intel.com>
In-Reply-To: <cover.1713519628.git.jani.nikula@intel.com>
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

Series: drm/i915/dmc: firmware path handling changes (rev2)
URL   : https://patchwork.freedesktop.org/series/132609/
State : warning

== Summary ==

Error: dim checkpatch failed
3d1c3762fcfb drm/i915/dmc: handle request_firmware() errors separately
73f10c70a834 drm/i915/dmc: improve firmware parse failure propagation
d8a2394657a8 drm/i915/dmc: split out per-platform firmware path selection
f722c67cc401 drm/i915/dmc: change how to disable DMC firmware using module param
7186dc6862f7 drm/i915/display: move dmc_firmware_path to display params
-:25: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#25: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:31:
+intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
+	"DMC firmware path to use instead of the default one. "

total: 0 errors, 0 warnings, 1 checks, 51 lines checked


