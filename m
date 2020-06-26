Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A5C20B645
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 18:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729F76ECE2;
	Fri, 26 Jun 2020 16:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 536916ECE2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 16:50:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21627480-1500050 for multiple; Fri, 26 Jun 2020 17:50:28 +0100
MIME-Version: 1.0
In-Reply-To: <f4549696-cc18-cf02-e2a3-c5d6c6970e80@intel.com>
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-5-daniele.ceraolospurio@intel.com>
 <78523c30-5aa6-ee94-722f-a0ed40b320b8@linux.intel.com>
 <f4549696-cc18-cf02-e2a3-c5d6c6970e80@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 17:50:26 +0100
Message-ID: <159319022639.13600.1018762874880323717@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Move the engine mask to
 intel_gt_info
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

Quoting Daniele Ceraolo Spurio (2020-06-26 17:44:20)
> 
> 
> On 6/26/20 7:45 AM, Tvrtko Ursulin wrote:
> > 
> > Only thing which looks a bit sub-optimalis the name "max_engine_mask", 
> > but maybe it is just me, that max and masks do not go well together. 
> > Only alternative I have for the moment is platform_engine_mask? Or the 
> > usual double underscore approach. Either way:
> > 
> 
> I wasn't fully convinced of max_engine_mask either, buy I had no better 
> ideas :)
> 
> platform_engine_mask sounds good to me, I'll use that.

all_engine_mask
full_engine_mask
possible_engine_mask
platform_engine_mask

+1 for platform_engine_mask
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
