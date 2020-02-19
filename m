Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA7E16451C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 14:15:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2FD6E5D1;
	Wed, 19 Feb 2020 13:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036F96E5D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 13:14:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:14:59 -0800
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="229107016"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 05:14:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <8736b85ocs.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200217184219.15325-1-jani.nikula@intel.com>
 <158197120762.19707.7196148543838554400@skylake-alporthouse-com>
 <8736b85ocs.fsf@intel.com>
Date: Wed, 19 Feb 2020 15:14:55 +0200
Message-ID: <87k14ivhv4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: use spinlock_t instead of
 struct spinlock
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

On Tue, 18 Feb 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 17 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> Quoting Jani Nikula (2020-02-17 18:42:19)
>>> spinlock_t is one case where the typedef is to be preferred over struct
>>> spinlock.
>>> 
>>> Fixes: 42fb60de3129 ("drm/i915/gem: Don't leak non-persistent requests on changing engines")
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> If you say so,
>
> Checkpatch and a git grep popularity contest in the kernel tree say
> so...
>
>> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
>
> Thanks!

And pushed.

BR,
Jani.


>
>> If you look you might find a few more I've added ;)
>
> Oh? My git grep fails me then.
>
> BR,
> Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
