Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEBE313D8E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 19:33:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2026E9AE;
	Mon,  8 Feb 2021 18:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720426E9AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 18:33:37 +0000 (UTC)
IronPort-SDR: SHJieBcDNRMyl66ijfsRekV9qN5nFAjdaMTyXmhdeywSHwVdqjBSg8Hz5Olp0sOMPDYE+RmaNs
 pMkaZuKAeP4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="160914590"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="160914590"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 10:33:36 -0800
IronPort-SDR: 9fS7RrDZEl2fXjxvb/dJlydc+um+CwQaNvKA9AG+4hgsjf7rjka6OkAUEcf1+kq+RGbwTh8cUB
 jjlwwls/S5jw==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="361512023"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.95.207])
 ([10.212.95.207])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 10:33:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-11-daniele.ceraolospurio@intel.com>
 <161261676595.12021.15322901589208457858@build.alporthouse.com>
 <161261693219.12021.10131140758350145076@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <60765246-a0e1-12e0-8866-ebd774f6312f@intel.com>
Date: Mon, 8 Feb 2021 10:33:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <161261693219.12021.10131140758350145076@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 10/14] drm/i915/pxp: Enable PXP power
 management
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
Cc: "Huang, Sean Z" <sean.z.huang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/6/2021 5:08 AM, Chris Wilson wrote:
> Quoting Chris Wilson (2021-02-06 13:06:05)
>> Quoting Daniele Ceraolo Spurio (2021-02-06 02:09:21)
>>> +       if (!ret) {
>>> +               ret = wait_for(!pxp->termination_in_progress, 10);
>> This only works by chance. The compiler doesn't even have to reload the
>> variable. See struct completion.

This was a last minute addition when I was told that waiting on the 
in_play state change was not enough to guarantee full invalidation and I 
admit I didn't fully think it through because I want to get the RFC out.

> It appears we already have a ready made one with the termination
> i915_request. But that will require RCU pointer management...
> -Chris

I've tried to keep this decoupled from the request because after the 
request completion there is an MMIO write and only after that we start 
waiting for the interrupt. I'll go with a struct completion.

Daniele
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
