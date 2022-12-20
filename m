Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC9D651E8E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 11:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC7D10E0A9;
	Tue, 20 Dec 2022 10:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E5989B66
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 10:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671531244; x=1703067244;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iAfb2MciPr3g3gv6hjYUNVNlm1dhUhLCOsHl8UH+IX0=;
 b=GKtheja9FqKdDaCvcmI56uh7qssHu6ea2rNWT7f6Zm+2pLw0n2Ar+bz9
 5sLiQueZbTCST+DqL7QTYlvgMKJuqY2gF98Ut45IQgsuzoLzToC12xcfX
 prHxhiKw/8W3kk9ynGzO3UDBoIkmTYyEqZI8ns4ts2rc4VtBcwiNbnXwq
 Tq5soadq5JsjHMJ+q5E5Wz3xKfuUWLOeCCfYO+h7WCYo7VaN7W+aLM6dX
 DxUVNS+ADEo7huTUFXTf9k+2rRT+hOxEAaCstBa3KpEY3AGCEFNqRvB1X
 bXR4cERvBMW2TsCJuwFFZfDgC36/4e18SNSjQiEfDtrxPYd0zlF+DPJPL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="405827602"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="405827602"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:14:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="644368623"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="644368623"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:14:02 -0800
Date: Tue, 20 Dec 2022 12:13:53 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <Y6GK4RxXN7H6CLYd@intel.com>
References: <20221219135035.13059-1-stanislav.lisovskiy@intel.com>
 <2000a445-44f2-9aab-7631-69c283532d40@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2000a445-44f2-9aab-7631-69c283532d40@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support of Tile4 to MTL
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

On Mon, Dec 19, 2022 at 08:27:30PM +0200, Juha-Pekka Heikkila wrote:
> Hi Stan,
> 
> On 19.12.2022 15.50, Stanislav Lisovskiy wrote:
> > We have some Tile4 tests now skipping, which were
> > supposed to be working. So lets make them work, by
> > adding display_ver 14 as supported.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_fb.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index 63137ae5ab217..75a17f38def53 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -158,11 +158,11 @@ struct intel_modifier_desc {
> >   static const struct intel_modifier_desc intel_modifiers[] = {
> >   	{
> >   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
> > -		.display_ver = { 13, 13 },
> > +		.display_ver = { 13, 14 },
> 
> I don't think you'd want to do this. These DG2 ccs modifiers rely on usage
> of flat ccs which is not present in Meteorlake.
> 
> >   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
> >   	}, {
> >   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC,
> > -		.display_ver = { 13, 13 },
> > +		.display_ver = { 13, 14 },
> 
> Let's drop this change too.
> 
> >   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC_CC,
> >   		.ccs.cc_planes = BIT(1),
> > @@ -170,11 +170,11 @@ static const struct intel_modifier_desc intel_modifiers[] = {
> >   		FORMAT_OVERRIDE(gen12_flat_ccs_cc_formats),
> >   	}, {
> >   		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
> > -		.display_ver = { 13, 13 },
> > +		.display_ver = { 13, 14 },
> 
> And this.

Ah, I have been surfing yesterday the spec, trying to find if ccs is supported or not, looks like
I got bit confused. 

> 
> >   		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
> >   	}, {
> >   		.modifier = I915_FORMAT_MOD_4_TILED,
> > -		.display_ver = { 13, 13 },
> > +		.display_ver = { 13, 14 },
> 
> Here you could do something like ".display_ver = { 13, -1 }," to enable
> tile4 from version 13 onward and we'll fix it if it ever change in the
> future.

Yeah, recently had similar approach in other feature.

Stan

> 
> /Juha-Pekka
> 
> >   		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> >   	}, {
> >   		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> 
