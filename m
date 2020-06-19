Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2A3201C3D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 22:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0221B8945B;
	Fri, 19 Jun 2020 20:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088478945B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 20:16:19 +0000 (UTC)
IronPort-SDR: W1SEVrVxbBBzyrKS/YzKQCQcfR01ZNB40VC1gB1dJvVQcxPUxHHmc7ROD/uyE1CBZituQTf7xo
 SRdXW9/R40Jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9657"; a="141385661"
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; d="scan'208";a="141385661"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 13:16:19 -0700
IronPort-SDR: voIfzF3EYTg3eLuLZL2i1qWEmF/oEZnAVg8LnL5GYhmsrG4475XYQrGVhdFVvui5e78WHjQhLu
 Uh3e52GfQJLg==
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; d="scan'208";a="263955101"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 13:16:19 -0700
Date: Fri, 19 Jun 2020 13:14:04 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20200619201404.GI334084@intel.com>
References: <20200618202701.729-1-rodrigo.vivi@intel.com>
 <20200619080900.GD8425@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619080900.GD8425@kroah.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make Wa_14010229206 permanent
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 19, 2020 at 10:09:00AM +0200, Greg KH wrote:
> On Thu, Jun 18, 2020 at 01:27:00PM -0700, Rodrigo Vivi wrote:
> > From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > 
> > commit 63d0f3ea8ebb67160eca281320d255c72b0cb51a upstream.
> > 
> > This workaround now applies to all steppings, not just A0.
> > Wa_1409085225 is a temporary A0-only W/A however it is
> > identical to Wa_14010229206 and hence the combined workaround
> > is made permanent.
> > Bspec: 52890
> > 
> > Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > Tested-by: Rafael Antognolli <rafael.antognolli@intel.com>
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > [mattrope: added missing blank line]
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20200326234955.16155-1-swathi.dhanavanthri@intel.com
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> What stable kernel(s) is this backport for?  You need to give us a hint
> :)

It's for 5.7.y only. Sorry for not being clear

> 
> thanks,
> 
> greg k-h
> 
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 5176ad1a3976..092a42367851 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1379,12 +1379,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  			    GEN7_FF_THREAD_MODE,
> >  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> >  
> > -		/*
> > -		 * Wa_1409085225:tgl
> > -		 * Wa_14010229206:tgl
> > -		 */
> > -		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> > -
> >  		/* Wa_1408615072:tgl */
> >  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> >  			    VSUNIT_CLKGATE_DIS_TGL);
> > @@ -1402,6 +1396,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		wa_masked_en(wal,
> >  			     GEN9_CS_DEBUG_MODE1,
> >  			     FF_DOP_CLOCK_GATE_DISABLE);
> > +
> > +		/*
> > +		 * Wa_1409085225:tgl
> > +		 * Wa_14010229206:tgl
> > +		 */
> > +		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> >  	}
> >  
> >  	if (IS_GEN(i915, 11)) {
> > -- 
> > 2.24.1
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
