Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D234628CC27
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 13:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4584E6E2E3;
	Tue, 13 Oct 2020 11:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DA26E2E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 11:03:53 +0000 (UTC)
IronPort-SDR: TqvwlwSdMHMrwxUeb+m4MyeD8C8JgvOEpBoPHwZuXeKV2OHsi2O2/5iWSG6pVcrXlN2aHHmXrv
 74MOmQ4XabSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="230068856"
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="230068856"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:03:50 -0700
IronPort-SDR: VQHV11alZuk14YMD6AO9MlhoFDwdq5qVPG9aiO3Kzro0G5MyBM3F0neknVpOI1h1Wr/OllbRCz
 HJf4IA0HG/JQ==
X-IronPort-AV: E=Sophos;i="5.77,370,1596524400"; d="scan'208";a="463448366"
Received: from abarnicl-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.2.177])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 04:03:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "20200828061941.17051-2-jani.nikula\@intel.com"
 <20200828061941.17051-2-jani.nikula@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar\, Uma" <uma.shankar@intel.com>
In-Reply-To: <BY5PR11MB43075789F4800E9D04E2DA6DA3040@BY5PR11MB4307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
 <87362jdd4y.fsf@intel.com>
 <BY5PR11MB43075789F4800E9D04E2DA6DA3040@BY5PR11MB4307.namprd11.prod.outlook.com>
Date: Tue, 13 Oct 2020 14:03:45 +0300
Message-ID: <87sgaibd66.fsf@intel.com>
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

On Tue, 13 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
> On Mon, Oct 12, 2020 at 5:09 PM, Jani Nikula wrote:
>>On Mon, 12 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>>> On Fri, Aug 28, 2020 at 06:19AM, Shankar Uma wrote:
>>>>> -----Original Message-----
>>>>> From: Jani Nikula <jani.nikula@intel.com>
>>>>> Sent: Friday, August 28, 2020 11:50 AM
>>>>> To: intel-gfx@lists.freedesktop.org
>>>>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
>>>>> <uma.shankar@intel.com>
>>>>> Subject: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for
>>>>> eDP, if available
>>>>>
>>>>> If a panel's EDID is broken, there may be an override EDID set in
>>>>> the ACPI OpRegion mailbox #5. Use it if available.
>>>>
>>>>Looks Good to me.
>>>>Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>>>>
>>>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>>>>  1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index c57ac83bf563..d1307be196a2 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct
>>>>> intel_dp *intel_dp,  goto out_vdd_off;  }
>>>>>
>>>>> +/* Set up override EDID, if any, from ACPI OpRegion */
>>>>> +intel_opregion_edid_override(intel_connector);
>>>>> +
>>>
>>> Customer report DUT still get EDID from eDP panel instead of mailbox #5.
>>> After some investigations, this change can retrieve EDID from mailbox #5 properly.
>>> But driver still used panel's EDID to enable eDP display. This is
>>> because of drm_get_edid() was executed after
>>> intel_opregion_edid_override(). drm_get_edid() return panel's EDID and overwrite mailbox #5's.
>>
>>In recent kernels, drm_get_edid() respects EDID override, and calling
>>drm_get_edid() will return the override EDID from mailbox #5 instead of retrieving the actual EDID.
>>
>>Check the kernel version they're using and the drm_get_edid() implementation.
>>
>>BR,
>>Jani.
>>
>
> Just confirm customer is using kernel v5.8. Seems drm_edid.c already include
> the change for override_edid.
>
> BTW. override_edid should be "true" and used to over EDID in intel_opregion_edid_override() in patch 1. Right?
> But it is "false" in the patch 1.
>
> +connector->override_edid = false;
>


+
+	connector->override_edid = false;
+	ret = drm_connector_update_edid_property(connector, edid);
+	if (ret)
+		return;
+
+	connector->override_edid = true;
+	drm_dbg_kms(&i915->drm, "Using OpRegion EDID for [CONNECTOR:%d:%s]\n",
+		    connector->base.id, connector->name);


http://lore.kernel.org/r/20200831083657.15600-1-jani.nikula@intel.com

BR,
Jani.





> Best regards,
> Shawn
>
>>
>>>
>>> We try to move drm_get_edid() before intel_opregion_edid_override().
>>> The test result is positive, mailbox #5 EDID will substitute for panel's.
>>> It seems we may need some additional change for this patch. Thanks!
>>>
>>> Best regards,
>>> Shawn
>>>
>>>>>  mutex_lock(&dev->mode_config.mutex);
>>>>>  edid = drm_get_edid(connector, &intel_dp->aux.ddc);  if (edid) {
>>>>> --
>>>>> 2.20.1
>>
>>--
>>Jani Nikula, Intel Open Source Graphics Center
>>_______________________________________________
>>Intel-gfx mailing list
>>Intel-gfx@lists.freedesktop.org
>>https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
