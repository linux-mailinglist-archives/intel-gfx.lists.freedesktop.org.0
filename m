Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D4D722A4F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 17:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C64510E2E2;
	Mon,  5 Jun 2023 15:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11BBA10E2D3
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 15:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685977722; x=1717513722;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YI0uNZHnX7IneKAB56Uuy/kbLmsdDoZN80G0Qkh9GKc=;
 b=bVVOnACxLbZNGFcu8bCnIxeALS6JqMhjIycT5DVB40avPtoIX8mNKnag
 VYm3PLFPgg0SSsb0FnanmHd2MEL5hLnbKLbluASEKnfCLzqfVJ5m91D5z
 UZgkbarRihebHyEzVx/WiVaq5tdIrorsqjq5/pcORcyWVdYHgGpM+YwC+
 eFXlhRFa5K3IwWXfl6JUw3hV4mlpE6SkHjcQnUwjIJ2j7qemmyorECa1S
 frfEK8ULEzl0sp0IHYIKxpbyYlxSyAay+NVV2H1XlCX44YHzNsST+/XVE
 JgqybPB4pwGCa/SXmShxhnZpWPZBLQ0Mo7Eoud9DUy8wtDtCbPffFWpeq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336745695"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="336745695"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="853002183"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="853002183"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.122])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:06:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530111534.871403-1-luciano.coelho@intel.com>
 <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
Date: Mon, 05 Jun 2023 18:06:25 +0300
Message-ID: <87r0qqaqz2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 31 May 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> #### Possible regressions ####
>
>   * igt@gem_close_race@basic-process:
>     - fi-blb-e6850:       [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-blb-e6850/igt@gem_close_race@basic-process.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-blb-e6850/igt@gem_close_race@basic-process.html
>     - fi-hsw-4770:        [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-hsw-4770/igt@gem_close_race@basic-process.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-hsw-4770/igt@gem_close_race@basic-process.html
>     - fi-elk-e7500:       [PASS][5] -> [ABORT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-elk-e7500/igt@gem_close_race@basic-process.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-elk-e7500/igt@gem_close_race@basic-process.html
>
>   * igt@i915_selftest@live@evict:
>     - bat-adlp-9:         [PASS][7] -> [ABORT][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlp-9/igt@i915_selftest@live@evict.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlp-9/igt@i915_selftest@live@evict.html
>     - bat-rpls-2:         [PASS][9] -> [ABORT][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-2/igt@i915_selftest@live@evict.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-2/igt@i915_selftest@live@evict.html
>     - bat-adlm-1:         [PASS][11] -> [ABORT][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlm-1/igt@i915_selftest@live@evict.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlm-1/igt@i915_selftest@live@evict.html
>     - bat-rpls-1:         [PASS][13] -> [ABORT][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-1/igt@i915_selftest@live@evict.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-1/igt@i915_selftest@live@evict.html

This still fails consistently, I have no clue why, and the above aren't
even remotely related to display.

What now? Tvrtko?

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
