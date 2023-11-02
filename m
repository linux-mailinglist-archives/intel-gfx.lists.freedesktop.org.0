Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1557DF82E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 17:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9744F10E936;
	Thu,  2 Nov 2023 16:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499E710E949
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 16:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698944334; x=1730480334;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=X7xaOaKsER4RHdJPl2qR3Iscp0BV+gfYMbNcL+1TF3Q=;
 b=DXtR6YdwKnQBDE9qClLFvWy+Lq4sJ5bzieBmhPWaFV9OUuJDrYWGBQaa
 NltytTR6qFR7sGEe2vQfOZkl0JNDEqAhvyXZ27sRnNyvD/ZmPOfmZG2X3
 uBM4aNkJE7SHPf822MeAlpMES3zhPbSh08d4SfxoGqsdiVoqwoLBQziLE
 ZR/A7fKV1a+Sj//DgfNKpJWZ0TQ47PHletgoxji/FTttOaMB8i/5PCT57
 k2rceEAp4i0me/7jgH7J1dG5dFSuiWlduYMeKIB5ixuPNPlbPPwaX2hd5
 mqZquN2KvOuhRRd8MNwHcGeLK4YFhq28PywxQRUHCXBtKibl72rRTWb1e A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="419868888"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="419868888"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1092774611"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="1092774611"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.224])
 ([10.213.6.224])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:58:42 -0700
Message-ID: <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
Date: Thu, 2 Nov 2023 17:58:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02.11.2023 17:06, Radhakrishna Sripada wrote:
> Experiments were conducted with different multipliers to VTD_GUARD macro
> with multiplier of 185 we were observing occasional pipe faults when
> running kms_cursor_legacy --run-subtest single-bo
> 
> There could possibly be an underlying issue that is being investigated, for
> now bump the guard pages for MTL.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 3770828f2eaf..b65f84c6bb3f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
>   	if (intel_scanout_needs_vtd_wa(i915)) {
>   		unsigned int guard = VTD_GUARD;
>   
> +		if (IS_METEORLAKE(i915))
> +			guard *= 200;
> +

200 * VTD_GUARD = 200 * 168 * 4K = 131MB

Looks insanely high, 131MB for padding, if this is before and after it 
becomes even 262MB of wasted address per plane. Just signalling, I do 
not know if this actually hurts.

Regards
Andrzej



>   		if (i915_gem_object_is_tiled(obj))
>   			guard = max(guard,
>   				    i915_gem_object_get_tile_row_size(obj));

