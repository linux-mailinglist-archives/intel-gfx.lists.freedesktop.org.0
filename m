Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05836240BD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 12:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DCE10E138;
	Thu, 10 Nov 2022 11:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1769610E138;
 Thu, 10 Nov 2022 11:07:20 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 395E458024D;
 Thu, 10 Nov 2022 06:07:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 10 Nov 2022 06:07:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm2; t=1668078440; x=1668085640; bh=C8zcqaRAAQ
 gz6S4F9rIrc0NcgQQZLhdnyei70WKDD2Y=; b=W7XyOWz2Zu2kyNNERuxiTVn1XM
 oIbcMvtn86oyPEhf/LPDp3o+TX8RXoEcCZ3IMJ3Tl0oKkKEJYTuBwbohhnnxrVdP
 DvIX/vNDXD7U6CptLif183FCQI7s7UH+jcDULGDz2Tcb3ziVCnl0pbyqj8FtdAcT
 yUkVkcRioBIqLBfrBOXDvRwSTZU26EvxSi2e8OQ7yy0Lmo+sxupG4XsdIpsOJglL
 DH2LGt5SEg3OZk5Y5CtdaPPS8FcSBOd/rsUAGxDpvn/tVMZOCzslI8GdYSm6uLBt
 vy4XRwgOZxg3y079Puw2X20xm7BCRf1WhTtPIlIzoLZ8ZuFOsoS9IM+jv7NQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1668078440; x=1668085640; bh=C8zcqaRAAQgz6
 S4F9rIrc0NcgQQZLhdnyei70WKDD2Y=; b=wTmepmIO2HBeVJitrUiRhcUjBJlWf
 +4TnB7IjE+n+pzMBBcQLTbbv62p9IbZmhYe5ZNIT1Q0oKZuFAIoCe4eTb4WEnste
 HbryO6FQv5W6lt4mDMzj8tTMSJ/H2JyXYWPCXTFGNuyJNGt1tDVRTssRymr31hUv
 MgKyeuXtP6AfvBMehd/ivwGg4dFBl0KKbnsz5IrhndIOyIK9M9OiXmDW0jR02ymF
 9DTbBFl8XOYtPpyF8OpVuHhL0bE0MEFxVSUk3vA6F1xkiFU/BSOtnYgYhR2x2VOO
 JefGMZuR9KB6ubLnEL8vljR4GlXmyHVcvP9vBIlPCZXUPhJHnoB2zu55A==
X-ME-Sender: <xms:Z9tsYz6dEv4lcI4KcGyAfrK-ikDTbAe0GVzOfmRGPyt7Zurjprigeg>
 <xme:Z9tsY47DUOhJwrVYIyeNRGqnAGGcsvINDH_7vSkn1_6J8tkDI4y7iLR2BCkTCJES7
 Dp2jdeo3AsCFcXG2_E>
X-ME-Received: <xmr:Z9tsY6cvXdxCiS6ZinPSNY0emoixI2UwrCCUCENHRJ1dTCWYlkipAGyIitbcTataxlFAVRvejVtnrchqqa7yaw6TLE0aQFNZR0T3n1xCaNk2Uw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrfeeggddvhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefugggtgffhfffkvfevofesthekredtredtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelueevteetffdvveelgfffleegudeufeelveefvddugeehkeefkeehjeeikeeg
 udenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Z9tsY0LAVJFkqxVjBMZ3KFa2i7TuIelPgWuDIiwfnqfQ7tB3N-UPug>
 <xmx:Z9tsY3Ls7LofXkC147NDJDx-23FzD-Ze_d8U8F_XKu6QIwk5knuh6g>
 <xmx:Z9tsY9y0TcnOLcuB5IfWyQtADNqmhFWHvTwsjmFyMtEU5euQC9IVrw>
 <xmx:aNtsY10llnPTHxtftnVClYO2EhJQJGRwLyhIhbLdbpHJvXUaBgUkKw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 10 Nov 2022 06:07:19 -0500 (EST)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-b4-tracking: H4sIAGDbbGMC/43NwWrEIBAG4FdZPNdi1DhmT32P0oPRcSMUDRqEsuTdO9tbycXT8DMz3/9kDWvCxu
 63J6vYU0slU7BvN+Y3lx/IU6DMpJBSgLS87om77L7Lgx+d77XsWA8SuFgmHaJH1EYwel9dQ75Wl/32
 AkDNqKeg1OLDa72ldpT681fcFY3PgY4uueARlHICwxIX8eGx5vJ+IJV8kdr1qKRJMiIoa0FFsPIiza
 PSTFKwevLe6Ih6vUhmVDIkIcAiQelJ2HiRYFQCkoBunAbrzar+Sed5/gJzpL6M+AEAAA==
