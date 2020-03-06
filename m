Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A4017B9D8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 11:07:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F16056ECB9;
	Fri,  6 Mar 2020 10:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79ADD6ECB9;
 Fri,  6 Mar 2020 10:07:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20464597-1500050 for multiple; Fri, 06 Mar 2020 10:07:12 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158347323192.3083.7686935640390455813@emeril.freedesktop.org>
References: <20200305203534.210466-1-matthew.auld@intel.com>
 <158347323192.3083.7686935640390455813@emeril.freedesktop.org>
Message-ID: <158348923171.19728.14494509241137403654@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Mar 2020 10:07:11 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_be_more_solid_in_checking_the_alignment?=
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

Quoting Patchwork (2020-03-06 05:40:31)
> == Series Details ==
> 
> Series: drm/i915: be more solid in checking the alignment
> URL   : https://patchwork.freedesktop.org/series/74353/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8074 -> Patchwork_16848
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Feels like we should convert is_power_of_2() to a type agnostic macro
ala round_up().

That said, this patch is correct and fixes a bug, so
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
