Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 180821ADA42
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 11:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055916E3EB;
	Fri, 17 Apr 2020 09:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D206E3E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 09:43:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20930523-1500050 for multiple; Fri, 17 Apr 2020 10:43:41 +0100
MIME-Version: 1.0
In-Reply-To: <20200417093046.102979-1-matthew.auld@intel.com>
References: <20200417093046.102979-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158711662049.5570.5647019831701350601@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 10:43:40 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pages: some more unsigned long
 conversions
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

Quoting Matthew Auld (2020-04-17 10:30:46)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 54ee658bb168..0399940fff94 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -236,7 +236,7 @@ struct drm_i915_gem_object {
>  
>                 struct i915_gem_object_page_iter {
>                         struct scatterlist *sg_pos;
> -                       unsigned int sg_idx; /* in pages, but 32bit eek! */
> +                       unsigned long sg_idx; /* in pages */

iirc sg_idx is still unsigned int.

Could you keep this and idx as int but add some GEM_BUG_ON(overflows_type)
Hmm, or probably better would be overflows_type(sg->len) which is I
think the trouble iirc.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
