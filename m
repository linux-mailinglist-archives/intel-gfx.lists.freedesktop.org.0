Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9415286B3D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29D36EA1D;
	Wed,  7 Oct 2020 22:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E712D6EA1D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:49:12 +0000 (UTC)
IronPort-SDR: UgnoK6tbSPQ7HCSvOIpLrUCAC9xTqQBRMJH0lhP3auTSu4y9wHBJqZGxxrAxq9r3QqrlY4SXdf
 SoxSn87Fjuqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164388795"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="164388795"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:49:12 -0700
IronPort-SDR: 08VlCr7d7h1rOC745bpbvYHY9y2mB3ApGHR+TXMIo8TIr/RubA69e3EE/5F/5GfVRJPB4BOQjc
 Fdw1GRnCUtZw==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="519064340"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:49:12 -0700
Date: Wed, 7 Oct 2020 15:49:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201007224911.GM2863995@mdroper-desk1.amr.corp.intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
 <20200929223419.146925-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929223419.146925-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/vbt: Update the version and
 expected size of BDB_GENERAL_DEFINITIONS map
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

On Tue, Sep 29, 2020 at 03:34:18PM -0700, Jos=E9 Roberto de Souza wrote:
> This will remove the "Expected child device config size for VBT
> version 235 not known" debug message seen in TGL, although this is not
> fixing anything it good to keep our VBT parser updated.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 58e5657a77bb..6ce0b848e342 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1915,7 +1915,7 @@ parse_general_definitions(struct drm_i915_private *=
dev_priv,
>  		expected_size =3D 37;
>  	} else if (bdb->version <=3D 215) {
>  		expected_size =3D 38;
> -	} else if (bdb->version <=3D 229) {
> +	} else if (bdb->version <=3D 237) {
>  		expected_size =3D 39;
>  	} else {
>  		expected_size =3D sizeof(*child);
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
