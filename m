Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51528563151
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Jul 2022 12:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A184D10ED78;
	Fri,  1 Jul 2022 10:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B906510ED78
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Jul 2022 10:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656671084; x=1688207084;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6tv54fQBX4ZVcjGVpgoS0eoJKf9NnmMh2OrTGBlgr/s=;
 b=SMC22MxDGkO/rJh5aLmr8s5YzAEX8f3d+/C0+HOkNv3je8vBQfVNyDxm
 50MgFSZIAB80kd06Hkq6NOh7STHv0noSlkEK2xOLIY9t+WfyuTqKlIHvh
 +CczQOt1Njz+XrCYUKjIcxVYq2WMhDOiYjf0OIHSbzasv6whZM5MfnDDb
 dNkCdqy/4Vdgis2Rf0M22CRUSWtgga+QBPuNJPexj/vSxXnUhUhqISTxu
 0x+Gv5fmd33Ubk5jyItwKP3OEUJo/3LaViQJdFYchrY2+tCq/nkvZuw/L
 yAMXYnkATgP1lwb0Yir+a/7cbeVC1yocd+wTQpOGxVdooygOEFrTnhLkP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="344305093"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="344305093"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="681356500"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Jul 2022 03:24:43 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 03:24:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 03:24:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 03:24:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VIlEKnQM/eOCo3J3JZWOD7ZCv5nJ8D1z9uwSeMsj/KBhAWewIdD/doaBbSAa3oAVNpu8J+RZGYlQbrf5Ki2+LxzFXF9rsuS6cRMGncdqn01G0Lrqjz+3tY+Lf+8ErZL4rQ6xOcjyStnmP95GJw9WV/tEXQ4WbNKXJ/E23WakzzQQP9SZgB2SJZOpE2OKTx50nZd0TjYe+BF9Dn54DDMI29LP8Z/BW9oL6c0zfSk60KGf/7K0smrff958b1ivPCKkuZJdMMqgvB/c78BAlsam1jQOegKs2mBE53p/tnryIVr+L6r27mxxSHU3D4xXjQcGP/VhCrj5miqhdI1cn6n0YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b6SdlDyObz2I3zvVANLKJo0yQ1GA1dt6nhNJujX5YHI=;
 b=U0IlCTp1wSC505eTJYgzXAM2FM6M0FhQItNNrc7rl72MenRu9gttoYyksW+QIBGs4e06+CnJ3nJXD+GfHM7owwhjUJ+a5n0oVz+V1Y6dKx7hRh4M123cy4/zQh0D7sq+0/3DfI58GnJe8sETKjJ63uBOLN+YipZPfVesbKeDWta7u7xZCZIYDzodDlp61Ev4HjgPzxFFGLWkUHo/XK6TEExNcouJVWXCY1XECG08M9U1LlfkkoMacawOoIPQ16xywsirQL74UTOhO2r/V37JFQTbD0s5Kq2EtxV9vFYMRHsAFX+bS6Q3kOpIuzCmCjkizly7laO5MGnv3RybqqDxNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Fri, 1 Jul 2022 10:24:33 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.015; Fri, 1 Jul 2022
 10:24:32 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYihUZPHLEMAc+r0ePHJMTS3iqA61pUaqAgAADJxA=
