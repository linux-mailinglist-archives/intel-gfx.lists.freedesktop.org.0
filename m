Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 468033FFD25
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 11:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258216E098;
	Fri,  3 Sep 2021 09:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282686E098
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 09:30:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="206497217"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="206497217"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 02:30:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="543432113"
Received: from schuethe-mobl1.ger.corp.intel.com (HELO [10.252.60.46])
 ([10.252.60.46])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 02:30:53 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-8-maarten.lankhorst@linux.intel.com>
 <80c12456-e409-2455-2f47-bb999468d271@linux.intel.com>
 <91a89c54-a792-1016-881b-ced0cbae627a@linux.intel.com>
 <8185b206-3db2-00e0-9878-15b40a514990@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <c781f846-612d-6996-b6e7-9f8ecfecf513@linux.intel.com>
Date: Fri, 3 Sep 2021 11:31:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <8185b206-3db2-00e0-9878-15b40a514990@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/19] drm/i915: vma is always backed by an
 object.
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

Op 31-08-2021 om 12:29 schreef Tvrtko Ursulin:
>
> On 31/08/2021 10:34, Maarten Lankhorst wrote:
>> Op 31-08-2021 om 11:18 schreef Tvrtko Ursulin:
>>>
>>> On 30/08/2021 13:09, Maarten Lankhorst wrote:
>>>> vma->obj and vma->resv are now never NULL, and some checks can be removed.
>>>
>>> Is the direction here compatible with SVM / VM_BIND?
>>
>>
>> Yeah, it should be. The changes here make the obj->resv->lock the main lock, so it should at least simplify locking for VM_BIND.
>
> Hm but what will vma->obj point to in case of SVM, when there is no GEM BO? 

Probably to one of the bo's in i915_vm, or a dummy bo that least shares the vm_resv object, similar to the aliasing gtt handling.

