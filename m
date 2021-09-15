Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB8640CEA0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 23:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4679B6EA58;
	Wed, 15 Sep 2021 21:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68696EA58
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 21:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631740365;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ztaTSSh2XyMIxLKcfUEMRsL1SM5pP6oaQc/cGjspv6E=;
 b=UgrmMl0XU1ZGTM/X5TCxiylMYxTFcaVhUwMufQCiLaP3Vx2YXvUcVRp58gbYWwbvTUXgL0
 1JkXC1GjBz5iStY56MqqKpmW0msftk6AaxG54bYEwN7n4UXD9Xb4H9N2IPwuzUPGHBjpci
 gVBU2mE9S6B4pUzj7EXance3ygdkZ3s=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-jtx0_vmsPw69lyjypilQ_g-1; Wed, 15 Sep 2021 17:12:42 -0400
X-MC-Unique: jtx0_vmsPw69lyjypilQ_g-1
Received: by mail-qk1-f199.google.com with SMTP id
 81-20020a370954000000b00430e5d191b7so3611577qkj.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 14:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=ztaTSSh2XyMIxLKcfUEMRsL1SM5pP6oaQc/cGjspv6E=;
 b=g5Cd/swhUI8RLm8cqMSc6sb2LcDmdcm99f3eWdqhoZTNVDkqTm2eyKFZ4h6KW2VQpS
 PO1FsE1RTqXQ7JludW3w0yQTE58LlNa52aL9SbydZY6rkGOj39s1ttJztHUfhOQKAuCN
 Z4gykFiwHv8Y8ajIB3Sj9xPh3R0F/eJL4Nh0Uo3QLfhPqRMooF5ME+yT9eDqehzbYoda
 p5jTuo0/tEWDEgL5fcTa5dqrCDYooD2z0Ia/J/FZ0WF45uJCU9wOTkpbX7UXUtsDfii1
 4c2PWu14I9vev+MOcckUCRdzYF68TYIdNwDsRMwrGmmgVUmkeNV4xb1OQ1FSzD5hVaGZ
 Ub0Q==
X-Gm-Message-State: AOAM531yKS3px7gmHV09iRd6aJ67Fl//vXFUaJFdMsMNt9etLQLlqXN1
 rboA2eNtNueLAgsZPyln1TpnNehucbVv1cbn0mPHvVm2nx6JTac3KdjLbXvNu3A6eQgChtoMDvd
 Jn/o1pY/gjuarWasT/dhXUBIdPukV
X-Received: by 2002:a05:6214:387:: with SMTP id
 l7mr1978262qvy.18.1631740362114; 
 Wed, 15 Sep 2021 14:12:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzPITxYBjWa5zyX+wpFjDWfNzNlOnZPkx+q623qbE3sktoD4mTGRlKk5f7+ZAiElykpCVKq8Q==
X-Received: by 2002:a05:6214:387:: with SMTP id
 l7mr1978244qvy.18.1631740361922; 
 Wed, 15 Sep 2021 14:12:41 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id o12sm752839qtt.94.2021.09.15.14.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 14:12:41 -0700 (PDT)
Message-ID: <ddd8ba1e22adb6fd536c9d72384a30bb9c945997.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mark Gross <mgross@linux.intel.com>, Andy Shevchenko <andy@infradead.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Pekka
 Paalanen <pekka.paalanen@collabora.com>, Mario Limonciello
 <mario.limonciello@outlook.com>, Mark Pearson <markpearson@lenovo.com>,
 Sebastien Bacher <seb128@ubuntu.com>, Marco Trevisan
 <marco.trevisan@canonical.com>, Emil Velikov <emil.l.velikov@gmail.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org,  platform-driver-x86@vger.kernel.org
Date: Wed, 15 Sep 2021 17:12:40 -0400
In-Reply-To: <20210906073519.4615-1-hdegoede@redhat.com>
References: <20210906073519.4615-1-hdegoede@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/9] drm: Add privacy-screen class and
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

OK! Looked over all of these patches. Patches 2 and 4 have some comments that
should be addressed, but otherwise this series is:

Reviewed-by: Lyude Paul <lyude@redhat.com>

Let me know when/if you need help pushing this upstream