Date: Fri, 1 Jul 2022 10:24:32 +0000
Message-ID: <DM6PR11MB317747F0971477CD6C1E60D7BABD9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <87a69tnnw4.fsf@intel.com>
In-Reply-To: <87a69tnnw4.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46cd2b29-5b7b-4a5d-e390-08da5b4be3b7
x-ms-traffictypediagnostic: DM6PR11MB2907:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4N7SC5zSH8d89Vy7Qr8hb8CR4c3sKQxVkGCDNvbw1P6GPLCM3YLWxmq8xqp98E7z0a2/AawWn00MsGo80LCBstJ67dvIu2qDIA/B1kmvgbXxk5qNYAfOtdtr5E9g+bO53843IgM5bWhnWcPIcyldZHaCO2BEeretSGSi7I4sAKx6xdTn1W0a5cG8dVvpKCPnIMVc88IPCSSOs+LjaCto4/Btw2/Jiq1hXbL3DP9YKQLi1/omKrpV0Jtaot1Bq9rDk0N1MMgNYmyHTTMc29yXNm+oCN2uTwdpuGZWfXqRstaKDSFiEpfq2MMxviOUgu4aDzvIhUQT5mWmB8WQHNCQEVITGDRgblCiZMU9UEK2THKGKrRi0vpL0maS1+aSCTx2T2IjF3JgvD/KA/Vng9ZCoTPL/X0sBNd9+vuDfgGlEd+/wS1R/xJejP7kjg3RN7gxXKhzGjZATyWteTSjjUiWk2vFTDCAfNBTGT/m7y3Qf9ZDqNaOkQSlMpFUtJ0WGAtZMw/N+HUSxOq5YawFGUnk34mk0LIN2/5Vd0zZZMzV8YsK60IlWDVpqqwv1X/DEJwtu8GnprtEAnI0QlyRe18YT8WAL9x5Ye82ueWu5mKhK5cftWVPVCArqsrkDLer/zkb70IWeZm+IYSAMg0jQEMNkfYeH/05pBDLoqJfkbXFaKNK7hdZchY2h98SUAI91lemhAeuZVMoSjR05D/J2lNDB4OEzDXLJtF88tqg0YjfULuMRFRlM02ir0ecOKx/e0ktnIicOJRy3fTV2TFgwoBYDxYRfXzPGxfVw1GVCfVezhteXei/lsWUTj0xI51XyggS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(346002)(39860400002)(396003)(376002)(38070700005)(38100700002)(71200400001)(186003)(7696005)(86362001)(122000001)(6506007)(26005)(33656002)(83380400001)(41300700001)(82960400001)(55236004)(52536014)(9686003)(4326008)(110136005)(76116006)(66446008)(66476007)(478600001)(54906003)(316002)(66556008)(64756008)(8676002)(66946007)(5660300002)(2906002)(55016003)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ELtFcwOZ2gJr6fdR/yvJQhSeSm58eRqXOEngo9hN2Z1k/bE/rYffV8GwTOr2?=
 =?us-ascii?Q?LgLzU8UNyyDdzU7x/N5KnGFYCteYXoMOMJ9lMUCpgmCbapjgWTsSW0ieDx8j?=
 =?us-ascii?Q?dVZWzFM9feQ4bQT5z1v0zRA44PUJeS+YM7/RrEboWHiICIOvAWC9h0v2Yv6L?=
 =?us-ascii?Q?NGINuwpcAzWIAJfhuA4XaoSGQ2UyG0o1qLCAmWX4C/f4P/oWSDnFvkkQNeAP?=
 =?us-ascii?Q?JRoa5J0Le6JScqKa5tmyL8JeQeYU2CQqaGRbeXCM6sUAyX5j112PYiU7Sm4P?=
 =?us-ascii?Q?cTA4dg/9lf1ThSO0YNnAVWepoYoOsRxTmjj7J5uN61xxHKvIrVrlbyWANQAs?=
 =?us-ascii?Q?EQV0Cym94cj+FHMBqQ9tcOmVZvOgIhWv4uGntk7tC1x6p999KOA0BDcM2nbk?=
 =?us-ascii?Q?W/Jx+KvuefKWWNFNXrMX7FDlCkR44Z2a9joK0hsdZB5wpmPLI/xoHrsxdrcK?=
 =?us-ascii?Q?b+4WiEn7RZmUNBjoasDV3Mo9gUFdHIj6CIMVtPIuTbnWRsp2UOzOM/zm16sH?=
 =?us-ascii?Q?JW1jU2KyaaN172fToqHrSY/ZD71tKLH2qYXuuMVMF4ZzClzTecYbX4Yfgefs?=
 =?us-ascii?Q?PUKxD51VE3J/iktXaFoMLqbheV4DeSgMg9sp/ONNVjUeY/yc7H4K+OJT8k5V?=
 =?us-ascii?Q?JY/ywlT5ariEDbEHnlK+y7Qs7YrvH0G1w2vOjkomoT4zdFI2tB4yrWsPAR2F?=
 =?us-ascii?Q?Fpcu3QEKUOz27NpyEjfF0kBDnREmNskEsTS0VRklP9oVe8NvbkpVWK/DJ+jh?=
 =?us-ascii?Q?DiWTMGhfWDmN5kkQq8kJcuU0YPr6psHwViOkDs5X+Te6O/W//PckTo6FgJjv?=
 =?us-ascii?Q?4OSsZgJw3RCt2zFQmewp6JP3/rWBmNdUrmLnQVZ5toVddQNSbmT6Y3GPxtlA?=
 =?us-ascii?Q?CTkR2PfVYT/FVW53i2WOtKLJnluu52wBHLvy3tzMvvDRtYA08GARsUhm4WLI?=
 =?us-ascii?Q?Sv7NBLLLQIJOrf0YUt0Xq3Zqr5o/rRbxLn9KNnQwC7ilV2VMIWchrbTG092D?=
 =?us-ascii?Q?7SNJJmQgs5J+iaCHmcaOffevx4O0N2IBVYmqvH/yAO4WejSGR/XwPu94YcHX?=
 =?us-ascii?Q?LjwLidTkFRjpagnCHzj9bBUBAflG1cii1NUGeGFn6ZzPZFeYl8Btk83VCagd?=
 =?us-ascii?Q?7wst7Hko0zisyrUkV0buMbvAxaxGm7tnoHSaLhKKThuoz6sLlo6d5ks6h/ir?=
 =?us-ascii?Q?SKG3a8y1v6btexoQmXGG93gVy+hNLLgNWcQ1FfiJ7HDbV6o1pK6loRKlaval?=
 =?us-ascii?Q?XGq7Fn8Dph6Xaf8hb78DvU0+7oh1gZitakKw68wTvJv4cfrYeCoxK3pSK7Cp?=
 =?us-ascii?Q?NL/1f/f027Oi9OtrW+aJLqK72RbfJ/+rkuHACvUDq6qJ6Ovb2mJJyapvrw5f?=
 =?us-ascii?Q?OQACGGk40XcP8qNxF1QykBSZzSrHLZ9PpStwq1UGCOKGdrFYYXC/t9UKcpJC?=
 =?us-ascii?Q?sZSGg8XEGJodakgSclH2BGo1LBjcwVbnhNVsikWdJXfILfZVMoOmpSzKXPpr?=
 =?us-ascii?Q?+KoaeJI4nB7LipwjtEY9Z/E+pCw4RMUIkU5MHVDUJ79oqPTFBsaka9n/TirP?=
 =?us-ascii?Q?mGSlz6gULsdBwghwEdPbDLpnHQ3ksPPGlX5+UsWE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46cd2b29-5b7b-4a5d-e390-08da5b4be3b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2022 10:24:32.7188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xGD5zBx13XO2Cj8yeOdYHEsZ/9IZ2a2fZsds7Z9nRZF6kTvq62385kqoZZlTRMQgINjfZSlcCU6XmXrOhm9kCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2907
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On Mon, 27 Jun 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > On linktraining error/timeout before retry need to wait for 400usec as
> > per the DP CTS spec1.2 The patch with commit id
> > 74ebf294a1dd816bdc248ac733009a8915d59eb5
> > drm/i915: Add a delay in Displayport AUX transactions for compliance
> > testing
>=20
> Please reference other commits like this: commit 74ebf294a1dd
> ("drm/i915: Add a delay in Displayport AUX transactions for compliance
> testing")
>=20
> I've got this git alias in my .gitconfig:
>=20
> 	cite =3D "!f() { git log -1 '--pretty=3Dformat:%H (\"%s\")%n' $1 | sed -=
e
> 's/\\([0-f]\\{12\\}\\)[0-f]*/\\1/'; }; f"
>=20
> And you can use 'git cite <commit-ish>' to give you the right format.
>=20

