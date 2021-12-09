Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ECC46EF3A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B3A10E1FF;
	Thu,  9 Dec 2021 16:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D43B89F45
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:24:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="262199415"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="262199415"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:24:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="503486183"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 09 Dec 2021 05:24:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 15:24:13 +0200
Date: Thu, 9 Dec 2021 15:24:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YbIDffl2Uy7oHXUF@intel.com>
References: <20211203112029.1057-1-ville.syrjala@linux.intel.com>
 <87zgp93ooj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zgp93ooj.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Nuke {pipe,
 plane}_to_crtc_mapping[]
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

On Thu, Dec 09, 2021 at 03:14:52PM +0200, Jani Nikula wrote:
> On Fri, 03 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > These plane/pipe->crtc mapping arrays are rather pointless.
> > Get rid of them and just iterate the lists instead.
> 
> Nice follow-up to my cleanups. On the series,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> intel_crtc_first() might have been nice for the prefix, but does it
> sound too awkward? *shrug*

Yeah, sounds a bit wonky to my ear.

I'd probably have of those "wtf does that do?" moments if I saw
a intel_crtc_first() call in the code.

-- 
Ville Syrjälä
Intel
