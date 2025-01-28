Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA68A20F20
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 17:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3CC010E6D4;
	Tue, 28 Jan 2025 16:50:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fmv6xm1m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDE710E6D2;
 Tue, 28 Jan 2025 16:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738083037; x=1769619037;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CcpTzW+Myz0uq+ztAMic142fNR9kBrGffuAKmPbQ77U=;
 b=fmv6xm1mh3Hk22qr47lx0D8RFDaIH22u7m9Uu+bz8aGL5fWqdGZCYerP
 ZEwfka6cFuHPn+xRo3y5bNWX1Rsi3/zox+6ZmIf4OAY3VJBiLAma5tDcN
 okVpsBSWF6bx8tyjk+jV1Pri4zUE55A9ntVgM66kBd/WXmS/15JgOJhtd
 MFv3zYSe8Sugq1kFHhGAqO3Ebr2aoJHQZXeLju7R+4zQP0njaLgCUBNOB
 AJgC6G4foTUl9B/gweQAbP14zHfcnyPy1bU/NJaIlA8JygvdM444JsTtT
 0khhahUolh1Z3EA4ekG/lPE+oblGSd8Ld/Qhooa4KZGxrbJ5t4lG6VM5E Q==;
X-CSE-ConnectionGUID: syI0TvDUTl2JpR5yOjX4XA==
X-CSE-MsgGUID: d3CbfdaQSyyXypGLhKwDtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="42239184"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="42239184"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 08:50:36 -0800
X-CSE-ConnectionGUID: 9Z9l8TdgQoe+X8H1SNALqg==
X-CSE-MsgGUID: EjwSibfDQNme7tlvVjuIZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="108888014"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Jan 2025 08:50:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2025 18:50:32 +0200
Date: Tue, 28 Jan 2025 18:50:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Give i915 and xe each their own display
 tracepoints
Message-ID: <Z5kK2M-90Qn882af@intel.com>
References: <20250127213055.640-1-ville.syrjala@linux.intel.com>
 <CH0PR11MB54445354D7CADC3046E2905EE5EC2@CH0PR11MB5444.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CH0PR11MB54445354D7CADC3046E2905EE5EC2@CH0PR11MB5444.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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

On Mon, Jan 27, 2025 at 09:40:12PM +0000, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> Sent: Monday, January 27, 2025 1:31 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915: Give i915 and xe each their own display tracepoints
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently we just define the display tracpoints with
> > TRACE_SYSTEM i915. However the code gets included separately
> > in i915 and xe, and now both modules are competing for the
> > same tracpoints. Apparently whichever module is loaded first
> > gets the tracepoints and the other guy is left with nothing.
> > 
> > Give each module its own set of display tracpoints so that
> > things work even when both modules are loaded.
> > 
> > This one had me stumped for a bit when after a reboot I lost
> > all i915 display tracpoints (on account of the new kernel
> > also including xe, and something also ended up loading it
> > before I manually loaded i915).
> 
> s/tracpoints/tracepoints
> 
> Also, the last sentence in this commit message probably isn't
> necessary, but it doesn't detract from anything, so I won't block
> on its removal.

Yeah, probably doesn't add anything of value. Dropped.

> Just fix the tracepoints spelling and this is:
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Thanks.

-- 
Ville Syrjälä
Intel
