Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E75FC818B4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 17:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4CFC10E03E;
	Mon, 24 Nov 2025 16:25:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VYW0NBN2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F6610E03E;
 Mon, 24 Nov 2025 16:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764001551; x=1795537551;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rqJUt5KLZBGmmzirufsW/LrwcnY6murk26IMMc/jAKg=;
 b=VYW0NBN2ZZNvNueejpTtkibXrMrzLODegFeLCQ5zQfyNxYvxtlfaqXJk
 eQwwDMvYs+PL7AeamlyKW+dRt1HXUYhorCD2ULHoBF4D4Xw0qXRxHc4zF
 RXfJhS1Gvu4r6y2+4GW3gHX7QK5qMVmA2rDPPC6gCvj0J2MG3lbaTqb1e
 tgaJNxDwGlsu6LTFghq7d3/1k62VjIjvjmduC8KWVviArduPfJQBky3VP
 xSlA4RCL2nFcmDVzVr6K7G55QItCNpeiSOBdrS6hzHCYIXQs1zc24FYCA
 4+BucDYRwSkzP9OWeS7m66ejQyea7pllqK1aSsFnnNPk0Z+91R+7pKvSw g==;
X-CSE-ConnectionGUID: cSISDkZPTMixdnbK1Ery/w==
X-CSE-MsgGUID: nqlnZbTmSGykyvx1aLG86A==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65189131"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="65189131"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 08:25:50 -0800
X-CSE-ConnectionGUID: 3G1z68ZzSGSmVr+YRJ5yEw==
X-CSE-MsgGUID: YFynKxhURwmy+9HnFY0DTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="229661381"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 08:25:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
In-Reply-To: <20251123160127.142599-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
 <20251123160127.142599-3-vinod.govindapillai@intel.com>
Date: Mon, 24 Nov 2025 18:25:44 +0200
Message-ID: <e397113073a89536b28e57f44313eff247bf1fb9@intel.com>
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

On Sun, 23 Nov 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> One of the FBC instances can utilize the reserved area of SoC
> level cache for the fbc transactions to benefit reduced memory
> system power especially in idle scenarios. Reserved area of the
> system cache can be assigned to an fbc instance by configuring
> the cacheability configuration register with offset of the
> compressed frame buffer in stolen memoty of that fbc. There is
> a limit to this reserved area which is programmable and for
> xe3p_lpd the limit is defined as 2MB.
>
> v2: - better to track fbc sys cache usage from intel_display level,
>       sanitize the cacheability config register on probe (Matt)
>     - limit this for integrated graphics solutions, confirmed that
>       no default value set for cache range by hw (Gustavo)
>
> v3: - changes related to the use of fbc substruct in intel_display
>     - use intel_de_write() instead of intel_rmw() by hardcoding the
>       default value fields

Overall issue: The fbc mutexes are per fbc instance, but nothing
protects display->fbc.sys_cache_id.

BR,
Jani.


-- 
Jani Nikula, Intel
