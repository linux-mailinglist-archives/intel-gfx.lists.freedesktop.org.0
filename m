Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D65250C91
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 01:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975486E7D2;
	Mon, 24 Aug 2020 23:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7794A6E7D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 23:52:31 +0000 (UTC)
IronPort-SDR: h4rxppSCEYEkw6OECcRlhqO4Mw19FKHloea+fznXhODOV+dgCCQP+s7m/3mzgT6yHGSn3QVUXo
 jdH8vR5Ym2qQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="217561622"
X-IronPort-AV: E=Sophos;i="5.76,350,1592895600"; d="scan'208";a="217561622"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 16:52:30 -0700
IronPort-SDR: NUPEOmLFGaROX3Qk+d0AH/nuBpvUERIPmTDPO7ppx75lLPDwkIBvsCum8/ee5aBE/pNq0a+SFS
 DIx8Mb8Kr+Xw==
X-IronPort-AV: E=Sophos;i="5.76,350,1592895600"; d="scan'208";a="298902272"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 16:52:30 -0700
Date: Mon, 24 Aug 2020 16:52:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200824235228.GF3880425@mdroper-desk1.amr.corp.intel.com>
References: <20200819185146.22109-1-jose.souza@intel.com>
 <20200819185146.22109-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819185146.22109-3-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/ehl: Update voltage swing table
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

On Wed, Aug 19, 2020 at 11:51:46AM -0700, Jos=E9 Roberto de Souza wrote:
> Update with latest tunning in the table.
> =

> BSpec: 21257
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

It looks like we now have separate tables for EHL and JSL; we probably
need to handle them with separate tables now.

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 0fa4075036e6..6271034455a8 100644
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

These last two entries might have already changed again in the bspec
since you wrote this.  For EHL I see:

        0x6, 0x7f, 0x38, 0x00, 0x07
        0x6, 0x7f, 0x3f, 0x00, 0x00

(i.e., the third column is slightly different).  And the JSL table has
other deltas as well since it just got added.


Matt

>  };
>  =

>  struct icl_mg_phy_ddi_buf_trans {
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
