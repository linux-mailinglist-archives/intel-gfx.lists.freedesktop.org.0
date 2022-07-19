Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3121B57A57F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 19:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA269134E;
	Tue, 19 Jul 2022 17:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C1B91344
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 17:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658252274; x=1689788274;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pOKDhPOSbW5baiPfQimBVavgBeKi568zvaHZh1fC7wc=;
 b=Sc17lib9kRXgdeEsSyQxS+fLL/uhBuySZCEv+Xcky8Dl2bA/GhMAkrXY
 FgxZC2yyLiNlgOqL5rKwx1UWlDOoYeYn811De3vCLxpETtDDe4uc4OR35
 YnxsA+6U3TrhEkJ+2+RVx4M8WBFeab7Y0Fd0VV1LsQ8CnBP3itA8cW+8J
 T3jWEGhxmeioumayXbhyh30wz6L8JvihOmXZEqGth+W2MaZYVoe9/rbn4
 X4JUEAme5x5LSifc/C1kbMj4qf3dg9HhFydjfPEQOUGiYtLdXgVdirU/6
 5OKu7wOJ5MtxXNdoruQubrI2ZHOAHWcQwy0qIiDYA7PRiZ/XeaHed+kX6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="287299566"
X-IronPort-AV: E=Sophos;i="5.92,284,1650956400"; d="scan'208";a="287299566"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 10:37:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,284,1650956400"; d="scan'208";a="625286483"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 19 Jul 2022 10:37:53 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 10:37:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 10:37:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 10:37:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 10:37:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHP+F6mHryTGp/YJ4o2oWLKshpOHcDJzsj+ZR0LHgz0QWugTJioiDsoLVKl9DRV6QWRUi2gp+s5/+09I3iYs8XI3kb1zhm/3ClSICc02gxem77QiY+8Zcj977LCH3DF+KAlPB9mA9wTzWcNDEdCVGRr6qkePoQRCnTpdIK3bLNvVM3PRdAEG74u6Lb8hgsMrv7hodF45ilv3R8IOXmYCsLne63/iV9YNyL19MiWbwQOsvMcJ1qA+nXL7JYliUHlZjT46ZYvktkQzUaOGH3ZCfKuO5+rNpVhfJKwDybt3goTH98fK6qURM9aXgZnQ4trf5lLdOphZxj91vcUHYt5cjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=66SJoYRUwL4K5Ak/HYopj9EZdH0qY1m+dx6DtzwXlVM=;
 b=TVntqTHR93CHyCbHN0XfPGLXPr77XzouD2i1IE4R0z4YoSe/MO2TQd80TlN3AlCmHwesZhPwfOhjTPl+wn8UT6HFvEQZkLdj1mSo6Ak161d6lNnkhbkywNwkjizI10lH1if4EMtyLdOlzaadVQPqnrR31/X1VdU6Yp1qr3WPjUALVTT5cjH4ckNW5iGjeEl7h2jds6aG5qOLHbRI8q1zT+9k3468YMoXHLHXo6Oic+R5IPjaDzZmJpBdVmculbSmO2JYSueNDG4yIfjKcKqLxxB2xm+x1E8lmS6m9qrjSwh5HLdR9nNJDpDFOIu8Nc44XAIJsn3A6fDj+8cBsHJotg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by CY5PR11MB6368.namprd11.prod.outlook.com
 (2603:10b6:930:38::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 17:37:51 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::350d:e444:cb85:a1b1]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::350d:e444:cb85:a1b1%10]) with mapi id 15.20.5438.024; Tue, 19 Jul
 2022 17:37:51 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
Thread-Index: AQHYmtpnk7DvE0gMg0ieFLYQrAp45q2FCl0AgADsT7A=
Date: Tue, 19 Jul 2022 17:37:51 +0000
Message-ID: <CY4PR1101MB2166F3B024A9965C1E420458F88F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220718191212.166141-1-anusha.srivatsa@intel.com>
 <DM6PR11MB31775421CAF98B4F838C1E1ABA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31775421CAF98B4F838C1E1ABA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59128f19-db4a-429a-9124-08da69ad6790
