Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA712E518
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 11:54:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD956E045;
	Thu,  2 Jan 2020 10:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6086E045
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 10:54:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19747724-1500050 for multiple; Thu, 02 Jan 2020 10:54:17 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <87k16atc5m.fsf@intel.com>
In-Reply-To: <87k16atc5m.fsf@intel.com>
Message-ID: <157796245579.3681.9128977576441192128@skylake-alporthouse-com>
Date: Thu, 02 Jan 2020 10:54:15 +0000
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Fix cmdparser drm.debug
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

Quoting Jani Nikula (2020-01-02 09:56:05)
> On Sat, 07 Dec 2019, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > The cmdparser rejection debug is not for driver development, but for the
> > user, for which we use a plain DRM_DEBUG().
> 
> ...
> 
> > -     DRM_DEBUG_DRIVER("CMD: Abnormal rcs cmd length! 0x%08X\n", cmd_header);
> > +     DRM_DEBUG("CMD: Abnormal rcs cmd length! 0x%08X\n", cmd_header);
> 
> That's not what the documentation says about the difference between
> DRM_DEBUG and DRM_DEBUG_DRIVER.

Please note these have nothing to do with debugging the driver in any
form whatsoever.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
