Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6261EE545
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 15:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322E86E3B7;
	Thu,  4 Jun 2020 13:25:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A94C6E3B7
 for <Intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 13:25:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21395674-1500050 for multiple; Thu, 04 Jun 2020 14:25:10 +0100
MIME-Version: 1.0
In-Reply-To: <20200603221150.14745-1-clinton.a.taylor@intel.com>
References: <20200603221150.14745-1-clinton.a.taylor@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org, clinton.a.taylor@intel.com
Message-ID: <159127710726.25109.14710135033049757544@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 04 Jun 2020 14:25:07 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Implement WA_16011163337
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

Quoting clinton.a.taylor@intel.com (2020-06-03 23:11:50)
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Set GS Timer to 224. Combine with Wa_1604555607 due to register FF_MODE2
> not being able to be read.
> 
> V2: Math issue fixed
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
