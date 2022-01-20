Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE3A494D5D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CF4E10E5D4;
	Thu, 20 Jan 2022 11:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6877110E5BD;
 Thu, 20 Jan 2022 11:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642679343; x=1674215343;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=N46dov4xu1qWTN5lpCuLfE0Y1XvVlvKH8r3EQZrvsls=;
 b=fU4weRG6FSG5VFHgmgE++TIhx3V/aFvkQV/WyFhtxTjEq8vaeU/OgEcJ
 WjmJrJH1ZdVjmYrbl12fi9ZhsA9yK0cUEJvguigr8HrDYbp6ZhhAS8azi
 9JBv3dCVmp23amBrC5D/+oNwyjYX5zh723mulXIl/9DU+A5zDJa5nqONq
 a23pZVzzoblVwAkpUDrM9rmLTJAdHe8W25korFaOlFQ4Nky064qUrhkWa
 TqQ+k1XcLo9Du0Ykg4k+1exjCzFtpwNXYREN3yDzPhPGEwGDYqkn+zhN7
 yk+o02OQCh9FIt0TgVBbmp8BBInCt3Z+C4tzj58JJwmmO6k9D0GTO4LAv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="226010131"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="226010131"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:49:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="532741836"
Received: from gschleye-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:49:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <CAKMK7uHqf_Cn02WuZtx7m4_fe-rDKZ=cz0OoHusvEwYBGmVSiA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220120094856.3004147-1-jani.nikula@intel.com>
 <CAKMK7uHqf_Cn02WuZtx7m4_fe-rDKZ=cz0OoHusvEwYBGmVSiA@mail.gmail.com>
Date: Thu, 20 Jan 2022 13:48:55 +0200
Message-ID: <87zgnq8w60.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/locking: fix drm_modeset_acquire_ctx
 kernel-doc
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Jan 2022, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Thu, Jan 20, 2022 at 10:49 AM Jani Nikula <jani.nikula@intel.com> wrote:
>>
>> The stack_depot member was added without kernel-doc, leading to below
>> warning. Fix it.
>>
>> ./include/drm/drm_modeset_lock.h:74: warning: Function parameter or
>> member 'stack_depot' not described in 'drm_modeset_acquire_ctx'
>>
>> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
>> Fixes: cd06ab2fd48f ("drm/locking: add backtrace for locking contended locks without backoff")
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  include/drm/drm_modeset_lock.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/include/drm/drm_modeset_lock.h b/include/drm/drm_modeset_lock.h
>> index b84693fbd2b5..ec4f543c3d95 100644
>> --- a/include/drm/drm_modeset_lock.h
>> +++ b/include/drm/drm_modeset_lock.h
>> @@ -34,6 +34,7 @@ struct drm_modeset_lock;
>>   * struct drm_modeset_acquire_ctx - locking context (see ww_acquire_ctx)
>>   * @ww_ctx: base acquire ctx
>>   * @contended: used internally for -EDEADLK handling
>> + * @stack_depot: used internally for contention debugging
>
> Uh would be nice to switch to the inline style, since we already have
> inline comments (just not kerneldoc). Either way:

Considered that, but looks like it's been intentionally split to
kernel-doc documentation and internal comments, and just wanted to get
this quick fix out of the way.

>
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thanks!

>
>
>>   * @locked: list of held locks
>>   * @trylock_only: trylock mode used in atomic contexts/panic notifiers
>>   * @interruptible: whether interruptible locking should be used.
>> --
>> 2.30.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
