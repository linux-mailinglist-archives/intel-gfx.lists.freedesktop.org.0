Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B72569923E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 11:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8071910ED19;
	Thu, 16 Feb 2023 10:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBE510ED19
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 10:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676544759; x=1708080759;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rVmjU2kKhQmgyqWGXq+JVQpMGi6yz1rT+EQskxpvfPY=;
 b=mxxjyL8QiXePtNtV62cqPQeEzzt41g9BrRz3Sn4oaPqhXV6KXGFAyqie
 TGGLkNec5H8XmTyUvc7QY4El56qC70dX1VPLOQnOHO/zOiXo3C46ML/Wg
 2enCEolVDrUTUC+aheuqQPVtWwGmVn1TyCies12rlApUpicQj2IrGTKPo
 6iHlFSZW1juOXOa9KqNYdK7/ix3GwoLHk6k3JJFNnx245lRBgkzXIIqce
 s3bQf7dot0lYJl6EAWDbbyqBVwem2qI57DcCpxpjQdgbZj0dcey3C7ygq
 jElWk1VmxQlh2MduO/9dDMgAx2NryV0C3OwChtCDzkVBN2EOrh705pQVb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="315365010"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="315365010"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:52:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="702513721"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="702513721"
Received: from aaronov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.37.86])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:52:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
Date: Thu, 16 Feb 2023 12:52:33 +0200
Message-ID: <87ilg1287i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 30 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> A new step of 480MHz has been added on SKUs that have an RPL-U
> device id. This particular step is to support 120Hz panels
> more efficiently.
>
> This patchset adds a new table to include this new CDCLK
> step. Details can be found in BSpec entry 55409.
>
> Create a new sub-platform to identify RPL-U which will enable
> us to make the differentiation during CDCLK initialization.

Thanks, pushed the series to drm-intel-next.

BR,
Jani.

>
> Furthermore, we need to make a distinction between ES (Engineering
> Sample) and QS (Quality Sample) parts as this change comes only
> to QS parts. This version of the patch does not include this change
> as we are yet to make a decision if this particular part needs
> to be upstreamed.(see comments on revision 2)
>
> Chaitanya Kumar Borah (2):
>   drm/i915: Add RPL-U sub platform
>   drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
>
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h            |  2 ++
>  drivers/gpu/drm/i915/intel_device_info.c   |  7 ++++++
>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>  include/drm/i915_pciids.h                  | 12 ++++++----
>  5 files changed, 44 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
