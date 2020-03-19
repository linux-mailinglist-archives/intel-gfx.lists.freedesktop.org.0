Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0496718BB2B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 16:31:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93276E172;
	Thu, 19 Mar 2020 15:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2773B6E172
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 15:31:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20619362-1500050 for multiple; Thu, 19 Mar 2020 15:31:42 +0000
MIME-Version: 1.0
In-Reply-To: <158463130128.7928.15426365065781422552@build.alporthouse.com>
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-3-chris@chris-wilson.co.uk>
 <c80cf573-f328-39ac-993d-8a7259ca4152@linux.intel.com>
 <158463015067.6873.9446816716629068800@build.alporthouse.com>
 <170af49b-d3d7-e717-c0b4-1ce7fd04630a@linux.intel.com>
 <158463130128.7928.15426365065781422552@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158463190157.7928.16452925586513582442@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 19 Mar 2020 15:31:41 +0000
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/execlists: Force single
 submission for sentinels
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

Quoting Chris Wilson (2020-03-19 15:21:41)
> First though, I have to answer the question of how I broke persistence.

Fwiw, it's the await_active update. Time to double check whether it is
flushing the barrier on demand.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
