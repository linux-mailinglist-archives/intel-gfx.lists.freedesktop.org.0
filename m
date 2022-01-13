Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2DB48DC43
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:55:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5755710E128;
	Thu, 13 Jan 2022 16:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AF0F10E128
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 16:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642092923; x=1673628923;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=SLlVQYpc07kCiJyT1/pjdchxcUzgBwpav2JCac4hmQo=;
 b=fqAuHIrFYkGiPgXKyjp6sj2nEegFv0UMFpX4W7ptUCxNAQfhkOi+kwPO
 5FquEYnn9zIoNskT4ctZrClxuM1VBVoMzG4IIjq9CBtzmzwCstDS9Q9E5
 lNHnoSxmHWJ8ERW5GAI7hZpEBbFc+CZwz2C71uwggyOHryrXUUX8PHagz
 ezW5W7kqiEFBsX2NRj2t4GVRVhplNQAUltvOojA04qMJ4YpxlHR2BYl6f
 uFZDX25QddvDX5U7mZ5BFbStkfuBle5lo9qm1l5YMYTXUVW75Jf65Xmmt
 oXbcAOsNjxOf3bdv1pQFBpYlxv/nfkfq7rwIO0UxO+/7jGT6pgbz0LynO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="268408264"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268408264"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:55:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="623909124"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:55:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220113160437.49059-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220113160437.49059-1-jose.souza@intel.com>
Date: Thu, 13 Jan 2022 18:55:18 +0200
Message-ID: <875yqn7eyx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/ehl: Update voltage swing
 table
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

On Thu, 13 Jan 2022, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> EHL table was recently updated with some minor fixes.
>
> BSpec: 21257
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

Cc: stable@vger.kernel.org

> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 09d6ab13536cc..0c32210bf5031 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -477,14 +477,14 @@ static const struct intel_ddi_buf_trans icl_combo_p=
hy_trans_hdmi =3D {
>  static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] =
=3D {
>  							/* NT mV Trans mV db    */
>  	{ .icl =3D { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
> -	{ .icl =3D { 0xA, 0x47, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
> -	{ .icl =3D { 0xC, 0x64, 0x34, 0x00, 0x0B } },	/* 350   700      6.0   */
> -	{ .icl =3D { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 350   900      8.2   */
> +	{ .icl =3D { 0xA, 0x47, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
> +	{ .icl =3D { 0xC, 0x64, 0x33, 0x00, 0x0C } },	/* 350   700      6.0   */
> +	{ .icl =3D { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 350   900      8.2   */
>  	{ .icl =3D { 0xA, 0x46, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
> -	{ .icl =3D { 0xC, 0x64, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
> +	{ .icl =3D { 0xC, 0x64, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
>  	{ .icl =3D { 0x6, 0x7F, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
>  	{ .icl =3D { 0xC, 0x61, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
> -	{ .icl =3D { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
> +	{ .icl =3D { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 600   900      3.5   */
>  	{ .icl =3D { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
>  };

--=20
Jani Nikula, Intel Open Source Graphics Center
