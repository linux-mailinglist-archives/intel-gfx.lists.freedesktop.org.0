Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC7894A7D6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 14:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755BF10E4EC;
	Wed,  7 Aug 2024 12:39:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cyH+rSQt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CABD10E4F2;
 Wed,  7 Aug 2024 12:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723034355; x=1754570355;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9xFBAH5m+lS+oUDqWaUxv+FMCE8FUFMjjUn0F0kJniQ=;
 b=cyH+rSQt7FuH8acY9IvJ+21Xh8IhgU+2cLlgXO8/aAjkn9jQFOCpm1lk
 u/SJ+QWzWHtbLwA1YuC5Q9LeZ75U5a0I8OimXOvjO6qZXQBjDm2/qamW2
 qJI272UQ1tVgGE3t4zAuPZmCd9U6rI2lZkWG0dj+kb/LTqDefwOHAWocc
 MRn37E7xiD01iPITNZVO2BUPEOhVBCfm8twM+ghVl7Eki6NcKXKWNl2Dx
 LoHdZSnA1x/f3GbnegkIExSaNnTpguRbfcBWEoGzw+Cnr+rqSqXPtrt2R
 x9k7xCpCG2DtQxQN1C848Jls7kitSCHFopTc3ULVgW3gQEYta5zWN1WPc g==;
X-CSE-ConnectionGUID: HpcGgMDzT7aRIAhT+qVaTw==
X-CSE-MsgGUID: JS2nfq/oTyeBSAQsvczVOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="43621686"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="43621686"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 05:39:14 -0700
X-CSE-ConnectionGUID: 5YBtmUIOSd+jia7jbGDdsw==
X-CSE-MsgGUID: nNdBbFW1RyG78omoLzcMdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="94414600"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 05:39:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: [core-for-CI PATCH] usb: typec: ucsi: Fix a potential deadlock
 in ucsi_send_command_common()
In-Reply-To: <72632805adb3a2dbec4e0e14a7917b1c038add93.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240807062729.3159701-1-chaitanya.kumar.borah@intel.com>
 <72632805adb3a2dbec4e0e14a7917b1c038add93.camel@intel.com>
Date: Wed, 07 Aug 2024 15:39:09 +0300
Message-ID: <87ikwc4idu.fsf@intel.com>
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

On Wed, 07 Aug 2024, "Coelho, Luciano" <luciano.coelho@intel.com> wrote:
> On Wed, 2024-08-07 at 11:57 +0530, Chaitanya Kumar Borah wrote:
>> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
>> 
>> The function returns with the ppm_lock held if there's an
>> error or the PPM reports BUSY condition.
>> 
>> This is a core-for-ci patch for [1]
>> 
>> [1] https://lore.kernel.org/linux-usb/20240806112029.2984319-1-heikki.krogerus@linux.intel.com/
>> 
>> Reported-by: Luciano Coelho <luciano.coelho@intel.com>
>> Fixes: 5e9c1662a89b ("usb: typec: ucsi: rework command execution functions")
>> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11849
>> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
>> ---
>>  drivers/usb/typec/ucsi/ucsi.c | 11 ++++-------
>>  1 file changed, 4 insertions(+), 7 deletions(-)
>> 
>> diff --git a/drivers/usb/typec/ucsi/ucsi.c b/drivers/usb/typec/ucsi/ucsi.c
>> index dcd3765cc1f5..432a2d6266d7 100644
>> --- a/drivers/usb/typec/ucsi/ucsi.c
>> +++ b/drivers/usb/typec/ucsi/ucsi.c
>> @@ -238,13 +238,10 @@ static int ucsi_send_command_common(struct ucsi *ucsi, u64 cmd,
>>  	mutex_lock(&ucsi->ppm_lock);
>>  
>>  	ret = ucsi_run_command(ucsi, cmd, &cci, data, size, conn_ack);
>> -	if (cci & UCSI_CCI_BUSY) {
>> -		ret = ucsi_run_command(ucsi, UCSI_CANCEL, &cci, NULL, 0, false);
>> -		return ret ? ret : -EBUSY;
>> -	}
>> -
>> -	if (cci & UCSI_CCI_ERROR)
>> -		return ucsi_read_error(ucsi, connector_num);
>> +	if (cci & UCSI_CCI_BUSY)
>> +		ret = ucsi_run_command(ucsi, UCSI_CANCEL, &cci, NULL, 0, false) ?: -EBUSY;
>> +	else if (cci & UCSI_CCI_ERROR)
>> +		ret = ucsi_read_error(ucsi, connector_num);
>>  
>>  	mutex_unlock(&ucsi->ppm_lock);
>>  	return ret;
>
> This is not the exact patch that was sent upstream, where Heikki
> changed my Reported-by to Reported-and-Tested-by (at least).  I think
> the best is to have the patch that was actually sent upstream, because
> it's easier to match later on, when it gets merged in the mainline.
>
> In any case, I think this can be merged as is, so:
>
> Acked-by: Luca Coelho <luciano.coelho@intel.com>

Thanks, pushed to topic/core-for-CI.

BR,
Jani.

>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