From: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 10 Nov 2022 12:07:12 +0100
Message-Id: <20220728-rpi-analog-tv-properties-v8-0-09ce1466967c@cerno.tech>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, 
 Maxime Ripard <mripard@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Karol Herbst <kherbst@redhat.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Lyude Paul <lyude@redhat.com>, Samuel Holland <samuel@sholland.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Emma Anholt <emma@anholt.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Ben Skeggs <bskeggs@redhat.com>
X-Mailer: b4 0.11.0-dev-99e3a
X-Developer-Signature: v=1; a=openpgp-sha256; l=10964; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=KiXwpi1N4wugpmXCUXe4ydQiT54nUijI/pP8U8RmY8w=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDMk5t1Ou1hvvzAyyXj/PbkfpsZqfd9hOV7Yv6Wi7HHRnS4TK
 vxjNjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzkniAjwwy3t7t/2m0uK7v9VcAg6J
 P198UzT1hePyZVO01jhcDTrBhGhqNx3UHea/g/iB0I2DFfcPPRDyI7G6++NL28oGXWhSL3fywA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
Subject: [Intel-gfx] [PATCH v8 00/24] drm: Analog TV Improvements
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
Cc: Dom Cobley <dom@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Phil Elwell <phil@raspberrypi.com>, Hans de Goede <hdegoede@redhat.com>, Noralf Trønnes <noralf@tronnes.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Maxime Ripard <maxime@cerno.tech>, Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>, linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Here's a series aiming at improving the command line named modes support,
and more importantly how we deal with all the analog TV variants.

The named modes support were initially introduced to allow to specify the
analog TV mode to be used.

However, this was causing multiple issues:

  * The mode name parsed on the command line was passed directly to the
    driver, which had to figure out which mode it was suppose to match;

  * Figuring that out wasn't really easy, since the video= argument or what
    the userspace might not even have a name in the first place, but
    instead could have passed a mode with the same timings;

  * The fallback to matching on the timings was mostly working as long as
    we were supporting one 525 lines (most likely NSTC) and one 625 lines
    (PAL), but couldn't differentiate between two modes with the same
    timings (NTSC vs PAL-M vs NSTC-J for example);

  * There was also some overlap with the tv mode property registered by
    drm_mode_create_tv_properties(), but named modes weren't interacting
    with that property at all.

  * Even though that property was generic, its possible values were
    specific to each drivers, which made some generic support difficult.

Thus, I chose to tackle in multiple steps:

  * A new TV mode property was introduced, with generic values, each driver
    reporting through a bitmask what standard it supports to the userspace;

  * This option was added to the command line parsing code to be able to
    specify it on the kernel command line, and new atomic_check and reset
    helpers were created to integrate properly into atomic KMS;

  * The named mode parsing code is now creating a proper display mode for
    the given named mode, and the TV standard will thus be part of the
    connector state;

  * Two drivers were converted and tested for now (vc4 and sun4i), with
    some backward compatibility code to translate the old TV mode to the
    new TV mode;

Unit tests were created along the way.

One can switch from NTSC to PAL now using (on vc4)

modetest -M vc4  -s 53:720x480i -w 53:'TV mode':1 # NTSC
modetest -M vc4  -s 53:720x576i -w 53:'TV mode':4 # PAL

Let me know what you think,
Maxime

