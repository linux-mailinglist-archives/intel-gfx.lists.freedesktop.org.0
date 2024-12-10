Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2041F9EB01E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 12:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84BC410E087;
	Tue, 10 Dec 2024 11:45:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mO8A2xYk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD8910E087
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 11:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733831158; x=1765367158;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y55OahLYYSmQWH/4VNJ32dwMHMFoSRdsSM+6ey/5Jpc=;
 b=mO8A2xYk/6FQbD457zArCSCTwHDIgyBX7LGM0bKnNR6hXFiQHnJLVpNb
 WmfcCaSrDhWZdAbV2P6ievYOP4FfO6i1r9lpFpRvMpaYX4xFV6SxQl2FN
 E2AvUNxjcFFzbFkh8R7VZcW4sj+kGPk6rOr7OrWIa6m2RQ70NbiKkERvh
 jNpkEMCmpcGTQLp+cKlLjNkbRtMMhBxp6qvbhwyjBsSM4PrO0eYR+RGI3
 msd4vfDTAV5mBVZcHgpOvo14he1uBuwsdA0R4Ins144SKp//4FQYoV0fL
 B6T2fX2ny6zXUR3AamAYgUARq3avm712LLXOMkFoMvnx1Xs/wYYBsUUzu A==;
X-CSE-ConnectionGUID: 8fzTwy+zSb6cWkUSu8c6Zg==
X-CSE-MsgGUID: 9sEZJOYvS2GFfnfWDZMVoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="21754647"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="21754647"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:45:57 -0800
X-CSE-ConnectionGUID: uwHnPyz6RTKbcFgPm+qT0g==
X-CSE-MsgGUID: X/X1sqKuTL+7s+Xww8kW1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="95590591"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.254])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:45:53 -0800
Date: Tue, 10 Dec 2024 12:45:49 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 1/4] drm/intel/pciids: Refactor DG2 PCI IDs into
 segment ranges
Message-ID: <Z1gp7XhRn4mxGEoz@ashyti-mobl2.lan>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-2-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241030143418.410406-2-raag.jadav@intel.com>
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

Hi Raag,

On Wed, Oct 30, 2024 at 08:04:15PM +0530, Raag Jadav wrote:
> Refactor DG2 PCI IDs into D, E and M ranges which will be useful for
> segment specific features.
> 
> v3: Rework subplatform naming (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
