Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF86A159DA
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 00:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CF810E26F;
	Fri, 17 Jan 2025 23:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E36F10E26F;
 Fri, 17 Jan 2025 23:15:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=5Fwl=3A?=
 =?utf-8?q?_Introduce_debugfs_interface?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2025 23:15:15 -0000
Message-ID: <173715571564.909766.12085341742165275720@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
In-Reply-To: <20250117220747.87927-1-gustavo.sousa@intel.com>
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

Series: drm/i915/dmc_wl: Introduce debugfs interface
URL   : https://patchwork.freedesktop.org/series/143696/
State : warning

== Summary ==

Error: dim checkpatch failed
6c801299b19b drm/i915/dmc_wl: Pass offset instead of reg to range table iterator
86fa0b28b846 drm/i915/dmc_wl: Add debugfs for untracked offsets
-:106: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#106: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 340 lines checked
5d537d966369 drm/i915/dmc_wl: Add extra_ranges debugfs
9ffaea1e9846 drm/i915/dmc_wl: Enable the debugfs only with enable_dmc_wl_debugfs=1
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:137:
+intel_display_param_named_unsafe(enable_dmc_wl_debugfs, bool, 0400,
+	"Enable DMC wakelock debugfs"

total: 0 errors, 0 warnings, 1 checks, 60 lines checked


