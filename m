Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7B42EB732
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F38189916;
	Wed,  6 Jan 2021 00:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FBC89916
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 00:58:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23512997-1500050 for multiple; Wed, 06 Jan 2021 00:58:22 +0000
MIME-Version: 1.0
In-Reply-To: <20210105231947.31235-3-daniele.ceraolospurio@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-3-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 06 Jan 2021 00:58:20 +0000
Message-ID: <160989470089.14894.2097316461568983303@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/guc: do not dump execlists
 state with GuC submission
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

Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:44)
> GuC owns the execlists state and the context IDs used for submission, so
> the status of the ports and the CSB entries are not something we control
> or can decode from the i915 side, therefore we can avoid dumping it. A
> follow-up patch will also stop setting the csb pointers when using GuC
> submission.
> 
> GuC dumps all the required events in the GuC logs when verbosity is set
> high enough.

Would not be worth including, or is it not very helpful for debugging
curious engine stalls?

> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
