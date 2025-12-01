Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC290C9612C
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 09:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB27410E2CD;
	Mon,  1 Dec 2025 08:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F40D10E0FA;
 Mon,  1 Dec 2025 08:10:02 +0000 (UTC)
Received: from mobile-access-d98cd5-49.dhcp.inet.fi ([217.140.213.49]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vPyyt-00000000V63-3niO; Mon, 01 Dec 2025 10:10:00 +0200
Message-ID: <8d2565f42336b0685d7f25e986cffbcdfd8d4470.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 01 Dec 2025 10:09:58 +0200
In-Reply-To: <e7afaea1a609485f91669a7d3c5d3fde0e0dbf8b.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
 <e7afaea1a609485f91669a7d3c5d3fde0e0dbf8b.1764076995.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 2/5] drm/i915/pps: convert intel_wakeref_t to struct
 ref_tracker *
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

On Tue, 2025-11-25 at 15:24 +0200, Jani Nikula wrote:
> Under the hood, intel_wakeref_t is just struct ref_tracker *. Use the
> actual underlying type both for clarity (we *are* using intel_wakeref_t
> as a pointer though it doesn't look like one) and to help i915, xe and
> display coexistence without custom types.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c    | 7 +++----
>  drivers/gpu/drm/i915/display/intel_pps.h    | 9 ++++-----
>  3 files changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 809799f63e32..38e03f3efac5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -246,7 +246,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	u32 aux_clock_divider;
>  	enum intel_display_power_domain aux_domain;
>  	intel_wakeref_t aux_wakeref;
> -	intel_wakeref_t pps_wakeref =3D NULL;
> +	struct ref_tracker *pps_wakeref =3D NULL;
>  	int i, ret, recv_bytes;
>  	int try, clock =3D 0;
>  	u32 status;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 34376255b85c..b217ec7aa758 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -67,10 +67,10 @@ static const char *pps_name(struct intel_dp *intel_dp=
)
>  	return "PPS <invalid>";
>  }
> =20
> -intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
> +struct ref_tracker *intel_pps_lock(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	intel_wakeref_t wakeref;
> +	struct ref_tracker *wakeref;
> =20
>  	/*
>  	 * See vlv_pps_reset_all() why we need a power domain reference here.
> @@ -81,8 +81,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_d=
p)
>  	return wakeref;
>  }
> =20
> -intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
> -				 intel_wakeref_t wakeref)
> +struct ref_tracker *intel_pps_unlock(struct intel_dp *intel_dp, struct r=
ef_tracker *wakeref)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i=
915/display/intel_pps.h
> index ad5c458ccdaf..f7c96d75be45 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -8,20 +8,19 @@
> =20
>  #include <linux/types.h>
> =20
> -#include "intel_wakeref.h"
> -
>  enum pipe;
>  struct intel_connector;
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_dp;
>  struct intel_encoder;
> +struct ref_tracker;
> =20
> -intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp);
> -intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakere=
f_t wakeref);
> +struct ref_tracker *intel_pps_lock(struct intel_dp *intel_dp);
> +struct ref_tracker *intel_pps_unlock(struct intel_dp *intel_dp, struct r=
ef_tracker *wakeref);
> =20
>  #define __with_intel_pps_lock(dp, wf) \
> -	for (intel_wakeref_t (wf) =3D intel_pps_lock(dp); (wf); (wf) =3D intel_=
pps_unlock((dp), (wf)))
> +	for (struct ref_tracker *(wf) =3D intel_pps_lock(dp); (wf); (wf) =3D in=
tel_pps_unlock((dp), (wf)))
> =20
>  #define with_intel_pps_lock(dp) \
>  	__with_intel_pps_lock((dp), __UNIQUE_ID(wakeref))


Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
