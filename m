Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6161217C804
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 22:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C146ED7B;
	Fri,  6 Mar 2020 21:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5F06ED7B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 21:51:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 13:51:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,523,1574150400"; d="scan'208";a="233445616"
Received: from palyons-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.12.45])
 by fmsmga007.fm.intel.com with ESMTP; 06 Mar 2020 13:51:03 -0800
Date: Fri, 6 Mar 2020 23:51:02 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200306215102.GA2414@intel.intel>
References: <20200306200636.52051-1-andi@etezian.org>
 <6eaad5cb-a460-b317-b7b2-6abf5c42d075@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6eaad5cb-a460-b317-b7b2-6abf5c42d075@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: allow setting generic data
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
> > index 75255aaacaed..24099fb157be 100644
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
> 
> The gt variable is now unused in this function, so you can get rid of it,
> which means you can also drop the macro wrapper you have defined below.

uh, yes, right! I forgot to remove it :)

> > -static bool llc_eval(const struct intel_gt *gt)
> > +static bool llc_eval(void *data)
> >   {
> > -	return HAS_LLC(gt->i915);
> > +	struct intel_gt *gt = data;
> > +
> > +	return !gt ? false : HAS_LLC(gt->i915);
> 
> Is there a case where gt can be NULL?
> BTW, you can also have this condition as:
> 
> 	return gt && HAS_LLC(gt->i915);

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
