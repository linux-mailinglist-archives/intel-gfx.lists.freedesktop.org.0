Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D566F9ADEFE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 10:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7350810E8AE;
	Thu, 24 Oct 2024 08:20:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irc1qJ5r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9825B10E8AE;
 Thu, 24 Oct 2024 08:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729758056; x=1761294056;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=+YmxIUMYDyXynn+3JSir7ZK8pzrVyWLb9w9LwIVyp/g=;
 b=irc1qJ5r3cHhvRw78QbtM5LNn5PPZ2eTW7OfzRkejtzwlFKUenf9NdPh
 nE8FOKiGwmBN+nC1mlnDszmzx7BAa+cprOsVuYuh2TOHymamNhwEyZSvW
 eo70/vAkzw2CiLO2aO13DWtfq1WSj3c9BbMXVT25teSewwak/3Zfy3sE1
 3qwcpHmalJX+kAHqhFlOA2fsLL5Yl5Fu7PsYurqbzRe5gTG6G1fBsLBkd
 NOM2BSQFn9+LowzY75YAH36SUYpSs/YMaAFnQ8vYMWcdqX2EsTnIsS6BT
 /ln3O7SlDGLXco1+ENDuRTIqjnY/SnT/Tf5g5emV/ZV518qxfneHHdNtv w==;
X-CSE-ConnectionGUID: Zfu+sV4gQTS0P4i/dSF62g==
X-CSE-MsgGUID: 5pjh/9rSSzSbWpQ3qf8apQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46843458"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46843458"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:20:56 -0700
X-CSE-ConnectionGUID: QOnZxsFMRNehUoOKfZUIZQ==
X-CSE-MsgGUID: 3MtIYhJ7SI+HXceXXKoOaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="84493998"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:20:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
In-Reply-To: <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
 <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Thu, 24 Oct 2024 11:20:50 +0300
Message-ID: <875xphud25.fsf@intel.com>
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

On Thu, 24 Oct 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Clint
>> Taylor
>> Sent: Thursday, 24 October 2024 0.47
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
>> transaction
>> 
>> C10 phy timeouts occur on xe3lpd if the c10 bus is reset every transaction.
>> Starting with xe3lpd this is bus reset not necessary
>> 
>
> This C10/C20 bus reset was originally placed as a workaround to prevent bus timeouts. These timeouts were fixed elsewhere and therefore these are unnecessary lines.
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Why no mention of the extra braces in there?

BR,
Jani.

>
>> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> index c1357bdb8a3b..a8966a7a9927 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder
>> *encoder,
>>  	 * down and let the message bus to end up
>>  	 * in a known state
>>  	 */
>> -	intel_cx0_bus_reset(encoder, lane);
>> +	if ((DISPLAY_VER(i915) >= 30))
>> +		intel_cx0_bus_reset(encoder, lane);
>> 
>>  	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);  } @@ -
>> 313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder
>> *encoder,
>>  	 * down and let the message bus to end up
>>  	 * in a known state
>>  	 */
>> -	intel_cx0_bus_reset(encoder, lane);
>> +	if ((DISPLAY_VER(i915) >= 30))
>> +		intel_cx0_bus_reset(encoder, lane);
>> 
>>  	return 0;
>>  }
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel
