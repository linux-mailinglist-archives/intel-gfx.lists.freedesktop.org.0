Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KONzJg+RGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:13:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E667602BCA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EAF010FEF4;
	Fri, 29 May 2026 13:13:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDDfpmXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0394410FEF0;
 Fri, 29 May 2026 13:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780060427; x=1811596427;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q5Qwz2albalOj7cbm8MiM98vDezCZ5eP+DfY0naHO+U=;
 b=KDDfpmXSvhyJ+sj+Hr9jUGsgrzAuupqefypk6rPfnuxGgnbL1jRRXny3
 kyn1TuNyg+7fXxfQnk8Gj0cyVxKtEz6FaN9jo6Jx8J4NIyGbSTGuVft1K
 zBIG0AMnzXDtLmkVl2LsGXMnyKGzu4lkxUgsK7P9G/oeEXNR7SY+psdz7
 CsQqXiP4J8GkuCyVGPg4UqabLrs+/o+zRVSGq6R7vsgnDjNM2ZGcwqRhO
 qILpspH4nUM77ZwLwE66W5IXVMs4ZBJJG9aPH89TVoiFlZpcdyA/uWCry
 e+hgCHjoGaNIBXvUJ2vwTXMdgeGh4dX/28h+OoHxrUNyBu8b4WQNjvj5z Q==;
X-CSE-ConnectionGUID: o2On7sa+SBOzqm/ogeJj2w==
X-CSE-MsgGUID: F/PYrcbDRCeEjpWNY7T+kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80811803"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80811803"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:13:46 -0700
X-CSE-ConnectionGUID: P1PawXPcQn+K1BUaIMdZOw==
X-CSE-MsgGUID: mUKuah4sQROS27MP1xATbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="246863169"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:13:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mario Limonciello <superm1@kernel.org>, "Chia-Lin Kao (AceLan)"
 <acelan.kao@canonical.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2] drm/dp: Add byte-by-byte fallback for broken USB-C
 adapters
In-Reply-To: <685f4a41-b90c-4f8f-b4be-531eae1905ce@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251204024647.1462866-1-acelan.kao@canonical.com>
 <685f4a41-b90c-4f8f-b4be-531eae1905ce@kernel.org>
Date: Fri, 29 May 2026 16:13:41 +0300
Message-ID: <61e9fb8c40b40fc6a1588b29bc2283fdaa313e1d@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 4E667602BCA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 09 Jan 2026, Mario Limonciello <superm1@kernel.org> wrote:
> On 12/3/25 8:46 PM, Chia-Lin Kao (AceLan) wrote:
>> Some USB-C hubs and adapters have buggy firmware where multi-byte AUX
>> reads consistently timeout, while single-byte reads from the same address
>> work correctly.
>> 
>> Known affected devices that exhibit this issue:
>> - Lenovo USB-C to VGA adapter (VIA VL817 chipset)
>>    idVendor=17ef, idProduct=7217
>> - Dell DA310 USB-C mobile adapter hub
>>    idVendor=413c, idProduct=c010
>> 
>> Analysis of the failure pattern shows:
>> - Single-byte probes to 0xf0000 (LTTPR) succeed
>> - Single-byte probes to 0x00102 (TRAINING_AUX_RD_INTERVAL) succeed
>> - Multi-byte reads from 0x00000 (DPCD capabilities) timeout with -ETIMEDOUT
>> - Retrying does not help - the failure is consistent across all attempts
>> 
>> The issue appears to be a firmware bug in the AUX transaction handling
>> that specifically affects multi-byte reads.
>> 
>> Add a fallback mechanism in drm_dp_dpcd_read_data() that attempts
>> byte-by-byte reading when the normal multi-byte read fails. This
>> workaround only activates for adapters that fail the standard read path,
>> ensuring no impact on correctly functioning hardware.
>> 
>> Tested with:
>> - Lenovo USB-C to VGA adapter (VIA VL817) - now works with fallback
>> - Dell DA310 USB-C hub - now works with fallback
>> - Dell/Analogix Slimport adapter - continues to work with normal path
>> 
>> Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
>
> Reviewed-by: Mario Limonciello (AMD) <superm1@kernel.org>
>
> As this fixes reads for some existing hardware on the market and is just 
> in fallback path I feel this is low risk.  I've applied this to 
> drm-misc-fixes.

I've stumbled on this when I was looking at drm_dp_dpcd_read_data(). I
never received the original patch, for whatever reason, even though Lore
says I was Cc'd.

