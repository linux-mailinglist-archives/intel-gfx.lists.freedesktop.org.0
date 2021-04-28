Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A187736DCCE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 18:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586D06E284;
	Wed, 28 Apr 2021 16:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08946E284
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 16:16:55 +0000 (UTC)
IronPort-SDR: a4WYmeZW4b6fYUJlXHMqIaP9KFGsI5OoIGqkXFX+a0v6r1StUjTlhJZDn4m7AqFtg5cO77Fttn
 jCDYjmUTdytw==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="176261996"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="176261996"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 09:16:54 -0700
IronPort-SDR: VyNa7EBENyPnpzc2kXFShf/l6303BeHZIaUAGK9Xd8wuHEqDRr+MW/PBUobg6xDwWX97Yfz2Ub
 riK4USweCrJw==
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="455125612"
Received: from gtal-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.5.96])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 09:16:53 -0700
Date: Wed, 28 Apr 2021 09:16:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210428161653.2qknf4yuec6atlzc@ldmartin-desk2>
References: <20210427230756.2847495-1-lucas.demarchi@intel.com>
 <20210427230756.2847495-5-lucas.demarchi@intel.com>
 <87lf9251t6.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lf9251t6.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: hide workaround
 for broken vbt in intel_bios.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 10:02:45AM +0300, Jani Nikula wrote:
>On Tue, 27 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> Instead of poluting the normal code path in intel_display.c, make
>> intel_bios.c handle the brokenness of the VBT.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c    | 15 +++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++------------
>>  2 files changed, 17 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index befab891a6b9..e9f828452412 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1852,6 +1852,14 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
>>  		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>>  }
>>
>> +static bool skip_broken_vbt(struct drm_i915_private *i915, enum port port)
>> +{
>> +	if (port == PORT_F && (IS_ICELAKE(i915) || IS_CANNONLAKE(i915)))
>> +		return !IS_ICL_WITH_PORT_F(i915) && !IS_CNL_WITH_PORT_F(i915);
>> +
>> +	return false;
>> +}
>> +
>>  static void parse_ddi_port(struct drm_i915_private *i915,
>>  			   struct intel_bios_encoder_data *devdata)
>>  {
>> @@ -1865,6 +1873,13 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>>  	if (port == PORT_NONE)
>>  		return;
>>
>> +	if (skip_broken_vbt(i915, port)) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "VBT reports port %c as supported, but that can't be true: skipping\n",
>> +			    port_name(port));
>> +		return;
>> +	}
>> +
>>  	info = &i915->vbt.ddi_port_info[port];
>>
>>  	if (info->devdata) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 55f8f2ceada2..64a2a3b9a480 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -10868,15 +10868,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>  		intel_ddi_init(dev_priv, PORT_C);
>>  		intel_ddi_init(dev_priv, PORT_D);
>>  		intel_ddi_init(dev_priv, PORT_E);
>> -
>> -		/*
>> -		 * On some ICL SKUs port F is not present, but broken VBTs mark
>> -		 * the port as present. Only try to initialize port F for the
>> -		 * SKUs that may actually have it.
>> -		 */
>> -		if (IS_ICL_WITH_PORT_F(dev_priv))
>> -			intel_ddi_init(dev_priv, PORT_F);
>> -
>> +		intel_ddi_init(dev_priv, PORT_F);
>>  		icl_dsi_init(dev_priv);
>>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>>  		intel_ddi_init(dev_priv, PORT_A);
>> @@ -10889,9 +10881,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>  		intel_ddi_init(dev_priv, PORT_C);
>>  		intel_ddi_init(dev_priv, PORT_D);
>>  		intel_ddi_init(dev_priv, PORT_E);
>> -
>> -		if (IS_CNL_WITH_PORT_F(dev_priv))
>> -			intel_ddi_init(dev_priv, PORT_F);
>> +		intel_ddi_init(dev_priv, PORT_E);
>
>Whoops, not PORT_E, but I guess you noticed. :)

yeah... I had a typo there. I was surprised when I saw CI failing in a
test with PORT_E. After comparing the output when it works vs when I
broke, it was easy to notice what happed.

saved by CI here.

thanks
Lucas De Marchi

>
>
>>  	} else if (HAS_DDI(dev_priv)) {
>>  		u32 found;
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
