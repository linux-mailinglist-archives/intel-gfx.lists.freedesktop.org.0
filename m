Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A314614F0E6
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 17:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9696E9CF;
	Fri, 31 Jan 2020 16:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C436E9D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 16:51:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 08:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="310049305"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 08:51:17 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00VGpGVg029486; Fri, 31 Jan 2020 16:51:16 GMT
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20200131145834.77756-1-michal.wajdeczko@intel.com>
 <158048483501.2430.4544818151209295353@skylake-alporthouse-com>
Date: Fri, 31 Jan 2020 17:51:16 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0e9nrqcfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <158048483501.2430.4544818151209295353@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Stop using mutex while
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

On Fri, 31 Jan 2020 16:33:55 +0100, Chris Wilson  
<chris@chris-wilson.co.uk> wrote:

> Quoting Michal Wajdeczko (2020-01-31 14:58:34)
>> While we are always using CT "send" buffer to send request messages
>> to GuC, we usually don't ask GuC to use CT "receive" buffer to send
>> back response messages, since almost all returned data can fit into
>> reserved bits in status dword inside CT descriptor. However, relying
>> on data modifications inside CT descriptor requires use of mutex to
>> allow only single CT request in flight, until we read back that status
>> dword from the CT descriptor.
>
> Q. do we need the same lock for ct_read() and ct_write()?

No. And additionally I missed that ct_read() was already implicitly locked
with gt->irq_lock by gen11_gt_irq_handler and with i915->irq_lock by
guc_enable_communication() - need to fix that too ;(

>
> Could ct_read() use a lock-free ringbuffer, and then if I've read it
> right, you wouldn't have any overlapping spinlock between the interrupt
> handler and the rest (thus avoiding the interrupt-off).

Not sure if can go lock-free with two callers, will look for gt->irq_lock
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
