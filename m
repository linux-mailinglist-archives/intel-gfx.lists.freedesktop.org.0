Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 945F97A00C0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7439310E55A;
	Thu, 14 Sep 2023 09:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 939 seconds by postgrey-1.36 at gabe;
 Thu, 14 Sep 2023 09:49:44 UTC
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A1E10E559
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:49:44 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <luca@coelho.fi>) id 1qgijY-000K8d-1v;
 Thu, 14 Sep 2023 12:34:03 +0300
Message-ID: <b381e7ff588f86f8ba9783f666de76926de433f5.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 12:33:59 +0300
In-Reply-To: <20230824080517.693621-3-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-3-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 02/22] drm/i915/dp: Track the pipe and
 link bpp limits separately
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

On Thu, 2023-08-24 at 11:04 +0300, Imre Deak wrote:
> A follow-up patch will need to limit the output link bpp both in the
> non-DSC and DSC configuration, so track the pipe and link bpp limits
> separately in the link_config_limits struct.
>=20
> Use .4 fixed point format for link bpp matching the 1/16 bpp granularity
> in DSC mode and for now keep this limit matching the pipe bpp limit.
>=20
> v2: (Jani)
> - Add to_bpp_int(), to_bpp_x16() helpers instead of opencoding them.
> - Rename link_config_limits::link.min/max_bpp to min/max_bpp_x16.
>=20
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    | 10 ++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  9 ++++++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 17 ++++++++-----
>  4 files changed, 44 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 731f2ec04d5cd..5875eff5012ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h

[...]

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 788a577ebe16e..ebc7f4e60c777 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -26,7 +26,14 @@ struct intel_encoder;
>  struct link_config_limits {
>  	int min_rate, max_rate;
>  	int min_lane_count, max_lane_count;
> -	int min_bpp, max_bpp;
> +	struct {
> +		/* Uncompressed DSC input or link output bpp in 1 bpp units */
> +		int min_bpp, max_bpp;
> +	} pipe;
> +	struct {
> +		/* Compressed or uncompressed link output bpp in 1/16 bpp units */
> +		int min_bpp_x16, max_bpp_x16;
> +	} link;
>  };

It's not clear to me from the commit message (nor from the code, for
that matter) why you need to store the values in both formats.  Can you
clarify?

--
Cheers,
Luca.
