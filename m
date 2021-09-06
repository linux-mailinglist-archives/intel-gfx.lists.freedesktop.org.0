Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4FC401709
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 09:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FF18996E;
	Mon,  6 Sep 2021 07:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEACC8995F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 07:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1630913730;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=U5F+g65gvtlKtqKvVL0elOUMCwcI/xX6RWsFAr3WOYA=;
 b=Sk8wwpI6tb8uL86EdcmFGVu7z7qI0MNJFKbsP4FUjv3+17xbuuNZdk8FjQiOjIMidtwfB4
 BF6K74uHog0MUqicvPwHP9UIZNEabhxNx8I+SzBSyS0696IdgIUW57PySoU3ZVw0JAJEyV
 fTkL0/87AVOzxwCpd2nOi1n9FyR0DXQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-QYrddwH_MhSJ3uEDX4y7Uw-1; Mon, 06 Sep 2021 03:35:29 -0400
X-MC-Unique: QYrddwH_MhSJ3uEDX4y7Uw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D80E802929;
 Mon,  6 Sep 2021 07:35:26 +0000 (UTC)
Received: from x1.localdomain.com (unknown [10.39.194.133])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AB38877701;
 Mon,  6 Sep 2021 07:35:20 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
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
Date: Mon,  6 Sep 2021 09:35:10 +0200
Message-Id: <20210906073519.4615-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH 0/9] drm: Add privacy-screen class and connector
 properties
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

Here is the privacy-screen related code which I last posted in April 2021
To the best of my knowledge there is consensus about / everyone is in
agreement with the new userspace API (2 connector properties) this
patch-set add (patch 1 of the series).

This is unchanged (except for a rebase on drm-tip), what has changed is
that the first userspace consumer of the new properties is now fully ready
for merging (it is just waiting for the kernel bits to land first):

 - https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/merge_requests/49
 - https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1952
 - https://gitlab.gnome.org/GNOME/gnome-control-center/-/merge_requests/1032

Having a userspace-consumer of the API fully ready for merging, clears the
last blocker for this series. It has already has been reviewed before
by Emil Velikov, but it could really do with another review.

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


Hans de Goede (8):
  drm: Add privacy-screen class (v3)
  drm/privacy-screen: Add X86 specific arch init code
  drm/privacy-screen: Add notifier support
  drm/connector: Add a drm_connector privacy-screen helper functions
  platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey()
    helper
  platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI
    handles only once
  platform/x86: thinkpad_acpi: Register a privacy-screen device
  drm/i915: Add privacy-screen support

Rajat Jain (1):
  drm/connector: Add support for privacy-screen properties (v4)

 Documentation/gpu/drm-kms-helpers.rst        |  15 +
 Documentation/gpu/drm-kms.rst                |   2 +
 MAINTAINERS                                  |   8 +
 drivers/gpu/drm/Kconfig                      |   4 +
 drivers/gpu/drm/Makefile                     |   1 +
 drivers/gpu/drm/drm_atomic_uapi.c            |   4 +
 drivers/gpu/drm/drm_connector.c              | 214 +++++++++
 drivers/gpu/drm/drm_drv.c                    |   4 +
 drivers/gpu/drm/drm_privacy_screen.c         | 468 +++++++++++++++++++
 drivers/gpu/drm/drm_privacy_screen_x86.c     |  86 ++++
 drivers/gpu/drm/i915/display/intel_display.c |   5 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  10 +
 drivers/gpu/drm/i915/i915_pci.c              |  12 +
 drivers/platform/x86/Kconfig                 |   2 +
 drivers/platform/x86/thinkpad_acpi.c         | 131 ++++--
 include/drm/drm_connector.h                  |  56 +++
 include/drm/drm_privacy_screen_consumer.h    |  65 +++
 include/drm/drm_privacy_screen_driver.h      |  84 ++++
 include/drm/drm_privacy_screen_machine.h     |  46 ++
 19 files changed, 1175 insertions(+), 42 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_privacy_screen.c
 create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
 create mode 100644 include/drm/drm_privacy_screen_consumer.h
 create mode 100644 include/drm/drm_privacy_screen_driver.h
 create mode 100644 include/drm/drm_privacy_screen_machine.h

-- 
2.31.1

