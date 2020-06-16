Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8469C1FB792
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 17:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E866E8FD;
	Tue, 16 Jun 2020 15:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CD76E8FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 15:47:48 +0000 (UTC)
IronPort-SDR: dQ0KRB9CTkT/cWebuH72uTNlOpanZBLUJxO58hgNn/2p9SOwS9MMWK4pLHneJm+2IF4wbY2+45
 9i73lLW5Uoug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:47:48 -0700
IronPort-SDR: 8xj20PxG6PXpEBFzIU5q3vcYQuXsd6HkHAxx5gNUZCOLw8umlfz+2ZIt3Mid10SgB9nqf5TSzk
 3w4u1AnjuP2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="276960289"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 16 Jun 2020 08:47:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jun 2020 18:47:44 +0300
Date: Tue, 16 Jun 2020 18:47:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200616154744.GC6112@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
 <20200616141855.746-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616141855.746-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/dp_mst: Clear the ACT sent
 flag during encoder disabling too
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 16, 2020 at 05:18:54PM +0300, Imre Deak wrote:
> During encoder enabling we clear the flag before starting the ACT
> sequence and wait for the flag, but the clearing is missing during
> encoder disabling, add it there too. Since nothing cleared the flag
> automatically we could've run subsequent disabling steps too early.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index b66b56a070e5..9308b5920780 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -389,6 +389,8 @@ static void intel_mst_post_disable_dp(struct intel_at=
omic_state *state,
>  =

>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

> +	clear_act_sent(intel_dp);
> +
>  	val =3D intel_de_read(dev_priv,
>  			    TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder));
>  	val &=3D ~TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
> -- =

> 2.23.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
