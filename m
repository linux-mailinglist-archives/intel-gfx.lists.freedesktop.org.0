Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8517A07892
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 15:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56AD510E377;
	Thu,  9 Jan 2025 14:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQCocLwi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C5310E377
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 14:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736431598; x=1767967598;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GkqE38SUOpnFnYVNZHoRYYSgutyBcU1wDaudlyz+yw8=;
 b=BQCocLwiokqtA8xmDhMOI/NXar790XR4NDXxQJiM6L4XYEyUUyo9miIN
 0R1IluXu0tfH7K3pydhBnsdZ+PfdBj9oBuSUAmuS349c7bS9DGEoA9oK2
 07SsNWd1bJVQ5W5SIFA3JBMaQHS7YZdYf8+IupskYzKG3bBzyG9mcWs49
 KZwmF6Hbr8hvh9fNEVYLysYDuXC0M5Aou6pS5sLDfnmb9mngRn/2hQqFI
 YFwwR8Uqft3A09bBmCY0483mrTuLWB0I4wDGQ+h8RaVyPFwi5f4MGOZcO
 3VQO58vq7Hsqkk2DbPWyl+JELaizq0j1v7JFMJcQpZB7vaeAgyPQ+FO1N w==;
X-CSE-ConnectionGUID: Q/PATwG4Spyum2EczF1EIw==
X-CSE-MsgGUID: iMvjVBVZS1i1uo4bKAXyMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36386179"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="36386179"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 06:06:37 -0800
X-CSE-ConnectionGUID: t8qMNlGvR3ylh7IqV12xsg==
X-CSE-MsgGUID: RvlEu/AQTEucC+5ajUUcGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103214270"
Received: from slindbla-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.224])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 06:06:36 -0800
Date: Thu, 9 Jan 2025 15:06:32 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 1/1] drm/i915/gt: Prefer IS_ENABLED() instead of
 defined() on config option
Message-ID: <Z3_X6LueBVWr3VZb@ashyti-mobl2.lan>
References: <20250103062651.798249-1-nitin.r.gote@intel.com>
 <20250103062651.798249-2-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250103062651.798249-2-nitin.r.gote@intel.com>
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

On Fri, Jan 03, 2025 at 11:56:51AM +0530, Nitin Gote wrote:
> Use IS_ENABLED() instead of defined() for checking whether a kconfig
> option is enabled.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

reviewed and merged.

Thanks,
Andi
