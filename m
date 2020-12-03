Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA5D2CDF05
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 20:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF086EBFB;
	Thu,  3 Dec 2020 19:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF1B6EBFB
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 19:35:17 +0000 (UTC)
IronPort-SDR: F25yMTmDjhhW5CxZg+OrDv1qQ6bOZb9KGjXNi9j8j/KMz2f/cyguk8TcHSBn2AwL6nCpfl+Ybv
 sACc5Fz6Rdyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="152513604"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="152513604"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:35:16 -0800
IronPort-SDR: YTxXXRsV1kLcg8zAUd55MLlQ0MIxXY92mVi8EPYwcuErYpCKA44rb5cvUYGHl4FkmKvTScqQbo
 bQoFTzVLX42Q==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="361908669"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:35:16 -0800
Date: Thu, 3 Dec 2020 11:38:16 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201203193816.GD2130@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-3-manasi.d.navare@intel.com>
 <87wnytsdgz.fsf@intel.com>
 <20201201222148.GA21862@labuser-Z97X-UD5H>
 <20201202224030.GB26911@labuser-Z97X-UD5H>
 <87v9dic0fi.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9dic0fi.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/display/vrr: Create VRR file
 and add VRR capability check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 03, 2020 at 06:35:29PM +0200, Jani Nikula wrote:
> On Wed, 02 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > On Tue, Dec 01, 2020 at 02:21:56PM -0800, Navare, Manasi wrote:
> >> On Tue, Nov 10, 2020 at 12:39:08PM +0200, Jani Nikula wrote:
> >> > > +{
> >> > > +	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
> >> > 
> >> > I kind of feel like either the function should a) ensure it's okay to do
> >> > intel_attached_dp() and return false if not, or b) just use struct
> >> > intel_dp as the parameter.
> >> > 
> >> > As it is, passing a non-dp connector to this function will fail either
> >> > subtly or spectacularly, but not graciously.
> >
> > Actually after doing some code rewriting, I think it is best to still pass
> > the drm connector but I am adding the check now for connector type
> > Only if its eDP or DP now I get the intel_dp.
> > Future we can add HDMI there as well.
> 
> It's fine, as long as we don't cast to intel_dp unless we know it's
> intel_dp.
> 
> >> > > +
> >> > > +	/*
> >> > > +	 * DP Sink is capable of Variable refresh video timings if
> >> > > +	 * Ignore MSA bit is set in DPCD.
> >> > > +	 * EDID monitor range also should be atleast 10 for reasonable
> >> > > +	 * Adaptive sync/ VRR end user experience.
> >> > > +	 */
> >> > 
> >> > Please fix typos etc.
> >> 
> >> Did I miss some typos, I dont see any in the above comment?
> 
> Odd capitalization, "atleast", "sync/ VRR", maybe also reflow the
> paragraph.
> 
> I know it's nitpicking, but other people will read the comment many,
> many more times than you write it. ;)

Okay yes will remove the odd capitalizations.

Manasi

> 
> 
> BR,
> Jani.
> 
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
