Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A623735926
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 16:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37DC10E207;
	Mon, 19 Jun 2023 14:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5252D10E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 14:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687183682; x=1718719682;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Z7JmNa7DLBrcbACOjFLzyo65LFtQS2huhGOQYnvrURI=;
 b=JMvqhb2CkbgZIiwn7H/kwgeKKCdQWrFJvweK1HVUYSWqYVUqbLo5gSEp
 PfE1lgXwcLd9RORwvynaxBl76oXMUizQF7Fdyax0VHuBwrelwCGhOus40
 rNAW/EZAYamIHMaEaOzQWdEeGmA6s4gsq4WDHLBUET/wU7w7nezJga3b4
 hOvC3Xa7lOnBKVX9izV2B4nkrbsyVPN0NLb8R9lszQNAI7IW3b3u/gwFE
 EI/1++p25QApYn64QjXNhJnmHOjiGNePZCCik631IW7ePKnqZ65aRwhhy
 6Sw5/RZ+ezGJ31FNjB845HFnt0VpUfiddwlM7NItLv72kYBzgdeoeq2hF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="339979213"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339979213"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 07:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="826590563"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="826590563"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.45.73])
 ([10.249.45.73])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 07:06:24 -0700
Message-ID: <d8764556-b4d2-6896-9699-25abfe444f69@linux.intel.com>
Date: Mon, 19 Jun 2023 16:06:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <ZH7tHLRZ9oBjedjN@moroto> <ZH760GjGM+7XdTa5@ashyti-mobl2.lan>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZH760GjGM+7XdTa5@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a NULL vs IS_ERR() bug
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
Cc: David Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Suren Baghdasaryan <surenb@google.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pushed to gt-next.


Thanks,

Nirmoy

On 6/6/2023 11:22 AM, Andi Shyti wrote:
> Hi Dan,
>
> On Tue, Jun 06, 2023 at 11:23:56AM +0300, Dan Carpenter wrote:
>> The mmap_offset_attach() function returns error pointers, it doesn't
>> return NULL.
>>
>> Fixes: eaee1c085863 ("drm/i915: Add a function to mmap framebuffer obj")
>> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> Thanks for this series of fixes!
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Andi
