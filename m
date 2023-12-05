Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89271805818
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 16:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6FF10E567;
	Tue,  5 Dec 2023 15:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F9A10E567
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 15:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701788520; x=1733324520;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FG3EGejMC1NGg/2PXloa1dd5lPZSr+Bn/w8zqEbnbBc=;
 b=WaPO27GRQAyBYYRgHgS45UPJLCeTHeDOzeoWX48W4XXCFQzm+F9bzkqS
 7DULd1b7CqcwDr/vb4SgL1il8OOofsAR1y/6rfTm6REjsa+KBvHn6oWWE
 /keaX9XLDtAAFJEpuy8t2Jr1Kvy5giIjU/HX0/vQU7sWkBXA+FFziIzGg
 b78p0Irjej445mAyu0HpwIcW3hH/CW+cqs6T3+qvo/NUsoenEMBFjilmi
 9lE5wzFWosHvgeBFA3bpvpqMCyRnSaIYU2JT7VCjx3duIR+Fs4aeZxysI
 ht84iK8KQdfP0Fby7kAwVyP131vlIg8opfCLdph1UtMN5/Zs/02X6xfL6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="374092793"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="374092793"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 07:01:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="764350105"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764350105"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 05 Dec 2023 07:01:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Dec 2023 17:01:55 +0200
Date: Tue, 5 Dec 2023 17:01:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZW87Yys0Ji6NNG7e@intel.com>
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
 <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <87a5qp3oe1.fsf@intel.com>
 <CY5PR11MB6344014FD6FC06C85356DE48F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <CY5PR11MB63449F65F906172F1785515FF485A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <874jgw3j9q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874jgw3j9q.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 05, 2023 at 02:50:57PM +0200, Jani Nikula wrote:
> On Tue, 05 Dec 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >> Yeah, writing 0 is done with an intention to disable it but that’s not the way to
> >> have this option disabled. Infact there is no reason to write to it for DP1.4+ if sink
> >> is compliant.
> >
> > The change looks ok and aligns with spec, its
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> Ville, any further objections or concerns? Okay to merge?

I guess a small comment on why we're avoiding the BW_SET in there might
be good idea, lest we forget and try to reunify the two branches by 
accident. But otherwise seems fine.

-- 
Ville Syrjälä
Intel
