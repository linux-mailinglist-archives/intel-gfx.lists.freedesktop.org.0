Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80FA4BC550
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 05:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1ED10E740;
	Sat, 19 Feb 2022 04:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7EFD10E740
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Feb 2022 04:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645243790; x=1676779790;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yoebV0st5bdsT2POmCZWvMoakkdLpLcBMWuLgn+K0ug=;
 b=JYo9C2mKxS5v1ePeRLsXmlapT5TKNd1OCKIXlOcIshC4DBgml0ZfyD+3
 UnySNZQ0ut5syAl8dM6ypCSHRlj7x9KLIZEAiPt1Bf/DzOKhZ4tqu2fVY
 CRQW7DIu1MzCNUe2HT5ReYLBYFZaAV6VsdQb9lEmVOo/aCJe8ggnWhLgj
 A9tPjKvEB9fJKFP1wgCudKdl0XvClHqAfhQZ8n8CTh99VK8+OfWyL+xKE
 La5RikG6oIdYvOhho+DhAdX8AmwG16dDLg/YYakfN5+PdL0WCa6TlUCth
 gd4aAUyvVYqPALrt9x83FoJiA0oggwQcRXFVPrknhx40/95UDCw84Ak83 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="250088785"
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="250088785"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 20:09:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="778196674"
Received: from rkotlyar-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.149.118])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 20:09:50 -0800
Date: Fri, 18 Feb 2022 20:09:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220219040952.uqvkebus4uhatpm2@ldmartin-desk2>
References: <20220218095438.451576-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220218095438.451576-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915/dg2: Do not use phy E
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

On Fri, Feb 18, 2022 at 01:54:36AM -0800, Lucas De Marchi wrote:
>This is an alternative to
>https://patchwork.freedesktop.org/series/100151/
>("drm/i915/dg2: 5th Display output").

After talking with Matt Roper, it seems the issue calibrating the phy
happens sporadically on any phy. So, there isn't anything special with
phy E here.

Therefore, let's just go with the patch series adding the 5th port.

Applied the other series.

Lucas De Marchi

>
>We tried to enable the 5th port in order to get rid of
>the unclaimed register access, but even after the basic plumbing, we
>are still getting and error that the phy failed to calibrate.
>
>So, rather than enabling it and needing another fix on top later, let's
>just fix the immediate issue: we are initializing only 4 ports/phys, but
>intel_phy_is_snps() returns we have 5, so we access registers we
>shouldn't.
>
>I'm still bringing "drm/i915/dg2: Drop 38.4 MHz MPLLB tables", as that
>is just eliminating dead code.
>
>Lucas De Marchi (1):
>  drm/i915/dg2: Do not use phy E
>
>Matt Roper (1):
>  drm/i915/dg2: Drop 38.4 MHz MPLLB tables
>
> drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
> drivers/gpu/drm/i915/display/intel_snps_phy.c | 208 +-----------------
> 2 files changed, 4 insertions(+), 209 deletions(-)
>
>-- 
>2.35.1
>
