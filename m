Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE96270271B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 10:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BF610E171;
	Mon, 15 May 2023 08:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD6010E17D
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 08:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684139132; x=1715675132;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/ZONmvH7z0Ljgqk9Pp/leBhF2NqZwJjvxGkr9tWWWN4=;
 b=HcZe8Wd8QrKJ5/mOs4CArxrK2XI/gGr6/UkLuf5hFq0/A7sHDXAldtj0
 s2meo3/8BA5wSE1B/lNAV8MRS417WAjNspwCTCvvT7joVYcMDosmfMU/0
 9SABn+gZPPOukczrXsifi4Pm5JTFhQLK4NqtiYa5buXzKhQo3rSgQCY8E
 iiqsS2tUKYZfdjvjER2B1JJsAXZYd8/q6DIhI5zbiyvT40Ha2aznA25Ow
 OcoDCVnxFMFH+rgLcjV+Pj5OWcLJDOMdxMZLiaplC6nOSTLWvW7I8kAQo
 HnICJ3ihCI9PKIvqut/EVohrSKXMpNlsTTn4gPNWt+Bb8PFXZ2J3fu85m A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="353414041"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="353414041"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 01:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="812860342"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="812860342"
Received: from mjutt-mobl.ger.corp.intel.com (HELO localhost) ([10.252.42.56])
 by fmsmga002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 May 2023 01:25:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZF5HWja9HdAjqqJz@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230512111446.1524038-1-jani.nikula@intel.com>
 <ZF5HWja9HdAjqqJz@rdvivi-mobl4>
Date: Mon, 15 May 2023 11:25:28 +0300
Message-ID: <87cz32j91j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: add helper for reading SPI
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Fri, May 12, 2023 at 02:14:46PM +0300, Jani Nikula wrote:
>> Add helper for reading SPI to not duplicate the write&read combo
>> everywhere.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> BAT failure is likely a false positive on crcs... this patch
> looks correct to me without any functional change.

Re-test passed bat.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 23 ++++++++++++-----------
>>  1 file changed, 12 insertions(+), 11 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 64eb11a45265..34a397adbd6b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -3033,6 +3033,13 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
>>  	return vbt;
>>  }
>>  
>> +static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
>> +{
>> +	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
>> +
>> +	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
>> +}
>> +
>>  static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>>  {
>>  	u32 count, data, found, store = 0;
>> @@ -3049,9 +3056,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>>  	oprom_offset &= OROM_OFFSET_MASK;
>>  
>>  	for (count = 0; count < oprom_size; count += 4) {
>> -		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + count);
>> -		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
>> -
>> +		data = intel_spi_read(&i915->uncore, oprom_offset + count);
>>  		if (data == *((const u32 *)"$VBT")) {
>>  			found = oprom_offset + count;
>>  			break;
>> @@ -3062,20 +3067,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>>  		goto err_not_found;
>>  
>>  	/* Get VBT size and allocate space for the VBT */
>> -	intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found +
>> -		   offsetof(struct vbt_header, vbt_size));
>> -	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
>> +	vbt_size = intel_spi_read(&i915->uncore,
>> +				  found + offsetof(struct vbt_header, vbt_size));
>>  	vbt_size &= 0xffff;
>>  
>>  	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
>>  	if (!vbt)
>>  		goto err_not_found;
>>  
>> -	for (count = 0; count < vbt_size; count += 4) {
>> -		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found + count);
>> -		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
>> -		*(vbt + store++) = data;
>> -	}
>> +	for (count = 0; count < vbt_size; count += 4)
>> +		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
>>  
>>  	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
>>  		goto err_free_vbt;
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
