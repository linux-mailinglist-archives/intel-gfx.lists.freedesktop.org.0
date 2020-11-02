Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DEF2A3184
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 18:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9208B6EB8C;
	Mon,  2 Nov 2020 17:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602C06E203
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 17:29:27 +0000 (UTC)
IronPort-SDR: HiDv7FgFC4+4Y2qAuNF8RgvVcD/DawZX9V6QVHPOmFsEC6nFOCRuM/OBMZ7fX2UrCVKVjm6kM/
 ZCvNlj8lr5OA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="168138231"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="168138231"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 09:29:26 -0800
IronPort-SDR: 2AILDXaYCjb8/idkIKcYwNgIw0sAnrHklfY1lZIr4jz8fvPrBJQEB3iqY7K1K12FWz1jUZG+Yg
 f8P9wH465tOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="363313458"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Nov 2020 09:29:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Nov 2020 19:29:23 +0200
Date: Mon, 2 Nov 2020 19:29:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20201102172923.GQ6112@intel.com>
References: <20201030212614.10595-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030212614.10595-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Remove invalid PCI ID
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

On Fri, Oct 30, 2020 at 02:26:14PM -0700, Anusha Srivatsa wrote:
> Update the EHL PCI IDs from BSpec.
> Remove the invalid ones.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Pls sort out the ci fail so we can merge this.

> ---
>  include/drm/i915_pciids.h | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 3b5ed1e4f3ec..28428e08a8d3 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -584,7 +584,6 @@
>  =

>  /* EHL */
>  #define INTEL_EHL_IDS(info) \
> -	INTEL_VGA_DEVICE(0x4500, info),	\
>  	INTEL_VGA_DEVICE(0x4571, info), \
>  	INTEL_VGA_DEVICE(0x4551, info), \
>  	INTEL_VGA_DEVICE(0x4541, info), \
> -- =

> 2.25.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
