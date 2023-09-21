Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F86F7A94B1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 15:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EB110E0EE;
	Thu, 21 Sep 2023 13:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA1310E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695302633; x=1726838633;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TnJgWimn2jl26AUawPjrkEir4nDMEcBleWqHXPjd1eQ=;
 b=f7LpBhKIpkvN1DFfY11EvKU212gilhdZtjjbpZuNpHYl1sZUaHFs6vIt
 BV6rGHf7N4+5+xDVoYP9jyv70XydN1/cx524JBuoKb6swEH0bKyiBHJYN
 ojqeESMmTHAKtc/X6qlKgfApIIrKCzi/lqVhfuwbuUg0b9oXx+xmUojUr
 mUOfRFZV5Pi4GWZBsVbQ/5CVOw/CGjDeWlv9tlyviWViKCWiTElHvnz88
 yQ6DmykK507PwIhr5SdsUZ6/Q/iXa/UKLGvqUSNgilkXv2jd7EHTs5SnL
 7ap3GMifMwqeMYY+DHaM4tWA0sZIjFMsApFhlZCUxahazQiwIilBH0l4k w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="411460362"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="411460362"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="870817642"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="870817642"
Received: from skalitha-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.215.150.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 06:09:40 -0700
Date: Thu, 21 Sep 2023 15:09:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZQxAjdDwuSkM3TRH@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-6-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170257.8586-6-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Implement GGTT update method
 with MI_UPDATE_GTT
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Mon, Sep 18, 2023 at 07:02:55PM +0200, Nirmoy Das wrote:
> Implement GGTT update method with blitter command, MI_UPDATE_GTT
> and install those handlers if a platform requires that.
> 
> v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
> we call mutex_lock/intel_context_enter below. When GT/engine are not
> awake, the intel_context_enter calls into some runtime pm function which
> can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
> mutex lock is not allowed because shrinker can also try to hold the same
> mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
> before calling mutex_lock, to fix the circular lock.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> Acked-by: Oak Zeng <oak.zeng@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
