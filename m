Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E25AD6E0B96
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 12:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AB210EABE;
	Thu, 13 Apr 2023 10:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E20B10EABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 10:41:42 +0000 (UTC)
Received: from 91-155-254-77.elisa-laajakaista.fi ([91.155.254.77]
 helo=[192.168.100.137])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1pmuOT-007fHJ-5U;
 Thu, 13 Apr 2023 13:41:38 +0300
Message-ID: <229e48c64280d5a43f3d86e713be531f0056028f.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 13:41:32 +0300
In-Reply-To: <20230328122357.1697-1-ville.syrjala@linux.intel.com>
References: <20230328122357.1697-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,URIBL_BLOCKED autolearn=ham autolearn_force=no
 version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flag purely internal commits to
 not clear crtc_state->inherited
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

On Tue, 2023-03-28 at 15:23 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> If we have to force the hardware to go through a full modeset
> due to eg. cdclk reprogramming, we need to preserve
> crtc_state->inherited for all crtcs that have not otherwise
> gone through the whole compute_config() stuff after connectors
> have been detected.
>=20
> Otherwise eg. cdclk induced modeset glk_force_audio_cdclk()
> will clear the inherited flag, and thus the first real commit
> coming from userspace later on will not be forced through
> the full .compute_config() path and so eg. audio state may
> not get properly recomputed.
>=20
> But instead of adding all kinds of ad-hoc crtc_state->inherited
> preservation hacks all over, let's change things so that we
> only clear it for the crtcs directly included in userspace/client
> initiated commits.
>=20
> Should be far less fragile since now we just need to remember
> to flag the internal commits, and not worry about where new
> crtcs might get pulled in.
>=20
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5260
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Looks good to me.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
