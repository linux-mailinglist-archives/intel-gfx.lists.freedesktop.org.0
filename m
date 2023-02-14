Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C8C69619C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:00:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E58010E18B;
	Tue, 14 Feb 2023 11:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E18EE10E882
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676372441; x=1707908441;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xBZnl2ajVgpfK0u4HyO+uNnegnBxWWjTh9vSK2sicJw=;
 b=FFY2vHfTiv90PouSdqJOXRjY7TXFETFxI6JFrPs81zGvecWThAWGzjZ3
 d/cnpkqeGiJ0YSJs/lX2HDqbF/kshXf/pB7KL7uB0HstnFRMxWlIvsclB
 kKiH2UkkdgWMy42ZSNPeF7FcMIDNC1hU7N7ONiUzJbWV7pP3gXumGqGM1
 yogQcddyk4mUHMyIhTjfqskSvF6MDAqX9770uEQDYoKsIJOhTS/tuuD6c
 BUKX1R5x3CQGWQsZbJF0S1vmBAQj9HQa0JoNgz7zdyvwKAsfVlt4bvXv2
 4sUnpyK3XJW29gy39UnK0a0b40ut6TOcirYxmtW8f5QALr6n4z56Y+Js5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="331131963"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="331131963"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:00:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="671184664"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="671184664"
Received: from ahmedm3x-mobl.ger.corp.intel.com (HELO [10.213.226.130])
 ([10.213.226.130])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:00:40 -0800
Message-ID: <34f2ea0f-5cf3-ef58-2a40-0d1e194147de@linux.intel.com>
Date: Tue, 14 Feb 2023 11:00:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
 <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
 <20230213233654.t6icjq5e2bhxn44k@ldmartin-desk2.lan>
 <Y+tk5zUKbOCVHHGV@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y+tk5zUKbOCVHHGV@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use i915 instead of dev_priv
 as name for the private device
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/02/2023 10:39, Andi Shyti wrote:
> Hi,
> 
> On Mon, Feb 13, 2023 at 03:36:54PM -0800, Lucas De Marchi wrote:
>> On Mon, Feb 13, 2023 at 02:11:26PM +0100, Das, Nirmoy wrote:
>>>
>>> On 2/10/2023 4:03 PM, Andi Shyti wrote:
>>>> It is becoming a strong habit to call the drm_i915_private
>>>> structures "i915", but there are still many left that are called
>>>> dev_priv.
>>>>
>>>> Sometimes this makes grepping a bit challenging and anyway it
>>>> keeps a coherent style.
>>>>
>>>> Rename all the "dev_priv" structures in the gt/* directory to
>>>> "i915".
>>>>
>>>> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
>>>> ---
>>>> Hi,
>>>>
>>>> just checking if we want something similar. I have this same
>>>> replicated patch for the rest of i915 but I want to make sure we
>>>> actually want it.
> 
> Thanks Nirmoy for the review!
> 
>>> I might be lacking historical context here but I assumption is we are
>>> moving towards replacing dev_priv with i915 everywhere.
>>
>> Context: 20230201135329.514677-1-luciano.coelho@intel.com and 87bkml5wv4.fsf@intel.com
> 
> I think I have everything fixed, just didn't have time to format
> patches correctly. So that I decided to take this baby step
> to test the ground first and then move forward in the next couple
> of weeks.
> 
> I don't think this patch that affects only the content of "gt/"
> has any dependency on dev_priv macros so that please let me know
> if anyone has anything against.

No complaints, to the contrary!

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
