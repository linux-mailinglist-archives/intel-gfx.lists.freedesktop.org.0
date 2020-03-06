Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E7217B39D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 02:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424D26EC44;
	Fri,  6 Mar 2020 01:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1016EC44
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 01:15:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 17:15:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="320391305"
Received: from bbohan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.83.105])
 by orsmga001.jf.intel.com with ESMTP; 05 Mar 2020 17:15:37 -0800
Date: Fri, 6 Mar 2020 03:15:36 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200306011536.GA1530@intel.intel>
References: <20200305235941.1716-1-andi.shyti@intel.com>
 <fdf01ba2-57ab-d51a-7f62-27f4cc1c1168@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fdf01ba2-57ab-d51a-7f62-27f4cc1c1168@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: allow setting generic data
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

> > diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> > index 75255aaacaed..9112a8585caf 100644
> > --- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> > @@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
> >   	debugfs_gt_pm_register(gt, root);
> >   }
> > -void debugfs_gt_register_files(struct intel_gt *gt,
> > -			       struct dentry *root,
> > -			       const struct debugfs_gt_file *files,
> > -			       unsigned long count)
> > +void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
> > +				       const struct debugfs_gt_file *files,
> > +				       unsigned long count, void *data)
> >   {
> >   	while (count--) {
> >   		if (!files->eval || files->eval(gt))
> 
> IMO the files->eval() function should also use the provided data instead of
> intel_gt. This will also allow us to drop the intel_gt parameter in this
> function, which in turn means we can use this function directly from all the
> levels.

do you mean something like this:

-       bool (*eval)(const struct intel_gt *gt);
+       bool (*eval)(void *data);

?

I am missing the use case, though, what is it that cannot be
reached by the gt so that it needs to be more generic?

Do you want to use it at i915 level?

Thanks for the review,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
