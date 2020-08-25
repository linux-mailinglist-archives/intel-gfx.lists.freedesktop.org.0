Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B552523DF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 00:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0156E17D;
	Tue, 25 Aug 2020 22:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3686E17D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 22:54:24 +0000 (UTC)
IronPort-SDR: BPxrZICFOS8Y3+WOFfdZz8J6A73C2i5vm+mtB7prmnj/kjhobPTdLuG8RbujrLO4cHZ2L8h2H5
 GwCE/O2Mi6oA==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="155467763"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="155467763"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:54:23 -0700
IronPort-SDR: 4DGj+koWrT9zu72458frz+fOmV1z5ikDdsIDjgWG4Wua1PbkvCvfEZoZXmNe4W3+lcFrXHSeqK
 DIxmti9Q1C4Q==
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="500028862"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:54:23 -0700
Date: Tue, 25 Aug 2020 15:54:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200825225422.GJ3934000@mdroper-desk1.amr.corp.intel.com>
References: <20200825184343.63253-1-jose.souza@intel.com>
 <20200825184343.63253-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825184343.63253-3-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/ehl: Update voltage swing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 25, 2020 at 11:43:43AM -0700, Jos=E9 Roberto de Souza wrote:
> Update with latest tunning in the table.
> =

> BSpec: 21257
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 699511872290..c7e64e20a772 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -572,14 +572,14 @@ static const struct cnl_ddi_buf_trans ehl_combo_phy=
_ddi_translations_dp[] =3D {
>  						/* NT mV Trans mV db    */
>  	{ 0xA, 0x33, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
>  	{ 0xA, 0x47, 0x36, 0x00, 0x09 },	/* 350   500      3.1   */
> -	{ 0xC, 0x64, 0x30, 0x00, 0x0F },	/* 350   700      6.0   */
> -	{ 0x6, 0x7F, 0x2C, 0x00, 0x13 },	/* 350   900      8.2   */
> +	{ 0xC, 0x64, 0x34, 0x00, 0x0B },	/* 350   700      6.0   */
> +	{ 0x6, 0x7F, 0x30, 0x00, 0x0F },	/* 350   900      8.2   */
>  	{ 0xA, 0x46, 0x3F, 0x00, 0x00 },	/* 500   500      0.0   */
> -	{ 0xC, 0x64, 0x36, 0x00, 0x09 },	/* 500   700      2.9   */
> -	{ 0x6, 0x7F, 0x30, 0x00, 0x0F },	/* 500   900      5.1   */
> +	{ 0xC, 0x64, 0x38, 0x00, 0x07 },	/* 500   700      2.9   */
> +	{ 0x6, 0x7F, 0x32, 0x00, 0x0D },	/* 500   900      5.1   */
>  	{ 0xC, 0x61, 0x3F, 0x00, 0x00 },	/* 650   700      0.6   */
> -	{ 0x6, 0x7F, 0x37, 0x00, 0x08 },	/* 600   900      3.5   */
> -	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
> +	{ 0x6, 0x7F, 0x37, 0x00, 0x07 },	/* 600   900      3.5   */
> +	{ 0x6, 0x7F, 0x38, 0x00, 0x00 },	/* 900   900      0.0   */

I think it got missed at the bottom of my last response, but I see
slightly different values for the last two rows here in the EHL table.
Specifically the third column (cursor coeff dw4) -- I see 0x38 and 0x3F
as the last two values?


Matt

>  };
>  =

>  struct icl_mg_phy_ddi_buf_trans {
> -- =

> 2.28.0
> =


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
