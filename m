Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7AC45485A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 15:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB466E459;
	Wed, 17 Nov 2021 14:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F13736E42F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 14:13:56 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id u17so2274695plg.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 06:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IgStfDj6Zt8/izR4m2I+R4rKgneA+zot1vY4zu2seXI=;
 b=KLnxhrkR1IsKhVwXMgOB+qgWhAUovbWTtfngFa7WnQpekMmfyXMjjK2GRHM3F86m6W
 T07MxTS+lz1/hQpuP5IYM82WR3PiTbWLZINqoK+6dfNisI4iO0f7r2TR2CD10fatZ1xK
 BuMev3ho4tuEmY6afbO+M5c3dxek2pDDEZFVmUamgXuJ/ZskQUl3dw4Tq2pRhEpGgO8Q
 nmMk7T65yvleI7jY1bjeZCWXp7gKFaBddxnO66vl6PKjJpKehq4N+d2Os3IQgy+8dfhE
 uDRO91j84C7c5AUVYAnyiqGNLD7FmLHOSWgEcCu3gsfheQtud3nJEICR5EQq7uFZsAUj
 5ukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IgStfDj6Zt8/izR4m2I+R4rKgneA+zot1vY4zu2seXI=;
 b=Ee+zeVG1VEuyCyMUn2DItea65YthQJiS21mfPgEFN0jrAY44zR6zpMPQauVyGqj7fN
 JNIgASqvgNgq8EsTDbEG/tSOzgD5gfVY8bDX3lM19pm/BJ6klbDe6CtdVDWIM2lXEvaA
 eDJdVz3PSlhx1HzX95fyOKjYEy/rnjKA6j01vDPTiPPiQEnE9BMlOPALr3P80XuLpca8
 q3Su9czBLAVvYRdXVP1oJBbJe5l2QBWolTR/EyzDL3LZ/LZ6m+3NYQd7Fqv6OQsWBtxA
 irBrplxzX1ALaDaS4f8d/dry5ihG+gbu4ND8tRCofhehUrrFwLwZXO2OsLzVQbh1g9xS
 60xA==
X-Gm-Message-State: AOAM531iD2xKHp1Rk1Xllc74t5RvSCPIPtKedsjZg8EDAusb5/iC3sHB
 CIo4JbBAsJB4xiU8kw7Gjo7q7jwSSD3FHmUaB5Umrg==
X-Google-Smtp-Source: ABdhPJztN01MsmsVrgqJm5CuFA9id9S1SkYImXP6NdcqtoJxewUiH+wfb1mJfLy/qFsI0HaqCU6n5C79URnCGVfIXbY=
X-Received: by 2002:a17:902:d50d:b0:141:ea03:5193 with SMTP id
 b13-20020a170902d50d00b00141ea035193mr55802159plg.89.1637158436225; Wed, 17
 Nov 2021 06:13:56 -0800 (PST)
MIME-Version: 1.0
References: <20211005202322.700909-1-hdegoede@redhat.com>
 <20211005202322.700909-4-hdegoede@redhat.com>
In-Reply-To: <20211005202322.700909-4-hdegoede@redhat.com>
From: Rajat Jain <rajatja@google.com>
Date: Wed, 17 Nov 2021 06:13:20 -0800
Message-ID: <CACK8Z6EhQnn6xiGsYvx-GyEs==-LDC642OFjPH7mBbMpPYvn_A@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 17 Nov 2021 14:17:44 +0000
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/privacy-screen: Add X86 specific
 arch init code
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
Cc: Mark Pearson <markpearson@lenovo.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andy Shevchenko <andy@infradead.org>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Hans,

