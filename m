Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADCB7EE0C1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 13:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2572310E28E;
	Thu, 16 Nov 2023 12:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D9310E28E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700138093; x=1731674093;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=I3V7DAiOILzPpeWACSblnfRzcuUJhe9/Y1mnzClXMVk=;
 b=AdpfxB7YzIEB499S3+vAQA3L+HmekqMssoXmRcWYzh805f3t1X5zarP0
 Hz+J6IjSAUau99ZibaLT3qWDfgVl2kAWnicBvpGPk2HVR+ToZliBS6BUb
 U/O/mn8RIwiQ8noQcqu3J58xB6ii53h8YlaCByBbef5aGj/qWmdat9icj
 Iv9UPknyAyhdaI7waIUhcSZIyMwNTRH8poJNeSddsxPiwvJXgRPzAjKw6
 Ikngo9BrEMQQcYZ7xUiXCyzaEkhMWEWjdIvOTkYk/tRziAgT7JyncWqT/
 M2ws5x82FxLLIaPiBirnH14mPHCeKmCfIYT9E24xoVKpPGcV+ySGGWTJI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="370437157"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="370437157"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 04:34:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="1096772309"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="1096772309"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.205])
 ([10.213.28.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 04:34:50 -0800
Message-ID: <ee244be3-93b1-400b-9a44-8f286afbe59b@intel.com>
Date: Thu, 16 Nov 2023 13:34:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20231115-eols-v1-1-d47a2f52b807@intel.com>
 <ZVYA5qOYQu39oPo-@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ZVYA5qOYQu39oPo-@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: add missing new-line to
 GT_TRACE
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 16.11.2023 12:45, Andi Shyti wrote:
> Hi Andrzej,
>
> On Wed, Nov 15, 2023 at 01:10:33PM +0100, Andrzej Hajda wrote:
>> Trace requires new-line at the end of message (in opposition to printk),
>> otherwise trace dump becomes messy.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thx all, pushed.

Regards
Andrzej

> Thanks,
> Andi

