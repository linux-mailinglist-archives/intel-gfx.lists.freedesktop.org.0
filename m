Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057E015D845
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D15E6E7E6;
	Fri, 14 Feb 2020 13:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FED6E7E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:19:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20224318-1500050 for multiple; Fri, 14 Feb 2020 13:18:51 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <aa7b70a5-149d-5c6b-756c-823c03a0df2b@linux.intel.com>
References: <20200214110308.2268-1-andi.shyti@intel.com>
 <aa7b70a5-149d-5c6b-756c-823c03a0df2b@linux.intel.com>
Message-ID: <158168632802.10420.7548890837084892851@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 13:18:48 +0000
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

Quoting Tvrtko Ursulin (2020-02-14 12:54:35)
> 
> On 14/02/2020 11:03, Andi Shyti wrote:
> > +struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev)
> > +{
> > +     struct kobject *kobj = &dev->kobj;
> > +     /*
> > +      * We are interested at knowing from where the interface
> > +      * has been called, whether it's called from gt/ or from
> > +      * the parent directory.
> > +      * From the interface position it depends also the value of
> > +      * the private data.
> > +      * If the interface is called from gt/ then private data is
> > +      * of the "struct intel_gt *" type, otherwise it's * a
> > +      * "struct drm_i915_private *" type.
> > +      */
> > +     if (strcmp(dev->kobj.name, "gt")) {
> > +             struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
> > +
> > +             drm_warn(&i915->drm, "the interface is obsolete, use gt/\n");
> 
> Can you log current->name & pid?
> 
> I am also thinking is a level down from warn would be better. Notice 
> sounds intuitively correct to me.

git grep -e 'pr.*obsolete' | grep warn | wc -l
21
git grep -e 'pr.*obsolete' | grep notice | wc -l
1
git grep -e 'pr.*obsolete' | grep info | wc -l
4

Looks like warn's back on the menu, boys.

> I am also tempted by the _once alternative, but then it makes less sense 
> to include name & pid.

I'm more afraid that there are users out there that frequently poke
these files.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
