Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8C6EB057
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 19:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295E710E2FE;
	Fri, 21 Apr 2023 17:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A492310E2FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 17:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682097132; x=1713633132;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rrD9J5fqJ/i5g//NuXi+YMNTWHaxDHe7h5m7heAlTfg=;
 b=O6pVn6vAEzc9UbMCefRW8z42CP9tjQGTEZi6JkRYlPyaShlb7exUhps/
 8zPtCtzFH2B2AqAaIoUaHS7l6YrodhFaPyBcffqDZFCd64SUXOsWu4A6e
 PDWqz+wq6/oUoF7H0Cxt5Zom6PHQJ3lqCzcbVXYTQV4N9TZJ5bE5GaKAu
 tjQL2PIeHZoa7M8zVz8YSHvcCmvURSreXZdmxga4pNGax2YXg6QdSgvmV
 7JiNiPR7Vt4HCeo55eA7X0yY1guRVYQsTpWCl00zXKej+x45lwdiiVz/J
 tRERPHuqcV8TFMq7zhoGk7n+nvCkbS9i0WK80XXf94XGJ2pfgBgeVgfBZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="347944088"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="347944088"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 10:11:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="695018516"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="695018516"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2023 10:11:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 10:11:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 10:11:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 10:11:58 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 10:11:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wz6bDyWT8/j/uGkpWYvwIGYAw4hOQpFGvkeRi/A8use1F4Zdz8MMNCkXEQZ/i04KiAQkYMNgPP4JJj2dhXyYOY0P5gGXPdta+QR402tRjv8vunln8qRxMNNQ5jmNRKhknyID0tTFICH8zbo00A1SZ6Ztt0JAVhzI2K1aGXyyreBiIaKTeXMKQnPwEUh8wXU3ZZ6bvsryeoGxhYJHTb4FtKRBqz9PpgjdhrzEYtxsTvTr9JKywqOqQ/ZvnozovYuIaDYrdv+xVEtWiBADTszB9ew2e6uC9pvu44Lp5kU5BTnH90p3b/UyXA5KcvohXexYLI6jC5Tvn3fTtU86ovSjWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Ix76q+i9RV+rAy8l1ABto55CnCAxX1SKfSXvpqHIJQ=;
 b=lEgSgCMo0ANjdy6f/aGHm0DRwgM6o6oi+fju3jr5m+OoVzxgj32UOyOrW1ef+eMkW0AuSCxH6x060lnebFQzsn0s9RTZRW7McRLetoi7cGCJZZh3Zp54AH8MTxgCDKqh82ugv5cyxHRmfCLRqxqwO55SCDf+47kGlJfV/exBVkKw0W5OvxZcyh4FZmhEHdj25qMcCgmgGMZpAm0yrrQpDhq8b2vV8cBiAWyr1/3yidplpYnMAmFnPF7lNznpvaEmYI75wCWl2ERNooxb2xGAMH8Fv0MOVAFkpSoJLN4hGdigMVHaJnkHAkYlq+96K68UXU/Ha7tfPAVPTamKuooT1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS7PR11MB7906.namprd11.prod.outlook.com (2603:10b6:8:ec::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Fri, 21 Apr 2023 17:11:56 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 17:11:55 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Extend Wa_22011802037
 to MTL A-step
Thread-Index: AQHZckIMRsPruAk26kybyTsFkN3anq8zKp+AgAK2XYCAAADZgIAAIjeg
Date: Fri, 21 Apr 2023 17:11:55 +0000
Message-ID: <DM4PR11MB5971E2A5D2CA03A27516C84487609@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
 <20230418220446.2205509-4-radhakrishna.sripada@intel.com>
 <ZEBf0SWcSfDKolpl@msatwood-mobl>
 <20230421150547.GK4085390@mdroper-desk1.amr.corp.intel.com>
 <20230421150849.GL4085390@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230421150849.GL4085390@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS7PR11MB7906:EE_
x-ms-office365-filtering-correlation-id: 5f447c9b-d4f4-4d49-7e95-08db428b8256
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z9ctrV6UI9d22F1osyV/8zr2VoiukkRLNzL794t7LsoRblE+DrI0Ey23Ckbp5Md9kG0VrDOFTtTiVS0uzv1En9uDVRTp2UiqV+ONkex9pw/b0JOyCFfXsWuv1uxb53QXT0CIDlPy0TUbgr+pR+sph24rktym/VlnjqEvm3jUwZM0X1ggH6w61C53uTS1gJKkEmsPTbOHLAjAPLijoThvMa++Tg/6+xogxQC7sp8D1xgmCbCBZzHHMyVuTlrSYUrlkhZnKfsWXRzrk+xJEkYY6uAGtrm+UpsRQKpY4PYDOfnhdxslcVxIFD/dt1xYOlbpKZAzNHncTaIG94CKlyheMH3Xf7ckqJf5ghXACs3CGiym2o3XoNX1reDan4ieBmQGqrqz69U+H7FufkR4JDsXWX+5kUCYCTGu5pLUmz1+h9IzaTIUirF1wjA9IzYizks9jQ6A9YqA9CtrDZdfSxN5uhaDulIYfsBYIvZhaq37+fJ/D75FzDIHtzE+Q8VoE0tPcd9f41pEewrcKM42pn4Yc78SaBUX0Gg1D4X0TsJKDg/o+C6k5K5moO2QYN4e+U/E/XChrRO8d8x4Gtw0fCt1NnaYzqKs37FP/kZu8OYf4/cKDCedyWUPeIB1jshRwMu9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(39860400002)(376002)(136003)(451199021)(478600001)(110136005)(83380400001)(33656002)(55016003)(6506007)(53546011)(9686003)(26005)(186003)(38070700005)(38100700002)(86362001)(122000001)(82960400001)(71200400001)(7696005)(316002)(8936002)(8676002)(41300700001)(4326008)(6636002)(76116006)(66476007)(66556008)(66946007)(66446008)(64756008)(5660300002)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bsFWEIaCm4sm8XP2bpIZAbODz9krhkVvuyAiZQLJwtwap4cPb3r9B5Z5CVtd?=
 =?us-ascii?Q?uTZxv5eAILDtgbkjdNMd2BgxqWWZ2WgQkKs8eIKnnGWMBpOqPsgf+CZWKlv4?=
 =?us-ascii?Q?vrtwdiGQw9qplnOCSem04DgGgk2rZg73aygKhoc9ioa1F3r6eeWy6mv+t3Uf?=
 =?us-ascii?Q?3vKswpb2S9OKl4vejEzQ9WaV7leYw2+7F2VHo5/a02mVBlYFgGiObNicIsi6?=
 =?us-ascii?Q?IZEHhA9gmYvx+UjxaS6q/tdQNDJBDiOJBIRmJKZsQF4v0CQEFojwrdwcbP+d?=
 =?us-ascii?Q?FjyiA1EPBwxZ4cCdz2EmCvd76tWdO8GeyEsaRLYBsapgQoaSWQqu+5+OtDu4?=
 =?us-ascii?Q?2QWg2yaARhgiCaPV4BfroamEIbDZzXt+W68LC530/FattlnWBa8oyAGNm59v?=
 =?us-ascii?Q?LmaqjHa13EBBXhno7nUI8TeZHiT/ShbsnkIoAGmp51TrQyBX7OFJ+JkK/Kti?=
 =?us-ascii?Q?EbBaLDgMTYmDEnmYu4fjxTbQqblbQ3QDcbngo1NCgbPpgXng9fdOJlFdV0Xd?=
 =?us-ascii?Q?L49Tx9SZJoMNA4ewb5uc43jHVGwZ+nv8U8yxTZAWnRhQVQrHxIwc+g3WqpGT?=
 =?us-ascii?Q?BlaR9fsoq97CrSuLlwPJ8DL/pD0lLFaUtmbWBFdn/JSfzhARqCN8SNM14nLB?=
 =?us-ascii?Q?um1N8a1K1e0kMJ0XmmsCYCXSEbmMHRk13BpjX5EyEgDKI77ESMb9aKVAcKQ7?=
 =?us-ascii?Q?fnMuArY/zXSH9sGhTzousrQ6U9c6rM8AX3yNXKrxOAhxhGSbwvztB2WsLLBb?=
 =?us-ascii?Q?R0/GDFNjoTXLAmb5qY4JQs6137rwzTHY81TDvT/JTkhJrGXRTrDQop5lKD9e?=
 =?us-ascii?Q?tcadgYk4uSwaZGBMitk9n6zZb/UG/NOBkZaQRriR3lEmvKoJGo8qQ33UUY5c?=
 =?us-ascii?Q?xDo1eR2yrrilEuxk3H7ExNZY2Y/jui6PB5McTi4i9BZoJ0X93hE32A6pLKJv?=
 =?us-ascii?Q?mVP8hNmn83usebhYVWIQ/TDqPiNseyHy8Bt6o7gV75LyN+Klt4XtDB6L6zuV?=
 =?us-ascii?Q?0sIwzkTLIK2w+NCVRcxycKV8mPiIBEUMsQIWa4HOtrYvausYuBp7v7GZ3mzt?=
 =?us-ascii?Q?ZKwS4ZS8ps2+KiQUYRYt3TdWEYGbncvlxOus12UQGpCOl1YdY5YSB5E0cxFR?=
 =?us-ascii?Q?QwpcYUwcHlUb7Hc2Jp/JPEilZ3z/M5auRlhBqLWBUYAjcGtZaZ0t1KGvFR9B?=
 =?us-ascii?Q?2zeesPw06HT1ARV8GTW1DxoBCcVmN1gvFEadHPPQCbv7MXQr4O/8yvWV1jES?=
 =?us-ascii?Q?0VGPbLENW4GpVBzgx9FeBE4On0yrvzeKuGet3PBJffDb9Lm19BfleFn55ytH?=
 =?us-ascii?Q?o0LLvdvYy12O4Wwfkbv0z8707EIgVGQJMnRdwBxDIPoeEUSBv6kmZfa01I4B?=
 =?us-ascii?Q?BLP8VzdvkmidVu6R7VCBP2yO8zGra/G0N6s23twf6dPvGU8AuZf2xC7UV93z?=
 =?us-ascii?Q?49od4M99NII+GiBu2M+el9tE6tpA06hjqSwlbxem5FukOlQOTuM7vgE0/Bce?=
 =?us-ascii?Q?fbhR4J8tRj+mJ0ljxP1/NRlUEwiAsrUOsYHSmGxfwbOY9IjUIkF+ZQxpYuKH?=
 =?us-ascii?Q?rLhjBd/q22dtnHMS/wEzzQdI2hmI3z7nf7OK689M77uAEWHxHl//KJiR+W0i?=
 =?us-ascii?Q?Hw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f447c9b-d4f4-4d49-7e95-08db428b8256
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 17:11:55.7620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M+Gpp1Cyv1EqNGPVmJJ+XaAMRJRfYHCeTX3PJkZLxVTNlsL2N69lr0gyz4tpHDW062YiF1DSiqzHtOA4M2+iX75RJGDP0ya/nXZHJf40rRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7906
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Extend Wa_22011802037
 to MTL A-step
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, April 21, 2023 8:09 AM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Extend Wa_220118020=
37
> to MTL A-step
>=20
> On Fri, Apr 21, 2023 at 08:05:50AM -0700, Matt Roper wrote:
> > On Wed, Apr 19, 2023 at 02:40:33PM -0700, Matt Atwood wrote:
> > > On Tue, Apr 18, 2023 at 03:04:45PM -0700, Radhakrishna Sripada wrote:
> > > > From: Madhumitha Tolakanahalli Pradeep
> <madhumitha.tolakanahalli.pradeep@intel.com>
> > > >
> > > > Wa_22011802037 was being applied to all graphics_ver 11 & 12. This =
patch
> > > > updates the if statement to apply the W/A to right platforms and ex=
tends
> > > > it to MTL-M:A step.
> > > >
> > > Bspec: 53509
> > > > v1.1: Fix checkpatch warning.
> > > > v2: Change the check to reflect the wa at other palces(Lucas)
> > > s/palces/places.
> > > >
> > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > > With that.
> > > Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > Signed-off-by: Madhumitha Tolakanahalli Pradeep
> <madhumitha.tolakanahalli.pradeep@intel.com>
> > > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com=
>
> >
> > It doesn't look like this patch is complete?  It's only changing one
> > condition for Wa_22011802037, even though there are several in the code=
.
> > From a quick grep, you're still missing updates for at least
> > guc_ctl_wa_flags, execlists_reset_prepare, and __intel_engine_stop_cs.
>=20
> Actually, scratch that.  Those other spots already have a MTL clause as
> part of the condition.  But in that case it means the commit message
> here is inaccurate; you're not extending this workaround to MTL a-step
> because that already happened on a previous patch.  You're just
> providing a fix for an incomplete implementation that happened earlier.
> The commit message should be explaining that.
>=20
> >
> > Since this workaround is a complicated one that touches so many areas o=
f
> > the code, and has a complex platform list, it's probably time to factor
> > the condition out into a needs_wa_22011802037() helper or something.
>=20
> I still suggest doing this, especially since we've clearly screwed up
> the handling of this workaround at least once already.
>=20

Sure Matt. With the patch already merged, I will handle this as a separate =
patch.

- Radhakrishna(RK) Sripada
>=20
> Matt
>=20
> >
> >
> > Matt
> >
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++-----=
-
> > > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > index 88e881b100cf..ee3e8352637f 100644
> > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > @@ -1629,16 +1629,16 @@ static void guc_reset_state(struct
> intel_context *ce, u32 head, bool scrub)
> > > >
> > > >  static void guc_engine_reset_prepare(struct intel_engine_cs *engin=
e)
> > > >  {
> > > > -	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
> > > > -		return;
> > > > -
> > > > -	intel_engine_stop_cs(engine);
> > > > -
> > > >  	/*
> > > >  	 * Wa_22011802037: In addition to stopping the cs, we need
> > > >  	 * to wait for any pending mi force wakeups
> > > >  	 */
> > > > -	intel_engine_wait_for_pending_mi_fw(engine);
> > > > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > > +	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
> > > > +	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
> > > > +		intel_engine_stop_cs(engine);
> > > > +		intel_engine_wait_for_pending_mi_fw(engine);
> > > > +	}
> > > >  }
> > > >
> > > >  static void guc_reset_nop(struct intel_engine_cs *engine)
> > > > --
> > > > 2.34.1
> > > >
> >
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
