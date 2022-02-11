Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB724B2050
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 09:42:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B2F10EA1F;
	Fri, 11 Feb 2022 08:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD0710EA1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 08:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644568917; x=1676104917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TQBlgx2YOXsSRvcyinCfpQuZrhaFXIRGXi+JSIVT7Jc=;
 b=VqUZvUrlQPIy+MrghPpN/Ln76T01hRbf8MyyhPUZyF6PKS2HpVg7l5ki
 Vcy/ZpUPwjQiVXVVECAsJaneVGNJMpk7E/vtE9YCHeMt/gXGvxj2R+/zW
 uf2FwnWWdwEvvkNd4GhCKcQVCtk3k3ej37lPC3ghEx/X/H0dG/pYjxsMP
 b4KGD48HiRieNVxACNzkf5xOm7NbPZ13MW/QAzYp1TCJxcNVApcYTpiW6
 OylzCa3J0NNTqrqqySsiUnSdyrm+8FH2bo6mPfcbGll0x38/mJqz8Q5iu
 yiWSb+fn398qBSydjmyKwnE5omnpSAv0XoF5T4cLEsPhlvBT5DzySytR8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="233246172"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="233246172"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 00:41:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="679444003"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 11 Feb 2022 00:41:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 10:41:53 +0200
Date: Fri, 11 Feb 2022 10:41:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YgYhUeBZ7gbLmqUp@intel.com>
References: <20220210231217.1706063-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210231217.1706063-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move MCHBAR registers to their
 own header
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

On Thu, Feb 10, 2022 at 03:12:17PM -0800, Matt Roper wrote:
> Registers that exist within the MCH BAR and are mirrored into the GPU's
> MMIO space are a good candidate to separate out into their own header.
> 
> For reference, the mirror of the MCH BAR lives at the following
> locations in the graphics MMIO space:
> 
>  * Pre-gen6:           0x10000 -  0x13000

Should go up to 0x14000 according to some docs I have.

>  * Gen6-Gen11 + RKL:  0x140000 - 0x14FFFF

Some docs say this goes up to 0x180000, other docs have different
numbers. I suppose it doesn't matter all that much really. And
BXT+ clearly can't go past 0x160000 since IIRC that's where some
of the PHY/PLL stuff lives.

>  * TGL, ADL:          0x140000 - 0x15FFFF
> 
> Bspec: 134, 51771
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
<snip>
> -#define GEN6_GT_PERF_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> -#define BXT_GT_PERF_STATUS      _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x7070)
> -#define GEN6_RP_STATE_LIMITS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
> -#define GEN6_RP_STATE_CAP	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
> -#define   RP0_CAP_MASK		REG_GENMASK(7, 0)
> -#define   RP1_CAP_MASK		REG_GENMASK(15, 8)
> -#define   RPN_CAP_MASK		REG_GENMASK(23, 16)
>  #define BXT_RP_STATE_CAP        _MMIO(0x138170)
>  #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
>  #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)

:( This is a bit unfortunate. I wonder if we should make an exception
for these and keep them all together somewhere?

<snip>
> -/* Memory latency timer register */
> -#define MLTR_ILK		_MMIO(0x11222)
> +#define MLTR_ILK				_MMIO(MCHBAR_MIRROR_BASE + 0x1222)

I'd prefer to see a separate patch for the s/number/MCHBAR_MIRROR_BASE/ 
stuff. Very hard to review those in this form.

-- 
Ville Syrjälä
Intel
