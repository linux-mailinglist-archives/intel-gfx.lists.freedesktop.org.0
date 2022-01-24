Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFF3498833
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 19:21:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80C8210E758;
	Mon, 24 Jan 2022 18:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FBE10E758
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 18:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643048486; x=1674584486;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5DLL9Ycyh6SUpQb4mi4t+SeWBtOaa31vxih3npdoGi8=;
 b=MCUNYE+w30BDM5MQnxh46A9cAorW5XDrTgNtboM/8dNOiiqk+zEw6cxd
 Ct09cXzdVleBBbCvCx6Lc+m64kLUDQR/h5+0NZkL3ddqGwpCwhW8jluZ3
 91ztLGryVMYlh+OQVcTFohNC7G1Ss6CLNjSDghClo5Yw68o4qt87lO0nU
 kQG2DiDfM8auzocyH1AA6oKpgjtZ3XF3TR4gLtbRLSkoEFRVCfDqiJwgP
 NPR7WfaMTejpe3PdcgIre3I3gnXmWNJzngEn8qnA8gEvuL1vfxG76uBvW
 WYkYzXaIktmuIxlgvArun7wddIxjfwEaFSNiw/9+AfpuEvinD53+jZrzP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="244947668"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="244947668"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 10:21:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="596866624"
Received: from olindum-mobl1.ger.corp.intel.com (HELO [10.249.254.70])
 ([10.249.254.70])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 10:21:24 -0800
Message-ID: <eb2dd9e49f175788e827adfc7587d9ad24d03ff9.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Adrian Larumbe <adrian.larumbe@collabora.com>, daniel@ffwll.ch, 
 ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org, Christian
 =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Mon, 24 Jan 2022 19:21:22 +0100
In-Reply-To: <6b34e05e-df19-59a4-2172-211593d005dd@linux.intel.com>
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
 <20220121222252.3296117-6-adrian.larumbe@collabora.com>
 <6b34e05e-df19-59a4-2172-211593d005dd@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 5/5] drm/i915/flat-CCS: handle creation
 and destruction of flat CCS bo's
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2022-01-24 at 17:24 +0100, Thomas Hellström wrote:
> Hi, Adrian
> 
> On 1/21/22 23:22, Adrian Larumbe wrote:
> > When a flat-CCS lmem-bound BO is evicted onto smem for the first
> > time, a
> > separate swap gem object is created to hold the contents of the CCS
> > block.
> > It is assumed that, for a flat-CCS bo to be migrated back onto
> > lmem, it
> > should've begun its life in lmem.
> > 
> > It also handles destruction of the swap bo when the original TTM
> > object
> > reaches the end of its life.
> > 
> > Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> 
> 
> While allocating a separate object for the CCS data is certainly
> possible, it poses some additional difficulties that have not been
> addressed here.
> 
> The CCS object needs to share the dma_resv of the original object.
> That
> is because the CCS object needs to be locked and validated when we
> process it, and we
> can only trylock within the ttm move callback which might therefore
> fail
> and isn't sufficient on swapin. We'd need to create some
> i915_gem_object_create_region_locked() that wraps
> ttm_bo_init_reserved().

Actually that would be a function to create with a reservation object
shared from another object.

/Thomas


