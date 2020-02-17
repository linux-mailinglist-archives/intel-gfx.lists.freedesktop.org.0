Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BAC160EBC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 10:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D3E89C94;
	Mon, 17 Feb 2020 09:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332D289C94
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 09:37:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 01:37:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,452,1574150400"; d="scan'208";a="223769775"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 01:37:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158163713950.4660.5341490618839546150@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200212144058.5686-1-jani.nikula@intel.com>
 <20200212144058.5686-2-jani.nikula@intel.com>
 <158163713950.4660.5341490618839546150@skylake-alporthouse-com>
Date: Mon, 17 Feb 2020 11:36:59 +0200
Message-ID: <871rqtwo5g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: switch vlv_suspend to use
 intel uncore register accessors
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

On Thu, 13 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-02-12 14:40:58)
>> Prefer intel_uncore_* over I915_READ, I915_WRITE, and POSTING_READ.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> A couple of older checkpatch errors that could be cleaned up (pure
> whitespacing).
>
> Both
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks, pushed with one space added to the 2nd patch to silence the
checkpatch.

> Half this code should be removed as we explicitly reset the registers on
> resume. (And if we need to add a few special runtime-resume hooks, would
> not be a bad thing). And the other half, probably should be removed with
> a bit of extra work.

It's been rainy lately, but I guess I'll be waiting for a rainier day
yet to embark on that. ;)

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
