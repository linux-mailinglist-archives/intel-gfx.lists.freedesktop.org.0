Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DDE89895F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 15:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B092C10E823;
	Thu,  4 Apr 2024 13:57:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DPkRchtp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56A510E823
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 13:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712239052; x=1743775052;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ir2RpPBcr5kNfpYbEVWyFv+HfUO7vw2TRu07cRbMxak=;
 b=DPkRchtpBa2yjYdDQcBWCnEGi7AumTT+OtLgYTxBmdTZol4K5G3YI4Wq
 lbyE3z11NoOpSKH6jVaZG0CyhhWD8FQwEuCkhFkDRcgml0iM5cJIkY6kb
 p2ML2j3ZhSBkBn61PhP/2vyQwDIl+HeLbroNiL/ir5EECmdd5xI2WSn6R
 iu7HLEkofti7CB/fieQgo3o68Ixbytk1VS6SutdBuie8En83d2ZeteSiL
 IXwCLTx55p8eMRJi59/x1BZxGwx6rDJachBweMV1xE6zTg8DaH48wSZHM
 FJ4BDorc8h1LI9oNTX/tEb6Rknh2CGKW7EVBXZxVHYx89TNv1VyAe5EIq A==;
X-CSE-ConnectionGUID: Q6wCQRgaS8SJdZ1mQySB2Q==
X-CSE-MsgGUID: vWJ4YDkRTU6p1k6p1AOyug==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="24972857"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="24972857"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 06:52:37 -0700
X-CSE-ConnectionGUID: VdvDI+otRGe3/tsUEqBWuA==
X-CSE-MsgGUID: IymS3cigSMyma9UbsaUwng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23286501"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 06:52:36 -0700
Date: Thu, 4 Apr 2024 16:53:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: v6.8 stable backport request for drm/i915
Message-ID: <Zg6ww+JomUKR//nh@ideak-desk.fi.intel.com>
References: <Zg6rIG0idN3NSTbP@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zg6rIG0idN3NSTbP@ideak-desk.fi.intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 04, 2024 at 04:29:04PM +0300, Imre Deak wrote:
> Stable team, please backport the following upstream commit to 6.8:
> 
> commit 7a51a2aa2384 ("drm/i915/dp: Fix DSC state HW readout for SST connectors")

Just noticed that the above commit is not yet upstream, still only
queued in drm-intel-next. I presumed patches will be cherry-picked from
drm-intel-next to drm-intel-fixes based on the Fixes: tag, so I only
pushed the above patch to drm-intel-next; maybe the cherry picking
doesn't (always) happen automatically.

> Thanks,
> Imre
