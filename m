Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9624AEBEA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 09:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE1410E4D1;
	Wed,  9 Feb 2022 08:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C7B10E4D1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644394287; x=1675930287;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QszDw/oZEejspg1GBaL5RF9DOw/o1tVg8Ml0rf/0pJw=;
 b=Q3Nkyb7h22BxgNkSpE5uq/GYFC3BfrRdwcaoqlpCCwFp0UigKB6MzCvH
 mKmWk9U8OxokmLxeT47p3A3YxnbUoZddFJfwi9+2woxD52ZHC4/nqXSkY
 XYfia6XdvZz7nOGFItCNrhrCzVb18Yk0+BabOu9gMPe0qaGkKxcrxd9tq
 I72N6IaTCJEHufqXOuwJVgDGYaUEoOHE45QcNsg1uayqKatIzLaoa4mCj
 sVMrpzwaoWN+oYkuIa3WlDJUJwJW7dZFqFaPU7cMm7IpDYJL4CO6tsKGA
 FZY5AUXhM2Jl+AwFUrERv3mT7vz3OqfUrsOm0GL4EG2KaLNWFgjRVuDtd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="247985662"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="247985662"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 00:11:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="568160447"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2022 00:11:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 10:11:23 +0200
Date: Wed, 9 Feb 2022 10:11:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YgN3Kx+9K9huf+B/@intel.com>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <20220209051140.1599643-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220209051140.1599643-7-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Order GT registers by MMIO
 offset
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

On Tue, Feb 08, 2022 at 09:11:40PM -0800, Matt Roper wrote:
> The random order of register definitions we have today causes a lot of
> confusion and unintentional duplication when new registers/bits are
> added to the driver.  Let's order the GT register file by MMIO offset
> 
> A couple duplicated/unused register definitions are dropped while doing
> this re-order:  GEN11_GT_INTR_DW{0,1}, GEN11_IIR_REG{0,1}_SELECTOR, and
> GEN11_INTR_IDENTITY_REG{0,1} aren't used anywhere in the driver because
> we have other parameterized macros referencing those registers.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 2289 ++++++++++++-----------
>  1 file changed, 1147 insertions(+), 1142 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 3b1cae766741..e48a2ffed4fd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -8,67 +8,95 @@
>  
>  #include "i915_reg_defs.h"
>  
> -#define ILK_GDSR				_MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)

Drive by comment: This seems a bit misplaced in intel_gt_regs.h.
I'm thinking we  probably want a intel_mchbar_regs.h for these.

-- 
Ville Syrjälä
Intel
