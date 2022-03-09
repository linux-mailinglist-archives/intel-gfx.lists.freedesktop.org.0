Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8CC4D3AF5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 21:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 706CE10E421;
	Wed,  9 Mar 2022 20:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FBDA10E41A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 20:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646857311; x=1678393311;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eh6zljM6wl5zcQMcr53FpmShLHX8Lr9dendslzhPvOw=;
 b=TB5Q351zw1uLxqX4DRv39E/zYTCOk2lM8f/c1UWcgY79oE/IJnKnmKkz
 cL5KGyKHjyhp5k/5X971U1wYTyPDM1qM+I1G9BVJeuarenu3YW2a4qSGu
 6vN3+U5rYwIw9ZoSILdZUz3NzKNrMU2D7Tek0KxKHESyktfQz1x2pm/j6
 JqofLcH8+FBPTx2RC8aEp7PAB6McCE025Z8IBVWIyhcrR/wrx9In1FVr7
 OrR9Brj3UjhjYBPWrs+joaFPoGDvEJ3EpNzGgTX2lqul0EwPPB2eCCaE6
 5/AfJjAf62ih60wGF1qPCYcopyjGEJEqyDD/N80VtODAwGgObgCyxHlYs A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="341512441"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="341512441"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 12:21:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="642289394"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 09 Mar 2022 12:21:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 22:21:47 +0200
Date: Wed, 9 Mar 2022 22:21:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YikMW6lE4QwKAHOU@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-7-ville.syrjala@linux.intel.com>
 <20220309185959.GA9439@intel.com> <Yij7HFOvBiVg+kqD@intel.com>
 <20220309193458.GA9556@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309193458.GA9556@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Fix PSF GV point mask when
 SAGV is not possible
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 09, 2022 at 09:34:58PM +0200, Lisovskiy, Stanislav wrote:
> On Wed, Mar 09, 2022 at 09:08:12PM +0200, Ville Syrjälä wrote:
> > On Wed, Mar 09, 2022 at 08:59:59PM +0200, Lisovskiy, Stanislav wrote:
> > > On Wed, Mar 09, 2022 at 06:49:46PM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > Don't just mask off all the PSF GV points when SAGV gets disabled.
> > > > This should in fact cause the Pcode to reject the request since
> > > > at least one PSF point must remain enabled at all times.
> > > 
> > > Good point, however I think this is not the full fix:
> > > 
> > > BSpec says:
> > > 
> > > "At least one GV point of each type must always remain unmasked."
> > > 
> > > and
> > > 
> > > "The GV point of each type providing the highest bandwidth 
> > >  for display must always remain unmasked."
> > > 
> > > So I guess we should then also choose thr PSF GV point with
> > > the highest bandwidth as well.
> > 
> > The spec says PSF GV is fast enough to now stall the display data
> > fetch so we don't need to restrict the PSF points here.
> 
> But why it asks to ensure that we have the PSF GV of highest bandwidth to
> stay always unmasked then?

I presume so you don't lock the memory bandwdith to some lower
performance point and hurt all the other things that need
memory bandwidth. Either that or there is some internal
implementation detail that simply doesn't work if you try to
permanently run at a lower performance point.

-- 
Ville Syrjälä
Intel
