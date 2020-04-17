Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A774F1AE4BA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 20:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BAB6E4B5;
	Fri, 17 Apr 2020 18:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7E66E4B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 18:28:03 +0000 (UTC)
IronPort-SDR: oAcSJ3EGeSsWkkZhuC2iwku4Ah+mf5uCrsemkkvRqG2/eB2Ixbr4Vyu2v0Dsm80ml+U1zVG6R6
 zpWBLA1pIG/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 11:28:02 -0700
IronPort-SDR: IKDSyVchAMSbUe5QNXmB9razbu3AVu5Lr/QcErvLCKO/K2Gl72Oc6hJp3qa541vy1gTqnXFoDf
 WUg9YCUMqkew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="254290907"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2020 11:28:02 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 11:28:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.204]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.87]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 11:28:02 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/icl: Update forcewake firmware
 ranges
Thread-Index: AQHWFA5sA1iA7P/KEUiy6dThG6EZEqh95E6A//+/RGA=
Date: Fri, 17 Apr 2020 18:28:01 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E160AE9E0@ORSMSX101.amr.corp.intel.com>
References: <20200416164610.15422-1-radhakrishna.sripada@intel.com>
 <20200417151907.GA22948@msatwood-mobl>
In-Reply-To: <20200417151907.GA22948@msatwood-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjRkYzkyNTktZTRhZS00MDAzLTgzZWQtY2RhY2NjYzBiYmU2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWXM4Y2txQkVZVlh4Qlc4MG93Tk5CK05MZ2VhaDlYUzlKUnF3ZHV1UGFXcWRGRzFNZXhTcjNVdUVlb2k5ZmloXC8ifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Update forcewake firmware
 ranges
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

Thanks for the review Matt :)

> -----Original Message-----
> From: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Sent: Friday, April 17, 2020 8:19 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Update forcewake firmware
> ranges
> 
> On Thu, Apr 16, 2020 at 09:46:10AM -0700, Radhakrishna Sripada wrote:
> > Some workarounds are not sticking across suspend resume cycles. The
> > forcewake ranges table has been updated and would reflect the hardware
> > appropriately.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222
> >
> > v2: Simplify the table and use 0 for some unused ranges(Matt)
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_uncore.c | 31
> > ++++++++++++++++-------------
> >  1 file changed, 17 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> > b/drivers/gpu/drm/i915/intel_uncore.c
> > index fa86b7ab2d99..078f5b2eb8a4 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > @@ -1092,8 +1092,7 @@ static const struct intel_forcewake_range
> > __gen9_fw_ranges[] = {
> >
> >  /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
> > static const struct intel_forcewake_range __gen11_fw_ranges[] = {
> > -	GEN_FW_RANGE(0x0, 0xaff, FORCEWAKE_BLITTER),
> > -	GEN_FW_RANGE(0xb00, 0x1fff, 0), /* uncore range */
> > +	GEN_FW_RANGE(0x0, 0x1fff, 0), /* uncore range */
> >  	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
> >  	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_BLITTER),
> >  	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER), @@ -1103,27
> +1102,31
> > @@ static const struct intel_forcewake_range __gen11_fw_ranges[] = {
> >  	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
> >  	GEN_FW_RANGE(0x8160, 0x82ff, FORCEWAKE_BLITTER),
> >  	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
> > -	GEN_FW_RANGE(0x8500, 0x8bff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x8500, 0x87ff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x8800, 0x8bff, 0),
> >  	GEN_FW_RANGE(0x8c00, 0x8cff, FORCEWAKE_RENDER),
> > -	GEN_FW_RANGE(0x8d00, 0x93ff, FORCEWAKE_BLITTER),
> > -	GEN_FW_RANGE(0x9400, 0x97ff, FORCEWAKE_ALL),
> > -	GEN_FW_RANGE(0x9800, 0xafff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x8d00, 0x94cf, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
> > +	GEN_FW_RANGE(0x9560, 0x95ff, 0),
> > +	GEN_FW_RANGE(0x9600, 0xafff, FORCEWAKE_BLITTER),
> >  	GEN_FW_RANGE(0xb000, 0xb47f, FORCEWAKE_RENDER),
> >  	GEN_FW_RANGE(0xb480, 0xdeff, FORCEWAKE_BLITTER),
> >  	GEN_FW_RANGE(0xdf00, 0xe8ff, FORCEWAKE_RENDER),
> >  	GEN_FW_RANGE(0xe900, 0x16dff, FORCEWAKE_BLITTER),
> >  	GEN_FW_RANGE(0x16e00, 0x19fff, FORCEWAKE_RENDER),
> > -	GEN_FW_RANGE(0x1a000, 0x243ff, FORCEWAKE_BLITTER),
> > -	GEN_FW_RANGE(0x24400, 0x247ff, FORCEWAKE_RENDER),
> > -	GEN_FW_RANGE(0x24800, 0x3ffff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x1a000, 0x23fff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x24000, 0x2407f, 0),
> > +	GEN_FW_RANGE(0x24080, 0x2417f, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x24180, 0x242ff, FORCEWAKE_RENDER),
> > +	GEN_FW_RANGE(0x24300, 0x243ff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x24400, 0x24fff, FORCEWAKE_RENDER),
> > +	GEN_FW_RANGE(0x25000, 0x3ffff, FORCEWAKE_BLITTER),
> >  	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
> >  	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
> > -	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
> > -	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
> > -	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_BLITTER),
> > +	GEN_FW_RANGE(0x1c4000, 0x1c7fff, 0),
> > +	GEN_FW_RANGE(0x1c8000, 0x1cffff, FORCEWAKE_MEDIA_VEBOX0),
> >  	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
> > -	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
> > -	GEN_FW_RANGE(0x1d8000, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
> > +	GEN_FW_RANGE(0x1d4000, 0x1dbfff, 0)
> >  };
> >
> >  /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
> > --
> > 2.20.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
