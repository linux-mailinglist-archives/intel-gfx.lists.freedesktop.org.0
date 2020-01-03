Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE1812FDF4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36468891C3;
	Fri,  3 Jan 2020 20:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8450891C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 20:31:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19764617-1500050 for multiple; Fri, 03 Jan 2020 20:31:44 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200103200030.334215-1-matthew.auld@intel.com>
 <20200103200030.334215-2-matthew.auld@intel.com>
In-Reply-To: <20200103200030.334215-2-matthew.auld@intel.com>
Message-ID: <157808350303.11773.9826873157383245212@skylake-alporthouse-com>
Date: Fri, 03 Jan 2020 20:31:43 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: refactor the storage
 assumptions around paging structures
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

Quoting Matthew Auld (2020-01-03 20:00:29)
> We currently assume we have struct pages for the backing storage of our
> paging structures, however in the future we may also want to support
> allocating storage from non-page backed memory, while still being able
> to map it into the kernel address space for CPU access.

Please, let's not put a vfunc this deep / frequent. The next step was to
move this into gt/intel_gtt.c, gt/gen6_ppgtt.c, gt/gen8_ppgtt.c and
possibly gt/gen12_ppgtt.c for future directions.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
