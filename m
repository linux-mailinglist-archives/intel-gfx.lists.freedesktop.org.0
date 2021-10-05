Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0AC4231AF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 22:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B42E6EC41;
	Tue,  5 Oct 2021 20:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04026EC44
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 20:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633465415;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NRgmhXdpaqY+FVC7J2s26OG7wCUvyBg6kbOeQ49YTr0=;
 b=Q/atNs8aftHkONv1L9zpC3nFmDPt2Y28dqzMPsOrazjSO2pqrgmN2Afb6Uw1VBNMSpM7Ge
 x27cvjjll+Z0fdAlOSC1M5pFSCab2bT83XPwQiCKB6ASUnOfNh7c+VBQjf0QpwKrOC4I8t
 z9kySh9VADzmQ2xkmN5iRd2z5xz0ato=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-86-JBvlBNKhNMOm8ttvLe_cwg-1; Tue, 05 Oct 2021 16:23:33 -0400
X-MC-Unique: JBvlBNKhNMOm8ttvLe_cwg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F323362FA;
 Tue,  5 Oct 2021 20:23:30 +0000 (UTC)
Received: from x1.localdomain (unknown [10.39.192.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DA78860C13;
 Tue,  5 Oct 2021 20:23:23 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Mark Gross <markgross@kernel.org>, Andy Shevchenko <andy@infradead.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Mark Pearson <markpearson@lenovo.com>,
 Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Date: Tue,  5 Oct 2021 22:23:12 +0200
Message-Id: <20211005202322.700909-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Subject: [Intel-gfx] [PATCH 00/10] drm: Add privacy-screen class and
 connector properties
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

Hi all,

Here is a new version of my privacy-screen series, addressing the
review-remark from Ville on patch 10/10 from the version posted on
October 2nd. This new version contains the following changes:

- drm/i915: Add privacy-screen support (v3)
 - Move drm_privacy_screen_get() call to intel_ddi_init_dp_connector()

Ville, can you (re)review "[PATCH 10/10] drm/i915: Add privacy-screen
support (v3)" please ?

For anyone just tuning in, here is some more info from the previous
cover-letters:

The first userspace consumer of the new properties is now fully ready
for merging (it is just waiting for the kernel bits to land first):

 - https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/merge_requests/49
 - https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1952
 - https://gitlab.gnome.org/GNOME/gnome-control-center/-/merge_requests/1032

The new API works as designed and add the following features to GNOME:

1. Showing an OSD notification when the privacy-screen is toggled on/off
   through hotkeys handled by the embedded-controller
2. Allowing control of the privacy-screen from the GNOME control-panel,
   including the on/off slider shown there updating to match the hw-setting
   when the setting is changed with the control-panel open.
3. Restoring the last user-setting at login

This series consists of a number of different parts:

1. A new version of Rajat's privacy-screen connector properties patch,
this adds new userspace API in the form of new properties

2. Since on most devices the privacy screen is actually controlled by
some vendor specific ACPI/WMI interface which has a driver under
drivers/platform/x86, we need some "glue" code to make this functionality
available to KMS drivers. Patches 2-4 add a new privacy-screen class for
this, which allows non KMS drivers (and possibly KMS drivers too) to
register a privacy-screen device and also adds an interface for KMS drivers
to get access to the privacy-screen associated with a specific connector.
This is modelled similar to how we deal with e.g. PWMs and GPIOs in the
kernel, including separate includes for consumers and providers(drivers).

3. Some drm_connector helper functions to keep the actual changes needed
for this in individual KMS drivers as small as possible (patch 5).

4. Make the thinkpad_acpi code register a privacy-screen device on
ThinkPads with a privacy-screen (patches 6-8)

5. Make the i915 driver export the privacy-screen functionality through
the connector properties on the eDP connector.

I believe that it would be best to merge the entire series, including
the thinkpad_acpi changes through drm-misc in one go. As the pdx86
subsys maintainer I hereby give my ack for merging the thinkpad_acpi
changes through drm-misc.

There is one small caveat with this series, which it is good to be
aware of. The i915 driver will now return -EPROBE_DEFER on Thinkpads
with an eprivacy screen, until the thinkpad_acpi driver is loaded.
This means that initrd generation tools will need to be updated to
include thinkpad_acpi when the i915 driver is added to the initrd.
Without this the loading of the i915 driver will be delayed to after
the switch to real rootfs.

Regards,

Hans


Hans de Goede (9):
  drm: Add privacy-screen class (v4)
  drm/privacy-screen: Add X86 specific arch init code
  drm/privacy-screen: Add notifier support (v2)
  drm/connector: Add a drm_connector privacy-screen helper functions
    (v2)
  platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey()
    helper
  platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI
    handles only once
  platform/x86: thinkpad_acpi: Register a privacy-screen device
  drm/i915: Add intel_modeset_probe_defer() helper
  drm/i915: Add privacy-screen support (v3)

Rajat Jain (1):
  drm/connector: Add support for privacy-screen properties (v4)

 Documentation/gpu/drm-kms-helpers.rst        |  15 +
 Documentation/gpu/drm-kms.rst                |   2 +
 MAINTAINERS                                  |   8 +
 drivers/gpu/drm/Kconfig                      |   4 +
 drivers/gpu/drm/Makefile                     |   1 +
 drivers/gpu/drm/drm_atomic_uapi.c            |   4 +
 drivers/gpu/drm/drm_connector.c              | 203 ++++++++
 drivers/gpu/drm/drm_drv.c                    |   4 +
 drivers/gpu/drm/drm_privacy_screen.c         | 467 +++++++++++++++++++
 drivers/gpu/drm/drm_privacy_screen_x86.c     |  86 ++++
 drivers/gpu/drm/i915/display/intel_atomic.c  |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |  15 +
 drivers/gpu/drm/i915/display/intel_display.c |  23 +
 drivers/gpu/drm/i915/display/intel_display.h |   1 +
 drivers/gpu/drm/i915/i915_pci.c              |   9 +-
 drivers/platform/x86/Kconfig                 |   2 +
 drivers/platform/x86/thinkpad_acpi.c         | 137 ++++--
 include/drm/drm_connector.h                  |  55 +++
 include/drm/drm_privacy_screen_consumer.h    |  65 +++
 include/drm/drm_privacy_screen_driver.h      |  84 ++++
 include/drm/drm_privacy_screen_machine.h     |  46 ++
 21 files changed, 1183 insertions(+), 49 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_privacy_screen.c
 create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
 create mode 100644 include/drm/drm_privacy_screen_consumer.h
 create mode 100644 include/drm/drm_privacy_screen_driver.h
 create mode 100644 include/drm/drm_privacy_screen_machine.h

-- 
2.31.1

