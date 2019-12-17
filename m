Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F90123B04
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 00:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974DD6E1D3;
	Tue, 17 Dec 2019 23:43:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728BB6E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 23:43:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 15:43:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="221874645"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 17 Dec 2019 15:43:24 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
 <20191217012316.13271-4-daniele.ceraolospurio@intel.com>
 <op.0cyo83j9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <cbdc4559-47a2-94bf-fdc1-b4afb4da3ba0@intel.com>
Date: Tue, 17 Dec 2019 15:43:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.0cyo83j9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915/guc/ct: Group
 request-related variables in a sub-structure
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/17/19 1:42 PM, Michal Wajdeczko wrote:
> On Tue, 17 Dec 2019 02:23:13 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> For better isolation of the request tracking from the rest of the
>> CT-related data.
>>
>> v2: split to separate patch, move next_fence to substructure (Michal)
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
> =

> Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> =

> with some nits below (we may fix them later)
> =

> /snip/
> =

>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index 6e3d789b9f01..29a026dc3a13 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -48,12 +48,15 @@ struct intel_guc_ct {
>> =A0=A0=A0=A0 /* buffers for sending(0) and receiving(1) commands */
>> =A0=A0=A0=A0 struct intel_guc_ct_buffer ctbs[2];
>> -=A0=A0=A0 u32 next_fence; /* fence to be used with next send command */
>> +=A0=A0=A0 struct {
>> +=A0=A0=A0=A0=A0=A0=A0 u32 next_fence; /* fence to be used with next req=
uest to send */
> =

> nit: strictly speaking this is "last" fence
>  =A0=A0=A0=A0 we just use it to generate next one
> =

>> -=A0=A0=A0 spinlock_t lock; /* protects pending requests list */
>> -=A0=A0=A0 struct list_head pending_requests; /* requests waiting for =

>> response */
>> -=A0=A0=A0 struct list_head incoming_requests; /* incoming requests */
>> -=A0=A0=A0 struct work_struct worker; /* handler for incoming requests */
>> +=A0=A0=A0=A0=A0=A0=A0 spinlock_t lock; /* protects pending requests lis=
t */
> =

> nit: do we want to use this lock to protect "next/last" fence ?
>  =A0=A0=A0=A0 if yes, then maybe lock shall be first ?

We currently only touch this while holding send_mutex, so we don't need =

the spinlock as well. We can move it later if we ever re-organize the =

locking structure.

Daniele

> =

>> +=A0=A0=A0=A0=A0=A0=A0 struct list_head pending; /* requests waiting for=
 response */
>> +
>> +=A0=A0=A0=A0=A0=A0=A0 struct list_head incoming; /* incoming requests */
>> +=A0=A0=A0=A0=A0=A0=A0 struct work_struct worker; /* handler for incomin=
g requests */
>> +=A0=A0=A0 } requests;
>> =A0};
>> void intel_guc_ct_init_early(struct intel_guc_ct *ct);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
