Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 627143BF869
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 12:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8B96E1ED;
	Thu,  8 Jul 2021 10:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78F76E1ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 10:28:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="207657972"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="207657972"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 03:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="461742210"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2021 03:28:34 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 8 Jul 2021 11:28:32 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Thu, 8 Jul 2021 15:58:31 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v7 0/3] Set BPP in the kernel
Thread-Index: AQHXc+OkxcNM9pwC5kufUc/DJTt3H6s43+0g
Date: Thu, 8 Jul 2021 10:28:31 +0000
Message-ID: <968881f36d344e15aa2490d660224124@intel.com>
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
In-Reply-To: <20210708102549.27821-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 0/3] Set BPP in the kernel
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Sent: Thursday, July 8, 2021 3:56 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>
> Subject: [v7 0/3] Set BPP in the kernel
> 
> This series adds debugfs entry to force dsc bpp to ceratin valid test value, for
> validation needs.
> This series has been tested locally.
> With the introduction of i915_dsc_bpp debugfs the expectation is that
> whenever there is force_dsc_en set, force_dsc_bpp should have a valid
> value for that format which is between bpp to bpp-1.
Correction : *bpc to bpp-1
> 
> This makes the older test kms_dp_dsc --basic fail as in that case
> force_dsc_bpp would be 0 and is not a valid value.
> 
> Have tested with local changes on the same.
> The series https://patchwork.freedesktop.org/series/91772/
> have the base patches and would need some work on the debugfs name
> change, giving default value for force_dsc_bpp in case of basic-dsc-enable
> test cases, clearing up of the force_dsc_bpp value while exiting the test.
> Which will be floated shortly.
> 
> Have added minor fix on the feci debugfs interface.
> If further changes are needed on the same will float them in a different
> series.
> 
> Patnana Venkata Sai (1):
>   drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP
>     enable
> 
> Vandita Kulkarni (2):
>   drm/i915/display: Add write permissions for fec support
>   drm/i915/display/dsc: Force dsc BPP
> 
>  .../drm/i915/display/intel_display_debugfs.c  | 78 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++
>  3 files changed, 94 insertions(+), 2 deletions(-)
> 
> --
> 2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
