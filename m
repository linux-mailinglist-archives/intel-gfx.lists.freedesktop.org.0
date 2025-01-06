Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E450A03065
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 20:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5139610E9D2;
	Mon,  6 Jan 2025 19:20:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LMYPzzfL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994B310E9DA;
 Mon,  6 Jan 2025 19:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736191208; x=1767727208;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wdHWwUbC/tCb5ZVSbc+f3krI3FwRu9IsxnpA40aiesk=;
 b=LMYPzzfLPLV2LqKke32XbiAHGgybhxvEbKF2IhjUqdc0PGNxW7qr3XNS
 G4lNW20Lui4Rs3HdtG8UZ7bmEkpSEj4eDcQLNLd6sUxpkxyZpwCdcV+S8
 3Zl6oLodK4LvH763cJLFTo34Jd0UrkWpSgRrfo0Q/BGBqgVnoVkqddSxZ
 emZKd/17eK7tcmiaJNfoFA6m7QzUxAZ5jVvyUKCFQ4k6HkbMrKBdmuUbH
 xoZAjS2om7RFxeQ6DpukBH5JStTBJaJN4noJSe+H6UD+7/ggxFdV0bNeA
 zN2bLU/eIXT5UHHbX1GKcA7Q0qPA0Cc07IKUn2Ucv5dw9WtYOJMGWDJ8Z A==;
X-CSE-ConnectionGUID: D3sK3yBAQJyS9T4sa7So0A==
X-CSE-MsgGUID: 6iChJnzHSsSp+xmlpZ3LOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36365991"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="36365991"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 11:20:08 -0800
X-CSE-ConnectionGUID: 3rOBkgt5ToG2c+kcNIFhbA==
X-CSE-MsgGUID: ht5qdazoQQeCZjLYH2Od1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="103025431"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.110.91])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 11:20:07 -0800
Date: Mon, 6 Jan 2025 13:20:01 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH topic/core-for-CI] Revert "vmstat: disable vmstat_work on
 vmstat_cpu_down_prep()"
Message-ID: <dimyd73eptomn5ubep7w2ueoq3f2s6yl2iot6dbzfl6mxnwi5g@e2geki6jpkmd>
References: <20250106172455.1184656-1-lucas.demarchi@intel.com>
 <20250106172734.GE5725@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250106172734.GE5725@mdroper-desk1.amr.corp.intel.com>
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

On Mon, Jan 06, 2025 at 09:27:34AM -0800, Matt Roper wrote:
>On Mon, Jan 06, 2025 at 09:24:55AM -0800, Lucas De Marchi wrote:
>> This reverts commit adcfb264c3ed51fbbf5068ddf10d309a63683868.
>>
>> It completely tanks the CI and nothing gets tested. This is being either
>> reverted upstream or the fix will conflict with the revert and we will
>> find out when it does.
>>
>> Link: https://lore.kernel.org/all/g4sefofdrwu72ijhse7k57wuvrwhvn2eoqmc4jdoepkcgs7h5n@hmuhkwnye6pe/#t
>> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13464
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Acked-by: Matt Roper <matthew.d.roper@intel.com>
>
>for putting this in the CI branch until a real fix/revert arrives from
>upstream.

pushed to topic/core-for-CI.

Thanks
Lucas De Marchi
