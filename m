Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868EC9E19B2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 11:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C3E10E317;
	Tue,  3 Dec 2024 10:46:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EBEAzh7s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26CB10E317
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 10:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733222790; x=1764758790;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=w7cWusn6Bwj2bwK5IzqQncZkLc0kl2KycQ45c1hXDGo=;
 b=EBEAzh7siE4znZ4b4griJm5/mVIp1uXVgFN67bmTA+Y1j3e9bFElyCtT
 d4+KRW8zYln3+c/ZBbthRav4wHs6oJBfEMLd7cL2qqRm4i7eQ/PZNmPjL
 07hO9oBu70mpoMmAQ9VFS5K3Cdv4yB1dlRx5M3bG7k0D/x8Nl3kEd8/Lw
 UJK2dvFdpWiu7if/1PFgJ8rSfui2ii/uGpC9/gQpxStzCJVWoBShYl9wp
 8Y9q5vxbCIH7PLAHcej8CYTF6WXYwPc6IcI0mj1ozP673FOh2C1emIV/o
 gW9dy1DA/yumpBdDcq8uYy/Io8RZkhgSFQ3FSy/JeLmkQ+iTKDc8Vbb8J w==;
X-CSE-ConnectionGUID: wD8Wm8wERKGNf3DT16wqiA==
X-CSE-MsgGUID: PbNTrPCwTXazPivmbHZQyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33172452"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33172452"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 02:46:21 -0800
X-CSE-ConnectionGUID: ocnpyV83QmmvMNrTQ5GuZQ==
X-CSE-MsgGUID: WGeqVzSMQzmtV/hkEGp/oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93483787"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 02:46:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sk Anirban <sk.anirban@intel.com>, intel-gfx@lists.freedesktop.org
Cc: badal.nilawar@intel.com, karthik.poosa@intel.com,
 anshuman.gupta@intel.com, Sk Anirban <sk.anirban@intel.com>
Subject: Re: [PATCH v2] drm/i915/selftests: Add delay to stabilize frequency
 in live_rps_power
In-Reply-To: <20241203061114.2790448-1-sk.anirban@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241203061114.2790448-1-sk.anirban@intel.com>
Date: Tue, 03 Dec 2024 12:46:15 +0200
Message-ID: <8734j559jc.fsf@intel.com>
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

On Tue, 03 Dec 2024, Sk Anirban <sk.anirban@intel.com> wrote:
> Add delays to allow frequency stabilization before power measurement
> to fix sporadic power conservation issues in live_rps_power test.

Looks like band-aid. What's the root cause?

BR,
Jani.

>
> v2:
>   - Move delay to respective function (Badal)
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index dcef8d498919..c207a4fb03bf 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1125,6 +1125,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
>  static u64 measure_power_at(struct intel_rps *rps, int *freq)
>  {
>  	*freq = rps_set_check(rps, *freq);
> +	msleep(100);
>  	return measure_power(rps, freq);
>  }

-- 
Jani Nikula, Intel
