Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAAE5F6E28
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 21:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A572E10E08D;
	Thu,  6 Oct 2022 19:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E90210E87F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 19:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665084289; x=1696620289;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tQOo1zq/rRiY0zWKnsuST5sVZSMX21lsam1dGfggGmk=;
 b=P1317WacpzmpD9YDjmS9DtvUGsTr6QC/j/HI2w7GLSiBUtXMSuIALVHa
 3f+3+N9TPP/a2Vd8W/oV8y8XCpHwiHh3UkJ3jvOmV9pi9iNQavlBmgqbc
 lyPleNeWw0g350nYLM0KWg+TeyMabUIIglLSHOvNaZclIhsYjScOTnPrW
 i5VbDM+ON7X9E2x4Bx5hVsLd6uODvwEaJQhXEQ0hNCYePkt/TJ8ipl+om
 +so/L8yQufRIbaeDf2Mt9V94qIqJ5f1zbKZ9ZdmMmQdkTDIT9oA5fV65t
 iinHI+97wiyeylMaAifpb750VvK/J2yxWMeHfofOnAaOF739jSRc99zxL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="301146498"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="301146498"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 12:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="713971450"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="713971450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 06 Oct 2022 12:24:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Oct 2022 22:24:45 +0300
Date: Thu, 6 Oct 2022 22:24:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Yz8rfR8T2XoXiIiT@intel.com>
References: <20221005175251.3586272-1-imre.deak@intel.com>
 <20221005175251.3586272-2-imre.deak@intel.com>
 <Yz3Xo4sj71e83rsV@intel.com>
 <Yz3wnbs+66FdHmHG@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yz3wnbs+66FdHmHG@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Suspend/resume encoders
 during GPU reset
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

On Thu, Oct 06, 2022 at 12:01:17AM +0300, Imre Deak wrote:
> On Wed, Oct 05, 2022 at 10:14:43PM +0300, Ville Syrjälä wrote:
> > On Wed, Oct 05, 2022 at 08:52:51PM +0300, Imre Deak wrote:
> > > The GPU reset involves a display suspend/resume sequence, but this is
> > > done without suspending/resuming the encoders.
> > 
> > The display reset path is there for the old platforms which
> > can't reset the gt stuff separately from the display engine. 
> > And the only reason we started to force that codepath on more
> > modern platforms was to make sure it doesn't break all the time.
> > That used to happen quite regularly, but not sure if we even had
> > any pre-g4x hw in CI at the time.
> > 
> > I suspect it's probably a mistake to start piling on more
> > code in there just to make it work on really modern hw.
> > The old hw where it actually matters doesn't need any of
> > that code after all.
> 
> Ok, but for the !clobbers_display case the current resume sequence is
> broken imo. So if this fix is not acceptable how about only restoring
> modeset_restore_state in this case without reading out the HW state
> first (to keep some test coverage still) or removing the
> force_reset_modeset_test?

So the conclusion from our chat was to nuke all the extra
junk from the simulated path and leave it with just the
commit_duplicated_state(). I think that's still sufficient
test of the display vs. reset path since it should still
grab the modeset locks and whatnot. Well, sufficient
assuming it actually works :)

-- 
Ville Syrjälä
Intel
