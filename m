Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F23EC40D87C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 13:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38246ECDB;
	Thu, 16 Sep 2021 11:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3740F6ECDB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 11:24:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="209631253"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="209631253"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:24:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="509269705"
Received: from kumardhx-mobl1.gar.corp.intel.com (HELO [10.252.50.13])
 ([10.252.50.13])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:24:43 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <1baadb2d-6636-1fe1-a1a2-34600947c5e7@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <0848953e-b161-1bf4-cbe4-b37154359bc1@linux.intel.com>
Date: Thu, 16 Sep 2021 13:24:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1baadb2d-6636-1fe1-a1a2-34600947c5e7@shipmail.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 00/19] drm/i915: Short-term pinning and
 async eviction.
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

Op 16-09-2021 om 11:40 schreef Thomas Hellström (Intel):
>
> On 8/30/21 2:09 PM, Maarten Lankhorst wrote:
>> Remove some parts of the i915_vma api, ensure obj->vma always exists,
>> and finally force the object lock to be taken when calling i915_vma_unbind
>> is called.
>
> Should this be vma->obj?
>
Correct, missed that.
>
>>
>> With this, locking is a lot cleaner, and we no longer need all the if (!obj->vma) checks.
>> We kill off the locking around i915_vma->set/get pages, and kill off the short-term
>> pinning/unpinning in execbuf.
>>
>> After this, we go 1 step further, populate obj->moving where required, and add support
>> for async eviction/clearing.
>
> Does the async eviction / clearing depend on the vma cleanup? If not can we move that into a separate series? 

It kind of does. We cannot always require vma->obj to be locked and remove vma locks if we don't have vma->obj all the time.

