Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600F3EF0E9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 19:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FE76E213;
	Tue, 17 Aug 2021 17:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F185F6E213;
 Tue, 17 Aug 2021 17:27:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="195733793"
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="195733793"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 10:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="572991456"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 17 Aug 2021 10:27:20 -0700
Received: from [10.249.133.37] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.133.37])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 17HHRJ5g018240; Tue, 17 Aug 2021 18:27:19 +0100
To: Daniel Vetter <daniel@ffwll.ch>, Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-23-matthew.brost@intel.com>
 <YRuZbTJmeUAElOZj@phenom.ffwll.local>
 <20210817163647.GA30445@jons-linux-dev-box>
 <YRvv3Sbihp5ogz2u@phenom.ffwll.local>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <d239000d-0382-2bd5-ff92-80c0925bfd92@intel.com>
Date: Tue, 17 Aug 2021 19:27:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YRvv3Sbihp5ogz2u@phenom.ffwll.local>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 22/22] drm/i915/guc: Add GuC kernel doc
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



On 17.08.2021 19:20, Daniel Vetter wrote:
> On Tue, Aug 17, 2021 at 09:36:49AM -0700, Matthew Brost wrote:
>> On Tue, Aug 17, 2021 at 01:11:41PM +0200, Daniel Vetter wrote:
>>> On Mon, Aug 16, 2021 at 06:51:39AM -0700, Matthew Brost wrote:
>>>> Add GuC kernel doc for all structures added thus far for GuC submission
>>>> and update the main GuC submission section with the new interface
>>>> details.
>>>>
>>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>>>
>>> There's quite a bit more, e.g. intel_guc_ct, which has it's own world of
>>> locking design that also doesn't feel too consistent.
>>>
>>
>> That is a different layer than GuC submission so I don't we should
>> mention anything about that layer here. Didn't really write that layer
>> and it super painful to touch that code so I'm going to stay out of any
>> rework you think we need to do there. 
> 
> Well there's three locks 

It's likely me.

There is one lock for the recv CTB, one for the send CTB, one for the
list of read messages ready to post process - do you want to use single
lock for both CTBs or single lock for all cases in CT ?

Michal

disclaimer: outstanding_g2h are not part of the CTB layer


> there plus it leaks out (you have your
> outstanding_submission_g2h atomic_t which is very closed tied to well,
> outstanding guc transmissions), so I guess I need someone else for that?
> 
