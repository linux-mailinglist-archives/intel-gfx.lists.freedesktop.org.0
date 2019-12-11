Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C4611A83E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 10:51:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2D56EAEB;
	Wed, 11 Dec 2019 09:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEB46EAEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 09:51:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 01:51:17 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="207619594"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.9.238])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 01:51:15 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191207170110.2200142-4-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-4-chris@chris-wilson.co.uk>
Message-ID: <157605787319.10520.14379713661753545434@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 11 Dec 2019 11:51:13 +0200
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/gem: Tidy up error handling
 for eb_parse()
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

Quoting Chris Wilson (2019-12-07 19:01:06)
> As the caller no longer uses the i915_vma result, stop returning it and
> just return the error code instead.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

<SNIP>

> @@ -2002,8 +2007,6 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
>                                       eb->batch_len,
>                                       vma);
>         if (err) {
> -               i915_vma_unpin(vma);
> -
>                 /*
>                  * Unsafe GGTT-backed buffers can still be submitted safely
>                  * as non-secure.
> @@ -2012,10 +2015,8 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
>                  */
>                 if (i915_vma_is_ggtt(vma) && err == -EACCES)
>                         /* Execute original buffer non-secure */

This second comment is bit of a repetition, especially after the code
flow is simplified.

Either way;

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
