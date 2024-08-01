Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8F89446F7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 10:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9516910E8C0;
	Thu,  1 Aug 2024 08:49:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GaPI3YG1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CEE10E8C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722502146; x=1754038146;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LnmEj4God0MuxuGOyigRkNxwW6zblK5NpANKdlzua5I=;
 b=GaPI3YG1kf8VN0Xn0mH4+20YJslvkIN60Xrz2r/SC/fQ+DRfAbjUZTvC
 JWsEXNlA0mHo34irNSlQO/j+pC2gOGUVZN9Igj5CVfaOwzRvPRMePEh6P
 PN8nIMPLoyUCtyu5Iq5EqLvIkmqfTKIDODi4roXqDg+itrvsfl/QWsK/P
 8wL5D99rgnlKfRF2Dnv1t4osQY/SVfie+QifpEr/xB7g2RfKdHoHeE3Wn
 Pi1BUT54ELmzUtpgRxG6vCXqtodspzRMsXn1e5OEHBPTRdXmEJO1WRbDR
 Hd28WVIK9xPodb7HXAZfqQF5THyq53VhVzxGl7DngKp4WEYwzo3bq0Jmf w==;
X-CSE-ConnectionGUID: CQd5MtwPTZaVl+dztzSnbw==
X-CSE-MsgGUID: 5Ady/VGhQMy9qAcMbPAswg==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="24231158"
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="24231158"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 01:49:05 -0700
X-CSE-ConnectionGUID: /X1P4pgzS0mVlRT/G6dx3Q==
X-CSE-MsgGUID: MWo5trHiSy2Xogsly/SbgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,254,1716274800"; d="scan'208";a="54880021"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.228])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 01:49:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [core-for-CI PATCH] scsi: sd: Move sd_read_cpr() out of the
 q->limits_lock region
In-Reply-To: <SJ0PR11MB56649C5D570B7F7E07F74B67E0B22@SJ0PR11MB5664.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240801082257.506006-1-luciano.coelho@intel.com>
 <SJ0PR11MB56649C5D570B7F7E07F74B67E0B22@SJ0PR11MB5664.namprd11.prod.outlook.com>
Date: Thu, 01 Aug 2024 11:48:59 +0300
Message-ID: <87ikwkwrus.fsf@intel.com>
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

On Thu, 01 Aug 2024, "Saarinen, Jani" <jani.saarinen@intel.com> wrote:
> These is also this made by Luca https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11813
>
> @Nikula, Jani , ok to merge. Already tested at trybot https://patchwork.freedesktop.org/series/136776/

Acked-by: Jani Nikula <jani.nikula@intel.com>

The full IGT results aren't in for the trybot submission though.

>
>> -----Original Message-----
>> From: Coelho, Luciano <luciano.coelho@intel.com>
>> Sent: Thursday, 1 August 2024 11.23
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Saarinen, Jani <jani.saarinen@intel.com>
>> Subject: [core-for-CI PATCH] scsi: sd: Move sd_read_cpr() out of the q-
>> >limits_lock region
>>
>> From: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
>>
>> Commit 804e498e0496 ("sd: convert to the atomic queue limits API")
>> introduced pairs of function calls to queue_limits_start_update() and
>> queue_limits_commit_update(). These two functions lock and unlock
>> q->limits_lock. In sd_revalidate_disk(), sd_read_cpr() is called after
>> queue_limits_start_update() call and before
>> queue_limits_commit_update() call. sd_read_cpr() locks q->sysfs_dir_lock
>> and &q->sysfs_lock. Then new lock dependencies were created between
>> q->limits_lock, q->sysfs_dir_lock and q->sysfs_lock, as follows:
>>
>> sd_revalidate_disk
>>   queue_limits_start_update
>>     mutex_lock(&q->limits_lock)
>>   sd_read_cpr
>>     disk_set_independent_access_ranges
>>       mutex_lock(&q->sysfs_dir_lock)
>>       mutex_lock(&q->sysfs_lock)
>>       mutex_unlock(&q->sysfs_lock)
>>       mutex_unlock(&q->sysfs_dir_lock)
>>   queue_limits_commit_update
>>     mutex_unlock(&q->limits_lock)
>>
>> However, the three locks already had reversed dependencies in other places.
>> Then the new dependencies triggered the lockdep WARN "possible circular
>> locking dependency detected" [1]. This WARN was observed by running the
>> blktests test case srp/002.
>>
>> To avoid the WARN, move the sd_read_cpr() call in sd_revalidate_disk() after
>> the queue_limits_commit_update() call. In other words, move the
>> sd_read_cpr() call out of the q->limits_lock region.
>>
>> [1] https://lore.kernel.org/linux-
>> scsi/vlmv53ni3ltwxplig5qnw4xsl2h6ccxijfbqzekx76vxoim5a5@dekv7q3es3tx/
>>
>> Fixes: 804e498e0496 ("sd: convert to the atomic queue limits API")
>> Signed-off-by: Shin'ichiro Kawasaki <shinichiro.kawasaki@wdc.com>
>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> ---
>>  drivers/scsi/sd.c | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c index
>> adeaa8ab9951..08cbe3815006 100644
>> --- a/drivers/scsi/sd.c
>> +++ b/drivers/scsi/sd.c
>> @@ -3753,7 +3753,6 @@ static int sd_revalidate_disk(struct gendisk *disk)
>>                       sd_read_block_limits_ext(sdkp);
>>                       sd_read_block_characteristics(sdkp, &lim);
>>                       sd_zbc_read_zones(sdkp, &lim, buffer);
>> -                     sd_read_cpr(sdkp);
>>               }
>>
>>               sd_print_capacity(sdkp, old_capacity); @@ -3808,6 +3807,14
>> @@ static int sd_revalidate_disk(struct gendisk *disk)
>>       if (err)
>>               return err;
>>
>> +     /*
>> +      * Query concurrent positioning ranges after
>> +      * queue_limits_commit_update() unlocked q->limits_lock to avoid
>> +      * deadlock with q->sysfs_dir_lock and q->sysfs_lock.
>> +      */
>> +     if (sdkp->media_present && scsi_device_supports_vpd(sdp))
>> +             sd_read_cpr(sdkp);
>> +
>>       /*
>>        * For a zoned drive, revalidating the zones can be done only once
>>        * the gendisk capacity is set. So if this fails, set back the gendisk
>> --
>> 2.39.2
>

-- 
Jani Nikula, Intel
