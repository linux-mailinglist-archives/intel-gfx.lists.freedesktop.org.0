Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9031FBE6D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 20:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2F26E186;
	Tue, 16 Jun 2020 18:47:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D466E186
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 18:47:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21517350-1500050 for multiple; Tue, 16 Jun 2020 19:47:21 +0100
MIME-Version: 1.0
In-Reply-To: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Shaofeng Tang <shaofeng.tang@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <159233324036.19488.6385709597388673560@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 16 Jun 2020 19:47:20 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
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
Cc: Shaofeng Tang <shaofeng.tang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Shaofeng Tang (2020-06-16 09:29:20)
> [Why]
> Query if vgpu is active, it is useful to the user.
> Currently, only the primary plane is usable when vgpu is active.
> The value of vgpu active is useful for user to determine
> how many planes can be used. also useful for user to
> determine different behaviors according to vgpu is active or not.

The number of planes must be queried via kms, and all such kernel
capabilities should be declared via the appropriate interface.

I am not saying that there is not potentially good reason to let the
user to know it's a virtual gpu, but hardcoding api limits in the client
based on the parameter is a bad idea.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
