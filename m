Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D200D6B14E3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 23:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE18E10E747;
	Wed,  8 Mar 2023 22:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA82510E747
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 22:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678313953; x=1709849953;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=K44IqF5dMo//hkkHZu6aXlrgGW6pVx6MfvlTg0/uyv4=;
 b=IsCtpd8RQeWpynRdsDCRPhoiY4BuMXhyj4aMT2gBAq2AsnmzeTYjZamj
 LIHMfF+qkiMC99rLGMg5T2yF477eyu/N4RZiF7pY0gxc72WL6zx8B1L3v
 0DTm6oGg3mY2YRPMyPxXdKLHoIfzTnaVMBlC0Cb/YJIEImsBYc8Aep2Ya
 Uu4D6Glqhl9CJZPEHpa0vpvqDC3aDMXKmvzAJK6xsYp3wjuC0eH8Ze26O
 i/PfrHFPa28PPXnMWQdyOUStavoB5qRgJxtQFH2Ye2kYQO/E+ykPj6/NO
 KyBdP0oTXV3vJpk0f0QaVdp8SI84vJ/AeQrkTdtTr3T+dirlZmsVH21JO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337813582"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="337813582"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 14:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="707357055"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="707357055"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 14:19:11 -0800
Date: Thu, 9 Mar 2023 00:19:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZAkJ3buxTRRbgnt3@ideak-desk.fi.intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
 <20230214134348.11020-3-ville.syrjala@linux.intel.com>
 <ZADzDhPBjkhNsT7+@ideak-desk.fi.intel.com>
 <ZAj8FHyaMWi+EGyY@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAj8FHyaMWi+EGyY@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix idle pattern enabling
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 11:28:07PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 02, 2023 at 09:03:42PM +0200, Imre Deak wrote:
> > On Tue, Feb 14, 2023 at 03:43:48PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Currently we are always switching to the idle pattern after the
> > > link training, but we don't always wait for the minimum number
> > > of idle patterns sent. That doesn't look to be what Bspec
> > > asks of us.
> > > 
> > > According to bspec what we should do is switch to idle pattern
> > > and wait for it only in DP1.4 MST cases. In all other cases we
> > > should apparently do neither.
> > > 
> > > What confuses matters further is that the port sync SST sequence
> > > asks us to "stay in idle pattern". But if we never switched to it
> > > how can we stay in it? This still needs further clarificaiton.
> > 
> > HSW seems to require it also for SST, but yes for all other platforms
> > bspec only requires it for MST.
> 
> commit 3ab9c63705cb ("drm/i915: hsw: fix link training for eDP on
> port-A") (written by you it seems :) says there was some problem on
> HSW that needed it for DDI A SST as well. But it's not really obvious
> why you skipped the IDLE_DONE thing there. Maybe just an optimization?

Ok, forgot about that. Looking back at the discussion the problem on HSW
was that switching from sending idle patterns to normal mode didn't
happen automatically due to some HW problem. The workaround was to to
switch to idle patterns and enable normal mode manually after the pipe
is enabled. The WA didn't require waiting for IDLE_DONE, but before
TGL there is no DP_TP_STATUS register on port A either.

> Anyways, that does suggest that perhaps the current code is more
> correct than what I'm proposing here.
> 
> > The DP2.1 standard has some addition
> > (3.5.1.2.6) referring to idle pattern to be sent after TPS even for SST.
> > Not sure if this would be done automatically by HW w/o manually
> > switching to it.
> 
> I did at some point spot some DP state machine status bits in some
> debug register. If I get bored I might see if I can spot the idle
> pattern transmission on those when we don't explicitly enable it.

Ok, the above suggests that it should work automatically, except when
the WA is needed.

> 
> -- 
> Ville Syrjälä
> Intel