On Tue, Oct 5, 2021 at 1:23 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Add X86 specific arch init code, which fills the privacy-screen lookup
> table by checking for various vendor specific ACPI interfaces for
> controlling the privacy-screen.
>
> This initial version only checks for the Lenovo Thinkpad specific ACPI
> methods for privacy-screen control.
>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> Reviewed-by: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/Makefile                 |  2 +-
>  drivers/gpu/drm/drm_privacy_screen_x86.c | 86 ++++++++++++++++++++++++
>  include/drm/drm_privacy_screen_machine.h |  5 ++
>  3 files changed, 92 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
>
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 788fc37096f6..12997ca5670d 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -32,7 +32,7 @@ drm-$(CONFIG_OF) += drm_of.o
>  drm-$(CONFIG_PCI) += drm_pci.o
>  drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
>  drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
> -drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o
> +drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o drm_privacy_screen_x86.o
>
>  obj-$(CONFIG_DRM_DP_AUX_BUS) += drm_dp_aux_bus.o
>
> diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
> new file mode 100644
> index 000000000000..a2cafb294ca6
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
> @@ -0,0 +1,86 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2020 Red Hat, Inc.
> + *
> + * Authors:
> + * Hans de Goede <hdegoede@redhat.com>
> + */
> +
> +#include <linux/acpi.h>
> +#include <drm/drm_privacy_screen_machine.h>
> +
> +#ifdef CONFIG_X86
> +static struct drm_privacy_screen_lookup arch_lookup;
> +
> +struct arch_init_data {
> +       struct drm_privacy_screen_lookup lookup;
> +       bool (*detect)(void);
> +};
> +
> +#if IS_ENABLED(CONFIG_THINKPAD_ACPI)
> +static acpi_status __init acpi_set_handle(acpi_handle handle, u32 level,
> +                                         void *context, void **return_value)
> +{
> +       *(acpi_handle *)return_value = handle;
> +       return AE_CTRL_TERMINATE;
> +}
> +
> +static bool __init detect_thinkpad_privacy_screen(void)
> +{
> +       union acpi_object obj = { .type = ACPI_TYPE_INTEGER };
> +       struct acpi_object_list args = { .count = 1, .pointer = &obj, };
> +       acpi_handle ec_handle = NULL;
> +       unsigned long long output;
> +       acpi_status status;
> +
> +       /* Get embedded-controller handle */
> +       status = acpi_get_devices("PNP0C09", acpi_set_handle, NULL, &ec_handle);
> +       if (ACPI_FAILURE(status) || !ec_handle)
> +               return false;
> +
> +       /* And call the privacy-screen get-status method */
> +       status = acpi_evaluate_integer(ec_handle, "HKEY.GSSS", &args, &output);
> +       if (ACPI_FAILURE(status))
> +               return false;
> +
> +       return (output & 0x10000) ? true : false;
> +}
> +#endif
> +
> +static const struct arch_init_data arch_init_data[] __initconst = {
> +#if IS_ENABLED(CONFIG_THINKPAD_ACPI)
> +       {
> +               .lookup = {
> +                       .dev_id = NULL,
> +                       .con_id = NULL,
> +                       .provider = "privacy_screen-thinkpad_acpi",
> +               },
> +               .detect = detect_thinkpad_privacy_screen,
> +       },
> +#endif
> +};

As I'm trying to add privacy-screen support for my platform, I'm
trying to understand if my platform needs to make an entry in this
static list.

Do I understand it right that the reason you needed this static list
(and this whole file really), instead of just doing a
drm_privacy_screen_lookup_add() in the platform code in
thinkpad_acpi.c, was because that code was executed AFTER the
drm_connectors had already initialized?

In other words, the privacy-screen providers (platform code) need to
register a privacy-screen and a lookup structure, BEFORE the drm
connectors are initialized. If the platform code that provides a
privacy-screen is executed AFTER the drm-connector initializes, then
we need an entry in this static list, so that the drm probe (for i915
atleast) is DEFERRED until the privacy-screen provider registers the
privacy-screen?

OTOH, if the platform can register a privacy-screen and a lookup
function (via drm_privacy_screen_lookup_add()) BEFORE drm probe, then
I do not need an entry in this static list.

Is this correct understanding?

Thanks & Best Regards,

Rajat

> +
> +void __init drm_privacy_screen_lookup_init(void)
> +{
> +       int i;
> +
> +       for (i = 0; i < ARRAY_SIZE(arch_init_data); i++) {
> +               if (!arch_init_data[i].detect())
> +                       continue;
> +
> +               pr_info("Found '%s' privacy-screen provider\n",
> +                       arch_init_data[i].lookup.provider);
> +
> +               /* Make a copy because arch_init_data is __initconst */
> +               arch_lookup = arch_init_data[i].lookup;
> +               drm_privacy_screen_lookup_add(&arch_lookup);
> +               break;
> +       }
> +}
> +
> +void drm_privacy_screen_lookup_exit(void)
> +{
> +       if (arch_lookup.provider)
> +               drm_privacy_screen_lookup_remove(&arch_lookup);
> +}
> +#endif /* ifdef CONFIG_X86 */
> diff --git a/include/drm/drm_privacy_screen_machine.h b/include/drm/drm_privacy_screen_machine.h
> index aaa0d38cce92..02e5371904d3 100644
> --- a/include/drm/drm_privacy_screen_machine.h
> +++ b/include/drm/drm_privacy_screen_machine.h
> @@ -31,11 +31,16 @@ struct drm_privacy_screen_lookup {
>  void drm_privacy_screen_lookup_add(struct drm_privacy_screen_lookup *lookup);
>  void drm_privacy_screen_lookup_remove(struct drm_privacy_screen_lookup *lookup);
>
> +#if IS_ENABLED(CONFIG_DRM_PRIVACY_SCREEN) && IS_ENABLED(CONFIG_X86)
> +void drm_privacy_screen_lookup_init(void);
> +void drm_privacy_screen_lookup_exit(void);
> +#else
>  static inline void drm_privacy_screen_lookup_init(void)
>  {
>  }
>  static inline void drm_privacy_screen_lookup_exit(void)
>  {
>  }
> +#endif
>
>  #endif
> --
> 2.31.1
>
