Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 557DD871914
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 10:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8F110E2FD;
	Tue,  5 Mar 2024 09:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFbmAgdE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1A110E2FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 09:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709629741; x=1741165741;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8HLWCgKWZ1GMi1L7Y0mfYiPXGpe1bct7hHrdqJASodU=;
 b=kFbmAgdELPXqMzGdVVfE5EuF62w7Jltq5AXfqlzx8Ik21ZyeqNSIwG03
 eHnSKsrmMZmwVpGaeOtzwjpxoUh3BziBrF6Dmc+P8BlgNajBQfeamZNk7
 Hyg1suNYQ/7ahZpEB0gBiJi/p1dLSXT+USLuDs5OysKeAgRPi+BttXJ4+
 1HLtJVSjK9pe+zckJQEgUuEljngQRXp3JOg2e4OlvRRW1QTlbjK6cQ9Cs
 xjnVWaxp8qv51TGDjlFqYSzg1c2QJ9rvbOPD6F+rq7dZJQF4njpfdMy+x
 bF9o9MBY0khpgMb2ReZPMGXkPrhcSUUdIbIGaTYPWFB/vW/9eHDemqyHG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4030588"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4030588"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 01:09:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="40300085"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 01:08:59 -0800
Date: Tue, 5 Mar 2024 11:08:56 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915: Rename the crtc/crtc_states in the top
 level DDI hooks/etc
Message-ID: <ZebhKDKgGPTTmWJO@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-2-ville.syrjala@linux.intel.com>
 <ZebazalH8c1j1GGH@intel.com> <Zebcuecv8QHwm4AE@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zebcuecv8QHwm4AE@intel.com>
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

On Tue, Mar 05, 2024 at 10:50:01AM +0200, Ville Syrjälä wrote:
> On Tue, Mar 05, 2024 at 10:41:49AM +0200, Lisovskiy, Stanislav wrote:
> > On Fri, Mar 01, 2024 at 04:35:53PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > In preparation for doing a more sensible pipe vs. transcoder
> > > handling for bigjoiner let's rename the crtc/crtc_state in the
> > > top level crtc_enable/disable and the DDI encoder hooks to
> > > include "master" in the name. This way they won't collide with
> > > the per-pipe stuff.
> > > 
> > > Note that at this point this is (at least partially) telling
> > > lies as we still run through some of these for slave pipes as
> > > well. But I wanted to get the huge rename out of the way so
> > > it won't clutter the functional patches so much.
> > > 
> > > TODO: or perhaps use some other names for the per-pipe stuff instead?
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > I will then review now the patches which you could merge before the bigjoiner
> > stuff could be finished.
> 
> I just sent a separate series with the disable_pipes bitmask
> stuff.

I already reviewed all the patches, including that one, if there were
no changes, I guess you can apply that r-b there as well.

> 
> > Checked this patch I guess, you were also talking that this renaming might
> > be not the best idea.
> > I also wonder whether should we really emphasize things like "master"/"slave"
> > in function names. I thought that one idea in our refactoring was to unify
> > joined pipes handling so that there are no(or at least almost no) explicit code
> > paths/function names for masters/slaves.
> 
> There are no master vs. slave functions. The split is going to be
> transcoder/port vs. pipe.

In practice thats what you want to achieve, the functions which also include encoder
programming and/or handling joined pipes you wanted to add master in the name.

I think we should try to mention master/slave explicitly as less as possible.

Stan

> 
> -- 
> Ville Syrjälä
> Intel
