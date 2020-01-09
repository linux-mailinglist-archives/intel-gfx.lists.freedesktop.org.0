Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CFE13633B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264A66E055;
	Thu,  9 Jan 2020 22:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48E96E055
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 22:28:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 14:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="218488342"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga008.fm.intel.com with ESMTP; 09 Jan 2020 14:28:50 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.147]) by
 ORSMSX105.amr.corp.intel.com ([169.254.2.110]) with mapi id 14.03.0439.000;
 Thu, 9 Jan 2020 14:28:50 -0800
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Add Wa_1409825376 to tgl
Thread-Index: AQHVxzh0niI3pPcM8EeQLNfsdHEch6fjaz6A//9+QJA=
Date: Thu, 9 Jan 2020 22:28:49 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E16001BF7@ORSMSX101.amr.corp.intel.com>
References: <20200109220226.10661-1-radhakrishna.sripada@intel.com>
 <20200109221149.GJ2244136@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200109221149.GJ2244136@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmNlZjNjMDMtZDVhOC00YTU2LTkyZjAtMTQ5OGI4MzgyNjZjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWFZRdG83TXB1ZkdJK3pnZ25VZGZVUnVFWEFGdGNMbk9VdVh3QytNdzR3VkdUXC9TYU1KbnhnQnVyd0JcLytkeTJHIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1409825376 to tgl
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, January 9, 2020 2:12 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/tgl: Add Wa_1409825376 to tgl
> 
> On Thu, Jan 09, 2020 at 02:02:26PM -0800, Radhakrishna Sripada wrote:
> > Workaround database indicates we should disable VRH clockgating in
> > pre-production hardware.
> 
> Maybe also add a
> 
>     Bspec: 52890
>     Bspec: 49424
> 
> for reference?
Sure will add in the next rev.
> 
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 3 +++
> > drivers/gpu/drm/i915/intel_pm.c | 5 +++++
> >  2 files changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 6cc55c103f67..5215df17e7bd
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4124,6 +4124,9 @@ enum {
> >  #define   PWM2_GATING_DIS		(1 << 14)
> >  #define   PWM1_GATING_DIS		(1 << 13)
> >
> > +#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
> > +#define   TGL_VRH_GATING_DIS		(1 << 31)
> 
> For new registers (or registers which are receiving noticeable updates), I think
> we're trying to slowly transition over to REG_BIT(31) notation.
> 
> Aside from that,
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Will use the newer notation.
Thanks for the review.

-Radhakrishna(RK) Sripada
> 
> > +
> >  #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
> >  #define   BXT_GMBUS_GATING_DIS		(1 << 14)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > b/drivers/gpu/drm/i915/intel_pm.c index 148ac455dfa7..0d71fc19d0ee
> > 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -6630,6 +6630,11 @@ static void tgl_init_clock_gating(struct
> > drm_i915_private *dev_priv)
> >
> >  	I915_WRITE(POWERGATE_ENABLE,
> >  		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
> > +
> > +	/* Wa_1409825376:tgl (pre-prod)*/
> > +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> > +		I915_WRITE(GEN9_CLKGATE_DIS_3,
> I915_READ(GEN9_CLKGATE_DIS_3) |
> > +			   TGL_VRH_GATING_DIS);
> >  }
> >
> >  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> > --
> > 2.20.1
> >
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
