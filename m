Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 240E8604F55
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 20:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0BEF10E36A;
	Wed, 19 Oct 2022 18:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C9D10EB37
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 18:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666202812; x=1697738812;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0ZB6tIvcPXHS7T5LRHGa8QoReU4uKVDV62XPkSx8gyw=;
 b=ToNtmMlSEoM0D8Nfp/H/f+qJnlSTJW6GHGYeIgYjUVCxtNW2dQjqaOsI
 H2OdLaK9obN3osEKFupqAr1gWW4JnnuDP3vRfz1Xj/o/TBLZfixJGZLpV
 pMuIHDIvJR0+XAk7vVrGghrV0PrsoLYNdTvZoShKTwGGIdmKwLyDH6BUt
 qwy0UdF/3JDcKBeAlfzkgMzWBzh3MyIQaGki8tI/sAhDE9hRrq1bwoPH4
 bkgzNU/PfXPUlw9w0j25AoR2ZJaAKDuYb7g71G/ayEAoNAyQpxtzvuGpr
 IelX5Dnnb3fu92ITEwM+ZhPzgAH8nDS7KrakVpjDGoF6XxpUhcHxcPI0g g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286210276"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286210276"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 11:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="631791002"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="631791002"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 19 Oct 2022 11:06:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 21:06:39 +0300
Date: Wed, 19 Oct 2022 21:06:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y1A8r45WrqDnoUHH@intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
 <20221012104936.30911-1-ville.syrjala@linux.intel.com>
 <Y0bOONxS7ngwntbx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y0bOONxS7ngwntbx@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 05:24:56PM +0300, Ville Syrjälä wrote:
> On Wed, Oct 12, 2022 at 01:49:36PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On HSW/BDW the hardware ELD buffer does not work if the controller
> > is suspended. I'm not 100% which thing in there is needed to make it
> > work (at least just forcing the controller into D0 with setpci is
> > not enough). But a full runtime resume seems to do the trick here
> > at least, and so far it looks like this doesn't even deadlock or
> > anything.
> 
> So this apparently works for evrything else except module reload,
> where the ELD buffer isn't ready by the time we do the first modeset.
> Strangely the same thing works fine at boot time when we first load
> the drivers. Not sure what the difference is here.

I think the difference was that during boot I had an enabled displays
so we never turned off the power well. But during reload the power
well gets disabled briefly and some state gets lost.

-- 
Ville Syrjälä
Intel
