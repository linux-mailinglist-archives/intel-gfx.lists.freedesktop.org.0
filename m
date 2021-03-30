Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E486234EE98
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 18:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491E16E920;
	Tue, 30 Mar 2021 16:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B1E6E920
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 16:58:34 +0000 (UTC)
IronPort-SDR: 0IpmzqHG5RjSXvtD0vU/DdXTrtsrU8JcGHFsjtTsLAWeXr6DAKRYGD99F2mvEHtA/trlVZFkH8
 1zGBJKgIcUiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="191840769"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="191840769"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 09:58:31 -0700
IronPort-SDR: rRGHel/GG4eJV5GJvu9ZiVL0dz+cs3xhiNMLneG02drI6zMLP+xF21+zRsHVy7BN8KUpLtb/m1
 MQ6cI1Lv2RDQ==
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="393678542"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 09:58:31 -0700
Date: Tue, 30 Mar 2021 09:58:33 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210330165833.GB4484@InViCtUs>
References: <20210322205805.62205-1-jose.souza@intel.com>
 <20210322205805.62205-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322205805.62205-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Do not set any power wells
 when there is no display
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 01:58:04PM -0700, Jos=E9 Roberto de Souza wrote:
> Power wells are only part of display block and not necessary when
> running a headless driver.
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 7e0eaa872350..e6a3b3e6b1f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4673,7 +4673,10 @@ int intel_power_domains_init(struct drm_i915_priva=
te *dev_priv)
>  	 * The enabling order will be from lower to higher indexed wells,
>  	 * the disabling order is reversed.
>  	 */
> -	if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
> +	if (!HAS_DISPLAY(dev_priv)) {
> +		power_domains->power_well_count =3D 0;
> +		err =3D 0;
> +	} else if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
>  		err =3D set_power_wells_mask(power_domains, tgl_power_wells,
>  					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
> -- =

> 2.31.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
