Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA71C71C8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 15:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484A66E22B;
	Wed,  6 May 2020 13:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA006E22B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 13:35:54 +0000 (UTC)
IronPort-SDR: 58kDcBFegwyTU+h4pMY6xL26PTfLnuhdpZlIXEMiSegWS2SIaRoFqUwbzM33BuqPaYWak7V7+4
 VpWQjVRd1Y8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 06:35:54 -0700
IronPort-SDR: glVE33N8RCuxdwTo8a/FO7as7QxCrppLLD+WT+BGvclTvJj7x+11sRVD89wKfYc7vdny9SD4cZ
 a6zi/Uxk4P3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="278229566"
Received: from pratiks1-mobl.gar.corp.intel.com (HELO [10.252.56.151])
 ([10.252.56.151])
 by orsmga002.jf.intel.com with ESMTP; 06 May 2020 06:35:51 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
 <20200430230951.2508-5-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <f1c87c45-0c81-c791-b2a8-e50929c46d8b@linux.intel.com>
Date: Wed, 6 May 2020 15:35:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430230951.2508-5-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 04/11] drm/i915/dp: Allow big joiner
 modes in intel_dp_mode_valid(), v3.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 01-05-2020 om 01:09 schreef Manasi Navare:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> Small changes to intel_dp_mode_valid(), allow listing modes that
> can only be supported in the bigjoiner configuration, which is
> not supported yet.
>
> eDP does not support bigjoiner, so do not expose bigjoiner only
> modes on the eDP port.
>
> Changes since v1:
> - Disallow bigjoiner on eDP.
> Changes since v2:
> - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotclock,
>   and split off the downstream and source checking to its own function.
>   (Ville)
> v3:
> * Rebase (Manasi)
>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 117 ++++++++++++++++++------
>  1 file changed, 89 insertions(+), 28 deletions(-)

Hey,

With this patch, the 8k mode is still rejected because h limits are not increased on DP:
[ 3762.916623] i915 0000:00:02.0: [drm:intel_dp_dsc_get_output_bpp [i915]] Max link bpp: 12
[ 3762.916663] i915 0000:00:02.0: [drm:intel_dp_dsc_get_output_bpp [i915]] Max small joiner bpp: 16
[ 3762.916702] [drm:intel_dp_dsc_get_output_bpp [i915]] Max big joiner bpp: 14
[ 3762.916706] [drm:drm_mode_debug_printmodeline] Modeline "7680x4320": 60 2068660 7680 7688 7720 7760 4320 4429 4437 4443 0x48 0x9
[ 3762.916709] [drm:drm_mode_prune_invalid] Not using 7680x4320 mode: H_ILLEGAL

I would suggest tweaking intel_mode_valid_max_plane_size to make this work. :)

~Maarten

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
