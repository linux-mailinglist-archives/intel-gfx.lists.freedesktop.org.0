Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09C360D7DE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 01:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6190F10E1A0;
	Tue, 25 Oct 2022 23:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5FF10E1A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 23:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666740450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=puUdXLz/uC3vdYW/XXAB/H3hdF0sICpu5CsGDgg4XaA=;
 b=LYkbcRX7ycgCigfQu88svGVoFxkQJjDkgiCJPYMFLMJUxeWAKovPGx5oH9wJqIAFwl6WHG
 FvqBlLW4XSBkz6cgLSUKB7eTQ2AcBO7vBRy6gbTlQUGRAQ1zNpXOAoxH9OJXppREKULB+2
 o4HyocFKyC5DPzdXzZSb8Rmpb9jmWM8=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-607-qw7gFV_CNViglNOFn9_fwQ-1; Tue, 25 Oct 2022 19:27:29 -0400
X-MC-Unique: qw7gFV_CNViglNOFn9_fwQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 q20-20020a056402519400b004613ae68b7bso12366979edd.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 16:27:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=puUdXLz/uC3vdYW/XXAB/H3hdF0sICpu5CsGDgg4XaA=;
 b=IKj2dniiRajBrSo7bhTZVyMsQYTYY4TJPHWvIsh6CYH7qo9EoeNtn6xiqOYYVyK9cG
 5adW83WQAJLzF5gfzbX/DWHC0irqAoT3+0Ft4ddycykZJGiK1MT+jRdtl5L54TnSpBfa
 5Vwx4Ae2mzBH5C08QPlgXn5E+Wd8PnzmNLgJB46R9SAtK/P5DM5NYumbroZPVn8kBTOV
 dD9maXuubqO6a0mp4DjEELXMID+Ab6Fttec47d5XVgRwGMYlTdOM9WiO6wDqQgEUxR87
 naIDh1e2giwHXgsmhbm3Ojeiyj9/sjoVf1NSwTy6g9PbwBAsBzn529mcQnzOcmocWqzd
 PSPg==
X-Gm-Message-State: ACrzQf3KChR7OsacE912R/YaIHv2kU9WvC4K1RVC1sEMJARGja/MU8Aj
 C/IRNUzlKld9disDYXbwFlG1YcwbdhAAG5Fd1PP2wIv9vXJA3+TCV7USMhztwTelF+7Ru48caOf
 1+5XWG/2G70BqbY0UVyOvYAA7xxlq
X-Received: by 2002:a17:907:9807:b0:797:a5ba:1327 with SMTP id
 ji7-20020a170907980700b00797a5ba1327mr27576676ejc.274.1666740448393; 
 Tue, 25 Oct 2022 16:27:28 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5R43xfVrJF6JVMO4P0phNahk3Rz3L+gJ4dd3zlk/b6TqQ72C2s9IHCa/K6/cirQE5hUnjRqA==
X-Received: by 2002:a17:907:9807:b0:797:a5ba:1327 with SMTP id
 ji7-20020a170907980700b00797a5ba1327mr27576630ejc.274.1666740448071; 
 Tue, 25 Oct 2022 16:27:28 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 d20-20020a17090648d400b007867dcd3f15sm2039899ejt.104.2022.10.25.16.27.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Oct 2022 16:27:26 -0700 (PDT)
Message-ID: <cb5add36-c13c-ccd5-1b4b-71b45163a170@redhat.com>
Date: Wed, 26 Oct 2022 01:27:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Matthew Garrett <mjg59@srcf.ucam.org>
References: <20220825143726.269890-1-hdegoede@redhat.com>
 <20220825143726.269890-3-hdegoede@redhat.com>
 <f914ceb3-94bd-743c-f8b6-0334086e731a@gmail.com>
 <42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com>
 <20221024203057.GA28675@srcf.ucam.org>
 <8f53b8b6-ead2-22f5-16f7-65b31f7cc05c@redhat.com>
 <20221025193248.GA21457@srcf.ucam.org>
 <144cd47e-42dc-2b84-1a90-ea5e080e08a3@redhat.com>
 <20221025204043.GA23306@srcf.ucam.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221025204043.GA23306@srcf.ucam.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 02/31] drm/i915: Don't register backlight
 when another backlight should be used (v2)
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
Cc: Pan@freedesktop.org, Karol Herbst <kherbst@redhat.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, amd-gfx@lists.freedesktop.org,
 linux-acpi@vger.kernel.org, Ben Skeggs <bskeggs@redhat.com>,
 David Airlie <airlied@redhat.com>, Len Brown <lenb@kernel.org>,
 Daniel Dadap <ddadap@nvidia.com>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Mark Gross <markgross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Xinhui <Xinhui.Pan@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/25/22 22:40, Matthew Garrett wrote:
