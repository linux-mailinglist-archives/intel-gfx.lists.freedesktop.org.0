Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9664287908B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 10:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A855010EEFD;
	Tue, 12 Mar 2024 09:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8qqQcGb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09E910E95E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 09:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710235180; x=1741771180;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=g67Mtk+ln61BVTy4o5vI78shq1EqtdpngfFgmDXUfTg=;
 b=l8qqQcGbA8bC11ZyjNjSCDcJ2DzLXjD6XhNK6gY3WO0GMBPI1Q8u2hU7
 Lf5dKTPJNTjCRqgQIfJ8o7Kc6PGJaXTY2gAcyfffvEwa7U1uha93NtSFy
 sWspT192Tsoy5pR6GPuDShrtG3Krn6/hv881Q4InN/pmaEcCw8qiV6vuo
 Ldw8uCPmQe+vHUUKL45hJhc2Zo+0jJnfqzQDesJrk2xcstvdy+UfaclIG
 TSJjJCHbeKHJ87gV4YnQugp5A4BDDvrlyLsQX7/nICzv+/ybedFi1day8
 O+jMXI2bbp+0vGrm7BaHA9G3rx0LO2U3FIomj2Bqk9hKU0bWwjnNCCZzG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4791467"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4791467"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 02:19:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16069981"
Received: from unknown (HELO [10.245.244.217]) ([10.245.244.217])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 02:19:38 -0700
Message-ID: <ab2f7a4a-c6dc-46d3-9ff0-d3db057bea88@intel.com>
Date: Tue, 12 Mar 2024 09:19:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] drm/xe: Remove useless mem_access during probe
Content-Language: en-GB
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
 <20240311192303.33961-6-rodrigo.vivi@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240311192303.33961-6-rodrigo.vivi@intel.com>
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

On 11/03/2024 19:22, Rodrigo Vivi wrote:
> xe_pm_init is the very last thing during the xe_pci_probe(),
> hence these protections are useless from the point of view
> of ensuring that the device is awake.
> 
> Let's remove it so we continue towards the goal of killing
> xe_device_mem_access.
> 
> v2: Adding more cases
> v3: Provide a separate fix for xe_tile_init_noalloc return (Matt)
>      Adding a new case where display HDCP init calls which
>      are also called at display probe time.
> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
