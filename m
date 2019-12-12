Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C30111D7E0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 21:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBBD8825E;
	Thu, 12 Dec 2019 20:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC9C6E1C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 20:29:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 12:29:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="208222191"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Dec 2019 12:29:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Dec 2019 22:29:46 +0200
Date: Thu, 12 Dec 2019 22:29:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <20191212202946.GS1208@intel.com>
References: <20191210150415.10705-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210150415.10705-1-shawn.c.lee@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cml: Remove unsupport PCI ID
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2019 at 11:04:14PM +0800, Lee Shawn C wrote:
> commit 'a7b4deeb02b9 ("drm/i915/cml: Add CML PCI IDS)'
> introduced new PCI ID that CML support. But some PCI
> IDs were removed in BSpec for CML. This patch is used
> to eliminate the unsed ID.
> =

> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Series pushed to dinq. Thanks.

> ---
>  include/drm/i915_pciids.h | 4 ----
>  1 file changed, 4 deletions(-)
> =

> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 3e26a9178aaf..92873c3957c8 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -448,9 +448,7 @@
>  #define INTEL_CML_GT1_IDS(info)	\
>  	INTEL_VGA_DEVICE(0x9B21, info), \
>  	INTEL_VGA_DEVICE(0x9BAA, info), \
> -	INTEL_VGA_DEVICE(0x9BAB, info), \
>  	INTEL_VGA_DEVICE(0x9BAC, info), \
> -	INTEL_VGA_DEVICE(0x9BA0, info), \
>  	INTEL_VGA_DEVICE(0x9BA5, info), \
>  	INTEL_VGA_DEVICE(0x9BA8, info), \
>  	INTEL_VGA_DEVICE(0x9BA4, info), \
> @@ -460,9 +458,7 @@
>  #define INTEL_CML_GT2_IDS(info)	\
>  	INTEL_VGA_DEVICE(0x9B41, info), \
>  	INTEL_VGA_DEVICE(0x9BCA, info), \
> -	INTEL_VGA_DEVICE(0x9BCB, info), \
>  	INTEL_VGA_DEVICE(0x9BCC, info), \
> -	INTEL_VGA_DEVICE(0x9BC0, info), \
>  	INTEL_VGA_DEVICE(0x9BC5, info), \
>  	INTEL_VGA_DEVICE(0x9BC8, info), \
>  	INTEL_VGA_DEVICE(0x9BC4, info), \
> -- =

> 2.17.1
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
