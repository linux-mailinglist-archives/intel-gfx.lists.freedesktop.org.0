Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0912289C6F8
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 16:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E885C112664;
	Mon,  8 Apr 2024 14:24:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="DWioxHIz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by gabe.freedesktop.org (Postfix) with ESMTP id C70C610FF50;
 Tue,  2 Apr 2024 18:19:05 +0000 (UTC)
Received: from [100.64.232.220] (unknown [20.29.225.195])
 by linux.microsoft.com (Postfix) with ESMTPSA id 44D9220E8BDC;
 Tue,  2 Apr 2024 11:19:04 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 44D9220E8BDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1712081945;
 bh=6CxfCTy2hvljG0KtnNfE1+yaCZUecQ3XXshhsgNm9Uw=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=DWioxHIzgS3pFY1uvHRovezlPv1RdDLcO2IT9/uxBMLrPIYLmaifrAV+YozRfQao5
 rn7ZeC4782fWxJ68W1tiLG19p3MAqbIzFdJeAEkZWoLgMwgJMeelbVPX1Afg8R8m6u
 UVRz1yN/74Ux892MYhIq1XY0LntOnyafVlWsWEQ4=
Message-ID: <75428d6c-c40a-43d8-84e3-f9ed161c37e2@linux.microsoft.com>
Date: Tue, 2 Apr 2024 11:19:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v0 03/14] drm/gma500,drm/i915: Make I2C terminology more
 inclusive
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Zhenyu Wang
 <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>,
 dri-devel@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-gfx@lists.freedesktop.org>,
 "open list:INTEL DRM DISPLAY FOR XE AND I915 DRIVERS"
 <intel-xe@lists.freedesktop.org>,
 "open list:INTEL GVT-g DRIVERS (Intel GPU Virtualization)"
 <intel-gvt-dev@lists.freedesktop.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 "open list:BTTV VIDEO4LINUX DRIVER" <linux-media@vger.kernel.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>
References: <20240329170038.3863998-1-eahariha@linux.microsoft.com>
 <20240329170038.3863998-4-eahariha@linux.microsoft.com>
 <87a5mcfbms.fsf@intel.com>
 <7d5e6ed0-ffe9-46c2-b3b4-a4a47c09532e@linux.microsoft.com>
 <87ttkjesx8.fsf@intel.com>
 <fde7a0da-1981-48db-95e2-96d45655c11c@linux.microsoft.com>
 <87o7aremfz.fsf@intel.com>
Content-Language: en-CA
From: Easwar Hariharan <eahariha@linux.microsoft.com>
In-Reply-To: <87o7aremfz.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 08 Apr 2024 14:24:14 +0000
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

On 4/2/2024 9:52 AM, Jani Nikula wrote:
> On Tue, 02 Apr 2024, Easwar Hariharan <eahariha@linux.microsoft.com> wrote:
>> On 4/2/2024 7:32 AM, Jani Nikula wrote:
>>> On Tue, 02 Apr 2024, Easwar Hariharan <eahariha@linux.microsoft.com> wrote:
>>>> On 4/2/2024 12:48 AM, Jani Nikula wrote:
>>>>> On Fri, 29 Mar 2024, Easwar Hariharan <eahariha@linux.microsoft.com> wrote:
>>>>>> I2C v7, SMBus 3.2, and I3C specifications have replaced "master/slave"
>>>>>> with more appropriate terms. Inspired by and following on to Wolfram's
>>>>>> series to fix drivers/i2c/[1], fix the terminology for users of
>>>>>> I2C_ALGOBIT bitbanging interface, now that the approved verbiage exists
>>>>>> in the specification.
>>>>>
>>>>> gma500 and i915 changes should be split. See MAINTAINERS.
>>>>>
>>>>> Might also split the i915 changes to smaller pieces, it's kind of
>>>>> random. And the changes here are not strictly related to I2C AFAICT, so
>>>>> the commit message should be updated.
>>>>>
>>>>> BR,
>>>>> Jani.
>>>>>
>>>>>
>>>>
>>>> <snip>
>>>>
>>>> I will split gma500 and i915 into their respective patches if possible in v2.
>>>>
>>>> Can you say more about the changes being "not strictly related to I2C"? My
>>>> heuristic was to grep for master/slave, and look in the surrounding context for
>>>> i2c-related terminology (i2c_pin, 7-bit address, struct i2c_adapter, i2c_bus, etc)
>>>> to confirm that they are i2c-related, then following the references around to
>>>> make the compiler happy. For e.g., I did not change the many references to bigjoiner
>>>> master and slave because I understood from context they were not i2c references.
>>>>
>>>> A couple examples would help me restrict the changes to I2C, since as mentioned in the
>>>> discussion on Wolfram's thread, there are places where migrating away from master/slave
>>>> terms in the code would conflict with the original technical manuals and reduce correlation
>>>> and understanding of the code.
>>>
>>> I guess I was looking at the VBT changes in intel_bios.c. Granted, they
>>> do end up being used as i2c addresses. No big deal.
>>>
>>> I think I'd expect the treewide i2c adapter changes to land first, via
>>> i2c, and subsequent cleanups to happen next, via individual driver
>>> trees. There's quite a bit of conflict potential merging this outside of
>>> drm-intel-next, and there's really no need for that.
>>>
>>> BR,
>>> Jani.
>>>
>>
>> Great! Just so I'm clear, do you still want the i915 changes split up more, along with them being
>> split off from gma500?
> 
> If we can merge the i915 changes via drm-intel-next, it's probably fine
> as a big i915 patch. Just the gma500 separated. (The struct
> i2c_algorithm change etc. necessarily has to go via I2C tree of course.)
> 
> BR,
> Jani.
> 

Got it. I'll send the split out in v1 (not v2 as mentioned earlier) since this is v0.

Thanks,
Easwar

