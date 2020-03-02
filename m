Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B49F17611F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FACC6E37C;
	Mon,  2 Mar 2020 17:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1146E37C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 17:34:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 09:34:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="228534553"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Mar 2020 09:34:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 19:34:53 +0200
Date: Mon, 2 Mar 2020 19:34:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200302173453.GO13686@intel.com>
References: <20200227150935.2107-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227150935.2107-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Use intel_plane_data_rate for
 min_cdclk calculation
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 05:09:35PM +0200, Stanislav Lisovskiy wrote:
> There seems to be a bit of confusing redundancy in a way, how
> plane data rate/min cdclk are calculated.
> In fact both min cdclk, pixel rate and plane data rate are all
> part of the same formula as per BSpec.
> =

> However currently we have intel_plane_data_rate, which is used
> to calculate plane data rate and which is also used in bandwidth
> calculations. However for calculating min_cdclk we have another
> piece of code, doing almost same calculation, but a bit differently
> and in a different place. However as both are actually part of same
> formula, probably would be wise to use plane data rate calculations
> as a basis anyway, thus avoiding code duplication and possible bugs
> related to this.
> =

> Another thing is that I've noticed that during min_cdclk calculations
> we account for plane scaling, while for plane data rate, we don't.
> crtc->pixel_rate seems to account only for pipe ratio, however it is
> clearly stated in BSpec that plane data rate also need to account
> plane ratio as well.
> =

> So what this commit does is:
> - Adds a plane ratio calculation to intel_plane_data_rate
> - Removes redundant calculations from skl_plane_min_cdclk which is
>   used for gen9+ and now uses intel_plane_data_rate as a basis from
>   there as well.
> =

> v2: - Don't use 64 division if not needed(Ville Syrj=E4l=E4)
>     - Now use intel_plane_pixel_rate as a basis for calculations both
>       at intel_plane_data_rate and skl_plane_min_cdclk(Ville Syrj=E4l=E4)
> =

> v3: - Again fix the division macro
>     - Fix plane_pixel_rate to pixel_rate at intel_plane_pixel_rate
>       callsites
> =

> v4: - Renamed skl_plane_ratio function back(Ville Syrj=E4l=E4)
> =

> v5: - Don't precalculate plane pixel rate for invisible plane,
>       check for visibility first, as in invisible case it will
>       have dst_w and dst_h equal to zero, causing divide error.
> =

> v6: - Removed useless warn in intel_plane_pixel_rate(Ville Syrj=E4l=E4)
>     - Fixed alignment in intel_plane_data_rate(Ville Syrj=E4l=E4)
>     - Changed pixel_rate type to be unsigned int in
>       skl_plane_min_cdclk(Ville Syrj=E4l=E4)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks. Pushed to dinq.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
