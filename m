Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C322C680E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A362F6EDFF;
	Fri, 27 Nov 2020 14:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1246EDFD;
 Fri, 27 Nov 2020 14:44:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23134526-1500050 for multiple; Fri, 27 Nov 2020 14:44:02 +0000
MIME-Version: 1.0
In-Reply-To: <20201127120718.454037-161-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
 <20201127120718.454037-161-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 14:44:02 +0000
Message-ID: <160648824214.2925.13439180367612166388@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC PATCH 160/162] drm/i915/dg1: Fix GPU hang due
 to shmemfs page drop
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-11-27 12:07:16)
> From: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
> 
> This is to fix a bug in upstream
> commit a6326a4f8ffb ("drm/i915/gt: Keep a no-frills swappable copy of the default context state")
> 
> We allocate context state obj ce->state from lmem, so in __engines_record_defaults(),
> we call shmem_create_from_object(). Because it is lmem object, this call will
> create a new shmemfs file, copy the contents into it, and return the file
> pointer and assign to engine->default_state. Of course ce->state lmem object
> is freed at the end of function __engines_record_redefaults().
> 
> Because a new shmemfs file is create for engine->default_state,
> and more importantly, we DON'T mark the pages dirty after we write into it,
> the OS page cache eviction will drop these pages.
> 
> Now with the test move forward, it will create new request/context, and will
> copy the saved engine->default_state into ce->state. If the default_state
> pages are dropped during page cache eviction, the copying will get new pages,
> and copy garbage from the new pages. Next, ce->state will have wrong
> instruction and causes GPU to hang.
> 
> The fixing is very simple, we just mark the shmemfs pages to be dirty when
> writing into it, and also mark the pages to accessed when read/write to them.
> 
> Fixes: a6326a4f8ffb("drm/i915/gt: Keep a no-frills swappable copy of the default context state")

A bug fix, send it. But please write a concise changelog first.

I missed setting the dirty bit, and so the contents were not being saved
on swap out as expected. Impact is severe; any context created after
resume may be gibberish.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
