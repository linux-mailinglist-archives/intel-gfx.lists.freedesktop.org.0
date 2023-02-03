Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E6F68997B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 14:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E6910E78E;
	Fri,  3 Feb 2023 13:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCD010E78E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 13:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675429947; x=1706965947;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xgw+PUw2LKbMploqH2kpYcxZA3aYdtvWJlKBl5HCef0=;
 b=X4d+YQVJbc2aFhoWzI9AeRd5otULgnadEwDXyL3iLjEnowjQxiZe9fwM
 OBXakXh2yY608XJMOErrwdXACR2hh5PfwpfKlFAutnEXeCUkbVGgL0moT
 0+9caWWjTUdQ7G4BN78rNiziCZo4NIJTWxMbZBfsy1r9uTAEE7m3mAl1r
 EAoHgWFbhzhpbYaPVXia7GwIwuECN8ouokfh8gBktfI3h1EQTkJVl6OF3
 rNA2Me3Dg2p/YYh/CYwV4KBy+Z3kSs8z94Hmt/E/qG3aHNCTvvdm2u9UV
 edZdiRpQB7Az479qhnY5JfW6BQIytg6Kc81FwcBYmDUZfeOB/yDeUmjJh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308382968"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="308382968"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 05:12:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="696157766"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="696157766"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 05:12:25 -0800
Date: Fri, 3 Feb 2023 15:12:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y90INjenIGVKJjzL@ideak-desk.fi.intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
 <20230131150548.1614458-7-imre.deak@intel.com>
 <Y9z8lHpAx/NzVnSJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9z8lHpAx/NzVnSJ@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 03, 2023 at 02:22:44PM +0200, Ville Syrjälä wrote:
> On Tue, Jan 31, 2023 at 05:05:37PM +0200, Imre Deak wrote:
> > Simplify the loop iterating the payloads by using a helper to get a
> > payload by its VCPI (keeping the list VCPI sorted). This also removes
> > the assumption that the biggest VCPI matches the number of payloads
> > (even though this holds now).
> > 
> > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/display/drm_dp_mst_topology.c | 45 ++++++++++++-------
> >  1 file changed, 28 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > index 8787df19f428b..0c04b96ae614c 100644
> > --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > @@ -4737,6 +4737,18 @@ static void fetch_monitor_name(struct drm_dp_mst_topology_mgr *mgr,
> >  	kfree(mst_edid);
> >  }
> >  
> > +static struct drm_dp_mst_atomic_payload *
> > +get_payload_by_vcpi(struct drm_dp_mst_topology_state *mst_state, int vcpi)
> > +{
> > +	struct drm_dp_mst_atomic_payload *payload;
> > +
> > +	list_for_each_entry(payload, &mst_state->payloads, next)
> > +		if (payload->vcpi == vcpi)
> > +			return payload;
> > +
> > +	return NULL;
> > +}
> > +
> >  /**
> >   * drm_dp_mst_dump_topology(): dump topology to seq file.
> >   * @m: seq_file to dump output to
> > @@ -4748,7 +4760,6 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
> >  			      struct drm_dp_mst_topology_mgr *mgr)
> >  {
> >  	struct drm_dp_mst_topology_state *state;
> > -	struct drm_dp_mst_atomic_payload *payload;
> >  	int i, ret;
> >  
> >  	mutex_lock(&mgr->lock);
> > @@ -4768,24 +4779,24 @@ void drm_dp_mst_dump_topology(struct seq_file *m,
> >  		   state->payload_mask, mgr->max_payloads, state->start_slot, state->pbn_div);
> >  
> >  	seq_printf(m, "\n| idx | port | vcpi | slots | pbn | dsc |     sink name     |\n");
> > -	for (i = 0; i < mgr->max_payloads; i++) {
> > -		list_for_each_entry(payload, &state->payloads, next) {
> > -			char name[14];
> > +	for_each_set_bit(i, (unsigned long *)&state->payload_mask,
> > +			 BITS_PER_TYPE(state->payload_mask)) {
> 
> payload_mask is u32, unsigned long can be 64 bits. Does this
> actually work for both little and big endian?

That's a good catch, on big-endian it's bogus AFAICS. There doesn't
seem to be a 32 bit version of for_each_set_bit, so would

	unsigned long mask = state->payload_mask;
	for_each_set_bit(i, &mask, BITS_PER_TYPE(mask))

be ok?

> 
> > +		const struct drm_dp_mst_atomic_payload *payload = get_payload_by_vcpi(state, i + 1);
> > +		char name[14];
> >  
> > -			if (payload->vcpi != i + 1 || payload->delete)
> > -				continue;
> > +		if (payload->delete)
> > +			continue;
> >  
> > -			fetch_monitor_name(mgr, payload->port, name, sizeof(name));
> > -			seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
> > -				   i,
> > -				   payload->port->port_num,
> > -				   payload->vcpi,
> > -				   payload->vc_start_slot,
> > -				   payload->vc_start_slot + payload->time_slots - 1,
> > -				   payload->pbn,
> > -				   payload->dsc_enabled ? "Y" : "N",
> > -				   (*name != 0) ? name : "Unknown");
> > -		}
> > +		fetch_monitor_name(mgr, payload->port, name, sizeof(name));
> > +		seq_printf(m, " %5d %6d %6d %02d - %02d %5d %5s %19s\n",
> > +			   i,
> > +			   payload->port->port_num,
> > +			   payload->vcpi,
> > +			   payload->vc_start_slot,
> > +			   payload->vc_start_slot + payload->time_slots - 1,
> > +			   payload->pbn,
> > +			   payload->dsc_enabled ? "Y" : "N",
> > +			   (*name != 0) ? name : "Unknown");
> >  	}
> >  
> >  	seq_printf(m, "\n*** DPCD Info ***\n");
> > -- 
> > 2.37.1
> 
> -- 
> Ville Syrjälä
> Intel
