Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6E873DE6F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4435288EFF;
	Mon, 26 Jun 2023 12:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B795388EFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:05:59 +0000 (UTC)
Received: from 91-155-254-218.elisa-laajakaista.fi ([91.155.254.218]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1qDkyf-009GQw-JW;
 Mon, 26 Jun 2023 15:05:56 +0300
Message-ID: <bc4a92cfd83b6c0338bdf32e58098a328d8a4ed6.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 15:05:53 +0300
In-Reply-To: <20230621123156.14907-2-jani.nikula@intel.com>
References: <20230621123156.14907-1-jani.nikula@intel.com>
 <20230621123156.14907-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: fix Sphinx indentation warning
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

On Wed, 2023-06-21 at 15:31 +0300, Jani Nikula wrote:
> Fix Sphinx warning about unexpected indent.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i91=
5/gt/uc/intel_huc.c
> index bb95bdd1c3f9..23aa1b0e0166 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -26,6 +26,7 @@
>   * The kernel driver is only responsible for loading the HuC firmware an=
d
>   * triggering its security authentication. This is done differently depe=
nding
>   * on the platform:
> + *
>   * - older platforms (from Gen9 to most Gen12s): the load is performed v=
ia DMA
>   *   and the authentication via GuC
>   * - DG2: load and authentication are both performed via GSC.
> @@ -33,6 +34,7 @@
>   *   not-DG2 older platforms), while the authentication is done in 2-ste=
ps,
>   *   a first auth for clear-media workloads via GuC and a second one for=
 all
>   *   workloads via GSC.
> + *
>   * On platforms where the GuC does the authentication, to correctly do s=
o the
>   * HuC binary must be loaded before the GuC one.
>   * Loading the HuC is optional; however, not using the HuC might negativ=
ely

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
