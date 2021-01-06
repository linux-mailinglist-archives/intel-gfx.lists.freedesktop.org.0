Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63102EB85E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 04:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361AF89D64;
	Wed,  6 Jan 2021 03:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9F8A89D64
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 03:11:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23513431-1500050 for multiple; Wed, 06 Jan 2021 03:11:42 +0000
MIME-Version: 1.0
In-Reply-To: <0c89c2d0-fad1-47e8-65cb-bf9ea3c4f43d@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-2-daniele.ceraolospurio@intel.com>
 <160989453161.14894.2049892555635163776@build.alporthouse.com>
 <0c89c2d0-fad1-47e8-65cb-bf9ea3c4f43d@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 06 Jan 2021 03:11:41 +0000
Message-ID: <160990270114.22606.3882503683077086744@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/guc: Delete GuC code unused in
 future patches
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

Quoting Daniele Ceraolo Spurio (2021-01-06 02:28:46)
> 
> 
> On 1/5/2021 4:55 PM, Chris Wilson wrote:
> > Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:43)
> >> From: Matthew Brost <matthew.brost@intel.com>
> >>
> >> Delete GuC code unused in future patches that rewrite the GuC interface
> >> to work with the new firmware. Most of the code deleted relates to
> >> workqueues or execlist port.
> > Should we not be complaining if i915.enable_guc=1 is set during this
> > time? We may already be, if so please mention it so that we know that
> > nobody can accidentally execute this code.
> > -Chris
> 
> We already do, I'll add a note in the commit message.

With a quick explanation as to how it can do no harm,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
