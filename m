Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BF31BC0B6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 16:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DBA6E4C5;
	Tue, 28 Apr 2020 14:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C51A56E4C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 14:09:34 +0000 (UTC)
IronPort-SDR: vPjVaxa1tX2M+LMoLbI554wLML5LD2/L/UlvStJI6m69d8ftr8Y0z0hgaCsjMBKlv1xenA2TzO
 AnpQCx2RK3xA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 07:09:34 -0700
IronPort-SDR: Km8lzsaBAWZGX//jCWVRBHD1ZK4SKO60sdrxCVbQMXTnUHuiBHdQjfEreeVWSNMUGYxfGvF1fK
 WKNdouPVR2ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="246515371"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Apr 2020 07:09:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 17:09:31 +0300
Date: Tue, 28 Apr 2020 17:09:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Alexei Podtelezhnikov <apodtele@gmail.com>
Message-ID: <20200428140931.GJ6112@intel.com>
References: <20200428034752.3975-1-apodtele@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428034752.3975-1-apodtele@gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [patch] drm/i915: Remove dubious Valleyview PCI IDs
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

On Mon, Apr 27, 2020 at 11:47:52PM -0400, Alexei Podtelezhnikov wrote:
> 0x0155 is rather Ivy Bridge PCI-E Root Port.

A bit surprising we've not had any reports of the driver biding to the
wrong device.

> 0x0157 from the same commit ff049b6ce21d2814451afd4a116d001712e0116b
> is likely wrong too. Nowhere is it independetly confirmed or mentioned.

Can' find these in the spec so they do seem bogus. Also can't remember
ever seeing one of these.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
> ---
>  include/drm/i915_pciids.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/src/i915_pciids.h b/src/i915_pciids.h
> index 1d2c1221..a9c88eab 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -258,9 +284,7 @@ Remove wrong and non-existent devices
>  	INTEL_VGA_DEVICE(0x0f30, info), \
>  	INTEL_VGA_DEVICE(0x0f31, info), \
>  	INTEL_VGA_DEVICE(0x0f32, info), \
> -	INTEL_VGA_DEVICE(0x0f33, info), \
> -	INTEL_VGA_DEVICE(0x0157, info), \
> -	INTEL_VGA_DEVICE(0x0155, info)
> +	INTEL_VGA_DEVICE(0x0f33, info)
>  =

>  #define INTEL_BDW_ULT_GT1_IDS(info) \
>  	INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
> --
> 2.26.2
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
