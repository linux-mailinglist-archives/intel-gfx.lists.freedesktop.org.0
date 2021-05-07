Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B1A3760AB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 08:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19AC6E7D3;
	Fri,  7 May 2021 06:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6526E7D3
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 06:45:38 +0000 (UTC)
IronPort-SDR: SsfpDKSvHExIILEv1xJSlJCWDwOc+Y9UtSqOUa31wEU1/fxWlMDxRnQNCr/ynBlvnDpD3B5lcW
 mFqHIdJwfzUw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196645709"
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="196645709"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 23:45:37 -0700
IronPort-SDR: hgrxoguxTrEOK9C0iPF+AOUTrJ1vATI+XeIbcGQ/2Cd0bZPBmsh8gCgHHwbL8D6TiKJ1a7Abla
 GjYzn8HZt06A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="390989348"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 06 May 2021 23:45:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 May 2021 09:45:32 +0300
Date: Fri, 7 May 2021 09:45:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nischal Varide <nischal.varide@intel.com>
Message-ID: <YJTiDFqqcJKRfH00@intel.com>
References: <20210506004719.4121-1-nischal.varide@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506004719.4121-1-nischal.varide@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC 0/1] drm/i915/display: Expose HDMI properties
 to userspace
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

On Thu, May 06, 2021 at 06:17:18AM +0530, Nischal Varide wrote:
> Right now the HDMI properties like vendor and product ids are hardcoded
> in the function "intel_hdmi_compute_spd_infoframe()".
> =

> ret =3D hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx").
> =

> This patch enables the possibility of setting vendor and product fields
> of the Infoframe structure in the userspace, instead of hardcoding in
> the kernel.
> =

> The changes has been Tested by an IGT testcase , which will be floated
> in few hours
> =

> =

> Nischal Varide (1):
>   drm/i915/display: Expose HDMI properties to userspace

That subject is quite misleading/vague.

Any uapi additions must be posted to dri-devel.

> =

>  drivers/gpu/drm/i915/display/intel_atomic.c   | 14 +++++++++++++
>  .../gpu/drm/i915/display/intel_connector.c    | 20 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_connector.h    |  1 +
>  .../drm/i915/display/intel_display_types.h    |  5 +++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 14 ++++++++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |  5 +++++
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  7 files changed, 59 insertions(+), 1 deletion(-)
> =

> -- =

> 2.29.2
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
