Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3E2249E7E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 14:46:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECEC789DC9;
	Wed, 19 Aug 2020 12:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B37F89DC9;
 Wed, 19 Aug 2020 12:46:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22173661-1500050 for multiple; Wed, 19 Aug 2020 13:46:12 +0100
MIME-Version: 1.0
In-Reply-To: <87h7sy7r1a.fsf@intel.com>
References: <20200819115353.59592-1-andriy.shevchenko@linux.intel.com>
 <159783838601.667.13987031157680370712@build.alporthouse.com>
 <87h7sy7r1a.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 13:46:14 +0100
Message-ID: <159784117463.667.14083963249056080662@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915/gt: convert tasklets to use new
 tasklet_setup() API
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-08-19 13:34:41)
> On Wed, 19 Aug 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Quoting Andy Shevchenko (2020-08-19 12:53:53)
> >> In preparation for unconditionally passing the struct tasklet_struct
> >> pointer to all tasklet callbacks, switch to using the new tasklet_setup()
> >> and from_tasklet() to pass the tasklet pointer explicitly.
> >> 
> >> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > -Chris
> 
> Uh, what?

Copy-n-paste too far.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
