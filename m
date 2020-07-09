Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5643721A038
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A723A6EA65;
	Thu,  9 Jul 2020 12:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089506EA65
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 12:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594298929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Sw4h1VDOl8CwWc9nGOYDPK6umJs5j7GJ55VZICvbj84=;
 b=Wv8aAunDwNpadMrwBO0TX6YsGOt7lK+jcfUmwskiyGjFBQcdhXIDx0L4Eg8dOXdRaPIcdV
 1UhdvSwV7vwCgHXyBFK5kCTgN8JD3NOHeBe9ePW2a+1ZGscZaobJO4/+AdJw13y09QsrgF
 IqVgnqL5AYy5H+QfksCOnO8Qrvupkkw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-pB3Sp-xIMPSGpkEDeZ_qdw-1; Thu, 09 Jul 2020 08:48:42 -0400
X-MC-Unique: pB3Sp-xIMPSGpkEDeZ_qdw-1
Received: by mail-wm1-f71.google.com with SMTP id y204so2057862wmd.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 05:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Sw4h1VDOl8CwWc9nGOYDPK6umJs5j7GJ55VZICvbj84=;
 b=Jzu4nUOzI18M8xj+juAKZmyxO2s5vqxZXIFXWZxx806z85nkxuoEB88Go1k8iO+lP/
 S7jtm16vb/NFOHo66d8/t8eOmleeTr3cBJJMuSYeHRSworL/7UpuQOOSDHaxrorKrRIa
 MkaRivKHJWowDLMuilmUFmJxrAQC9u3i7uKQ5VIPNxdD+cO54uLgtbeXvNsT4Uufmf97
 9IgEmrSr8vFfDnq5iAi+c3xpx8Qy2lbVOU4icUaaChvI1Gobm1LzRV4db9wY41yRCI7C
 osT1jtqdGh+EtGlO+2vsaKTlLcd0srfAJSzJYSgpw288J9PFuAFI+GWYjo84tqLWZz/c
 LD2Q==
X-Gm-Message-State: AOAM530zDTpljP8WRyhkh9xN6W3ZitRGab7JLo5BWCQ9T/ylkIeR6ti5
 KAxK16Az3Vk/fPpkn7wi50jAhO35w3ey/z4MmLVc3d24Z9fTjRvwDPRCDMhwS4D2CptwS/veIc5
 RWcyDUk0HjASpw0Jwwf3eo8M+cHyB
X-Received: by 2002:a5d:4bd2:: with SMTP id l18mr61510194wrt.119.1594298920019; 
 Thu, 09 Jul 2020 05:48:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyykSBBlsDhvJmHXBwB5SB2TpppsOf3lsI0x6uBCF+t7GybZy8Ho6i+YhM2HEHE2WNYvjxPRQ==
X-Received: by 2002:a5d:4bd2:: with SMTP id l18mr61510166wrt.119.1594298919699; 
 Thu, 09 Jul 2020 05:48:39 -0700 (PDT)
Received: from x1.localdomain ([2a0e:5700:4:11:334c:7e36:8d57:40cb])
 by smtp.gmail.com with ESMTPSA id r1sm5260141wrw.24.2020.07.09.05.48.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jul 2020 05:48:39 -0700 (PDT)
To: Alex Deucher <alexdeucher@gmail.com>
References: <20200708164335.25097-1-hdegoede@redhat.com>
 <CADnq5_NeJBbCFKR96DWbCQteaRPCmThwD7_2biy7vSb-MifD9A@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e6e73584-4e96-2250-6dc0-f3a26ee880fc@redhat.com>
Date: Thu, 9 Jul 2020 14:48:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CADnq5_NeJBbCFKR96DWbCQteaRPCmThwD7_2biy7vSb-MifD9A@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Sebastien Bacher <seb128@ubuntu.com>,
 David Airlie <airlied@linux.ie>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/8/20 11:25 PM, Alex Deucher wrote:
