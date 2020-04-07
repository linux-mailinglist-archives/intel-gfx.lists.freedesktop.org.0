Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8C21A1142
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E35F6E8A6;
	Tue,  7 Apr 2020 16:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E0C56E8A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:22:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20830149-1500050 for multiple; Tue, 07 Apr 2020 17:22:35 +0100
MIME-Version: 1.0
In-Reply-To: <20200407123540.601497-2-lionel.g.landwerlin@intel.com>
References: <20200407123540.601497-1-lionel.g.landwerlin@intel.com>
 <20200407123540.601497-2-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158627655632.8918.7532038582567584503@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 07 Apr 2020 17:22:36 +0100
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/perf: prepare driver to
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

Quoting Lionel Landwerlin (2020-04-07 13:35:39)
> -static struct intel_context *oa_context(struct i915_perf_stream *stream)
> -{
> -       return stream->pinned_ctx ?: stream->engine->kernel_context;
> -}

Idle thought: create a

stream->context = intel_context_create(stream->engine);

so I can stop worrying about the kernel_context. (What's the cost of one
more context, heh?)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
