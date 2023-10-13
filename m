Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6A97C83CF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 12:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA3410E039;
	Fri, 13 Oct 2023 10:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F054410E039
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 10:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697194473; x=1728730473;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=I4mTdaBzMo0gJ8/uEvJUx4y+B+md+MSPNvQI7lsW2WE=;
 b=nP0LQCQ44x8Rqi39rNKApmSjwrWO1zzSbPcX9oCar5b+9BwD3l09ay+x
 GtMzFKky9ERDg6jEDg9Iyh7jsj0oyL6PT3hwf9IUQsB8fjzCZ9XXv2FBW
 jTDaJp+yk+BeC7+HNhjVc5cZOc/pT4JtfD7uq3VMGC57SDdZLdFPdsalb
 KJBy1VfNwPzbVV/0FWdQj7iCh1DqjmGZ86s6koj1nkM88R1jqajKXKApp
 5CWQBz6gcw38y5EZ7bGkUnzKNPVZUDqeDJOI/Xgwf4SWgQVc9WxRQ2lf2
 aQfNf6/Ci7xMYRg+GGt6OXoXH6YSB2nQ19cqyJgroFKnGQs4SxHL4AGpO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="6713516"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; 
   d="scan'208";a="6713516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:54:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="784110711"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="784110711"
Received: from kesooi-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.155.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:54:03 -0700
Date: Fri, 13 Oct 2023 12:53:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZSkhxx8bIJSfKHJ0@ashyti-mobl2.lan>
References: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231012132801.16292-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Retry gtt fault when out of fence
 register
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

> If we can't find a free fence register to handle a fault in the GMADR
> range just return VM_FAULT_NOPAGE without populating the PTE so that
> userspace will retry the access and trigger another fault. Eventually
> we should find a free fence and the fault will get properly handled.
> 
> A further improvement idea might be to reserve a fence (or one per CPU?)
> for the express purpose of handling faults without having to retry. But
> that would require some additional work.
> 
> Looks like this may have gotten broken originally by
> commit 39965b376601 ("drm/i915: don't trash the gtt when running out of fences")
> as that changed the errno to -EDEADLK which wasn't handle by the gtt
> fault code either. But later in commit 2feeb52859fc ("drm/i915/gt: Fix
> -EDEADLK handling regression") I changed it again to -ENOBUFS as -EDEADLK
> was now getting used for the ww mutex dance. So this fix only makes
> sense after that last commit.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9479
> Fixes: 2feeb52859fc ("drm/i915/gt: Fix -EDEADLK handling regression")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
