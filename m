Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F2F986E1A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E771610EAE3;
	Thu, 26 Sep 2024 07:49:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4kSPkKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A43C10EAE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 07:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727336948; x=1758872948;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=n8W1evD7Gcvgop8th/wDtUzHOnt5nw49h0Tuym+QpWc=;
 b=B4kSPkKaCKLca6ruwOvjNaAM7wBOOviSZ12Vz4nthy9k8CCLp671cO8q
 vvqwlATdvrg1dWvsZKxlyLUkU484quhNQrP5a7pnCYfasLo2kGPPtUsag
 W8kDJc3Lw4zDIO4Cr8r3QMMb18rZ/asENaIY3+bYgS8pJVSHmwQotBCxF
 eyvxhP4u/DuG/24nPuiOJg5DedIB7wBg91VNKyoi187Nn0sKP7CNSfJVj
 NPw7V2qI2yPWrcgCLOvv24mRMjFOPYbKRdSPHGlYF9IDOITgPcbcQzCrM
 mtNgpoOpJiBiB3of4ywz0IBXUYFcGzp2B6vyw3QujUYH1jyeCQ3FeQQbg A==;
X-CSE-ConnectionGUID: g1u4/526QaqexPHGpiNxvw==
X-CSE-MsgGUID: z/qkcv1qQdaX5tgg75ydlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="29306995"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="29306995"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:49:07 -0700
X-CSE-ConnectionGUID: nysbsOJ7SlaU/6Vset1ckQ==
X-CSE-MsgGUID: U5NWJrKNSYm8aixHKcp83A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="76553850"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.124])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:49:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/dp: Extract intel_edp_set_sink_rates()
In-Reply-To: <871q163lfh.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
 <20240918190441.29071-3-ville.syrjala@linux.intel.com>
 <871q163lfh.fsf@intel.com>
Date: Thu, 26 Sep 2024 10:49:02 +0300
Message-ID: <87y13e26tt.fsf@intel.com>
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

On Thu, 26 Sep 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 18 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> +	/*
>> +	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
>> +	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
>> +	 */
>> +	if (intel_dp->num_sink_rates)
>> +		intel_dp->use_rate_select = true;
>> +	else
>> +		intel_dp_set_sink_rates(intel_dp);
>
> Isn't this kind of in the wrong place, it's not eDP?

-ENOCOFFEE, sorry for the noise.

BR,
Jani.


-- 
Jani Nikula, Intel
