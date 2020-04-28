Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1E51BBB26
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 12:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FFC6E2DD;
	Tue, 28 Apr 2020 10:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589B26E2DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 10:23:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21044334-1500050 for multiple; Tue, 28 Apr 2020 11:23:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200428100816.951014-4-lionel.g.landwerlin@intel.com>
References: <20200428100816.951014-1-lionel.g.landwerlin@intel.com>
 <20200428100816.951014-4-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158806942253.24122.7411647690599477455@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 28 Apr 2020 11:23:42 +0100
Subject: Re: [Intel-gfx] [PATCH v7 3/4] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

Quoting Lionel Landwerlin (2020-04-28 11:08:15)
> +static int ctx_id_equal(const void *key, const void *elem)
> +{
> +       const struct i915_perf_context_detail *details = elem;
> +
> +       return ((int)details->id) - *((int *)key);
> +}
> +
> +static inline bool ctx_id_match(struct i915_perf_stream *stream,
> +                               u32 masked_ctx_id)
> +{
> +       return bsearch(&masked_ctx_id,

You might as well just (void *)(uintptr_t)masked_ctx_id and

static int ctx_id_cmp(const void *key, const void *elem)
{
       const struct i915_perf_context_detail *details = elem;

       return details->id - (uinptr_t)key;
}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
