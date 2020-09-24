Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E61CF2772D2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 15:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90436EB04;
	Thu, 24 Sep 2020 13:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DEC6EB04
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 13:43:12 +0000 (UTC)
IronPort-SDR: wv+Ynm5F+n8vDDFcRO1qMhMU0HOt/mYw2enBCxcX5s6FTRk7ay4lsH51cgsL6Z79lR+a9LVYP5
 Ye07DjxKQnzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="160493097"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="160493097"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 06:43:11 -0700
IronPort-SDR: e4dBiXYw1FtHHln+M6z7TmSgp+PAQLzNvsAjlen4ea9cLbEyVIZMd70yMStosXzMnTVni7UoEw
 200Uu1D4foEw==
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="486904921"
Received: from dsmahang-mobl2.ger.corp.intel.com (HELO [10.252.48.167])
 ([10.252.48.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 06:43:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
 <20200916094219.3878-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6be94225-9d54-0a4b-d1d0-d5b46d8b6fdb@linux.intel.com>
Date: Thu, 24 Sep 2020 14:43:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916094219.3878-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Always send a pulse down
 the engine after disabling heartbeat
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/09/2020 10:42, Chris Wilson wrote:
> Currently, we check we can send a pulse prior to disabling the
> heartbeat to verify that we can change the heartbeat, but since we may
> re-evaluate execution upon changing the heartbeat interval we need another
> pulse afterwards to refresh execution.
> 
> Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.7+
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index 8ffdf676c0a0..d09df370f7cd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -192,10 +192,12 @@ int intel_engine_set_heartbeat(struct intel_engine_cs *engine,
>   	WRITE_ONCE(engine->props.heartbeat_interval_ms, delay);
>   
>   	if (intel_engine_pm_get_if_awake(engine)) {
> -		if (delay)
> +		if (delay) {
>   			intel_engine_unpark_heartbeat(engine);
> -		else
> +		} else {
>   			intel_engine_park_heartbeat(engine);
> +			intel_engine_pulse(engine); /* recheck execution */
> +		}
>   		intel_engine_pm_put(engine);
>   	}
>   
> 

I did not immediately get this one. Do we really need two pulses or 
maybe we could re-order the code a bit and just undo the heartbeat park 
if pulse after parking did not work?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
