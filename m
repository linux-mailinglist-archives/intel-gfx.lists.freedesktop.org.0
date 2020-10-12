Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 440AC28B122
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 11:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074F56E0CE;
	Mon, 12 Oct 2020 09:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B1B6E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 09:09:23 +0000 (UTC)
IronPort-SDR: w1st96hWHN2cZWiXHol2WilZbBSf+HvCUEqK/mwx7wXDwPH0YBOp9PbkB48Ng0v1BPjFHFIfRe
 GgeuDxyNtkIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="227356780"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="227356780"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 02:09:22 -0700
IronPort-SDR: w4aYr32z32iliPcvV9yPrwM0htx7dAEO0A9vyBsyUHqk/PGyxNBsDcoCgYclNAm0J9dRsqkrqS
 kaDA9WLFxIbA==
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="463034226"
Received: from chunt1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.170])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 02:09:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "20200828061941.17051-2-jani.nikula\@intel.com"
 <20200828061941.17051-2-jani.nikula@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar\, Uma" <uma.shankar@intel.com>
In-Reply-To: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
Date: Mon, 12 Oct 2020 12:09:17 +0300
Message-ID: <87362jdd4y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 12 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
> On Fri, Aug 28, 2020 at 06:19AM, Shankar Uma wrote:
>>> -----Original Message-----
>>> From: Jani Nikula <jani.nikula@intel.com>
>>> Sent: Friday, August 28, 2020 11:50 AM
>>> To: intel-gfx@lists.freedesktop.org
>>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
>>> <uma.shankar@intel.com>
>>> Subject: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for eDP, if
>>> available
>>>
>>> If a panel's EDID is broken, there may be an override EDID set in the ACPI
>>> OpRegion mailbox #5. Use it if available.
>>
>>Looks Good to me.
>>Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>>
>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index c57ac83bf563..d1307be196a2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct intel_dp
>>> *intel_dp,
>>>  goto out_vdd_off;
>>>  }
>>>
>>> +/* Set up override EDID, if any, from ACPI OpRegion */
>>> +intel_opregion_edid_override(intel_connector);
>>> +
>
> Customer report DUT still get EDID from eDP panel instead of mailbox #5.
> After some investigations, this change can retrieve EDID from mailbox #5 properly.
> But driver still used panel's EDID to enable eDP display. This is because of drm_get_edid()
> was executed after intel_opregion_edid_override(). drm_get_edid() return panel's EDID
> and overwrite mailbox #5's.

In recent kernels, drm_get_edid() respects EDID override, and calling
drm_get_edid() will return the override EDID from mailbox #5 instead of
retrieving the actual EDID.

Check the kernel version they're using and the drm_get_edid()
implementation.

BR,
Jani.


>
> We try to move drm_get_edid() before intel_opregion_edid_override().
> The test result is positive, mailbox #5 EDID will substitute for panel's.
> It seems we may need some additional change for this patch. Thanks!
>
> Best regards,
> Shawn
>
>>>  mutex_lock(&dev->mode_config.mutex);
>>>  edid = drm_get_edid(connector, &intel_dp->aux.ddc);
>>>  if (edid) {
>>> --
>>> 2.20.1

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
