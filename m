Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EB517CDF9
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 13:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BCD6E1CF;
	Sat,  7 Mar 2020 12:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518C06E1CF
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 12:07:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20478420-1500050 for multiple; Sat, 07 Mar 2020 12:07:22 +0000
MIME-Version: 1.0
In-Reply-To: <20200306230344.53559-1-andi@etezian.org>
References: <20200306230344.53559-1-andi@etezian.org>
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158358284291.6224.14954481538219251460@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 07 Mar 2020 12:07:22 +0000
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: allow setting generic data
 pointer
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

Quoting Andi Shyti (2020-03-06 23:03:44)
> -void debugfs_gt_register_files(struct intel_gt *gt,
> -                              struct dentry *root,
> -                              const struct debugfs_gt_file *files,
> -                              unsigned long count)
> +void intel_gt_debugfs_register_files(struct dentry *root,
> +                                    const struct debugfs_gt_file *files,
> +                                    unsigned long count, void *data)
>  {
>         while (count--) {
> -               if (!files->eval || files->eval(gt))
> +               if (!files->eval || files->eval(data))
>                         debugfs_create_file(files->name,
> -                                           0444, root, gt,
> +                                           0444, root, data,
>                                             files->fops);
>  

And now we are not a intel_gt routine, you'll want to move again :)
i915_debugfs_utils.c ? :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
