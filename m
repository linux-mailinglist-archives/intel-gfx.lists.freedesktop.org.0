Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A11BAE6CD9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 18:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B636F10E0DB;
	Tue, 24 Jun 2025 16:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZuXgrgC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46D510E0DB;
 Tue, 24 Jun 2025 16:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783804; x=1782319804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZvqGwqjppbPHxsasoX+zoTaf4RAOUb2sHbUJ+fb5/QQ=;
 b=LZuXgrgC0T2utCdfDAh/7aGhu+78q+poiIySPSpQVgw4rs95VkRQ2c8R
 MCLaHcO2B9kZKo7ReNz/vkyEr0CRIrvNddd3hrq1coZanVg8MlmugzrgY
 1oddp2quiQoqiRynmaMa4/a1X6TAS8g0RTfenSfHXD2XDOIfrByN8HsWE
 Ihmv31B7GS8m+v2y5SPxvPUKr6ymtF3alLiQUhxrOHW1BpbWjUR03kHJU
 dJxm7leoFzZQzPUSDWZvwrz5hTcuUBRYkrIFENI1hY6ZLFIImSNb+0veU
 LrZsTuLbncx8+5puj2IHlUUMAwFP1yfL53zCtr1xB9BKEJy1GnB8flwAe A==;
X-CSE-ConnectionGUID: gy1/S//kQ9mKJ4nntTDx4Q==
X-CSE-MsgGUID: euTFOX0fSGW0QfngP7ocoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56818911"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56818911"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:50:03 -0700
X-CSE-ConnectionGUID: GOUltRKNQs6JEQDqg2EgRQ==
X-CSE-MsgGUID: q/8If8CoQMCTthIdha9UDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157748171"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 09:50:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 19:49:59 +0300
Date: Tue, 24 Jun 2025 19:49:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Message-ID: <aFrXN20jmuP_Hc01@intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
 <aFlnzzW7HhtcqWs7@intel.com>
 <5fe0cd00-291b-4e93-a93a-6f8e32db4541@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5fe0cd00-291b-4e93-a93a-6f8e32db4541@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Jun 24, 2025 at 10:10:53AM +0530, Nautiyal, Ankit K wrote:
> 
> On 6/23/2025 8:12 PM, Ville Syrjälä wrote:
> > On Fri, Jun 20, 2025 at 06:14:16PM +0530, Ankit Nautiyal wrote:
> >> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
> >> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
> >> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
> >> not support TPS4. While this was intended to address instability observed
> >> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
> >> and not for eDPRX.
> > I see no exception given for eDP regarding this rule. The only exception
> > allowed is that eDP can say DPCD_REV=1.4 + TPS4_SUPPORTED=0. So I still
> > claim that these eDP sinks are violating the spec.
> 
> Hmm.. Yes the spec allows eDP sinks to report DPCD_REV=1.4 and 
> TPS4_SUPPORTED, so perhaps eDPs claiming HBR3 with DPCD rev other than 
> rev 1.4 and not supporting TPS4 are indeed violating the spec.
> 
> Would it make sense to add a condition that checks for DPCD_REV=1.4.
> 
> Specifically:
> 
> if DPCD_REV=1.4 and TPS4_SUPPORTED = 0, then do not prune the HBR3 rate?
> 
> Or otherway if DPCD_REV!=1.4 and TPS4_SUPPORTER = 0, prune the HBR3 rate
> 
> This way the patch need not be reverted, but modified to address 
> instability issues for eDP panels that are not aligned with the spec.
> 
> That said, the gitlab issue#5969 [1] will still need another solution 
> since it seems to have DPCD rev 14 as per logs:
> 
> DPCD: 14 1e 44 41 00 00 01 80 02 00 02 00 00 0b 80

I think we do need the quirk. But the commit message should IMO be
adjusted so that it doesn't claim that these panels are 100% legal.

-- 
Ville Syrjälä
Intel
