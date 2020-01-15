Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BCD13CD68
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 20:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D296EB27;
	Wed, 15 Jan 2020 19:49:34 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1346EB27
 for <Intel-GFX@lists.freedesktop.org>; Wed, 15 Jan 2020 19:49:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 11:49:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="219402016"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.251.135.196])
 ([10.251.135.196])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 15 Jan 2020 11:49:31 -0800
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
 <3201a276-52d7-3140-6271-3cf6c5bd7dda@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <3e84b0d5-d324-c513-51f9-fdfe46a16075@Intel.com>
Date: Wed, 15 Jan 2020 11:49:30 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3201a276-52d7-3140-6271-3cf6c5bd7dda@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Update to GuC FW v40
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

On 1/15/2020 11:45, Daniele Ceraolo Spurio wrote:
> On 1/14/20 6:40 PM, John.C.Harrison@Intel.com wrote:
>> From: Matthew Brost <matthew.brost@intel.com>
>>
>> The GuC major version has jumped from 35 to 40. This is because this
>> FW includes a significant re-write of the API that completely breaks
>> backwards compatibility for command submission. This patch is
>> sufficient to enable loading of the GuC and hence authentication of
>> the HuC. Support of command submission will follow in a much larger
>> patch series.
>>
>> The changes required to load v40 FW are:
>> * An additional data structure and associated 'private_data' pointer
>> are now required to be setup by the driver. This is basically a
>> scratch area of memory that the GuC owns. The size is read from the
>> CSS header.
>>
>> * A physical to logical engine mapping table is required to be
>> provided in the GuC additional data structure. This is initialized
>> with a 1 to 1 mapping.
>>
>> * GUC_CTL_CTXINFO has been removed from the initialization params.
>>
>
> You're missing the removal of ads.reg_state_buffer, which is several 
> page of memory we can now save. Michal has floated a patch for that 
> internally.
>
> Daniele
>
Yes, I just noticed that a little earlier. Already in the process of 
squashing it in.

John.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
