Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96795A042A6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411AB10E706;
	Tue,  7 Jan 2025 14:34:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PfWKZC9+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96ED510E706
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 14:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736260482; x=1767796482;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HONSl9HpTtTEDmHXIlezpx1e0wGbJqhXlAOtWnsXvco=;
 b=PfWKZC9+jUpGr5bYts85WwrN0Vzs241JanIpBKnEpm45/tK1L4ImdE9E
 Xb6rbvOFXZhV61U/QNQEv1fdWIFkN0FlYMSkIKiQBQU3VfZ1X2hlrfdy+
 IGniC5IFwFcP4W6y/8f413qs2ZXaDqfhMWXV2wAt4xqofesegwNpUJjDb
 Nvh2SnH8wQZ73+9xWBWDsGv066JG1Gx2YA/hGV/ImfXqZoQ/Lk9esFyOJ
 qx380+/DKdxBGpPvvTeD42FJST9c373qzT+X9OZ6fY8gfI3AGx8JEKkkG
 Ee4YWVhYl4NXUst9HgZKbj2ziGvCOYCN2simuUoOLqi6h0UaK9Bg1lny7 Q==;
X-CSE-ConnectionGUID: MWHNKDXEQkmlw2TRPjCHkw==
X-CSE-MsgGUID: TMSPZoGSSyih+zVbVu2otQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36141463"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36141463"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 06:34:42 -0800
X-CSE-ConnectionGUID: PYDF4IcQT6u0yVVaBzBn1w==
X-CSE-MsgGUID: wi9u8c61TmO1iguggHhHLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106805667"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.112])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 06:34:40 -0800
Date: Tue, 7 Jan 2025 15:34:37 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 8/8] drm/i915: fix typos in drm/i915 files
Message-ID: <Z307fad6-6KQyjeJ@ashyti-mobl2.lan>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-9-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106103037.1401847-9-nitin.r.gote@intel.com>
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

Hi Nitin,

...

> @@ -4485,7 +4485,7 @@ static u32 mask_reg_value(u32 reg, u32 val)
>  	if (REG_EQUAL(reg, HALF_SLICE_CHICKEN2))
>  		val = val & ~_MASKED_BIT_ENABLE(GEN8_ST_PO_DISABLE);
>  
> -	/* WAIT_FOR_RC6_EXIT has only one bit fullfilling the function
> +	/* WAIT_FOR_RC6_EXIT has only one bit fulfilling the function

same thing here, you could use this chance to fix the comment
style.

Thanks,
Andi
