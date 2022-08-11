Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B85E58FFE5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDC3B447D;
	Thu, 11 Aug 2022 15:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA46B4482
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660232139; x=1691768139;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aYUmHUDyb+N2Y/qc7OXoLcaWynZbfR0amm1G3y6A2GQ=;
 b=FFQmcd1L3i+XqZ0b8pTiYB3IfncPDQSmmF7167uAJDhC0g/EII/lHmH+
 XXNmTlBRu3+lR3ZJABVhpLuFmQxQTPV6AjsqkP6gl01atMygZYbKUJ51H
 R4XiVyTvmCBH5U4AAXRe9yGuUMbrncbH5s2usSvRODePvdysk3mGw6Cei
 Bi1jEx1x6e3f1ShO6FmPKI4BBG7Emxr1vzDoUbHox5ye1RFt7meAK06Lo
 X7mw+zYiqVDXznL69Wl1xFZMU8/2MeakdlE88Dwgdi3EYFifQQjxOBwzY
 TqJBh2ngKv/wkK7rNI1+8xbOF49Av7TxnToz7gztcH6M+k8Dev8tTZjSp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377671169"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="377671169"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:35:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="665427237"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:35:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tapas Rana <tapas.rana@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220811131101.4169258-1-tapas.rana@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220811131101.4169258-1-tapas.rana@intel.com>
Date: Thu, 11 Aug 2022 18:35:34 +0300
Message-ID: <87leruu721.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] Fixes KW issue for NULL pointer dereference
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
Cc: Tapas Rana <tapas.rana@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


The subject needs a prefix. For example "i915/drm:" or something more
specific, see git log.

Please use the imperative mood in the subject and commit message,
i.e. "fix" instead of "fixes" or "fixed".

On Thu, 11 Aug 2022, Tapas Rana <tapas.rana@intel.com> wrote:
> - adds a NULL pointer check for the input parameter

Please write proper sentences. It's not a bulleted list.

This patch seems to be a v2 of an earlier patch. It's customary to add a
change history of the patch. Also, use --subject-prefix or -v<N>
parameter to add the version in the subject like "[PATCH v2]". See
patches on the list.

>
> Signed-off-by: Tapas Rana <tapas.rana@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 9a7e50534b84..de7c892aabc5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -435,6 +435,9 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
>  static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
>  				    struct ttm_resource *dst_mem)
>  {
> +	if (!bo)
> +		return false;
> +	

Finally, AFAICT it's not possible to reach here with NULL bo; it
would've been referenced before...

BR,
Jani.

>  	if (i915_gem_object_needs_ccs_pages(i915_ttm_to_gem(bo)))
>  		return false;

-- 
Jani Nikula, Intel Open Source Graphics Center
