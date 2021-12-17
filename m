Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203CD47886F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63ABF10EDB7;
	Fri, 17 Dec 2021 10:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980C310EDB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:11:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="263898485"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="263898485"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:11:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="683334031"
Received: from kmcgonig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.8.181])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:11:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217071356.12517-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-3-suraj.kandpal@intel.com>
Date: Fri, 17 Dec 2021 12:11:39 +0200
Message-ID: <87a6gz35ic.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/komeda: change driver to use
 drm_writeback_connector.base pointer
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
Cc: arun.r.murthy@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Dec 2021, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> From: suraj kandpal <suraj.kandpal@intel.com>
>
> Changing driver to use drm_writeback_connector.base pointer

Every commit should build and work on its own, so this makes me believe
the previous patch breaks the build.

Also, why?

You see that (in our clunky object hierarchy implemented in C)
komeda_wb_connector extends drm_writeback_connector which extends
drm_connector. Why do you think we should change that hierarchy?


BR,
Jani.


>
> Signed-off-by: suraj kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/arm/display/komeda/komeda_crtc.c         | 2 +-
>  drivers/gpu/drm/arm/display/komeda/komeda_kms.h          | 3 ++-
>  drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c | 9 +++++----
>  3 files changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> index 59172acb9738..eb37f41c1790 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> @@ -265,7 +265,7 @@ komeda_crtc_do_flush(struct drm_crtc *crtc,
>  	if (slave && has_bit(slave->id, kcrtc_st->affected_pipes))
>  		komeda_pipeline_update(slave, old->state);
>  
> -	conn_st = wb_conn ? wb_conn->base.base.state : NULL;
> +	conn_st = wb_conn ? wb_conn->base.base->state : NULL;
>  	if (conn_st && conn_st->writeback_job)
>  		drm_writeback_queue_job(&wb_conn->base, conn_st);
>  
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
> index 456f3c435719..8d83883a1d99 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
> @@ -53,6 +53,7 @@ struct komeda_plane_state {
>   * struct komeda_wb_connector
>   */
>  struct komeda_wb_connector {
> +	struct drm_connector conn;
>  	/** @base: &drm_writeback_connector */
>  	struct drm_writeback_connector base;
>  
> @@ -136,7 +137,7 @@ struct komeda_kms_dev {
>  static inline bool is_writeback_only(struct drm_crtc_state *st)
>  {
>  	struct komeda_wb_connector *wb_conn = to_kcrtc(st->crtc)->wb_conn;
> -	struct drm_connector *conn = wb_conn ? &wb_conn->base.base : NULL;
> +	struct drm_connector *conn = wb_conn ? wb_conn->base.base : NULL;
>  
>  	return conn && (st->connector_mask == BIT(drm_connector_index(conn)));
>  }
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> index e465cc4879c9..0caaf483276d 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> @@ -51,7 +51,7 @@ komeda_wb_encoder_atomic_check(struct drm_encoder *encoder,
>  		return -EINVAL;
>  	}
>  
> -	wb_layer = to_kconn(to_wb_conn(conn_st->connector))->wb_layer;
> +	wb_layer = to_kconn(drm_connector_to_writeback(conn_st->connector))->wb_layer;
>  
>  	/*
>  	 * No need for a full modested when the only connector changed is the
> @@ -123,7 +123,7 @@ komeda_wb_connector_fill_modes(struct drm_connector *connector,
>  static void komeda_wb_connector_destroy(struct drm_connector *connector)
>  {
>  	drm_connector_cleanup(connector);
> -	kfree(to_kconn(to_wb_conn(connector)));
> +	kfree(to_kconn(drm_connector_to_writeback(connector)));
>  }
>  
>  static const struct drm_connector_funcs komeda_wb_connector_funcs = {
> @@ -155,6 +155,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>  	kwb_conn->wb_layer = kcrtc->master->wb_layer;
>  
>  	wb_conn = &kwb_conn->base;
> +	wb_conn->base = &kwb_conn->conn;
>  	wb_conn->encoder.possible_crtcs = BIT(drm_crtc_index(&kcrtc->base));
>  
>  	formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
> @@ -171,9 +172,9 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>  		return err;
>  	}
>  
> -	drm_connector_helper_add(&wb_conn->base, &komeda_wb_conn_helper_funcs);
> +	drm_connector_helper_add(wb_conn->base, &komeda_wb_conn_helper_funcs);
>  
> -	info = &kwb_conn->base.base.display_info;
> +	info = &kwb_conn->base.base->display_info;
>  	info->bpc = __fls(kcrtc->master->improc->supported_color_depths);
>  	info->color_formats = kcrtc->master->improc->supported_color_formats;

-- 
Jani Nikula, Intel Open Source Graphics Center
