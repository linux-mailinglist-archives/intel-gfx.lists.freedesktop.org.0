Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66DE522D81
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 09:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F8910F826;
	Wed, 11 May 2022 07:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5AF10F7B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 07:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652254761; x=1683790761;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=zMJJTypZnTBa2Kzlu2ujAHWIHHp1OusDzfzNc4nBS/8=;
 b=Iidjp0DPT+OO9vXa5bJo+GvNzDt8rsyQZUdrOz/a0inMmOgD8EZrUoX0
 YXWM1mYa8k7IOZdbt7k0zUcHIGOBT9+OVnJN13iYQjmbfM5hktJm2e0gt
 WFCQ+McTcxknmsC/g2jbtLBWGB77nWUASW/ypVDwXA7vL0EDO5rxa1ANd
 ec3i8ds1/2BtOYmKOC/NdG/DKfBcek4flazRtCWDlUM6dgXUspaO85ihg
 MIVeN8p0lJmSPIaVKoe2LZOTn/zVuVnRlH4AgtI9LCy/rRnGXZbKe5EzE
 +D70IfAEetBXaTbi6MLF4ozAMCWka0xCnuhq6DFKcL1OxmlaZmEVQvg3q g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="332657559"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="332657559"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 00:39:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="520407922"
Received: from mmlucey-mobl1.ger.corp.intel.com (HELO [10.213.195.130])
 ([10.213.195.130])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 00:39:18 -0700
Message-ID: <76397b0c-e4bc-1bd4-9620-7c677c01a004@linux.intel.com>
Date: Wed, 11 May 2022 08:39:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220507132850.10272-1-jose.souza@intel.com>
 <20220507132850.10272-16-jose.souza@intel.com>
 <165209993727.58716.2402465688742600537@jlahtine-mobl.ger.corp.intel.com>
 <085c5569598a5708f68ebea78e8683ffc1893f04.camel@intel.com>
 <165216392440.6877.2731939801619952697@jlahtine-mobl.ger.corp.intel.com>
 <87czglkf5z.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87czglkf5z.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: Drop display.has_fpga_db
 from device info
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


On 10/05/2022 08:41, Jani Nikula wrote:
> On Tue, 10 May 2022, Joonas Lahtinen <joonas.lahtinen@linux.intel.com> wrote:
>> Quoting Souza, Jose (2022-05-09 17:19:28)
>>> On Mon, 2022-05-09 at 15:38 +0300, Joonas Lahtinen wrote:
>>>> Quoting José Roberto de Souza (2022-05-07 16:28:50)
>>>>> No need to have this parameter in intel_device_info struct
>>>>> as this feature is supported by Broadwell, Haswell all platforms with
>>>>> display version 9 or newer.
>>>>
>>>> This is opposite of the direction we want to move to.
>>>>
>>>> We want to embrace the has_xyz flags, instead of the macro trickery.
>>>
>>> This ever growing flag definition is causing problems when defining new platforms.
>>
>> The ever growing macros that change between kernel versions are much
>> more painful than easily printable list per SKU.
>>
>> Just to make it clear, a strict NACK from me for merging any patches
>> into this direction.
> 
> I was hoping to start a discussion to reach consensus on this with my
> mail [1], adding all maintainers in Cc, but merging started before the
> discussion really even started.
> 
> Obviously no further patches on this are to be merged, and the question
> now is really what to do with the ones that were. Revert?

 From the process standpoint strictly yes, but in practice I think there 
is no rush.

The ones which got merged I definitely do not like are:

Rc6 - because it creates an inconsistency where rc6p remains a device 
info flag.

DDI - because it is not 100% trivial and used from i915_irq.c. But a) I 
am not sure it is truly on an irq path, and b) it is display code so not 
my call anyway. (Affects the DP MST one as well by inheritance.)

The others are at best lukewarm to me - primarily because I am not 
convinced there is a benefit to it all. One day the need might come to 
move them back if some platforms drops support or something, which would 
be more churn. And it is handy to see a consolidated description of a 
platform in dmesg when looking at bugs. So just not sure it's an 
improvement.

Give there is much more conversions proposed I guess it may make sense 
to revert until overall consensus is achieved, since it may be odd to 
have a handful if we decide to stop there.

Regards,

Tvrtko
