Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A987B1E62
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 15:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CDF10E65E;
	Thu, 28 Sep 2023 13:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA9910E65E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 13:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695907803; x=1727443803;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sSplrfmHP0Vs1N1MPbBZ9krj8vvbCH9pthQp5/xPzEg=;
 b=Q9wPQXGOCLeYA/yPn0Fgl6olNvwOPqjr5b5rliacvYvdGvesX8cUvNr/
 xIlXuDu5IoqyugFeRV3mtf/opJKrciHz3kLJLQGmi78uRqvQTVDpZaFhH
 ElcTglLjlH6eoILRc65Vpebw3Bg9l6UDgLsSatddZeswWzeHace2yiZKk
 T1fzJyO3LVybX3ulul7o+Tv5TdiaZPyHcNnUSbJxZOVm3KNy0uWxgJkLV
 LudFwb2jmS9fuSUGQv592GefeoX0e6g9K6orcg6mcng482UP+4rhmTrP5
 ITgDGdQFvI9Avsnf4gf9UYGL9tkdNbyIcyerVpN3Lf5ekIMJ4AYQ8Xb8M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="448546590"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="448546590"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 06:25:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="815224665"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="815224665"
Received: from mabrazak-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.160.185])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 06:25:48 -0700
Date: Thu, 28 Sep 2023 15:25:39 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZRV+08Cyu5FRSCJp@ashyti-mobl2.lan>
References: <20230928132235.349258-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928132235.349258-1-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/gt: Force mcr lock takeover if
 hardware forgot to release it
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> +	do {
> +		/*
> +		 * Starting with MTL, we need to coordinate not only with other
> +		 * driver threads, but also with hardware/firmware agents.  A
> +		 * dedicated locking register is used.
> +		 */
> +		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> +			err = wait_for(intel_uncore_read_fw(gt->uncore,
> +					      MTL_STEER_SEMAPHORE) == 0x1, 100);
> +		else
> +			break;
> +
> +		/*
> +		 * In theory we should never fail to acquire the HW semaphore;
> +		 * this would indicate some hardware/firmware is misbehaving and
> +		 * not releasing it properly.
> +		 */
> +		if (err == -ETIMEDOUT) {
> +			gt_warn(gt,
> +				"hardware MCR steering semaphore timed out "
> +				"forcing lock takeover\n");
> +			/*
> +			 * Force lock takeover
> +			 */
> +			intel_uncore_write_fw(gt->uncore,
> +					      MTL_STEER_SEMAPHORE, 0x1);
> +		}
> +	} while (err != -ETIMEDOUT);

this is '==' of course... now I missed the CI tests.

Andi
