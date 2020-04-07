Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B091A0FFF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 17:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E896E88D;
	Tue,  7 Apr 2020 15:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5356E88D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 15:16:20 +0000 (UTC)
IronPort-SDR: 2tOTgE5qFU0DsT7MAswGdsARFI79Uy0XM9UtxZwFcjBKrXC2azWyT/PjCXoMPh6OAG9FQblfDL
 /uLTEMS3vaUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:16:17 -0700
IronPort-SDR: qvb1peCMe6WT2Jljj+yng8ZVsMj9XqlWUfgO2S2VatmfSv5kdNHuMPCHFGobrLoQEweMwN+JEi
 FFKUQB1zonzw==
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="397886194"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:16:15 -0700
Date: Tue, 7 Apr 2020 18:15:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407151534.GB21484@ideak-desk.fi.intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
 <20200407011157.362092-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407011157.362092-2-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 2/8] drm/i915/display: Add
 intel_legacy_aux_to_power_domain()
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
Reply-To: imre.deak@intel.com
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 06:11:51PM -0700, Jos=E9 Roberto de Souza wrote:
> This is a similar function to intel_aux_power_domain() but it do not
> care about TBT ports, this will be needed by ICL TC sequences.
> =

> v2:
> - renamed to intel_legacy_aux_to_power_domain()
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  2 files changed, 14 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 70ec301fe6e3..a95960b71001 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7291,7 +7291,17 @@ intel_aux_power_domain(struct intel_digital_port *=
dig_port)
>  		}
>  	}
>  =

> -	switch (dig_port->aux_ch) {
> +	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +}
> +
> +/*
> + * Converts aux_ch to power_domain without caring about TBT ports for th=
at use
> + * intel_aux_power_domain()
> + */
> +enum intel_display_power_domain
> +intel_legacy_aux_to_power_domain(enum aux_ch aux_ch)
> +{
> +	switch (aux_ch) {
>  	case AUX_CH_A:
>  		return POWER_DOMAIN_AUX_A;
>  	case AUX_CH_B:
> @@ -7307,7 +7317,7 @@ intel_aux_power_domain(struct intel_digital_port *d=
ig_port)
>  	case AUX_CH_G:
>  		return POWER_DOMAIN_AUX_G;
>  	default:
> -		MISSING_CASE(dig_port->aux_ch);
> +		MISSING_CASE(aux_ch);
>  		return POWER_DOMAIN_AUX_A;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index cc7f287804d7..8d872ed0de36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -583,6 +583,8 @@ void hsw_disable_ips(const struct intel_crtc_state *c=
rtc_state);
>  enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> +enum intel_display_power_domain
> +intel_legacy_aux_to_power_domain(enum aux_ch aux_ch);
>  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
>  				 struct intel_crtc_state *pipe_config);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
