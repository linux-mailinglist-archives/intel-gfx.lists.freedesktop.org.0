Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2034B2EF283
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 13:26:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8319A6E81B;
	Fri,  8 Jan 2021 12:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D8E6E81B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 12:26:04 +0000 (UTC)
IronPort-SDR: IruoR0ymuWbaRLR9BbteUhDhoccpYlu55IJsYOWhfPKH/gPjBvAlpCrtKb36jn8faS9gg2RqYk
 cCr9gy0bNLxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="176811389"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="176811389"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 04:26:04 -0800
IronPort-SDR: PQToyoPoqKHbRrobR7cFpnLXlGzH5LgYkKe2/P7LyY4GZTa8fkhpt7TLNZEkOTqytQQbQWrd4a
 nz8oOn7WnsfA==
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="422942695"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 04:26:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200716220551.2730644-5-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200716220551.2730644-1-matthew.d.roper@intel.com>
 <20200716220551.2730644-5-matthew.d.roper@intel.com>
Date: Fri, 08 Jan 2021 14:25:59 +0200
Message-ID: <877donzkbs.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v8 4/5] drm/i915/rkl: Handle HTI
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Jul 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
> @@ -17903,6 +17904,13 @@ int intel_modeset_init(struct drm_i915_private *i915)
>  	if (i915->max_cdclk_freq == 0)
>  		intel_update_max_cdclk(i915);
>  
> +	/*
> +	 * If the platform has HTI, we need to find out whether it has reserved
> +	 * any display resources before we create our display outputs.
> +	 */
> +	if (INTEL_INFO(i915)->display.has_hti)
> +		i915->hti_state = intel_de_read(i915, HDPORT_STATE);
> +

Just stumbled upon this in code.

This is supposed to be a high level modeset init function, and basically
anything doing direct register access here is at a completely wrong
abstraction layer. Please fix.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
