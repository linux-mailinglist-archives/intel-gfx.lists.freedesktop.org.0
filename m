Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D311C5DAD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 18:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0BE89F9F;
	Tue,  5 May 2020 16:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C42B89F9F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 16:34:42 +0000 (UTC)
IronPort-SDR: JL2mowHEV/iqzzPMsrCDoeajKuSKlk63ygpP+zFHSe0cDXGeiMj+D5Qut7mlkZhgBaDfai4HvG
 9p1iXjYJaVPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 09:34:40 -0700
IronPort-SDR: ECHYHir9U0ci3m5gkIGq2qSIwGUiJK9cv5X5MJv/koCxeLeIPef/Uriu76g5m8Elw+2306k3Dn
 1S542+av3Vsg==
X-IronPort-AV: E=Sophos;i="5.73,356,1583222400"; d="scan'208";a="259755733"
Received: from dsp-dsk1.jf.intel.com (HELO localhost) ([10.54.70.63])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 09:34:40 -0700
From: D Scott Phillips <d.scott.phillips@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <be3e56eb-6b24-be70-d89e-e640533e976e@intel.com>
References: <20200505000146.2295525-1-d.scott.phillips@intel.com>
 <874ksvtf86.fsf@intel.com> <be3e56eb-6b24-be70-d89e-e640533e976e@intel.com>
Date: Tue, 05 May 2020 09:32:07 -0700
Message-ID: <87sggecph4.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lionel Landwerlin <lionel.g.landwerlin@intel.com> writes:

> On 05/05/2020 03:09, D Scott Phillips wrote:
>> D Scott Phillips <d.scott.phillips@intel.com> writes:
>>
>>> Previously we set HDC_PIPELINE_FLUSH in dword 1 of gen12
>>> pipe_control commands. HDC Pipeline flush actually resides in
>>> dword 0, and the bit we were setting in dword 1 was Indirect State
>>> Pointers Disable, which invalidates indirect state in the render
>>> context. This causes failures for userspace, as things like push
>>> constant state gets invalidated.
>>>
>>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Signed-off-by: D Scott Phillips <d.scott.phillips@intel.com>
>> also,
>>
>> Fixes: 4aa0b5d457f5 ("drm/i915/tgl: Add HDC Pipeline Flush")
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
> I think Mika sent the same patch in "drm/i915/gen12: Fix HDC pipeline 
> flush".
>
> -Lionel

Ah, quite right, I missed it. Ignore this.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
