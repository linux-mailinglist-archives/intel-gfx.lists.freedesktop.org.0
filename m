Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E96DC15D82B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18ED56E7DD;
	Fri, 14 Feb 2020 13:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8D86E7DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:15:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20224239-1500050 for multiple; Fri, 14 Feb 2020 13:14:35 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200214110308.2268-1-andi.shyti@intel.com>
References: <20200214110308.2268-1-andi.shyti@intel.com>
Message-ID: <158168607166.10420.3448968720838873225@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 13:14:31 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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

Quoting Andi Shyti (2020-02-14 11:03:08)
> +struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev)
> +{
> +       struct kobject *kobj = &dev->kobj;
> +       /*
> +        * We are interested at knowing from where the interface
> +        * has been called, whether it's called from gt/ or from
> +        * the parent directory.
> +        * From the interface position it depends also the value of
> +        * the private data.
> +        * If the interface is called from gt/ then private data is
> +        * of the "struct intel_gt *" type, otherwise it's * a
> +        * "struct drm_i915_private *" type.
> +        */
> +       if (strcmp(dev->kobj.name, "gt")) {
> +               struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
> +
> +               drm_warn(&i915->drm, "the interface is obsolete, use gt/\n");
> +               return &i915->gt;

I guess it's not possible to flesh this out with path? And we do need it
to be warn_once else the user will be flooded.

One final request, can we also put the old entries under
CONFIG_DRM_I915_SYSFS_OBSOLETE_GT (or somesuch)

As far as the naming goes, the compromise isn't horrendous.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
