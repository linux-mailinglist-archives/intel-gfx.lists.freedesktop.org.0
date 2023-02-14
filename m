Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FD0696280
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B8910E899;
	Tue, 14 Feb 2023 11:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8B210E893
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676374358; x=1707910358;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=G7k9LiH2RzCDt4bLSGTFY+WSGhg8twCo3n3FYbpWtqs=;
 b=B42E74kvHoxtJYdbwMKRKwwiShmSa+DOQI1rWE5em16tdDmkPKmr004e
 omBrdxZCMc5YBMFXUtd547NBMxDOxE/d6+JwxEiCzJPZivNtFaAhmW1yj
 nS0Z3cZoUDQBC3UaEx3smdqFz5cpFZ8uRig3Ci+MXsKWXWl0Z2I+O0ebY
 Kg9n0GGECI7qM/oTYB2Xo9ifibdYMSkvuU0c7b1KSg1/Y12mA7JctxMMt
 fYqhl15h8GUyZ4/xiXFt8+sg/Rae1L8rX79bCH86OvjT7WYUlMW/Pws/y
 u2emDvLWsc8WJGe/YDoZieCQJAJj/Upx7+WVpkFA5xTUl6KpCitfj/FsD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417357767"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="417357767"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:32:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="998042918"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="998042918"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.37.28])
 ([10.249.37.28])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:32:28 -0800
Message-ID: <001462f1-acad-9a5f-0351-e37af3563a3a@linux.intel.com>
Date: Tue, 14 Feb 2023 12:32:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
 <17d5dc0d-4bb9-6e13-bac1-8d1e7aad3f17@linux.intel.com>
 <20230213233654.t6icjq5e2bhxn44k@ldmartin-desk2.lan>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230213233654.t6icjq5e2bhxn44k@ldmartin-desk2.lan>
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/14/2023 12:36 AM, Lucas De Marchi wrote:
> On Mon, Feb 13, 2023 at 02:11:26PM +0100, Das, Nirmoy wrote:
>>
>> On 2/10/2023 4:03 PM, Andi Shyti wrote:
>>> It is becoming a strong habit to call the drm_i915_private
>>> structures "i915", but there are still many left that are called
>>> dev_priv.
>>>
>>> Sometimes this makes grepping a bit challenging and anyway it
>>> keeps a coherent style.
>>>
>>> Rename all the "dev_priv" structures in the gt/* directory to
>>> "i915".
>>>
>>> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
>>> ---
>>> Hi,
>>>
>>> just checking if we want something similar. I have this same
>>> replicated patch for the rest of i915 but I want to make sure we
>>> actually want it.
>>
>> I might be lacking historical context here but I assumption is we are 
>> moving towards replacing dev_priv with i915 everywhere.
>
> Context: 20230201135329.514677-1-luciano.coelho@intel.com and 
> 87bkml5wv4.fsf@intel.com


Thanks, Lucas.


> Lucas De Marchi
