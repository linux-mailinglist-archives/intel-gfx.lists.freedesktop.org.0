Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FA86A6C25
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 13:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5049C10E0BB;
	Wed,  1 Mar 2023 12:13:49 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C838010E0BB
 for <Intel-GFX@lists.freedesktop.org>; Wed,  1 Mar 2023 12:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677672826; x=1709208826;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oFXimKN4y6gKEZ8bHvZam4XkSPV9+is7mJyrRGJoGCM=;
 b=H0E/SymLc/a62VvGqN6wGKW73VhxzSBbQlLlP0Ln9wrc0bvqWMtOBfMw
 l1FpaBAM2MzDaaTssNO9enAZ1aLg9ee+PD0g1h9fC1QtHkdZuSf1VTLls
 sjM5nHDBDILQISPMNztKcISo9JTn1cGr0PwRBxexF7iUM5I/EqzSWOHzT
 lJPSdTtJkWGOKcI5IUZ1FGGLz68ID3VjzdGfcnyR5zxzl3tVX1riHmVEU
 K0f1hVBXsCrV5Q2b41ymA2/UATBxtyyZ3DBWRmIRunapI62EMVpJF/ih4
 HjrByxLHwWv5iPFqz1VRoamuZkWnGvEuSfJk8Srs8fXOzDxoK168v9Qa/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="335884413"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="335884413"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:13:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="763578004"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="763578004"
Received: from unknown (HELO intel.com) ([10.252.57.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 04:13:44 -0800
Date: Wed, 1 Mar 2023 13:13:42 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <Y/9BdpPsMOfy3+CN@ashyti-mobl2.lan>
References: <20230228044307.191639-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228044307.191639-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [Intel-gfx V2] drm/i915/selftests: Fix
 live_requests for all engines
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
Cc: Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Tue, Feb 28, 2023 at 10:13:07AM +0530, Tejas Upadhyay wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> After the abandonment of i915->kernel_context and since we have started to
> create per-gt engine->kernel_context, these tests need to be updated to
> instantiate the batch buffer VMA in the correct PPGTT for the context used
> to execute each spinner.
> 
> v2(Tejas):
>   - Clean commit message - Matt
>   - Add BUG_ON to match vm
> v3(Tejas):
>   - Fix dim checkpatch warnings
> 
> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

pushed in drm-intel-gt-next.

Thanks,
Andi
