Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C05466E1F6D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64A210E0EB;
	Fri, 14 Apr 2023 09:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2086710E0EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465124; x=1713001124;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=St7Fgu4g45Up8CnGdgRBEeBZxwIo9r/c3FqIEU/fgXw=;
 b=WVnQOUGEmPDGHFQbdDoRsrG/pJXA4m2PNsmHod9iVI5OrkmqWlVA8Vqc
 pYkSu+c/MGXPDD7tXrN3xXoeNOu8bvcxhKj3sWngVVyBbMPz36kytePDG
 0GbOH4rvVUdq6rEaWUeXxxDa6T4pfIOc1/MPHDhU/IvbpPM2agBYPkO63
 0a5UAGphmPT8QIxfBJUkJOrmO9JwjgUJIhK6gmDoZdq0zwi2/aGThmOOQ
 5enfa6ZzV86Bq0fXPoWlbiR4NVMGGW6rQfx+EpfdEUsm6V1XgrXjcP9vo
 DNSYjvz6k04cbSTlwFbH8L8mgoa6Y8kUNNyOo/WNPKkT+YkUVIpcbR0qF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324053814"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324053814"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935949469"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="935949469"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:38:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
Date: Fri, 14 Apr 2023 12:38:39 +0300
Message-ID: <87o7nqg5wg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Make
 intel_mpllb_state_verify() safer
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

On Thu, 13 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_mpllb_state_verify() blows up if you call it for a
> non-modeset/fastset commit on account of the relevant
> connector not being part of the overall atomic state.
> Currently the state checker only runs for modeset/fastset
> commits, but for testing purposes it is sometimes desirable
> to run it for other commits too. Check for modeset/fastset
> in intel_mpllb_state_verify() itself to make this safe.

Seems a bit redundant, but okay.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/=
drm/i915/display/intel_snps_phy.c
> index 1cfb94b5cedb..4efc79d47e43 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -2007,6 +2007,10 @@ void intel_mpllb_state_verify(struct intel_atomic_=
state *state,
>  	if (!new_crtc_state->hw.active)
>  		return;
>=20=20
> +	if (!intel_crtc_needs_modeset(new_crtc_state) &&
> +	    !intel_crtc_needs_fastset(new_crtc_state))
> +		return;
> +
>  	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>  	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
