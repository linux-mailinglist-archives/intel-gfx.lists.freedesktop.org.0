Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AE21192A0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 22:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488E989DA2;
	Tue, 10 Dec 2019 21:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5681189DA2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 21:02:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 13:02:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="215695717"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 10 Dec 2019 13:02:31 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.150.154])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBAL2UQ7011669; Tue, 10 Dec 2019 21:02:30 GMT
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
 <20191210204744.65276-2-michal.wajdeczko@intel.com>
 <157601131366.17013.13933214786705317799@skylake-alporthouse-com>
Date: Tue, 10 Dec 2019 22:02:30 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0cloqgv8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <157601131366.17013.13933214786705317799@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/uc: Add ops to intel_uc
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Dec 2019 21:55:13 +0100, Chris Wilson  
<chris@chris-wilson.co.uk> wrote:

> Quoting Michal Wajdeczko (2019-12-10 20:47:41)
>> @@ -628,3 +651,15 @@ int intel_uc_runtime_resume(struct intel_uc *uc)
>>          */
>>         return __uc_resume(uc, true);
>>  }
>> +
>> +const struct intel_uc_ops uc_ops_none = {
>> +};
>> +
>> +const struct intel_uc_ops uc_ops_off = {
>> +       .init_hw = __uc_check_hw,
>> +};
>> +
>> +const struct intel_uc_ops uc_ops_on = {
>> +       .init_hw = __uc_init_hw,
>> +       .fini_hw = __uc_fini_hw,
>> +};
>
> No externs in the headers, so should these be static?

but then forwards from top of the file will not work.
and early_init will have to be moved here as well.
doable, but wanted to minimize diffs during rfc phase.

Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
