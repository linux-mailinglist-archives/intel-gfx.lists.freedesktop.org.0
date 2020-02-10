Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2159B157CAC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 14:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828F66E98B;
	Mon, 10 Feb 2020 13:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49F36E98B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 13:45:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20175460-1500050 for multiple; Mon, 10 Feb 2020 13:45:09 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200210134039.2607-1-andi.shyti@intel.com>
References: <20200210134039.2607-1-andi.shyti@intel.com>
Message-ID: <158134230636.5235.8443960836517180676@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Feb 2020 13:45:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: change prefix to debugfs
 functions
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

Quoting Andi Shyti (2020-02-10 13:40:39)
> "We don't own the debugfs 'namespace' prefix." (Jani Nikula [*])
> 
> I agree, change the functions name from "debugfs_*" to
> "intel_gt_*" prefix.
> 
> [*] https://patchwork.freedesktop.org/patch/352553/#comment_651183
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/debugfs_engines.c |  4 ++--
>  drivers/gpu/drm/i915/gt/debugfs_engines.h |  2 +-
>  drivers/gpu/drm/i915/gt/debugfs_gt.c      | 14 +++++++-------
>  drivers/gpu/drm/i915/gt/debugfs_gt.h      | 10 +++++-----
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  4 ++--
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.h   |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c        |  2 +-
>  7 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_engines.c b/drivers/gpu/drm/i915/gt/debugfs_engines.c
> index 6a5e9ab20b94..2d4ab974ab67 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_engines.c
> @@ -26,11 +26,11 @@ static int engines_show(struct seq_file *m, void *data)
>  }
>  DEFINE_GT_DEBUGFS_ATTRIBUTE(engines);
>  
> -void debugfs_engines_register(struct intel_gt *gt, struct dentry *root)
> +void engines_register_debugfs(struct intel_gt *gt, struct dentry *root)

Bad. If you are going to do this, intel_gt something. (At a push,
intel_engines, but maybe we shouldn't spread that too much as that
currently takes i915 to work on the uapi lists.)

But I don't really care, we can cross this bridge if debugfs feature
creeps beyond its current cave.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
