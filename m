Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2C02EB80D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 03:28:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F3789BFF;
	Wed,  6 Jan 2021 02:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC6C89BFF
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 02:28:50 +0000 (UTC)
IronPort-SDR: 28tEIU7w3p1lL72nAOGvvFoscf+89sEzQgaB5RN9+m9APrRaOdhpYwdGU9qAtB8ip7gKLWcSmh
 fH1GhLP4oTGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="156405856"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="156405856"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:28:49 -0800
IronPort-SDR: XdJk+wEDTrqS1U7gezrjGy6EYylqF1Is0wFuirSsIYXv4QAhVIy2QTJzZYJuukGauzT2HhaMCN
 X1oJbA+xPwVg==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="462525897"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.17.148])
 ([10.251.17.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:28:49 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-2-daniele.ceraolospurio@intel.com>
 <160989453161.14894.2049892555635163776@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0c89c2d0-fad1-47e8-65cb-bf9ea3c4f43d@intel.com>
Date: Tue, 5 Jan 2021 18:28:46 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160989453161.14894.2049892555635163776@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Delete GuC code unused in
 future patches
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/5/2021 4:55 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:43)
>> From: Matthew Brost <matthew.brost@intel.com>
>>
>> Delete GuC code unused in future patches that rewrite the GuC interface
>> to work with the new firmware. Most of the code deleted relates to
>> workqueues or execlist port.
> Should we not be complaining if i915.enable_guc=1 is set during this
> time? We may already be, if so please mention it so that we know that
> nobody can accidentally execute this code.
> -Chris

We already do, I'll add a note in the commit message.

Daniele
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
