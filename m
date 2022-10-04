Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B25F4493
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F6889C05;
	Tue,  4 Oct 2022 13:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A8E89C05
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664891080; x=1696427080;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eSBe9smtoV7qkYQconvXq2pg50vA/fg0vgTMB4G1NN8=;
 b=eKkuqxAPUL6LL8X0+3Vwonr9FHQeTrOOii9nwMBcsrHRz3EvsOnD6sGd
 coq1zDkDbTZbr0zadsM0wMYJIwVuqiW398dwmQM5Bfldw9ix1kN8SzwI1
 mDh0c2VqV8l8K6nfOuV4/maHksIym3tBoc+rKTE403twdKHRgrum1ocuv
 0lk/ymS1nM64Mx1TxR6bB2w5eJ5Awhb9S742+US+l7ssUHejQn066Lzg9
 uGxlisV1jPhIVJBiCZvbUn68IzHGeAZE+39OYlMaDTbQTsSmv2v+TPaS3
 t8vHptH4JcZarRQ8opqnClmaF0790uXDusEMw3PN/dRPHQ+9y2tFO34U3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="302888453"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="302888453"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:44:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713013640"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="713013640"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2022 06:44:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 16:44:35 +0300
Date: Tue, 4 Oct 2022 16:44:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <Yzw4w6JQ2fKo9AE1@intel.com>
References: <YzZynE2FAMNQKm2E@kroah.com> <YzaFq7fzw5TbrJyv@kroah.com>
 <03147889-B21C-449B-B110-7E504C8B0EF4@sladewatkins.net>
 <aa8b9724-50c6-ae2e-062d-3791144ac97e@cern.ch>
 <e3e2915d-1411-a758-3991-48d6c2688a1e@leemhuis.info>
 <YzsfrkJcwqKOO+E/@intel.com> <YzsgeXOK6JeVQGHF@intel.com>
 <714903fa-16c8-4247-d69d-74af6ef50bfa@leemhuis.info>
 <9aae6b15-265a-4ef9-87c1-83dfe5094378@smtp-relay.sendinblue.com>
 <Yzw3591mUb8b9Wst@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yzw3591mUb8b9Wst@kroah.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] Regression on 5.19.12,
 display flickering on Framework laptop
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
Cc: regressions@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 Slade Watkins <srw@sladewatkins.net>, stable@vger.kernel.org,
 Thorsten Leemhuis <regressions@leemhuis.info>,
 David Matthew Mattli <dmm@mattli.us>, Jerry Ling <jiling@cern.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 04, 2022 at 03:40:55PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Oct 04, 2022 at 06:46:10AM -0500, David Matthew Mattli wrote:
> > Thorsten Leemhuis writes:
> > 
> > > On 03.10.22 19:48, Ville Syrjälä wrote:
> > >> On Mon, Oct 03, 2022 at 08:45:18PM +0300, Ville Syrjälä wrote:
> > >>> On Sat, Oct 01, 2022 at 12:07:39PM +0200, Thorsten Leemhuis wrote:
> > >>>> On 30.09.22 14:26, Jerry Ling wrote:
> > >>>>>
> > >>>>> looks like someone has done it:
> > >>>>> https://bbs.archlinux.org/viewtopic.php?pid=2059823#p2059823
> > >>>>>
> > >>>>> and the bisect points to:
> > >>>>>
> > >>>>> |# first bad commit: [fc6aff984b1c63d6b9e54f5eff9cc5ac5840bc8c]
> > >>>>> drm/i915/bios: Split VBT data into per-panel vs. global parts Best, Jerry
> > |
> > >>>>
> > >>>> FWIW, that's 3cf050762534 in mainline. Adding Ville, its author to the
> > >>>> list of recipients.
> > >>>
> > >>> I definitely had no plans to backport any of that stuff,
> > >>> but I guess the automagics did it anyway.
> > >>>
> > >>> Looks like stable is at least missing this pile of stuff:
> > >>> 50759c13735d drm/i915/pps: Keep VDD enabled during eDP probe
> > >>> 67090801489d drm/i915/pps: Reinit PPS delays after VBT has been fully
> > parsed
> > >>> 8e75e8f573e1 drm/i915/pps: Split PPS init+sanitize in two
> > >>> 586294c3c186 drm/i915/pps: Stash away original BIOS programmed PPS delays
> > >>> 89fcdf430599 drm/i915/pps: Don't apply quirks/etc. to the VBT PPS
> > >>> delays if they haven't been initialized
> > >>> 60b02a09598f drm/i915/pps: Introduce pps_delays_valid()
> > >>>
> > >>> But dunno if even that is enough.
> > >
> > > If you need testers: David (now CCed) apparently has a affected machine
> > > and offered to test patches in a different subthread of this thread.
> > >
> > 
> > I cherry-picked the six commits Thorsten listed onto 5.19.12 and it
> > resolved the issue on my Framework laptop.
> 
> Thanks for testing, but I'm just going to revert the offending commits
> as they probably shouldn't all be added to 5.19.y

Yeah, revert seems the safer route. Thanks.

-- 
Ville Syrjälä
Intel
