Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7E45AB2B2
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4A810E846;
	Fri,  2 Sep 2022 14:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ECC010E846
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662127319; x=1693663319;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8Tlp9hfK7Sbd3mYGYR8KiW+DfNK7K5jeTPbcRVFd3A0=;
 b=O3kQNO8hVci6otTDgfEgJiJQ3MvtCqJyP0R37ztxOf2NeBv36mq4Y/+p
 gwVIsjH2IpHGtNN+gppnnHFPhR28+NFLUjCs2dgVNB0ctOwbjuqaP4VZq
 MkF/Erxu9Cl+e8uBZoTZFFgrVD6G54o/otY5ebEulBZDBWCzhJP35expr
 0JmpFUM1j80yQUjvYzxszNoXD9e8O5kGEY9OrAVvLwQYa5gPqJUBQis9z
 0YKMPsizkdhtG0sn1nbFpGFVB6TudC/ZpPRf9I3qwO225pbNiPlHm7r3k
 klkumODyHQivn34ZpRBOdVy9+JeVyZlLbflOX5HvjATwwIq03mk0JJzvR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="276387065"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="276387065"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:01:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="642916856"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:01:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-12-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:01:45 +0300
Message-ID: <878rn1euye.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: WARN if a port should use
 VBT provided vswing tables
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We don't parse the VBT vswing/preemphassis tables at all currently.
> Let's WARN if a port wants to use them so we get a heads up that
> whether we really need to implement this stuff or not. My
> current stash contains no VBTs with this bit set.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 51dde5bfd956..cd86b65055ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2661,6 +2661,10 @@ static void parse_ddi_port(struct intel_bios_encod=
er_data *devdata)
>  		return;
>  	}
>=20=20
> +	drm_WARN(&i915->drm, child->use_vbt_vswing,
> +		 "Port %c asks to use VBT vswing/preemph tables\n",
> +		 port_name(port));
> +

I was hoping to clean parse_ddi_port() of all this kind of informative
stuff and shove it to print_ddi_port().

BR,
Jani.

>  	if (i915->vbt.ports[port]) {
>  		drm_dbg_kms(&i915->drm,
>  			    "More than one child device for port %c in VBT, using the first.\=
n",

--=20
Jani Nikula, Intel Open Source Graphics Center
