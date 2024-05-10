Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D2A8C2140
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DF810E896;
	Fri, 10 May 2024 09:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WuYduLe6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D07710E871
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715334362; x=1746870362;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cSWLSBB2lE8gRMHWzRhnUCtR8IGlTiIiWi8eh15dOIo=;
 b=WuYduLe6BWRoNMtOcczXkaqK3ClqtuSRhNfBb8ySXTICS2rBgfouhzz3
 TQBl+EWshQPcjKvtdzscc+zvgowd+JhHXKeroVuqFT9N/7900rieAATmk
 kwIOcMEMjfYAEq85t2Nl2WuKNDV4N1KXZn5fodtOviJWDxyvKG37PPHn2
 4qWkwcuHtLqCxIcO/rZORSZLam6JHZDUHUzbKCGn2p7vQZX8bz51zyQDQ
 nigwBpP+rqsjjU/XrJlt4Mn4A6rJNH2PDJQP6iPcl2L9xhXW8PZxFrowf
 Eg6KGGwMU/I+dAAmpknulDK+H5s3wof5XEMqBcg89DpxG38ioOaAiijSC A==;
X-CSE-ConnectionGUID: SneyXl+kSNWD9306I+0u6g==
X-CSE-MsgGUID: FyXy0iwkT0GUCCmuFBd9cA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="22712796"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="22712796"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:46:02 -0700
X-CSE-ConnectionGUID: iXYRK3BbRzO4RudFXvlUvg==
X-CSE-MsgGUID: mvNA+fmGQfi4XBeWH7wMeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29419972"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:46:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH v10 05/12] drm/panelreplay: dpcd register definition for
 panelreplay SU
In-Reply-To: <20240510093823.3146455-6-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
 <20240510093823.3146455-6-jouni.hogander@intel.com>
Date: Fri, 10 May 2024 12:45:57 +0300
Message-ID: <87r0eahuei.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 10 May 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Add definitions for panel replay selective update
>
> v2: Remove unnecessary Cc from commit message
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Reviewed-by: Animesh Manna <animesh.manna@intel.com>

Needs to be Cc: dri-devel.

> ---
>  include/drm/display/drm_dp.h | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 0b032faa8cf2..906949ca3cee 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -548,6 +548,12 @@
>  # define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
>  # define DP_PANEL_REPLAY_SU_SUPPORT         (1 << 1)
>=20=20
> +#define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1
> +# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
> +
> +#define DP_PANEL_PANEL_REPLAY_X_GRANULARITY		0xb2
> +#define DP_PANEL_PANEL_REPLAY_Y_GRANULARITY		0xb4
> +
>  /* Link Configuration */
>  #define	DP_LINK_BW_SET		            0x100
>  # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */

--=20
Jani Nikula, Intel
