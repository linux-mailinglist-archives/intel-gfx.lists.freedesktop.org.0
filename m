Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E99570C46D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 19:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883F510E063;
	Mon, 22 May 2023 17:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D9110E063
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 17:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684776920; x=1716312920;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8qUxh4X3T0H5bPSSgzJuwRze3hkGu1TqvMOKmWid8dQ=;
 b=C76e1NUG8ZrChk7+ZrpTc3b3P9qAl88MIBvjQGbn+9s/DWULhErr2R3I
 gZYfHQcb17EhSdWUFU0Rk/o97H9FpcYA52AYK8H1ZZom95ZpSiwYcBknI
 9cM4zg9YuOtHbnW0TOLLmsy6imO/bvCB27lGezEtPsvIT1dszGsBNQ+ah
 dZeR2cnFhCjZn7GWBavFbB02uXWr7GdUaIdtg6Q+1D9iir0PIZNRcm5nv
 GTN4AC8eRCfY0HKa1+4+duFyZ3Sj95eHICinXwCqHPHQS4rTszbLeerdf
 0KVlsOg/8lnAAX5Vd+QSe4JpIidUolTjvgX1IpcFP0VVvZrN6w0EY0g2c A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="353013954"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="353013954"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 10:35:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="827777052"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="827777052"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.40.98])
 ([10.249.40.98])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 10:35:15 -0700
Message-ID: <ec8fbbf5-be0c-8d68-b4b6-78a2b76c95f9@linux.intel.com>
Date: Mon, 22 May 2023 19:35:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230522124205.368-1-nirmoy.das@intel.com>
 <ZGuCgYSm5Q/s8pzU@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <ZGuCgYSm5Q/s8pzU@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wait for active retire before
 i915_active_fini()
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com,
 andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

On 5/22/2023 4:56 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Mon, May 22, 2023 at 02:42:05PM +0200, Nirmoy Das wrote:
>> i915_active_fini() finalizes the debug object, which can occur before
>> the active retires and deactivates the debug object. Wait for one
>> final time before calling i915_active_fini();
>>
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8311
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> does this need the Fixes: tag?


I can't pinpoint anything with a git blame also this is masked by

https://gitlab.freedesktop.org/drm/intel/-/issues/6733.

>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>


Thanks,

Nirmoy

>
> Andi
