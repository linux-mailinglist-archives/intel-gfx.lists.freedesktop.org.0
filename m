Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C071DC853
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 10:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492966E90E;
	Thu, 21 May 2020 08:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D3316E912
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 08:16:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21248857-1500050 for multiple; Thu, 21 May 2020 09:15:51 +0100
MIME-Version: 1.0
In-Reply-To: <20200521003803.18936-11-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-11-lucas.demarchi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159004895049.32320.12873319653894722023@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 21 May 2020 09:15:50 +0100
Subject: Re: [Intel-gfx] [PATCH 10/37] drm/i915: add pcie snoop flag
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
Cc: Matthew Auld <matthew.auld@intel.com>, fernando.pacheco@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-05-21 01:37:36)
> From: Matthew Auld <matthew.auld@intel.com>
> 
> Gen 12 dgfx devices are coherent with system memory even over PCIe.
> Therefore supporting coherent userptr should be possible.

Then set has-snoop with a comment that it is over PCIe. This patch only
covers one cache-coherent usecase, not all of them. Why not?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
