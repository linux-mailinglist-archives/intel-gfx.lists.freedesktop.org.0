Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDA046422E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 00:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5453C6E520;
	Tue, 30 Nov 2021 23:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D6D6E520
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 23:20:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223566685"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223566685"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:20:04 -0800
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="459035074"
Received: from antonioc-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.191.119])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 15:20:04 -0800
Date: Tue, 30 Nov 2021 15:19:33 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>;, intel-gfx@lists.freedesktop.org
Message-ID: <20211130231933.GA3536@msatwood-mobl>
References: <20211119140931.32791-1-jose.souza@intel.com>
 <a74ffeccb1ce87fff026ce40464022e280a80d9c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a74ffeccb1ce87fff026ce40464022e280a80d9c.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Implement
 Wa_1508744258"
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

On Fri, Nov 19, 2021 at 02:13:53PM +0000, Souza, Jose wrote:
> On Fri, 2021-11-19 at 06:09 -0800, José Roberto de Souza wrote:
> > This workarounds are causing hangs, because I missed the fact that it
> > needs to be enabled for all cases and disabled when doing a resolve
> > pass.
> > 
> > So KMD only needs to whitelist it and UMD will be the one setting it
> > on per case.
> > 
> > This reverts commit 28ec02c9cbebf3feeaf21a59df9dfbc02bda3362.
> 
> Missed a:
> 
> Fixes: 28ec02c9cbeb ("drm/i915: Implement Wa_1508744258")
> 
> So this can be propagated to older kernels, will add while applying.
> 
> > 
> > Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/4145
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 -------
> >  1 file changed, 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index a9727447c0379..cd2935b9e7c81 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -637,13 +637,6 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  	       FF_MODE2_GS_TIMER_MASK,
> >  	       FF_MODE2_GS_TIMER_224,
> >  	       0, false);
> > -
> > -	/*
> > -	 * Wa_14012131227:dg1
> > -	 * Wa_1508744258:tgl,rkl,dg1,adl-s,adl-p
> > -	 */
> > -	wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
> > -		     GEN9_RHWO_OPTIMIZATION_DISABLE);
> >  }
> >  
> >  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> 
