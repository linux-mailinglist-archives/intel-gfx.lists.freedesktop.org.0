Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B4430B063
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F344789864;
	Mon,  1 Feb 2021 19:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3348897C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:31:53 +0000 (UTC)
IronPort-SDR: B7xD+QENf8Of8r296WMQ7XAB8F9zEmdKV+T1TZzKSuZpCG4WKpcbpbi1mJiBHuavKJqS5tJ8h8
 NdNJgbRamdnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180817655"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="180817655"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:31:52 -0800
IronPort-SDR: AdzfkyzP7eJj3pPCYTnaGm/RTJFSaG2Jxp/xeR0O9ez5z3uD6GDEzP8lw3soJGp/w4xUegxHqH
 pgJAkmWj3ceQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="370077335"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Feb 2021 11:31:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 21:31:49 +0200
Date: Mon, 1 Feb 2021 21:31:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YBhXJYQquRL7kzT2@intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <20210201183343.15292-14-ville.syrjala@linux.intel.com>
 <20210201192239.aqdln6mbjveaqkub@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201192239.aqdln6mbjveaqkub@ldmartin-desk1>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 13/15] drm/i915: Split alds/rkl from
 icl_ddi_combo_{enable, disable}_clock()
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 01, 2021 at 11:22:39AM -0800, Lucas De Marchi wrote:
> On Mon, Feb 01, 2021 at 08:33:41PM +0200, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >Since .{enable,disable}_clock() are already vfuncs it's a bit silly to
> >have if-ladders inside them. Just provide specialized version for adlp
> >and rkl so we don't need any of that.
> =

> s/alds/adl-s/
> =

> s/adlp/adl-s/
> =

> =

> >
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_ddi.c | 93 ++++++++++++++++--------
> > 1 file changed, 62 insertions(+), 31 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/=
i915/display/intel_ddi.c
> >index 1bd2aa86183d..bafb754d1b66 100644
> >--- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >@@ -3127,28 +3127,6 @@ static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i=
915_private *dev_priv,
> > 	return 0;
> > }
> >
> >-static u32 icl_dpclka_cfgcr0_clk_sel(struct drm_i915_private *dev_priv,
> >-				     enum intel_dpll_id id, enum phy phy)
> =

> ok, but why do we even add them in this series if we are going to
> remove. Just makes it harder to review.

I had to increase the SNR before I could see what the code was
trying to do. I guess I could now go back and drop the first
two patches.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
