Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C49391BCEB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 12:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D8810EC0B;
	Fri, 28 Jun 2024 10:57:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iS9UolI2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254B210EC33
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 10:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719572247; x=1751108247;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EPN1qOnigi9bglY4rlJ4Ny5dD8ON6qwZ44tPsNvFNRY=;
 b=iS9UolI2hDQmR72lfltm6YtBYkM5Ifcwo6An95w82XXZUUGD4pU2CPHa
 m40HZK5L0uD+m+maeopFZxln9b1tB6kn2WLQaI0twLiWhBsn4fakjufmh
 0v1VYgRaFfix4oX37H3SsMaOIbf5yXWINfat4RV5rNZMkg6syDKZcUyY+
 k8zbkmeNp4IqDQ29llwdiUA9NbScQsrjNi8cFBDDqlFfsLWUGSlAMJJbD
 UnMcE/zIg4whd3gUQsn6hpnowgJZ+bsnPjdDTqFwMPsxrY3U7G5UVUkad
 YffaPPkb0seKGP3nIXJ48LtyeNVcNoaRpkdIpEGgJiD0bq9TuBn8C/KjK A==;
X-CSE-ConnectionGUID: mExGaWogQ1W2dKve0K/VzQ==
X-CSE-MsgGUID: UD7lEwfmTICO+84v4ZEJGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="42170889"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="42170889"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 03:57:26 -0700
X-CSE-ConnectionGUID: FrI+37WSR++vUUIGfIcvUw==
X-CSE-MsgGUID: PHRoFseJRm+qxb3P8Sielw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="44693037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Jun 2024 03:57:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jun 2024 13:57:24 +0300
Date: Fri, 28 Jun 2024 13:57:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915: Disable compression tricks on JSL
Message-ID: <Zn6XFAL_x4jEF8gL@intel.com>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
 <20240624150538.24102-2-ville.syrjala@linux.intel.com>
 <Zn3oqMm-oAIS55ot@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zn3oqMm-oAIS55ot@ashyti-mobl2.lan>
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

On Fri, Jun 28, 2024 at 12:33:12AM +0200, Andi Shyti wrote:
> Hi Ville,
> 
> On Mon, Jun 24, 2024 at 06:05:34PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Bspec asks us to disable some compression trick on JSL. While the
> > bspec description is pretty vague it looks like this is some extra
> > trick for 10bpc+ CCS which presumably the ICL derived display engine
> > doesn't support.
> > 
> > Note that we aren't currently exposing 10bpc CCS scanout support,
> > but once that gets added this presumably becomes an issue.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
> >  2 files changed, 10 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index e42b3a5d4e63..af53c40e6c21 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -432,6 +432,7 @@
> >  #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
> >  
> >  #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
> > +#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */
> 
> I know that REG_BIT() is the correct one, but for conformity I
> would still use (1 << 15), otherwise we would have a mess of
> styles.

The file is full of both. I guess I could throw in a patch to
finish the conversion...

> 
> Besides, you are breaking the order here.

The order here is wrong for whatever reason. I suppose I
can cook up a patch to fix that too.

> 
> >  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
> >  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
> >  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 09a287c1aedd..a424b442493f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2286,6 +2286,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
> >  	}
> >  
> > +	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
> > +		/*
> > +		 * "Disable Repacking for Compression (masked R/W access)
> > +		 *  before rendering compressed surfaces for display."
> > +		 */
> > +		wa_masked_en(wal, CACHE_MODE_0_GEN7,
> > +			     DISABLE_REPACKING_FOR_COMPRESSION);
> 
> It is vague, indeed, but the description says that repacking
> provides a boost in performance and "improvement in Lossless
> Compression Algo" (whatever that means, I'm sailing in unknown
> waters here :-) )
> 
> How did you get here?

Bspec:18437 and then I read through the linked HSDs.

-- 
Ville Syrjälä
Intel
