Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA9DA7818F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 19:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1BA710E178;
	Tue,  1 Apr 2025 17:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mFkrK90L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B3110E178
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 17:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743528893; x=1775064893;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HZnfMYbRawoQCBNozaYTeJeSa4cYffQIsMbbuIQUPJY=;
 b=mFkrK90LeR3BwCr+hbjXwTTD2ZPQfyPYPppI2Eo2vDpeNRGrH478cXRZ
 u5MnjD+CiHkT48RF0nNoAtwPmyZZ7E3uFpsFRjyEsKx0zhwxD7k+kQJdB
 kcJNlhw8aGjASkB+JkI4oevb/DM90u7Btv+pCB+4ghpQFxNyrHz2BeedF
 Z92MUmo+FWgcsI0NSgtaS3JSRfDV26WTuz+Xby64V5jolMS+1QjDLrOfi
 F5JUUgYHNPOagtGXK8B2vK3gGS0wGJfb3TBPRX6igdisLwZsIXnbagdRj
 KJAdNXus0j3FgoQvZ359IVwQ7cOyHxvGuSnm0k687vcr5WN6R3Jb4DOAD w==;
X-CSE-ConnectionGUID: VTI+yvDAR7GCCetKd+5NWw==
X-CSE-MsgGUID: 8TW5HreARCaLDTKnKZrjpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="48736685"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="48736685"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 10:34:53 -0700
X-CSE-ConnectionGUID: WqHK9jNAQJSRxzZtL8uQ5Q==
X-CSE-MsgGUID: sHBJFtKrQQGxEK/Wv449Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="131177749"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.184])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 10:34:51 -0700
Date: Tue, 1 Apr 2025 19:34:49 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/pci: Remove force_probe requirement for DG1
Message-ID: <Z-wjuTN8Wpo3coT9@ashyti-mobl2.lan>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
 <20250401163752.6412-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401163752.6412-5-ville.syrjala@linux.intel.com>
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

On Tue, Apr 01, 2025 at 07:37:52PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Dunno why we still have .require_force_probe=1 on DG1 after
> all this time. I'm not aware of any real problems with DG1,
> so get rid of the force_probe requirement.

Excellent!

> Generally the difficulty with DG1 is that it requires a
> 4GiB BAR for the local memory, and that's not something
> that works on every system.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
