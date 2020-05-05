Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 194631C4F0B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 09:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E336E554;
	Tue,  5 May 2020 07:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91E26E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 07:27:58 +0000 (UTC)
IronPort-SDR: vdyNlLosSrzD8P6J6eU4zBz3L9Q6chMOPYGyieT8/ZuXu7QkovDo5Qgu+Lh9A6WS5yrTmH91qP
 51wzoSTtbhfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 00:27:58 -0700
IronPort-SDR: 4ntDsZjXaE4VC16SwlXfpFNZntg7QqbKrAbyW8ntaiiwjDEES4dtzPFZ0H42N7jYE3b/QX5VkK
 TtHwk8stdo3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="284152164"
Received: from snlee-mobl1.ger.corp.intel.com (HELO [10.252.56.96])
 ([10.252.56.96])
 by fmsmga004.fm.intel.com with ESMTP; 05 May 2020 00:27:53 -0700
To: D Scott Phillips <d.scott.phillips@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200505000146.2295525-1-d.scott.phillips@intel.com>
 <874ksvtf86.fsf@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <be3e56eb-6b24-be70-d89e-e640533e976e@intel.com>
Date: Tue, 5 May 2020 10:27:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <874ksvtf86.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Put HDC flush pipe_control
 bit in the right dword
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 05/05/2020 03:09, D Scott Phillips wrote:
> D Scott Phillips <d.scott.phillips@intel.com> writes:
>
>> Previously we set HDC_PIPELINE_FLUSH in dword 1 of gen12
>> pipe_control commands. HDC Pipeline flush actually resides in
>> dword 0, and the bit we were setting in dword 1 was Indirect State
>> Pointers Disable, which invalidates indirect state in the render
>> context. This causes failures for userspace, as things like push
>> constant state gets invalidated.
>>
>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Signed-off-by: D Scott Phillips <d.scott.phillips@intel.com>
> also,
>
> Fixes: 4aa0b5d457f5 ("drm/i915/tgl: Add HDC Pipeline Flush")
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

I think Mika sent the same patch in "drm/i915/gen12: Fix HDC pipeline 
flush".

-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