> a8f49a0043011 (HEAD -> drm-misc-fixes) drm/dp: Add byte-by-byte fallback 
> for broken USB-C adapters
>
>> ---
>> v2. 1. Move the workaround from intel_dp_read_dprx_caps() to
>>         drm_dp_dpcd_read_data(), so that it applies to all DPCD reads across
>>         all DRM drivers benefit from this fix, not just i915.
>>      2. Move the definition of drm_dp_dpcd_readb() before
>>         drm_dp_dpcd_read_data()
>> ---
>>   include/drm/display/drm_dp_helper.h | 57 +++++++++++++++++++----------
>>   1 file changed, 37 insertions(+), 20 deletions(-)
>> 
>> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
>> index df2f24b950e4..14d2859f0bda 100644
>> --- a/include/drm/display/drm_dp_helper.h
>> +++ b/include/drm/display/drm_dp_helper.h
>> @@ -551,6 +551,22 @@ ssize_t drm_dp_dpcd_read(struct drm_dp_aux *aux, unsigned int offset,
>>   ssize_t drm_dp_dpcd_write(struct drm_dp_aux *aux, unsigned int offset,
>>   			  void *buffer, size_t size);
>>   
>> +/**
>> + * drm_dp_dpcd_readb() - read a single byte from the DPCD
>> + * @aux: DisplayPort AUX channel
>> + * @offset: address of the register to read
>> + * @valuep: location where the value of the register will be stored
>> + *
>> + * Returns the number of bytes transferred (1) on success, or a negative
>> + * error code on failure. In most of the cases you should be using
>> + * drm_dp_dpcd_read_byte() instead.
>> + */
>> +static inline ssize_t drm_dp_dpcd_readb(struct drm_dp_aux *aux,
>> +					unsigned int offset, u8 *valuep)
>> +{
>> +	return drm_dp_dpcd_read(aux, offset, valuep, 1);
>> +}
>> +
>>   /**
>>    * drm_dp_dpcd_read_data() - read a series of bytes from the DPCD
>>    * @aux: DisplayPort AUX channel (SST or MST)
>> @@ -570,12 +586,29 @@ static inline int drm_dp_dpcd_read_data(struct drm_dp_aux *aux,
>>   					void *buffer, size_t size)
>>   {
>>   	int ret;
>> +	size_t i;
>> +	u8 *buf = buffer;
>>   
>>   	ret = drm_dp_dpcd_read(aux, offset, buffer, size);
>> -	if (ret < 0)
>> -		return ret;
>> -	if (ret < size)
>> -		return -EPROTO;
>> +	if (ret >= 0) {
>> +		if (ret < size)
>> +			return -EPROTO;
>> +		return 0;
>> +	}
>> +
>> +	/*
>> +	 * Workaround for USB-C hubs/adapters with buggy firmware that fail
>> +	 * multi-byte AUX reads but work with single-byte reads.
>> +	 * Known affected devices:
>> +	 * - Lenovo USB-C to VGA adapter (VIA VL817, idVendor=17ef, idProduct=7217)
>> +	 * - Dell DA310 USB-C hub (idVendor=413c, idProduct=c010)
>> +	 * Attempt byte-by-byte reading as a fallback.
>> +	 */
>> +	for (i = 0; i < size; i++) {
>> +		ret = drm_dp_dpcd_readb(aux, offset + i, &buf[i]);

drm_dp_dpcd_read_byte() should be preferred over drm_dp_dpcd_readb()...

>> +		if (ret < 0)

...because drm_dp_dpcd_readb() might return 0 on failures. You need to
use drm_dp_dpcd_readb() == 1 to check for success, which is why
drm_dp_dpcd_read_byte() and drm_dp_dpcd_read_data() were introduced in
the first place.

Moreover, this ugly workaround only impacts drm_dp_dpcd_read_data()
callers, but there are lots and lots of direct drm_dp_dpcd_read() calls
all over the place, which go unfixed.

It should be emphasized that DP AUX changes that affect absolutely all
drivers should go through more scrutiny, and require more acks.

This needs follow-up fixes.


BR,
Jani.


>> +			return ret;
>> +	}
>>   
>>   	return 0;
>>   }
>> @@ -609,22 +642,6 @@ static inline int drm_dp_dpcd_write_data(struct drm_dp_aux *aux,
>>   	return 0;
>>   }
>>   
>> -/**
>> - * drm_dp_dpcd_readb() - read a single byte from the DPCD
>> - * @aux: DisplayPort AUX channel
>> - * @offset: address of the register to read
>> - * @valuep: location where the value of the register will be stored
>> - *
>> - * Returns the number of bytes transferred (1) on success, or a negative
>> - * error code on failure. In most of the cases you should be using
>> - * drm_dp_dpcd_read_byte() instead.
>> - */
>> -static inline ssize_t drm_dp_dpcd_readb(struct drm_dp_aux *aux,
>> -					unsigned int offset, u8 *valuep)
>> -{
>> -	return drm_dp_dpcd_read(aux, offset, valuep, 1);
>> -}
>> -
>>   /**
>>    * drm_dp_dpcd_writeb() - write a single byte to the DPCD
>>    * @aux: DisplayPort AUX channel
>

-- 
Jani Nikula, Intel
