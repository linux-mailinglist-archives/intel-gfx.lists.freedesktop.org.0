Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2265E6F8CCE
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 01:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD0A10E501;
	Fri,  5 May 2023 23:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3371410E501
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 23:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683329532; x=1714865532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kHbcTd1WZhHtZH8uJbDZRTNN5Ak6nGutM1+DyzidFIk=;
 b=FwpSF1J9y0A4wDggwKuWRab2w1JPUAOUSBP+cm8f9Q57iXOOh+lGeD69
 Tkte1UNqO2OQZyLPDIUnado1mXE+3cs24ctpO/Cc0LpHMah6PITOxQs8B
 mySwPndeqBo8wef8Wx0Xtb6Xi7UuybOViWVF6GavSyeUUqva11hWu9pwA
 ffe8BpgRV3E9gBoT5Ud5zEjERn/KegP1XaIvYnO0E38a1xlfKA04gqWra
 zjne+gCrc7hUHkjPJONo+fzN3hnjhxcdchgF3+T1qNsa13unRXwSfxiq0
 OAUB5YADRnXl31MTdC+j/55jvw/MD2Pv0/4S+RRVqkVib5E8bermJuX+8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="333748167"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="333748167"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 16:32:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="1027686526"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="1027686526"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 05 May 2023 16:32:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 16:32:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 16:32:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 5 May 2023 16:32:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 5 May 2023 16:32:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dD63m8NahcMv+A4Zn0djBd8Monu86cUdGAZAH23BU2ilPGsAr4hTRyyHdYkhiJKGaYcZcW2V8LOUdwBX+iYWsGc1k0RuN2jOPKOlcxHT0V0k+ZVV2jZt/4AzQEk49Gp3+H1F/hrGXazZ2ns9u/AHgvFXND4DPr++OKE2vP3Y4nO3AqFB1LR89vTimdfFElSubeUXz7PNioZrH1kQBaVODydW3qbBNXHrw9scKXPAYtVVlsiqrr05uXU7vW3volScujXaUqHKwANxaj91NdhQ6F40Bng/bPuhr8JArsDNmNzuHOxwMOj/1cAA+ATi2P8F/SQ68CJchWOv5ULFQwAXZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jyg9wkWZ6fUL327ovYiNPTq4/PDxXT/FTDPP39uKDqI=;
 b=QNOCyTkliRN/6Yr3EM4jRPGTS+Ftb6+Bl5sLXAnFp75iB94gU/NaDnKc/bbM3RVZ4/Jdg/aya5k7Nn9QERZZe7pOJa0Ls48w2Qu2a71iL+2Lro9AbfvygK4GQOb4QTn5Wy8m8z+L45pHP53VN7IIWMVu3YQwKYvwMCEYZU0zHZ+INKSHJAsp9aDzS31lqfF8nIiLE1hOi/gXMUuKLez1+uZZxzBfng1Lq4ULVW33TxVxNXlRvq4LUp3Ys2iitGpfeOzm9SQuxeP+z58/I8EMNVNSwGcVXqEK7TjZ5Ob/RAA1f9O05wl90+T948BKYPsS6q2jWqgtX3tWz6uOnmYIcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS0PR11MB7802.namprd11.prod.outlook.com (2603:10b6:8:de::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.27; Fri, 5 May 2023 23:32:08 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6363.027; Fri, 5 May 2023
 23:32:07 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
Thread-Index: AQHZd6QkXs8KCxa+G0Ox99/0D62Gfq9K026AgAGQd5A=
Date: Fri, 5 May 2023 23:32:07 +0000
Message-ID: <DM4PR11MB5971F82197B28D6CD73B3A4887729@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
 <20230504233715.GG6250@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230504233715.GG6250@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS0PR11MB7802:EE_
x-ms-office365-filtering-correlation-id: 2cb2fc6a-8d2c-439c-24fc-08db4dc0f117
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2CvqR5xXa1y/10gQmqIxNmJ6pSonpItrE1WAMPYl2fisBFmDPAHP4W8HMMa0oi2AP6a/4MVoDDz8fHPh5OjDivEKYODQ1+sQSw42il8rOaqbUgaQeWg39ZGn4KGyc5IPpodjofEtJrvupBT/feoUmzFZdrygrbEyG5E75YUJqL2VlEHVQfTMIeMhbkxK8zgavFO/VJ+AmkVnIGgEVJEy9ks9X1SpiFA0kWbi432WPSwGXkmBUGHoCXKSul0WA+x+ZQOF/uDG1Yrz3kl+/eAL0Gg4Nq8aPwIMiGztEMOR2Mvfwu8RBnAitHk8weCJLQb/jFLT1YaWJUoxMzYjKwoNyYOsy73pi/TGh9jXsyY/nJFexwFkKLKJfdHSERSJa4ysJg0jhztbLjltg1x1eTq9yHcXbP9ctSee1tniU7uYGDdQuBFIsZVL+ShX8sXVuTqBuqmmPj73hBNVJPENrxal6+/jEe1fVIT2+xUlP0JPWcRQxVM5A2kPgObiw89xu5f/jnsVZ9B1vGppZDt/Y4CrIchF1bzwJVwulduy1/4yeBv3QcoH47gRNmfIeEMbCcwwk2kg0tXlvFgyufFCWydBbB6S92dJaQl59/zuI0UrxhQ8SJ8B0F7MS0UvPDZePvKG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(396003)(39850400004)(366004)(451199021)(33656002)(71200400001)(86362001)(478600001)(316002)(54906003)(66446008)(66476007)(64756008)(4326008)(76116006)(66556008)(66946007)(6636002)(7696005)(5660300002)(41300700001)(55016003)(8936002)(6862004)(52536014)(8676002)(2906002)(38070700005)(186003)(38100700002)(82960400001)(122000001)(107886003)(53546011)(9686003)(26005)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BidXmirFBwL115seRmlLcIHQMFNLxuwjBM9sK/DkpSeVq4j2zam8ifkoqbdy?=
 =?us-ascii?Q?rwsPoVDM+TNpBY9MzBVrq99vz+CJdYp3KqXhAIrrCU2GtJ5CXzKYA1gARIjW?=
 =?us-ascii?Q?ksrIdym5acutWxfH8AusAPGCMIx63+njPhQYGoSrTpThgLA35PL8vFQgwbqK?=
 =?us-ascii?Q?AFug7m8dSktj+k9I/Mga3aR5wm/NAznzWhi6ZpZktyzbu3tHJk719aHLLZeO?=
 =?us-ascii?Q?Aj5tmui2hE0xWH8cFDTitlwquPSDNJGT94q+D3TrCkom1cF7zy4baQyy1M7G?=
 =?us-ascii?Q?oDjEmNui6OJ4A9V5WJkgnUBKsc7TfVC42X+YmdyhU2hX7oIYtyjCCWmXyiBR?=
 =?us-ascii?Q?Zfade2wILaw1nVv7/xiIYnjzNB15LNqxy8lm5wdw9IZH2Hf99/pzdR6CF+Tk?=
 =?us-ascii?Q?Eu8xIJLdrSykF01W87PEKdqdAy7CsvZL43K2yPZgbWUNANSr9Cz7R4rgWVP9?=
 =?us-ascii?Q?OKW9jmRLXu7Bt3V0i2WhDbg12jTGlP0WM0WS5dEwdqr1iX3f6WvqFFRmGHzM?=
 =?us-ascii?Q?XvaZecEOF/Kmc7tZkzl7vmzw9FcJ+kA+UujsoUhkSagjJ4M8yiqpamu2SBZj?=
 =?us-ascii?Q?YVErZPAMUy788ZNtZZnfrGie7SVigwaM4YHP36nkYRehBsEjyVcev3R39VDK?=
 =?us-ascii?Q?gOkiCvkJiXZHiT8g8nSa11rIE0SGitJaJSeU0lSg0btDTM3NsehSRBd8XS+T?=
 =?us-ascii?Q?r3Wd7Dfpl1X9sEfXWueCCgEknBPgybvfOEZ6XnKP7ubPdA2ehJ59D9nrRmIJ?=
 =?us-ascii?Q?ohf25QhXHnS2nNGhLznRhlOQXLtK1AWXP0hRSidaWGioPeDXDGn2ZPCZyHgl?=
 =?us-ascii?Q?qe5AbCweVukDJUtYjVSHmh20qqTSC+zLWekV9gkQZJ07BMcMA5xVvL1UDU+M?=
 =?us-ascii?Q?rkxm1HJm2EZDkZE7hN1YsWvDcWe1oXSPUhkzoLzt3FatL+9Ob8Cw/eUuqNm/?=
 =?us-ascii?Q?qm0hY/WTJdJZSF3oiB80/6gFFhuCq6pZ7QODix32+Q8WgzENRPDZwJUZDw1/?=
 =?us-ascii?Q?/8zJ6H/x+iYCpJpA1s9/zblhxZ8Sks31E9HfyDtndc/yHcqc68u6OIUpwyis?=
 =?us-ascii?Q?qkKQ+g+HAP6BIl6uoIvvGWSYxaryaLvafYaGxspCMSRTMs4dO0ab1IHSSeKZ?=
 =?us-ascii?Q?6UglUO9C44+xXb//CSEZ7AwWGO6G9lj5hOTiUvwqFLl42BdmtDuMQo1/r2BO?=
 =?us-ascii?Q?uG3QVbzBSUTR7PtLinqGjQ1g+vFWdNTdQofm+SfvB990a4/CTZ7I3nSTQXln?=
 =?us-ascii?Q?2FQ5LJMrjW73vm4LEodIEtUAjfS/WyatD7gg+Gx6BfH+A8AO85X/+sQDcJGP?=
 =?us-ascii?Q?AB46hH9AB8xrf+vvUncMJ/s4yx99hnNA/r3DfoLoCJHJ51aZkHH5yXi0e+T3?=
 =?us-ascii?Q?kjyJVK35SJ9cEX+y4LOrlmb5zTfcXzxeSgSF4y3JWbcahj36vZ24AxLgJgtA?=
 =?us-ascii?Q?J1nyvYp7EAgGiyAR8sRjxEtKzKBQr1r0z7DOJ6GIW+Br22mwh2FucY5Co26j?=
 =?us-ascii?Q?0TPaTfZCFl76Zpfd6Ri6vrCKb2hfrN7RY5kvHJ9Es7cg+xLRih9jdcFcTkLO?=
 =?us-ascii?Q?0Foa8LUHD4Kusv3gJWmqjl78Y/rZGg5jWtff2Cje/mcGFXeJQkTRinswf8Ow?=
 =?us-ascii?Q?Lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cb2fc6a-8d2c-439c-24fc-08db4dc0f117
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2023 23:32:07.6762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IKIXJ2LUXAIB4shxCSTYqjZF2fA1F5mlGOtX2+WklQFyLp1e3Z5hpbt9WRH5EVP+6xNlgOogu7pRUWYGh17G4zDsRr8awsT/ex796B/Ze4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, May 4, 2023 4:37 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>
> Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement
> Wa_14019141245
>=20
> On Tue, Apr 25, 2023 at 11:30:11AM -0700, Radhakrishna Sripada wrote:
> > Enable strict RAR to prevent spurious GPU hangs.
>=20
> There's no such workaround as "Wa_14019141245."  Were you trying to
> implement Wa_22016670082 instead?
Yes that is the correct WA number. Will send a patch to fix the comment.

- Radhakrishna(RK) Sripada

>=20
>=20
> Matt
>=20
> >
> > v1.1: Rebase
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
> >  drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
> >  3 files changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index e8c3b762a92a..af80d2fe739b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -529,6 +529,11 @@
> >
> >  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
> >
> > +#define GEN12_SQCNT1				_MMIO(0x8718)
> > +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> > +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> > +#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> > +
> >  #define XEHP_SQCM				MCR_REG(0x8724)
> >  #define   EN_32B_ACCESS				REG_BIT(30)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index de4f8e2e8e8c..ad9e7f49a6fa 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt,
> struct i915_wa_list *wal)
> >  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> >  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> >
> > +	/* Wa_14019141245 */
> > +	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> > +
> >  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> >  	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> >  		/* Wa_14014830051 */
> > @@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt,
> struct i915_wa_list *wal)
> >  		/* Wa_14015795083 */
> >  		wa_write_clr(wal, GEN7_MISCCPCTL,
> GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> >  	}
> > +
> >  	/*
> >  	 * Unlike older platforms, we no longer setup implicit steering here;
> >  	 * all MCR accesses are explicitly steered.
> > diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> > index ba103875e19f..e5ac7a8b5cb6 100644
> > --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> > +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> > @@ -134,10 +134,6 @@
> >  #define GDT_CHICKEN_BITS    _MMIO(0x9840)
> >  #define   GT_NOA_ENABLE	    0x00000080
> >
> > -#define GEN12_SQCNT1				_MMIO(0x8718)
> > -#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> > -#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> > -
> >  /* Gen12 OAM unit */
> >  #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
> >  #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
