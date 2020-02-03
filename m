Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E211503D9
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 11:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CBD46EB9C;
	Mon,  3 Feb 2020 10:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E579A6EB9C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 10:09:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 02:09:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="230968263"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2020 02:09:31 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 013A9UD7014705; Mon, 3 Feb 2020 10:09:30 GMT
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20200203095413.45084-1-michal.wajdeczko@intel.com>
 <158072388824.20090.16406597674750954560@skylake-alporthouse-com>
Date: Mon, 03 Feb 2020 11:09:30 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0feo54hgxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <158072388824.20090.16406597674750954560@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/guc: Stop using mutex while
 sending CTB messages
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

On Mon, 03 Feb 2020 10:58:08 +0100, Chris Wilson  
<chris@chris-wilson.co.uk> wrote:

> Quoting Michal Wajdeczko (2020-02-03 09:54:13)
>>  void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>>  {
>> +       int i;
>> +
>>         spin_lock_init(&ct->requests.lock);
>>         INIT_LIST_HEAD(&ct->requests.pending);
>>         INIT_LIST_HEAD(&ct->requests.incoming);
>>         INIT_WORK(&ct->requests.worker,  
>> ct_incoming_request_worker_func);
>> +       for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
>> +               spin_lock_init(&ct->ctbs[i].lock);
>> +                
>> lockdep_set_subclass_and_mark_as_used(&ct->ctbs[i].lock, i);
>
> Trybot warned of another issue...

Hmm, trybot mislead me by reporting only one other false-positive
and I failed to check 'details' on my own, thanks for help!
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
