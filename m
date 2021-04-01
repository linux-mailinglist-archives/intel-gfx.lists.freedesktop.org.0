Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71207351533
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 15:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34CD6ECB0;
	Thu,  1 Apr 2021 13:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A6EA6ECB0;
 Thu,  1 Apr 2021 13:31:29 +0000 (UTC)
IronPort-SDR: 5hxlm0ERz18lzngg6fT/IkiycJ1YVYCER5gossB56vNWOv5i1BRvTOCxiZsZB4uyrzIIyxnzQ2
 Uwb+mCL4282A==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="212498821"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="212498821"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 06:31:27 -0700
IronPort-SDR: 5tvB92jiRMGNLabXybckCSLFFBmaAQU7vUD+qPiiyyb+IZu2wKXYLWG2p2afaEIA03ZnIMWo2v
 zWr4SP+SYDZg==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419204532"
Received: from shergane-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.188])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 06:31:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210326203807.105754-6-lyude@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210326203807.105754-1-lyude@redhat.com>
 <20210326203807.105754-6-lyude@redhat.com>
Date: Thu, 01 Apr 2021 16:31:05 +0300
Message-ID: <87eefum8rq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/20] drm/dp: Add backpointer to
 drm_device in drm_dp_aux
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
 Oleg Vasilev <oleg.vasilev@intel.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 "Jerry \(Fangzhi\) Zuo" <Jerry.Zuo@amd.com>,
 Luben Tuikov <luben.tuikov@amd.com>, Ben Skeggs <bskeggs@redhat.com>,
 Swapnil Jakhade <sjakhade@cadence.com>,
 Harry Wentland <harry.wentland@amd.com>, "moderated list:ARM/ZYNQ
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Joe Perches <joe@perches.com>, Yuti Amonkar <yamonkar@cadence.com>,
 Jyri Sarha <jsarha@ti.com>, "open list:DRM DRIVERS FOR NVIDIA
 TEGRA" <linux-tegra@vger.kernel.org>, Mikita Lipski <mikita.lipski@amd.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Chris Park <Chris.Park@amd.com>,
 Eryk Brol <eryk.brol@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>, Robert Foss <robert.foss@linaro.org>,
 Julia Lawall <Julia.Lawall@inria.fr>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Andy Yan <andy.yan@rock-chips.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Christian =?utf-8?Q?K=C3=B6n?= =?utf-8?Q?ig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 26 Mar 2021, Lyude Paul <lyude@redhat.com> wrote:
>   * The @dev field should be set to a pointer to the device that implements the
> - * AUX channel.
> + * AUX channel. As well, the @drm_dev field should be set to the &drm_device
> + * that will be using this AUX channel as early as possible. For many graphics
> + * drivers this should happen before drm_dp_aux_init(), however it's perfectly
> + * fine to set this field later so long as it's assigned before calling
> + * drm_dp_aux_register().

Perhaps add a follow-up patch to actually ensure this is the case in
drm_dp_aux_register()?

>   *
>   * The @name field may be used to specify the name of the I2C adapter. If set to
>   * %NULL, dev_name() of @dev will be used.
> @@ -1877,6 +1883,7 @@ struct drm_dp_aux {
>  	const char *name;
>  	struct i2c_adapter ddc;
>  	struct device *dev;
> +	struct drm_device *drm_dev;

Bikeshed, I would probably have called it just drm for brevity, but no
strong feelings.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
