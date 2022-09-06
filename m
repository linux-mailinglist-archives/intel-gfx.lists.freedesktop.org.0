Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4121F5AE706
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 13:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76C110E09E;
	Tue,  6 Sep 2022 11:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A147A10E625
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 11:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662465458; x=1694001458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yvqQHkR+unaW/DdzKmqlPtInTmoFfL4AKTz1L522+UY=;
 b=DW6rBRYGbgh6cckFX3bGXfkDMWTH27XwJZqS1nJbd/lN/a04q2Rf/UQC
 KfCwPXzdlPFV8ZS2xVb/XTg9cEKRDAU7CwFV+FFqdtwPO34bVkzNRBwsQ
 QU4ZaLE9fAAlTcmz2ZumNDHni03MVntoGeu5Jm5ZX7kWSgpFnDfVejFd6
 X+CO5sMEGR9U9PVe67XhqiZPez4VV4zosZ8eFSErqL7ejhIYq0Bgjkr0o
 lun26AlmVNSDY88VhaOK1X6oDci6QK6W8yKSayPcXA38liRNIS+cnufnk
 2yqtNV1qX/94s75n4dV7bM0ekr5wl6ruM0udFpkqa5RiYCYj19W1q7H2n Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="358289018"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="358289018"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 04:57:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="675661007"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 06 Sep 2022 04:57:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Sep 2022 14:57:34 +0300
Date: Tue, 6 Sep 2022 14:57:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Yxc1rvmwMuN9RzTo@intel.com>
References: <20220906102329.7073-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220906102329.7073-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix
 intel_dp_atomic_find_vcpi_slots function
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 01:23:29PM +0300, Stanislav Lisovskiy wrote:
> drm_dp_atomic_find_vcpi_slots no longer exists and needs
> to be used as drm_dp_atomic_find_time_slots.
> Also rename the function itself.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 7ae5ab441402 ("Extract drm_dp_atomic_find_vcpi_slots cycle to separate function")

The problem only exists in drm-tip. You need to revert the 
bad merge from rerere-cache and redo it.

And please always test build drm-tip after solving merge conflicts!

-- 
Ville Syrjälä
Intel
