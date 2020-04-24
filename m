Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B19AE1B728D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 12:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F2D6E061;
	Fri, 24 Apr 2020 10:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D73A76E061;
 Fri, 24 Apr 2020 10:58:35 +0000 (UTC)
IronPort-SDR: iJopyuDf5ncVyIxxQ+V/G8JhyHRQP5GUpOYikCpDDxuf02KYznigtNm/cT5E+5z5kzf9UNOOYC
 hrEl3uI1wO8g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 03:58:33 -0700
IronPort-SDR: Ljyremx1lbWUBx7CNE4ifZabIHQMg0B7V23zTj8ZRWE7okW+Dsr1/Lt0KHPAiLsj8eZx4pmT4l
 ZrLipr2uifvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="430729042"
Received: from wbosek-mobl.ger.corp.intel.com (HELO [10.249.47.138])
 ([10.249.47.138])
 by orsmga005.jf.intel.com with ESMTP; 24 Apr 2020 03:58:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200424101941.4109878-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3a6ef95c-6772-5965-99eb-6f088c9991b8@intel.com>
Date: Fri, 24 Apr 2020 13:58:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200424101941.4109878-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] perf: Verify rc6 works first
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

Makes sense :

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Thanks,

-Lionel

On 24/04/2020 13:19, Chris Wilson wrote:
> We want to verify that OA disables rc6 (so that its metrics are not
> interrupted by the device sleeping), and once OA is finished, the device
> is allowed to sleep again. If rc6 is broken, the test fails since rc6
> never recovers -- but that is expected as rc6 is broken.
>
> Skip the test rather than fail for an external issue; we know rc6 is
> broken on ehl!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/perf.c | 28 ++++++++++++++++++----------
>   1 file changed, 18 insertions(+), 10 deletions(-)
>
> diff --git a/tests/perf.c b/tests/perf.c
> index b7d5e50e3..24d245496 100644
> --- a/tests/perf.c
> +++ b/tests/perf.c
> @@ -4147,27 +4147,35 @@ test_rc6_disable(void)
>   		.num_properties = sizeof(properties) / 16,
>   		.properties_ptr = to_user_pointer(properties),
>   	};
> -	unsigned long n_events_start, n_events_end;
> -	unsigned long rc6_enabled;
> +	unsigned long rc6_start, rc6_end, rc6_enabled;
>   
>   	rc6_enabled = 0;
>   	igt_sysfs_scanf(sysfs, "power/rc6_enable", "%lu", &rc6_enabled);
>   	igt_require(rc6_enabled);
>   
> +	/* Verify rc6 is functional by measuring residency while idle */
> +	gem_quiescent_gpu(drm_fd);
> +	rc6_start = rc6_residency_ms();
> +	usleep(50000);
> +	rc6_end = rc6_residency_ms();
> +	igt_require(rc6_end != rc6_start);
> +
> +	/* While OA is active, we keep rc6 disabled so we don't lose metrics */
>   	stream_fd = __perf_open(drm_fd, &param, false);
>   
> -	n_events_start = rc6_residency_ms();
> -	nanosleep(&(struct timespec){ .tv_sec = 0, .tv_nsec = 500000000 }, NULL);
> -	n_events_end = rc6_residency_ms();
> -	igt_assert_eq(n_events_end - n_events_start, 0);
> +	rc6_start = rc6_residency_ms();
> +	usleep(50000);
> +	rc6_end = rc6_residency_ms();
> +	igt_assert_eq(rc6_end - rc6_start, 0);
>   
>   	__perf_close(stream_fd);
>   	gem_quiescent_gpu(drm_fd);
>   
> -	n_events_start = rc6_residency_ms();
> -	nanosleep(&(struct timespec){ .tv_sec = 1, .tv_nsec = 0 }, NULL);
> -	n_events_end = rc6_residency_ms();
> -	igt_assert_neq(n_events_end - n_events_start, 0);
> +	/* But once OA is closed, we expect the device to sleep again */
> +	rc6_start = rc6_residency_ms();
> +	usleep(50000);
> +	rc6_end = rc6_residency_ms();
> +	igt_assert_neq(rc6_end - rc6_start, 0);
>   }
>   
>   static void


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
