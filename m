Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C4630B056
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189BA6EBA6;
	Mon,  1 Feb 2021 19:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97DC16EB51
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:28:10 +0000 (UTC)
IronPort-SDR: Idsd8WdxKVzdqZSncRVyBuFLg+0AwypO0VuToUJEmjmAZmyR/4jSdD/aQOh3S6gdQBW2+1oLAq
 cRpmo2mec3uQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="179964100"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="179964100"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:28:09 -0800
IronPort-SDR: 1lxhsAFdtQnfw/fryJgedwkOyMCBhI+ISHuQ5PGsZJ7FbyctTD69HaWYEfbqGJT4015ROB7qHJ
 ESIIdnDbGA4w==
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="575224620"
Received: from scewbso01.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.142.9])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 11:28:08 -0800
Date: Mon, 1 Feb 2021 11:28:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210201192805.kt2fof4tliqmb673@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/15] drm/i915: Clean up the DDI clock
 routing mess
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 01, 2021 at 08:33:28PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>The DDI clock routing code has turned into proper spaghetti.
>Attempt to clean it up by introducing some new vfuncs.

A few minors I replied in the series. The move back and forth from one
approach to the other IMO makes it harder to review, but after looking
that the complete set:

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Ville Syrj=E4l=E4 (15):
>  drm/i915: Extract icl_dpclka_cfgcr0_reg()
>  drm/i915: Extract icl_dpclka_cfgcr0_clk_sel*()
>  drm/i915: Introduce .{enable,disable}_clock() encoder vfuncs
>  drm/i915: Extract hsw_ddi_{enable,disable}_clock()
>  drm/i915: Extract skl_ddi_{enable,disable}_clock()
>  drm/i195: Extract cnl_ddi_{enable,disable}_clock()
>  drm/i915: Convert DG1 over to .{enable,disable}_clock()
>  drm/i915: Extract icl+ .{enable,disable}_clock() vfuncs
>  drm/i915: Use intel_de_rmw() for DDI clock routing
>  drm/i915: Sprinkle a few missing locks around shared DDI clock
>    registers
>  drm/i915: Sprinkle WARN(!pll) into icl/dg1 .clock_enable()
>  drm/i915: Extract _cnl_ddi_{enable,disable}_clock()
>  drm/i915: Split alds/rkl from icl_ddi_combo_{enable,disable}_clock()
>  drm/i915: Use .disable_clock() for pll sanitation
>  drm/i915: Relocate icl_sanitize_encoder_pll_mapping()
>
> drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
> drivers/gpu/drm/i915/display/intel_ddi.c      | 536 ++++++++++--------
> .../drm/i915/display/intel_display_types.h    |   6 +
> 3 files changed, 295 insertions(+), 248 deletions(-)
>
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
