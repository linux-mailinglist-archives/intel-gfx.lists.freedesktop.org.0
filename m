Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D92BCA74683
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 10:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26D710E9B7;
	Fri, 28 Mar 2025 09:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Shwyg2eF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D872910E9B6;
 Fri, 28 Mar 2025 09:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743155037; x=1774691037;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=ZHC9r9A6EpQB5S+DumdduCPawmpKfP07Cy0oQIWGNQU=;
 b=Shwyg2eF4XK7ITb0jV2w4GYME1LC0LB/MalKPJOaDmKyte7pFQL0O9sy
 ATlEEtqPvTrmhUx71lfrdsshenC0fviLj2a8OhZho1/el5wnOtXS3wDT5
 8iocB9NlyeDcdUHx9feQVdQvMYfyQ3u7cV+EdDmhoiZHNA2j4ewp2JBeG
 3mupDJT53Zf7ZTB5THmLPaEWn0ppU9o1CZUiWsEWQ2lUCBYNCb7dPb4af
 NPSobYPxh9ArxqWGUiuKuMo+IpugSLKethIDAksy9HuWddN6xYkMgcbgD
 hMdajloAGPY93criwFak9wJpLhT7/gOGdqTzGyjPGjkapjd5BJ9k/JEue g==;
X-CSE-ConnectionGUID: 7rOq5yGLR+eQl6T5tzo9kg==
X-CSE-MsgGUID: HQFECGToRQSUvidvCptldA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="48170261"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="48170261"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 02:43:57 -0700
X-CSE-ConnectionGUID: E2OyBsWISIGAdTAS3YwleQ==
X-CSE-MsgGUID: msg0WgTvSyORPqLlKyKHrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="129547496"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 28 Mar 2025 02:43:53 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v10 0/4] Expose modifiers/formats supported by async flips
Date: Fri, 28 Mar 2025 14:59:12 +0530
Message-Id: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOhr5mcC/02OwW6DMBBEfwX5XKNdsA3Nqf9R5bAYUywVE62JF
 RTx7zVJo3Cc0bzRu4vo2LsoTsVdsEs++jnkgPBRCDtS+HHS97kQFVQaECpJcQ2yGxrT1JAba0W
 eXtgN/vb4+T7nPPA8yWVkRy9YIWILja5Rl8oYgE+JkvgaSi6nKy/j+uXD4n5LO0/74+jjMvP6E
 Et6/30qVNg+FZKWIBuymqyirld04HeF1L6hGv+9U5shsMp2ThMY0x+hbdv+AF5A8qcQAQAA
X-Change-ID: 20250102-asyn-bf76730501cc
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 chaitanya.kumar.borah@intel.com, ville.syrjala@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Naveen Kumar <naveen1.kumar@intel.com>
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
Changes in v9:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v8: https://lore.kernel.org/r/20250312-asyn-v8-0-0c4cbe5a066d@intel.com

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

---
Arun R Murthy (3):
      drm/plane: Add new plane property IN_FORMATS_ASYNC
      drm/plane: modify create_in_formats to accommodate async
      drm/i915/display: Add i915 hook for format_mod_supported_async

 drivers/gpu/drm/drm_mode_config.c                  |  7 +++
 drivers/gpu/drm/drm_plane.c                        | 52 ++++++++++++++++------
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  6 ++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 32 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  |  6 ++-
 drivers/gpu/drm/i915/display/intel_display.c       | 14 ++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  5 ++-
 include/drm/drm_mode_config.h                      |  6 +++
 include/drm/drm_plane.h                            | 17 +++++++
 9 files changed, 117 insertions(+), 28 deletions(-)
---
base-commit: aba848f9b752cf51474c0c3b1abcf0f572f774dc
change-id: 20250102-asyn-bf76730501cc

Best regards,
--
Arun R Murthy <arun.r.murthy@intel.com>

---
Arun R Murthy (4):
      drm/plane: Add new plane property IN_FORMATS_ASYNC
      drm/plane: modify create_in_formats to acommodate async
      drm/i915/display: Acomodate format check in can_async_flip()
      drm/i915/display: Add i915 hook for format_mod_supported_async

 drivers/gpu/drm/drm_mode_config.c                  |  7 +++
 drivers/gpu/drm/drm_plane.c                        | 52 ++++++++++++++++------
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  6 ++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 22 ++++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  |  6 ++-
 drivers/gpu/drm/i915/display/intel_display.c       | 14 ++----
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  5 ++-
 include/drm/drm_mode_config.h                      |  6 +++
 include/drm/drm_plane.h                            | 17 +++++++
 9 files changed, 107 insertions(+), 28 deletions(-)
---
base-commit: c1893793c7d3868fe083bdab33999178337b5561
change-id: 20250102-asyn-bf76730501cc

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

