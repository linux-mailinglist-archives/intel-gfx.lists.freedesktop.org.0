Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5893B816F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 13:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133586E997;
	Wed, 30 Jun 2021 11:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A0F6E997
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 11:46:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="188711737"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="188711737"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 04:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="641680675"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2021 04:46:14 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 04:46:13 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 17:16:11 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Wed, 30 Jun 2021 17:16:11 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "20210601100228.6064-3-anshuman.gupta@intel.com"
 <20210601100228.6064-3-anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
Thread-Index: AQHXbaHALe7lch6rFUKF8HKeqJr0eKssb1OQ
Date: Wed, 30 Jun 2021 11:46:11 +0000
Message-ID: <fd25a443e2c54906bbbcdb51165f7fc5@intel.com>
References: <5830863.31r3eYUQgx@acelan-xps15-9560>
In-Reply-To: <5830863.31r3eYUQgx@acelan-xps15-9560>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
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
> From: AceLan Kao <acelan@gmail.com> On Behalf Of
> acelan.kao@canonical.com
> Sent: Wednesday, June 30, 2021 4:49 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [v2] drm/i915: Tweaked Wa_14010685332 for all PCHs
> 
> > dispcnlunit1_cp_xosc_clkreq clock observed to be active on TGL-H
> > platform despite Wa_14010685332 original sequence, thus blocks entry
> > to deeper s0ix state.
> >
> > The Tweaked Wa_14010685332 sequence fixes this issue, therefore use
> > tweaked
> > Wa_14010685332 sequence for every PCH since PCH_CNP.
> >
> > v2:
> > - removed RKL from comment and simplified condition. [Rodrigo]
> >
> > Fixes: b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used
> > on
> > gen11 platforms") Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >
> >  .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
> >  drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
> >  2 files changed, 8 insertions(+), 29 deletions(-)
> Hi,
> 
> I didn't see this patch shown in mainline kernel tree, nor in drm-tip, May I know
> what the patch's status now?
We have observed that this patch does not fix the issue on some platforms.
That is the reason patch is not merged yet.
Br,
Anshuman Gupta.
> 
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
