Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8422ECD18
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 10:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8311089D4B;
	Thu,  7 Jan 2021 09:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51AE89D49;
 Thu,  7 Jan 2021 09:49:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23525409-1500050 for multiple; Thu, 07 Jan 2021 09:49:24 +0000
MIME-Version: 1.0
In-Reply-To: <20210107094002.GL7444@platvala-desk.ger.corp.intel.com>
References: <20201204195007.10215-1-janusz.krzysztofik@linux.intel.com>
 <160992609788.26089.16341465923272154441@build.alporthouse.com>
 <20210107094002.GL7444@platvala-desk.ger.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Petri Latvala <petri.latvala@intel.com>
Date: Thu, 07 Jan 2021 09:49:23 +0000
Message-ID: <161001296371.839.15704890818022752458@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] runner: Don't kill a test on taint
 if watching timeouts
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Petri Latvala (2021-01-07 09:40:02)
> On Wed, Jan 06, 2021 at 09:41:37AM +0000, Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2020-12-04 19:50:07)
> > > We may still be interested in results of a test even if it has tainted
> > > the kernel.  On the other hand, we need to kill the test on taint if no
> > > other means of killing it on a jam is active.
> > > 
> > > If abort on both kernel taint or a timeout is requested, decrease all
> > > potential timeouts significantly while the taint is detected instead of
> > > aborting immediately.  However, report the taint as the reason of the
> > > abort if a timeout decreased by the taint expires.
> > 
> > This has the nasty side effect of not stopping the test run after a
> > kernel taint. Instead the next test inherits the tainted condition from
> > the previous test and usually ends up being declared incomplete.
> > 
> > False positives are frustrating.
> > -Chris
> 
> 
> Do you have a link to a test run where this happened? This patch
> didn't change the between-tests abort checks.

The taint is from the warnings in the penultimate test:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9550/shard-skl7/igt_runner20.txt
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
