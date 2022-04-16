Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C81605037DC
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 20:44:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB0E10E075;
	Sat, 16 Apr 2022 18:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 619 seconds by postgrey-1.36 at gabe;
 Sat, 16 Apr 2022 18:43:58 UTC
Received: from relay3.hostedemail.com (relay3.hostedemail.com [64.99.140.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1AB10E075
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 18:43:57 +0000 (UTC)
Received: from omf03.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay09.hostedemail.com (Postfix) with ESMTP id 8503D23B6E;
 Sat, 16 Apr 2022 18:33:37 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf03.hostedemail.com (Postfix) with ESMTPA id C575C6000C; 
 Sat, 16 Apr 2022 18:33:35 +0000 (UTC)
Message-ID: <26839195c315eebcd1148d2a3de6a0df9e42dd1c.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Tom Rix <trix@redhat.com>, jani.nikula@linux.intel.com, 
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, 
 tvrtko.ursulin@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 16 Apr 2022 11:33:34 -0700
In-Reply-To: <20220416172325.1039795-1-trix@redhat.com>
References: <20220416172325.1039795-1-trix@redhat.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=0.08
X-Stat-Signature: sgdqba6e5cm8i9y3phoz3iysbkbcfmkz
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: C575C6000C
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18mbqnZJ/2lxkbg/STphdjVErybg/xPUBU=
X-HE-Tag: 1650134015-683919
Subject: Re: [Intel-gfx] [PATCH] drm/i915: change node clearing from memset
 to initialization
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 2022-04-16 at 13:23 -0400, Tom Rix wrote:
> In insert_mappable_node(), the parameter node is
> cleared late in node's use with memset.
> insert_mappable_node() is a singleton, called only
> from i915_gem_gtt_prepare() which itself is only
> called by i915_gem_gtt_pread() and
> i915_gem_gtt_pwrite_fast() where the definition of
> node originates.
> 
> Instead of using memset, initialize node to 0 at it's
> definitions.

trivia: /it's/its/

Only reason _not_ to do this is memset is guaranteed to
zero any padding that might go to userspace.

But it doesn't seem there is any padding anyway nor is
the struct available to userspace.

So this seems fine though it might increase overall code
size a tiny bit.

I do have a caveat: see below:

> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
[]
> @@ -328,7 +327,6 @@ static struct i915_vma *i915_gem_gtt_prepare(struct drm_i915_gem_object *obj,
>  		goto err_ww;
>  	} else if (!IS_ERR(vma)) {
>  		node->start = i915_ggtt_offset(vma);
> -		node->flags = 0;

Why is this unneeded?

from: drm_mm_insert_node_in_range which can set node->flags

		__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &node->flags);


