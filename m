Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 639988CBD3B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 10:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F020410E06C;
	Wed, 22 May 2024 08:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nCg4iVGR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E623810E06C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 08:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716367883; x=1747903883;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DSaTSDPYoUjVGAYMljlhc5hwNTji8PDDkMCzS2B9osA=;
 b=nCg4iVGRCYKDQlGvtpT5GB4NxNUAxRShk/f3u5BluR/evq7oqGI+H4Gz
 rjOk7Q1mGmvVoLC5InMel9aYNrtKqtSY7fmPPbKzGE3kfhs27YeOMxrjb
 XS+EiE561g217hwHqnhk9jW+Ssf4S5U37Nu1ctSAPboiEw+Jxlr/2PEaW
 lGa2rJmUxCI2GtyVApbod8VL/KNYepsdyeTSs3Clsk3r7SWDKUe/CKAK1
 YB1cSS3u+ijhJUH2cD/p/aRQj5iqNZ/3xglos7TFZcGlWCZlI1QDodx2H
 aifT3bS2lDDm/pmATx6P6kQZlAohA8sQF5J+qEjXC1PDuQ3jJA+jWeLiM Q==;
X-CSE-ConnectionGUID: N/3Uwm0ZTRq00Lx2NiG1NA==
X-CSE-MsgGUID: wKEymnPzTZaYy0Z8xHJNKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12833655"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="12833655"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 01:51:22 -0700
X-CSE-ConnectionGUID: qPomdM1VSAWsJMEAHIpQeQ==
X-CSE-MsgGUID: KDpWONNJTJy9wVE9gRTd0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33334585"
Received: from johunt-mobl9.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.82])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 01:51:19 -0700
Date: Wed, 22 May 2024 10:51:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, drm-devel@ashyti-mobl2.lan,
 Andi Shyti <andi.shyti@kernel.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>, Gnattu OC <gnattuoc@me.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Jian Ye <jian.ye@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Fix CCS id's calculation for CCS mode setting
Message-ID: <Zk2yBPmDGKECF_vH@ashyti-mobl2.lan>
References: <20240517090616.242529-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517090616.242529-1-andi.shyti@linux.intel.com>
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

> The whole point of the previous fixes has been to change the CCS
> hardware configuration to generate only one stream available to
> the compute users. We did this by changing the info.engine_mask
> that is set during device probe, reset during the detection of
> the fused engines, and finally reset again when choosing the CCS
> mode.
> 
> We can't use the engine_mask variable anymore, as with the
> current configuration, it imposes only one CCS no matter what the
> hardware configuration is.
> 
> Before changing the engine_mask for the third time, save it and
> use it for calculating the CCS mode.
> 
> After the previous changes, the user reported a performance drop
> to around 1/4. We have tested that the compute operations, with
> the current patch, have improved by the same factor.
> 
> Fixes: 6db31251bb26 ("drm/i915/gt: Enable only one CCS for compute workload")
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Cc: Gnattu OC <gnattuoc@me.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Tested-by: Jian Ye <jian.ye@intel.com>

Thanks everyone for testing and reviewing, pushed in
drm-intel-gt-next.

Andi