Will correct this!

> > removes this delay mentioning the hardware already meets this
> > requirement, but as per the spec the delay mentioned in the spec
> > specifies how long to wait for the receiver response before timeout.
> > So the delay here to wait for timeout and not a delay after timeout.
> > The DP spec specifies a delay after timeout and hence adding this delay=
.
>=20
> Please try to reflow commit messages to about 72 characters.
>=20

Commit msg is maintained to be 72 char, but the patch details added might b=
e misleading.
Will correct them!

> I had a bit of a hard time parsing the above, but basically you're saying=
 that
> the hardware handles and flags the timeout, but the DP spec says we need =
to
> wait 400 us *after* the error condition. Makes sense, though I didn't hav=
e
> the time to read the specs to verify.
>=20
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 2bc119374555..a1fef1645d6a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -286,13 +286,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  			/*
> >  			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
> >  			 *   400us delay required for errors and timeouts
> > -			 *   Timeout errors from the HW already meet this
> > -			 *   requirement so skip to next iteration
> >  			 */
> > -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> > -				continue;
> > -
> > -			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> > +			if (status & (DP_AUX_CH_CTL_RECEIVE_ERROR |
> > +
> 	DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
>=20
> Please check the indentation here. The DP_AUX_CH_* should start in the
> same column.
>=20

Done!

Thanks and Regards,
Arun R Murthy
--------------------
