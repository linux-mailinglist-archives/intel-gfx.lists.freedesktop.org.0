Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2FE1952AF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 09:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B606489CA2;
	Fri, 27 Mar 2020 08:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D663389C80
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 08:16:39 +0000 (UTC)
IronPort-SDR: pBmNlPsqcIXBuRrOHSTYatKLdzOAXccbsYiEW6qLD7HFf4tCdpyV6cspIecEGQLsfp+kirftM4
 MjV8XYXtWKeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 01:16:39 -0700
IronPort-SDR: LmShOQNHEahCdzHARDJ2JCztwM1wX8p5DP3l98mK4KqOBLRviRkM5LSKinhmFqCX7T5i9bia/c
 TPHZSo4NmRoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="358417668"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 27 Mar 2020 01:16:39 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Mar 2020 01:16:39 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 27 Mar 2020 01:16:39 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Fri, 27 Mar 2020 13:46:31 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Anand, Vipin" <vipin.anand@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with
 lspcon hdr capability
Thread-Index: AQHWBAn7fuTGk7fsGk2u1+/ltxHRYahcF0tg
Date: Fri, 27 Mar 2020 08:16:31 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243D514@BGSMSX104.gar.corp.intel.com>
References: <20200327073140.11568-1-vipin.anand@intel.com>
In-Reply-To: <20200327073140.11568-1-vipin.anand@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with
 lspcon hdr capability
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vipin Anand
> Sent: Friday, March 27, 2020 1:02 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with lspcon hdr
> capability

There is the series https://patchwork.freedesktop.org/series/68081/
already there on list.

 We are waiting for DP state checker patches to get merge. That series is almost ready,
once that is merge will rebase and resend the series. Lets track that one only for future
development instead of spawning a new one.

Regards,
Uma Shankar

> Added missing signoff
> 
> Uma Shankar (6):
>   drm/i915/display: Add HDR Capability detection for LSPCON
>   drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
>   drm/i915/display: Attach HDR property for capable Gen9 devices
>   drm/i915/display: Set HDR Infoframe for HDR capable LSPCON devices
>   drm/i915/display: Enable BT2020 for HDR on LSPCON devices
>   drm/i915/display: Reduce blanking to support 4k60@10bpp for LSPCON
> 
> Vipin Anand (1):
>   drm:i915:display: add checks for Gen9 devices with hdr capability
> 
>  drivers/gpu/drm/drm_atomic_state_helper.c     |  1 +
>  drivers/gpu/drm/drm_atomic_uapi.c             |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 16 ++++
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 27 +++++-
>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 95 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_lspcon.h   |  4 +
>  include/drm/drm_connector.h                   |  1 +
>  8 files changed, 132 insertions(+), 14 deletions(-)
> 
> --
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
