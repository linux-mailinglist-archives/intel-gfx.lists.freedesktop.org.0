Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABD060D412
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 20:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1563F10E43D;
	Tue, 25 Oct 2022 18:51:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A4610E424
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 18:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666723866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X4AgKJfraUOsPz3IaqgXDaTFp4AXZH1ZD31CAhgpw7g=;
 b=S6HAhqxOs/oIwW0SUR4hQr55nXtsLUDZ35yZLQiF4WxzxQPdRsRVfq7DmxszMR0sS2ciTy
 4A5mr6DEs2PePX98GaSo+9EoxfObHDiPSqWirL7Fb3oxBYIbJP9ew0Hgp1Pyfis3jV3083
 WLVA1uEI6eSBUauwXNYjXJkj2x3DEb8=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-664-q_MCjc3XOOqAOvubJzHHEA-1; Tue, 25 Oct 2022 14:51:04 -0400
X-MC-Unique: q_MCjc3XOOqAOvubJzHHEA-1
Received: by mail-ed1-f72.google.com with SMTP id
 z11-20020a056402274b00b00461dba91468so4847636edd.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 11:51:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X4AgKJfraUOsPz3IaqgXDaTFp4AXZH1ZD31CAhgpw7g=;
 b=jF57yuHff3Ilo/UEpq1aStkuJdMgJLFY9xljh6dnN2VfYeTIoAl43AzYTQCgqf9Tfv
 CnPtuZ/nXSp87Ao8c5o2syI4TSvnONfwS/Piu06m7wYCsEA2Rwz8UxO04410HhElwzn9
 lfL+IeDG3BfqGxQzpX5lfajvAAacGb7DoP+SFYvEZGuW1xWt3R9RnFwPV4NV04rdJnAR
 U+i4Ng0gyJ8hixgAGd3aPM2YN/6sN8LxGxTxq9ebTdCsudpaeS3Ng8ZMJP9kAy5i3M+I
 ETN847UYiajUT9/3bYtOm0i764OibWLMngZUTja1dT3ejw1sWuh4VvNs2iYEYTsgV8dh
 B4FA==
X-Gm-Message-State: ACrzQf0IzI5TTVsKp2A0OcCKwFSNpZ5J9eTZFhPsa1otdJx6VC2HTlhz
 +6iVWh8jXIqfLCX0BiCnaDEgBWBIN2IoALGuubdBuNOpRki8buCD4YC7Lv5aMpeQ76nI1/aYhJc
 qQ7g0J8URa+E5BSxzQScfve8GRNMP
X-Received: by 2002:a17:907:8a24:b0:795:bb7d:643b with SMTP id
 sc36-20020a1709078a2400b00795bb7d643bmr28237620ejc.115.1666723863769; 
 Tue, 25 Oct 2022 11:51:03 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7+1cKY8mWLWZ9ZOJBRjb26mTKGhU8d2NvRoh1pdtCnyY5nFv4Rr2Wf3KkTj2dkWsEMUnUIxA==
X-Received: by 2002:a17:907:8a24:b0:795:bb7d:643b with SMTP id
 sc36-20020a1709078a2400b00795bb7d643bmr28237601ejc.115.1666723863548; 
 Tue, 25 Oct 2022 11:51:03 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 y18-20020a17090668d200b0079e11b8e891sm1802322ejr.125.2022.10.25.11.51.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Oct 2022 11:51:02 -0700 (PDT)
Message-ID: <8f53b8b6-ead2-22f5-16f7-65b31f7cc05c@redhat.com>
Date: Tue, 25 Oct 2022 20:50:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Matthew Garrett <mjg59@srcf.ucam.org>
References: <20220825143726.269890-1-hdegoede@redhat.com>
 <20220825143726.269890-3-hdegoede@redhat.com>
 <f914ceb3-94bd-743c-f8b6-0334086e731a@gmail.com>
 <42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com>
 <20221024203057.GA28675@srcf.ucam.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221024203057.GA28675@srcf.ucam.org>
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

