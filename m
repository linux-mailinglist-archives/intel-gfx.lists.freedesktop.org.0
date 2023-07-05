Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A782D7484E0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 15:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4995A10E17C;
	Wed,  5 Jul 2023 13:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AFDA10E17C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 13:26:22 +0000 (UTC)
Received: from 91-155-254-218.elisa-laajakaista.fi ([91.155.254.218]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1qH2WM-009QJN-1A;
 Wed, 05 Jul 2023 16:26:15 +0300
Message-ID: <0c363308d7457f76c95b89cf8af137162d829c0f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Wed, 05 Jul 2023 16:26:13 +0300
In-Reply-To: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
References: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the disabling sequence for
 Bigjoiner
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2023-05-25 at 13:10 +0300, Stanislav Lisovskiy wrote:
> According to BSpec 49190, when enabling crtcs, we first setup
> slave and then master crtc, however for disabling it should go
> vice versa, i.e first master, then slave, however current code
> does disabling in a same way as enabling. Fix this, by skipping
> non-master crtcs, instead of non-slaves.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0490c6412ab5..68958ba0ef49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct in=
tel_atomic_state *state)
>  		 */
>  		if (!is_trans_port_sync_slave(old_crtc_state) &&
>  		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> +		    !intel_crtc_is_bigjoiner_master(old_crtc_state))
>  			continue;
> =20
>  		intel_old_crtc_state_disables(state, old_crtc_state,


Looks good to me.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
