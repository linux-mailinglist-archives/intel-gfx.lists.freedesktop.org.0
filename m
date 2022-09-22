Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E825E5DA3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C203910E3D3;
	Thu, 22 Sep 2022 08:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D381C10E3D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663835969; x=1695371969;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Y0A3vUUPiE5/k/r3jvTNOz3+vKE3RQEkKOD2o7ZC1X8=;
 b=LAztIfqhP0b6VQHGP8q99fot5SsvBtfXDNcylQrZvk0vwrNiaUlxfs1L
 lrkmjwtHsoJy7Oq8X8zJHMEOIkG61kmfy8WNnlewNGdR3GXgqCTGDeSj0
 iMf4ehUrCGDlcBOO9Y0lIvsJMZqkUWPj8Yf2BXO1AUVr534J/7/9vvebw
 jWISCyslW2Rha9morUPFiLnj9oFQmdMfziOGo8x30FEFii1UJ30E8y/0q
 QU2PQa30szcXHdmXGbNSCweHovRH0M1qg2rPxlYU4whWhoW89nYalkFHc
 PqSNHVhk+XXAdz3j4h31E/6Tc+X7xOfoc9/hoGhZ7AcuAM0hn2+NtqoJc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="364219714"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="364219714"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:39:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="948507976"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.2.242])
 ([10.252.2.242])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:39:28 -0700
Message-ID: <2d8c9658-5b0a-ef3f-1c94-d3273f6f7a0a@linux.intel.com>
Date: Thu, 22 Sep 2022 10:39:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
 <YxoGJrriiWt1r5uT@intel.com>
 <7280ab53-dfed-4b37-2bfc-b731010c5cd2@linux.intel.com>
 <Yxrrc33z38fvf22h@intel.com> <YyrDtvelxyo2MEGe@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <YyrDtvelxyo2MEGe@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kick rcu harder to free objects
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/21/2022 9:56 AM, Ville Syrjälä wrote:
> On Fri, Sep 09, 2022 at 10:29:55AM +0300, Ville Syrjälä wrote:
>> On Thu, Sep 08, 2022 at 09:34:04PM +0200, Das, Nirmoy wrote:
>>> On 9/8/2022 5:11 PM, Ville Syrjälä wrote:
>>>> On Thu, Sep 08, 2022 at 04:32:56PM +0200, Das, Nirmoy wrote:
>>>>> Hi Ville,
>>>>>
>>>>>
>>>>> I fixed a similar issue in DII but I couldn't reproduce it in drm
>>>>>
>>>>> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
>>>>>
>>>>> I wonder if that fixes the problem you are facing then I can send that
>>>>> to drm.
>>>> CI can tell you. It has been complaining about this for ages
>>>
>>> Could you please share a url/failed test name. I must be searching the
>>> wrong hw/test(https://intel-gfx-ci.01.org/tree/drm-tip/fi-ivb-3770.html).
>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12102/fi-pnv-d510/igt@i915_selftest@live@requests.html
>>
>> gen3 hits it nearly 100% of the time in the live selftests.
>> IIRC it also looked like shard-snb has also hit it more
>> sporadically in some tests.
>>
>> There's also at least one bug about it
>> https://gitlab.freedesktop.org/drm/intel/-/issues/4528
>> which I guess is why ci is able to ignore this, and that
>> then has enabled all the humans to ignore it as well.
> Did we get anywhere with this? I'm getting tired of
> seeing the red in CI.

Please review 
https://patchwork.freedesktop.org/patch/501991/?series=108314&rev=1 
Sorry, I should've Cced you.

It seems to fix the issue:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108314v1/fi-pnv-d510/igt@i915_selftest@live@requests.html


Regards,

Nirmoy


>
