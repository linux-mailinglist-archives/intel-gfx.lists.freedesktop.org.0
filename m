Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381E34B8345
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 09:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAB810E7FC;
	Wed, 16 Feb 2022 08:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C177B10E78B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 08:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645001344; x=1676537344;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KGeSZYsC04LOheklZRggSOx/SSzwgwGk7ud+6bcdvcc=;
 b=n/4dsJznVpK+HxCEXrO1FHUlv9UNFdh4sEj9FWk80wmLiXYz+X190KN8
 METSkefPXnUaUcHxL71MvPAfpQgfz+RJJp0cl0Dew7kHOnQFlYYiBevw8
 8HG6FyGulK4FRO6nVHrUqaLAgKUGE4sKjYsgi350JmlxRORYTYEmizQiA
 rAkKKf2ewntoCdxg+yHZZuZ2OZsenkJjwO6nUS0KySnSpUikVwLxQ0cZ7
 94ZWoBXtLcwR1z2hdkwM54xUtBfEvkRSxsfr/WUqnAULgwvHjvhP4H83U
 AhWTayBnX6PPfRVXBZ3UOTGarPlSBPpqud/nEJ6mFSryVMX2WI/vSlUE4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="230518228"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="230518228"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 00:49:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="571184142"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 16 Feb 2022 00:49:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 10:49:01 +0200
Date: Wed, 16 Feb 2022 10:49:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Ygy6fVYc5wTg+q5m@intel.com>
References: <20220215061342.2055952-1-matthew.d.roper@intel.com>
 <20220215061342.2055952-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215061342.2055952-2-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Move MCHBAR registers to
 their own header
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

On Mon, Feb 14, 2022 at 10:13:42PM -0800, Matt Roper wrote:
> Registers that exist within the MCH BAR and are mirrored into the GPU's
> MMIO space are a good candidate to separate out into their own header.
> 
> For reference, the mirror of the MCH BAR starts at the following
> locations in the graphics MMIO space (the end of the MCHBAR range
> differs slightly on each platform):
> 
>  * Pre-gen6:           0x10000
>  * Gen6-Gen11 + RKL:  0x140000
> 
> v2:
>  - Create separate patch to swtich a few register definitions to be
>    relative to the MCHBAR mirror base.
>  - Drop upper bound of MCHBAR mirror from commit message; there are too
>    many different combinations between various platforms to list out,
>    and the documentation is spotty for the older pre-gen6 platforms
>    anyway.
> 
> Bspec: 134, 51771
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
