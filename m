Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84751340E6A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 20:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F397C6E0F5;
	Thu, 18 Mar 2021 19:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5151A6E0F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 19:41:06 +0000 (UTC)
IronPort-SDR: yVH+VnQ5465IVj5FrWhUEpVYsR8DH7PWHD2e+TMT0Xj1sVsfapMz1Xttj+bJJEXWZlwoVBpyGF
 QR2sIezy7LJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="253766025"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="253766025"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 12:41:05 -0700
IronPort-SDR: hT95NXQAQO8t2wVgqX5OJ84mYzrldA2w7fadnV7yz2bjJq8BKLeJPoFNwKk2IPQKYRzuOyrzl0
 4X8ehkTIiEQA==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="450600693"
Received: from mhammerv-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.154.30])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 12:41:04 -0700
Date: Thu, 18 Mar 2021 12:41:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210318194104.5tdigypolqtpepra@ldmartin-desk2>
References: <20210213190511.1017088-1-lucas.demarchi@intel.com>
 <20210213190511.1017088-2-lucas.demarchi@intel.com>
 <874kidd3eh.fsf@intel.com>
 <20210215162653.sarercr3qcgo5hed@ldmartin-desk1>
 <87sg5vbxn8.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sg5vbxn8.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: move vbt check to
 intel_ddi_init()
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

On Tue, Feb 16, 2021 at 09:50:03PM +0200, Jani Nikula wrote:
>On Mon, 15 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Feb 15, 2021 at 12:35:50PM +0200, Jani Nikula wrote:
>>>On Sat, 13 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On intel_ddi_init() we already check VBT if the port supports HDMI/DP
>>>> and bail out otherwise. Instad of checking if a single port is present
>>>> using VBT in intel_display.c, move the stronger check to
>>>> intel_ddi_init() and return early in case it's not supported.  There
>>>> would be no way intel_bios_* would report support for hdmi/dp if the
>>>> port isn't present so this should cause no regressions for other
>>>> platforms.
>>>
>>>Sorry, but this will regress machines that have no VBT.
>>
>> I missed that init_vbt_missing_defaults() also sets
>> the supports_*.
>>
>>>
>>>I've been thinking about creating fake child devices for that case to
>>>reduce the exceptions.
>>
>> Adding a fake child would indeed be a good option. Are you going to
>> implement that soon or should I?
>
>I'm working on it. Got a bit carried away with what I've had in mind for
>ages regarding some other refactoring (e.g. getting rid of
>i915->vbt.ddi_port_info[] altogether in order to bring pre- and post-ddi
>platforms closer together). I'll try to get a smaller set ready first.

now that those patches are applied, can you take a look in these?

thanks
Lucas De Marchi

>
>BR,
>Jani.
>
>
>>
>> thanks
>> Lucas De Marchi
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>
>>>
>>>>
>>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++++++
>>>>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
>>>>  2 files changed, 13 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> index 3b97c0091812..1235be0ba5d1 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>>> @@ -3972,6 +3972,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>>>>  	bool init_hdmi, init_dp;
>>>>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>>>>
>>>> +	if (!intel_bios_is_port_present(dev_priv, port)) {
>>>> +		drm_dbg_kms(&dev_priv->drm,
>>>> +			    "VBT says port %c is not present, respect it\n",
>>>> +			    port_name(port));
>>>> +		return;
>>>> +	}
>>>> +
>>>>  	/*
>>>>  	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
>>>>  	 * have taken over some of the PHYs and made them unavailable to the
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 23ec68498800..7aaf7a29d493 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -11904,13 +11904,13 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>>>  		intel_ddi_init(dev_priv, PORT_C);
>>>>  		intel_ddi_init(dev_priv, PORT_D);
>>>>  		intel_ddi_init(dev_priv, PORT_E);
>>>> +
>>>>  		/*
>>>> -		 * On some ICL SKUs port F is not present. No strap bits for
>>>> -		 * this, so rely on VBT.
>>>> -		 * Work around broken VBTs on SKUs known to have no port F.
>>>> +		 * On some ICL SKUs port F is not present, but broken VBTs mark
>>>> +		 * the port as present. Only try to initialize port F for the
>>>> +		 * SKUs that may actually have it.
>>>>  		 */
>>>> -		if (IS_ICL_WITH_PORT_F(dev_priv) &&
>>>> -		    intel_bios_is_port_present(dev_priv, PORT_F))
>>>> +		if (IS_ICL_WITH_PORT_F(dev_priv))
>>>>  			intel_ddi_init(dev_priv, PORT_F);
>>>>
>>>>  		icl_dsi_init(dev_priv);
>>>> @@ -11964,10 +11964,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>>>  		/*
>>>>  		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
>>>>  		 */
>>>> -		if (IS_GEN9_BC(dev_priv) &&
>>>> -		    intel_bios_is_port_present(dev_priv, PORT_E))
>>>> +		if (IS_GEN9_BC(dev_priv))
>>>>  			intel_ddi_init(dev_priv, PORT_E);
>>>> -
>>>>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>>>>  		int found;
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
