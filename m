Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE9F98814E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 11:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D4F10EC9D;
	Fri, 27 Sep 2024 09:27:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LgpODeOB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8E910EC9D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 09:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727429273; x=1758965273;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VXkc6Qeaj9A9VzQr23x5nOdDGONipDkDVWX7sH9wZQ0=;
 b=LgpODeOBStqPI8U5CZXJBnagpT8HoegwfymTmhnsZl7hkvkXsO9C9gQs
 JvyNCr4HPPFrtyVOSm2aqWE0m4++k10CB01geCsGtoDk5dmtuo+OerO9w
 BZRHLs3i9gQ3B5z5rQHCTDvEbX8rgQa0aDKO/I1lOMr8nc54Yr4FbqQZA
 ctYK2hiUAK/tX/DVYdESN8RtiANjmSY0q2DD4sMO8KsWUJgORn+AnHiIg
 na7OkjX3tiJGml9/b31GCeZGCVzl8y5wGLBeKVscQr9CiA91fdNR5fk2y
 u/s1W8ielhioLY+CI6wTrB7+MPmBIUHrDfnXQdJ8R9ZLJPOm6BQ2EQV8M w==;
X-CSE-ConnectionGUID: iAFFQQrTS+28UNfG2StxSg==
X-CSE-MsgGUID: TOD1SEvCQd+3SOg0fME9Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="14184399"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="14184399"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 02:27:52 -0700
X-CSE-ConnectionGUID: 5Wmk8goyRh2EJdGznT5EkQ==
X-CSE-MsgGUID: g99MfvRKRwOJyS+vW9axQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="76990782"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.200])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 02:27:51 -0700
Date: Fri, 27 Sep 2024 11:27:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 1/1] drm/i915/gt: Use IS_ENABLED() instead of
 defined() on config check
Message-ID: <ZvZ6lOw99W00PEgt@ashyti-mobl2.lan>
References: <20240920104541.1899779-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240920104541.1899779-1-nitin.r.gote@intel.com>
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

On Fri, Sep 20, 2024 at 04:15:41PM +0530, Nitin Gote wrote:
> Always prefer to use IS_ENABLED() instead of defined() for
> checking whether a kconfig option is enabled or not.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
