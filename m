Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE8511D8A2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:35:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5686E204;
	Thu, 12 Dec 2019 21:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8166E204
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 21:35:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 13:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="296725666"
Received: from trswain.ger.corp.intel.com (HELO [10.252.35.212])
 ([10.252.35.212])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 13:35:01 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
 <20191212140459.1307617-8-chris@chris-wilson.co.uk>
 <c3296483-db08-d747-7b80-ee2ca686f38b@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8adaffa2-66df-3e82-f3de-52648adbbe51@intel.com>
Date: Thu, 12 Dec 2019 23:35:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <c3296483-db08-d747-7b80-ee2ca686f38b@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/33] drm/i915/gt: Mark context->state vma
 as active while pinned
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/12/2019 21:55, Lionel Landwerlin wrote:
> On 12/12/2019 16:04, Chris Wilson wrote:
>> As we use the active state to keep the vma alive while we are reading
>> its contents during GPU error capture, we need to mark the
>> context->state vma as active during execution if we want to include it
>> in the error state.
>>
>> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own 
>> mutex")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 


I'm wondering whether we want a test for this or some kind of assert in 
the error capture.

If there is a batch, there must be a context/ring kind of assert.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
