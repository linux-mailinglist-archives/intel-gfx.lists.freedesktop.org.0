Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C48E63B447
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 22:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C124810E33D;
	Mon, 28 Nov 2022 21:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7B910E33D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 21:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669671328; x=1701207328;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=UrrHI+L8xZYE+OhZkiD3IAMpJCRJm0Iw6ptBsDv4XtQ=;
 b=JqLu79R3cziVuTHS6I7koR8E41XIJ2fs5TwjsR9E6AuIgtEX/v3UkBjZ
 zcbybDF41YR507f5BBWPGbC8/MV6dLw3eYAe7EowruFQXs6iLEpWgn1Km
 JDu6/tkEOdTBYFd6Wj4m15PrjjcuYqQj9NsPWSbWsz+gUUVVz+m8q0LEk
 arS37Ql7ue1096bhUmwSqSuN5moz/6iumrpfn/MgpFx6rdxMb7lEt4Zyw
 KkiCPymeYMHCvmQQJkdt9xYHzCP6dFHN3t1kyhSGtZXTRCn4u08ONnE0U
 xxQJLQQZ53ThEd8pNsUtrwiQK9awKFYWZg8vjdvwFge7KKiNVdZ8X/5BI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="341867860"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="341867860"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:35:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972427190"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="972427190"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.1.165])
 ([10.213.1.165])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:35:27 -0800
Message-ID: <8e342bd4-0163-09b2-4a09-5462676f6f6f@intel.com>
Date: Mon, 28 Nov 2022 22:35:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221123164916.4128733-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221123164916.4128733-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: remove some limited use
 register access wrappers
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

On 23.11.2022 17:49, Jani Nikula wrote:
> Remove rmw_set(), rmw_clear(), clear_register(), rmw_set_fw(), and
> rmw_clear_fw(). They're just one too many levels of abstraction for
> register access, for very specific purposes.
> 
> clear_register() seems like a micro-optimization bypassing the write
> when the register is already clear, but that trick has ceased to work
> since commit 06b975d58fd6 ("drm/i915: make intel_uncore_rmw() write
> unconditionally"). Just clear the register in the most obvious way.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

