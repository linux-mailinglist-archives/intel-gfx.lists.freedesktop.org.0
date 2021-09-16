Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA9C40D82D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 13:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170736EB7A;
	Thu, 16 Sep 2021 11:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D896EB7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 11:12:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="222578672"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222578672"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:12:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="545532300"
Received: from djustese-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.34.120])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:12:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "20210916102118.17356-1-shawn.c.lee\@intel.com"
 <20210916102118.17356-1-shawn.c.lee@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>, "Chiou\,
 Cooper" <cooper.chiou@intel.com>, "Tseng\, William" <william.tseng@intel.com>
In-Reply-To: <CO6PR11MB5651BAD4133E70B7A008B3CBA3DC9@CO6PR11MB5651.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
 <87h7ekx12o.fsf@intel.com>
 <CO6PR11MB5651BAD4133E70B7A008B3CBA3DC9@CO6PR11MB5651.namprd11.prod.outlook.com>
Date: Thu, 16 Sep 2021 14:12:29 +0300
Message-ID: <878rzwwz8i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: unregister gmbus if LFP
 display was MIPI panel
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

On Thu, 16 Sep 2021, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
> On Thu, 16 Sep 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>On Thu, 16 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>> Gmbus driver would setup all Intel i2c GMBuses. But DDC bus may 
>>> configured as gpio and reserved for MIPI driver to control panel power 
>>> on/off sequence.
>>>
>>> Using i2c tool to communicate to peripherals via i2c interface 
>>> reversed for gmbus(DDC). There will be some high/low pulse appear on 
>>> DDC SCL and SDA (might be host sent out i2c slave address). MIPI panel 
>>> would be impacted due to unexpected signal then caused abnormal 
>>> display or shut down issue.
>>
>>Just a quick reply:
>>
>>So I don't know off the bat what the right solution is, but it's very obvious to me that we absolute can't go deleting gmbus adapters from DSI code.
>>
>>
>>BR,
>>Jani.
>>
>
> Create a new function in gmbus driver that allow to remove a given gmbus adapter. And DSI driver used it to unregister particular gmbus.
> It looks to me more reasonable for DSI and gmbus driver. What do you think?

No, I don't think that's good enough either. We probably need to figure
this out up front in intel_bios.c. You see, if a non-DSI port is already
using the pin, you'll end up removing it under it. So I think you'd need
to prevent the gmbus pin from being registered and the non-DSI port
being used.

BR,
Jani.

>
> Best regards,
> Shawn
>
>>>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>> Cc: William Tseng <william.tseng@intel.com>
>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++++++++
>>>  1 file changed, 14 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c 
>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> index 060bc8fb0d30..d2504e291fcb 100644
>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> @@ -1999,6 +1999,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>>  	struct intel_connector *intel_connector;
>>>  	struct drm_connector *connector;
>>>  	struct drm_display_mode *fixed_mode;
>>> +	struct intel_gmbus *bus;
>>>  	enum port port;
>>>  
>>>  	if (!intel_bios_is_dsi_present(dev_priv, &port)) @@ -2092,6 +2093,19 
>>> @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>>  	icl_dphy_param_init(intel_dsi);
>>>  
>>>  	icl_dsi_add_properties(intel_connector);
>>> +
>>> +	/*
>>> +	 * DDC bus may configured as gpio and reserved for MIPI driver
>>> +	 * to control panel power on/off sequence. so, unregister gmbus
>>> +	 * if MIPI was LFP display.
>>> +	 */
>>> +	bus = &dev_priv->gmbus[GMBUS_PIN_1_BXT];
>>> +	i2c_del_adapter(&bus->adapter);
>>> +
>>> +	if (dev_priv->vbt.dsi.config->dual_link) {
>>> +		bus = &dev_priv->gmbus[GMBUS_PIN_2_BXT];
>>> +		i2c_del_adapter(&bus->adapter);
>>> +	}
>>>  	return;
>>>  
>>>  err:
>>
>>--
>>Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
