Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 269D82C58F8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F3F6E978;
	Thu, 26 Nov 2020 16:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F1BB6E949;
 Thu, 26 Nov 2020 16:05:12 +0000 (UTC)
IronPort-SDR: Y57X4Ef8dMX8y0thBTIzJPj5YF1sFUzhyxmSvwXFU+EcCVJyoWGwwBfbMnkLD9VV01g8C0wcT6
 hDqFv2+RGX0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171521084"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="171521084"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:05:09 -0800
IronPort-SDR: 56EuKtvfFujGfkq0ldovDhxBB+Rxjb6xwh3VKZqn/mh0mDh90YnghCDqB8ThyGQf5crxW089Qp
 g/NZ/PyLS38Q==
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="547762408"
Received: from gmoskovi-mobl.ger.corp.intel.com (HELO [10.251.182.78])
 ([10.251.182.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:05:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201126154856.738141-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e260b30d-2fc7-aede-3fbd-2382fbe4d51e@linux.intel.com>
Date: Thu, 26 Nov 2020 16:05:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201126154856.738141-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tools/intel_gpu_top: Fixup
 imc event parsing
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/11/2020 15:48, Chris Wilson wrote:
> After combining rapl_parse and imc_parse into a single pmu_parse, I left
> the "energy-" prefixes used by rapl (but not imc) in place. Lift the
> prefix to rapl_open() so that pmu_parse() does work for both rapl and
> imc!
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: d0b71b967ccd ("tools/intel_gpu_top: Consolidate imc to use pmu_counter")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tools/intel_gpu_top.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 5d42a2fad..3ff9236ed 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -151,13 +151,13 @@ static int pmu_parse(struct pmu_counter *pmu, const char *path, const char *str)
>   
>   	result &= igt_sysfs_scanf(dir, "type", "%"PRIu64, &pmu->type) == 1;
>   
> -	snprintf(buf, sizeof(buf) - 1, "events/energy-%s", str);
> +	snprintf(buf, sizeof(buf) - 1, "events/%s", str);
>   	result &= igt_sysfs_scanf(dir, buf, "event=%"PRIx64, &pmu->config) == 1;
>   
> -	snprintf(buf, sizeof(buf) - 1, "events/energy-%s.scale", str);
> +	snprintf(buf, sizeof(buf) - 1, "events/%s.scale", str);
>   	result &= igt_sysfs_scanf(dir, buf, "%lf", &pmu->scale) == 1;
>   
> -	snprintf(buf, sizeof(buf) - 1, "events/energy-%s.unit", str);
> +	snprintf(buf, sizeof(buf) - 1, "events/%s.unit", str);
>   	result &= igt_sysfs_scanf(dir, buf, "%127s", buf) == 1;
>   	pmu->units = strdup(buf);
>   
> @@ -217,13 +217,13 @@ rapl_open(struct pmu_counter *pmu,
>   static void gpu_power_open(struct pmu_counter *pmu,
>   			   struct engines *engines)
>   {
> -	rapl_open(pmu, "gpu", engines);
> +	rapl_open(pmu, "energy-gpu", engines);
>   }
>   
>   static void pkg_power_open(struct pmu_counter *pmu,
>   			   struct engines *engines)
>   {
> -	rapl_open(pmu, "pkg", engines);
> +	rapl_open(pmu, "energy-pkg", engines);
>   }
>   
>   static uint64_t
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
