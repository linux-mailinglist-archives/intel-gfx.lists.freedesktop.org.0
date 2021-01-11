Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED212F1AD0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D81897E8;
	Mon, 11 Jan 2021 16:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3BB897E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:20:42 +0000 (UTC)
IronPort-SDR: QWnqmuYKBWJ2FJQBD4gHO5uRu24TMHA9pr9s9kad6ptchF7m3edYevg59eql7OSRr0ND7cpXap
 H1z/1rf68oHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="174380682"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="174380682"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:20:34 -0800
IronPort-SDR: HQpfcAaChfr6p853XXo7v1ZdVYOoYUWLali0GptgF8edkoVeywNicfyU19urxPR2Ubt3NHAptq
 Vp4G7KOuYVdA==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="352656881"
Received: from sbrooks8-mobl.ger.corp.intel.com (HELO [10.214.224.70])
 ([10.214.224.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 08:20:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
 <20210111105735.21515-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <eeb77e49-7a53-3670-b189-21b7953b21a0@linux.intel.com>
Date: Mon, 11 Jan 2021 16:20:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210111105735.21515-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/selftests: Include engine name
 after reset failure
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/01/2021 10:57, Chris Wilson wrote:
> During igt_reset_nop_engine, an engine reset unexpectedly failed. For the
> next time this happens, mention which engine that was.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 28f71cc2004d..09301e8b92c7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -506,7 +506,8 @@ static int igt_reset_nop_engine(void *arg)
>   			}
>   			err = intel_engine_reset(engine, NULL);
>   			if (err) {
> -				pr_err("i915_reset_engine failed\n");
> +				pr_err("intel_engine_reset(%s) failed, err:%d\n",
> +				       engine->name, err);
>   				break;
>   			}
>   
> @@ -610,7 +611,8 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>   
>   			err = intel_engine_reset(engine, NULL);
>   			if (err) {
> -				pr_err("i915_reset_engine failed\n");
> +				pr_err("intel_engine_reset(%s) failed, err:%d\n",
> +				       engine->name, err);
>   				break;
>   			}
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
