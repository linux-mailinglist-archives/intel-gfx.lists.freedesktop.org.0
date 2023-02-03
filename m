Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A383D689875
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 13:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DC410E051;
	Fri,  3 Feb 2023 12:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7B010E051
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 12:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675426969; x=1706962969;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R5iedNJ/RpoTiW2KSu1kco2vAr161tuWCJP0Kc/CPsc=;
 b=OdIjzW7VNMhDc8QinDcEoGA29Vqz55ePGurxvhS4MHMmL1Eqzf792CVT
 79vqnEfc06FGZYYfhHBC08gNUf2INLjydMdArn9N4GiMpMOW7FeQUbD0I
 dzpyUWybK3LFKKxqzuQjKwPdRnS2O7hvruFkJZRmPU8IRlLHrYJMuhd3P
 RR4ktuom7PDw0OnVUWu4SjwyC1euHRBhc+9Euh4ydYtpHHJ3nJ1VmhbCv
 wYmlUOTEQvMe4YE5fv61YlVF7rkoESJzyjDWzafjrah0jFZGLBVGOdYmt
 hYrwswCf2vzuj7dcoi3Ftb7Wglaxvbc2gYgNd0YA7l9xtsqBdw1kDLWe/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="326432675"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="326432675"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 04:22:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="659083146"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="659083146"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 03 Feb 2023 04:22:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Feb 2023 14:22:44 +0200
Date: Fri, 3 Feb 2023 14:22:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Y9z8lHpAx/NzVnSJ@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
 <20230131150548.1614458-7-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230131150548.1614458-7-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 06/17] drm/display/dp_mst: Sanitize
 payload iteration in drm_dp_mst_dump_topology()
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

On Tue, Jan 31, 2023 at 05:05:37PM +0200, Imre Deak wrote:
> Simplify the loop iterating the payloads by using a helper to get a
> payload by its VCPI (keeping the list VCPI sorted). This also removes
> the assumption that the biggest VCPI matches the number of payloads
> (even though this holds now).
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 45 ++++++++++++-------
>  1 file changed, 28 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 8787df19f428b..0c04b96ae614c 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4737,6 +4737,18 @@ static void fetch_monitor_name(struct drm_dp_mst_topology_mgr *mgr,
>  	kfree(mst_edid);
>  }
>  
> +static struct drm_dp_mst_atomic_payload *
> +get_payload_by_vcpi(struct drm_dp_mst_topology_state *mst_state, int vcpi)
> +{
> +	struct drm_dp_mst_atomic_payload *payload;
> +
> +	list_for_each_entry(payload, &mst_state->payloads, next)
> +		if (payload->vcpi == vcpi)
> +			return payload;
> +
> +	return NULL;
> +}
> +
>  /**
>   * drm_dp_mst_dump_topology(): dump topology to seq file.
>   * @m: seq_file to dump output to
> @@ -4748,7 +4760,6 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
>  			      struct drm_dp_mst_topology_mgr *mgr)
>  {
>  	struct drm_dp_mst_topology_state *state;
> -	struct drm_dp_mst_atomic_payload *payload;
>  	int i, ret;
>  
>  	mutex_lock(&mgr->lock);
> @@ -4768,24 +4779,24 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
>  		   state->payload_mask, mgr->max_payloads, state->start_slot, state->pbn_div);
>  
>  	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink name     |\n");
> -	for (i = 0; i < mgr->max_payloads; i++) {
> -		list_for_each_entry(payload, &state->payloads, next) {
> -			char name[14];
> +	for_each_set_bit(i, (unsigned long *)&state->payload_mask,
> +			 BITS_PER_TYPE(state->payload_mask)) {

payload_mask is u32, unsigned long can be 64 bits. Does this
actually work for both little and big endian?

> +		const struct drm_dp_mst_atomic_payload *payload = get_payload_by_vcpi(state, i + 1);
> +		char name[14];
>  
> -			if (payload->vcpi != i + 1 || payload->delete)
> -				continue;
> +		if (payload->delete)
> +			continue;
>  
> -			fetch_monitor_name(mgr, payload->port, name, sizeof(name));
> -			seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
> -				   i,
> -				   payload->port->port_num,
> -				   payload->vcpi,
> -				   payload->vc_start_slot,
> -				   payload->vc_start_slot + payload->time_slots - 1,
> -				   payload->pbn,
> -				   payload->dsc_enabled ? "Y" : "N",
> -				   (*name != 0) ? name : "Unknown");
> -		}
> +		fetch_monitor_name(mgr, payload->port, name, sizeof(name));
> +		seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
> +			   i,
> +			   payload->port->port_num,
> +			   payload->vcpi,
> +			   payload->vc_start_slot,
> +			   payload->vc_start_slot + payload->time_slots - 1,
> +			   payload->pbn,
> +			   payload->dsc_enabled ? "Y" : "N",
> +			   (*name != 0) ? name : "Unknown");
>  	}
>  
>  	seq_printf(m, "\n*** DPCD Info ***\n");
> -- 
> 2.37.1

-- 
Ville Syrjälä
Intel
