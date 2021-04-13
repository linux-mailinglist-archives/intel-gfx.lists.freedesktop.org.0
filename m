Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D4D35E4C4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 19:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5B289CF8;
	Tue, 13 Apr 2021 17:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD4989CF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 17:13:14 +0000 (UTC)
IronPort-SDR: rFaz6ruAy8fOL/5VUg7gto8MjZMNCIhQTQq+Dqvhg+YV711N20Ma/NHQJhCcSk/mteK1TBpW40
 1XhBRJxSkcJg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="181975489"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="181975489"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 10:13:10 -0700
IronPort-SDR: bJDMsc4+A+bhJUqSxO3160kbYIfJAIDxqXeNsQN7o7biJ0tiL9itdVotdjj7NZ97J+al8XBypb
 8mMenf0S1vUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="389102327"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 13 Apr 2021 10:13:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Apr 2021 20:13:06 +0300
Date: Tue, 13 Apr 2021 20:13:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YHXRIs7jUjKBaAeW@intel.com>
References: <20210412232413.2755054-1-imre.deak@intel.com>
 <20210412232413.2755054-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412232413.2755054-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Drop redundant address-of op
 before lttpr_common_caps array
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

On Tue, Apr 13, 2021 at 02:24:13AM +0300, Imre Deak wrote:
> The addres-of op in front of an array is just an alias to using the
> array on its own, so drop the op.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index cbcfb0c4c3708..7f684d33314f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -37,7 +37,7 @@ intel_dp_dump_link_status(struct drm_device *drm,
>  =

>  static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
>  {
> -	memset(&intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_c=
aps));
> +	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_ca=
ps));
>  }
>  =

>  static void intel_dp_reset_lttpr_count(struct intel_dp *intel_dp)
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
