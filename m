Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D541CB106
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 15:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BFC6E1B3;
	Fri,  8 May 2020 13:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10F1B6E18E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 13:54:56 +0000 (UTC)
IronPort-SDR: CZ50ID3vuXlp4013ZGwdOs4lb9l0ivn4dzC6dnSODUdkusUtvyvCG6GnkivKXocpiklIhwmWg3
 vh6uG18WAL9A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 06:54:55 -0700
IronPort-SDR: YnswioLYtSfqPPu3gN6ddmdPg8+ibcIV1HDACsJYfM2Kkv3rxosorLuyfjLWiU+vvKOFmhh1pw
 9kLSXKOAWCiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,367,1583222400"; d="scan'208";a="260969421"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 08 May 2020 06:54:55 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 8 May 2020 06:54:51 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.60]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.51]) with mapi id 14.03.0439.000;
 Fri, 8 May 2020 06:54:51 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/15] drm/i915: Replace the hardcoded
 I915_FENCE_TIMEOUT
Thread-Index: AQHWI+lDgFWhPdNlkES8PKhYCPaJz6icpXCAgAB2wgCAARxFQA==
Date: Fri, 8 May 2020 13:54:50 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663010E20C1C4@FMSMSX108.amr.corp.intel.com>
References: <20200506205920.24233-1-chris@chris-wilson.co.uk>
 <20200506205920.24233-12-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663010E2094F8@FMSMSX108.amr.corp.intel.com>
 <158885980224.20858.10019801670820346317@build.alporthouse.com>
In-Reply-To: <158885980224.20858.10019801670820346317@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915: Replace the hardcoded
 I915_FENCE_TIMEOUT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>-----Original Message-----
>From: Chris Wilson <chris@chris-wilson.co.uk>
>Sent: Thursday, May 7, 2020 9:57 AM
>To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>gfx@lists.freedesktop.org
>Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915: Replace the hardcoded
>I915_FENCE_TIMEOUT
>
>Quoting Ruhl, Michael J (2020-05-07 14:53:00)
>>
>>
>> >-----Original Message-----
>> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Chris
>> >Wilson
>> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
>> >b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
>> >index 3a146aa2593b..d3a86a4d5c04 100644
>> >--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
>> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
>> >@@ -288,8 +288,7 @@ int i915_gem_schedule_fill_pages_blt(struct
>> >drm_i915_gem_object *obj,
>> >
>> >       i915_gem_object_lock(obj);
>> >       err = i915_sw_fence_await_reservation(&work->wait,
>> >-                                            obj->base.resv, NULL,
>> >-                                            true, I915_FENCE_TIMEOUT,
>> >+                                            obj->base.resv, NULL, true, 0,
>>
>> Did you miss this one, or is the '0' on purpose?
>
>It should be 0, as it should be only handling internal fences which may
>take as long as required and should not be timed out.
>
>Still this is a placeholder function and should not be taken too
>seriously.

Assuming that the "placeholder function" is the _fill_pages_blt()...

Acked-by: Michael J. Ruhl <michael.j.ruhl@intel.com>

Mike

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
