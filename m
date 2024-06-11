Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDB7903EC6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CBDA10E037;
	Tue, 11 Jun 2024 14:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hAPT7rSX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7AC10E037
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 14:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116138; x=1749652138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VrSuliPCRZBBigRi2NoY7hdPQLkt55wqKsIHAzkrj/A=;
 b=hAPT7rSXvhu9/QXjm0ZQrmLOOBcbIwAlLVHtRYK7fx7i3YaTUDTH618q
 CJ0OGvQ//NMM5UnGAN/T76tfv6uhsm/2V0mIrXEE+gNQsCPiZ7dvh12Ny
 2d6BBfZB8LBc2vF2TtF2F3BCS9N0zZiuidrhv1LLEv7W2VKigmrdVZH+8
 Ih9OjZwojyAouimn9azPgPj9M8YAIlP0EHkymoeI4wE876oFIf7z61A4v
 KWKC2Gw7eDFkj3I7/GIcan3q2cr9K1HE+rHu/72UMhyP93XoHr+2gIINF
 pBvpkXHwvS/DeNXRvzbi+Ew8p9cC4bdprETWhsPTsdaadySzr81xi5ovO g==;
X-CSE-ConnectionGUID: ZWsMaky5SbOHsXQLRycPFg==
X-CSE-MsgGUID: zc2J5I2FTlGTTfveoIxwZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="37351277"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="37351277"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:28:55 -0700
X-CSE-ConnectionGUID: DOVqg5dVTNGlrG82pKWD8Q==
X-CSE-MsgGUID: Bwpp/sG8Sw6ElT7GY1VPag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39920932"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.250])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:28:53 -0700
Date: Tue, 11 Jun 2024 16:28:49 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Chen, Angus" <angus.chen@intel.com>
Cc: andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, tejas.upadhyay@intel.com
Subject: Re: [PATCH v3] drm/i915/mtl: Update workaround 14018575942
Message-ID: <ZmhfIdm2DD8EJ8i2@ashyti-mobl2.lan>
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

I had to do some manual work here, including the name/surname
reordring, because patchwork couldn't handle the --in-reply-to.

In any case, merged to drm-intel-gt-next.

Thanks,
Andi
