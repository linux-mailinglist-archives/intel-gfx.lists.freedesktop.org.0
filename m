Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A80070F6F0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 14:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ECA310E673;
	Wed, 24 May 2023 12:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAA610E090;
 Wed, 24 May 2023 12:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684932749; x=1716468749;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GkhxPaRCO2y8dRbGWQsSzhu84PVdNgaiuWiLhwdGYl4=;
 b=CUmkJufpJ3LG+aOFYSKH0tEGF6Lk6qq+lw/C96hDH7drCyZlbkRkDSI6
 iowFreoZF/O3MTE59qUVFQzSModLj2ISXGnswJhxE4RE0ELd1CKJ6dctO
 mejumn4iAJ79moUzmrz3a1Hjef6ifO6rrk/nQpQlAdFv7HrmCkIkUpqEE
 sgPk9nwxDvdz0cUIYf7sUHl98mpGAWnB/UlrDJ+dSDhgEWskpeGcSrwBb
 ffiOcufb3piC9CLWfq8iDwwQIwvd0KH7DVBtwU2iIO7+GbF463x3vo1Sg
 AN0vTQZ+wereiqc2f0LaPnxgBhGoEVWYNnf7S4fpEzMV69bBSybiiHbwl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="439908383"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="439908383"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:52:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="848734014"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="848734014"
Received: from bmhacket-mobl.ger.corp.intel.com (HELO [10.213.218.245])
 ([10.213.218.245])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:52:26 -0700
Message-ID: <b0ebd1f8-c3fe-36e7-a448-59dd9f218ce8@linux.intel.com>
Date: Wed, 24 May 2023 13:52:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230519051103.3404990-1-fei.yang@intel.com>
 <ZGx7Quf+ArHnXOR0@ashyti-mobl2.lan>
 <37a0e8fc-efbc-973f-f163-235b9482f21c@linux.intel.com>
 <ZG4Az4fWMsxL5j7w@ashyti-mobl2.lan> <ZG4DaGBAPCcPcmNs@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZG4DaGBAPCcPcmNs@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v10 0/2] drm/i915: Allow user to set cache
 at BO creation
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/05/2023 13:30, Andi Shyti wrote:
> Hi again,
> 
>>>> finally... pushed in drm-intel-gt-next! :)
>>>
>>> I had to revert this (uapi commit only) by force pushing, luckily it was the
>>> top commit.
>>
>> OK, sorry!
>>
>>> 1)
>>> IGT is not merged yet.
>>
>> if igt is merged without the kernel it would fail, though.
> 
> can we at least agree on having igt patches reviewed and merge
> them right after?

Yeah that okay, just make it _right_ after. :)

Regards,

Tvrtko
