Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1885284A17
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 12:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424676E452;
	Tue,  6 Oct 2020 10:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D41D6E452
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 10:05:22 +0000 (UTC)
IronPort-SDR: i/hcHamhpfF/gW2xAbGFQbgNjTJmLZXj+ml7fSMMdVpYTvOfocBiyBAxSZei+ERl//sC0FmsWY
 fT80AV5dFpPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="144340032"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="144340032"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 03:05:20 -0700
IronPort-SDR: gz4p6mhTVSTy+DSEWl26pw14AEb75dgRxMvlASUpjGLaONw91z9Xn7ih4dXywMaE81WWleEbgJ
 V+HauEz/c10w==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="527277345"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 03:05:19 -0700
Date: Tue, 6 Oct 2020 13:05:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201006100515.GB1494421@ideak-desk.fi.intel.com>
References: <20201003010708.1272753-1-imre.deak@intel.com>
 <20201005215311.1475666-1-imre.deak@intel.com>
 <87d01vk7vh.fsf@intel.com>
 <20201006095543.GA1494421@ideak-desk.fi.intel.com>
 <87a6wzk72i.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a6wzk72i.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915: Move the initial fastset
 commit check to encoder hooks
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 01:00:21PM +0300, Jani Nikula wrote:
> On Tue, 06 Oct 2020, Imre Deak <imre.deak@intel.com> wrote:
> > On Tue, Oct 06, 2020 at 12:42:58PM +0300, Jani Nikula wrote:
> >> On Tue, 06 Oct 2020, Imre Deak <imre.deak@intel.com> wrote:
> >> > +static bool gen11_dsi_initial_fastset_check(struct intel_encoder *encoder,
> >> > +					    struct intel_crtc_state *crtc_state)
> >> > +{
> >> > +	if (crtc_state->dsc.compression_enable) {
> >> > +		drm_dbg_kms(encoder->base.dev, "Forcing full modeset due to DSC being enabled\n");
> >> > +		crtc_state->uapi.mode_changed = true;
> >> 
> >> Just musing... if it's a *check*, why do we pass in a non-const
> >> crtc_state and modify it here?
> >> 
> >> Would it not be cleaner to pass in const crtc_state and set
> >> crtc_state->uapi.mode_changed in the caller based on the return value?
> >
> > The encoder can update the *_changed flags in crtc_state depending on
> > what is preventing a fastset.
> 
> Okay... is this a good design? ;)

That's how atomic_check hooks work..

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
