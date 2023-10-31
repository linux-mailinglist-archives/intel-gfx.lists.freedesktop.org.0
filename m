Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2617DD157
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 17:15:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 759B610E565;
	Tue, 31 Oct 2023 16:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF22410E566
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 16:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698768902; x=1730304902;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Ic9zJim7pUYwLHh8ObMh8xYdzq8sj9TiFNYw3OvtDsA=;
 b=VCxSDUdO0SEO5wJylaUESLrDKhqqRwDiDbMYO4Cg3M+LwMKc1jVjWpnA
 ygMIP434Rr3+qSF1YviMMWJPpm6MQEmTT0xteYv/tpnjWUSe46jmTsQNz
 v3KWK6mTIkNnv8scoB7IX5+2rhrAsGxSDBtbIkWyimf7pfmsuYa9m31RY
 ScOEEb0G18VSbmPfz02K77p7Kkh1EXkICiq1R2aCOw8E4WSHF0i6yQApO
 o7mAXbMWU2Bg32xkqp1vUxeDKLvbtAHdtBQaJlR5KYt6aieczKsFftZ9p
 XnBflHk/KPxG7CNwNzO2Za433hQRC/1QgX/j395IGq8kwgn5tHwTzmN7U w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="419431381"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="419431381"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 09:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="737104328"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="737104328"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.48.220])
 ([10.252.48.220])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 09:12:12 -0700
Message-ID: <d6c1b211-c088-5e79-7c43-d6df95b9c9d9@linux.intel.com>
Date: Tue, 31 Oct 2023 17:12:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231031124502.1772160-1-jani.nikula@intel.com>
 <20231031124502.1772160-2-jani.nikula@intel.com>
 <a2684135-1bda-f705-8462-11c0122c3bb2@linux.intel.com>
 <87v8am50zy.fsf@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <87v8am50zy.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH RESEND 2/3] drm/i915: move gpu error debugfs
 to i915_gpu_error.c
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


On 10/31/2023 3:18 PM, Jani Nikula wrote:
> On Tue, 31 Oct 2023, Nirmoy Das <nirmoy.das@linux.intel.com> wrote:
>> On 10/31/2023 1:45 PM, Jani Nikula wrote:
>>> +void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
>>> +{
>>> +	struct drm_minor *minor = i915->drm.primary;
>>> +
>>> +	debugfs_create_file("i915_error_state", 0644,
>> nit: s/0644/S_IRUGO | S_IWUSR
> The direction pretty much across the kernel is to go towards octal
> permissions because the macros are harder to understand.

Personally I prefer octal but didn't realize this is preferred in 
general[*].

[*]https://lore.kernel.org/lkml/7232ef011d05a92f4caa86a5e9830d87966a2eaf.1470180926.git.joe@perches.com/


Regards,

Nirmoy

>
>> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Thanks,
> Jani.
>
