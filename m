Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 487C4212415
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 15:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD286E22A;
	Thu,  2 Jul 2020 13:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308406E1F8;
 Thu,  2 Jul 2020 13:05:12 +0000 (UTC)
IronPort-SDR: j9mSOXqzNoRzSH6izhbB3YWjP4NhrDyNVrTNpAVpIu8S6lZeq8pMLlPAPEpioGtM3v4eTMBDkU
 E8a33C9E1pnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="144399455"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="144399455"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 06:05:11 -0700
IronPort-SDR: jxhO/vvHeRjn6hRICWL2QWNROFRWwA/DsJTOHk5dKDF744fme7iH5AweR0XJuN6lA1cdLSCrKG
 yeqFbKiwpkvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="321519427"
Received: from ssteinbo-mobl.ger.corp.intel.com (HELO [10.249.43.78])
 ([10.249.43.78])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Jul 2020 06:05:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702123908.227124-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bd9a8aa0-d162-54c0-a116-f02e8711ae8e@intel.com>
Date: Thu, 2 Jul 2020 16:05:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200702123908.227124-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf: Instantiate a local drm_fd
 for the unprivileged helper
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

Could be a particularly slow PIPE_CONTROL instruction on TGL.
We assumed that in a sequence of instructions : PC0, MI_RPC0, PC1, MI_RPC1

The delta of time PC1 - PC0 would be with 500ns of MI_RPC1 - MI_RPC0.
That does sound a bit broken tbf...

Patch looks good :

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Thanks,

-Lionel

On 02/07/2020 15:39, Chris Wilson wrote:
> While the test is blocked, we keep trying the gen12_single_ctx_helper().
> As this is using the parent's drm_fd, all of our context allocations are
> persistent. Reopen the device in the child so that when we exit, our
> allocations are freed along with the process -- avoiding a total memory
> leak if the test is stuck.
>
> This does not explain why the test was stuck, it just prevents us from
> exacerbating the error condition. Hopefully leaving the system in a more
> debuggable state.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2126
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   tests/i915/perf.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/tests/i915/perf.c b/tests/i915/perf.c
> index d4ebae30d..dbf7e3497 100644
> --- a/tests/i915/perf.c
> +++ b/tests/i915/perf.c
> @@ -3845,6 +3845,7 @@ static void gen12_single_ctx_helper(void)
>   		.format = test_set->perf_oa_format
>   	};
>   
> +	drm_fd = gem_reopen_driver(drm_fd);
>   	bufmgr = drm_intel_bufmgr_gem_init(drm_fd, 4096);
>   	drm_intel_bufmgr_gem_enable_reuse(bufmgr);
>   
> @@ -4107,6 +4108,7 @@ static void gen12_single_ctx_helper(void)
>   	drm_intel_gem_context_destroy(context1);
>   	drm_intel_bufmgr_destroy(bufmgr);
>   	__perf_close(stream_fd);
> +	close(drm_fd);
>   }
>   
>   static void


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
