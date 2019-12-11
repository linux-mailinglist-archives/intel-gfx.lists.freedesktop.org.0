Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CAE11B831
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7AFF6EB7A;
	Wed, 11 Dec 2019 16:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6A86EB7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:13:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="414906142"
Received: from vbacanux-wtg.ger.corp.intel.com (HELO [10.249.32.158])
 ([10.249.32.158])
 by fmsmga006.fm.intel.com with ESMTP; 11 Dec 2019 08:13:31 -0800
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b15af748-5abe-2c9b-c5e8-28d574709951@intel.com>
Date: Wed, 11 Dec 2019 18:13:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path
 globally
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
Cc: chris.p.wilson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/12/2019 18:07, Venkata Sandeep Dhanalakota wrote:
> We do not require to register the sysctl paths per instance,
> so making registration global.
>
> Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>


Not sure what the pattern should be like for global settings like this one.

Anyway it's definitely required going forward :


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks!


> ---
>   drivers/gpu/drm/i915/i915_perf.c       | 10 ++++++++--
>   drivers/gpu/drm/i915/i915_perf_types.h |  1 -
>   2 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 8d2e37949f46..426d04214a5d 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -387,6 +387,8 @@ struct i915_oa_config_bo {
>   	struct i915_vma *vma;
>   };
>   
> +static struct ctl_table_header *sysctl_header;
> +
>   static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer);
>   
>   void i915_oa_config_release(struct kref *ref)
> @@ -4345,7 +4347,8 @@ void i915_perf_init(struct drm_i915_private *i915)
>   
>   		oa_sample_rate_hard_limit = 1000 *
>   			(RUNTIME_INFO(i915)->cs_timestamp_frequency_khz / 2);
> -		perf->sysctl_header = register_sysctl_table(dev_root);
> +		if (!sysctl_header)
> +			sysctl_header = register_sysctl_table(dev_root);
>   
>   		mutex_init(&perf->metrics_lock);
>   		idr_init(&perf->metrics_idr);
> @@ -4395,7 +4398,10 @@ void i915_perf_fini(struct drm_i915_private *i915)
>   	idr_for_each(&perf->metrics_idr, destroy_config, perf);
>   	idr_destroy(&perf->metrics_idr);
>   
> -	unregister_sysctl_table(perf->sysctl_header);
> +	if (sysctl_header) {
> +		unregister_sysctl_table(sysctl_header);
> +		sysctl_header = NULL;
> +	}
>   
>   	memset(&perf->ops, 0, sizeof(perf->ops));
>   	perf->i915 = NULL;
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index 74ddc20a0d37..45e581455f5d 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -380,7 +380,6 @@ struct i915_perf {
>   	struct drm_i915_private *i915;
>   
>   	struct kobject *metrics_kobj;
> -	struct ctl_table_header *sysctl_header;
>   
>   	/*
>   	 * Lock associated with adding/modifying/removing OA configs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
