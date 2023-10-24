Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 850DD7D4F59
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A62D10E354;
	Tue, 24 Oct 2023 12:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F2B10E35D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698148956; x=1729684956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uDAuiTMynM77wrQsz8pc1vWvkWRrqBz8hOna70pHwfU=;
 b=Jz/k2CUucJc928NQ3XgpnHExyzR6Kdq+TrY+TWkvGZp4fEiR/jaVtVgr
 7lDQef6FY3OKC5d6ruyEju+RMeYDN3Y9PBGoFtqcNmNQme+ZDCd/Y/dcj
 evuMlFIBOA9vTz3ug04iFV3RG1O/5kL4ftscEQAKZCtdYXvtpEd65sFkU
 n3yjHMgW7C1pGREAZGu75d0iuBblCAv7o18yCkyPStD09yLbTFp08tuQx
 yrm0Z5u5zu4cLsSWbrnJKraQf18bzT2zFEkTIiC5Aks8VjdO9HukTIyJH
 DxjAHHoxETPcCrV9ljQDAZlQupONwJkQD2J7zBDnhTkbGzCnq2oHK0tqK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="418165727"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="418165727"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="882103960"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="882103960"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:02:20 -0700
Date: Tue, 24 Oct 2023 14:02:17 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZTeySSFGbBpmfn-7@ashyti-mobl2.lan>
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
 <20231019170241.2102037-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019170241.2102037-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Thu, Oct 19, 2023 at 10:02:42AM -0700, Matt Roper wrote:
> The steering control and semaphore registers are inside an "always on"
> power domain with respect to RC6.  However there are some issues if
> higher-level platform sleep states are entering/exiting at the same time
> these registers are accessed.  Grabbing GT forcewake and holding it over
> the entire lock/steer/unlock cycle ensures that those sleep states have
> been fully exited before we access these registers.
> 
> This is expected to become a formally documented/numbered workaround
> soon.
> 
> Note that this patch alone isn't expected to have an immediately
> noticeable impact on MCR (mis)behavior; an upcoming pcode firmware
> update will also be necessary to provide the other half of this
> workaround.

right... I did try this, but so fare we hold the forcewake when
calling mcr_lock().

> v2:
>  - Move the forcewake inside the Xe_LPG-specific IP version check.  This
>    should only be necessary on platforms that have a steering semaphore.
> 
> Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")

Is this the right Fixes tag? This is adding the spinlock around
MCR, but the power domain needs to be taken independently from
the lock... I think the right fix here is

Fixes: 3100240bf846 ("drm/i915/mtl: Add hardware-level lock for steering")
Cc: <stable@vger.kernel.org> # v6.3+

When the access to the hardware was added.

BTW, given that currently we hold the forcewake already, is this
really a fix or is this more looking at the future? Is the Fixes
tag necessary?

> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

In any case,

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
