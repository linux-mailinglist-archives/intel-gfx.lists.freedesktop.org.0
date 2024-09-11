Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F5F9754BF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3B9C10E06B;
	Wed, 11 Sep 2024 13:56:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bvIytgJx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED4C10E06B;
 Wed, 11 Sep 2024 13:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726062976; x=1757598976;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/85OXgaBvofWkmPOwaTc7TzBznY4uuL4MmiQgB6DT14=;
 b=bvIytgJxpT7W2mKFGsUByi2NHrCF2N4t1Y/Ub+STkTJoZtIWMLX49of/
 18Vido6MzGMQnyTjfsQ4tqBUkceEHC3h20S4uUxQdydlKV08KuInGnCmD
 yw2erDcPVWYruM4ewTXPCpjSMD6HSc/dFlmzg6POa0G/Ewk1M8ncmW/YV
 YeqvQUuK431O0Yj3yQ4VvkT3kTLx+drhP8BTPXzodzzEzfNgXUNwB8rDA
 DWNkY3/UPf7Z7qvXjh04om0TsU2YCuWprCqifxnBdcI0Tg+TSma5M2Rf0
 xT9AVP+d67ynS+jp9MbSj8cs/6tRYsYcUNdy4ECXDp7pHrWaZXH7OxTcU Q==;
X-CSE-ConnectionGUID: uXaDf6w5SNeuC1VedfKHVg==
X-CSE-MsgGUID: 2VwJ4o4oTXizVfpD+z43Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42380338"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="42380338"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:56:16 -0700
X-CSE-ConnectionGUID: p8x30DY8T2iTinnIbwqTSQ==
X-CSE-MsgGUID: EwKyE3OVQoS9u40ALHi6og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="104844349"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:56:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 0/2] HDCP intel_display refactors
In-Reply-To: <20240911090540.643155-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240911090540.643155-1-suraj.kandpal@intel.com>
Date: Wed, 11 Sep 2024 16:56:10 +0300
Message-ID: <874j6mjnut.fsf@intel.com>
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

On Wed, 11 Sep 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Refactors related to intel_hdcp/xe_hdcp in which we replace
> drm_i915_private usage with intel_display wherever possible for
> the ongoing efforts to try use intel_display structure more.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Yay!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> Suraj Kandpal (2):
>   drm/i915/hdcp: Move to using intel_display in intel_hdcp
>   drm/i915/hdcp: Use intel_display in hdcp_gsc
>
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 689 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  40 +-
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   9 +-
>  .../drm/i915/display/intel_hdcp_gsc_message.c |  44 +-
>  .../drm/i915/display/intel_hdcp_gsc_message.h |   3 +-
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |  44 +-
>  6 files changed, 422 insertions(+), 407 deletions(-)

-- 
Jani Nikula, Intel
