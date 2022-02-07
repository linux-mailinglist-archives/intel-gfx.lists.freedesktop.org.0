Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC7C4ABCE2
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 12:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262BE10F951;
	Mon,  7 Feb 2022 11:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3332310E3B8;
 Mon,  7 Feb 2022 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644234773; x=1675770773;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KfMHcherBeAvjHk8ropnyHfF1vDnOV2VoFlP9wRGrRY=;
 b=Cb4xoLyCswz6Fxnx2cY+T030v9KYlOWCINrY7foZILlBpfvsyIpF1lr6
 lMbYNq6QusbqIL26rrvUECI73z04GGYxRsvNrzR+tsqxvjZPEhghMLRXu
 cPyOlXJloOX6ug+0M9O8gTHSt5SEYLDsFjMtzT9EwIgIpauKGM9Bbk2iO
 gEPQScH+oW7Og1VmbNlrpFhneuW5qWYqj1cdwf3qw2pKcbCY0lOKyCWU2
 Vjgl1VglPus08urZvVg5A9pA7+jvjbtJDWx+9C6Qa3/Yq5qFQDm5zvnxF
 ZiC2q7L5JDxmijfKPsg4Fn0hzwB3urxxoaasx7MprtiQVHz1T9HpEgxDw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="311997492"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="311997492"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 03:52:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="677734406"
Received: from amdriess-mobl1.ger.corp.intel.com (HELO [10.252.9.254])
 ([10.252.9.254])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 03:52:50 -0800
Message-ID: <79cefb8f-3f71-a59e-28de-6b9a59c28c30@intel.com>
Date: Mon, 7 Feb 2022 11:52:48 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Ramalingam C <ramalingam.c@intel.com>
References: <20220128185209.18077-1-ramalingam.c@intel.com>
 <20220128185209.18077-2-ramalingam.c@intel.com>
 <CAM0jSHMCtDPk7MydenJHBE1yrghqjx8YrfMMuz_Zm4-WDvTFHA@mail.gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CAM0jSHMCtDPk7MydenJHBE1yrghqjx8YrfMMuz_Zm4-WDvTFHA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dg2: Add Wa_22011450934
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07/02/2022 11:48, Matthew Auld wrote:
> On Fri, 28 Jan 2022 at 18:52, Ramalingam C <ramalingam.c@intel.com> wrote:
>>
>> An indirect ctx wabb is implemented as per Wa_22011450934 to avoid rcs
>> restore hang during context restore of a preempted context in GPGPU mode
>>
>> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
>> cc: Chris Wilson <chris.p.wilson@intel.com>
> Acked-by: Matthew Auld <matthew.auld@intel.com>

Also, feel free to upgrade to r-b for this and patches 2-4.
