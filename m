Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8797BBA9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F358710E588;
	Wed, 18 Sep 2024 11:31:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VO0C0OHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49D510E58A;
 Wed, 18 Sep 2024 11:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726659071; x=1758195071;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OJrNEhSOsy3j4Cz2hwE2E5f6GquprjhhwcVphim765M=;
 b=VO0C0OHU+6Supf53rq2hjr8EFA/b12sTQwdMXApxp4htcx2UxbSdQIoE
 IrU4BUdcfVA6a4zShp4BlZ1jcJQK7mQsJo2/WALhB04gU12O5nljgHOMG
 9Un/seB0vIYWfYcC5RRydGBUv65Cfkh5DtOKKV3/tsoFYvf01sqTlTPRd
 14DqLPS4x/EDJO+8QN1VjZGRisJ8umeR5OHbap39X2aU2HGaBV1l7O5IM
 e2rhKpxcqiwgmL51eq8Li0qMVCI+atGD7tCNsst3b6QAPe1GqMP4VaNtY
 2P/AGiIJIHSvPxB6q6sl41FsoIsjgSEIs8iAKa8KDX/riZhTcvZ+rf91v w==;
X-CSE-ConnectionGUID: pcv2CanGSeK8T/8Epr726Q==
X-CSE-MsgGUID: zOPw7EoBQveOZYxNXjwjgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25050560"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25050560"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:31:10 -0700
X-CSE-ConnectionGUID: QNoauVOSRPOCuXCOB+EF9A==
X-CSE-MsgGUID: jXJGSoPdQ7uMSlaK1CbmDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="100211240"
Received: from carterle-desk.ger.corp.intel.com (HELO [10.245.245.137])
 ([10.245.245.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:31:08 -0700
Message-ID: <30f6a93c-eb20-4f48-b006-e8e4fa2315f9@intel.com>
Date: Wed, 18 Sep 2024 12:31:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/gem: fix bitwise and logical AND mixup
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, stable@vger.kernel.org
References: <cover.1726658138.git.jani.nikula@intel.com>
 <dec5992d78db5bc556600c64ce72aa9b19c96c77.1726658138.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <dec5992d78db5bc556600c64ce72aa9b19c96c77.1726658138.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 18/09/2024 12:17, Jani Nikula wrote:
> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
> the wakeref is non-zero, it's either -1 or a dynamically allocated
> pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
> the code works by coincidence with the bitwise AND, but with
> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
> condition evaluates to false, and intel_wakeref_auto() doesn't get
> called. Switch to the intended logical AND.
> 
> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.1+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
