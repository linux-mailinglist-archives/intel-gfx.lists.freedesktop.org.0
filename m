Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB919557E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 11:42:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119926E9F7;
	Fri, 27 Mar 2020 10:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EDE6E9F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 10:42:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20711129-1500050 for multiple; Fri, 27 Mar 2020 10:42:10 +0000
MIME-Version: 1.0
In-Reply-To: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158530572912.19268.13066457564563491836@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 27 Mar 2020 10:42:09 +0000
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915/perf: add support for multi
 context filtering
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

Quoting Lionel Landwerlin (2020-03-27 10:32:06)
> Hi all,
> 
> i915/perf has currently support for single context filtering. This
> allows mesa to read the content of the OA buffer and cut out any
> unrelated context running in a middle of a query.
> 
> Iris currently uses 2 GEM contexts for 3D & compute commands. In order
> to support performance queries on the compute context we need to be
> able to also filter on the second GEM context used for compute
> commands.
> 
> This series add support for filtering up to 4 GEM contexts in
> i915/perf.

Why make it a fixed size? [From a quick look it's just fixed storage as
you use a dynamically sized array. Considered sorting and bsearching?]
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
