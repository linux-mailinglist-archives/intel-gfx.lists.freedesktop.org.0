Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EB77DB948
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 12:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969C310E297;
	Mon, 30 Oct 2023 11:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8D310E297
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 11:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698666677; x=1730202677;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LwRErAI1aD1jUvE9dIHg2pmJebbk8A4sosrrZ4mrncI=;
 b=TBLC4WwJi0tQ+y/HgmXWZ5yD7TZ3PaJ/oaVSYfr1k4IhDtqIlqg+lvJt
 sMQu2c8L9gJMY7wAGFxp4n8DtoCfNykUYYvwgnjmYFOTXoo/I9dv1zRsw
 OaFuRUSdAxnt366Nv9H14cDkxB811Hn4e2moZU8heSjo1EfB3cl+EUHym
 xd6qvSKaKUBpC9vN/0ni1TZ6mgVfDxic+IMW26f+jr6As83sHI7Ub0B/N
 vQAWHfZr0q/PjtLQAxJqshJZCNfqAASpb7zbmguELjTVVDIwuH+JJw6Zu
 AsPGq23bhd1gHeWctwEWHLNq/f6jVvq2xOA1UvF70ZA070fzjosYysncH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="390913478"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="390913478"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 04:51:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="789436555"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789436555"
Received: from squtub-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.238])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 04:51:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 30 Oct 2023 13:51:00 +0200
Message-ID: <87pm0w5nx7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Support HBR3 rate with C10
 phy and eDP in MTL
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
Cc: ville.syrjala@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Oct 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> eDP specification supports HBR3 link rate since v1.4a. Moreover,
> C10 phy can support HBR3 link rate for both DP and eDP. Therefore,
> do not clamp the supported rates for eDP at 6.75Gbps.
>
> Cc: <stable@vger.kernel.org>
>
> BSpec: 70073 74224
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

For future reference, the trailers (Cc, Bspec, Signed-off-by, etc.)  all
go together with no blank lines in between.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1891c0cc187d..2c1034578984 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -430,7 +430,7 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
>  	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>  
>  	if (intel_is_c10phy(i915, phy))
> -		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
> +		return 810000;
>  
>  	return 2000000;
>  }

-- 
Jani Nikula, Intel
