Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EB84E2FC9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 19:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027D610E34B;
	Mon, 21 Mar 2022 18:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A786D10E34B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 18:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647886668; x=1679422668;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PPVo6WGSaJBNXw4spfIyUACjIjgTjuhP2F9RQl9iu/E=;
 b=MKo7FdwKC52YcPvFFVBrzU1FUUzvdEamIve/roPZ1skm1rHVQ0kiCo5u
 SK6bHTggxShlBmZHXi6Gicwi+a16R1WdqsvS40u9ISbp+JgdcM/P1U1j1
 AYerjzsNlw4MdHfh3FIqUJVQCa1lcn94hUy39KG6VcKxAwJ08NpJkq34D
 uYjQpogBQJanHfhSu4dRqZEQlITaRGDPALjWHA/6v92PB8hGdYIv0yaM4
 WCuxfTdTyjkbXjLSGm9MYK1aBG9FUzqNcNOnRtZApzZhHg17cNyqeKemJ
 xhlTTj5m59DgPQSzpCqTUWnJpYXNTzeyCShre64XFDB9Z0ieSr3hgO5D8 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="237562141"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="237562141"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 11:17:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="692260189"
Received: from eliasbro-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.30.246])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 11:17:46 -0700
Date: Mon, 21 Mar 2022 11:17:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <20220321181746.lg2rafbfvilfvfop@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220321175604.58987-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220321175604.58987-1-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rps: Centralize computation of
 freq caps
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 21, 2022 at 10:56:04AM -0700, Ashutosh Dixit wrote:
>diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
>index 3941d8551f52..5990df35b393 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
>@@ -37,6 +37,13 @@ enum {
> 	INTEL_RPS_TIMER,
> };
>
>+/* Freq caps exposed by HW, in units of 16.67 MHz for recent gens */

"recent gens" is probably too broad. Since we are exporting this struct
to other parts of the driver and we are already abstracting the
register location and bit position, maybe we should also already
abstract the unit in the same place? i.e. just make it always be
"units of 16.67 MHz", or even just make it a standard Hz unit.

If this would rather make things more complicated for places that expect
"hw units", then maybe just say in this comment the value is in "HW
units" and intel_gpu_freq() should be used to convert to hz.

thanks
Lucas De Marchi

>+struct intel_rps_freq_caps {
>+	u8 rp0_freq;		/* Non-overclocked max frequency. */
>+	u8 rp1_freq;		/* "less than" RP0 power/freqency */
>+	u8 min_freq;		/* AKA RPn. Minimum frequency */
>+};
>+
> struct intel_rps {
> 	struct mutex lock; /* protects enabling and the worker */
>
