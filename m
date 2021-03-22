Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24013344B03
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:20:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CCF6E517;
	Mon, 22 Mar 2021 16:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3B96E517
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:20:02 +0000 (UTC)
IronPort-SDR: q7A/VKa7NW/lNrXUIjRFnvciNbIyFLxyPryRz2W/rfga/PlCl4tk16BhAVWgJleZRbvg60MymX
 +gc0xLISMYdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="190331031"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="190331031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 09:19:45 -0700
IronPort-SDR: 03ediMbjLqmrJ1FV5WdfTGePLAyTX2lPxYSHZT4Dcg1lCbdGZkg79+zwz62Vqrq12GHtiA2fKA
 pi1HL3BZ8q7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="414555134"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 22 Mar 2021 09:19:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 18:19:40 +0200
Date: Mon, 22 Mar 2021 18:19:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Message-ID: <YFjDnIjpYAuD75MR@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: Add state checker for CSC
 coeff values
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

On Mon, Mar 22, 2021 at 08:00:01PM +0530, Bhanuprakash Modem wrote:
> In this patch series, added state checker to validate CSC. This reads
> hardware state, and compares the originally requested state(s/w). This
> is done for chv, ilk, glk and their variant platforms. Rest of
> the platforms will be enabled on top of this later.
> =

> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> =

> Bhanuprakash Modem (7):
>   drm/i915/display: Introduce vfunc read_csc() to create hw ctm
>   drm/i915/display: Add func to compare hw/sw CSC matrix
>   drm/i915/display: Add macro to compare hw/sw CSC matrix
>   drm/i915/display: Extract chv_read_csc()
>   drm/i915/display: Extract ilk_read_csc()
>   drm/i915/display: Extract icl_read_csc()

The patch subjects are confusing me. You're not extracting any code
AFAICS?

>   FOR_TESTING_ONLY: Print coeffs of hw and sw CTM
> =

>  drivers/gpu/drm/i915/display/intel_color.c   | 209 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_color.h   |   3 +
>  drivers/gpu/drm/i915/display/intel_display.c |  31 +++
>  drivers/gpu/drm/i915/i915_drv.h              |   1 +
>  4 files changed, 239 insertions(+), 5 deletions(-)
> =

> --
> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
