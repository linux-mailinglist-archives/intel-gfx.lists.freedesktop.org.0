Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEEE40DB57
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 15:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CE66EDC2;
	Thu, 16 Sep 2021 13:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504FA6EDC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 13:35:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="222220563"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222220563"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:35:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="509306848"
Received: from kumardhx-mobl1.gar.corp.intel.com (HELO [10.252.50.13])
 ([10.252.50.13])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:35:06 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-2-maarten.lankhorst@linux.intel.com>
 <a0d252b5-49d9-164f-4150-56043d22f393@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <d6f9ac52-af5b-4424-dfb4-eecb365aa1c0@linux.intel.com>
Date: Thu, 16 Sep 2021 15:35:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <a0d252b5-49d9-164f-4150-56043d22f393@shipmail.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915: Move __i915_gem_free_object
 to ttm_bo_destroy
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

Op 16-09-2021 om 11:43 schreef Thomas Hellström (Intel):
>
> On 8/30/21 2:09 PM, Maarten Lankhorst wrote:
>> When we implement delayed destroy, we may have a second
>> call to the delete_mem_notify() handler, while free_object()
>> only should be called once.
>>
>> Move it to bo->destroy(), to ensure it's only called once.
>> This fixes some weird memory corruption issues with delayed
>> destroy when async eviction is used.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>
> I wonder whether you could push this early with a Fixes: tag, perhaps. I actually managed to hit this once without any vma- or async modifications, but a bit curious how.
>
> Thanks,
>
> Thomas
>
I think I triggered that as well once when testing the series with no patch applied yet as base, but I wasn't sure a the time. Since that's 2 suspicious cases, I will push this now with a fixes tag.

Thanks & pushed,

Maarten

