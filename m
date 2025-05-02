Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FF1AA6EB0
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 12:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D6710E8ED;
	Fri,  2 May 2025 10:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iwNAz3IK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4852C10E8EA;
 Fri,  2 May 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746180113; x=1777716113;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ZiNVIg6YN8JrhLaEK+IqCSPclKxawIwXOQKMsWvgIx0=;
 b=iwNAz3IKhFzy07q8jI97ZJ7XSghTpc1gXCVgJ4f5GDlprlJc4T7liZr2
 rnN+VHmrVuJBJRoHF64+HsCk7ptCcAP7EEOxwSHtU1Q+k6fu+lxdXPUNO
 O1hsFO+WcAIuvugKH/7essqGi7L3tFzwuK/PTxmoUv2WhT4Y39GZ+NeoW
 TUZSFOqW0lmzCXBnHJtaVAikITRHjDlwXEckLC+SFngikNipaO/06rqY2
 SWB7jarUKCjVmGBwHKX988663Dlgxuuz8SlmADxC1sEf1uxgEQF3702Q2
 1tRHA8UrLw++ynWoLZuDetlxuJXPSEQzp8ykIUJ2wSMKdIIRkwDydFWug g==;
X-CSE-ConnectionGUID: fgaBQRmTTwi4Ot7WpTaWBw==
X-CSE-MsgGUID: XElw7scDTE2d+DuBRXmIZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="35478223"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="35478223"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:01:53 -0700
X-CSE-ConnectionGUID: xTnX2y/OTIeMEE7GcAkg7Q==
X-CSE-MsgGUID: t7Bt++MTQoek9CzW634bPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="165669328"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:01:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/backlight: drop dmesg suggestion to file bugs
In-Reply-To: <b66c8972-bd33-4e66-81a7-7e6b2d6e34ba@ursulin.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250429112534.2121656-1-jani.nikula@intel.com>
 <b66c8972-bd33-4e66-81a7-7e6b2d6e34ba@ursulin.net>
Date: Fri, 02 May 2025 13:01:48 +0300
Message-ID: <87ldrfwctv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 02 May 2025, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
