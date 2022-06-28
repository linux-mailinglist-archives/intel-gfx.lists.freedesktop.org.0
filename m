Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D1B55C02F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 12:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8316510E5D3;
	Tue, 28 Jun 2022 10:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A449510FB9F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 10:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656412187; x=1687948187;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=b+jsoLVw0pGw4K/jitJEj/PdMDXmilIm2UEesJ5syKo=;
 b=WovY0SFx/HpNLzVEpfkrrV5UBSAerQgFHBUdPWMWTsvzYvN1lAYog3Fi
 ORky1iVQfTdMKPYyclGsNVciVYQ319jn7lkOM2XLPZeD79QaDuxhWUJgN
 fqL5qsnjcsSnOwzd/AWhjPB7ya+4SgbP2aACtmMje8+vX2xRGwtva1UPL
 pSUXLW0r3516LrKqTxsR+jtQKo957n1jBVvL92Uia077gJigmFQlVixeu
 vSu0UoxPdrDsH7qE0Xcv57nE2JyaG7luxghZdSboS9wzsMtVTel28VHKb
 uI/0etE31Janasd+hZ3TdCjsBzOb6NW7UhH+sPHX6BREpBI0dmLNWu7NS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="345700324"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="345700324"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="622898837"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga001.jf.intel.com with SMTP; 28 Jun 2022 03:29:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jun 2022 13:29:43 +0300
Date: Tue, 28 Jun 2022 13:29:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YrrYF6uP+krMi9KJ@intel.com>
References: <YrVcHArNMTGCSy+9@kili>
 <01b795d94e10b75a76ec6a0b4ba8201a88a355ea.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <01b795d94e10b75a76ec6a0b4ba8201a88a355ea.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix error code in
 icl_compute_combo_phy_dpll()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 24, 2022 at 12:55:52PM +0000, Souza, Jose wrote:
> On Fri, 2022-06-24 at 09:39 +0300, Dan Carpenter wrote:
> > This function is supposed to return zero or negative error codes but it
> > accidentally returns true on failure.
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>

Thanks for the patch and review. Pushed to drm-intel-next.

> 
> > 
> > Fixes: 92a020747d6c ("drm/i915: Split shared dpll .get_dplls() into compute and get phases")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index ddae7e42ac46..118598c9a809 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -3184,7 +3184,7 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
> >  	struct icl_port_dpll *port_dpll =
> >  		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> >  	struct skl_wrpll_params pll_params = {};
> > -	bool ret;
> > +	int ret;
> >  
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
> >  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> 

-- 
Ville Syrjälä
Intel
