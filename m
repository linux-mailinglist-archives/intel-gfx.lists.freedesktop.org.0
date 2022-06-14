Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744AF54B0A3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 14:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946D98919E;
	Tue, 14 Jun 2022 12:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D75648919E;
 Tue, 14 Jun 2022 12:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655209984; x=1686745984;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mXYnzRfTNEuDLjW2bO7Ouhd7lIwVkMvdtCn+nTnldcA=;
 b=gIhJOMoqXrNRSo3JY9DQgVFOofbrH4sMaIx57rqhLgRhL/H0ofz8SYyI
 yvp6oPCbblhCN7mqsfAoS2sSnStrXKq/O+ml7IJprcXAzGhMfWVQIFd/f
 AyOtQ/9Ex7paQkPuq8Fxv3MP2GhzYDm+Zk09GCfOte3AgDyPNgw8C64NU
 k/jj2n7OjJZJDykZxlytAhVUFEoZ42PetrKT1RUdqe5l7UeukcMYXH54r
 ugqX6qTOVKpLWYXrBR00Jb+359tOHb26gpNfLbXn0+DcgwAEibuqyU2cF
 qGj/8XxR0ADBmB3vTUDI4W7LSVEkRd7fX6bt4o9zI4y3KNcxLXOeAOvcy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="278642515"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="278642515"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:33:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="588441260"
Received: from nncongwa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.178])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:33:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, dri-devel@lists.freedesktop.org
In-Reply-To: <20220614094537.885472-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220614094537.885472-1-imre.deak@intel.com>
Date: Tue, 14 Jun 2022 15:32:59 +0300
Message-ID: <87sfo7xw5g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/dp/mst: Read the extended DPCD
 capabilities during system resume
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Jun 2022, Imre Deak <imre.deak@intel.com> wrote:
> The WD22TB4 Thunderbolt dock at least will revert its DP_MAX_LINK_RATE
> from HBR3 to HBR2 after system suspend/resume if the DP_DP13_DPCD_REV
> registers are not read subsequently also as required.

Does it actually change the behaviour depending on whether the dpcd is
read or not, or is this just about the resume path overwriting mgr->dpcd
with stuff from DP_DPCD_REV?

drm_dp_mst_topology_mgr_set_mst() does use drm_dp_read_dpcd_caps() for
reading the caps, which would normally set mgr->dpcd from
DP_DP13_DPCD_REV.

BR,
Jani.

>
> Fix this by reading DP_DP13_DPCD_REV registers as well, matching what is
> done during connector detection. While at it also fix up the same call
> in drm_dp_mst_dump_topology().
>
> Cc: Lyude Paul <lyude@redhat.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5292
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 67b3b9697da7f..18f2b6075b780 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -3860,9 +3860,7 @@ int drm_dp_mst_topology_mgr_resume(struct drm_dp_mst_topology_mgr *mgr,
>  	if (!mgr->mst_primary)
>  		goto out_fail;
>  
> -	ret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, mgr->dpcd,
> -			       DP_RECEIVER_CAP_SIZE);
> -	if (ret != DP_RECEIVER_CAP_SIZE) {
> +	if (drm_dp_read_dpcd_caps(mgr->aux, mgr->dpcd) < 0) {
>  		drm_dbg_kms(mgr->dev, "dpcd read failed - undocked during suspend?\n");
>  		goto out_fail;
>  	}
> @@ -4911,8 +4909,7 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
>  		u8 buf[DP_PAYLOAD_TABLE_SIZE];
>  		int ret;
>  
> -		ret = drm_dp_dpcd_read(mgr->aux, DP_DPCD_REV, buf, DP_RECEIVER_CAP_SIZE);
> -		if (ret) {
> +		if (drm_dp_read_dpcd_caps(mgr->aux, buf) < 0) {
>  			seq_printf(m, "dpcd read failed\n");
>  			goto out;
>  		}

-- 
Jani Nikula, Intel Open Source Graphics Center
