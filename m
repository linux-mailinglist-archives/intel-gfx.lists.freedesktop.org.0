Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC9D40CE73
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744E389A94;
	Wed, 15 Sep 2021 20:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D783989A94
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631739424;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EVZOt2yNFvEK2KV/w0c180vRiMblSsQZvJPb+fL2cd4=;
 b=avnXVyKH3K7TuTrjGMnERW9rPVldH2QnXq2yc9ELmg5W6HZSfqvVXxtYvd/+5W13nfh1jC
 1uScC1YSKSC39V6R99ki1Hv+Gy7U7brzIyOY0gX4PXsgmbxtXL7vSu/m/+nbduKekcusor
 cn6NNWHR6h2I3JatsueOd9aRqGQ7ti8=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-JTwO7DmXOKimgjqxQ8K_QA-1; Wed, 15 Sep 2021 16:55:58 -0400
X-MC-Unique: JTwO7DmXOKimgjqxQ8K_QA-1
Received: by mail-qv1-f70.google.com with SMTP id
 u6-20020ad449a6000000b003798010ad14so10599313qvx.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:55:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=EVZOt2yNFvEK2KV/w0c180vRiMblSsQZvJPb+fL2cd4=;
 b=aKwBKM55bYIzJhWgrNBFOaqh+u5Rb7ouKj3fhnD28D9x1ADlCqOMziDNk3OwUkyzGt
 mOkSKgC3zuQR/8+JFl79j+d+X6LQpUXGrAHaPSGugHp1QnVTF1S4YhaYVIJbAf/UMtSP
 8tH821F/x8js2oXd5oYfDDGtEJce2MPRYc6EtpBmcURxNpIteMTLHAEcfL5qRkcB89np
 BaKxm1IhbBflZGxnrLebiUUOupno0McdFirjwrY6iuetzIzjpIq8l7bVnid7irmIV9b2
 tapzbD3xtHI6T61Enf8z+1XACpnULCrXIRAK8HqqS89MPH4D0x2DpklasVmioOV6r0Ni
 feLw==
X-Gm-Message-State: AOAM531s7zzANqwwMiRuWknMl05QwrfQaIp4vfcnfyOEvdheH4aXPpju
 mjB2lp3xfdl4/GAQYa/G9F/LjS0LQ5ghhLHDEVd7kbhkmKFFCNzz+EI7tEF85wYIZw9oj+h+rUp
 ZNEnCQAPiNqrtav4QtJ92tJgPBx1d
X-Received: by 2002:a0c:c2c1:: with SMTP id c1mr1744099qvi.59.1631739358347;
 Wed, 15 Sep 2021 13:55:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw8LcLnn6veIMJWpMDTiS3JAcd5beHCHimwu1jggYQTdzXZNZBI9TPYzn5vw4pw85qGtbU59w==
X-Received: by 2002:a0c:c2c1:: with SMTP id c1mr1744060qvi.59.1631739358041;
 Wed, 15 Sep 2021 13:55:58 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id i67sm804812qkd.90.2021.09.15.13.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 13:55:57 -0700 (PDT)
Message-ID: <b6c1346378af6792a0a0b4bcf334d21b56747fc6.camel@redhat.com>
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
Date: Wed, 15 Sep 2021 16:55:55 -0400
In-Reply-To: <20210906073519.4615-9-hdegoede@redhat.com>
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-9-hdegoede@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 8/9] platform/x86: thinkpad_acpi: Register a
 privacy-screen device
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

On Mon, 2021-09-06 at 09:35 +0200, Hans de Goede wrote:
> Register a privacy-screen device on laptops with a privacy-screen,
> this exports the PrivacyGuard features to user-space using a
> standardized vendor-agnostic sysfs interface. Note the sysfs interface
> is read-only.
> 
> Registering a privacy-screen device with the new privacy-screen class
> code will also allow the GPU driver to get a handle to it and export
> the privacy-screen setting as a property on the DRM connector object
> for the LCD panel. This DRM connector property is news standardized

Looks like a typo here ------------------------------^

