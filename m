Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A987BB2E4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 10:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB72610E0B0;
	Fri,  6 Oct 2023 08:18:18 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A730010E0B0;
 Fri,  6 Oct 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696580296; x=1728116296;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xPN27fNEltfghWYj5FMivqX+21aFs0g3Bpni31PaUW4=;
 b=hticjYkITT3pE0ansjKX1oqcJTqcqhubqEm+Xh7WH0cVZG9g2ojGvgr6
 +B5psvd2YgcJmb9zjHAopwkrQsqsxNTTxWPtnQCckorV1KN2wZUgbiRC1
 Fb2gG1Ghw3x1nCCGBH+LeUj9GN/TwtR9tsZqx5SSlXGjzMyE+InmmsQs0
 S3FdvTYWuVkmgRueGpjGvoNKFvyDEfTxXZ/gxu3jo1J2ysaQhCnwb+ajy
 KXCWRgoBpgcxSx19k5xAH/IPAd9ftItCRFej4yRiitBT6CY7yG0sFmH8W
 86rnG688qFy8xg+Yk4IJadS1JZQNp+KOfG/k4PKtkGrZsiFbEbQvrNdrJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="363060848"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="363060848"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 01:18:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="701977649"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="701977649"
Received: from cchew3-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.41.249])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 01:18:12 -0700
Date: Fri, 6 Oct 2023 10:18:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John.C.Harrison@intel.com
Message-ID: <ZR/CvojVBqtr4iFR@ashyti-mobl2.lan>
References: <20231006013553.1339418-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006013553.1339418-1-John.C.Harrison@Intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Enable WA 14018913170
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
Cc: Intel-GFX@lists.freedesktop.org, DRI-Devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi John,

On Thu, Oct 05, 2023 at 06:35:53PM -0700, John.C.Harrison@Intel.com wrote:
> From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> 
> The GuC handles the WA, the KMD just needs to set the flag to enable
> it on the appropriate platforms.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
