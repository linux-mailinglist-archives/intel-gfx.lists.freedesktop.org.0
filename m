Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57492136B37
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 11:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3EF6E9AF;
	Fri, 10 Jan 2020 10:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D12236E9AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 10:41:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 02:41:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,416,1571727600"; d="scan'208";a="422075143"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jan 2020 02:41:43 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E2AF75C1DDE; Fri, 10 Jan 2020 12:41:11 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157856126607.13423.16621889387641618576@skylake-alporthouse-com>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
 <20200109085839.873553-11-chris@chris-wilson.co.uk>
 <87muaxf1b4.fsf@gaia.fi.intel.com>
 <157856126607.13423.16621889387641618576@skylake-alporthouse-com>
Date: Fri, 10 Jan 2020 12:41:11 +0200
Message-ID: <87y2ufvbjs.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/14] drm/i915: Drop the shadow ring state
 from the error capture
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-01-09 09:04:31)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > The shadow ring regs (ring->head, ring->tail) are meaningless in the
>> > post-mortem dump as they do not related to anything on HW. Remove them
>> > from the coredump.
>> 
>> We have been dumping these just to check that our bookkeepping matches?
>
> Kind off, but they never really match since the ring->head is very lazy,
> and ring->tail is wherever the user got up to. We have the relevant
> information from the request where we expect to be in the ring for the
> error, and the HW tells us where it was executing.
> -Chris

Ok, based on that and that  don't remember a single case where,
from external reports, these would have provided anything of value.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
