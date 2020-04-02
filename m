Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4655F19BC50
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 09:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D1E6E9D3;
	Thu,  2 Apr 2020 07:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F127A6E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 07:12:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20772144-1500050 for multiple; Thu, 02 Apr 2020 08:12:29 +0100
MIME-Version: 1.0
In-Reply-To: <20200331114821.81957-2-lionel.g.landwerlin@intel.com>
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
 <20200331114821.81957-2-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158581155027.5852.16665886559165630421@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 08:12:30 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/perf: prepare driver to
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

Quoting Lionel Landwerlin (2020-03-31 12:48:20)
> -static struct intel_context *oa_context(struct i915_perf_stream *stream)
> -{
> -       return stream->pinned_ctx ?: stream->engine->kernel_context;

Maybe better to use pinned_ctxs[0] if set?

There are certain risks* to using the kernel_context, so we should keep
its use minimised.

* Mostly the danger of hangs/corruption, inadvertent global barriers.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
