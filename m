Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE5F416EA3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 11:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A496E1A2;
	Fri, 24 Sep 2021 09:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2C86E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 09:12:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="309591595"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="309591595"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 02:11:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="551511254"
Received: from sambroox-mobl.ger.corp.intel.com (HELO [10.213.245.2])
 ([10.213.245.2])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 02:11:46 -0700
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20210923075608.2873-1-christian.koenig@amd.com>
 <163240233283.31050.11977750526229880215@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e0aada02-8a1c-dfd3-d855-8776259b27fb@linux.intel.com>
Date: Fri, 24 Sep 2021 10:11:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <163240233283.31050.11977750526229880215@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/25=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v5?=
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


On 23/09/2021 14:05, Patchwork wrote:

[snip]

>   *
> 
>     igt@gem_busy@busy@all:
> 
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_busy@busy@all.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_busy@busy@all.html>
>         +2 similar issues

All seem to be the same failure:

(gem_busy:874) igt_dummyload-CRITICAL: Test assertion failure function igt_spin_factory, file ../lib/igt_dummyload.c:490:
(gem_busy:874) igt_dummyload-CRITICAL: Failed assertion: gem_bo_busy(fd, spin->handle)

Which is saying spinner which was just submitted is not immediately reported as busy. And that sounds impossible. Must be a pretty basic bug somewhere which I don't immediately see. Like unlocked iterator failing to walk the fences or something.

Regards,

Tvrtko
