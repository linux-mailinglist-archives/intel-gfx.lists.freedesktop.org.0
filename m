Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 449CE1354A9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEC796E3F7;
	Thu,  9 Jan 2020 08:46:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F3B6E3F7
 for <Intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:46:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 00:46:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="421715428"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jan 2020 00:46:33 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CA81F5C1DE9; Thu,  9 Jan 2020 10:46:02 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <157850084100.13423.10479098209136206233@skylake-alporthouse-com>
References: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
 <157850084100.13423.10479098209136206233@skylake-alporthouse-com>
Date: Thu, 09 Jan 2020 10:46:02 +0200
Message-ID: <87pnftf25x.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915/tgl:
 Wa_1607138340"
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

> Quoting Tvrtko Ursulin (2020-01-08 16:19:54)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> 
>> This reverts commit 08fff7aeddc9dd72161b4c8fc27fbab12b4b9352.
>> 
>> For some yet unexplained reason not having this improves stability of some
>> media workloads.
>> 
>> Promise is that the media hang will be root caused properly and in the
>> meantime absence of this workaround is unlikely to cause problems.
>
> I suspect this is shooting the messenger. The danger is that we rely on
> FORCE_RESTORE for preemption, and so if this bit is triggering the issue,
> their problem just becomes more sporadic.

Noted. But lets get a sample point with A0. We kind
of know where to focus our gaze from now on.

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