x-ms-traffictypediagnostic: CY5PR11MB6368:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2iBs4h/Wi11aukbUaaYTc6d3u0bDZcJWrYkCnC33QQu4BiIFAuxRT8BpFnE2Fu67ObwPdja/bTgxpr+n8AHdRF172NG1TdB6T7k5czK1UGS8oPideWvLoXDf8neKeDbAC4S27oYVEsgayMz8PX48uf53UBV/uJ65U+WebZwSIAuTQVnmZMvLfRWHRMX0avaUdYNAukCjNbVz6MFYjpCPfjkaA+1aqKlj/UtfUw3E1JbDokxwKteiLkXz/RX07sJawkcohInHA+EjOBNaf504+s32AoJZbFebBoVBdkbnJN/KCrYUROKq+ZvK1gfXNeXfLKfUV54Nit9Yoh6re3G2+RgCeJo6TpiQUUszREtuqxPaa6EwVQfzd2VQ4WbBYbvOAKgstuuyjfB3KzB9lrTu0C4BuC/hbc4p3EoXfafE20BqmAzaYia40hwl3oKA9ErmD0GBIBZLcSfMxsDWia1tJAZAUDfTfEPITT8Fh1TlPz/XKV8CDDPfIjJOb8Tq1ENt8F9idssqFi0dbgBL817Qbnhb9+ULO1xp1aO9481UbNQt/YHqrqvgBqCGrtPiJrvr3cv6PhM9W4ofLek8JO2Xup6B+uqQ+f6Ewd1Ws0CT/GiyrIXdyua/KVw6kZsFT/bJGsbnx9woT8oDuqyPW2sJiBIpMilApB53AEnJCedERQSJRrnzTs8Fmda06gcNkZPl0cSqCjvoy7RsCi2ANvf6hXJLJIIR9PUCcDxwtLGAFPEe9eqHS0AGeNq/jIQtnlp/dtiNrwdzsV+0IkAMut+Z9BUI6MjA/GUCzgKQZyiaR8s17tYNCsesdoLdnHcJHIdN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(39860400002)(366004)(396003)(376002)(5660300002)(66946007)(8936002)(66476007)(52536014)(8676002)(66556008)(55016003)(76116006)(64756008)(2906002)(66446008)(86362001)(6506007)(38070700005)(7696005)(478600001)(110136005)(38100700002)(33656002)(316002)(41300700001)(122000001)(71200400001)(26005)(9686003)(83380400001)(53546011)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5lzhzaV3iNVRKidQx+0rBaddPd5G4V7AvzjExvDkZI5Tp2pML5Jc5G11u5cz?=
 =?us-ascii?Q?gmeP+rONWurvZ863HQqr2h1HfuEwFuqsKvJHW/A/EJGHItSvU/68IrCW3Hb+?=
 =?us-ascii?Q?wBzMUTYe/nTNIXdlSWMk7ZEBJ+06fMT62SQ3lum1l4NEOYewhvv/4L1TvoC6?=
 =?us-ascii?Q?lNBFsVtISt6ThswcBpDg46L3QKA+3O/1SoC2FRVAvfemUFWkVdy/mt2Kwnpb?=
 =?us-ascii?Q?T8TWz7WRib3VbV97ZnYQIW7n8lX2k8mCymKEGqCBljIofewgp3GcaqBSEa52?=
 =?us-ascii?Q?y3d0kl74hKk7eOKzjlVclrcRruYAWAb6rQKhEwCqOVyepNFeb0Hg4lrM9gPc?=
 =?us-ascii?Q?jIy8yYOE+SId9jU9/9UDKaI5HF7cSwhqhidhExCAGGxNAVp7p0IZjo80Qx5O?=
 =?us-ascii?Q?zdUVqm+QZQd93fY9upgE6uoWJu64tb5NB5sX03+MASBAvsGCS/pr8ZG2GzN/?=
 =?us-ascii?Q?PnWaZj2+4ZhS/8UoxjhXhhBJWhLKvhPoOzmFDujQnsl0GUimt15SB0xtqleh?=
 =?us-ascii?Q?jYtd6npMCpeiYJq3YZm6mvai2yqtPYD8xyRcMw099K2gRmRJpXV8pycsY5Ow?=
 =?us-ascii?Q?QVdWMKCp9q5gRglH7BREUbwSQ09WEYip2KDkfob5J9Z5Q+LADZq1AVkZ0SM4?=
 =?us-ascii?Q?+fGIdveBO/e3i6ABtuVFRzF4reOxIweG7MGg1z4SWfGBp0eM7k6mFpt7Tr9v?=
 =?us-ascii?Q?bYTmFf3vQG6/3DalRjslZU9L9Z3O7bia3d1VrxDNQ9m0cG9ou1r9yDpQvK6A?=
 =?us-ascii?Q?VhVrjs8Bxe8YGTCG2vFW8Hj2G1QRJOIygwhyDDCzNV35G/bbh5/bdScoeVy4?=
 =?us-ascii?Q?g17z00BPRr6F8ZZe+fTn5oGc3K61YU3LBbsW1+lReh6Ap1tsCSXav4CG108+?=
 =?us-ascii?Q?UsB17mdGsk0JMy4SHf/G+q4mFI+ikgA9AMCvLI1GLnKvTWOfE/fw4BpCjeWy?=
 =?us-ascii?Q?ngK49E358Kmdl96vYlaQKyqFVPPxp2780EGTo0NEfph4F09Bu59IKJ/W9kOw?=
 =?us-ascii?Q?RIaMe6X9Yfw35LhKWt9LEmzsnfiqEy6L2CDPfZmWk1brAOwXHqYE1oAFgAui?=
 =?us-ascii?Q?1nYkP+eYSxbLddAzkZIWSbcdILBUdNQLlte4yb2ZsGiQg3Joao43Wdo7cYw0?=
 =?us-ascii?Q?E2BglnOS6GwzGOauGaMwIkCeSKQ0JrLkHinDE7Na0qFOAWolq1lo/+O2rSBx?=
 =?us-ascii?Q?S8wj53Yk007f2W34RspXrMA89GIQMq8jEOj3nqjya0BlTmPzCotlDF70aMAR?=
 =?us-ascii?Q?ZTUBXC+SehMb1xMP3Z2AnVxahKdJAfS4O9wFvPCglLlRABUQIJl1DFJ8BoVn?=
 =?us-ascii?Q?lgbfO9L+dqAkPvd5zT08G21owp0A1wc5uTHWR9uJ/c4ldvllE9ETBMu9WxZy?=
 =?us-ascii?Q?qJCExT3s2M8GIGNFzs6hcjXvc1vqVIujJG5mp7woPp6g+pNFSQM/BZYyagJ6?=
 =?us-ascii?Q?54RIvfupeuq8n0tDo3KrJoK3oEqpZmpVqyTVOKcv16Cvg8GYjidiWYcLCPn8?=
 =?us-ascii?Q?+kHtsN6bhOEx38Cr/24yNq6SxxeNekLcmG/Km+/6U0Q76aN8ugLl4axvPsPf?=
 =?us-ascii?Q?onIQslovvi0ly1WDOndrCYtuVcSRktChrSZk4hpLoKmpSlFuTVRKNH3ioPS9?=
 =?us-ascii?Q?nQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59128f19-db4a-429a-9124-08da69ad6790
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 17:37:51.2570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RHiRSkS+OH5TKVYbmBOx48ptZrUBmNti3xlpSERZWVvM8KyvTVEO1vBnK/GR/KkxoCJWNt5MmFBl4VQZrfh9+4vSwi0Ge0X+C9j8FzCDuaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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



> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, July 18, 2022 8:32 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> intel_phy_is_combo()
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Anusha Srivatsa
> > Sent: Tuesday, July 19, 2022 12:42 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> > intel_phy_is_combo()
> >
> > No functional change. Cleanup the intel_phy_is_combo to accomodate for
> > cases where combo phy is not available.
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
> >  1 file changed, 1 insertion(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index a0f84cbe974f..b69208cf9a5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2082,20 +2082,13 @@ bool intel_phy_is_combo(struct
> > drm_i915_private *dev_priv, enum phy phy)  {
> >  	if (phy =3D=3D PHY_NONE)
> >  		return false;
> > -	else if (IS_DG2(dev_priv))
> > -		/*
> > -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > -		 * SNPS PHYs with completely different programming,
> > -		 * hence we always return false here.
> > -		 */
> > -		return false;
> I feel it would be good to retain this. This is very well commented. In f=
uture
> upon adding something like DISPLAY_VER(dev_priv) >=3D 11, like the one do=
ne
> below can create confusion.

What if I retain the comments with the code change?

Anusha=20
>=20
> >  	else if (IS_ALDERLAKE_S(dev_priv))
> >  		return phy <=3D PHY_E;
> >  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> >  		return phy <=3D PHY_D;
> >  	else if (IS_JSL_EHL(dev_priv))
> >  		return phy <=3D PHY_C;
> > -	else if (DISPLAY_VER(dev_priv) >=3D 11)
> > +	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11,
> > 12))
> >  		return phy <=3D PHY_B;
> >  	else
> >  		return false;
> > --
> > 2.25.1
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
