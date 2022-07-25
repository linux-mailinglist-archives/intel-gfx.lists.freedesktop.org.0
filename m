Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02C057FEB2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 14:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3811A2999;
	Mon, 25 Jul 2022 12:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E749A298A;
 Mon, 25 Jul 2022 12:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658750534; x=1690286534;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=lk+PADlyXADZ7SKXVUpertNGldyrF+vTAs6tch4NldI=;
 b=DQkAbNvu6ZT/xF3k2JrHq7CYn7b9Je1ofz6OjM+SBOCawGMjGXEXzLDv
 9MuLNot1IiWrYN4A3N6qlyOZhevcMDLXMeRkCX46MUOQkubvQxUsZP+XR
 I5wXZVB5w/i+zXAIhgMUDSIPvp+bZWoPgn9ikZP0UgHKu52jXAd+yC/Vd
 aXiYo7rMQIJalDQbxByhwdCxybFFEM6rGBNsgYymbpWxHFi0RSLQDHj9r
 62qgihGT9yx5S6Zf4psFUV18UAXata/J6CBWS4Tjv31gpL1VIlwINZa81
 kiWYHbOpH050ypReBrVGyrFk8o9Wooq+yCfepneJvgVqFgRAkN8CYcSqr Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="274544702"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="274544702"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 05:02:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="632333571"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.13.24])
 ([10.213.13.24])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 05:02:08 -0700
Message-ID: <4da1e879-319f-2ef3-253d-30492abd5d7a@intel.com>
Date: Mon, 25 Jul 2022 14:02:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220725092528.1281487-1-gwan-gyeong.mun@intel.com>
 <20220725092528.1281487-8-gwan-gyeong.mun@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220725092528.1281487-8-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 7/7] drm/i915: Remove truncation warning
 for large objects
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk, airlied@linux.ie,
 matthew.auld@intel.com, mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25.07.2022 11:25, Gwan-gyeong Mun wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Having addressed the issues surrounding incorrect types for local
> variables and potential integer truncation in using the scatterlist API,
> we have closed all the loop holes we had previously identified with
> dangerously large object creation. As such, we can eliminate the warning
> put in place to remind us to complete the review.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Brian Welty <brian.welty@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Testcase: igt@gem_create@create-massive
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4991
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

