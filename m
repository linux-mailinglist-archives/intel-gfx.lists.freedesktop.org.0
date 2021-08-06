Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF503E2849
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 12:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4C46EB7A;
	Fri,  6 Aug 2021 10:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5818A6EB7A;
 Fri,  6 Aug 2021 10:11:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194614981"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="194614981"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:11:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="523406731"
Received: from klipka-mobl.ger.corp.intel.com (HELO [10.252.54.14])
 ([10.252.54.14])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 03:10:56 -0700
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Ramalingam C <ramalingam.c@intel.com>
References: <20210730085348.2326899-1-matthew.auld@intel.com>
 <20210730085348.2326899-3-matthew.auld@intel.com>
 <87pmuw5pg8.wl-ashutosh.dixit@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <56a57564-961f-f7da-a6d2-bf8eb577d852@linux.intel.com>
Date: Fri, 6 Aug 2021 12:10:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <87pmuw5pg8.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 03/11] lib/i915/gem_mman: add fixed
 mode to gem_mmap_offset__cpu
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

Op 02-08-2021 om 08:29 schreef Dixit, Ashutosh:
> On Fri, 30 Jul 2021 01:53:40 -0700, Matthew Auld wrote:
>> On discrete we only support the new fixed mode.
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Ramalingam C <ramalingam.c@intel.com>
>> ---
>>  lib/i915/gem_mman.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
>> index c432bb16..563a7ccf 100644
>> --- a/lib/i915/gem_mman.c
>> +++ b/lib/i915/gem_mman.c
>> @@ -474,8 +474,14 @@ void *gem_mmap__cpu(int fd, uint32_t handle, uint64_t offset, uint64_t size, uns
>>  void *__gem_mmap_offset__cpu(int fd, uint32_t handle, uint64_t offset,
>> 			     uint64_t size, unsigned prot)
>>  {
>> -	return __gem_mmap_offset(fd, handle, offset, size, prot,
>> +	void *ptr;
>> +
>> +	ptr = __gem_mmap_offset(fd, handle, offset, size, prot,
>> 				 I915_MMAP_OFFSET_WB);
>> +	if (!ptr)
>> +		ptr = __gem_mmap_offset__fixed(fd, handle, offset, size, prot);
>> +
>> +	return ptr;
> Imo there's some asymmetry here. If we are adding fixed mode to
> mmap__device_coherent (in the previous patch) then we should also be adding
> it to mmap__cpu_coherent (as before). Or, if we are adding fixed mode to
> __gem_mmap_offset__cpu we should also be adding it to
> __gem_mmap_offset__wc. Thanks.

Why do we need it in __gem_mmap_offset_wc btw?

Rest of series doesn't seem to be blocked by it, so pushed for now.