On 10/24/22 22:30, Matthew Garrett wrote:
> On Tue, Sep 27, 2022 at 01:04:52PM +0200, Hans de Goede wrote:
> 
>> So to fix this we need to make acpi_video_get_backlight_type()
>> return native on the Acer Chromebook Spin 713.
> 
> Isn't the issue broader than that? Unless the platform is Windows 8 or 
> later, we'll *always* (outside of some corner cases) return 
> acpi_backlight_vendor if there's no ACPI video interface. This is broken 
> for any platform that implements ACPI but relies on native video 
> control, which is going to include a range of Coreboot platforms, not 
> just Chromebooks.

That is a valid point, but keep in mind that this is only used on ACPI
platforms and then only on devices with a builtin LCD panel and then
only by GPU drivers which actually call acpi_video_get_backlight_type(),
so e.g. not by all the ARM specific display drivers.

So I believe that Chromebooks quite likely are the only devices with
this issue.

We could do something like the patch which I have pasted at the end
of this email, but as its commit message notes there is a real
good chance this will cause regressions on some laptops.

So if we ever decide to go with something like the patch below,
I think we should at a minimum wait for the next cycle with that,
because 6.1 already significantly reworks the ACPI backlight
detect handling and I don't want to throw this into the mix
on top of those changes.

> I think for this to work correctly you need to have 
> the infrastructure be aware of whether or not a vendor interface exists, 
> which means having to handle cleanup if a vendor-specific module gets 
> loaded later.

Getting rid of the whole ping-ponging of which backlight drivers
get loaded during boot was actually one of the goals of the rework
which landed in 6.1 this actually allowed us to remove some quirks
because some hw/firmware did not like us changing our mind and
switching backlight interfaces after first poking another one.
So we definitely don't want to go back to the ping-pong thing.

Regards,

Hans



>From 67ee5d7163e33e65dca06887befd0639b0345883 Mon Sep 17 00:00:00 2001
From: Hans de Goede <hdegoede@redhat.com>
Date: Tue, 25 Oct 2022 20:38:56 +0200
Subject: [PATCH] ACPI: video: Simplify __acpi_video_get_backlight_type()

Simplify __acpi_video_get_backlight_type() removing a nested if which
makes the flow harder to follow.

Note this will cause a behavior change on devices which do not have
ACPI video support but do have both a vendor and native backlight
driver available. This change will cause these devices to switch
from vendor to native.

This may not be desirable in all cases, this is likely to happen
on significantly older laptops, where there very well might be
cases where the native driver does not work because the backlight is
controlled by the EC.

This removes the need for the special handling of Chromebooks,
these will now hit the if (native_available) return acpi_backlight_native;
path.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/acpi/video_detect.c | 36 +++++++++++-------------------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
index 9cd8797d12bb..9bd85b159e02 100644
--- a/drivers/acpi/video_detect.c
+++ b/drivers/acpi/video_detect.c
@@ -668,11 +668,6 @@ static const struct dmi_system_id video_detect_dmi_table[] = {
 	{ },
 };
 
-static bool google_cros_ec_present(void)
-{
-	return acpi_dev_found("GOOG0004");
-}
-
 /*
  * Determine which type of backlight interface to use on this system,
  * First check cmdline, then dmi quirks, then do autodetect.
@@ -718,30 +713,21 @@ static enum acpi_backlight_type __acpi_video_get_backlight_type(bool native)
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
+	 * Pre Windows 8, Windows uses ACPI video, so prefer that over native
+	 * on pre-win8 systems (Windows 8+ no longer uses ACPI video).
 	 */
-	if (google_cros_ec_present() && native_available)
+	if ((video_caps & ACPI_VIDEO_BACKLIGHT) && !acpi_osi_is_win8())
+		return acpi_backlight_video;
+
+	/* Use native backlight control if available */
+	if (native_available)
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


