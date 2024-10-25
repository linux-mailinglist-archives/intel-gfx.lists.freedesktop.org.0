Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C479AFDA8
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 11:06:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A3610EA3C;
	Fri, 25 Oct 2024 09:06:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrPDtYRm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D7510EA3C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729847212; x=1761383212;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K9D11y0bSDLow1X+kiVJrQjpkPlXDaXoZSHOTQQwE+Y=;
 b=QrPDtYRm4RgPrc2GlTwfLpno+JoxiwmXB/MuWk0+do5YAKby0i+Fmqe4
 Omanrmt5MTqMwDskY3aq2UfiofcbGwjEO3Ud9//KcsHxzFgAWK49DVuZV
 96/FqmCBdH5KdZiIq2z+7faXxnGORdvOve1ew2VurxV2pbBWM2SvYZkyG
 JxXns6h7syMInJbI1SjiEV7tYa70wDdobsc5bGiTD72sRvQLCihxspPE7
 ZIgz7K+AX4Ipot5CT61FKGVXF0I4NJtZrh34SccihPwJ0XvXmiTnYf5P2
 Fm/NZTItSYZqZVhqfuW+mI4x/Eq6GpmpN79GmL9f83f10IS6VJ9jtWsHI Q==;
X-CSE-ConnectionGUID: JSsK1HsRRpOytPG4IA5E1w==
X-CSE-MsgGUID: 1sT+Qbb4R+CMknkqfLDW4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="28952879"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="28952879"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 02:06:52 -0700
X-CSE-ConnectionGUID: vH9wrO+cSKqBU6K34Ic7Qg==
X-CSE-MsgGUID: EaOoWCadTYu5DU8rSkQ/NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="81181233"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.204])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 02:06:48 -0700
Date: Fri, 25 Oct 2024 11:06:43 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH v2] drm/i915: ensure segment offset never exceeds allowed
 max
Message-ID: <Zxtfo0iVXk5hguLp@ashyti-mobl2.lan>
References: <agetzfnm7xpwocyvnznewkmfqin3hyha2qywyvhqnk77gyuvuy@hat5jnfpljty>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <agetzfnm7xpwocyvnznewkmfqin3hyha2qywyvhqnk77gyuvuy@hat5jnfpljty>
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

Hi Krzysztof,

> -	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
> -		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
> -		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
> -		if (!r.sgt.sgp)
> -			return -EINVAL;
> +	if (r.sgt.curr + (offset << PAGE_SHIFT) < r.sgt.max) {
> +		while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
> +			offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
> +			r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
> +			if (!r.sgt.sgp)
> +				return -EINVAL;

As we discussed already this would hide the real issue to the
user, eventually add a GEM_WARN_ON(!r.sgt.sgp) here.

Andi
