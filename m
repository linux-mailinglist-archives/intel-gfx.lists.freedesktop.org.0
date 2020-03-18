Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 767B318A2F2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 20:10:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B704C6E94B;
	Wed, 18 Mar 2020 19:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6214A6E94B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 19:10:08 +0000 (UTC)
IronPort-SDR: M14UKUcP3Er0QjJ08AGwYkCNFuW0VUN0UX9FvuGEmJGFy0hrMOpobIqre+MD7KrlTJ6xN3IV2D
 KKlk37eQCfQw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 12:10:07 -0700
IronPort-SDR: Gs7KYeXQJCFWI1Uc1VzgHE8fcHfFd9RH+smnsq2khNARi6JWKv0Vh0Dz+bG2m6YfSFe68n1QCY
 rDd7JyKeBFAA==
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="391549080"
Received: from gkern-mobl.ger.corp.intel.com (HELO localhost) ([10.252.54.69])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 12:10:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
In-Reply-To: <alpine.LNX.2.21.99999.375.2003111755340.14786@wambui>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1583766715.git.jani.nikula@intel.com>
 <87blp5o8yx.fsf@intel.com> <87o8t3kvw9.fsf@intel.com>
 <alpine.LNX.2.21.99999.375.2003111755340.14786@wambui>
Date: Wed, 18 Mar 2020 21:10:03 +0200
Message-ID: <87d099eayc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915/display: conversion to
 drm_device based logging macros
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Mar 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> On Wed, 11 Mar 2020, Jani Nikula wrote:
>
>> On Mon, 09 Mar 2020, Jani Nikula <jani.nikula@intel.com> wrote:
>>> Please ignore this, I seem to have some smtp trouble which fails some of
>>> tha patches. This will be incomplete.
>>>
>>> Wambui, I'll resend this later.
>>
>> Okay, I sent them with the same message-ids, so the patches amended this
>> beginning of the series.
>>
>> I pushed all the patches that I didn't change. Please double check the
>> below patches that I adjusted, so I can push them.
>>
>>>>   drm/i915/fbc: convert to drm_device based logging macros.
>>>>   drm/i915/fbdev: convert to drm_device based logging.
>>>>   drm/i915/hdcp: convert to struct drm_device based logging.
>>
>
> Will do, thanks!

Thanks for the reviews, I've pushed the remaining patches.

BR,
Jani.

> wambui karuga
>> Thanks,
>> Jani.
>>
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