> interface which all user-space code should use to query and control
> the privacy-screen.
> 
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
> Changes in v2:
> - Make the new lcdshadow_set_sw_state, lcdshadow_get_hw_state and
>   lcdshadow_ops symbols static
> - Update state and call drm_privacy_screen_call_notifier_chain()
>   when the state is changed by pressing the Fn + D hotkey combo
> ---
>  drivers/platform/x86/Kconfig         |  2 +
>  drivers/platform/x86/thinkpad_acpi.c | 91 ++++++++++++++++++++--------
>  2 files changed, 68 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/platform/x86/Kconfig b/drivers/platform/x86/Kconfig
> index d12db6c316ea..ae00a27f9f95 100644
> --- a/drivers/platform/x86/Kconfig
> +++ b/drivers/platform/x86/Kconfig
> @@ -509,7 +509,9 @@ config THINKPAD_ACPI
>         depends on ACPI_VIDEO || ACPI_VIDEO = n
>         depends on BACKLIGHT_CLASS_DEVICE
>         depends on I2C
> +       depends on DRM
>         select ACPI_PLATFORM_PROFILE
> +       select DRM_PRIVACY_SCREEN
>         select HWMON
>         select NVRAM
>         select NEW_LEDS
> diff --git a/drivers/platform/x86/thinkpad_acpi.c
> b/drivers/platform/x86/thinkpad_acpi.c
> index b8f2556c4797..044b238730ba 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -73,6 +73,7 @@
>  #include <linux/uaccess.h>
>  #include <acpi/battery.h>
>  #include <acpi/video.h>
> +#include <drm/drm_privacy_screen_driver.h>
>  #include "dual_accel_detect.h"
>  
>  /* ThinkPad CMOS commands */
> @@ -157,6 +158,7 @@ enum tpacpi_hkey_event_t {
>         TP_HKEY_EV_VOL_UP               = 0x1015, /* Volume up or unmute */
>         TP_HKEY_EV_VOL_DOWN             = 0x1016, /* Volume down or unmute
> */
>         TP_HKEY_EV_VOL_MUTE             = 0x1017, /* Mixer output mute */
> +       TP_HKEY_EV_PRIVACYGUARD_TOGGLE  = 0x130f, /* Toggle priv.guard
> on/off */
>  
>         /* Reasons for waking up from S3/S4 */
>         TP_HKEY_EV_WKUP_S3_UNDOCK       = 0x2304, /* undock requested, S3 */
> @@ -3889,6 +3891,12 @@ static bool hotkey_notify_extended_hotkey(const u32
> hkey)
>  {
>         unsigned int scancode;
>  
> +       switch (hkey) {
> +       case TP_HKEY_EV_PRIVACYGUARD_TOGGLE:
> +               tpacpi_driver_event(hkey);
> +               return true;
> +       }
> +
>         /* Extended keycodes start at 0x300 and our offset into the map
>          * TP_ACPI_HOTKEYSCAN_EXTENDED_START. The calculated scancode
>          * will be positive, but might not be in the correct range.
> @@ -9819,30 +9827,40 @@ static struct ibm_struct battery_driver_data = {
>   * LCD Shadow subdriver, for the Lenovo PrivacyGuard feature
>   */
>  
> +static struct drm_privacy_screen *lcdshadow_dev;
>  static acpi_handle lcdshadow_get_handle;
>  static acpi_handle lcdshadow_set_handle;
> -static int lcdshadow_state;
>  
> -static int lcdshadow_on_off(bool state)
> +static int lcdshadow_set_sw_state(struct drm_privacy_screen *priv,
> +                                 enum drm_privacy_screen_status state)
>  {
>         int output;
>  
> +       if (WARN_ON(!mutex_is_locked(&priv->lock)))
> +               return -EIO;
> +
>         if (!acpi_evalf(lcdshadow_set_handle, &output, NULL, "dd",
> (int)state))
>                 return -EIO;
>  
> -       lcdshadow_state = state;
> +       priv->hw_state = priv->sw_state = state;
>         return 0;
>  }
>  
> -static int lcdshadow_set(bool on)
> +static void lcdshadow_get_hw_state(struct drm_privacy_screen *priv)
>  {
> -       if (lcdshadow_state < 0)
> -               return lcdshadow_state;
> -       if (lcdshadow_state == on)
> -               return 0;
> -       return lcdshadow_on_off(on);
> +       int output;
> +
> +       if (!acpi_evalf(lcdshadow_get_handle, &output, NULL, "dd", 0))
> +               return;
> +
> +       priv->hw_state = priv->sw_state = output & 0x1;
>  }
>  
> +static const struct drm_privacy_screen_ops lcdshadow_ops = {
> +       .set_sw_state = lcdshadow_set_sw_state,
> +       .get_hw_state = lcdshadow_get_hw_state,
> +};
> +
>  static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
>  {
>         acpi_status status1, status2;
> @@ -9850,36 +9868,44 @@ static int tpacpi_lcdshadow_init(struct
> ibm_init_struct *iibm)
>  
>         status1 = acpi_get_handle(hkey_handle, "GSSS",
> &lcdshadow_get_handle);
>         status2 = acpi_get_handle(hkey_handle, "SSSS",
> &lcdshadow_set_handle);
> -       if (ACPI_FAILURE(status1) || ACPI_FAILURE(status2)) {
> -               lcdshadow_state = -ENODEV;
> +       if (ACPI_FAILURE(status1) || ACPI_FAILURE(status2))
>                 return 0;
> -       }
>  
> -       if (!acpi_evalf(lcdshadow_get_handle, &output, NULL, "dd", 0)) {
> -               lcdshadow_state = -EIO;
> +       if (!acpi_evalf(lcdshadow_get_handle, &output, NULL, "dd", 0))
>                 return -EIO;
> -       }
> -       if (!(output & 0x10000)) {
> -               lcdshadow_state = -ENODEV;
> +
> +       if (!(output & 0x10000))
>                 return 0;
> -       }
> -       lcdshadow_state = output & 0x1;
> +
> +       lcdshadow_dev = drm_privacy_screen_register(&tpacpi_pdev->dev,
> +                                                   &lcdshadow_ops);
> +       if (IS_ERR(lcdshadow_dev))
> +               return PTR_ERR(lcdshadow_dev);
>  
>         return 0;
>  }
>  
> +static void lcdshadow_exit(void)
> +{
> +       drm_privacy_screen_unregister(lcdshadow_dev);
> +}
> +
>  static void lcdshadow_resume(void)
>  {
> -       if (lcdshadow_state >= 0)
> -               lcdshadow_on_off(lcdshadow_state);
> +       if (!lcdshadow_dev)
> +               return;
> +
> +       mutex_lock(&lcdshadow_dev->lock);
> +       lcdshadow_set_sw_state(lcdshadow_dev, lcdshadow_dev->sw_state);
> +       mutex_unlock(&lcdshadow_dev->lock);
>  }
>  

For privacy screens provided by x86 platform drivers this is -probably-
correct, but only so long as we're confident that the privacy screen is always
going to be controllable regardless of the power state of the actual LCD
panel.

I'd think we would need to handle suspend/resume in the atomic commit though
if we ever have to support systems where the two are dependent on one another,
but, that's a simple enough change to do later if it arises that I think we
can ignore it for now.

>  static int lcdshadow_read(struct seq_file *m)
>  {
> -       if (lcdshadow_state < 0) {
> +       if (!lcdshadow_dev) {
>                 seq_puts(m, "status:\t\tnot supported\n");
>         } else {
> -               seq_printf(m, "status:\t\t%d\n", lcdshadow_state);
> +               seq_printf(m, "status:\t\t%d\n", lcdshadow_dev->hw_state);
>                 seq_puts(m, "commands:\t0, 1\n");
>         }
>  
> @@ -9891,7 +9917,7 @@ static int lcdshadow_write(char *buf)
>         char *cmd;
>         int res, state = -EINVAL;
>  
> -       if (lcdshadow_state < 0)
> +       if (!lcdshadow_dev)
>                 return -ENODEV;
>  
>         while ((cmd = strsep(&buf, ","))) {
> @@ -9903,11 +9929,18 @@ static int lcdshadow_write(char *buf)
>         if (state >= 2 || state < 0)
>                 return -EINVAL;
>  
> -       return lcdshadow_set(state);
> +       mutex_lock(&lcdshadow_dev->lock);
> +       res = lcdshadow_set_sw_state(lcdshadow_dev, state);
> +       mutex_unlock(&lcdshadow_dev->lock);
> +
> +       drm_privacy_screen_call_notifier_chain(lcdshadow_dev);
> +
> +       return res;
>  }
>  
>  static struct ibm_struct lcdshadow_driver_data = {
>         .name = "lcdshadow",
> +       .exit = lcdshadow_exit,
>         .resume = lcdshadow_resume,
>         .read = lcdshadow_read,
>         .write = lcdshadow_write,
> @@ -10717,6 +10750,14 @@ static void tpacpi_driver_event(const unsigned int
> hkey_event)
>                 if (!atomic_add_unless(&dytc_ignore_event, -1, 0))
>                         dytc_profile_refresh();
>         }
> +
> +       if (lcdshadow_dev && hkey_event == TP_HKEY_EV_PRIVACYGUARD_TOGGLE) {
> +               mutex_lock(&lcdshadow_dev->lock);
> +               lcdshadow_get_hw_state(lcdshadow_dev);
> +               mutex_unlock(&lcdshadow_dev->lock);
> +
> +               drm_privacy_screen_call_notifier_chain(lcdshadow_dev);
> +       }
>  }
>  
>  static void hotkey_driver_event(const unsigned int scancode)

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

