Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E329F7915
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 11:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F9510E47D;
	Thu, 19 Dec 2024 10:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1shqFxI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE7410E483
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 10:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734602508; x=1766138508;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NsRUBN7qzvDE+rZgWgf+aLJ02DGHLVEFz9n2HPTxARs=;
 b=a1shqFxIAJFhXLN4NYHeMIavwIjzaHvPoHtGsHLWnDrcQiF5qlcK/GFA
 bhi6XUxSoRLpK5yXNV+UsRtOkmdWVMDLDh/laz+yNR2RFxf9J7NuMqm1L
 17iirhFDDapP/+/AHBVA5Ms8iccUVMuJGF4cNC/VM/BKVV1BckZFIf443
 3IyyoB4aRXIPTxUuIL4odOTaK6aV2TJOpTw59+asgSIEvBB3t06phBLfL
 EVGEPT7tMpBJnM/o7B9EwCJGdUn5aCPTuwFkk2UJKHv20qafzVz6P1BJ4
 sIjTRJFU03qZaPYyADf11Tcz5xJZPFXDZAxgLmkrACk2q9sZ4xKYr77WY A==;
X-CSE-ConnectionGUID: gXQ7sG6cQY2YC6X7DBicrA==
X-CSE-MsgGUID: qg8JWWX1QZ6u1JFk48AZ+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35134569"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="35134569"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 02:01:47 -0800
X-CSE-ConnectionGUID: 4C/U1D4xQFOD4MDqeHYs9g==
X-CSE-MsgGUID: 21hwE9WeSO2qMWFnPBoQpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97978679"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.178])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 02:01:43 -0800
Date: Thu, 19 Dec 2024 11:01:40 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sk Anirban <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, sai.teja.pottumuttu@intel.com,
 riana.tauro@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v7] drm/i915/selftests: Implement frequency logging for
 energy reading validation
Message-ID: <Z2PvBCpJnMG2WbQz@ashyti-mobl2.lan>
References: <20241129154716.2764974-1-sk.anirban@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241129154716.2764974-1-sk.anirban@intel.com>
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

Hi Sk,

On Fri, Nov 29, 2024 at 09:17:16PM +0530, Sk Anirban wrote:
> Add RC6 & RC0 frequency printing to ensure accurate energy
> readings aimed at addressing GPU energy leaks and power
> measurement failures.
> Also update sleep time for RC6 mode to match RC0.
> 
> v2:
>   - Improved commit message.
> v3:
>   - Used pr_err log to display frequency (Anshuman)
>   - Sorted headers alphabetically (Sai Teja)
> v4:
>   - Improved commit message.
>   - Fix pr_err log (Sai Teja)
> v5:
>   - Add error & debug logging for RC0 power and frequency checks (Anshuman)
> v6:
>   - Modify debug logging for RC0 power and frequency checks (Sai Teja)
> v7:
>   - Use pr_debug if RC0 power isn't measured but frequency is (Anshuman)
>   - Improved commit message (Badal)
>   - Change API to read actual frequency without applying forcewake (Badal)
>   - Update sleep time for RC6 mode (Anshuman)
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
