Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DF08CFE38
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB84410E28B;
	Mon, 27 May 2024 10:38:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HkAHLBi6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D755810E28B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 10:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716806298; x=1748342298;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=veYR+xOsLACBO/cFJBprf0Ez9E8Mly/C3gYRftGtwWE=;
 b=HkAHLBi6Dow96tBas/wmVsiErdl2xoRkaDUdVBJkFnWktl8SvakF2/lL
 6qBibKt4nk/zHJy2lUiwC+rIbPeB8fVqN3DHHJigV7c2/jV9cz6uWEcIO
 09BRe1H7Rqz/n6MWEkyDjKqPzkoM0rvSIUyqUOGJAQS2K4T4Ne2sy3+K6
 lnvc3BwAX5K7ObtGYP9VmT30GYBDWhkSwuPM/KXwkRW4Ll5ehrw+jpbep
 VSVtgcRxlQkQ2vcUUuMIU4EXrCt93Kg4gawBGCBsm95/t66+YF1IeN2lE
 0EOWw3LuYVCxM++ys/fuCn1QpwGSPbLQKcUtpS5hUUqQjSo5THIuchJZO w==;
X-CSE-ConnectionGUID: CkwkM15FSmCEaqxgAQErUA==
X-CSE-MsgGUID: w7ocSs0kSoyCp4ZAYbk9pw==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="12959991"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="12959991"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:38:17 -0700
X-CSE-ConnectionGUID: 3pc72xvBTQSuKS1bFySyeg==
X-CSE-MsgGUID: Cwad7LaRSNyTQ8jm6u2YoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34613163"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.244.157])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 03:38:16 -0700
Date: Mon, 27 May 2024 11:38:06 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Chen, Angus" <angus.chen@intel.com>
Cc: andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, tejas.upadhyay@intel.com
Subject: Re: [PATCH v3] drm/i915/mtl: Update workaround 14018575942
Message-ID: <ZlRijk0H5YU-aiIV@ashyti-mobl2.lan>
References: <ZlB5cUduM_Hw2Spi@ashyti-mobl2.lan>
 <20240524173349.89123-1-angus.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240524173349.89123-1-angus.chen@intel.com>
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

Hi Angus,

On Fri, May 24, 2024 at 05:33:49PM +0000, Chen, Angus wrote:
> The WA should be extended to cover VDBOX engine. We found that
> 28-channels 1080p VP9 encoding may hit this issue.
> 
> v3: update the WA number and explain the reason why
>     this workaround is needed
> v2: add WA number
> v1: initial version
> 
> Signed-off-by: Chen, Angus <angus.chen@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks Matt for your feedback!

Andi
