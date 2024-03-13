Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E513887A41F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 09:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C686810F741;
	Wed, 13 Mar 2024 08:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/UATlmH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08A510E5EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 08:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710318912; x=1741854912;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Nuscjbh5D0UX0euy0gIo4ULK8Gb44pEcNm/rhdkewec=;
 b=G/UATlmH1jnyUGqPTL9AlxytP+oWtcM35Tc5jqsM37zz9uYdIz2UTTnd
 hKDKxodfKiRMg4NSP9JPKfD5c1xBU4XDL49SJRFmS+B8AZMKRYDXTMEwq
 znI23agHl+KevzX59CipVfW2LPmzPjc1Xu9gYPcCMoPQfS8eBvxqSqLCT
 VYh8ooRkwIEhm+yCrCZNLJycvfR6QffJ/PfcG2r7QYIoIIlKeZotPqGJn
 WZkv9QWi5HrBGSxtf85S4KhiEDaLBaSRYSztUI3iGZamPyFgK1qQWu7Ls
 DEympvxelZoUMcWDFMKxUyNDli6QwBqVhMhpLAN2x7amvgN5Pg6K8ye72 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4935670"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4935670"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 01:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11766857"
Received: from jbakowsk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.28])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 01:35:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Subject: RE: [PATCH] drm/i915/opregion: add intel_opregion_vbt_present()
 stub for ACPI=n
In-Reply-To: <DM4PR11MB5971A7C401C99CBE37DAE8BD872B2@DM4PR11MB5971.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240312115757.683584-1-jani.nikula@intel.com>
 <DM4PR11MB5971A7C401C99CBE37DAE8BD872B2@DM4PR11MB5971.namprd11.prod.outlook.com>
Date: Wed, 13 Mar 2024 10:35:05 +0200
Message-ID: <87edcesf5y.fsf@intel.com>
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

On Tue, 12 Mar 2024, "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com> wrote:
> LGTM,
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
