Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B53D120650
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D1A6E514;
	Mon, 16 Dec 2019 12:52:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C329C6E50D
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:52:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19595055-1500050 for multiple; Mon, 16 Dec 2019 12:51:56 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <157650071542.2428.8379097773696203670@skylake-alporthouse-com>
Date: Mon, 16 Dec 2019 12:51:55 +0000
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Expose list of clients in
 sysfs
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

Quoting Tvrtko Ursulin (2019-12-16 12:07:01)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Expose a list of clients with open file handles in sysfs.
> 
> This will be a basis for a top-like utility showing per-client and per-
> engine GPU load.
> 
> Currently we only expose each client's pid and name under opaque numbered
> directories in /sys/class/drm/card0/clients/.
> 
> For instance:
> 
> /sys/class/drm/card0/clients/3/name: Xorg
> /sys/class/drm/card0/clients/3/pid: 5664
> 
> v2:
>  Chris Wilson:
>  * Enclose new members into dedicated structs.
>  * Protect against failed sysfs registration.
> 
> v3:
>  * sysfs_attr_init.
> 
> v4:
>  * Fix for internal clients.
> 
> v5:
>  * Use cyclic ida for client id. (Chris)

I think we are now in the age of xa_alloc_cyclic(). At least the
immediate benefit is that we don't have to worry about the ida locking.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