> On Tue, Oct 25, 2022 at 10:25:33PM +0200, Hans de Goede wrote:
> 
>> Having the native driver come and then go and be replaced
>> with the vendor driver would also be quite inconvenient
>> for these planned changes.
> 
> I understand that it would be inconvenient, but you've broken existing 
> working setups.

I fully acknowledge that I have broken existing working setups
and I definitely want to see this fixed before say 6.1-rc6!

I'm not convinced (at all) that any solutions which re-introduce
acpi_video_get_backlight_type() return-s value changing
half way the boot, with some backlight interface getting
registered and then unregistered again later because
it turns out to be the wrong one is a good fix here.

The whole goal of the refactor was to leave these sorts
of shenanigans behind us.

>> Can you perhaps explain a bit in what way your laptop
>> is weird ?
> 
> It's a Chinese replacement motherboard for a Thinkpad X201, running my 
> own port of Coreboot. Its DMI strings look like an actual Thinkpad in 
> order to ensure that thinkpad_acpi can bind for hotkey suport, so it's 
> hard to quirk. It'll actually be fixed by your proposed patch to fall 
> back to native rather than vendor, but that patch will break any older 
> machines that offer a vendor interface and don't have the native control 
> hooked up (pretty sure at least the Thinkpad X40 falls into that 
> category).

So looking at:

https://review.coreboot.org/plugins/gitiles/coreboot/+/refs/heads/master/src/mainboard/51nb/x210/acpi/graphics.asl

this code should actually set the ACPI_VIDEO_BACKLIGHT flag:
drivers/acpi/scan.c:

static acpi_status
acpi_backlight_cap_match(acpi_handle handle, u32 level, void *context,
                          void **return_value)
{
        long *cap = context;

        if (acpi_has_method(handle, "_BCM") &&
            acpi_has_method(handle, "_BCL")) {
                acpi_handle_debug(handle, "Found generic backlight support\n");
                *cap |= ACPI_VIDEO_BACKLIGHT;
                /* We have backlight support, no need to scan further */
                return AE_CTRL_TERMINATE;
        }
        return 0;
}

What does seem to be missing compared to a "normal" DSDT
is a call to _OSI("Windows 2012") so I would expect this code
in acpi_video_get_backlight_type():

        /* On systems with ACPI video use either native or ACPI video. */
        if (video_caps & ACPI_VIDEO_BACKLIGHT) {
                /*
                 * Windows 8 and newer no longer use the ACPI video interface,
                 * so it often does not work. If the ACPI tables are written
                 * for win8 and native brightness ctl is available, use that.
                 *
                 * The native check deliberately is inside the if acpi-video
                 * block on older devices without acpi-video support native
                 * is usually not the best choice.
                 */
                if (acpi_osi_is_win8() && native_available)
                        return acpi_backlight_native;
                else
                        return acpi_backlight_video;
        }

To enter the "return acpi_backlight_video" path since acpi_osi_is_win8()
will return false.

And then the ACPI backlight methods from:
https://review.coreboot.org/plugins/gitiles/coreboot/+/refs/heads/master/src/mainboard/51nb/x210/acpi/graphics.asl

should get called when changing the backlight brightness,
so assuming that those methods work then things should work fine.

What does "ls /sys/class/backlight" output on the X210 / NB51 board
with a 6.0 kernel? And what does it output with the 6.1-rc? kernels?

IOW which backlight device / control method is being selected
and which one do you want / which one(s) do actually work?

I have been thinking about maybe doing something with 
a dmi_get_bios_year() check (see below), but that will cause
native to get prefered over vendor on old ThinkPads with
coreboot (and thus a new enough year in DMI_BIOS_DATE), which
will likely break backlight control there (if i915 offers
backlight control on those that is).

