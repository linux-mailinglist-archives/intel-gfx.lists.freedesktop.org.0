Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2356256F3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 10:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6173710E08D;
	Fri, 11 Nov 2022 09:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6B010E08D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 09:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668159449; x=1699695449;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Z7hXd3WBxCMrSlgm0pXbVefgXqBiV3ow3huiLqKkHFY=;
 b=MWvEjDCIxJeEK58jvxmo9PPAYp3IrwC9uZHRd3xByBs16+KJG4iXJDr+
 h81lsDRh//3B3Jc8/U3p5C5pj7IzEaGJikODKvdOHsx3mZ+QGRqAy55od
 2NzR5pVRd0sfhBjLy3F7BHY+AUlo9k+UfBbOwN29hYaRMtRMmkUCamZvx
 kqlk12qCVUmiJTEfCq3z0U8Jv4IrGg0pTor3L/iJl70If5+6h2kcgh7GM
 ot9u2TrlfTz1O7rsVNYipncmD5O5EGs823FySH0EBsuRYR2qEaPmUAUS0
 KM3nd4Xyqily98+ivHyiGINmZwT6nqnLSA+4FZ7w2fQy5xBUmi+tCt4kv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="375828246"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="375828246"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 01:37:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="701161556"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="701161556"
Received: from ldunne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.15.227])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 01:37:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110150307.3366-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-2-animesh.manna@intel.com>
Date: Fri, 11 Nov 2022 11:37:24 +0200
Message-ID: <87fsep6dd7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/panelreplay: dpcd register
 definition for panelreplay
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

On Thu, 10 Nov 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> DPCD register definition added to check and enable panel replay
> capability of the sink.

This patch is not i915 specific like the subject claims.

Please always Cc: dri-devel for drm changes.

BR,
Jani.

>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  include/drm/display/drm_dp.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index e934aab357be..40995f8c2c2f 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -537,6 +537,10 @@
>  /* DFP Capability Extension */
>  #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
>=20=20
> +#define DP_PANEL_REPLAY_CAP                 0x0b0
> +# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
> +# define DP_PR_SELECTIVE_UPDATE_SUPPORT     (1 << 1)
> +
>  /* Link Configuration */
>  #define	DP_LINK_BW_SET		            0x100
>  # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
> @@ -706,6 +710,13 @@
>  #define DP_BRANCH_DEVICE_CTRL		    0x1a1
>  # define DP_BRANCH_DEVICE_IRQ_HPD	    (1 << 0)
>=20=20
> +#define PANEL_REPLAY_CONFIG                 0x1b0
> +# define DP_PANEL_REPLAY_ENABLE             (1 << 0)
> +# define DP_PR_UNRECOVERABLE_ERROR          (1 << 3)
> +# define DP_PR_RFB_STORAGE_ERROR            (1 << 4)
> +# define DP_PR_ACTIVE_FRAME_CRC_ERROR       (1 << 5)
> +# define DP_PR_SELECTIVE_UPDATE_ENABLE      (1 << 6)
> +
>  #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>  #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>  #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2

--=20
Jani Nikula, Intel Open Source Graphics Center
