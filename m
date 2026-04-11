Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 88chBkGp2mmO4wgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 22:04:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587CA3E197F
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 22:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13BE10E15A;
	Sat, 11 Apr 2026 20:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqHa0XJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18FE110E15A
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2026 20:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775937853; x=1807473853;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=5OQMOFcityZtxsyg2zCreLFzFb5GxhXfF/xClLohtqA=;
 b=SqHa0XJ6FI1zHZBGqo3kiD6BKsw4FcPzFgdLBzAKC1CGOy0GDrrIcFrr
 O3CsXapn6GWl/+8aKszjPPyBIQ+khKjnGlCNcDbXl6QljOfZHTuqgyxT/
 p02qxlNfff/lvQULT5FIY9lIOA6o4oL2b6RRHa9D/yprsxVF6mwV0FNo+
 KZ0ynWtle+EkSleUU/OchBDmqlIctva8feUeJdwECLnNfJpUaJi9JRyCu
 +HLW/dKjnJqOEeNtdqR6sa6I+b+unx1RkoClC/QSAZfzHnA0lTVEdWj96
 i/dx8cg29Z7igtekh8rSG7v9iGZQQchJgKNYxMktBByNB0jsmwFufjb3p w==;
X-CSE-ConnectionGUID: c5JwCjXXS8OVFYRy2LBeFA==
X-CSE-MsgGUID: AjSukZleTjSg2jqSodhj8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="87553942"
X-IronPort-AV: E=Sophos;i="6.23,174,1770624000"; d="scan'208";a="87553942"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 13:04:12 -0700
X-CSE-ConnectionGUID: yUu4QSXTTNKKixJwiL+ZVg==
X-CSE-MsgGUID: 2yLi46eiRwSKccE6mzm2Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,174,1770624000"; d="scan'208";a="225109332"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 13:04:11 -0700
Date: Sat, 11 Apr 2026 22:04:09 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 intel-gfx@lists.freedesktop.org, Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v1 06/10] drm/i915/casf: remove id in favor of
 scaler_id
In-Reply-To: <adjYa5dEFcDPTD48@intel.com>
Message-ID: <868b4fca-1dd4-244b-e4f7-ce298fe60a64@intel.com>
References: <20260328143212.601656-1-michal.grzelak@intel.com>
 <20260328143212.601656-7-michal.grzelak@intel.com>
 <adjYa5dEFcDPTD48@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1444149462-1775937852=:2851098"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:michal.grzelak@intel.com,m:nemesa.garg@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 587CA3E197F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1444149462-1775937852=:2851098
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 10 Apr 2026, Ville Syrjälä wrote:
> On Sat, Mar 28, 2026 at 03:32:08PM +0100, Michał Grzelak wrote:
>> id is not really used anywhere in skl_scaler_get_config(). Replace it
>> with scaler_id.
>>
>> Cc: Nemesa Garg <nemesa.garg@intel.com>
>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++------
>>  1 file changed, 3 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
>> index 729ef51beeb4..5954f5beb19c 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> @@ -969,7 +969,6 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>>  	struct intel_display *display = to_intel_display(crtc_state);
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> -	int id = -1;
>>  	int scaler_id;
>>
>>  	/* find scaler attached to this pipe */
>> @@ -980,10 +979,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>>  		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
>>  			continue;
>>
>> -		id = scaler_id;
>> -
>>  		/* Read CASF regs for second scaler */
>> -		if (HAS_CASF(display) && id == 1)
>> +		if (HAS_CASF(display) && scaler_id == 1)
>>  			intel_casf_sharpness_get_config(crtc_state);
>>
>>  		if (!crtc_state->hw.casf_params.casf_enable)
>> @@ -1003,8 +1000,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>>  		break;
>>  	}
>>
>> -	scaler_state->scaler_id = id;
>> -	if (id >= 0)
>> +	scaler_state->scaler_id = scaler_id;
>> +	if (scaler_id >= 0)
>
> We'll have scaler_id == crtc->num_scalers if the loop
> didn't find a pipe scaler. So this is now a bit busted.

Definitively. Should be addressed in v2.

> Otherwise I think this stuff looks pretty reasonable, but it no longer
> applies since my casf reorganization landed. Please rebase and repost.

Thanks :)

BR,
Michał

>
>>  		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
>>  	else
>>  		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
>> --
>> 2.45.2
>
> -- 
> Ville Syrjälä
> Intel
>
--8323329-1444149462-1775937852=:2851098--
