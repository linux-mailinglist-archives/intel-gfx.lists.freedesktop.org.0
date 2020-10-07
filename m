Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E2F286B42
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C2766EA2E;
	Wed,  7 Oct 2020 22:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FC916EA2E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:53:02 +0000 (UTC)
IronPort-SDR: obZmulMpBp39fTZ+tXy9KJx/sFK9W/FDBAlSrS6h9B4N5N2nvRIQdLsOUByc+DmK4/c1Vme3jo
 5tuTbsDlGX3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165284890"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="165284890"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:53:02 -0700
IronPort-SDR: G0f2VP8R2h5/tTM7RepjWJZyYlPgPLczNRBpjIPxcv6qn/7EAhngMbeaoo8VkL+8XcmdA9cX1q
 6FmCR6kmDFkw==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="528204966"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:53:01 -0700
Date: Wed, 7 Oct 2020 15:53:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201007225300.GN2863995@mdroper-desk1.amr.corp.intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
 <20200929223419.146925-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929223419.146925-3-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/vbt: Add VRR VBT toggle
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

On Tue, Sep 29, 2020 at 03:34:19PM -0700, Jos=E9 Roberto de Souza wrote:
> This will be used in future but already adding to VBT so we are
> updated with VBT changes.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index b4742c4fde97..46f3f4804c9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -835,6 +835,7 @@ struct bdb_lfp_power {
>  	u16 lace_enabled_status;
>  	struct agressiveness_profile_entry aggressivenes[16];
>  	u16 hobl; /* 232+ */
> +	u16 vrr_feature_enabled; /* 233+ */
>  } __packed;
>  =

>  /*
> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
