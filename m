Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A16A50A16
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 19:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94AE895B9;
	Wed,  5 Mar 2025 18:39:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCWByaNK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38073895B9;
 Wed,  5 Mar 2025 18:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741199981; x=1772735981;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=fkrem/Y4xUzQrxsqTUs2iEiyFtGm0mL1Up+9HR1+JqU=;
 b=jCWByaNK3ZKEOw7xfZ79Ux2NINJ6H93TGKrRuOQoh/rjmEAeZR+rqH94
 gGqVFadxLjh0X136qhoUK3gozYm6j7qioM2vaz9QHgcRpAaFGiD9LRUH/
 NdavaGsejizFGGOOEun9KK2NHWGJq4Y3uQdFWDR8h4TNeZE+fOxeMY568
 qF2cqLAa/o9AmEVYXznCqj125lxlAOsWunBT64xbU17YFm6u8WzwMP1yb
 5xaCbRDPfKVOl1S7M9umVdRdl1rCK4ph1MFyYwqMqoV/slFmX0vMXRREf
 A5nvNOljnVRtTORrChRcU0rWQS5Q1Zjr5bAtUql0ti6pR4wrZ8dzPX6HY g==;
X-CSE-ConnectionGUID: FTgtFxjoT0yXmQMnAZ1hTQ==
X-CSE-MsgGUID: VcLvhkuCTtKVLaTZz8QB5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42043040"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42043040"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 10:39:38 -0800
X-CSE-ConnectionGUID: ZoOJb1DxSkOHRDZM1D5aow==
X-CSE-MsgGUID: X/LIUAdsSgCLaQTxpHYqcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118944295"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 10:39:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/display: convert various port/phy helpers
 to struct intel_display
In-Reply-To: <IA1PR11MB6467AB7FBE50BBE169078214E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1741084010.git.jani.nikula@intel.com>
 <e28e53bad5014ba3ef17431557b517f1b8530963.1741084010.git.jani.nikula@intel.com>
 <IA1PR11MB6467AB7FBE50BBE169078214E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Wed, 05 Mar 2025 20:39:34 +0200
Message-ID: <87y0xjwcd5.fsf@intel.com>
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

On Tue, 04 Mar 2025, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
> LGTM,
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

Thanks for the reviews, series pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
