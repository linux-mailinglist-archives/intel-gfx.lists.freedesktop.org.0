Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D49BC85766
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 15:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD3B10E418;
	Tue, 25 Nov 2025 14:40:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VR3ACGal";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CEE10E416;
 Tue, 25 Nov 2025 14:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764081658; x=1795617658;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/+KyaG8yPBOqTcTbzmWxPd7spvTDm3mnPRpQyAtIgsY=;
 b=VR3ACGalqzDCZcE/KHw76N5OPq/Dc3DdVyiLCFtgKug9mMUkxBMAJZdX
 4OrW8u/UtV15NpK6Ko3NKXWRHo3i0V2XatHyo4FY6ekp9T3tVgC128rgy
 uW8870sDIkplErBeTsBOLgQjH0Xg5u3aJOGWCVikJ1LXCD2+t3xEbpHAy
 S/7YoLZrUPap9zBSWXKhmzWI8ms8PVfdTO0PA5IRZW7dRC94wzrrOU4b8
 MYp+T371He5nZbHIqW32pauTvB3l/7cuBUVafw/qSy+hVJ/QKAXxR7sa8
 ocmyryMVLQiZI4jpwxDKpRM0UHp/F9AO66r0DDNHMg2JJrvMJ6AK0hmp+ Q==;
X-CSE-ConnectionGUID: Rw97dfAmRR+xa7lVQSE7RQ==
X-CSE-MsgGUID: j9H5R0aNS7icQqRe2SseIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="91588093"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="91588093"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:40:58 -0800
X-CSE-ConnectionGUID: WY8MRpwDSpCJUrPrZE4M2w==
X-CSE-MsgGUID: kc1+knbvT5qpgfimERyVHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="193084860"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:40:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: RE: [PATCH 2/2] drm/i915: use struct drm_device for clock gating funcs
In-Reply-To: <DS4PPF69154114F9001C879C31796C0B8F4EFD1A@DS4PPF69154114F.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251121112200.3435099-1-jani.nikula@intel.com>
 <20251121112200.3435099-2-jani.nikula@intel.com>
 <DS4PPF69154114F9001C879C31796C0B8F4EFD1A@DS4PPF69154114F.namprd11.prod.outlook.com>
Date: Tue, 25 Nov 2025 16:40:53 +0200
Message-ID: <adafc80872cc09bb5698fc6e28e5d7b7a9b0e9e7@intel.com>
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

On Tue, 25 Nov 2025, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
>> Sent: Friday, 21 November 2025 13.22
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Coelho, Luciano <luciano.coelho@intel.com>
>> Subject: [PATCH 2/2] drm/i915: use struct drm_device for clock gating funcs
>> 
>> While we want to refactor intel_clock_gating.[ch] and likely move a lot of display related code to display, start off with a little
>> intermediate change to use struct drm_device in the interface instead of struct drm_i915_private, to allow us to drop another
>> dependency on i915_drv.h and struct drm_i915_private.
>> 
>> Cc: Luca Coelho <luciano.coelho@intel.com>
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks, series pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
