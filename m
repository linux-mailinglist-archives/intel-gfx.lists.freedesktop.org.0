Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE23A17B900
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 10:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A11C6ECA2;
	Fri,  6 Mar 2020 09:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A60C6ECA2;
 Fri,  6 Mar 2020 09:08:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20463790-1500050 for multiple; Fri, 06 Mar 2020 09:08:12 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158346890656.3081.15972895999609916750@emeril.freedesktop.org>
References: <20200305202707.204350-1-matthew.auld@intel.com>
 <158346890656.3081.15972895999609916750@emeril.freedesktop.org>
Message-ID: <158348569169.15044.11099871972001348982@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Mar 2020 09:08:11 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_properly_sanity_check_batch=5Fstart=5Foffset_=28rev2?=
 =?utf-8?q?=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Patchwork (2020-03-06 04:28:26)
> == Series Details ==
> 
> Series: drm/i915: properly sanity check batch_start_offset (rev2)
> URL   : https://patchwork.freedesktop.org/series/74287/
> State : success

Apologies, SPF vs intel.com again.

So, I think the _end variant should be for the inclusive endpoint which
is the less common form (there's only 3 where we use U32_MAX and the
other 24 all use size or total, i.e. exclusive).

So I would convert those 3 to use _end or _excl, and convert the main
overflow check to use >=
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
