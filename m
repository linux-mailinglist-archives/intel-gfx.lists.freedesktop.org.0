Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AE303A2A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1BA89F2E;
	Tue, 26 Jan 2021 10:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 264BF89F6D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 10:27:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23701360-1500050 for multiple; Tue, 26 Jan 2021 10:27:01 +0000
MIME-Version: 1.0
In-Reply-To: <20210126094612.163290-2-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
 <20210126094612.163290-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 10:27:02 +0000
Message-ID: <161165682293.29150.8098339484779184026@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: reserve stolen for LMEM region
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

Quoting Matthew Auld (2021-01-26 09:46:07)
> @@ -162,7 +165,8 @@ setup_lmem(struct drm_i915_private *i915)
>                 drm_dbg(&i915->drm, "Intel graphics LMEM: %pR\n", &mem->region);
>                 drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
>                          &mem->io_start);
> -               drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n", &size);
> +               drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n",
> +                        &lmem_size);

LMEM is Intel jargon. Intel is more or less redundant here as we have
the device and driver already in the message.

drm_info(&i915->drm, "Local memory available: %pa\n", &lmem_size);
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
