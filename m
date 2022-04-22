Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1350BE6E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 19:17:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD4C10E58A;
	Fri, 22 Apr 2022 17:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F372F10E58A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 17:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650647874; x=1682183874;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6koRsG9U8QDmx1/7lKM9yX2Uf+kZeltPNxRSzNkI3As=;
 b=iqk24fHs2mg+pwjPWroFBYXWgV0DL+ZLiaLizc9yBAeBFWjK+tRssWcE
 +j8wTBCL081E7DlO9Ae3klMCRb/yUxVKqaFDhWdtpWhxuYMEZ9Wm2KRlM
 7XRtJVsj7LBD2jW10zBTPjpSqEHPfhk7lKhHP5+m4lA4cP1q+D7DBz7Id
 hFMBdryS/myPnEePUXswXLmBW6c4lKW5ytWZMlGSMJ4kfLigkxAxpWwd2
 sz+W550FVLQkk3yQsR0vVuk2oG4+XvZYQA+AUo9X9DaSxH1Ob4QswGSAf
 ErYoMbgom9QD43OpFH5R3MsYNnqoYYV2YoPhqw2tSFzFfjpkDldwVflPs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="264219753"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="264219753"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:17:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="578004386"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 10:17:52 -0700
Date: Fri, 22 Apr 2022 10:17:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YmLjP/zBdfeES+9+@mdroper-desk1.amr.corp.intel.com>
References: <20220422165535.3952178-1-matthew.d.roper@intel.com>
 <20220422171229.vartakhwpq4husna@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422171229.vartakhwpq4husna@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH] i915: Add first set of DG2 PCI IDs
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 22, 2022 at 10:12:29AM -0700, Lucas De Marchi wrote:
> On Fri, Apr 22, 2022 at 09:55:35AM -0700, Matt Roper wrote:
> > The IDs added here are the subset reserved for 'motherboard down'
> > designs of DG2.  We have all the necessary support upstream to enable
> > these now (although they'll continue to require force_probe until the
> > usual requirements are met).
> 
> Main requirement for keeping the PCI IDs out was the needed uapi
> changes. Did they all land already? If so can we mention that explicitly
> in the commit message?
> 

The important uapi for general use of the platform (e.g., lmem-related)
has landed.  There will be other uapi for non-mandatory features (e.g.,
the compute engines that will be landing really soon here now that the
final bits of IGT testing just landed).

> 
> > 
> > The remaining DG2 IDs for add-in cards will come in a future patch once
> > some additional required functionality has fully landed.
> > 
> > Bspec: 44477
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Dave Airlie <airlied@gmail.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > 
> > These IDs already exist in drm-tip via the topic/core-for-CI branch, so
> > I've based this patch on drm-intel-next (where we intend to land it)
> > instead of drm-tip.
> 
> 
> but they are not the same. Maybe having 2 patches on drm-tip with a
> revert + this patch would be better, so this can also have a chance to
> go through CI.

I think CI would still fail in that case because the actual platforms
we have in the CI farm right now are add-in cards.


Matt

> 
> Lucas De Marchi

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
