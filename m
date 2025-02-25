Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32551A4365F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 08:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7743D10E58E;
	Tue, 25 Feb 2025 07:48:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QSHuYjFf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C28C10E182;
 Tue, 25 Feb 2025 07:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740469711; x=1772005711;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=Vl8GcaSocvM7Af1UNFMpl7Uo8LqtcRl34GJUlYcCKCw=;
 b=QSHuYjFfha5FHeslABlXG5y4mg7iNfwzUkuTKrlEZ0hbMIBi2wDZcaM+
 OmdYyDs8SFsv1+T39pz2N3NazCYIJxOU631YBNYyBekj1Zy6XYSdoNX4h
 AUJ++JPmZEc6IFE6LMKUPtyWJN+gEFJgKECy1IGdK7lbAeH9nYsYBY9n8
 fe5FQb6lw0XBrtzauPSelE3Qd7S9Wxh7yzO6ac9k6yi9wfQcBd6IrR+85
 sFU29AKfcXbHcJUmyuBrdAMAmMeEhfrqGnj0n4i4w8A8e3j3B7RZbb7qd
 +dOsJPgk0vNNPllbpf7z3sQnTU41XbBuii1x05UiKIgWYMH3DL0D7bD9M Q==;
X-CSE-ConnectionGUID: OslYao/OSzSy9sd9MSBEdg==
X-CSE-MsgGUID: 0XgsCPXlTX2wW0+wt+D1OQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="63726913"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="63726913"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 23:48:30 -0800
X-CSE-ConnectionGUID: bAYbtkC6TmqriM52oiRP7Q==
X-CSE-MsgGUID: EG+4NsvpR5iL4Xk+GQL+tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116330844"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa007.fm.intel.com with ESMTP; 24 Feb 2025 23:48:27 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v7 0/3] Expose modifiers/formats supported by async flips
Date: Tue, 25 Feb 2025 13:03:50 +0530
Message-Id: <20250225-asyn-v7-0-20b81122f4ce@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF5yvWcC/02OwQ6DIBAFf8VwLgRQxPbU/2g8IGIhqdAsaGqM/
 17UNOlxNvsms6JowJmIbsWKwMwuuuAzyEuBtFX+abDrMyNOuaCMcqzi4nE3yFqWNF+0Rvn1DWZ
 wn0PzaDMPEEacLBj1G1eMsYZKUTJBqrqm9IoZVjB5AmScINnl7nwyL6LDuButiynAcnTNYveeC
 Zw1Z8IsMMVSaaF0pbq+Un/7dtu2L/1UMrraAAAA
X-Change-ID: 20250102-asyn-bf76730501cc
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com
Cc: Arun R Murthy <arun.r.murthy@intel.com>, 
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>, 
 Naveen Kumar <naveen1.kumar@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: b4 0.15-dev
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All of the formats/modifiers supported by the plane during synchronous
flips are nor supported by asynchronous flips. The formats/modifiers
exposed to user by IN_FORMATS exposes all formats/modifiers supported by
plane and this list varies for async flips. If the async flip supported
formats/modifiers are exposed to the user, user based on this list can
take decision to proceed or not and avoid flip failures during async
flips.
Discussion around this can be located @
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/29618#note_2487123
Mutter implementation for IN_FORMARTS_ASYNC under review @
https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/4063
Xorg/modesetting patch 
https://gitlab.freedesktop.org/xorg/xserver/-/merge_requests/1816

TODO: Upon merge of the patch related to async flip
https://patchwork.freedesktop.org/patch/626849/?series=139807&rev=6
the patch 5 in this series will have to make use of the new function
pointer can_async_flip().

v3: Add new plane->funcs format_mod_supported_async (Ville)

Arun R Murthy (3):
  drm/plane: Add new plane property IN_FORMATS_ASYNC
  drm/plane: Expose function to create format/modifier blob
  drm/i915/display: Populate list of async supported formats/modifiers

 drivers/gpu/drm/drm_mode_config.c             |  7 +++
 drivers/gpu/drm/drm_plane.c                   | 50 ++++++++++++------
 .../drm/i915/display/skl_universal_plane.c    | 51 +++++++++++++++++++
 include/drm/drm_mode_config.h                 |  6 +++
 include/drm/drm_plane.h                       |  4 ++
 5 files changed, 103 insertions(+), 15 deletions(-)

--
2.25.1

---
Arun R Murthy (5):
      drm/plane: Add new plane property IN_FORMATS_ASYNC
      drm/plane: Expose function to create format/modifier blob
      drm/plane: Function to check async supported modifier/format
      drm/i915/display: Populate list of async supported formats/modifiers
      drm/i915/display: Add function for format_mod_supported_async

 drivers/gpu/drm/drm_mode_config.c                  |   7 ++
 drivers/gpu/drm/drm_plane.c                        |  72 +++++++++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 113 ++++++++++++++++++---
 include/drm/drm_mode_config.h                      |   6 ++
 include/drm/drm_plane.h                            |  24 +++++
 5 files changed, 188 insertions(+), 34 deletions(-)
---
base-commit: 08bd590935a5258ffd79355c59adffd72fb2c642
change-id: 20250102-asyn-bf76730501cc

Best regards,
--
Arun R Murthy <arun.r.murthy@intel.com>

---
Changes in v6:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v5: https://lore.kernel.org/r/20250218-asyn-v5-0-7ac5ac4abd4a@intel.com

---
Arun R Murthy (3):
      drm/plane: Add new plane property IN_FORMATS_ASYNC
      drm/plane: modify create_in_formats to accommodate async
      drm/i915/display: Add i915 hook for format_mod_supported_async

 drivers/gpu/drm/drm_mode_config.c                  |  7 +++
 drivers/gpu/drm/drm_plane.c                        | 53 +++++++++++++++-----
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 56 ++++++++++++++++------
 include/drm/drm_mode_config.h                      |  6 +++
 include/drm/drm_plane.h                            | 17 +++++++
 5 files changed, 112 insertions(+), 27 deletions(-)
---
base-commit: bc7a84cbc968ce97e581e9e3c2d26fb0ac106482
change-id: 20250102-asyn-bf76730501cc

Best regards,
--
Arun R Murthy <arun.r.murthy@intel.com>

---
Arun R Murthy (3):
      drm/plane: Add new plane property IN_FORMATS_ASYNC
      drm/plane: modify create_in_formats to accommodate async
      drm/i915/display: Add i915 hook for format_mod_supported_async

 drivers/gpu/drm/drm_mode_config.c                  |  7 ++++
 drivers/gpu/drm/drm_plane.c                        | 49 ++++++++++++++++------
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  6 ++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 30 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  |  6 ++-
 drivers/gpu/drm/i915/display/intel_display.c       | 11 +----
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  5 ++-
 include/drm/drm_mode_config.h                      |  6 +++
 include/drm/drm_plane.h                            | 17 ++++++++
 9 files changed, 111 insertions(+), 26 deletions(-)
---
base-commit: be5a404c3344b7d794766f045b8f94aa93c42069
change-id: 20250102-asyn-bf76730501cc

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

