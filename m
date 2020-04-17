Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D301AE3BE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 19:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB416E241;
	Fri, 17 Apr 2020 17:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB6286E241
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 17:22:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20936717-1500050 for multiple; Fri, 17 Apr 2020 18:22:55 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E86630102122D8E@FMSMSX108.amr.corp.intel.com>
References: <20200417152244.77623-1-michael.j.ruhl@intel.com>
 <158713809922.2062.18026137702042561111@build.alporthouse.com>
 <14063C7AD467DE4B82DEDB5C278E86630102121C8A@FMSMSX108.amr.corp.intel.com>
 <158714019161.2062.5864722017291721274@build.alporthouse.com>
 <14063C7AD467DE4B82DEDB5C278E86630102122D8E@FMSMSX108.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <158714417361.2062.5827641973080459185@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 18:22:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a
 common helper
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

Quoting Ruhl, Michael J (2020-04-17 18:14:24)
> Ahh, I just remembered why I did not put the work arounds in the new
> helper.
> 
> I discovered that the  intel_gmch_probe() code is in the char/agp directory,
> so the path is:
> 
> i915 set dma_mask
> < gen5 set dma_mask
> i915 < gen 5 work arounds
> 
> If I put the workarounds in the set dma mask, I lose the workaround.
> 
> Hmmm, intel_gmch_probe() has  "gpu_pdev" to indicate that it is being
> inited from i915.  I could use this to skip the dma mask setting for this
> path.
> 
> Is that reasonable?

If this is the straw the breaks the camel's back to pull in the gmch
code under gt/, let me add a pile of hay!

Honestly, I would set the dma masks as we think they should be here and
if they are being overridden in char/agp, so be it. When we do pull the
code out, it will remain correct; and overall with the refactoring you
are doing the driver will be much more consistent across all gen.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
