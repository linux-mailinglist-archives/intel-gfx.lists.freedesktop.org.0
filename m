Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D61A48A95E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 09:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD63112BECB;
	Tue, 11 Jan 2022 08:29:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A0012BECB
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 08:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641889769; x=1673425769;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EIhpQn6rDPLcNTPzfjP1epVNkd+T4wLJvj/ydqTkvvI=;
 b=CD0kSkfzD7UGHg2oSriZVbkl7Vn1Zz03y7OV176x2sVYslIvnD9+ZPaj
 tNVm1HBx4H0BSzAb7DirbEH9tzLbbMoDkgjkxjJ0hF2WIl03+qS80I8c3
 MLS2WFXly27tn9HiF7YNkkztakjAiS0v/MB0sCi5NkMHf065ExK13yHI3
 wF2g3exQJCrYWOae/cfqythViZXw0m32vgyvjTBeW3p1bI8mPjnoSzsMP
 DwClT7a66uKhwwIe5bGXIfmJzOFbf+8kDcxEEv1iJ0P3KzyAo7xFa7fBj
 36ZNemjrOB180kI1WQTfk1vzr7/JVpwqkyhrQmsp99Ks4Aa40Vg5iL/ew g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="306786433"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="306786433"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:29:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="472384686"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 00:29:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: clinton.a.taylor@intel.com, Intel-gfx@lists.freedesktop.org
In-Reply-To: <20220110234520.6836-1-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220110234520.6836-1-clinton.a.taylor@intel.com>
Date: Tue, 11 Jan 2022 10:29:16 +0200
Message-ID: <871r1ead5v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/snps: vswing value refined for
 SNPS phys
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 10 Jan 2022, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
>
> Updated new values from BSPEC.
>
> BSPEC: 53920
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 42 +++++++++----------
>  1 file changed, 21 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 1e689d573512..09d6ab13536c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -985,15 +985,15 @@ static const struct intel_ddi_buf_trans adlp_dkl_ph=
y_trans_dp_hbr2_hbr3 =3D {
>  };
>=20=20
>  static const union intel_ddi_buf_trans_entry _dg2_snps_trans[] =3D {
> -	{ .snps =3D { 26, 0, 0 } },	/* VS 0, pre-emph 0 */
> -	{ .snps =3D { 33, 0, 6 } },	/* VS 0, pre-emph 1 */
> -	{ .snps =3D { 38, 0, 12 } },	/* VS 0, pre-emph 2 */
> -	{ .snps =3D { 43, 0, 19 } },	/* VS 0, pre-emph 3 */
> -	{ .snps =3D { 39, 0, 0 } },	/* VS 1, pre-emph 0 */
> -	{ .snps =3D { 44, 0, 8 } },	/* VS 1, pre-emph 1 */
> -	{ .snps =3D { 47, 0, 15 } },	/* VS 1, pre-emph 2 */
> -	{ .snps =3D { 52, 0, 0 } },	/* VS 2, pre-emph 0 */
> -	{ .snps =3D { 51, 0, 10 } },	/* VS 2, pre-emph 1 */
> +	{ .snps =3D { 25, 0, 0 } },	/* VS 0, pre-emph 0 */
> +	{ .snps =3D { 32, 0, 6 } },	/* VS 0, pre-emph 1 */
> +	{ .snps =3D { 35, 0, 10 } },	/* VS 0, pre-emph 2 */
> +	{ .snps =3D { 43, 0, 17 } },	/* VS 0, pre-emph 3 */
> +	{ .snps =3D { 35, 0, 0 } },	/* VS 1, pre-emph 0 */
> +	{ .snps =3D { 45, 0, 8 } },	/* VS 1, pre-emph 1 */
> +	{ .snps =3D { 48, 0, 14 } },	/* VS 1, pre-emph 2 */
> +	{ .snps =3D { 47, 0, 0 } },	/* VS 2, pre-emph 0 */
> +	{ .snps =3D { 55, 0, 7 } },	/* VS 2, pre-emph 1 */
>  	{ .snps =3D { 62, 0, 0 } },	/* VS 3, pre-emph 0 */
>  };
>=20=20
> @@ -1005,21 +1005,21 @@ static const struct intel_ddi_buf_trans dg2_snps_=
trans =3D {
>=20=20
>  static const union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] =3D {
>  	{ .snps =3D { 62, 0, 0 } },	/* preset 0 */
> -	{ .snps =3D { 56, 0, 6 } },	/* preset 1 */
> -	{ .snps =3D { 51, 0, 11 } },	/* preset 2 */
> -	{ .snps =3D { 48, 0, 14 } },	/* preset 3 */
> -	{ .snps =3D { 43, 0, 19 } },	/* preset 4 */
> +	{ .snps =3D { 55, 0, 7 } },	/* preset 1 */
> +	{ .snps =3D { 50, 0, 12 } },	/* preset 2 */
> +	{ .snps =3D { 44, 0, 18 } },	/* preset 3 */
> +	{ .snps =3D { 35, 0, 21 } },	/* preset 4 */
>  	{ .snps =3D { 59, 3, 0 } },	/* preset 5 */
>  	{ .snps =3D { 53, 3, 6 } },	/* preset 6 */
> -	{ .snps =3D { 49, 3, 10 } },	/* preset 7 */
> -	{ .snps =3D { 45, 3, 14 } },	/* preset 8 */
> -	{ .snps =3D { 42, 3, 17 } },	/* preset 9 */
> +	{ .snps =3D { 48, 3, 11 } },	/* preset 7 */
> +	{ .snps =3D { 42, 5, 15 } },	/* preset 8 */
> +	{ .snps =3D { 37, 5, 20 } },	/* preset 9 */
>  	{ .snps =3D { 56, 6, 0 } },	/* preset 10 */
> -	{ .snps =3D { 50, 6, 6 } },	/* preset 11 */
> -	{ .snps =3D { 47, 6, 9 } },	/* preset 12 */
> -	{ .snps =3D { 42, 6, 14 } },	/* preset 13 */
> -	{ .snps =3D { 46, 8, 8 } },	/* preset 14 */
> -	{ .snps =3D { 56, 3, 3 } },	/* preset 15 */
> +	{ .snps =3D { 48, 7, 7 } },	/* preset 11 */
> +	{ .snps =3D { 45, 7, 10 } },	/* preset 12 */
> +	{ .snps =3D { 39, 8, 15 } },	/* preset 13 */
> +	{ .snps =3D { 48, 14, 0 } },	/* preset 14 */
> +	{ .snps =3D { 45, 4, 4 } },	/* preset 15 */
>  };
>=20=20
>  static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr =3D {

--=20
Jani Nikula, Intel Open Source Graphics Center
