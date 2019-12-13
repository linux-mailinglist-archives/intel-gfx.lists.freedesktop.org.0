Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B0511E733
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 16:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0006C6E914;
	Fri, 13 Dec 2019 15:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BE96E914
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 15:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19569855-1500050 for multiple; Fri, 13 Dec 2019 15:58:59 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191213155152.69182-1-venkata.s.dhanalakota@intel.com>
 <20191213155152.69182-2-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191213155152.69182-2-venkata.s.dhanalakota@intel.com>
Message-ID: <157625273637.7535.568994149336171117@skylake-alporthouse-com>
Date: Fri, 13 Dec 2019 15:58:56 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Introduce new macros for
 tracing
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

Quoting Venkata Sandeep Dhanalakota (2019-12-13 15:51:52)
> New macros ENGINE_TRACE(), CE_TRACE(), RQ_TRACE() and
> GT_TRACE() are introduce to tag device name and engine
> name with contexts and requests tracing in i915.
> 
> Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

That is a nice improvement!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