To: David Airlie <airlied@linux.ie>
To: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: Emma Anholt <emma@anholt.net>
To: Jani Nikula <jani.nikula@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Ben Skeggs <bskeggs@redhat.com>
To: Karol Herbst <kherbst@redhat.com>
To: Lyude Paul <lyude@redhat.com>
To: Chen-Yu Tsai <wens@csie.org>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>
Cc: "Noralf Trønnes" <noralf@tronnes.org>
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Dom Cobley <dom@raspberrypi.com>
Cc: Phil Elwell <phil@raspberrypi.com>
Cc: <dri-devel@lists.freedesktop.org>
Cc: linux-kernel@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Cc: nouveau@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-sunxi@lists.linux.dev
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---
Changes in v8:
- Changed slightly the helper API to pass in the features
- Removed unused tv_mode_support function
- Removed mode name match in _pick_cmdline_mode
- Added unit tests to the get_modes helper
- Collected Noralf and Mateusz tags
- Rebased on drm-misc-next-2022-11-10
- Link to v7: https://lore.kernel.org/r/20220728-rpi-analog-tv-properties-v7-0-7072a478c6b3@cerno.tech

Changes in v7:
- Switch to another implementation of get_modes from Noralf
- Made more checks in VEC's atomic_check
- Fixed typo in a commit log
- Checked for tv_mode_specified in drm_mode_parse_command_line_for_connector
- Rebased on drm-misc-next-2022-11-03
- Link to v6: https://lore.kernel.org/r/20220728-rpi-analog-tv-properties-v6-0-e7792734108f@cerno.tech

Changes in v6:
- Add and convert to a new get_modes helper to create the PAL and NTSC modes in
  the proper order, with the right preferred mode flag, depending on the driver
  capabilities and defaults.
- Support PAL60
- Renamed tests to be consistent with DRM tests naming convention
- Simplified a bit the named mode parsing code
- Add a tv_mode_specified field
- Return 0 in get_modes implementations instead of error codes
- Link to v5: https://lore.kernel.org/r/20220728-rpi-analog-tv-properties-v5-0-d841cc64fe4b@cerno.tech

Changes in v5:
- Dropped TV Standard documentation removal
- Switched the TV Mode documentation from CSV to actual documentation
- Switched to kunit assertions where possible
- Switched to KUNIT_ASSERT_NOT_NULL instead of KUNIT_ASSERT_PTR_NE(..., NULL)
- Shuffled a bit the introduction of drm_client_modeset_connector_get_modes between patches
- Renamed tv_mode_names to legacy_tv_mode_names
- Removed the count variable in sun4i_tv_comp_get_modes
- Rebased on top of current drm-misc-next
- Link to v4: https://lore.kernel.org/r/20220728-rpi-analog-tv-properties-v4-0-60d38873f782@cerno.tech

Changes in v4:
- Removed the unused TV Standard property documentation
- Added the TV Mode property documentation to kms-properties.csv
- Fixed the documentation of drm_mode_create_tv_properties()
- Removed DRM_MODE_TV_MODE_NONE
- Reworded the line length check comment in drm_mode_analog_tv tests
- Switched to HZ_PER_KHZ in drm_mode_analog_tv tests
- Reworked drm_mode_analog_tv to fill our mode using the previously computed
  timings
- Added the command-line option documentation to modedb.rst
- Improved the Kunit helpers cleanup
- Moved the subconnector documentation renaming to the proper patch
- Added the various review tags
- Removed the count variable in vc4_vec_connector_get_modes
- Rebased on drm-misc-next-2022-09-23 and fixed a merge conflict
- Folded all the named mode parsing improvements in a single patch
- Link to v3: https://lore.kernel.org/r/20220728-rpi-analog-tv-properties-v2-0-f733a0ed9f90@cerno.tech

Changes in v3:
- Applied some of the fixes to vc4 and sun4i
- Renamed the old TV mode property to legacy_mode
- Fixed a bunch of bisection errors
- Removed most of the redundant TV modes
- Added a new None TV mode to not fall back on NTSC by mistake
- Fixed the mode generation function to match better what is expected
- Added some logging to the mode generation function
- Split the improvements to the named mode parsing logic into separate patches
- Added more checks to the TV atomic_check helper
- Link to v2: https://lore.kernel.org/dri-devel/20220728-rpi-analog-tv-properties-v2-0-459522d653a7@cerno.tech/