On Mon, 2021-09-06 at 09:35 +0200, Hans de Goede wrote:
> Hi all,
> 
> Here is the privacy-screen related code which I last posted in April 2021
> To the best of my knowledge there is consensus about / everyone is in
> agreement with the new userspace API (2 connector properties) this
> patch-set add (patch 1 of the series).
> 
> This is unchanged (except for a rebase on drm-tip), what has changed is
> that the first userspace consumer of the new properties is now fully ready
> for merging (it is just waiting for the kernel bits to land first):
> 
>  -
> https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/merge_requests/49
>  - https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1952
>  - https://gitlab.gnome.org/GNOME/gnome-control-center/-/merge_requests/1032
> 
> Having a userspace-consumer of the API fully ready for merging, clears the
> last blocker for this series. It has already has been reviewed before
> by Emil Velikov, but it could really do with another review.
> 
> The new API works as designed and add the following features to GNOME:
> 
> 1. Showing an OSD notification when the privacy-screen is toggled on/off
>    through hotkeys handled by the embedded-controller
> 2. Allowing control of the privacy-screen from the GNOME control-panel,
>    including the on/off slider shown there updating to match the hw-setting
>    when the setting is changed with the control-panel open.
> 3. Restoring the last user-setting at login
> 
> This series consists of a number of different parts:
> 
> 1. A new version of Rajat's privacy-screen connector properties patch,
> this adds new userspace API in the form of new properties
> 
> 2. Since on most devices the privacy screen is actually controlled by
> some vendor specific ACPI/WMI interface which has a driver under
> drivers/platform/x86, we need some "glue" code to make this functionality
> available to KMS drivers. Patches 2-4 add a new privacy-screen class for
> this, which allows non KMS drivers (and possibly KMS drivers too) to
> register a privacy-screen device and also adds an interface for KMS drivers
> to get access to the privacy-screen associated with a specific connector.
> This is modelled similar to how we deal with e.g. PWMs and GPIOs in the
> kernel, including separate includes for consumers and providers(drivers).
> 
> 3. Some drm_connector helper functions to keep the actual changes needed
> for this in individual KMS drivers as small as possible (patch 5).
> 
> 4. Make the thinkpad_acpi code register a privacy-screen device on
> ThinkPads with a privacy-screen (patches 6-8)
> 
> 5. Make the i915 driver export the privacy-screen functionality through
> the connector properties on the eDP connector.
> 
> I believe that it would be best to merge the entire series, including
> the thinkpad_acpi changes through drm-misc in one go. As the pdx86
> subsys maintainer I hereby give my ack for merging the thinkpad_acpi
> changes through drm-misc.
> 
> There is one small caveat with this series, which it is good to be
> aware of. The i915 driver will now return -EPROBE_DEFER on Thinkpads
> with an eprivacy screen, until the thinkpad_acpi driver is loaded.
> This means that initrd generation tools will need to be updated to
> include thinkpad_acpi when the i915 driver is added to the initrd.
> Without this the loading of the i915 driver will be delayed to after
> the switch to real rootfs.
> 
> Regards,
> 
> Hans
> 
> 
> Hans de Goede (8):
>   drm: Add privacy-screen class (v3)
>   drm/privacy-screen: Add X86 specific arch init code
>   drm/privacy-screen: Add notifier support
>   drm/connector: Add a drm_connector privacy-screen helper functions
>   platform/x86: thinkpad_acpi: Add hotkey_notify_extended_hotkey()
>     helper
>   platform/x86: thinkpad_acpi: Get privacy-screen / lcdshadow ACPI
>     handles only once
>   platform/x86: thinkpad_acpi: Register a privacy-screen device
>   drm/i915: Add privacy-screen support
> 
> Rajat Jain (1):
>   drm/connector: Add support for privacy-screen properties (v4)
> 
>  Documentation/gpu/drm-kms-helpers.rst        |  15 +
>  Documentation/gpu/drm-kms.rst                |   2 +
>  MAINTAINERS                                  |   8 +
>  drivers/gpu/drm/Kconfig                      |   4 +
>  drivers/gpu/drm/Makefile                     |   1 +
>  drivers/gpu/drm/drm_atomic_uapi.c            |   4 +
>  drivers/gpu/drm/drm_connector.c              | 214 +++++++++
>  drivers/gpu/drm/drm_drv.c                    |   4 +
>  drivers/gpu/drm/drm_privacy_screen.c         | 468 +++++++++++++++++++
>  drivers/gpu/drm/drm_privacy_screen_x86.c     |  86 ++++
>  drivers/gpu/drm/i915/display/intel_display.c |   5 +
>  drivers/gpu/drm/i915/display/intel_dp.c      |  10 +
>  drivers/gpu/drm/i915/i915_pci.c              |  12 +
>  drivers/platform/x86/Kconfig                 |   2 +
>  drivers/platform/x86/thinkpad_acpi.c         | 131 ++++--
>  include/drm/drm_connector.h                  |  56 +++
>  include/drm/drm_privacy_screen_consumer.h    |  65 +++
>  include/drm/drm_privacy_screen_driver.h      |  84 ++++
>  include/drm/drm_privacy_screen_machine.h     |  46 ++
>  19 files changed, 1175 insertions(+), 42 deletions(-)
>  create mode 100644 drivers/gpu/drm/drm_privacy_screen.c
>  create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
>  create mode 100644 include/drm/drm_privacy_screen_consumer.h
>  create mode 100644 include/drm/drm_privacy_screen_driver.h
>  create mode 100644 include/drm/drm_privacy_screen_machine.h
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

