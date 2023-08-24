Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF59786DD4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45E810E52B;
	Thu, 24 Aug 2023 11:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8764F10E523
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692876569; x=1724412569;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Q/iwjOFO3yQIFTQ3c7iy38xZLM3AS1AZOM0IaJujOA0=;
 b=UTgi2dRZccpWsKaEx3cOdYMYt/3FSf4UeiGrVclT/MYsmm7AyeWXBGAg
 PgqeoZD2KcNAbC8gUjbuu2uUAUc6JMAuVdQ0n7afuAcfEhBkU0EidNuMi
 SSuTAXVhvJrPOY/HLK90v9VnzxHWKAeNts3kQ4pCDWswTVBI5XBlPE1IZ
 L00cpBKGgfIJn28oLLe2+zO9oefQubL4GvDeCnasd61ROk943sP2i/5kQ
 TQYJmRh3unTmXZbXWr8E4oSk/p1Hyx1rsiHgMsWzHvX7Q3qLTuePe2BwP
 IafspsGuGHlFG2tj+AFs8g2c8Y34q3Iyc0o2mG+IFOKnmc8uc7EzwOt/J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="460770473"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="460770473"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="851473205"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851473205"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:29:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230824040952.186407-2-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230824040952.186407-1-animesh.manna@intel.com>
 <20230824040952.186407-2-animesh.manna@intel.com>
Date: Thu, 24 Aug 2023 14:29:24 +0300
Message-ID: <87cyzc4r1n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/panelreplay: dpcd register
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

On Thu, 24 Aug 2023, Animesh Manna <animesh.manna@intel.com> wrote:
> DPCD register definition added to check and enable panel replay
> capability of the sink.
>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  include/drm/display/drm_dp.h | 11 +++++++++++

If it touches drm, need to Cc: dri-devel. This is not new.

BR,
Jani.

>  1 file changed, 11 insertions(+)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index e69cece404b3..a38dc5f1731e 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -543,6 +543,10 @@
>  /* DFP Capability Extension */
>  #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
>=20=20
> +#define DP_PANEL_REPLAY_CAP                 0x0b0
> +# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
> +# define DP_PANEL_REPLAY_SU_SUPPORT         (1 << 1)
> +
>  /* Link Configuration */
>  #define	DP_LINK_BW_SET		            0x100
>  # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
> @@ -716,6 +720,13 @@
>  #define DP_BRANCH_DEVICE_CTRL		    0x1a1
>  # define DP_BRANCH_DEVICE_IRQ_HPD	    (1 << 0)
>=20=20
> +#define PANEL_REPLAY_CONFIG                             0x1b0
> +# define DP_PANEL_REPLAY_ENABLE                         (1 << 0)
> +# define DP_PANEL_REPLAY_UNRECOVERABLE_ERROR            (1 << 3)
> +# define DP_PANEL_REPLAY_RFB_STORAGE_ERROR              (1 << 4)
> +# define DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR         (1 << 5)
> +# define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
> +
>  #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>  #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>  #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2

--=20
Jani Nikula, Intel Open Source Graphics Center
