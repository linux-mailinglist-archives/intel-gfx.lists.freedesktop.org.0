Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BD4B0A69C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 16:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9AC410E9DC;
	Fri, 18 Jul 2025 14:50:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NmcBzC6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A68910E9DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 14:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752850200; x=1784386200;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zlyoPLGFiH1pBJ0WZwgOZf9YqMxYOTTKfBO0iyADXRA=;
 b=NmcBzC6jruqfsK8azL3GbfiNtHCCqTmSPLBFYTXN5czncR1NZOGGEPCi
 3kWULyiIeokVqB73D4/M3us4SQiGnw4uEuvE4iy9vGmaDdbBJfkGAqVce
 qHvAfyBEdto62/kY7GMmagqdaFL3itsxeWLtSdSDV0OLWz8hh1WSLflsK
 deJNaxvfp/vSheK8Y+nCzV1KncuDpTBueS70ESKrhU8mF0cHGtCH6UJ44
 LlfJ00SgSqCje7mG8+lnwxSsJMCt6r+yumwOBNMFRCL38psLeCgVN5ovp
 OMQDxPkn1JjFvMUkG3iRImOe6rryuZyskeT6uJ3uG0SIS2xwdOkwBr46I Q==;
X-CSE-ConnectionGUID: 8nLKFDZfRvS92c7emXHitw==
X-CSE-MsgGUID: 9R0URENNRfuUduGY49b0mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="66210503"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66210503"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 07:50:00 -0700
X-CSE-ConnectionGUID: l/RQGIexS9q1gJ2cFbJ9fQ==
X-CSE-MsgGUID: 0yuqdDVQQc6yCjD07pEUsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="162348193"
Received: from johunt-mobl9.ger.corp.intel.com (HELO localhost)
 ([10.245.245.84])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 07:49:58 -0700
Date: Fri, 18 Jul 2025 16:49:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 krzysztof.karas@intel.com
Subject: Re: [PATCH v3 3/4] drm/i915: Replace empty conditional with continue
 in eb_relocate_vma()
Message-ID: <aHpfEeKO8PrTwBEi@ashyti-mobl2.lan>
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
 <20250718102752.684975-4-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718102752.684975-4-sebastian.brzezinka@intel.com>
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

Hi Sebastian,

On Fri, Jul 18, 2025 at 10:28:19AM +0000, Sebastian Brzezinka wrote:
> Simplifies the control flow by replacing an empty
> `if (likely(offset == 0))` block with a `continue` statement. This
> improves readability and avoids unnecessary nesting.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
