Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FF311E3DE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 13:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E00F6E7DC;
	Fri, 13 Dec 2019 12:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4886E7DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:52:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19567557-1500050 for multiple; Fri, 13 Dec 2019 12:52:39 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191213124549.28412-3-andi@etezian.org>
References: <20191213124549.28412-1-andi@etezian.org>
 <20191213124549.28412-3-andi@etezian.org>
Message-ID: <157624155700.6987.7147279410865367970@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Dec 2019 12:52:37 +0000
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/gt: Move power management
 debug files into a gt aware debugfs
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

Quoting Andi Shyti (2019-12-13 12:45:49)
> +int debugfs_gt_init(struct intel_gt *gt)
> +{
> +       struct drm_minor *minor = gt->i915->drm.primary;
> +
> +       if (!minor->debugfs_root)
> +               return -ENODEV;
> +
> +       gt->debugfs_entry = debugfs_create_dir("gt", minor->debugfs_root);
> +
> +       return intel_gt_pm_debugfs_register(gt);
> +}

> +static const struct gt_pm_debugfs_files {
> +       const char *name;
> +       const struct file_operations *fops;
> +       bool (*eval)(struct intel_gt *gt);
> +} gt_pm_debugfs_files[] = {
> +       { "frequency_info", &frequency_info_fops, NULL },
> +       { "ring_freq_table", &ring_freq_table_fops, ring_freq_table_eval },
> +       { "rps_boost_info", &rps_boost_info_fops, NULL },
> +       { "forcewake_domains", &forcewake_domains_fops, NULL },
> +       { "drpc_info", &drpc_info_fops, NULL },
> +       { "llc", &llc_fops, NULL },

Resort into alphabetical. We should probably cull a few.
(Thinking rps_info, rc6_info, llc_info, with a few other debug knobs
for specific use cases.)

> +};
> +
> +int intel_gt_pm_debugfs_register(struct intel_gt *gt)
> +{
> +       struct dentry *root = gt->debugfs_entry;
> +       int i;
> +
> +       pr_info("ANDIII function start\n");
> +       if (unlikely(!root))
> +               return -ENODEV;
> +
> +       for (i = 0; i < ARRAY_SIZE(gt_pm_debugfs_files); i++) {
> +               const struct gt_pm_debugfs_files *f = &gt_pm_debugfs_files[i];
> +
> +               if (f->eval && !f->eval(gt))
> +                       continue;
> +
> +               debugfs_create_file(f->name, 0444, root, gt, f->fops);
> +       }
> +       pr_info("ANDIII function end\n");
> +
> +       return 0;

Looking better!

Do we even need to keep the gt->debugfs_entry around? We are not going to
ever do hotplug are we and so only need to populate once?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
