Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE52E7BE704
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 18:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C592710E155;
	Mon,  9 Oct 2023 16:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8CB10E131;
 Mon,  9 Oct 2023 16:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696870397; x=1728406397;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ft3bX+hksyHpBELr2Yl/p9GQf9RdkpUb3LQAB/o9oyw=;
 b=fb+4GsvmCe8wxFPPMHd7hQWdEAkXCx2BSOYQAxJ44lvK/ftJRAxgDJQb
 Msm7JQkfwJivHXXBChvZZy0W080BcFTvWN0YFGAbYv2Qj9Ly8TlEe+9lg
 ARS9F1gWS9gNrnOhrfVn+Bkpt0JIcd0gLyUsWUYEGsOvy4qqAsdyYXNdh
 QCLWbQfxnmu9QsvnNBdaDMJt/AXfc5vCLdaqk+jfoVGB7kw6m+QlHf9vh
 U8nZEbN+T1OSJ8hn7r5z059sf9AkN1AfAzgA0eA9Kw5uyrMQSQsk6Qlm+
 pqreEswurR9WLxmuj/T7tSh3k6ZW9fSsid7styBNT/5ZVCueitNLmhgut g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450691505"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450691505"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 09:53:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="818903327"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="818903327"
Received: from ibrahim2-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.213.42.185])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 09:53:06 -0700
Date: Mon, 9 Oct 2023 18:52:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZSQv69bLHoOglE+T@ashyti-mobl2.lan>
References: <20231006132606.810110-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006132606.810110-1-andi.shyti@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/print: Add drm_dbg_ratelimited
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
Cc: Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Maxime Ripard <mripard@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Add a function for ratelimitted debug print.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

Just a kind reminder!

This is the second time this patch has been sent and we have seen
some potential use of the drm_dbg_ratelimited().

Any feedback?

Thanks,
Andi
