Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDAB7B78D0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 09:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA2910E0DD;
	Wed,  4 Oct 2023 07:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A976F10E0DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 07:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696404895; x=1727940895;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NKIJqGk8UxDbxXX56tGFOPIi1JBVeCFy5GpSe42Fq3A=;
 b=if34Ywo5Seqp3LLrzAvN8tRx+Q4Ekrgv+y+/e24sy5GwdGjKoqb5ZXhd
 0qpO8S80vbNYOSKvMxNdpblYUSLlXD7ot09F87e5PeBUoYbEJzyAOL8GW
 RqKciUDmL1qGzQVOES6Xh0QwP596Hc77I58A7IfpjVsRaja1UNJC4hrIH
 Nc2oovN3Cn6dK6rJra3FpC2A0522KBJTONXSjHrCCoi/K8Ky6W8D4lxlF
 9h4GPCGs2JUAMCkkJoVrCxVJsrdogvWDNRo3tkT4WphB+6mAzq2jzWfxs
 OTIWR6MBT3w3gObUi+k8g/argtBNT4luHXzEJmIf289wCF+De/ApsdNBe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="1690052"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; 
   d="scan'208";a="1690052"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 00:34:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="821561812"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="821561812"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 00:34:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
In-Reply-To: <fabf3fc6-526a-2896-d9b3-1b54f184f82c@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231002172419.1017044-1-jonathan.cavitt@intel.com>
 <20231002172419.1017044-3-jonathan.cavitt@intel.com>
 <8734ysgc5c.fsf@intel.com> <ZRw6UNs8IeFN+/tD@ashyti-mobl2.lan>
 <fabf3fc6-526a-2896-d9b3-1b54f184f82c@intel.com>
Date: Wed, 04 Oct 2023 10:34:48 +0300
Message-ID: <87mswyg7s7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915: Perform TLB invalidation
 on all GTs during suspend/resume
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
Cc: janusz.krzysztofik@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 03 Oct 2023, John Harrison <john.c.harrison@intel.com> wrote:
> On 10/3/2023 08:59, Andi Shyti wrote:
>> Hi Jani,
>>
>>>> Consider multi-gt support when cancelling all tlb invalidations on
>>>> suspend, and when submitting tlb invalidations on resume.
>>>>
>>>> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>> CC: John Harrison <John.C.Harrison@Intel.com>
>>> I guess I'm wondering why the top level suspend hook needs to iterate
>>> gts instead of some lower level thing. We should aim to reduce
>>> gem/gt/display details from the top level.
>> I'm not sure I am understanding the question.
>>
>> The TLB invalidation details are kept under the GT. But when
>> suspend is called, then the GT invalidation has to be triggered
>> by the top levels for each GT. Right?
> I think Jani's point is that the top level should be:
> i915_drm_suspend(...) {
>  =C2=A0=C2=A0 ...
>  =C2=A0=C2=A0 intel_tlb_suspend(dev_priv);
> }
>
> Then the TLB suspend helper function calls into the GT / UC layers as=20
> appropriate. But none of that internal only detail is exposed at the top=
=20
> level.

That's right, thanks for clarifying.

BR,
Jani.


>
> John.
>
>>
>> Thanks,
>> Andi
>

--=20
Jani Nikula, Intel
