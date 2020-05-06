Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638D01C7440
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 17:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D446E853;
	Wed,  6 May 2020 15:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA316E2BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 15:22:31 +0000 (UTC)
IronPort-SDR: zvcs3BHZFbZULzex+bgEEFQ1RbV+iJBHXFpda23t3P066YGl5Z9WbEKDOWF/7Cy0r5O4e5mbzf
 Hp5evULvhNnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 08:22:30 -0700
IronPort-SDR: QSeMeMZFI8Z4HxyDgd3ScWL3BjD/oiLE/qtRRkmvOnSbWoiWPinVAEi7lc/ZMJI/RQYSPXMCkO
 j8VDvDeIByJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="284655481"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 06 May 2020 08:22:29 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5DB525C1F36; Wed,  6 May 2020 18:20:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158877715660.927.5979318415732712309@build.alporthouse.com>
References: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
 <20200506144734.29297-4-mika.kuoppala@linux.intel.com>
 <158877715660.927.5979318415732712309@build.alporthouse.com>
Date: Wed, 06 May 2020 18:20:22 +0300
Message-ID: <87lfm5nl8p.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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

> Quoting Mika Kuoppala (2020-05-06 15:47:34)
>> Aux table invalidation can fail on update. So
>> next access may cause memory access to be into stale entry.
>> 
>> Proposed workaround is to invalidate entries between
>> all batchbuffers.
>
> This sounds like it should have a sunset clause. Do we anticipate being
> able to drop this w/a in future?

Rafael kindly pointed out that Mesa already does this:
https://gitlab.freedesktop.org/mesa/mesa/-/blob/master/src/gallium/drivers/iris/iris_state.c#L5131
So I would say we can drop this patch.

But it makes me wonder that is that LRI dropped for not being whitelisted.

-Mika
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
