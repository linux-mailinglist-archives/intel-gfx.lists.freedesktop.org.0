Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540614E70AE
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 11:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A5710EA8C;
	Fri, 25 Mar 2022 10:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B56E210EA8C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 10:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648202964; x=1679738964;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=DQ0MQ4fV5H+a9Y0SKvAWt7KoDUi07cc1daPtM7uRg1g=;
 b=Ke5X3jOhjHm3aJU5Uf3pGTuV05UG75PnYFh2v1dCg9KpmkVrG7ZEb7Bn
 0MGgFd0tVn1m1TMsB0gVBR2TdRO4LbKZ+xawp4JVSUlqFILeW/re7kM42
 8G86pROwO0lakE15oj/q0x8IchB8N3ERC/owfh1qCoP5gtXbn5L7QgfcM
 iQ4MialH4efBrza6U+N+1m16smPQG6dNiKjPQrEGTZfi8tbcdPnTSg94I
 AKoMI+LTMqETecz4NCoa0ZiVBAVTljEcCdzp0s+WHrbuhe6n2UEAAQb3S
 3iS5ygTgzNxpIomW36Tu77Y5ZXlbmvfgem7pjQs6UO2jYjk3HDPmzN3rJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="246077804"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="246077804"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:09:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561776379"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.27])
 ([10.252.61.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 03:09:23 -0700
Message-ID: <e443badc-dce9-4fc7-b161-397c582039f5@linux.intel.com>
Date: Fri, 25 Mar 2022 11:09:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220324172143.377104-1-matthew.auld@intel.com>
 <84deb237-3d0b-0c0e-21c8-25df59b9fc71@linux.intel.com>
 <57b94aee-49c9-9847-cf5f-75c5fdfa45be@linux.intel.com>
 <06101a66-ed7a-5e1e-e4a2-cfe5155c501d@linux.intel.com>
 <5c33e2f1-1f1c-52c7-542a-dc8dbb9e4a06@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <5c33e2f1-1f1c-52c7-542a-dc8dbb9e4a06@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ttm: limit where we apply
 TTM_PL_FLAG_CONTIGUOUS
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
Cc: Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/25/2022 11:06 AM, Das, Nirmoy wrote:
>
> On 3/25/2022 11:05 AM, Das, Nirmoy wrote:
>>
>> On 3/25/2022 11:03 AM, Das, Nirmoy wrote:
>>> Reviewed-by: Nirmoy Das <nirmoy.das@amd.com>
>> Sorry, I meant this r-b for the  2nd patch and for this one Acked-by: 
>> Nirmoy Das <nirmoy.das@amd.com>
> hmm old habit, please use : Acked-by: Nirmoy Das <nirmoy.das@intel.com>
Same for patch 1 Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>.  I need 
to some more coffee.
