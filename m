Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FF165AFAA
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 11:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4064F10E2FB;
	Mon,  2 Jan 2023 10:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABD510E2FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 10:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672655963; x=1704191963;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AuyX4kqGq2KHkAB24B/Fz+t3bOCfxJL6XLWUlHMkEjg=;
 b=O1k02aDnsx9RwSktkkn6EK/rnr5gA2vaVKGoIk0v4LzD7365OMXASUUf
 pQJl5T6UhFb3cyfgg5QWn+WOJ1NOBkKmw69RSLHJWmBRzBChPY8YurMy4
 /kZpIj4qBxrPsa4SxTaCll1KOgvqKUY2LsclLhyo6Obyy23Nl+AFvIn3V
 y8iuXg5g2XkV/4o06nGUgB3fyTVuVgKX1HtZRyPUQKwJ1IYLLb3+RA5Zu
 +Cs8a9vjxZu2/er/vHNq5uQ/vNk9t+9ISdMd5AkBJG2dl5ulJfdQoSaM2
 6okxYHTlGZ/JETncFqA+QnnAMFmsMFVJoWj1v/+Plw0SIj2BM8cuk5yz+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="383765137"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="383765137"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 02:39:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="761926894"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="761926894"
Received: from shoey-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.185])
 by fmsmga002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jan 2023 02:39:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87tu19z20l.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
 <20230102062005.720964-2-chaitanya.kumar.borah@intel.com>
 <87tu19z20l.fsf@intel.com>
Date: Mon, 02 Jan 2023 12:39:19 +0200
Message-ID: <87lemlz0dk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/quirks: Add quirk for 480MHz
 CDCLK step
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 02 Jan 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 02 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>> A new CDCLK step of 480MHz has been added on SKUs that has a
>> RPL-U device id. This is done to support 120Hz displays with
>> more efficiency.
>>
>> RPL-U device ids are currently added within the RPL-P sub
>> platform. It seems to be an overkill to add a separate sub
>> platform just to support this change. Therefore, quirks
>> are a good way to achieve the same.
>
> The thing is, this part is *not* a quirk. It's basic enabling for RPL-U.
>
> If you start conflating quirks and basic enabling to avoid overkill,
> you're eventually going to end up in all kinds of trouble with
> maintenance.

Please start off with adding RPL-U as a subplatform, and let's worry
about the CDCLK after that.

BR,
Jani.

>
>
> BR,
> Jani.
>
>>
>> BSpec: 55409
>>
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_quirks.c | 14 ++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>>  2 files changed, 15 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index 6e48d3bcdfec..0a30499835b3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -65,6 +65,16 @@ static void quirk_no_pps_backlight_power_hook(struct drm_i915_private *i915)
>>  	drm_info(&i915->drm, "Applying no pps backlight power quirk\n");
>>  }
>>  
>> +/*
>> + * A new step of 480MHz has been added on SKUs that have a RPL-U device id.
>> + * This particular step is to better support 120Hz panels.
>> + */
>> +static void quirk_480mhz_cdclk_step_hook(struct drm_i915_private *i915)
>> +{
>> +	intel_set_quirk(i915, QUIRK_480MHZ_CDCLK_STEP);
>> +	drm_info(&i915->drm, "Applying 480MHz CDCLK step quirk\n");
>> +}
>> +
>>  struct intel_quirk {
>>  	int device;
>>  	int subsystem_vendor;
>> @@ -199,6 +209,10 @@ static struct intel_quirk intel_quirks[] = {
>>  	/* ECS Liva Q2 */
>>  	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>>  	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>> +	/* RPL-U */
>> +	{ 0xA7A1, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook },
>> +	{ 0xA721, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook },
>> +	{ 0xA7A9, PCI_ANY_ID, PCI_ANY_ID, quirk_480mhz_cdclk_step_hook },
>>  };
>>  
>>  void intel_init_quirks(struct drm_i915_private *i915)
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
>> index 10a4d163149f..71e05684f5f4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
>> @@ -17,6 +17,7 @@ enum intel_quirk_id {
>>  	QUIRK_INVERT_BRIGHTNESS,
>>  	QUIRK_LVDS_SSC_DISABLE,
>>  	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>> +	QUIRK_480MHZ_CDCLK_STEP,
>>  };
>>  
>>  void intel_init_quirks(struct drm_i915_private *i915);

-- 
Jani Nikula, Intel Open Source Graphics Center
