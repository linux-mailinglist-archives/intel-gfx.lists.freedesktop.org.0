Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808E99021B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 13:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C69810E29D;
	Fri,  4 Oct 2024 11:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BoZwgp9K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029AD10E29D;
 Fri,  4 Oct 2024 11:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728041606; x=1759577606;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2oNfdap6WztWemIfuemD0R1xPgpVZzvxNmJPq1G8Wzg=;
 b=BoZwgp9KD8+YNmphfETJtO6gxav8ijceXXb3MoLQF1pAuqIszg0nWSgD
 n+gdgFoYDuMNjz9YFCMqloaoBod/1Yrsv6e/VXzgaJ1XDbclZB5fzD+Dg
 fju8zYjYwRgkSvCP3YHodsDGKBRMiQz+s94XYrV+kf3TD9lA4ARgbw+tE
 P7xHH7pnqIRRUaWKofjtp8if2I6c0QqAW6ByX35+TuzZw6Ie6SXrMl9kE
 IgO1fdQA8FVKY2fDoOjvR2iEWOrOZhDFEdLBnM9XQDouFR6+BRI01gg3h
 UGENv8J5Nde9fC4TZT+DvpROv9uCXJwZPIibOrrFTY8ESydycz0ENvrYL w==;
X-CSE-ConnectionGUID: leIH/LvTQKelNaY5Is8d6w==
X-CSE-MsgGUID: Lutd9HRFTmCQWkrPAlIfcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27390953"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27390953"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 04:33:25 -0700
X-CSE-ConnectionGUID: iLRoM2NMSxez/joRY6zMdw==
X-CSE-MsgGUID: 4069awkPQpyqqFmfOW84jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74695339"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 04:33:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@gmail.com>, i915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for Miscelaneous fixes
 for display tracepoints (rev2)
In-Reply-To: <172804037058.2413.13969013073462156051@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <172737888746.1108589.2342053256867257061@2413ebb6fbb6>
 <172804037058.2413.13969013073462156051@gjsousa-mobl2>
Date: Fri, 04 Oct 2024 14:33:20 +0300
Message-ID: <878qv4rtkv.fsf@intel.com>
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

On Fri, 04 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Patchwork (2024-09-26 16:28:07-03:00)
>>#### Possible regressions ####
>>
>>  * igt@i915_selftest@live:
>>    - bat-mtlp-6:         [PASS][1] -> [ABORT][2] +1 other test abort
>>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/bat-mtlp-6/igt@i915_selftest@live.html
>>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v2/bat-mtlp-6/igt@i915_selftest@live.html
>
> This does not seem related to this series, which is only about
> tracepoints.
>
> Jani or Rodrigo, ack to merge this series without triggering a new CI
> cycle? I don't believe CI exercises tests that enable tracepoints. Or
> does it?

BAT *must* pass before merging, no exceptions.

Full shard run failures can be looked over when it's clear the series
didn't cause the failures.


BR,
Jani.


-- 
Jani Nikula, Intel
