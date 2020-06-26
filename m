Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD6420B780
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 19:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFAA16ECF3;
	Fri, 26 Jun 2020 17:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37396ECF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 17:45:55 +0000 (UTC)
IronPort-SDR: kUtpnZTWNTtlNTWhLWmHJzAvfgAX0ti7IIVCEvWpYptqoHLWMV1NM6AkWWZy7ljNsGcCglJe+n
 NP2rMFRoQU2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="133795393"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="133795393"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 10:45:54 -0700
IronPort-SDR: KM1LKgeaLQsqB7Gos6fNnRccB4NTbHTjMdaFw5zbByelLiDM2Tvz7h1/qNOj8ttcnMdaSOL+03
 E/ueiVlWY6Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="424144976"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2020 10:45:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-3-daniele.ceraolospurio@intel.com>
 <159318215858.13600.17747631516505792821@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f6b67b54-cd8d-adde-f260-1a7151e687a0@intel.com>
Date: Fri, 26 Jun 2020 10:45:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <159318215858.13600.17747631516505792821@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Use the gt in HAS_ENGINE
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



On 6/26/20 7:35 AM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2020-06-26 00:42:07)
>> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
>> index 26cae4846c82..ddefc52f6e09 100644
>> --- a/drivers/gpu/drm/i915/gvt/handlers.c
>> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
>> @@ -1867,7 +1867,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
>>          MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d, r, w); \
>>          MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d, r, w); \
>>          MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d, r, w); \
>> -       if (HAS_ENGINE(dev_priv, VCS1)) \
>> +       if (HAS_ENGINE(&dev_priv->gt, VCS1)) \
> 
> Implicit param! It can switch to gvt->gt for all callsites, killing the
> dev_priv locals.

I've switched this to gvt->gt, but unfortunately the locals will have to 
stay because some of the display register definitions still use dev_priv 
implicitly to access the display mmio base and the 
pipe_offsets/trans_offsets arrays.

Daniele

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
