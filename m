Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47713851D62
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 19:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E5D10E814;
	Mon, 12 Feb 2024 18:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73A2210E80E;
 Mon, 12 Feb 2024 18:53:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BCI=2C1/2=5D_drm/i915=3A_Prevent_HW_access_during_init_from_SD?=
 =?utf-8?q?VO_TV_get=5Fmodes_hook?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Feb 2024 18:53:50 -0000
Message-ID: <170776403047.1183349.9181174215347535167@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240212175237.2625812-1-imre.deak@intel.com>
In-Reply-To: <20240212175237.2625812-1-imre.deak@intel.com>
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

Series: series starting with [CI,1/2] drm/i915: Prevent HW access during init from SDVO TV get_modes hook
URL   : https://patchwork.freedesktop.org/series/129788/
State : warning

== Summary ==

Error: dim checkpatch failed
644d30a4f7fd drm/i915: Prevent HW access during init from SDVO TV get_modes hook
-:17: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#17: 
v2: Clarify the commit message wrt. which modes get_modes() returns. (Jouni)

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
3d690e182f59 drm/i915: Prevent HW access during init from connector get_modes hooks
-:18: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#18: 
commit bab87ef4db9a ("drm/i915: Disable hotplug detection handlers during driver init/shutdown")

total: 0 errors, 1 warnings, 0 checks, 60 lines checked


