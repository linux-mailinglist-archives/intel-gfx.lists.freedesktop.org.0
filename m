Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C75B946D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 08:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3B210E116;
	Thu, 15 Sep 2022 06:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C7510E116
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 06:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663223376; x=1694759376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K/SxpIo4Yn8168WR423XwleJYgMLjXffQ0lAdSXSLQw=;
 b=PRNUn+CBVO9nS7qiiAT6Kq4JbxIDvtMfI80jzu3Qz+PK33BTf3Rarwa5
 gyZP9VhDpzIAAY8kIU1HNjxjbAqfid1OK2XuHoYa9dw5puzt/QkXv+KTf
 Lgg5liqCWTjytn4brEY2lz4VkofLsvWHRKarAN0APmHvk8Zq4hO7qupwk
 IQdBzETD7p3+V70joHpHntUGKxPvVq5AGIEZw0imnuR4uofce+ySzcAkR
 5OsisDH0USGjQhLLXC/6cwXpqNCUmqrggPRrzJSPyq86rMff9JWz/67Nc
 kswd0mnyzVjWJOQ0XAdQtIZLKpfIZVtoDBgEmUyuD0sGoullPMsBOGnbL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324886363"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="324886363"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 23:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="862208146"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2022 23:29:29 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 23:29:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 23:29:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 23:29:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DIlOg4S1r7NKhI6IPzAoeTEifrMoYHb93W/1TBkRLusrS4VsTfQADkRYa+TuQflllyyH71WKLIwuN3hGqkaC42TDa1QQaGKGdS4lv5qwQMtDsfK89bpkPF5x4d9MzkyQZaVj8DRkWK4r4aZ9fpAyJJifm5tLLh7o72Td2Xj+dZWzHn19DtVyau3SjFVRx/kBj5MuV1efiEhCtrjiQUt1EMqCeL9xcRmggLNPFE145k8Ypn+0juPRTI4waUUB44gGGH196humghER5hP3lky+QuJjskL6lLu+DEKN0BT03xfyCsceDp92Lk6F8vlgnpCqbD7cDRjbeLXXUfRAgcFX9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HVR3eDm3NArU0js15jIMli9OY+XcCSz+k0ZOLh/IBUs=;
 b=i0f4zSv5G+ZZbsIOAQGgimtpNCih1NeFjUDWA1y0fkkp49Luc0jsFdugxNrPjQnWrcfaH+WmWbDAx1FJk0aypZosXIBUz1D2UQBCXWF2qaN/xi56STW2xXrfRCo7ebx0czZlqhbAIpxi2VuxVH+5Ea83neeKUEAAWlPj7I4K62346xfU94nPfghku2Ff/GwFYzryLKxkOCB1zA3ItErAQIvjYeN9afOUMwi9BQTkb29Biv/LaIsv9wt6lhzXs7taSNO55GixrnfrlX3p6sq5C7+zcf5xi7cxZUrZ1WVtKVDC5dgvErbZXT6Vcsuiuvbxr7zDajye5APzZIFtITQeGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DM4PR11MB7303.namprd11.prod.outlook.com (2603:10b6:8:108::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 06:29:27 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 06:29:26 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage support
Thread-Index: AQHYuIVOgQip7iJi3k+BrB7UUlRG7K3b8NsAgAAqGwCAAQGTQIAAesqAgAKOdRA=
Date: Thu, 15 Sep 2022 06:29:26 +0000
Message-ID: <CY5PR11MB6211CA83484047B2BED2ED8A95499@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
 <20220825132118.784407-3-badal.nilawar@intel.com>
 <CY5PR11MB62112A756C0464129B94C5BE95449@CY5PR11MB6211.namprd11.prod.outlook.com>
 <87edwg5z1b.wl-ashutosh.dixit@intel.com>
 <CY5PR11MB62114DF624728E35804635D495479@CY5PR11MB6211.namprd11.prod.outlook.com>
 <878rmn5mks.wl-ashutosh.dixit@intel.com>
In-Reply-To: <878rmn5mks.wl-ashutosh.dixit@intel.com>
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
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|DM4PR11MB7303:EE_
x-ms-office365-filtering-correlation-id: 8dbec73c-d21b-44bf-fb3f-08da96e3a358
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nt7CSizEXWBHbNPgLBlaLW/NZOib6t0ipyczhjzA/7Qz56QrHI0K6YpZaK+KRHlsu1SBVR+OGcPIFI3+xZo0C5aX4a6sikxSd+2qxTnaOr/kg1Csqjrzfn6myTxq/ztKMA90vOhVvBDpXj4Flq6j082k6GkQGNtU2hrCm99Z3VOMW/qcQxSuG3vAa3wrf2G/6K4VcZQS5qcWwiYcvLPPxaWSMM92+GA9QywGpvHlA696y32uAvODLQJmd0v0hh4bLfmjZdl2gBx2Tr5KasvxbeWbIOWDp/RsPFN2QBy11QANBgsUBfx71tI+LCERGI2kCT7eLJy6RtcGJnBuP63GsMo/yLMWYumZ+ZkaD4rSMVWg0xmOu4buWGC3+EZ8uXJ1JtigOjNnnorLBkNvZalz2Klb0q9pksJGPjNZoDxvWOIkpvC9PPkEtgih0Ujn+dQolV83aEzsOvDMfJkLaO1eQ3IT35abocq1aslfrZ2O2KViLeLEQ0B2fGh1o5Ex0aLzC6zDETlifNjptE8o3PUvkMlbvjf3FQQmOnjOxUuqRVgF/nRDGMoZnnvkN0kWFs9MVmnVyICB4u+UiynbeK2s6UWDfMCeCLQ4RalXjcSYidkPFttuBEUa+8mw5On3Lsom3wLZwFmfxebszhXz5MbP1EgeXK1yhyefAMZBEkNiME9F+hIEYIXB8RDCX+5+/G0YQG0ogLhkCwasXo9fr3XyVrSTBxqAoUIZnK4O700BdJmo2gqMJB3/MJZkW2TtXzK/QLhycSEx7GKIVY48rT3qVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(396003)(366004)(39860400002)(451199015)(6862004)(55236004)(7696005)(186003)(76116006)(9686003)(478600001)(64756008)(66446008)(82960400001)(33656002)(66476007)(4326008)(66556008)(2906002)(6506007)(41300700001)(71200400001)(122000001)(52536014)(5660300002)(38100700002)(26005)(8676002)(66946007)(55016003)(8936002)(83380400001)(53546011)(86362001)(6636002)(316002)(38070700005)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kZAsUrPu87HUV8dS3dPMk3VO9qF1YKfkeoj70VyalLejKdaBj9AR9xR4doNY?=
 =?us-ascii?Q?ddaphM7sdm2YSCRrOuMvLmclhr7pcAybCNo+/DTnR3b17DtiuIupOQOgEV4F?=
 =?us-ascii?Q?EjM0Ibzp6Tk0QAouOL5ZOXK8pvm9u1K3KtFrwh5+mlZgVRlIeI3pbVfyxo81?=
 =?us-ascii?Q?3ENrF9kMrPJ2tqwSfy2ZMurh8wxrNsfC9eGKQhC/84jafL46rh9WJxvlArFj?=
 =?us-ascii?Q?tRupaDZetRSlZoWz2Pftznw5R3ilfIAJ3ngOvQ+DrezXqU4LpfASfFc1e8Ef?=
 =?us-ascii?Q?Y7xAiTGemiSJeRDulsovQ/eLQZAbN9oIqvbGMzMHR0PfLunW6RI5djRcG400?=
 =?us-ascii?Q?zFohZIbVV5gwGHpsJJVCSeDDxQchQYfy9w+xbjUv/+seoRD+qrRaOUmdYYEb?=
 =?us-ascii?Q?Kg+q7TVYjwvwcSG5m1o/esUBlEMJwnn+Al7V/EOtsX1dN75XU4mNLvkNTalq?=
 =?us-ascii?Q?AsukX0LtPh6OzmW37jmObzO5MTKaVTqYo9GT0A1SFLz3syr8VQVLvR6UMfZY?=
 =?us-ascii?Q?vNFuKgWJdJulgk+AquMCU2b4bxKLXN/vj4iGxFV4SLveqjyIYB3RFCJlJViX?=
 =?us-ascii?Q?kijdf2CCue5tfASYHA+/xASTWKVwzc0GHVKAJUMKA7ENgOE+gye8K0CQbi9u?=
 =?us-ascii?Q?BuxNNbfcD82JQTT4GJpIWnynhTsa+N7QYPcKQWrc/1vWk2VYGx7EReMVKvsu?=
 =?us-ascii?Q?77fUUfJzmiA6EHQEVPLWJslL2CyBzILhRCHyW/9JmZdE1U3umHU33q2oufUb?=
 =?us-ascii?Q?im00e3QiDJehOhpiaWxLo98gG7SrcXg9uG/2Gkk9RTbA4me/jajZlBvNJxyp?=
 =?us-ascii?Q?R7rtWS6WvRUHlN9mgEpnoUBw7b+YUDr1RgC6SSLve+KHM/K+iWk4UDRjvCfm?=
 =?us-ascii?Q?FBptFVHMO6b+YYiSU3ESkyxoU7Nk51/iTTDedux7UtDlx4cM92P1s1SGqsZj?=
 =?us-ascii?Q?8ybLgH8R7QRhzGCOzE5pu/mEQBboNEJaWlDvTvYkTGYdsw3nA2m3VJoIKOrP?=
 =?us-ascii?Q?RKZLkMKK8bdtBFoYKzYUwK4A574PoyrzoDXsO5bAt223nx0+e1gapfmtX+GM?=
 =?us-ascii?Q?ClhvTGDKi8D/2ggPRN60fzfNxx08duxDuyCGEkycENa4qjKdg1RHSMVReB03?=
 =?us-ascii?Q?1l104y0I/ULOeNE/nsCbh3EoZJjvEe1vdabMTOeRhFg1Rb2IKQLJfYNkoBe1?=
 =?us-ascii?Q?uP7dyIoSmDNu0b+hLO9RwUWNWTaGdyKUBeQpL66f1eNm+5e1HfxMoK559QWZ?=
 =?us-ascii?Q?cL3Mgns5E3FVNv5caUHPhpw8UZVLeh99Klnbch2e689vI/L9ZD8QFqmazKCO?=
 =?us-ascii?Q?MIinxKIN/heuuYBUwP6WSMTTj2mdkhvlAzprD+3DDGbUITrrXumJCBG/RtOh?=
 =?us-ascii?Q?xRGj0Vrt4w/UbHyJF3i4PICbCrQsGIpkRLfxUPvZ4+TR0ZcDJ9xevAwwYZr5?=
 =?us-ascii?Q?sInaOcbsyohFCCx2dhBHHno4A4ElB2/OiDf5pGp0k1BHXgFptHCkxYYMymOH?=
 =?us-ascii?Q?VXh5nbclL5jpi4gy+Mu5qxFfeP49blW/1L5iDvMxZ6JMB75CiN/uwgaUHvCM?=
 =?us-ascii?Q?kiE6IFBXcqbqmGF63U6UUA1qVG12aEn8S8IbZsV6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dbec73c-d21b-44bf-fb3f-08da96e3a358
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 06:29:26.8138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HdrtscVhwVh720e5NritaO/+841NZ8IWuWCRaVOOqvIIde3qpCUkjKdSr0dIv3EJmyVlVfCO36MCNFIpvHiHcZp6o2b/dqLH9Ryz5XubxOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7303
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
> Sent: Tuesday, September 13, 2022 8:49 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: Nilawar, Badal <badal.nilawar@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Tauro, Riana <riana.tauro@intel.com>; Ewins, Jon <jon.ewins@intel.com>;
> linux-hwmon@vger.kernel.org
> Subject: Re: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage
> support
>=20
> On Tue, 13 Sep 2022 01:11:57 -0700, Gupta, Anshuman wrote:
> >
>=20
> Hi Anshuman,
>=20
> > > -----Original Message-----
> > > From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> > > Sent: Monday, September 12, 2022 10:08 PM
> > > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > > Cc: Nilawar, Badal <badal.nilawar@intel.com>;
> > > intel-gfx@lists.freedesktop.org; Tauro, Riana
> > > <riana.tauro@intel.com>; Ewins, Jon <jon.ewins@intel.com>;
> > > linux-hwmon@vger.kernel.org
> > > Subject: Re: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage
> > > support
> > >
> > > On Mon, 12 Sep 2022 07:09:28 -0700, Gupta, Anshuman wrote:
> > > >
> > > > > +static int
> > > > > +hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> > > > > +	struct i915_hwmon *hwmon =3D ddat->hwmon;
> > > > > +	intel_wakeref_t wakeref;
> > > > > +	u32 reg_value;
> > > > > +
> > > > > +	switch (attr) {
> > > > > +	case hwmon_in_input:
> > > >
> > > > Other attributes in this series take hwmon->lock before accessing
> > > > i915 registers , So do we need lock here as well ?
> > >
> > > The lock is being taken only for RMW and for making sure energy
> > > counter updates happen atomically. We are not taking the lock for
> > > just reads so IMO no lock is needed here.
> >
> > If that is the case, then why it needs to grab a lock for rmw on
> > different Register ? Like in patch 3 of this series grabs
> > hwmon->howmon_lock for rmw on two different register
> > hwmon->pkg_power_sku_unit
> > and pkg_rapl_limit.
>=20
> I don't see this happening, where do you see it?
>=20
> > One register rmw should be independent of other register here ?
>=20
> Yes each register RMW is independent. In Patch 3 only hwm_power_write (no=
t
> hwm_power_read) is taking the lock for RMW on pkg_rapl_limit (lock is not
> taken for pkg_power_sku_unit). So the assumption is that RMW of a single
> register are not atomic and must be serialized with a lock. Reads are con=
sidered
> to not need a lock.
Thanks for explanation , and my apologies for the noise.
Br,
Anshuman Gupta.
>=20
> Thanks.
> --
> Ashutosh
>=20
>=20
> > >
> > > > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > > > +			reg_value =3D intel_uncore_read(ddat->uncore,
> hwmon-
> > > > > >rg.gt_perf_status);
> > > > > +		/* In units of 2.5 millivolt */
> > > > > +		*val =3D
> > > > > DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK,
> reg_value)
> > > * 25,
> > > > > 10);
> > > > > +		return 0;
> > > > > +	default:
> > > > > +		return -EOPNOTSUPP;
> > > > > +	}
> > > > > +}
> > >
> > > Thanks.
> > > --
> > > Ashutosh
