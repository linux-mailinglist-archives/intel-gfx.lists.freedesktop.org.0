Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C6862B6E1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 10:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3B210E45C;
	Wed, 16 Nov 2022 09:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1790910E45C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 09:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668592092; x=1700128092;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1kDOBbzBLH1ra1IkESTP+5YGZ/1prgwSjeIHyH2hhfU=;
 b=i+9lIZu+1uTMBJgxGTdj6Kcrw8lpGNHJ0WROlFHqGNlper7f/VLLH4yX
 JSy4lAppoPcV7ERrhmYe2Oz5G2ANj8G+YdmENeGb84bpouCOPKGTKy0RT
 EA9c3zKz1swNAoRGDBDAowfQ5m5DOnbYZTBvnJzTzUfMELRPhVbQ5gpMj
 AiU8UhpRz3H2dAR/FPPiOv8j/7MIqLwE0ELuH0oMa6+9lXfSPmGz3GQaF
 iQ8lBf2mWvj+3E+4Ueso8aNGFo9vaQsYVFTHEwQNwFkcOMNUY5usNiSKK
 lKayfHHDHIU7zPIyci5RaQy10jL/mx0RURHKs6ehN5V97sjo6COUe6Rma g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="292890424"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="292890424"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 01:47:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="968356581"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="968356581"
Received: from lmiley-mobl2.ger.corp.intel.com (HELO [10.252.1.33])
 ([10.252.1.33])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 01:47:55 -0800
Message-ID: <e850681f-a3d3-1f6c-0af7-3ce8ac24deaa@intel.com>
Date: Wed, 16 Nov 2022 09:47:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221019215906.295296-1-andrzej.hajda@intel.com>
 <20221019215906.295296-2-andrzej.hajda@intel.com>
 <bf3d58d5-1c9c-5a88-e0eb-feffdd93d443@intel.com>
 <3e63077f-2f62-7a52-21f7-095d1db5a7b5@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <3e63077f-2f62-7a52-21f7-095d1db5a7b5@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: call
 i915_request_await_object from _i915_vma_move_to_active
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15/11/2022 18:13, Andrzej Hajda wrote:
> On 08.11.2022 11:24, Matthew Auld wrote:
>> On 19/10/2022 22:59, Andrzej Hajda wrote:
>>> Since almost all calls to i915_vma_move_to_active are prepended with
>>> i915_request_await_object, let's call the latter from
>>> _i915_vma_move_to_active by default and add flag allowing bypassing it.
>>> Adjust all callers accordingly.
>>> The patch should not introduce functional changes.
>>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>
>> I thought someone already reviewed this series. Anyway,
>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> 
> Gently ping for merge.

Pushed to gt-next. Thanks.

> 
> Regards
> Andrzej
> 
