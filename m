Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DFE5F5675
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 16:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE1C10E68C;
	Wed,  5 Oct 2022 14:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6A910E25C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 14:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664980348; x=1696516348;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=uwv4Cb6p7EZ+El0pW/J7SQe29N6B3bGzOi7Hwq9jEDY=;
 b=VpW7RK2RyXrp2a0ZC+/6yi8dWvVLgouqneF6sBzDom0zTCBm16bnsVvF
 Vf60jMz/hR9GmLFuyYTBzy8HbkebD76HD3bl5ZrcwzAg3xAXcl7IESGuQ
 fK/Qp8rq6QxLOUmC0WAvxtO34TaJFMk6ND8M+riIsZm0F6Q8fAiZe1eDb
 URzQlNAK2/Fm9T/Ki7iQabe+6YN2mwv1K2bdRmk9jTZOfcZ7k9kxulCtl
 E//RL/gFrCCk0ZnvqCT7CURpZZ4XK908I8B/VHIFrJ0x6rv84O1F+diAa
 aW4aTsbidMhUYkjTB8tVD4T/2k6c6GDU1nIBiqb5s4rh1LvfBxQQ7zArY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="282887861"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="282887861"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 07:31:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="869418261"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="869418261"
Received: from mgrodzic-mobl.ger.corp.intel.com (HELO [10.249.254.222])
 ([10.249.254.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 07:31:23 -0700
Message-ID: <996639bc-227f-3c93-d65d-344e93a0c43b@linux.intel.com>
Date: Wed, 5 Oct 2022 16:31:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221005121159.340245-1-thomas.hellstrom@linux.intel.com>
 <e9722ab4-31fe-3f2e-a1e6-5df5d1bef623@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <e9722ab4-31fe-3f2e-a1e6-5df5d1bef623@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH RESEND] drm/i915: Fix display problems after
 resume
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


On 10/5/22 15:32, Matthew Auld wrote:
> Hi Thomas,

Thanks for reviewing, Matt.

/Thomas


>
> On 05/10/2022 13:11, Thomas Hellström wrote:
>> Commit 39a2bd34c933 ("drm/i915: Use the vma resource as argument for gtt
>> binding / unbinding") introduced a regression that due to the vma 
>> resource
>> tracking of the binding state, dpt ptes were not correctly repopulated.
>> Fix this by clearing the vma resource state before repopulating.
>> The state will subsequently be restored by the bind_vma operation.
>>
>> Fixes: 39a2bd34c933 ("drm/i915: Use the vma resource as argument for 
>> gtt binding / unbinding")
>> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Link: 
>> https://patchwork.freedesktop.org/patch/msgid/20220912121957.31310-1-thomas.hellstrom@linux.intel.com
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Cc: <stable@vger.kernel.org> # v5.18+
>> Reported-and-tested-by: Kevin Boulain <kevinboulain@gmail.com>
>> Tested-by: David de Sousa <davidesousa@gmail.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
