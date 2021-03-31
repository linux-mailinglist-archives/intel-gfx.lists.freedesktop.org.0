Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C03350907
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Mar 2021 23:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E44F6E245;
	Wed, 31 Mar 2021 21:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77DCD6E245
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Mar 2021 21:26:37 +0000 (UTC)
IronPort-SDR: 2yR+hVQZ3tFFEnKKaKCb1EDAhjjL4fSgJjHHJhLTPYkZNcLNpqUbYo3i1U47y6g92BWY0+7352
 wOQLrjeLd82g==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="191574001"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="191574001"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:36 -0700
IronPort-SDR: V4XPS/78Tm5Zf4eA4GTiNEJ9rn2UC+UqJZdlqypv7y/lnZqOqBgC4wBg5+Xx2LocrtDJwDaqxN
 Fr+urdHcGjGQ==
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="416401834"
Received: from dcpanzie-mobl.amr.corp.intel.com (HELO [10.255.228.74])
 ([10.255.228.74])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:36 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210203091029.2089-1-anandx.ram.moon@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <b924932b-35cc-ddeb-19cd-b267eb637304@intel.com>
Date: Wed, 31 Mar 2021 14:26:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210203091029.2089-1-anandx.ram.moon@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_s: ADL-S platform Update PCI
 ids for Mobile BGA
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

On 2/3/21 1:10 AM, Anand Moon wrote:
> As per Bspec: 53655 Update PCI ids for Mobile BGA.
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Anand Moon <anandx.ram.moon@intel.com>

Reviewed-by: Aditya Swarup <aditya.swarup@intel.com>

> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index ebd0dd1c35b3..3be25768321d 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -640,6 +640,8 @@
>  	INTEL_VGA_DEVICE(0x4681, info), \
>  	INTEL_VGA_DEVICE(0x4682, info), \
>  	INTEL_VGA_DEVICE(0x4683, info), \
> +	INTEL_VGA_DEVICE(0x4688, info), \
> +	INTEL_VGA_DEVICE(0x4689, info), \
>  	INTEL_VGA_DEVICE(0x4690, info), \
>  	INTEL_VGA_DEVICE(0x4691, info), \
>  	INTEL_VGA_DEVICE(0x4692, info), \
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
