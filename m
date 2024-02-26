Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE87867813
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 15:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9EF310F21A;
	Mon, 26 Feb 2024 14:20:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="df4Q8t5g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733FF10E28D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708957233; x=1740493233;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=STUqOJjTsQhDL3MNCg2wObGNagPPVEvjn6Gsc7Py8uk=;
 b=df4Q8t5gHvG2HwOMvJ0tcEqfh6zRQZfuV6Mq/Ow4D8A+oq/vulgK7ztO
 3NXPUYHebXWR/iak2dvEkU3cRvYRIebziaTwQMujtcn4GHsknSeJopSua
 HgIWGdrnxxZMeeYhKZEm4YcfcwgWHwDHRJhb4QLL9CfvvSiowCaRSDXno
 i5meS0aMddOU7MV75VxcoGtU9eXRZw9ACD0sLwdieqK8hgFg6V525y/Mf
 4kzK3e28RRK8M0mmqkMYMmbz33i9tYDfqc6feqVkW23gsuWXOANdnEjeO
 63FCgvve+7Dstp3ty6JSNxwn076crV8syd/+hLreuIhflYu+ICZ3dbO5b Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="20788081"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="20788081"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 06:20:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="37471377"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 06:20:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>, "Modem, Bhanuprakash"
 <bhanuprakash.modem@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
In-Reply-To: <b8f2bb3d-30fd-42f7-b120-af851f594225@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
 <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
 <b8f2bb3d-30fd-42f7-b120-af851f594225@intel.com>
Date: Mon, 26 Feb 2024 16:20:30 +0200
Message-ID: <87edczmhn5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 26 Feb 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 2/22/2024 11:27 AM, Golani, Mitulkumar Ajitkumar wrote:
>>
>>> -----Original Message-----
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>>> Bhanuprakash Modem
>>> Sent: Wednesday, February 21, 2024 4:42 PM
>>> To: intel-gfx@lists.freedesktop.org
>>> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
>>> Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
>>> i915_drrs_status
>>>
>>> If the connected panel supports both DRRS & PSR, driver gives preference to
>>> PSR ("DRRS enabled: no"). Even though the hardware supports DRRS, IGT
>>> treats ("DRRS enabled: yes") as not capable.
>>>
>>> Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so that
>>> IGT will read the DRRS capability as "DRRS capable: yes".
>>>
>>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
>>>   1 file changed, 6 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
>>> b/drivers/gpu/drm/i915/display/intel_drrs.c
>>> index 6282ec0fc9b4..169ef38ff188 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>>> @@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)  static
>>> int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)  {
>>>   	struct intel_crtc *crtc = m->private;
>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>   	const struct intel_crtc_state *crtc_state;
>>>   	int ret;
>>>
>>> @@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct
>>> seq_file *m, void *unused)
>>>
>>>   	mutex_lock(&crtc->drrs.mutex);
>>>
>>> +	seq_printf(m, "DRRS capable: %s\n",
>>> +		   str_yes_no(crtc_state->has_drrs ||
>>> +			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
>>> +			      intel_cpu_transcoder_has_m2_n2(i915,
>>> +crtc_state->cpu_transcoder)));

Why would "capability" look at ->has_drrs?

Why didn't anyone question the duplication of the conditions of what
"drrs capable" means?

And what *does* "drrs capable" mean here anyway? That the platform is
capable? But what if the display isn't capable?


BR,
Jani.



>>> +
>> Adding DRRS capable property to debugfs.
>>
>> Change LGTM
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>
>
> Thanks for the patch and review. Pushed to drm-intel-next.
>
> Regards,
>
> Ankit
>
>>>   	seq_printf(m, "DRRS enabled: %s\n",
>>>   		   str_yes_no(crtc_state->has_drrs));
>>>
>>> --
>>> 2.43.0

-- 
Jani Nikula, Intel
