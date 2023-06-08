Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D48727AF0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5083510E061;
	Thu,  8 Jun 2023 09:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF54810E061
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686215669; x=1717751669;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=GRA74k9GkQLyZhb1WWpRYRBQ/5RvohBZQdsiLR7m1mA=;
 b=CtLg0qVOTlQdYR6+I3Wm3xS6t5pGkDfdoh9AMyvd4mGQX4QmkRhEP1RM
 smu/p6NAGTNStbDZwYSX+eCDyUsNwd/hMHFl8i7FoTgtSS/6K5Ww+e/3r
 fLMC7IaCuctQeEHH6A6Jf4X4RM7YOt/4F3CWO1vwXwJIQ+edBzAGkWgf6
 2q9u2TosS1jr+oaRvbKEYkp1uKjYO1ltBo54l2xJiHVS4bgc4W1RqLyHs
 fIb+bWaGSpMKrEJ4Mc86xU/SRHRbH1zL5CuttNomfKsXjoq13tCAMRwX7
 8Q2ZqCAGXEe8rj60VY7yQBFmfX6wCM+J4UmRM6D24kPOJNlcSvFPlSb3O A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="357265787"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="357265787"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="779808035"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="779808035"
Received: from rirwin-mobl3.ger.corp.intel.com (HELO [10.213.239.227])
 ([10.213.239.227])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:14:28 -0700
Message-ID: <a791b5a0-8e02-0df8-91bd-7cbdde5c768b@linux.intel.com>
Date: Thu, 8 Jun 2023 10:14:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Luca Coelho <luciano.coelho@intel.com>
References: <20230606163942.330052-1-luciano.coelho@intel.com>
 <168612689851.21181.14667691404906605680@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <168612689851.21181.14667691404906605680@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev2=29?=
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


On 07/06/2023 09:34, Patchwork wrote:

8<

>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_selftest@mock@requests:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/shard-apl1/igt@i915_selftest@mock@requests.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/shard-apl1/igt@i915_selftest@mock@requests.html>
> 
>       o
> 
>         shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/shard-snb6/igt@i915_selftest@mock@requests.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/shard-snb6/igt@i915_selftest@mock@requests.html>
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13237/shard-glk9/igt@i915_selftest@mock@requests.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118947v2/shard-glk6/igt@i915_selftest@mock@requests.html>

Could be missing wq creation/destruction in
mock_gem_device/mock_device_release.

Regards,

Tvrtko
