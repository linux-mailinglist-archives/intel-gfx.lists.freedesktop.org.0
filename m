Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278E05A0F23
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 13:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F2710F680;
	Thu, 25 Aug 2022 11:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DBB10F680
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 11:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661427200; x=1692963200;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=b7csjJ66m9R1nYCYuZ8qDs+sOFrF9Bp0aHUcdF5vRq8=;
 b=PK629oJ1sKcukLbmLBCuaipRPg4q83odA1kQGvaSAMTZXKeh5bpxwmt2
 JNmxEN9txZjRi+P2D5jPtK7eTInqZwaa+UrpGxknF/0icsnFqov9X2OBy
 UlncxtndOd/aaiEXPtXUH7GMoR/+Z6z3ayNZWhsWz4BxAKYIR/ZhZPF9U
 qBi0hx5cMRkD0W6jDG8JgFp5qEOAaNImsJdUXpoBULUXi8keIWOYMWhTa
 wWW/mTozvtHCdkddFd5+D0k0incsaSpgBMXEwJ+Q9IjPDCPFGmE22iMvm
 kGZOxJHmawIo5LiDt9K/9n8C+q6T0HFuc+zy1bgGbemoxhsIqtAsUOR9g Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="281185489"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="281185489"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 04:33:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="610132871"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga002.jf.intel.com with SMTP; 25 Aug 2022 04:33:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Aug 2022 14:33:15 +0300
Date: Thu, 25 Aug 2022 14:33:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ywdd+7ifzC7AknS7@intel.com>
References: <20220616124137.3184371-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220616124137.3184371-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/glk: ECS Liva Q2 needs GLK HDMI
 port timing quirk
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
Cc: intel-gfx@lists.freedesktop.org,
 Diego Santa Cruz <Diego.SantaCruz@spinetix.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 16, 2022 at 03:41:37PM +0300, Jani Nikula wrote:
> From: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
> 
> The quirk added in upstream commit 90c3e2198777 ("drm/i915/glk: Add
> Quirk for GLK NUC HDMI port issues.") is also required on the ECS Liva
> Q2.
> 
> Note: Would be nicer to figure out the extra delay required for the
> retimer without quirks, however don't know how to check for that.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1326
> Signed-off-by: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Seems fine. Although I do wonder whether we could directly identify the
bogus retimer chip via the dual mode adapter registers. I've asked for
that in the bug.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_quirks.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index c8488f5ebd04..e415cd7c0b84 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -191,6 +191,9 @@ static struct intel_quirk intel_quirks[] = {
>  	/* ASRock ITX*/
>  	{ 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
>  	{ 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
> +	/* ECS Liva Q2 */
> +	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
> +	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>  };
>  
>  void intel_init_quirks(struct drm_i915_private *i915)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
