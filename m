Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644C77DD5E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 11:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A8E10E311;
	Wed, 16 Aug 2023 09:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EC010E311
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 09:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692178524; x=1723714524;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G6gPUUkolZ1CkeZDj8PXE8joH9tcXdzw3xYTUA9FYXE=;
 b=AWfi0ti/hNWOU3/6XT3l+1Psbxxr4z31WGOZLkbPFDrWl3mC+uNwjuuQ
 j3G6RTBL0LQ+Av+kQ/hIAT8IMjlE/WmoY0qYKesrVMs44xmJ+KLi1c2HT
 dU39d9xdrfUDHNNlbHsD93yKVRsz7y/B1QiiWBf6fA88iTJVgJNV91OZc
 VkbzZARDPukjFPrPGJWC6X3uDed3FeY21fR2b8Rw6SNAtw54yssOtMW0a
 Opc1BdfR1KdBAuwguZpzSCaMk0cPEbrM+T2YkJGOy4nvhKmE2mFUTgoj+
 tV+HuZNa+rHmsQK4Panz3lM7FtUdwESLeo4EfDTLiDNNi5T/+OI8jWIVA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375257810"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="375257810"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 02:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="907952809"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="907952809"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 16 Aug 2023 02:35:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 02:35:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 02:35:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 02:35:23 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 02:35:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UOirTYt3MavRI2Aa1lX11T5q9FImjQx5u63YLJeB8z6AC2eVjhUBqTcg4SAPjtr99x+F62xed50msNGSk+MNEXTmj8tXX79OhYtZpjeTEeoV8kr7Wys/wTqD2+eaoCnNTKOKhB76FwMvzZHab3+Ox+ShKieIksq309KLhnZw79MPs3TfmUJmy7kHdgx262xEDqxibqFdmYjOprrSMIns44NpmUv2Ab5PEvDF9Bw0lUMpTSzHURUpJJOm7/N3Nzu8ttfx6ostYf37b+CpZRhdCqGzNzgj38/6YKtXyLZaO+HTTywL9MevILd0/lSBVW3mJMZMZKyD7OoCBn+ET4Ob5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YqaSSFCgMxwXC47teEQzgcpjjw3rJ5XTHSxwG9FC7s4=;
 b=Fvhcvdpvq++wvTk0ItTjrhD47zVw45yGdWIMlyUGQL29CDiU/WmMAAE/kewL8XF+kQIGtMtdM3EFv3fsWmN7zAmZ+I9RHVGaDg0YH+C0Vjda9iGKV6syuyKZTTF0C9ADb+3lhbxrulgkwX3fA4XucRxTQYV3cG0P4Nj5ch6LVwgLVn7w47euiO/hKXd2tzVp4mILJBXbIm7nyudRJ1LSHzjOlDaomF6qzSrllSO8prLUQ+kSA7mQgFuO0lEj11aDoQ/jPmQmdYvtNTCuNMV9HM5o3VuhwFsnajKTT7+Fc6/zsuWuONjHYb93AKGdaJFz9H0ELsv5QAtZdRBxR0iDwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4918.namprd11.prod.outlook.com (2603:10b6:510:31::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 09:35:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 09:35:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
Thread-Index: AQHZydBAnqMep2u77U2IHnhhdUkYtq/ss7eAgAAAx9A=
Date: Wed, 16 Aug 2023 09:35:15 +0000
Message-ID: <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230808081134.4187416-1-suraj.kandpal@intel.com>
 <20230808081134.4187416-5-suraj.kandpal@intel.com> <87r0o39w46.fsf@intel.com>
In-Reply-To: <87r0o39w46.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4918:EE_
x-ms-office365-filtering-correlation-id: db2367e7-de9f-4423-e2c1-08db9e3c18a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: APaBrlsV9zVIs4AHlEPx//3xYxHjC8oZgkXKaJXOgMl1H7yZckydqF58WiMGYxyFZWqrZ1fi8tkmJArNdNamTQjKFxvF0qwRKGU5TVugltU0Vgs1VyXAii7W7YdzFJHBbLcn2F5KYynS/7O0ozDwijKGuOtNYpcTZo4o+O/4we99E4Lh2M64oMPPh7no2V2L4ntHS3kyl/a9xPu5IJspZZncT7FehYzH4nppXnCb1lek52POaeJTC0vp347GZd0gQRxGzgOH1JXpxSnTtHfuQBdFncS6sLZlewQQlOz3O80Fo3BQbDZhmMrGi0nnI1FCqAEyQ8UZPvckCKu8iSnTIRzV88sXN6eieR19/87tbKJfooSTDfCki4wGTYvudqanrWB2H/IvJAjGRCfoiS/31VbP35+0WQUOfnNqhN1t8Cve5ISEBA1fQ6Ooe4nlr6/1fHEW4thxwxKeY3uP7uVdpmeLv/x1klmRY9V7EOKf1m9fhmohq4ooW6GeoeVNG0pgMevaTTrsIxjn5gS9Yrh7wxJJQmpUl224ylJfkI6a+CS7GBVZfrLYff5gLZvzSCKEQRcYryV6calDR1ps78Wl2HW/7/ACnx4NFgalzxqijEN1tpOODFhoQCSu5mKu1xke
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(376002)(39860400002)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(9686003)(55016003)(5660300002)(52536014)(41300700001)(122000001)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(76116006)(8676002)(8936002)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BFJV7YQZGdinIgL5OU7aeYhJ/luMmzmhQwf5MNJsRHzgCUVYFSK4OxLViiCb?=
 =?us-ascii?Q?+OXmAUOoB2a31ICt7PfC7EqJfgQjhOKvELhix1xJeytbwTJkguOoU4nSxFt+?=
 =?us-ascii?Q?XnyAWWrTxmt2iXk7d2GU7NfHZUG1xuqLQXT25hp0/d8n+/I+ybT9U4IrxLu0?=
 =?us-ascii?Q?TwXe4VILTFW3Bheap98QlqvSNJF70qTTRM7Q32w1HU69twbFtT3Oom2Fjd39?=
 =?us-ascii?Q?QbyBCnLOQH0uMMHhaVKMJSJHHGcmrbH/6v+asKXgWciJcURbB3GQOzk/aCNF?=
 =?us-ascii?Q?dc1MXQ7P8hupxs13NjtSQmI/CUL+78Vv8Abf2LLji84JSCLB252ea4AR9YrQ?=
 =?us-ascii?Q?lftyBM07MhocSTccC0vtNyd6IcILwMQSoxk83j6R9YvWBcFpQPXcQxAFlTUj?=
 =?us-ascii?Q?NPbr+uL2tAjR2EyRm1Pzq4t8H6rlKqCHp9G/vneespxbDAhI0po2L3aTSzvn?=
 =?us-ascii?Q?g2W5MRBsKX9g29lIQvWpT7V/uLrmO3tgFuZx5Xv0gpP57cM4R8BMHzvwseXa?=
 =?us-ascii?Q?qIpfP3SL9og2R+EBC4pFwDmC/dEBJO0cJ8v3YjkxTf00Gr4alV1GEsTn18v2?=
 =?us-ascii?Q?1SrK6lZ4ZSc6mU9JY1z1DtxbAJP8rYgU3u0xbunL/Ecl5T8JrAffl189O8K1?=
 =?us-ascii?Q?y0ro/XXsWksd6/nTUS5S3qxsZh/uJhbUaa9lHsWxhdVCxof0RfwoTQIbmZsl?=
 =?us-ascii?Q?9K6bh40RybTG6/1D4mraY1KLWeNBzVPWMl6f0uG14ca8RpePKRgTY+Im01rE?=
 =?us-ascii?Q?efhTDeoHTk0cQM0i7F6u3/H2t145pj5oom4VaIFWSrYeAhMIn3eKDbaVYwJq?=
 =?us-ascii?Q?hDoO8Hqp4J22u+83kmR+4UdBCqrPbBsOsknbiXLpPL3tZRK5J9dcsjLEaVv/?=
 =?us-ascii?Q?5+4iMAmjrW1w9ILLttaoEUaBz3zTjkOP6bTS4LO4FiEvQFrX2mvd5fRnUFSg?=
 =?us-ascii?Q?lIKCM1pGvSeFKHE+rjVgqRK2+W35TfE4eAq+7NPEZDJiQCbPU9c7mxRv9u5j?=
 =?us-ascii?Q?isR9/8kjVVK5dQyoOLSjN52O9H5vePJPhEhI/owliqt3wnj+XvhLbgmq2BIw?=
 =?us-ascii?Q?+XlNhEFByqjtCvndr33LtOze91oYf/o6kp7vy9B7jXVtap2WJ3Or5nVa7s2m?=
 =?us-ascii?Q?AWmzYHrWvdDmSg51DFRaHUBZCymDFZP/T4Wag9T2FuqUdHtwNSpdevAy0R/X?=
 =?us-ascii?Q?kIHNH+gxikhOk5xZAndpQvPEwRfO9UY3F98AVV4FJNynxihdzZVwUwCFdrFk?=
 =?us-ascii?Q?6mHlcCPMqKGsZn5NFzu3yeNSVxjIFN1VgS77ZhcyXgTnn+PHzVjUJ14/8ldx?=
 =?us-ascii?Q?nbd9FQX1nPKsWSalR+XD3oNhv5EGo1OdBuOUXqG3KJOxl4GpHh5BMyIJ7+d3?=
 =?us-ascii?Q?etKl5Pm5HX2wd8Xk2YfEogdtJcPCTjpsafNtGQUbmmw8jAnl/LNw23iFIKmO?=
 =?us-ascii?Q?l+9eN2vG+XJi+wJHMMyoKLRo+JwIALywMrLrOlAKbyv4dire58K54vOjp7v3?=
 =?us-ascii?Q?qdrwr4uVDkFseVij7URHUWgYoiCmDcwE4p/jxk9RJVaur37QrTMGpFgOJvJ0?=
 =?us-ascii?Q?9PB4qH3tLUNQKDu/kcs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db2367e7-de9f-4423-e2c1-08db9e3c18a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 09:35:15.1674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnZRIofXurZRRG2J+dGT97kYtae6mdtBDtYJ5U5tfqomwMBwIxQcXhjSrBK0sdTvRV7Jc887BHeCaX7EyDk9qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4918
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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

>=20
> On Tue, 08 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add function to read any PPS register based on the intel_dsc_pps enum
> > provided. Add a function which will call the new pps read function and
> > place it in crtc state. Only PPS0 and
> > PPS1 are readout the rest of the registers will be read in upcoming
> > patches.
> >
> > --v2
> > -Changes in read function as PPS enum is removed -Initialize pps_val
> > as 0 in pps_read func itself [Jani] -Create a function that gets the
> > required register and call that in the common read function [Jani]
> > -Move the drm_WARN_ON one abstraction layer above [Jani]
> >
> > --v3
> > -Send both reg values regardless of dsc engine no [Jani] -Don't use
> > num_vdsc_instances stick to dsc_split field [Ankit]
> >
> > --v4
> > -Manipulate the reg values instead of creating MACRO to change name of
> > pps [Ankit]
> >
> > --v5
> > -Read dsc reg values using array rather than individual variables
> > [Ankit] -Loop the verification of all dsc engine reads to future proof
> > it [Ankit] -Keep the fix me comment in this patch and remove it in
> > later one where we add other readouts [Ankit] -Add switch statement
> > that fills in the required registers based on no of vdsc engines per
> > pipe.
> >
> > --v7
> > -Pass no of vdsc instances from read_reg function [Ankit] -Fix issue
> > where arrays do not get freed on return for read_and_verify func
> > [Ankit]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 129 +++++++++++++-----
> >  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
> >  2 files changed, 105 insertions(+), 36 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index dc86514d9e17..aa93228ca7af 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -365,6 +365,28 @@ int intel_dsc_get_num_vdsc_instances(const
> struct intel_crtc_state *crtc_state)
> >  	return num_vdsc_instances;
> >  }
> >
> > +static void intel_dsc_get_pps_reg(const struct intel_crtc_state
> *crtc_state, int pps,
> > +				  i915_reg_t *dsc_reg, int no_vdsc_per_pipe)
> {
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	enum pipe pipe =3D crtc->pipe;
> > +	bool pipe_dsc;
>=20
> Matter of taste, but to me that's four local variables too many for small=
 things
> like this.
>=20
> > +
> > +	pipe_dsc =3D is_pipe_dsc(crtc, cpu_transcoder);
> > +
> > +	switch (no_vdsc_per_pipe) {
> > +	case 2:
> > +		dsc_reg[1] =3D pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) :
> DSCC_PPS_REG(pps);
> > +		fallthrough;
> > +	case 1:
> > +		dsc_reg[0] =3D pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) :
> DSCA_PPS_REG(pps);
> > +		break;
> > +	default:
> > +		MISSING_CASE(no_vdsc_per_pipe);
> > +	}
> > +}
> > +
> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
> > *crtc_state)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -994,17 +1016,83 @@ void intel_dsc_disable(const struct
> intel_crtc_state *old_crtc_state)
> >  	}
> >  }
> >
> > +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> > +				  int pps, u32 *pps_val)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	const int no_vdsc_per_pipe =3D
> intel_dsc_get_vdsc_per_pipe(crtc_state);
> > +	i915_reg_t *dsc_reg;
> > +	u32 *pps_temp;
> > +	int i, ret =3D 0;
> > +
> > +	dsc_reg =3D kcalloc(no_vdsc_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
> > +	if (!dsc_reg)
> > +		return -ENOMEM;
> > +
> > +	pps_temp =3D kcalloc(no_vdsc_per_pipe, sizeof(pps_temp),
> GFP_KERNEL);
> > +	if (!pps_temp) {
> > +		kfree(dsc_reg);
> > +		return -ENOMEM;
> > +	}
>=20
> no_vdsc_per_pipe is at most 2. Temporary dynamic allocation is way overki=
ll
> here.

Yes but Ankit was of the thought that we can future proof this going forwar=
d if by any chance we get more dsc engines

>=20
> > +
> > +	*pps_val =3D 0;
> > +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, no_vdsc_per_pipe);
> > +	*pps_val =3D intel_de_read(i915, dsc_reg[0]);
> > +	if (no_vdsc_per_pipe > 1) {
> > +		for (i =3D 0; i < no_vdsc_per_pipe - 1; i++) {
> > +			pps_temp[i] =3D intel_de_read(i915, dsc_reg[i]);
> > +			pps_temp[i + 1] =3D intel_de_read(i915, dsc_reg[i + 1]);
> > +			if (pps_temp[i] !=3D pps_temp[i + 1]) {
> > +				ret =3D 1;
> > +				break;
> > +			}
> > +		}
> > +	}
>=20
> What is going on here? Feels like this has grown way more complicated tha=
n
> it needs to be since I last looked at this series. :(

In case of more than 2 vdsc engines (just for future proofing) this loops l=
ooks at all the registers being used for
that pipe and makes sure everyone has the same value

Regards,
Suraj Kandpal
>=20
> > +
> > +	kfree(dsc_reg);
> > +	kfree(pps_temp);
> > +	return ret;
> > +}
> > +
> > +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state
> *crtc_state,
> > +					      int pps, u32 *pps_val)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	int ret;
> > +
> > +	ret =3D intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> > +	drm_WARN_ON(&i915->drm, ret);
> > +}
> > +
> > +static void intel_dsc_get_pps_config(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > +	u32 pps_temp1, pps_temp2;
> > +
> > +	/* FIXME: add more state readout as needed */
> > +
> > +	/* Readout PPS_0 and PPS_1 registers */
> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> > +
> > +	vdsc_cfg->bits_per_pixel =3D pps_temp2;
> > +
> > +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> > +		vdsc_cfg->bits_per_pixel >>=3D 1;
> > +
> > +	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4; }
> > +
> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > -	enum pipe pipe =3D crtc->pipe;
> >  	enum intel_display_power_domain power_domain;
> >  	intel_wakeref_t wakeref;
> > -	u32 dss_ctl1, dss_ctl2, pps0 =3D 0, pps1 =3D 0, pps_temp0, pps_temp1;
> > -	int no_vdsc_instances_per_pipe;
> > +	u32 dss_ctl1, dss_ctl2;
> >
> >  	if (!intel_dsc_source_support(crtc_state))
> >  		return;
> > @@ -1025,38 +1113,7 @@ void intel_dsc_get_config(struct intel_crtc_stat=
e
> *crtc_state)
> >  	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> RIGHT_BRANCH_VDSC_ENABLE) &&
> >  		(dss_ctl1 & JOINER_ENABLE);
> >
> > -	/* FIXME: add more state readout as needed */
> > -
> > -	no_vdsc_instances_per_pipe =3D
> intel_dsc_get_vdsc_per_pipe(crtc_state);
> > -
> > -	/* PPS0 & PPS1 */
> > -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> > -		pps1 =3D intel_de_read(dev_priv,
> DSCA_PICTURE_PARAMETER_SET_1);
> > -		if (no_vdsc_instances_per_pipe > 1) {
> > -			pps_temp1 =3D intel_de_read(dev_priv,
> DSCC_PICTURE_PARAMETER_SET_1);
> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> pps_temp1);
> > -		}
> > -	} else {
> > -		pps0 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> > -		pps1 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> > -		if (no_vdsc_instances_per_pipe > 1) {
> > -			pps_temp0 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> > -			pps_temp1 =3D intel_de_read(dev_priv,
> > -
> ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> > -			drm_WARN_ON(&dev_priv->drm, pps0 !=3D
> pps_temp0);
> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> pps_temp1);
> > -		}
> > -	}
> > -
> > -	vdsc_cfg->bits_per_pixel =3D pps1;
> > -
> > -	if (pps0 & DSC_NATIVE_420_ENABLE)
> > -		vdsc_cfg->bits_per_pixel >>=3D 1;
> > -
> > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> > +	intel_dsc_get_pps_config(crtc_state);
> >  out:
> >  	intel_display_power_put(dev_priv, power_domain, wakeref);  } diff
> > --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > index 785ede31116e..862dc708c5fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > @@ -78,6 +78,10 @@
> >  /* Icelake Display Stream Compression Registers */
> >  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> >  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> > +#define DSCA_PPS_0				0x6B200
> > +#define DSCC_PPS_0				0x6BA00
> > +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0
> + (pps) * 4)
> > +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0
> + (pps) * 4)
> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
> >  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> > @@ -88,6 +92,14 @@
> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> >
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> > +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) -
> PIPE_B, \
> > +
> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> > +
> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> > +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
> PIPE_B, \
> > +
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> > +
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> > +#define  ICL_DSC0_PPS_REG(pipe, pps)
> 	_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> > +#define  ICL_DSC1_PPS_REG(pipe, pps)
> 	_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
> >  #define  DSC_NATIVE_422_ENABLE		BIT(23)
> >  #define  DSC_NATIVE_420_ENABLE		BIT(22)
> >  #define  DSC_ALT_ICH_SEL		(1 << 20)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
