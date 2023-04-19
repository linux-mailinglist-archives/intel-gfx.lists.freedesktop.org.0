Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281C06E74DB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 10:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7537810E8C5;
	Wed, 19 Apr 2023 08:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51E0B10E169
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 08:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681892423; x=1713428423;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3HbTau8XUeE6V4uBRF8QcSHVs5y/XrPzwyt2IEINYIY=;
 b=KDORYCW02uc8Ro2q6KOpL+drRug0miZKA+NWF4m364N1v3+MB/MEUYq2
 IWOR3zCToV+YzGMt8LGfx6gEC4shZkgmhy6kxXvfykiWYrH0ocuO45ieV
 X0MFcTBdhOqxg45Tck3HHoSKN2tui5tjyIChjCv5zfzw9ld1J5s+zfxjv
 7ZcY14EENLvO5Oo7izOWm8mP52kRwWiaS8OYxNQBngkmVkMh+MlU7deij
 fk1Bc7BWHyOQ21aIWQbnIrKS05/w+HjFGZ3bdcSpOvMVtp6C+Gj9iPhfg
 OSHPA4JEjZS1K3RlgIXtu6HcR84CcC782meTQLaXczwwN9a0CukcmfdlK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="329562194"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329562194"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:20:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="780782617"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="780782617"
Received: from crijnder-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.137])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 01:20:20 -0700
Date: Wed, 19 Apr 2023 10:20:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZD+kQPJWrq+NEDWR@ashyti-mobl2.lan>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
 <20230419060036.3422635-4-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230419060036.3422635-4-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/selftests: Consider multi-gt
 instead of to_gt()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Wed, Apr 19, 2023 at 11:30:36AM +0530, Tejas Upadhyay wrote:
> In order to enable complete multi-GT, loop through all
> the GTs, rather than relying on the to_gt(), which only
> provides a reference to the primary GT.
> 
> Problem appear when it runs on platform like MTL where
> different set of engines are possible on different GTs.
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
