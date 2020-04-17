Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653721AE0A9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:13:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29246EC32;
	Fri, 17 Apr 2020 15:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961346EC32
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 15:13:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20935004-1500050 for multiple; Fri, 17 Apr 2020 16:13:22 +0100
MIME-Version: 1.0
In-Reply-To: <20200417144429.20575-2-mika.kuoppala@linux.intel.com>
References: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
 <20200417144429.20575-2-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158713640049.2062.15423457575842474241@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 16:13:20 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Add live selftests for
 indirect ctx batchbuffers
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

Quoting Mika Kuoppala (2020-04-17 15:44:28)
> Add live selftest for indirect ctx context batchbuffers

A quick why about what you want to achieve. (Or just pull into the user
as proof that it works.)

> +static int __per_ctx_bb(struct intel_engine_cs *engine)
> +{
> +       struct intel_context *ce1, *ce2;
> +       int err = 0;

Either here or live_lrc_indirect_ctx_bb a quick summary of operations.
What you are testing and how.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
