Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038D56D2BEA
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 01:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0172410F351;
	Fri, 31 Mar 2023 23:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA4410F351;
 Fri, 31 Mar 2023 23:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680306999; x=1711842999;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=3kVM3ElN+6YNNBdxXVKokjRfzPFJ+kqSEIyC7h0yFsU=;
 b=LYJfjXRyqLUSwpYT1cTWS+OOw9VBnOFP3yf8tkPhoHY+93cjtuXTG++Q
 m/1iwVhIMS1TptSdp8YyxxSsrb/+v20zwxzFTLaLPS3NKp3aLHb/r0bsF
 Nt5X684C+sQriqvAbOZb3g0nNKcTWGWtdSLLdjUBAu6kzBk8DpDOpRFVN
 6yltjJIYMr7EM7jiTwNZblifHRQAbJjNqxPFaSwxKMlzd6qZQAaTVSk40
 ErZp0ISIx5aHCeTuVOFr56eLslejabGW7Ol7BMe8vdUaaRWTH7SaIOPsD
 cI2YrWkZtPRmw4Q4NL0oTCQgnGHtFkplSA4W6R91+4UQ/aB2p5n5ZMNCP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="339083527"
X-IronPort-AV: E=Sophos;i="5.98,308,1673942400"; d="scan'208";a="339083527"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 16:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="774528667"
X-IronPort-AV: E=Sophos;i="5.98,308,1673942400"; d="scan'208";a="774528667"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.61.228])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 16:56:38 -0700
Date: Fri, 31 Mar 2023 16:56:37 -0700
Message-ID: <87bkk8h3uy.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
In-Reply-To: <20230328020028.2143954-3-vinay.belgaumkar@intel.com>
References: <20230328020028.2143954-1-vinay.belgaumkar@intel.com>	<20230328020028.2143954-3-vinay.belgaumkar@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] i915_pm_freq_api: Add
 some basic SLPC igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Mar 2023 19:00:28 -0700, Vinay Belgaumkar wrote:
>

Hi Vinay,

> +/*
> + * Too many intermediate components and steps before freq is adjusted
> + * Specially if workload is under execution, so let's wait 100 ms.
> + */
> +#define ACT_FREQ_LATENCY_US 100000
> +
> +static uint32_t get_freq(int dirfd, uint8_t id)
> +{
> +	uint32_t val;
> +
> +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);

igt_assert?

> +static void test_freq_basic_api(int dirfd, int gt)
> +{
> +	uint32_t rpn, rp0, rpe;
> +
> +	/* Save frequencies */
> +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
> +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
> +
> +	/*
> +	 * Negative bound tests
> +	 * RPn is the floor
> +	 * RP0 is the ceiling
> +	 */
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);

Is this supposed to be RPS_MAX_FREQ_MHZ?

> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
> +

After addressing the above, this is:

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Also, before merging it would be good to see the results of the new
tests. So could you add a HAX patch adding the new tests to
fast-feedback.testlist and resend the series?

Thanks.
--
Ashutosh
