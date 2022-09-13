Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324855B6940
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 10:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D9610E63E;
	Tue, 13 Sep 2022 08:12:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAA410E639
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 08:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663056765; x=1694592765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ORRJ5nwNPVvxTyCWE1fKS52oVSxTLz02kx/JZQ1Yq48=;
 b=dfVjkBOFiaqvJcDTCjJGsuRzr6lmE/JCq9RUEo69UPJGBCkpNSRLge9U
 X1BK9sd6YeHUcaIAnreAbbX9dm7SudkifzbXkVi7l1E3FU2H9ZYWaQ/oi
 J5h1eFjYBgug9gZMbbgCVZmoOPumfBlf3WyMDrVmyPcpdcdRGWkOLwN2r
 B5AtMYNFFoyV4+j9+fzMKISqoo92gp4dPg5qUpbdChJ3O93/+c1+AG7K9
 vV6eaU8ivDSx/XvXeWsYZFMhM/DjOUsEf1eKwG4hVC59ky4TkjPlHEqKA
 mTTfvGmCmeF1b1Dvm4KFL4Vz99+tg0sVHJiRBAB7JljlrLbJjg6VZC4ZK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="295663415"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="295663415"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 01:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="720081637"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2022 01:12:32 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 01:12:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 01:12:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 01:12:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NNotmecxNWojOeYtvBaMJ1TFG/e6crL/vUQEBWwVwtDGqS8+Z+9MhT2OYAhaVmDM0ox7H+PTrw3lhcDrCH9Yz6uZz1rIj8psp78Q2lZocKopRDb5jYC8TZllB6P33Za82HogHx/hlqLTLUtVnhQH0fEC3TTCP0Qh3yBJdJq/fTaqCuqJ0eOTrvwOKFEGmboVwycuhFOl9NzZUKy958ZhlyMnZRzg37jou5jDHg4UvJZCKzETEINiRmIrHxGugs0VwcDIDheNYCcfzKjADy86KH9Sx+vp3jiMl8acv8OZkiHeT4M3pCRsEvw5uVKZQMEDzhwH4Wof9d47k042+DQltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b05kWevbDZQj2/cpjcedzgYWANTx678J5grSLjIxdWE=;
 b=UipqOAokmah8dvHBpFhjRq9YC45kLIJH+zk7orDZCo1yBV2zK17+Agot3OZjUXcp5kp8E10eSP+jCQk5xtue1dmbJddKJFtEvgXX02xpGG5K7h7NH1cozhOEBLY4DyjJi4GB3ioGkO1qpEO3zLyE46x8F33zg4OtWe4m9oDzlbhOT0bZYZ/LnyC1NFvPVIPOAQxGoZB+aj0Ico/BVDRD/ZKlupWMAQPP8oRJUWKrE1sOz2vtw2utdqq8vL4RkHY8aFuhdlfFu7gac12tyNHlQXaSSNAriqefYsfI4YeaesjtBCwnjtSV2s5BshmhHuj6YgfH+UtVPCk02K9g3lREZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Tue, 13 Sep
 2022 08:11:58 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 08:11:58 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage support
Thread-Index: AQHYuIVOgQip7iJi3k+BrB7UUlRG7K3b8NsAgAAqGwCAAQGTQA==
Date: Tue, 13 Sep 2022 08:11:57 +0000
Message-ID: <CY5PR11MB62114DF624728E35804635D495479@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
 <20220825132118.784407-3-badal.nilawar@intel.com>
 <CY5PR11MB62112A756C0464129B94C5BE95449@CY5PR11MB6211.namprd11.prod.outlook.com>
 <87edwg5z1b.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87edwg5z1b.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|DM4PR11MB5995:EE_
