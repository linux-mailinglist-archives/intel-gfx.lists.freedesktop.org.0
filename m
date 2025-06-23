Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C058AE38EC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 10:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A2910E1D3;
	Mon, 23 Jun 2025 08:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PG4vhU8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2113910E1B3;
 Mon, 23 Jun 2025 08:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750668603; x=1782204603;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6kAvt8nGUBDRrtNHSo7d4eBZUBjdt2luF5DDnXX9W1k=;
 b=PG4vhU8WcLV45Adx+zu/yAWv+zanB8lW3eRFfRpNx/gUiyhmG2vul/LB
 DA1LjWaVIYylDD/1wTMo7wPuU6faMmdqNMUnPnrRKmuhX4DfpbBVmSZ5s
 pUQDJXSRAXJ212YwJgjwfLKLdWTgKh2MqlCUKfUVGYr+n5B9N/Ekw9Z46
 oPU6o2QVg4Iar7GBYSTcII+ffrnnUpNMkHmhaxiUYJ+KpoBkvH+oKC1Sn
 embpMwyqaogzrNnI3Y+m/szfINQrzGwS7/iFxVSOoJs/dF7FpLA83AArL
 P8USg+WMhdF9kH4VhcM011qsPtTI60h/zbiQLzrgCb2c9zAQGmPU+Htq9 Q==;
X-CSE-ConnectionGUID: IONFgYRKTMa1MZDJxPBdzQ==
X-CSE-MsgGUID: NEvXTDk2SXm4JmZ/3WKp4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="56674547"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="56674547"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:50:03 -0700
X-CSE-ConnectionGUID: KyKuSrHDQiWs+ff/A6ZVdg==
X-CSE-MsgGUID: 7DK1VpInRS6HUR6cfojsGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="151826232"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:50:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 0/2] Changes in hdcp2_stream_encryption
In-Reply-To: <20250619113340.3379200-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250619113340.3379200-1-suraj.kandpal@intel.com>
Date: Mon, 23 Jun 2025 11:49:57 +0300
Message-ID: <eb5ca1f98c7ceee3f3e504a9f6c2ac2bf0557b73@intel.com>
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

On Thu, 19 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Contains changes in hdcp2_stream_encryption where we remove the
> intel_de_read from the WARN_ON function also we move to using 
> HDCP2_STREAM_STATUS for our WARN_ON for platforms PTL and above.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Suraj Kandpal (2):
>   drm/i915/hdcp: Do not use inline intel_de_read
>   drm/i915/hdcp: Use HDCP2_STREAM_STATUS instead of HDCP2_AUTH_STREAM
>
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 22 +++++++++++++++----
>  .../gpu/drm/i915/display/intel_hdcp_regs.h    |  4 ++--
>  2 files changed, 20 insertions(+), 6 deletions(-)

-- 
Jani Nikula, Intel
