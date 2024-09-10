Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02792973674
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 13:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C80F10E6D9;
	Tue, 10 Sep 2024 11:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SijYCnBT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CAC10E0FC;
 Tue, 10 Sep 2024 11:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725968953; x=1757504953;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=91K06PKaVbd5UjZLatwEoHblshIiUazH5klP2FKlDDY=;
 b=SijYCnBTRE49L16E4QnZ3KLy+R9xygZFnygPnVrR9PqBNRh4/nSFtmGz
 OhjygLNg9wIXKNgMBmFptV4IVes8K07T2MHiJ1cf//GL5R790zuO7MGPS
 90u+VEjV/UePe/q8HlsxFu30EUz15sj1dx+5tXjMGF3E4ifpwi34b9R39
 tGvHmn2znxDwFPkwe34bexFp+waaRGKkyQyIksbFLvYYnz+riGfgVdRQq
 pObW0TCpM4ndoMZDFrebHFvPPu9uj0kOyHk8PN4aX0pVPdKRbKc9h+abI
 /zIhlmFQnvx0jAxuKZ1obsqckxLbT7v3/T8JEY/WiDoOiW1lNlg5Xgj7Z Q==;
X-CSE-ConnectionGUID: OFbx55MbS4G5aMeHYQu3+g==
X-CSE-MsgGUID: ltIhvj6/TCaWTjOhQRF32Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24524446"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24524446"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 04:48:52 -0700
X-CSE-ConnectionGUID: UVLwh/RnQjSRRYgWI+hz3Q==
X-CSE-MsgGUID: zAZc5FPQSjWB9XX85Yg0mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67054383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 04:48:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 14:48:46 +0300
Date: Tue, 10 Sep 2024 14:48:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/reg: fix PCH transcoder timing and
 data/link m/n style
Message-ID: <ZuAyHs_zj9WYETxd@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
 <d96e8a1377f0f3ccf0ee796d16d0467274cd4e9c.1725908152.git.jani.nikula@intel.com>
 <Zt9iNpF3mYjzdKUQ@intel.com> <87bk0wkk7d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bk0wkk7d.fsf@intel.com>
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

On Tue, Sep 10, 2024 at 11:05:10AM +0300, Jani Nikula wrote:
> On Tue, 10 Sep 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, Sep 09, 2024 at 09:58:57PM +0300, Jani Nikula wrote:
> >> Adhere to the style described at the top of i915_reg.h.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_reg.h | 77 ++++++++++++++++++---------------
> >>  1 file changed, 43 insertions(+), 34 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> >> index 2f09145b9791..e439a67fde61 100644
> >> --- a/drivers/gpu/drm/i915/i915_reg.h
> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> @@ -3160,33 +3160,76 @@
> >>  /* transcoder */
> >>  
> >>  #define _PCH_TRANS_HTOTAL_A		0xe0000
> >> +#define _PCH_TRANS_HTOTAL_B          0xe1000
> >
> > There's some tab vs. space damage in this patch.
> 
> Ah, the damage is there before, and I'm just moving lines around. Fixing
> in the same patch breaks git show --color-moved, do you prefer fixing in
> the same patch or a separate patch?

Separate patch seems fine.

-- 
Ville Syrjälä
Intel
