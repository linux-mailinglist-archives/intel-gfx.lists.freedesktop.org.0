Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ABB132D0C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 18:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811D76E11A;
	Tue,  7 Jan 2020 17:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3502C6E11A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 17:31:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19799997-1500050 for multiple; Tue, 07 Jan 2020 17:31:46 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200107134009.3255354-1-chris@chris-wilson.co.uk>
References: <20200106234703.645168-1-matthew.auld@intel.com>
 <20200107134009.3255354-1-chris@chris-wilson.co.uk>
Message-ID: <157841830451.2273.15937108933797761363@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 07 Jan 2020 17:31:44 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: split up i915_gem_gtt
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-07 13:40:09)
> From: Matthew Auld <matthew.auld@intel.com>
> 
> Attempt to split i915_gem_gtt.[ch] into more manageable chunks.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Had one ack from Mika, the pain should be worth it in the end...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
