Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B624E264105
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 11:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFBA66E8C4;
	Thu, 10 Sep 2020 09:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43F06E8C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 09:12:46 +0000 (UTC)
IronPort-SDR: jtQTC1Ro6tlG/+h+JooYEjNYRiIQRb9EAuqGdi2r2WAhclNr1obRgU94WJpQRelZYez3Px0XMa
 FnjzLvy1lDIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146202045"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="146202045"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:12:45 -0700
IronPort-SDR: 2a+zlo7zaJ5g/IOqnBeci1qQeuA2/gydU8nq7OgR0EyTIL+ZgIl6pUAE3uYqJgzJ8oPQsVPfSP
 tIFUDLcQJP8Q==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="480815930"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 02:12:44 -0700
Date: Thu, 10 Sep 2020 14:42:46 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200910091245.GA7558@intel.com>
References: <20200910081727.4505-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910081727.4505-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 0/6] HDCP 2.2 DP MST Support
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-09-10 at 13:47:21 +0530, Anshuman Gupta wrote:
> This is RFC proposal to support HDCP 2.2 on DP MST.
> This series is built on below series using the
> common functionality of HDCP stream encryption.

Before I get into the series, what is the plan for CI coverage for
HDCP DP MST, w.r.t igt and hw.

Ram
> 
> Anshuman Gupta (6):
>   drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
>   drm/i915/hdcp: mst streams support in hdcp port_data
>   drm/i915/hdcp: Pass connector to check_2_2_link
>   drm/i915/hdcp: Add HDCP 2.2 stream register
>   drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
>   drm/i915/hdcp: Enable HDCP 2.2 MST support
> 
>  .../drm/i915/display/intel_display_types.h    |   9 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  84 +++++++++++--
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 114 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  30 +++++
>  drivers/misc/mei/hdcp/mei_hdcp.c              |   2 +-
>  include/drm/drm_hdcp.h                        |   8 +-
>  7 files changed, 204 insertions(+), 46 deletions(-)
> 
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
