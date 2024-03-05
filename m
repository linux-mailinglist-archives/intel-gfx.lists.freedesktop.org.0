Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E72871D22
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 12:14:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4492110FE7A;
	Tue,  5 Mar 2024 11:14:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kj/Q2BLM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A38B112A1F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 11:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709637243; x=1741173243;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=WtGp9/+ZQ6ythGcC2+9mgmz0nogjxIFx4vprw4Y2t8I=;
 b=kj/Q2BLMw1w3/HdeqHrab0WD2qAUSArnEMTn0EW8eUQlZWW6nmUj8jpr
 6CfFpi9DIASintl9trZ4Id6QR2QvJgNoxId13nmGKbo8SFIVrZwqddCLY
 anzlf7MiSfRA0+TnMY71wVPOKbXwjoG/67hRRG77BLbMvqNihbn59Et8y
 ianAEkOtTp4SBD/a+JRSxBDM9DUyu48VqrU1EkX7siM76aqO/UkAystl+
 zPauPCjGUYea9StaGZFSCaA9xSBq3zSygN9r1MAt9+DmHhVOAlTpMWlLb
 NjD7jWsMcUnm2sqLYcXCLEz7wInqdipixinaMsrbM73FLAnDCy3cn+3+Z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15609732"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15609732"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 03:14:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9246428"
Received: from omakhlou-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.51.143])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 03:14:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/i915/bios: abstract child device expected size
In-Reply-To: <f9a638c9-86ae-4595-9d19-85b3eb66ac58@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240226175854.287871-1-jani.nikula@intel.com>
 <20240226175854.287871-3-jani.nikula@intel.com>
 <f9a638c9-86ae-4595-9d19-85b3eb66ac58@intel.com>
Date: Tue, 05 Mar 2024 13:13:57 +0200
Message-ID: <87cys92aoa.fsf@intel.com>
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

On Tue, 05 Mar 2024, "Chauhan, Shekhar" <shekhar.chauhan@intel.com> wrote:
> On 2/26/2024 23:28, Jani Nikula wrote:
>> Add a function to return the expected child device size. Flip the if
>> ladder around and use the same versions as in documentation to make it
>> easier to verify. Return an error for unknown versions. No functional
>> changes.
>>
>> v2: Move BUILD_BUG_ON() next to the expected sizes
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_bios.c | 40 ++++++++++++++---------
>>   1 file changed, 24 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index c0f41bd1f946..343726de9aa7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2699,27 +2699,35 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
>>   		print_ddi_port(devdata);
>>   }
>>   
>> +static int child_device_expected_size(u16 version)
>> +{
>> +	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>> +
>> +	if (version > 256)
>> +		return -ENOENT;
>> +	else if (version >= 256)
> Correct me if I'm wrong, but isn't version >= 256, a bit cryptic after 
> the first check?
> Would it be wise to make it version > 256, return -ENOENT and if version 
> == 256, return 40?

It may look so right now, but consider these future cases:

- VBT version gets bumped, and we get the info that, say, version 270
  still has size 40. What needs to be changed?

- VBT version gets bumped, and we get the info that, say, version 271
  has size 41. What needs to be changed?

Note that VBT versions above are pure examples, and don't reflect the
spec in any way.

We know right now that versions >= 256 will have size 40. We don't want
to express that in a way that requires us to modify it in the
future. This is the difference to the old if ladder.

Indeed, we could already bump the first if to

	if (version > 257)

because we now know version 257 has size 40.

BR,
Jani.


>> +		return 40;
>> +	else if (version >= 216)
>> +		return 39;
>> +	else if (version >= 196)
>> +		return 38;
>> +	else if (version >= 195)
>> +		return 37;
>> +	else if (version >= 111)
>> +		return LEGACY_CHILD_DEVICE_CONFIG_SIZE;
>> +	else if (version >= 106)
>> +		return 27;
>> +	else
>> +		return 22;
>> +}
>> +
>>   static bool child_device_size_valid(struct drm_i915_private *i915, int size)
>>   {
>>   	int expected_size;
>>   
>> -	if (i915->display.vbt.version < 106) {
>> -		expected_size = 22;
>> -	} else if (i915->display.vbt.version < 111) {
>> -		expected_size = 27;
>> -	} else if (i915->display.vbt.version < 195) {
>> -		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
>> -	} else if (i915->display.vbt.version == 195) {
>> -		expected_size = 37;
>> -	} else if (i915->display.vbt.version <= 215) {
>> -		expected_size = 38;
>> -	} else if (i915->display.vbt.version <= 255) {
>> -		expected_size = 39;
>> -	} else if (i915->display.vbt.version <= 256) {
>> -		expected_size = 40;
>> -	} else {
>> +	expected_size = child_device_expected_size(i915->display.vbt.version);
>> +	if (expected_size < 0) {
>>   		expected_size = sizeof(struct child_device_config);
>> -		BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>>   		drm_dbg(&i915->drm,
>>   			"Expected child device config size for VBT version %u not known; assuming %d\n",
>>   			i915->display.vbt.version, expected_size);

-- 
Jani Nikula, Intel
