Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E90B718CC6D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 12:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230826EB03;
	Fri, 20 Mar 2020 11:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9D06EB03
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 11:11:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20629166-1500050 for multiple; Fri, 20 Mar 2020 11:11:47 +0000
MIME-Version: 1.0
In-Reply-To: <20200320034901.102550-1-andi@etezian.org>
References: <20200320034901.102550-1-andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
Message-ID: <158470270622.7928.7469444156799101687@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 20 Mar 2020 11:11:46 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: move files more files into
 debugfs
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

Quoting Andi Shyti (2020-03-20 03:49:01)
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The following interfaces:
> 
> i915_wedged
> i915_forcewake_user
> i915_gem_interrupt
> i915_sseu_status
> 
> are dependent on gt values. Put them inside gt/ and drop the
> "i915_" prefix name. This would be the new structure:
> 
>   gt
>   |
>   +-- forcewake_user
>   |
>   +-- interrupt_info_show

Please tell me you didn't actually include _show :)

>   |
>   +-- sseu_status
>   |
>   +-- wedge

The world will rejoice when it's stopped being called wedged.
Well Mika will at any rate.

'echo rcs0 > reset' maybe? Yeah. Wait, but rcs0 is uabi name, so top
level.

Oh well, I definitely do not think copying a mistake is a good idea.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
