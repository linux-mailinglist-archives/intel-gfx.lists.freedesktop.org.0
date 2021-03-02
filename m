Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C1632A2B1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 15:57:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1D089AE6;
	Tue,  2 Mar 2021 14:57:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D65489AE6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 14:57:16 +0000 (UTC)
IronPort-SDR: Tz56EJVGQAqlvwf2Pd7+whOk3Gzo9qeN6qfNwOqJkzrxc7jz74wXLQ17stKkceibAZbK6oiuSc
 2/x/t+ZF9yyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="183437463"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="183437463"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 06:57:15 -0800
IronPort-SDR: rcSdc9gwTswPveofqhEiUeyDPhWkrBuxRiD83M9vjMcSEcW/W9++ND6JK08ccZJGqKzIs89bB4
 vrwPaCzNZGgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="373611240"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 02 Mar 2021 06:57:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Mar 2021 16:57:12 +0200
Date: Tue, 2 Mar 2021 16:57:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YD5SSEELPvX8hiv2@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <6fb9f831672c951c00d92f1176bd42d3b0f30145.1613054234.git.jani.nikula@intel.com>
 <485ac3466f8945afa89a79d4d979f0d1@intel.com>
 <87eeh8f3et.fsf@intel.com> <87czwhq2df.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87czwhq2df.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 6/9] drm/i915/mso: add splitter state
 readout for platforms that support it
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Varide, Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 02, 2021 at 12:25:00PM +0200, Jani Nikula wrote:
> On Mon, 22 Feb 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Mon, 22 Feb 2021, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> index 71611b596c88..5564db512d22 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >>> @@ -1161,6 +1161,13 @@ struct intel_crtc_state {
> >>>  		u8 pipeline_full;
> >>>  		u16 flipline, vmin, vmax;
> >>>  	} vrr;
> >>> +
> >>> +	/* Stream Splitter for eDP MSO */
> >>> +	struct {
> >>> +		bool enable;
> >>> +		u8 link_count;
> >>> +		u8 pixel_overlap;
> >>> +	} splitter;
> >>
> >> For DSI which also has this in common along with MSO, may be we can
> >> take these link_count and pixel_overlap out of splitter which is more
> >> of a MSO feature. Thoughts ?
> >
> > Ville suggested the same I think.
> =

> Coming back to this. DSI does not actually use crtc state for this
> currently. But it does use the display stream splitter. The register is
> different, but the functionality is roughly the same.
> =

> I suggest we keep the "splitter" substruct as above, and convert DSI
> code to use it in follow-up.
> =

> In early versions of the patch the substruct was called "mso"; I think
> "splitter" is better, and captures both MSO and DSI cases.

The "splitter" name is rather icl+ specific. Earlier DSI or LVDS do not
have such a hw block (at least in name).

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
