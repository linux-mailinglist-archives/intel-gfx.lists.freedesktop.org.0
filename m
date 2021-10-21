Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648D2436009
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3341189F4A;
	Thu, 21 Oct 2021 11:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3653189F4A;
 Thu, 21 Oct 2021 11:13:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="216173734"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="216173734"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:13:12 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495089184"
Received: from bgmccabx-mobl1.ger.corp.intel.com (HELO [10.213.228.24])
 ([10.213.228.24])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:13:11 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
 <20211021103605.735002-2-maarten.lankhorst@linux.intel.com>
 <022f8ecb-37c0-3d67-563f-012f0a3651df@amd.com>
 <c7c82fa5-6fe5-33e2-e224-c5433020100c@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <007050d3-0207-5226-0cbe-7a3d8679811c@linux.intel.com>
Date: Thu, 21 Oct 2021 12:13:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c7c82fa5-6fe5-33e2-e224-c5433020100c@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 02/28] drm/i915: use new iterator in
 i915_gem_object_wait_reservation
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


On 21/10/2021 12:06, Maarten Lankhorst wrote:
> Op 21-10-2021 om 12:38 schreef Christian König:
>> Am 21.10.21 um 12:35 schrieb Maarten Lankhorst:
>>> From: Christian König <christian.koenig@amd.com>
>>>
>>> Simplifying the code a bit.
>>>
>>> Signed-off-by: Christian König <christian.koenig@amd.com>
>>> [mlankhorst: Handle timeout = 0 correctly, use new i915_request_wait_timeout.]
>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>
>> LGTM, do you want to push it or should I pick it up into drm-misc-next?
> 
> I think it can be applied to drm-intel-gt-next, after a backmerge. It needs patch 1 too, which fixes
> 
> i915_request_wait semantics when used in dma-fence. It exports a dma-fence compatible i915_request_wait_timeout function, used in this patch.

I don't think my open has been resolved, at least I haven't seen a reply 
from Daniel on the topic of potential for infinite waits with untrusted 
clients after this change. +Daniel

Regards,

Tvrtko