Also I wonder if it would be possible to set DMI_BIOS_VENDOR
to "Coreboot" so that we can use that? Note that thinkpad_acpi
does not care about the DMI_BIOS_VENDOR value, at least
not on models which start their DMI_PRODUCT_VERSION with
either "ThinkPad" or "Lenovo".

###

Looking more at this I notice that coreboot has a
drivers_intel_gma_displays_ssdt_generate() which seems to
at least always generate ACPI video bus ASL including
backlight control bits.

So the only reason why the current heurstics are not
returning native is the acpi_osi_is_win8() check.

So maybe that beeds to become:

                if ((acpi_osi_is_win8() || dmi_get_bios_year() >= 2018) && native_available)
                        return acpi_backlight_native;
                else
                        return acpi_backlight_video;

Although I think that will result in the same behavior
as my patch below, and then my patch below would be cleaner...

###

Also note that there actually already is a DMI quirk for the X201s,
forcing ACPI video backlight control there. This is not strictly
necessary, but when we first started using native by default on
(back then) newer laptops some users of script everything yourself
window-managers like i3 complained that they were relying on
the in kernel handling of brightness key presses, which only works
when using the acpi backlight control method...

If that quirk matches your device then fixing
the acpi_video_get_backlight_type() heuristics is not going to
help. In that case we might decide to just drop the quirk though,
since it was never really necessary in the first place; or change
it to native, which may also help the X210 case?

Regards,

Hans



From 31fa1f5e60b32a5e239023a2f0f5a6d457175e5a Mon Sep 17 00:00:00 2001
From: Hans de Goede <hdegoede@redhat.com>
Date: Tue, 25 Oct 2022 20:38:56 +0200
Subject: [PATCH] ACPI: video: Fix acpi_video_get_backlight_type() on coreboot
 laptops

On laptops flashed with Coreboot the ACPI tables will often not have
ACPI Video Bus backlight control, which was causing
acpi_video_get_backlight_type() to return vendor even though
GPU native backlight control is available and should be used.

Rework acpi_video_get_backlight_type() so as to not rely on
the presence of ACPI Video Bus backlight control to decide if
native backlight control should be used.

Note this may break things on old laptops where the vendor interface
should actually be used, in case these have been flashed with Coreboot
causing their BIOS-date year to match the check.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/video_detect.c | 31 +++++++++++--------------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
index 9cd8797d12bb..2fe0fd22a7ac 100644
--- a/drivers/acpi/video_detect.c
+++ b/drivers/acpi/video_detect.c
@@ -718,30 +718,21 @@ static enum acpi_backlight_type __acpi_video_get_backlight_type(bool native)
 	if (apple_gmux_present())
 		return acpi_backlight_apple_gmux;
 
-	/* On systems with ACPI video use either native or ACPI video. */
-	if (video_caps & ACPI_VIDEO_BACKLIGHT) {
-		/*
-		 * Windows 8 and newer no longer use the ACPI video interface,
-		 * so it often does not work. If the ACPI tables are written
-		 * for win8 and native brightness ctl is available, use that.
-		 *
-		 * The native check deliberately is inside the if acpi-video
-		 * block on older devices without acpi-video support native
-		 * is usually not the best choice.
-		 */
-		if (acpi_osi_is_win8() && native_available)
-			return acpi_backlight_native;
-		else
-			return acpi_backlight_video;
-	}
-
 	/*
-	 * Chromebooks that don't have backlight handle in ACPI table
-	 * are supposed to use native backlight if it's available.
+	 * On older systems the backlight was typically connected to the EC
+	 * rather then to the GPU, so GPU native control may not work there.
+	 * Prefer native on devices designed for Windows 8+, Chromebooks and
+	 * laptops with a BIOS from 2018 or later (for misc. Coreboot models).
 	 */
-	if (google_cros_ec_present() && native_available)
+	if (native_available && (acpi_osi_is_win8() ||
+				 google_cros_ec_present() ||
+				 dmi_get_bios_year() >= 2018))
 		return acpi_backlight_native;
 
+	/* Use the ACPI video interface if available */
+	if (video_caps & ACPI_VIDEO_BACKLIGHT)
+		return acpi_backlight_video;
+
 	/* No ACPI video (old hw), use vendor specific fw methods. */
 	return acpi_backlight_vendor;
 }
-- 
2.37.3

