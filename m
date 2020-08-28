Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A7025530C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 04:31:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F23B6E05F;
	Fri, 28 Aug 2020 02:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9042D6E05F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 02:31:22 +0000 (UTC)
IronPort-SDR: 6wJ6++LZLFt5BqJ65Zu07A7FnKF1K4owcGiOrtomrlmI1HD+Tb57FtU1u1Uvhi6Th4wAWv5PVq
 yo/o9O0X7gQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="157623086"
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="157623086"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 19:31:21 -0700
IronPort-SDR: gpgfeVdG5A/zXKgnJwaqss85Kyy2Zi8ubYuxEecZSpsX9SBw7BIk84Ry18Nn6tjDZRSOqqc2MS
 pUilUCOfhKpA==
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="337366907"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 19:31:21 -0700
Date: Thu, 27 Aug 2020 19:31:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200828023120.GC107941@mdroper-desk1.amr.corp.intel.com>
References: <20200826201549.83658-1-jose.souza@intel.com>
 <20200826201549.83658-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826201549.83658-3-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/ehl: Update voltage swing
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

On Wed, Aug 26, 2020 at 01:15:49PM -0700, Jos=E9 Roberto de Souza wrote:
> Update with latest tunning in the table.
> =

> v3: Fix values of to last columns.
> =

> BSpec: 21257
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 699511872290..82c1846d9be1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -572,13 +572,13 @@ static const struct cnl_ddi_buf_trans ehl_combo_phy=
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
> +	{ 0x6, 0x7F, 0x38, 0x00, 0x07 },	/* 600   900      3.5   */
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
>  =

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
