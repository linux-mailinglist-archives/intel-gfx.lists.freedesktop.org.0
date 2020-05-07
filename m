Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2901C9658
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 18:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E3F6E156;
	Thu,  7 May 2020 16:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8656E156
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 16:22:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21141257-1500050 for multiple; Thu, 07 May 2020 17:22:23 +0100
MIME-Version: 1.0
In-Reply-To: <20200507142045.8668-1-mika.kuoppala@linux.intel.com>
References: <158885907681.20858.14209789974764134586@build.alporthouse.com>
 <20200507142045.8668-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158886854097.9967.14921816458809949875@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 17:22:20 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen12: Add aux table invalidate
 for all engines
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

Quoting Mika Kuoppala (2020-05-07 15:20:45)
> All engines, exception being blitter as it does not
> care about the form, can access compressed surfaces.
> 
> So we need to add forced aux table invalidates
> for those engines.
> 
> v2: virtual instance masking (Chris)
> v3: bug on if not found (Chris)
> 
> References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")
> References bspec#43904, hsdes#1809175790
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Chuansheng Liu <chuansheng.liu@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

The code handles the more complicated vengs without exploding, so looks
good. But I still think is a w/a and only deserves an ack as something
that empirically works [although we have a lack of evidence situation
here :],
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