> On Wed, Jul 8, 2020 at 12:43 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi All,
>>
>> Here is the privacy-screen related code which we discussed a while ago.
>> This series consists of a number of different parts:
>>
>> 1. A new version of Rajat's privacy-screen connector properties patch,
>> this adds new userspace API in the form of new properties
>>
>> 2. Since on most devices the privacy screen is actually controlled by
>> some vendor specific ACPI/WMI interface which has a driver under
>> drivers/platform/x86, we need some "glue" code to make this functionality
>> available to KMS drivers. Patches 3-5 add a new privacy-screen class for
>> this, which allows non KMS drivers (and possibly KMS drivers too) to
>> register a privacy-screen device and also adds an interface for KMS drivers
>> to get access to the privacy-screen associated with a specific connector.
>> This is modelled similar to how we deal with e.g. PWMs and GPIOs in the
>> kernel, including separate includes for consumers and providers(drivers).
>>
>> 3. Some drm_connector helper functions to keep the actual changes needed
>> for this in individual KMS drivers as small as possible (patch 6).
>>
>> 4. Make the thinkpad_acpi code register a privacy-screen device on
>> ThinkPads with a privacy-screen (patches 7-8)
>>
>> 5. Make the i915 driver export the privacy-screen functionality through
>> the connector properties on the eDP connector.
> 
> Care to create a patch 10 for amdgpu?  Lenovo sells AMD thinkpads with
> a privacy screen as well, presumably it works
> the same way.

Yes the AMD based Thinkpads should work the same way.

We will need similar changes for amdgpu and very likely also for
nouveau. The problem is I don't really have hw to test this.

Do you have access to a recent thinkpad with amdgpu ? It does not need
to have a privacy screen, as long as it is new enough that the ACPI
tables have the GSSS and SSSS methods you can test by ignoring
the presence bit for the privacy-screen, I use this little change for
that:

 From 9438bababe77dfccbade5c2377bdc7d6a777a6c6 Mon Sep 17 00:00:00 2001
From: Hans de Goede <hdegoede@redhat.com>
Date: Wed, 27 May 2020 14:38:42 +0200
Subject: [PATCH] platform/x86: thinkpad_acpi: Hack to allow testing
  on devices without a privacy-screen

Hack to allow testing on devices without a privacy-screen.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
  drivers/gpu/drm/drm_privacy_screen_x86.c | 4 ++++
  drivers/platform/x86/thinkpad_acpi.c     | 4 ++--
  2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
index f486d9087819..87725766a90d 100644
--- a/drivers/gpu/drm/drm_privacy_screen_x86.c
+++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
@@ -41,7 +41,11 @@ static bool __init detect_thinkpad_privacy_screen(void)
  	if (ACPI_FAILURE(status))
  		return false;

+#if 1
+	return true;
+#else
  	return (output & 0x10000) ? true : false;
+#endif
  }

  static const struct arch_init_data arch_init_data[] __initconst = {
diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 1583c18f7f77..92aad746d1f8 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -9747,8 +9747,8 @@ static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
  	if (!acpi_evalf(lcdshadow_get_handle, &output, NULL, "dd", 0))
  		return -EIO;

-	if (!(output & 0x10000))
-		return 0;
+//	if (!(output & 0x10000))
+//		return 0;

  	lcdshadow_dev = drm_privacy_screen_register(&tpacpi_pdev->dev,
  						    &lcdshadow_ops);
-- 
2.26.2


So if you have a machine with an AMDGPU and with the mentioned ACPI methods,
then you should be able to implement this yourself. You can read/write the new
props under X11 with xrandr. And you monitor if the changes make it to the
hardware by doing:

cat /proc/acpi/ibm/lcdshadow

And you can simulate external changes (like through a hotkey handled by the embedded-controller) by doing:

echo 0 > /proc/acpi/ibm/lcdshadow
echo 1 > /proc/acpi/ibm/lcdshadow

When you do this you should see udev change events for the properties, you
can test for those by doing:

sudo udevadm monitor -u -p

###

With all that said, I can take a shot at blindly implementing this for amdgpu
but I would greatly prefer an actually tested patch, even if it is tested in
the way described above. When the patch is ready you can just send it to me
and I'll add my s-o-b and add it as patch 10 in the patch-set for the next
version.

Regards,

Hans


>> I was a bit in doubt if I should calls this series a RFC, or just call
>> it v1, since there is no real userspace code using this yet. It was
>> tested using xrandr property access and udevadm event monitoring.
>> I do expect / hope we will have patches for a userspace consumer of the
>> new properties (mutter) ready soon.
>>
>> But since the code is completely ready, including API documentation,
>> I've decided to just call this v1. Hopefully we can get patches for the
>> first userspace consumer of this ready during the review of this.
>>
>> Regards,
>>
>> Hans
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
