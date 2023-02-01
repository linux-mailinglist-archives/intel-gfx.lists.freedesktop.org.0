Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 782AF686EC2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 20:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 237DA10E18F;
	Wed,  1 Feb 2023 19:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA2010E18F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 19:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675279136; x=1706815136;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=l7h2CCILj5hnSZwoLOfeRXnaZMjaNnI/jKAW+PJzBPc=;
 b=ZDPyMz1l9KpwfiW2TUEVX1qO8pl68YPvu0rU6ZQjbWBx20Ypmjj0R4Pl
 PnOLmYV1SyRDOWDUj9bU8l8/a3NbaDX6j/yB3hL8bjOeoZSoTxai2caCO
 VWeGEKf5vhqjI0Bvi0KBUOTxFR/NGy0B4hNH/olWgkAh0smvQyfo8e6v9
 LuycHupR6rL/P6IWcVYA4ugPNOqMXSu3M0U0Cfd8tjW3/3L4I1Vr15TiF
 1J0kYQzERHZQaIKb/5yKA00nzjQuh4V2TWBvyVWf5uSrQJ1qEXGH1aq9M
 3cYQgzwN7QsamMQieoIEIna9DH340v7W5emWvT++gPSnONGHxkF17Kq7B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="414454157"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="414454157"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 11:18:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="773556582"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="773556582"
Received: from disherwo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.241])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 11:18:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mavroudis Chatzilaridis <mavchatz@protonmail.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230201184947.8835-1-mavchatz@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230201184947.8835-1-mavchatz@protonmail.com>
Date: Wed, 01 Feb 2023 21:18:51 +0200
Message-ID: <87v8kl19es.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/quirks: Add inverted backlight
 quirk for HP 14-r206nv
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

On Wed, 01 Feb 2023, Mavroudis Chatzilaridis <mavchatz@protonmail.com> wrote:
> This laptop uses inverted backlight PWM. Thus, without this quirk,
> backlight brightness decreases as the brightness value increases and
> vice versa.
>
> Signed-off-by: Mavroudis Chatzilaridis <mavchatz@protonmail.com>

Thanks for the patch, but this really needs a bug filed at fdo gitlab
with dmesg, VBT, etc. [1]

I don't doubt you, but the fix may need to be different. All the
previous quirks were on ancient GM45, and I was pretty sure the problems
were limited to that platform. I'm hesitant to add the quirk to other
platforms without more info.

Thanks,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs


> ---
>  drivers/gpu/drm/i915/display/intel_quirks.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index 6e48d3bcdfec..a280448df771 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -199,6 +199,8 @@ static struct intel_quirk intel_quirks[] = {
>  	/* ECS Liva Q2 */
>  	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>  	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
> +	/* HP Notebook - 14-r206nv */
> +	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>  };
>
>  void intel_init_quirks(struct drm_i915_private *i915)
> --
> 2.34.1
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
