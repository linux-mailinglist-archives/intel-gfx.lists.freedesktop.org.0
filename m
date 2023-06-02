Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C5A71FC39
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 10:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1579110E209;
	Fri,  2 Jun 2023 08:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D4610E209
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 08:40:12 +0000 (UTC)
Received: from 91-156-6-72.elisa-laajakaista.fi ([91.156.6.72]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1q50KL-008mCd-Fm;
 Fri, 02 Jun 2023 11:40:08 +0300
Message-ID: <0b56d0bdf0f49038548ae53a36d5af4d5c9cd8aa.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 02 Jun 2023 11:40:04 +0300
In-Reply-To: <20230530101649.2549949-1-jouni.hogander@intel.com>
References: <20230530101649.2549949-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,URIBL_BLOCKED autolearn=ham autolearn_force=no
 version=3.4.6
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Use 18 fast wake AUX sync len
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

On Tue, 2023-05-30 at 13:16 +0300, Jouni H=C3=B6gander wrote:
> HW default for wake sync pulses is 18. 10 precarge and 8 preamble. There =
is

Small typo: s/precarge/precharge/


> no reason to change this especially as it is causing problems with certai=
n
> eDP panels.
>=20
> v3: Change "Fixes:" commit
> v2: Remove "fast wake" repeat from subject
>=20
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Fixes: e1c71f8f9180 ("drm/i915: Fix fast wake AUX sync len")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8475
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 0c27db8ae4f1..197c6e81db14 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -129,7 +129,7 @@ static int intel_dp_aux_sync_len(void)
> =20
>  static int intel_dp_aux_fw_sync_len(void)
>  {
> -	int precharge =3D 16; /* 10-16 */
> +	int precharge =3D 10; /* 10-16 */
>  	int preamble =3D 8;
> =20
>  	return precharge + preamble;

If this really solves the problem, and since the comment clearly says
that the range is from 10 to 16, it looks good to me.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
