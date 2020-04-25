Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A25851B889D
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 20:52:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103616E24E;
	Sat, 25 Apr 2020 18:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475BA6E24E
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Apr 2020 18:52:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21021136-1500050 for multiple; Sat, 25 Apr 2020 19:51:29 +0100
MIME-Version: 1.0
In-Reply-To: <20200425175751.30358-4-chris@chris-wilson.co.uk>
References: <20200425175751.30358-1-chris@chris-wilson.co.uk>
 <20200425175751.30358-4-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158784068731.27391.8108147455405975102@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 25 Apr 2020 19:51:27 +0100
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gt: Switch to manual
 evaluation of RPS
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

Quoting Chris Wilson (2020-04-25 18:57:49)
> +static bool has_busy_stats(struct intel_rps *rps)
> +{
> +       struct intel_engine_cs *engine;
> +       enum intel_engine_id id;
> +
> +       for_each_engine(engine, rps_to_gt(rps), id) {
> +               if (!intel_engine_supports_stats(engine))

Bah. The engines are not setup by this point. For the moment, I can just
hardcode it :(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
