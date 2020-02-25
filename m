Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A6D16C23E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 14:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7756E202;
	Tue, 25 Feb 2020 13:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCA06E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 13:26:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20345401-1500050 for multiple; Tue, 25 Feb 2020 13:26:29 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200225130728.20198-1-jani.nikula@intel.com>
References: <20200225130728.20198-1-jani.nikula@intel.com>
Message-ID: <158263718815.26598.17202312224644171261@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Feb 2020 13:26:28 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: significantly reduce the use of
 <drm/i915_drm.h>
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-02-25 13:07:28)
> The #include has been splattered all over the place, but there are
> precious few places, all .c files, that actually need it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Trust in the compiler,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

The users of i915_drv.h that irk me the most are where we only want the
device_info/runtime_info. Might just bite the bullet and make those
pointers and so not have to traverse through i915.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
