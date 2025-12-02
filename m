Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E99C9B0CD
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 11:15:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E2410E166;
	Tue,  2 Dec 2025 10:15:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eN1D9Ecp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6507610E166;
 Tue,  2 Dec 2025 10:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764670550; x=1796206550;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DQ2ygj4ShSHitQTea0UPXSSitiEsb6bqiySfBYrUqaM=;
 b=eN1D9EcpgoRvcStiym+bXTKSTNwdc6OSho3eCDub0LRZWN38Em1sbhJ8
 GQkVS43C4VJWLveqPcg2olfN6JOBekaaC2k+Nt69WsEpTTWSn8qeqVH8T
 tBV6vysitzvpkqFL1XWlLzWASWKK59aZyvLmTVsEKwoL2r4x4u7DvBd0G
 fJXiK2uw6eb4EwVXpBnpaTns4inHhO2c1spTsBuLD/Dk5YC3rUYNCtZ6f
 Ksnv11O68mwAZ2lWGTdvfZbDlZcJ5RK9YkvfXDrxaU/QY7wx+8WaCF/m2
 xgWiNH8vBNxfwrx16urJE8rzEXjU8sqLH69vC+bSTP9ydpKlAlo12FP6D A==;
X-CSE-ConnectionGUID: GlaNGbrmRbCBgy4mIJCQOw==
X-CSE-MsgGUID: Sq67asEGShuHN7Bm0RuxIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69224082"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="69224082"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 02:15:49 -0800
X-CSE-ConnectionGUID: 9KF/rPUOQOmQc6V3UVgaKw==
X-CSE-MsgGUID: BhqNX7QPSCS+is+yK/7DTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="199467801"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 02:15:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/{i915, xe}/display: make pxp key check part of bo
 interface
In-Reply-To: <aS3RwWnBy2nHtLLo@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251201172730.2154668-1-jani.nikula@intel.com>
 <aS3RwWnBy2nHtLLo@intel.com>
Date: Tue, 02 Dec 2025 12:15:44 +0200
Message-ID: <ff328334844100153ff2c3d2f6c6710de01a8136@intel.com>
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

On Mon, 01 Dec 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Dec 01, 2025 at 07:27:30PM +0200, Jani Nikula wrote:
>> Add intel_bo_key_check() next to intel_bo_is_protected() where it feels
>> like it belongs, and drop the extra pxp compat header.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
