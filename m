Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6CE84268D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 15:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF8D10EDE5;
	Tue, 30 Jan 2024 14:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A8210F8F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 14:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706623307; x=1738159307;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MnP1vN6izmXxUGzlD0LFZ5wnLFbYXwWf6We0GYyS96I=;
 b=nuEG6jxWQiHqkAaxD77uWroCbgwLA3U2gZ7D/ELlRMJv4kFsKlKQ5qiK
 OqxfXCvwxLneRYrPrtLJvXjigHA4TeZbZUP8ocndngUIUN63Z0BQQFz7c
 536/xHJw93b9va8ACJlcOr3BPXrFQLUvQgcpGMhPRZsrnmU41zsK7Q/ag
 RjjfLWx+rjvCrdEcwswtRQLMUK6dvjoAqvUXmYcrYB3MKQRPzA1049tfi
 Awepqr3N/n/9WUkDiHNIjCu6cI5WcnL/dXC1imyP7GEmrtXTVmzkhqSAN
 ds8kMBNDnux9tvlCk3wxb+gcti5uMyJIsCuIgHRjPivHJ1CDTXYAxQ+kE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="16667112"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="16667112"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 06:01:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="822210621"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="822210621"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 30 Jan 2024 06:01:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Jan 2024 16:01:26 +0200
Date: Tue, 30 Jan 2024 16:01:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "20240127063627.1369883-1-arun.r.murthy@intel.com"
 <20240127063627.1369883-1-arun.r.murthy@intel.com>
Subject: Re: [PATCH 1/2] drm/display/dp: Check for MSTM_CAP before MSTM_CTRL
 write
Message-ID: <ZbkBNs7XC6TFWlfQ@intel.com>
References: <LV2PR11MB6024F22AA5D550720E6D1C458B7D2@LV2PR11MB6024.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <LV2PR11MB6024F22AA5D550720E6D1C458B7D2@LV2PR11MB6024.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 30, 2024 at 07:56:26AM +0000, Lin, Charlton wrote:
> On 1/27/2024 12:06 PM, Arun R Murthy wrote:
> > With DP2.1, multistream packetization and the underneth MST protocol
> > will be required for SST. So check for MSTM_CAP to see if MST is really
> > required and skip the MSTM_CTRL write so that we ensure that only the
> > underneth protocol and the multistream packetization will be enabled and
> > sink will not be confused by a corresponding dpcd write.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/display/drm_dp_mst_topology.c | 26 +++++++++++--------
> >  1 file changed, 15 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > index 8ca01a6bf645..22d81732a978 100644
> > --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> > @@ -3666,10 +3666,11 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
> >                           mgr->mst_primary = mstb;
> >                           drm_dp_mst_topology_get_mstb(mgr->mst_primary);
> >
> > -                        ret = drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> > -                                                                   DP_MST_EN |
> > -                                                                   DP_UP_REQ_EN |
> > -                                                                   DP_UPSTREAM_IS_SRC);
> > +                       if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> > +                                      ret = drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> > +                                                                                 DP_MST_EN |
> > +                                                                                 DP_UP_REQ_EN |
> > +                                                                                 DP_UPSTREAM_IS_SRC);
> >                           if (ret < 0)
> >                                         goto out_unlock;
> >
> > @@ -3684,7 +3685,8 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms
> >                           mstb = mgr->mst_primary;
> >                           mgr->mst_primary = NULL;
> >                           /* this can fail if the device is gone */
> > -                        drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL, 0);
> > +                       if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> > +                                      drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL, 0);
> >                           ret = 0;
> >                           mgr->payload_id_table_cleared = false;
> >
> > @@ -3724,8 +3726,9 @@ drm_dp_mst_topology_mgr_invalidate_mstb(struct drm_dp_mst_branch *mstb)
> >  void drm_dp_mst_topology_mgr_suspend(struct drm_dp_mst_topology_mgr *mgr)
> >  {
> >            mutex_lock(&mgr->lock);
> > -          drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> > -                                          DP_MST_EN | DP_UPSTREAM_IS_SRC);
> > +         if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> > +                       drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> > +                                                       DP_MST_EN | DP_UPSTREAM_IS_SRC);
> >            mutex_unlock(&mgr->lock);
> >            flush_work(&mgr->up_req_work);
> >            flush_work(&mgr->work);
> > @@ -3773,10 +3776,11 @@ int drm_dp_mst_topology_mgr_resume(struct drm_dp_mst_topology_mgr *mgr,
> >                           goto out_fail;
> >            }
> >
> > -          ret = drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> > -                                                     DP_MST_EN |
> > -                                                     DP_UP_REQ_EN |
> > -                                                     DP_UPSTREAM_IS_SRC);
> > +         if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> > +                       ret = drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> 
> This did not compile in Chrome dev environemnt due to uninitialized variable ret.
> 
> > +                                                                   DP_MST_EN |
> > +                                                                   DP_UP_REQ_EN |
> > +                                                                   DP_UPSTREAM_IS_SRC);
> >            if (ret < 0) {
> >                           drm_dbg_kms(mgr->dev, "mst write failed - undocked during suspend?\n");
> >                           goto out_fail;
> 
> Tested-by: Charlton Lin <charlton.lin@intel.com>

The mst code does the whole toplogy discovery over sideband,
so if we don't enable that we should not even get a connector
registered. How is anything at all working with this?

-- 
Ville Syrjälä
Intel