Changes in v2:
- Kept the older TV mode property as legacy so we can keep the old drivers functional
- Renamed the tv_norm property to tv_mode
- Added a function to create PAL and NTSC compatible display modes
- Added some helpers to instantiate a mock DRM device in Kunit
- More Kunit tests
- Removed the HD analog TV modes
- Renamed some of the tests
- Renamed some of the named modes
- Fixed typos in commit logs
- Added the various tags
- Link to v1: https://lore.kernel.org/dri-devel/20220728-rpi-analog-tv-properties-v1-0-3d53ae722097@cerno.tech/

---
Mateusz Kwiatkowski (2):
      drm/vc4: vec: Check for VEC output constraints
      drm/vc4: vec: Add support for more analog TV standards

Maxime Ripard (21):
      drm/tests: Add Kunit Helpers
      drm/connector: Rename legacy TV property
      drm/connector: Only register TV mode property if present
      drm/connector: Rename drm_mode_create_tv_properties
      drm/connector: Add TV standard property
      drm/modes: Add a function to generate analog display modes
      drm/client: Add some tests for drm_connector_pick_cmdline_mode()
      drm/modes: Move named modes parsing to a separate function
      drm/modes: Switch to named mode descriptors
      drm/modes: Fill drm_cmdline mode from named modes
      drm/connector: Add pixel clock to cmdline mode
      drm/connector: Add a function to lookup a TV mode by its name
      drm/modes: Introduce the tv_mode property as a command-line option
      drm/modes: Properly generate a drm_display_mode from a named mode
      drm/client: Remove match on mode name
      drm/modes: Introduce more named modes
      drm/atomic-helper: Add a TV properties reset helper
      drm/atomic-helper: Add an analog TV atomic_check implementation
      drm/vc4: vec: Use TV Reset implementation
      drm/vc4: vec: Convert to the new TV mode property
      drm/sun4i: tv: Convert to the new TV mode property

Noralf Trønnes (1):
      drm/probe-helper: Provide a TV get_modes helper

 Documentation/fb/modedb.rst                     |   2 +
 Documentation/gpu/drm-kms.rst                   |   6 +
 drivers/gpu/drm/drm_atomic_state_helper.c       | 124 +++++
 drivers/gpu/drm/drm_atomic_uapi.c               |   4 +
 drivers/gpu/drm/drm_client_modeset.c            |   8 +-
 drivers/gpu/drm/drm_connector.c                 | 173 ++++++-
 drivers/gpu/drm/drm_modes.c                     | 634 +++++++++++++++++++++++-
 drivers/gpu/drm/drm_probe_helper.c              |  82 +++
 drivers/gpu/drm/gud/gud_connector.c             |  10 +-
 drivers/gpu/drm/i2c/ch7006_drv.c                |   6 +-
 drivers/gpu/drm/i915/display/intel_tv.c         |   4 +-
 drivers/gpu/drm/nouveau/dispnv04/tvnv17.c       |   6 +-
 drivers/gpu/drm/sun4i/sun4i_tv.c                | 141 ++----
 drivers/gpu/drm/tests/Makefile                  |   4 +
 drivers/gpu/drm/tests/drm_client_modeset_test.c | 229 +++++++++
 drivers/gpu/drm/tests/drm_cmdline_parser_test.c |  67 +++
 drivers/gpu/drm/tests/drm_connector_test.c      |  90 ++++
 drivers/gpu/drm/tests/drm_kunit_helpers.c       |  64 +++
 drivers/gpu/drm/tests/drm_kunit_helpers.h       |   9 +
 drivers/gpu/drm/tests/drm_modes_test.c          | 145 ++++++
 drivers/gpu/drm/tests/drm_probe_helper_test.c   | 209 ++++++++
 drivers/gpu/drm/vc4/vc4_vec.c                   | 342 +++++++++++--
 include/drm/drm_atomic_state_helper.h           |   4 +
 include/drm/drm_connector.h                     |  89 +++-
 include/drm/drm_mode_config.h                   |  12 +-
 include/drm/drm_modes.h                         |  17 +
 include/drm/drm_probe_helper.h                  |   1 +
 27 files changed, 2274 insertions(+), 208 deletions(-)
---
base-commit: dcf6c3602352a550a6e01667486bde6cbcc770ef
change-id: 20220728-rpi-analog-tv-properties-0914dfcee460

Best regards,
-- 
Maxime Ripard <maxime@cerno.tech>