x-ms-office365-filtering-correlation-id: eea67898-9b38-42ce-f794-08da955fa0d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jJdijEjOhWfmVErDdoYTWKA+OGXl7xmZKLnDHnV3jWQXYgVA7b1SoShsQfoFeDjfsxoTW9tLSv5/OqbZNZGUc3FIVTIj5UAW1ISpH4aX7XR/9huX54sERztZLcnlx5P21K7kFVESKnSf4T0Nh+JI396bWC+dfBOTlfrEMj5uQu8Gwut6WOlwsFjaDxKi0AJnnW9/MHMUVT9WQAVvHA47p+WMAuybgmitfrGd3VhDawMpq5is0Dpt+EcRa6cmdT88B263C01/OTxOdHt5vPwzZuGPfOvfdZ95sa0Bc0Mek69j9KcYSxpT60U2CK/HzFSSD7o6/EU2aiTStecCYNafWNt8VmMWxAi3DLdOUupvmcdJ5nBoSK1EIvsGfoTKXo70pcQ2UJzxWOXPG55pwDdgb3JB3Mvi84qIsouw9FAhJvNeAPZzOKA0sVLmhelSnOgl8lrbCTU9zNgEJJjNTiCJOk2MmMCL3+tRCD6tBA6JMTKcBFK/IgfQRQbZIuPNrP1VWZfh4Gf2nP+6CmUD6I/0SHqF4StNUv5UzQeiK4FAS+1fCU0deN8rywwnnfwotR0pUXQgnvJIyY+FB8+rsDsby6MUn+KX+diBrn1O1+t/qFfoq6lE2Ar2/TTCdFnWg3u9eYTTxcelctWJXZpgijhNg5PVJFnuM+nF5fMtu8Qy26eBYF6ny35cXkriarfJqD5axkOZxr+vea1ekaG/IkPvFzKxF6B0urSU0VYQ/qkE450YsEfiBAz8d5naVDDGP10o4G5sz+hLs0lnSpJ40GAM3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(39860400002)(346002)(376002)(451199015)(83380400001)(6506007)(53546011)(33656002)(7696005)(66946007)(86362001)(478600001)(4326008)(6636002)(76116006)(55016003)(2906002)(8676002)(71200400001)(41300700001)(9686003)(66476007)(38100700002)(186003)(26005)(52536014)(66446008)(316002)(5660300002)(55236004)(82960400001)(38070700005)(54906003)(8936002)(66556008)(6862004)(64756008)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0tkdGD+co/4FxK/0cShqOqTTN60ejkBcEc3iJVkwcp8gA0uRlQg5TSvpqw3b?=
 =?us-ascii?Q?I6KwipCgd1bxutoirFjhKuL5cBaa68ORkKttNSbi+/GG9Vwdo4507Mqp6Zs4?=
 =?us-ascii?Q?TJlo4T8N4mhzjxoQoPboJHkYbFjaHzp6UmICvKhj9zTTavC2MZPep7tm8G4+?=
 =?us-ascii?Q?9v9Dp3nOVzLw8wQxiOiyD72k2TgSgx7jdodNN1DG85E9sZfKpIEA64dpiAO4?=
 =?us-ascii?Q?YMOtXdOsu2cXXuo9l0urTRKyj+HlUQVlKAgah8hBp9srwndcmMUrpfcQGsku?=
 =?us-ascii?Q?U5Jaz4gvwkOKnr6biucH3+ZzoGZIYIKS63pxRBaZrQmoZvfwPKFskScpKPnS?=
 =?us-ascii?Q?NH20rrozX7F1t0jaBHnGOdMnXFEV7xzfJaWZAyZnYar/Lo1mku5ZrmWcbPnu?=
 =?us-ascii?Q?S2793x8bUTe+OLRW7uKM8vzLYwFbRxdmreTXqN5Lh5IFBdiXhI9kWgn85spV?=
 =?us-ascii?Q?KexPp8n4G0duOS9Quf/V5YXzFmF00aQjzbJOOJ4NVmPQ7CZvmjxaw4ZpH3Ef?=
 =?us-ascii?Q?AUMrFhd1rgcH++lWnylf5XsNsunk0+YcWxm8Yw5SGmEPYEBbYkUd+b1G6B2h?=
 =?us-ascii?Q?hLQonHkQ2V6EGFsC8zwLN/MmjQNGddZRuT2tokUEfLnKzUijseBXxkfbAm+Y?=
 =?us-ascii?Q?/HAkkFwNMKDgWaqsBDmBE9hpFMSArib88ksTwnWgYGHcP9wbGSTISdTNmkP9?=
 =?us-ascii?Q?rS5hWhFrGM4GQuPEdxLVal1fTj/sGED8MLtuqKPFGpUmqgza9w3Jhj1Ztesf?=
 =?us-ascii?Q?l6X25+x26gYxCiGZyQsN7ZARUSg2/A6lRR3OnMhsotPLI4VvkulL4SzvfB50?=
 =?us-ascii?Q?sx27EFE4mstgZEMcxl6TJgOFildMtG8xgdcdlQTlRWf1Vj08VCKQn3PCan2M?=
 =?us-ascii?Q?lj7S5bh1VmZXDhfM2QeCieWLyMNe/5okD7USOcsWzxjqV/pf3P+v3JMQiAgj?=
 =?us-ascii?Q?VOJ1W0/ANm86cJqDqMi9P4b7SPERXmi77xPigdSPOHVC2WbqmbpTNsCtgeWm?=
 =?us-ascii?Q?psZcDfDFfX90DchPvKvxEYq/HmMW8RyycRVOs0IpO69RdiGc/6vTXyvj4/u/?=
 =?us-ascii?Q?yhVqtSR7nGuegV2OXA+qrfMsXVqol/QDM7BmcUEcdduRgJZTzzR4Rtx13eD5?=
 =?us-ascii?Q?wm2MrrapZ2kYKLmuq8ZJ9DiuERhoVVeIpAyKqJS37LSlF7VnvyPjoeTmkkWr?=
 =?us-ascii?Q?wRnVgUEuajz00TTH9axOQLTJbr8YRkkDV/8Q8LUcuM2feOMUswi+5SsSUvXW?=
 =?us-ascii?Q?0Onh7wHJYlPim/yL3LD499W1j/vauUtoiBjo7aAc9oZVSztY1AYlPSs1zFY8?=
 =?us-ascii?Q?PlknidGvBUowojn+u0DhKbXqc8yckweR9p96joxiPafQ7wBjWCqZKDsa5FEh?=
 =?us-ascii?Q?ZBhGdhVBfqcxevUjhRM+NdtwYaOBTanxRhigZwdeCtsMZJIN5FH5noYkjZJx?=
 =?us-ascii?Q?WRUiGOIeAohT9s72/mAmccYq7qKUnyVNlqfj/Z0OQltZxdYy8lWF+QVWcCWO?=
 =?us-ascii?Q?BFoiuhx28gtTPacebFdQIJ2P/nZA5z98bMe30GfnZtRnlf3GrFqtKX0uJoml?=
 =?us-ascii?Q?o8eonA95+OW30rGUY6rnrq68Jr9uBupt8AOiJg8y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eea67898-9b38-42ce-f794-08da955fa0d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 08:11:57.4765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W1nyPe3US6bRf9jlNKndpEI6M5KR7en6QGFfDNuK6XZr/KnM9iJZeXRTRRpyYp/lFjxLvC+gJwIy8XVai+/DrppgihtspV3J+XpA95XW5tA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/hwmon: Add HWMON current
 voltage support
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
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> Sent: Monday, September 12, 2022 10:08 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: Nilawar, Badal <badal.nilawar@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Tauro, Riana <riana.tauro@intel.com>; Ewins, Jon <jon.ewins@intel.com>;
> linux-hwmon@vger.kernel.org
> Subject: Re: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage
> support
>=20
> On Mon, 12 Sep 2022 07:09:28 -0700, Gupta, Anshuman wrote:
> >
> > > +static int
> > > +hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> > > +	struct i915_hwmon *hwmon =3D ddat->hwmon;
> > > +	intel_wakeref_t wakeref;
> > > +	u32 reg_value;
> > > +
> > > +	switch (attr) {
> > > +	case hwmon_in_input:
> >
> > Other attributes in this series take hwmon->lock before accessing i915
> > registers , So do we need lock here as well ?
>=20
> The lock is being taken only for RMW and for making sure energy counter
> updates happen atomically. We are not taking the lock for just reads so I=
MO no
> lock is needed here.
If that is the case, then why it needs to grab a lock for rmw on different
Register ? Like in patch  3 of this series grabs hwmon->howmon_lock for rmw=
  on=20
two different register pkg_power_sku_unit and pkg_rapl_limit. One register =
rmw=20
should be independent of other register here ?
Thanks,
Anshuman Gupta

>=20
> > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > +			reg_value =3D intel_uncore_read(ddat->uncore, hwmon-
> > > >rg.gt_perf_status);
> > > +		/* In units of 2.5 millivolt */
> > > +		*val =3D
> > > DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value)
> * 25,
> > > 10);
> > > +		return 0;
> > > +	default:
> > > +		return -EOPNOTSUPP;
> > > +	}
> > > +}
>=20
> Thanks.
> --
> Ashutosh
