Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EB141AD52
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 12:52:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B0F89B84;
	Tue, 28 Sep 2021 10:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C674D89B84
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 10:52:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="204160593"
X-IronPort-AV: E=Sophos;i="5.85,329,1624345200"; d="scan'208";a="204160593"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 03:52:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,329,1624345200"; d="scan'208";a="562183340"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 03:52:53 -0700
Date: Tue, 28 Sep 2021 13:52:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20210928105249.GA2069823@ideak-desk.fi.intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-11-imre.deak@intel.com>
 <63811f47b365ba59c118ee855af7043ce55eb4ad.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <63811f47b365ba59c118ee855af7043ce55eb4ad.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/icl/tc: Remove the ICL
 special casing during TC-cold blocking
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

On Tue, Sep 28, 2021 at 01:02:21AM +0300, Souza, Jose wrote:
> On Tue, 2021-09-21 at 03:23 +0300, Imre Deak wrote:
> > While a TypeC port mode is locked a DISPLAY_CORE power domain reference
> > is held, which implies a runtime PM ref. By removing the ICL !legacy
> > port special casing, a TC_COLD_OFF power domain reference will be taken
> > for such ports, which also translates to a runtime PM ref on that
> > platform. A follow-up change will stop holding the DISPLAY_CORE power
> > domain while the port is locked.
> 
> This should be squashed to 'drm/i915/tc: Refactor TC-cold
> block/unblock helpers' otherwise domain is not initialized for this
> case.

domain is always only valid with a non-zero wakeref, so no need to init
domain if the returned wakeref is zero.

> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 6 ------
> >  1 file changed, 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index b2a3d297bfc19..8d799cf7ccefd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -71,9 +71,6 @@ tc_cold_block_in_mode(struct intel_digital_port *dig_port, enum tc_port_mode mod
> >  {
> >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> >  
> > -	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
> > -		return 0;
> > -
> >  	*domain = tc_cold_get_power_domain(dig_port, mode);
> >  
> >  	return intel_display_power_get(i915, *domain);
> > @@ -108,9 +105,6 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
> >  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> >  	bool enabled;
> >  
> > -	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
> > -		return;
> > -
> >  	enabled = intel_display_power_is_enabled(i915,
> >  						 tc_cold_get_power_domain(dig_port,
> >  									  dig_port->tc_mode));
> 
