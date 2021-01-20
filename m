Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5632FCDD9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 11:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A056E156;
	Wed, 20 Jan 2021 10:35:45 +0000 (UTC)
X-Original-To: Intel-GFX@Lists.FreeDesktop.Org
Delivered-To: Intel-GFX@Lists.FreeDesktop.Org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A216E156
 for <Intel-GFX@Lists.FreeDesktop.Org>; Wed, 20 Jan 2021 10:35:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23647902-1500050 for multiple; Wed, 20 Jan 2021 10:35:34 +0000
MIME-Version: 1.0
In-Reply-To: <63e1adda-d723-ab5c-e15b-22e0d81f9e8d@intel.com>
References: <20210113220724.2484897-1-John.C.Harrison@Intel.com>
 <63e1adda-d723-ab5c-e15b-22e0d81f9e8d@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-GFX@Lists.FreeDesktop.Org, John Harrison <john.c.harrison@intel.com>
Date: Wed, 20 Jan 2021 10:35:33 +0000
Message-ID: <161113893368.24677.11517182026026052834@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Add function to define
 defaults for GuC/HuC enable
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

Quoting John Harrison (2021-01-14 21:39:42)
> On 1/13/2021 14:07, John.C.Harrison@Intel.com wrote:
> 
>     From: John Harrison <John.C.Harrison@Intel.com>
> 
>     There is a module parameter for controlling what GuC/HuC features are
>     enabled. Setting to -1 means 'use the default'. However, the default
>     was not well defined, out of date and needs to be different across
>     platforms.
> 
>     The default is now to disable both GuC and HuC on legacy platforms
>     where legacy means TGL/RKL and anything prior to Gen12. For new
>     platforms, the default is to load HuC but not GuC as GuC submission
>     has not yet landed.
> 
> Daniele pointed out that the above wording is somewhat inaccurate. GuC is still
> loaded (in order to do HuC authentication). Better wording would be:
> 
>     The default is now to disable both GuC and HuC on legacy platforms
>     where legacy means TGL/RKL and anything prior to Gen12. For new
>     platforms, the default is to load HuC but not enable GuC submission
>     as that has not landed yet.

I did not observe any changes in default behaviour across CI, so pushed
with the amended text.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
