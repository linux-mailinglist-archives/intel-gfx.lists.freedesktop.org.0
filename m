Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MI4QDoz94Wn50AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:29:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B9B419420
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 11:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D231410E049;
	Fri, 17 Apr 2026 09:29:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6rMatQf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899FD10E049;
 Fri, 17 Apr 2026 09:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776418180; x=1807954180;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qC+sy+TbfVbQqd4P/J3aO52mIqEN7Qgp8Zj1bnODJ7s=;
 b=N6rMatQf/PvMx6vKH0COBbfIzfuFf7t7mLuzDe8A/s193uYQU47N5ayO
 9MzGZxklmSlv4fp78JzpnqT3Loc9ozLQzIbOmt5gAofyB1a2f0rKkjL1y
 jA0N0jgb/2L6ffECN5gdXxQoKuiq5S2AtTn/oG4GrLFVi4e8U/sQX02oE
 SeynLInc7ZL191XZWFWt9jXtSlzjtKSmCiqg/Zp0FZ3O8pj2MP9uc2b6J
 dzoL8TSv8vRwrifaRVBqY2HeSsx3xgUtllVjrXAr3J+iaPmwCqY4jq0q6
 4ToLoMQW0J1XDsVmhuFFjtQP81qm+ubp7DZsx4UN75swFHE7Gyv0U0sIR A==;
X-CSE-ConnectionGUID: iU49nPUtQ4it3BRCLjLdNA==
X-CSE-MsgGUID: TsdOACBfS9qc4PgnCgd6HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77550734"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="77550734"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 02:29:39 -0700
X-CSE-ConnectionGUID: 5lmnra43SHGoKNY16mjc4g==
X-CSE-MsgGUID: gcHNK5CaSOWz7P7ldgMCWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="229980212"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa006.jf.intel.com with ESMTP; 17 Apr 2026 02:29:29 -0700
Received: by black.igk.intel.com (Postfix, from userid 1008)
 id B928F95; Fri, 17 Apr 2026 11:29:27 +0200 (CEST)
Date: Fri, 17 Apr 2026 12:29:26 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
Subject: Re: [PATCH 6/6] usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ
 events
Message-ID: <aeH9dpLv-ZVTfhty@kuha>
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
 <20260416-hpd-irq-events-v1-6-1ab1f1cfb2b2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260416-hpd-irq-events-v1-6-1ab1f1cfb2b2@oss.qualcomm.com>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[heikki.krogerus@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:email,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: B8B9B419420
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Apr 16, 2026 at 02:22:37AM +0300, Dmitry Baryshkov kirjoitti:
> Pass IRQ_HPD events to the HPD bridge, letting those to be delivered to
> the DisplayPort driver.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c b/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c
> index ca749fde49bd..328ba92e1b44 100644
> --- a/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c
> +++ b/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c
> @@ -299,10 +299,11 @@ static void gaokun_ucsi_handle_altmode(struct gaokun_ucsi_port *port)
>  
>  	/* UCSI callback .connector_status() have set orientation */
>  	if (port->bridge)
> -		drm_aux_hpd_bridge_notify(&port->bridge->dev,
> -					  port->hpd_state ?
> -					  connector_status_connected :
> -					  connector_status_disconnected);
> +		drm_aux_hpd_bridge_notify_with_irq(&port->bridge->dev,
> +						   port->hpd_state ?
> +						   connector_status_connected :
> +						   connector_status_disconnected,
> +						   port->hpd_irq);
>  
>  	gaokun_ec_ucsi_pan_ack(uec->ec, port->idx);
>  }
> 
> -- 
> 2.47.3

-- 
heikki
