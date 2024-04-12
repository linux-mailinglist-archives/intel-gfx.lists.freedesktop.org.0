Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A848A28D1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 10:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D4E10F3A6;
	Fri, 12 Apr 2024 08:06:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+5LPpiu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED9510F3A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 08:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712909179; x=1744445179;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tntzJIBP9iuEha4eZv9uAIcdMSVY9lhTMxDHp6Kmb+A=;
 b=m+5LPpiusIFzxxMv0PA9/lXDiEFG3VQbLfwhPDU6xFZJbvLKmq0h9HdM
 pP7Nul1ktFgjZ70mh2lcN4SCA/kfKYcCXXI11RkeGXiozvyO467qcWBIn
 iqS9cOcop7lcxXx4IOoY+L6E3bDKKqNJC+lMlEZEqNnKlCoIqaLU94U6S
 HAx8BNfl6lwsnL/SwNzeDhPXQDl5gexNpORgdpj51v/8YvzsNzs4uhSSS
 rIQ6Mu2HboNTCwsbb8ZmIAsKqO2v+NAG63lO3N9q/1EPRu8YGF0PUGcAW
 V1pxtjGXTFmEz/OCQheIZ16Gg0JuGizKEm9l8fLyI/h6rcfduVW3SzAtx A==;
X-CSE-ConnectionGUID: 8cmcZ0DVRGawzeuDWUvIBA==
X-CSE-MsgGUID: 8GTcK513RjCTvoeY1twMUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8464301"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; 
   d="scan'208";a="8464301"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 01:06:19 -0700
X-CSE-ConnectionGUID: ZB5H8qYjT1GjBvzXKyP+IA==
X-CSE-MsgGUID: 5bXEgy/+QbiH9sKboLgEhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="52136457"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 01:06:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.IGT: failure for drm/edid &
 drm/i915: vendor and product id logging improvements (rev3)
In-Reply-To: <171286159857.1341683.3160591903841939436@8e613ede5ea5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712655867.git.jani.nikula@intel.com>
 <171286159857.1341683.3160591903841939436@8e613ede5ea5>
Date: Fri, 12 Apr 2024 11:06:09 +0300
Message-ID: <87sezr3szy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 11 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/edid & drm/i915: vendor and product id logging improvements (rev3)
> URL   : https://patchwork.freedesktop.org/series/131414/
> State : failure

[snip]

> #### Possible regressions ####
>
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
>
>   * igt@kms_plane@pixel-format@pipe-a:
>     - shard-tglu:         [PASS][2] -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/shard-tglu-8/igt@kms_plane@pixel-format@pipe-a.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-tglu-3/igt@kms_plane@pixel-format@pipe-a.html
>     - shard-mtlp:         [PASS][4] -> [ABORT][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/shard-mtlp-1/igt@kms_plane@pixel-format@pipe-a.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-mtlp-3/igt@kms_plane@pixel-format@pipe-a.html

I don't see how this could be an issue with this patch, but it looks
serious:

<7> [451.620816] [drm:eb_lookup_vmas [i915]] EINVAL at eb_validate_vma:510
<4> [451.624224] ------------[ cut here ]------------
<4> [451.624309] list_del corruption. prev->next should be ffff88810afbf3d0, but was ffff88810afbb410. (prev=ffff88810afbb410)
<4> [451.624332] WARNING: CPU: 1 PID: 1374 at lib/list_debug.c:62 __list_del_entry_valid_or_report+0xb7/0xe0

etc.

BR,
Jani.

>
>   * igt@kms_sequence@queue-busy@pipe-c-hdmi-a-2:
>     - shard-glk:          [PASS][6] -> [INCOMPLETE][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/shard-glk5/igt@kms_sequence@queue-busy@pipe-c-hdmi-a-2.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/shard-glk4/igt@kms_sequence@queue-busy@pipe-c-hdmi-a-2.html

-- 
Jani Nikula, Intel
