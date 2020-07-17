Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86729224445
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 21:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AADB6EE2A;
	Fri, 17 Jul 2020 19:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8456EE2A;
 Fri, 17 Jul 2020 19:33:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21854107-1500050 for multiple; Fri, 17 Jul 2020 20:32:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200717141138.4a4289ac@xhacker.debian>
References: <20200717141138.4a4289ac@xhacker.debian>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 17 Jul 2020 20:32:44 +0100
Message-ID: <159501436493.15672.10863611355648667796@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't force IOSF_MBI
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jisheng Zhang (2020-07-17 07:11:38)
> The i915 doesn't depend on IOSF_MBI, asm/iosf_mbi.h already defines
> isof_mbi_* APIs when ISOF_MBI is disabled.
> 
> Don't force IOSF_MBI to allow disabling IOSF_MBI for non SoC platforms.

But it is required for Valleyview/Cherryview and we want to support
those by default. Tricky.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
