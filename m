Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046683CF591
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 09:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74FD389D58;
	Tue, 20 Jul 2021 07:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC62E89D58
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 07:53:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="208078468"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="208078468"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 00:53:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="461898142"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2021 00:53:15 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 00:53:15 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 13:23:13 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Tue, 20 Jul 2021 13:23:12 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v7 0/3] Enable setting custom DSC BPP
Thread-Index: AQHXfTNV+RlRmkpxKkCfWX56DbAtcatLfeKg
Date: Tue, 20 Jul 2021 07:53:12 +0000
Message-ID: <f8651b55c32e406aa009e06c86a7e59d@intel.com>
References: <20210720064907.9771-1-vandita.kulkarni@intel.com>
In-Reply-To: <20210720064907.9771-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 0/3] Enable setting custom DSC BPP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pushed to drm-intel-next, thanks for the reviews.
-Vandita

> -----Original Message-----
> From: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Sent: Tuesday, July 20, 2021 12:19 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: [v7 0/3] Enable setting custom DSC BPP
> 
> This series add debugfs entry to force dsc bpp to ceratin valid test value, for
> validation needs.
> This series has been tested locally.
> With the introduction of i915_dsc_bpp debugfs the expectation is that
> whenever there is force_dsc_en set, force_dsc_bpp should have a valid
> value for that format which is between bpp to bpp-1.
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
> This series has been reviewed here
> https://patchwork.freedesktop.org/series/92312/#rev5
> 
> Resubmitting it here as the series submitter got overridden due to one of the
> review comment mishaps.
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
