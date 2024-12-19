Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A805A9F78FE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 10:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492C510E2A3;
	Thu, 19 Dec 2024 09:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mmjTS1wZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1DF010E2A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 09:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734601976; x=1766137976;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xswm1z7f3ns05ptcB+HMvVlAiKze4XRKl/fAYlMlBgI=;
 b=mmjTS1wZ8k9Kz5GULNw9lOIgKDEITKVJx9sHtK+h5ptx1lGJsgMSMSHX
 CaP/3QfEEKnD59Y0NL28SP1WrGi7DXrjFpZaXM72a9Nm4fEckJDA4zqHR
 henCANz+F9HNJpM8xqtU1nNtBey4H+g3EVwclJE57ZD6jQJ/58pjTiToK
 9s4iHJPM/uv91s3e48cTo7B0wxQqAChG7gIsKZk1MYZryZd8IrDJMziX4
 XZeHZdY0Dysuoh/xdC1BrhaBzDrvBuX/M42kDcrqyoxnSDwo8CZEytWrL
 6phom/SFcv+SaKmPm0CkCCKcByO7r0L/1VmlDbiKJUH68VYFhyZ0MKvu/ A==;
X-CSE-ConnectionGUID: OYKjivc5Qk2L686q+34qPQ==
X-CSE-MsgGUID: 5VRwLywiQ5CtzGDR1RdBcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35133837"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="35133837"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:52:55 -0800
X-CSE-ConnectionGUID: 9TmXdmSQQfqBG88IKTloWw==
X-CSE-MsgGUID: G8KTpQVLRkuW0HXFZ7W/kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="97970874"
Received: from carterle-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.178])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:52:53 -0800
Date: Thu, 19 Dec 2024 10:52:50 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Subject: Re: [PATCH v2 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Message-ID: <Z2Ps8shacJ8EDhNF@ashyti-mobl2.lan>
References: <20241217063532.2729031-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217063532.2729031-1-nitin.r.gote@intel.com>
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

On Tue, Dec 17, 2024 at 12:05:32PM +0530, Nitin Gote wrote:
> Issue seen again where engine resets fails because the engine resumes from
> an incorrect RING_HEAD. HEAD is still not 0 even after writing into it.
> This seems to be timing issue and we experimented different values from 5ms
> to 50ms and found out that 50ms works best based on testing.
> So, if write doesn't succeed at first then retry again.
> 
> v2: add a comment (Andi Shyti)
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

merged to drm-intel-gt-next.

Thanks,
Andi
