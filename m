Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8A672619E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 15:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C797E10E076;
	Wed,  7 Jun 2023 13:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA1610E058;
 Wed,  7 Jun 2023 13:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686145665; x=1717681665;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=dGeakojngM8DszV+JyKnRZHAnJlD6uQUpKPdq3hIygY=;
 b=nUQ5Ind0phXPdyPy8bfAmGsjzuVkiglK4iTMbhLcYOfrAScapeHPXT9v
 DPM8XHpCl4jotwEo+WlG83vaICUJUIZHdTUsHyqvcGESJNLX41uyaXlg2
 zqbxfmoEFhp1oZ8hEDxJweyQJXVrLCL8W1dRLNuZkyAlX+68eUYCZjdEG
 vbDIr1C9fovPmNDQmqO59cSs3j0PtGON/dZhv843UK3u0zKIbuFrLhY+A
 l+TtMFdgkOE21SijmRxSSzCtFmIDdie1lcyOPyaBr/ewXA0yH+KPni4Dh
 xgBJsxBQWRRjEADmGaoFH0Ub7j+wUtKei0AX1E+aNzX7HgUdyfN+F9SF+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="359459923"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="359459923"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 06:47:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="833719340"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="833719340"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.20.254])
 ([10.213.20.254])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 06:47:42 -0700
Message-ID: <34309cb8-d6e5-7842-52ad-369960440fb6@intel.com>
Date: Wed, 7 Jun 2023 15:47:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
Content-Language: en-US
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20230606221418.296888-1-vinay.belgaumkar@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230606221418.296888-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/gem_ctx_persistence: Skip hang
 subtest with GuC
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

On 07.06.2023 00:14, Vinay Belgaumkar wrote:
> Hang subtest is not supported with GuC submission enabled >
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Maybe providing more specific explanation would be better. Sth like:
GuC does not support dynamically configurable options, particularly
hangcheck disabling/enabling.

This is at least what I understood from internal bug tracker.
I wonder if it shouldn't be done also on driver level.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   tests/i915/gem_ctx_persistence.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index df9b1c491..d2558354e 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -577,6 +577,8 @@ static void test_nohangcheck_hang(int i915, const intel_ctx_cfg_t *cfg)
>   	int testable_engines = 0;
>   	int dir;
>   
> +	igt_require(!gem_using_guc_submission(i915));
> +
>   	cleanup(i915);
>   
>   	/*

