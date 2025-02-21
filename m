Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2F5A3F646
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 14:45:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A117C10E214;
	Fri, 21 Feb 2025 13:45:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VmGsNjJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2DF10E214
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 13:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740145521; x=1771681521;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L4qPjRDAyzu4qzeM5wIgAqWJo9PACOv7JlO3TxgQ3G8=;
 b=VmGsNjJ6/6P296fQK5TSzFzaNlk+gAu6oLJ/NvX0+bfVodGs3CYZ68Tz
 TATvZZZ/Dxxx55UNtUkFrH+PwqzxpY7HtscD9r7lF0k/9SrZncRDg6o11
 G7ghWDR20KzTrTilDUR/xSVcgxruGFKCNn0qlFtska8SvwpsnHVASwKmP
 E+XHxOB96NXLr9w9idxY3ibqvkOuR2hM4hf1+omnntyeouZ+sEyqNxKnH
 VjfTTwOgTznz/IQ9HPW7gB139K6ZTGEwyVm/xXYKmUTzQUUlOg+Z1vGos
 jPPecxbt9eSeUZ2TjDoLh+TsW9hldNc+J0OvMttllJaJpi4pLvyJ+Zd5v g==;
X-CSE-ConnectionGUID: l2CudvzWQFi5AtJikiBujg==
X-CSE-MsgGUID: G7VcmN/6RDyKWOwzXlo14A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52394390"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52394390"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:45:21 -0800
X-CSE-ConnectionGUID: 6Jmq1bXgQ4qBs8UrLl4nJQ==
X-CSE-MsgGUID: vzux9k7BSJyEGeTcinik2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="120473701"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.44])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 05:45:19 -0800
Date: Fri, 21 Feb 2025 14:45:15 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/12] drm/i915: Relocate RING_FAULT bits
Message-ID: <Z7iDawgt2RIC8P_B@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-3-ville.syrjala@linux.intel.com>
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

Hi Ville,

On Wed, Feb 12, 2025 at 01:19:30AM +0200, Ville Syrjala wrote:
> We share the bit definitions between the older
> RING_FAULT registers and their various gen12+
> counterparts. Currently the bits are defined next
> to the new registers which isn't what we typically do.
> 
> Move the bit definitions next the older register offsets,
> and leave breadcrumbs around the gen12+ registers to make
> it easier to find the right bits.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 5e4f0545f558..2d3da98e94f0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -326,6 +326,11 @@
>  							    _RING_FAULT_REG_VCS, \
>  							    _RING_FAULT_REG_VECS, \
>  							    _RING_FAULT_REG_BCS))
> +#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x1f)
> +#define   RING_FAULT_GTTSEL_MASK		(1 << 11)
> +#define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
> +#define   RING_FAULT_FAULT_TYPE(x)		(((x) >> 1) & 0x3)
> +#define   RING_FAULT_VALID			(1 << 0)

Perhaps we can add a comment here to tell that this is referenced
below. But not a big deal, though.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

>  
>  #define ERROR_GEN6				_MMIO(0x40a0)
