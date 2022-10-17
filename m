Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0B460105B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 15:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BC910ED9A;
	Mon, 17 Oct 2022 13:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3D810ED90
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 13:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666013869; x=1697549869;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1bZ6waJEjssD011vmLA4AwarRReQJgsC8mRGt+M+5/o=;
 b=XG177TTqIJqoxiJ1qjX1w9p80otoni4wd5Ahnt1Q6iBFbMPuGMG8cbt9
 pJl2Vdt4Yfx9VqcqGI0sWzCzyvKfMWYftJQYsI/54gP9aGAPxOZRVDbvG
 r4SxchlXsYkQcat1TjVMa7pKuywMN/0O28SBAJTD2QnJxOzYdS5pSpJJM
 BnXhPelsX/peSey7PHPwNDecYv2FQ84sHFyUMqDQYoI+zPbAQhUmEeBVm
 4NOSC70xAiBYCxjSjQZwYr7u2xof+6bOeEISn5VA16J4Qz/9pVB8yOnVq
 6NgKaAj8MOWyIwS0sHaKDMTg1I4OqlMjNvRgl99qpvToIuJl0xs/UUKA5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="367822300"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="367822300"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 06:37:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="579376017"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="579376017"
Received: from ggeogheg-mobl.ger.corp.intel.com (HELO [10.213.233.137])
 ([10.213.233.137])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 06:37:48 -0700
Message-ID: <6d4703e9-2b07-5505-6c35-91a978e5a211@linux.intel.com>
Date: Mon, 17 Oct 2022 14:37:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221017132432.112850-1-jose.souza@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221017132432.112850-1-jose.souza@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Extend Wa_1607297627 to
 Alderlake-P
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/10/2022 14:24, José Roberto de Souza wrote:
> Workaround 1607297627 was missed for Alderlake-P, so here extending it
> to it and adding the fixes tag so this WA is backported to all
> stable kernels.
> 
> v2:
> - fixed subject
> - added Fixes tag
> 
> BSpec: 54369
> Fixes: dfb924e33927 ("drm/i915/adlp: Remove require_force_probe protection")

Cc: <stable@vger.kernel.org> # v5.17+

Regards,

Tvrtko

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b8eb20a155f0d..e1d5df3a5756e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2300,11 +2300,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   	}
>   
>   	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> -	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> +	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
>   		/*
>   		 * Wa_1607030317:tgl
>   		 * Wa_1607186500:tgl
> -		 * Wa_1607297627:tgl,rkl,dg1[a0]
> +		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
>   		 *
>   		 * On TGL and RKL there are multiple entries for this WA in the
>   		 * BSpec; some indicate this is an A0-only WA, others indicate
