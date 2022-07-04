Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5C2565B3F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEE610E33E;
	Mon,  4 Jul 2022 16:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B9710E00A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 05:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656913035; x=1688449035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w4R1i8HdrF7J0JyjbPXQGaZJ+cz3EaAwyE/TVEIJP1k=;
 b=E6Tq6ggoX6YqcgXYd7yRaNQnpNlR5QS0MC5C3ZMnRxs49wlcakE5ybiC
 OL0TOndB5gbvtInaK7SIxEYQoQf6PqaNgbH/RekryZsSUIXcE48c+Zq4o
 PTOWi3ywJRIwQwJUKEKlKdaNW5ft163fxFAjeERS+Jb1FOwLUC+754oQ0
 i3OPjlubEVcu2U60MBTTnjr7csQITZD6MrSi3k58h+zCDaHQ+Dglf4AWr
 BMCupYYJtJQG1Yvatu7UV68fWYvHaBSd6j9SuinJcKeUROWlTasC/q+OT
 BQbhUF8jUow3kkqClJw5yQt4YS5xPqnX9mc7M7yka3fdu210Pq2W9rvDq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="263458315"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="263458315"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2022 22:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="592355999"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 03 Jul 2022 22:37:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 3 Jul 2022 22:37:14 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 3 Jul 2022 22:37:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 3 Jul 2022 22:37:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 3 Jul 2022 22:37:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GCBLymL/uNibmJJHFsatd0UVEPpyfAKoQbCtGOqz0Q9plPvpDObPHTHd7/sVNU9DkJ9Dav2hqPA2fZUP6xV3e5gUPnJoGRWtjaBRTvf87JqB6ZPHxVsVPQbdJaqhSPIcSaaifNLy8S2HtEBoZ5/+qWJmC+DUZQqx1faOM7xKUo7YhTzfBmIqI4+9usd+eBCQQOYptlHQ/BlVE+fGs4Qp+mmHQWWOEGDuPzxRDe7UruK79pdY2wdXYjr/65RLVXTpxoP3zbVIfD2Y0NMotS3Ld3GLLhUgHFXV83kAcEpQflWdFnNSOhSUpZ6eYWu1aBu67Bf04+OseqAH/tZkhwQ71Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w4R1i8HdrF7J0JyjbPXQGaZJ+cz3EaAwyE/TVEIJP1k=;
 b=FHO6Llafrv5Iheo0RjSOX8OyuHEQydthPnGG+xOo4dy0uBawPoSbEc4XBG1075ujXVMF0c6hy2filUD9ldI9jTWWdSAaOsc/eYbb9NV7nD5L3K3wuUJZSCNL5y8Hyz3N6pgH2WZTbYc0WtauZRAX1+W7sOl8+7uxebfFL6VJxFdvOEIvdItK3BUe4JuAfgGEb/O09vMWbagKzPWK+d1oDjopde5czebbgjbwX1TIZZjnD+X9zy1LQNhnEezOo52UFDhZELVFIzqBCL+tNEAbmM1wBVfsi9Zq9T6nZyYhHHJGx3HHg1LCK/HNjrXsqDSaSLScw7UUPbdd9evvuioH4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN2PR11MB3549.namprd11.prod.outlook.com (2603:10b6:208:e9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Mon, 4 Jul 2022 05:37:07 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 05:37:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYjTo/mFY0c8ppR0O+jhIP4LHFuq1pXRyAgARVAoCAAAJ6kA==
Date: Mon, 4 Jul 2022 05:37:06 +0000
Message-ID: <DM6PR11MB3177F52AE19DA65003E1D8FFBABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220701110309.1237002-1-arun.r.murthy@intel.com> <87sfnlm6dw.fsf@intel.com>
 <ebb45d3701bb4a78ad8b7bf1d926addc@intel.com>
In-Reply-To: <ebb45d3701bb4a78ad8b7bf1d926addc@intel.com>
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
x-ms-office365-filtering-correlation-id: 961f4102-a2dc-4761-3d41-08da5d7f3ba2
x-ms-traffictypediagnostic: MN2PR11MB3549:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 71jEd8eBFbhyewQOj7r6xttczhTZKqgotKbApJZOqvHPHjbQETLt+iocVuw4RM1OCS078kxFQqOqVrfPx1pdUQFK+keRwxrmEsbGPWLXT5VumBtU+8pvrW7KSZziMcGFNcEi4Q9fGLKqShuNjcKaP3TZ6HV99yRJojbm20KnVEgUuWI+F56BfvjFtK4Oh2ih86VR8fqmjuht4piFunrnHJ8Ecx85md2runGDnv1y+3wjtcJPUP9rHwdd1d65slMESW+Yl67txn4/vYCcyscUk24JSbdZ/wnvMiblSuNoF7szUzykCjtWigofv7YlADmnKHsdo2U9HbnTqqPuW6oGK7gypIoXmAv4Jpv8a+YzLep8brc6CsCIk0s2TUYYgCesBZdOCh5wEb0AxGpoQWIuAOpAJiBc2tp2HwgPMsrPLW4p7Xw5ptFfwaZ8oIh3G+k+eM0q3pXBGydOTyABuwRtpKS87trW2pjfz8HTsHb6/xkfeAX5VGYaevzd2CQLoLT1W75nBk27pdKpdbzWX29l967CLyP45KrufZGvuADQfjh+KXEa6U+JW2YpU8gFM+y89aWtMpwXvZwdXpoTmHYIi+4YnXQJqkidWfC3mvxhYwZOyWo3Km9bMG4D5pYNbAwMMPf9ecRETgVY5D5CgfOPRiSFP7wDCU1WyiiUS2h3QdeecgUGYrRylvFdTJnrzyMAsrYMOhP/ZpWY7KWiuRx18pXxAjF2Oyv2vC4Bmmhche6N1lZOljPDlYelGzpCTThW1nqgPySLLhobQ9gZN1CY3dOfSF36L0s8j35iVT4JqNEm4x6cWVGxtLkwdVnoMGwz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(39860400002)(136003)(396003)(366004)(5660300002)(2906002)(38100700002)(8936002)(55016003)(186003)(52536014)(38070700005)(7696005)(86362001)(316002)(122000001)(82960400001)(66946007)(66446008)(66556008)(66476007)(64756008)(8676002)(76116006)(4326008)(53546011)(6506007)(55236004)(54906003)(83380400001)(71200400001)(110136005)(33656002)(478600001)(9686003)(26005)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YggOk9Lyj9KTIARqhruOtr3Lm5FIUy3VAqNdQDeGXQTrz6UWS6VnwhMHsHJt?=
 =?us-ascii?Q?aviulo0q/VJJp85/AWk4ZrMX5EewAeJa2VYX0Eu6Qe22oeIy+tiFkak4IPVf?=
 =?us-ascii?Q?27kNwNLsUS/oKfMUMvfTO3peuucWM4jnf1brfEZut7vgH0mx3HH3OoFU22Oa?=
 =?us-ascii?Q?aunZO8bIEDX875kUDNc5+Uan0MFTxf8Q28cN5hCOp6EMjfhr2kCair2J/dTw?=
 =?us-ascii?Q?nKajHolpvb+WSMrEiMtRC2y3MPDuPqkSYC/t7yEcVk6s879lAbg9EDqAPIlr?=
 =?us-ascii?Q?Nie6c0FsMMldAzOljA3/HgqF9rffS+r6cZhv1N9ESGEErkc9fNDFIDYWqDby?=
 =?us-ascii?Q?ZuPkYRjs4mj0rLoWACqkAxSuHu+bdF2g/r5sjI9KJfEL4ZC9s6Sq3q6dhF6V?=
 =?us-ascii?Q?rmIow/u4MrTYP/+NzgeOHRJ50f2ou6r6uq8NqA4iutnFEbcveQRAXBybG69U?=
 =?us-ascii?Q?TFiVb4QpzwE/UtsMJnKPxlDcs+GEOsUmxmSCgGkHOrPOgI3TVcklgW0+Gzc9?=
 =?us-ascii?Q?4Klgalz4dMcsjuymAvhzJ972MpE9evup4pL1sAyR2pOyEH4eNKs8n0BkSaj7?=
 =?us-ascii?Q?upen48TyU/IUmD2MEIuyD6gHHXyX53plr3Ip0g2MPY3+TR4lhAOBFUib/eoP?=
 =?us-ascii?Q?w8KyuiEvpHXkxg+16wEsuo2qhwdxzgYoPJTfyFCXmgpn/2No4TtypKGDYkMK?=
 =?us-ascii?Q?269wA4X0FpFD1wzLdxyGOvQbaDnEXVBa/UVbx7KIJQ4QKZZcPcXNmboBli/Q?=
 =?us-ascii?Q?DyT3EiQcXmjslpvlka4WiuDdSLJBCpTb8jAUBuWOQOw8XGswH+TZwf/wIyHi?=
 =?us-ascii?Q?/A+JdA8e9v+3LZTi78OLRtmBIaX++KSgMEhgg5YPbI89OLOsGuiJeZkO2pQ1?=
 =?us-ascii?Q?VMz8n1LPYuRplvWeIYcXH/b4q6hQ7zORiuRIyKr3w5CZDRnaUOak/Q4lkKvI?=
 =?us-ascii?Q?5ANcFFSCJ1kqXTm6Ub/exDUFY1vLDHOclqADqUb5nnLzPFRG5AV9a4/dNw9+?=
 =?us-ascii?Q?Sj05y+HvEzmlyk8pEqdbGJ51BYSq8dkFbT/SQRIbJ3ZPnUrqPdweCQl1X0U4?=
 =?us-ascii?Q?aKykloxwpa9u+jleHPz8PdJDgYeFQL/+bGw5n1+67NPdQleJCg1AOm2k8yb7?=
 =?us-ascii?Q?1nt4wR/Co7i69O9II/ec9EAQTM0vN6iwN0BafNMx1dAu3wXExXOcuBXZEheE?=
 =?us-ascii?Q?TP4VBz3k0f3tOE7HhWoU0tDIUsrqYqq11sz8tvTMh5zhtOLtVVQJNzmbVLf2?=
 =?us-ascii?Q?WZNEXRdEqC/pG5y6MPze4Z2brLiBA8NYi26wpko4N2z9tB+QeYSu1rP8BmqO?=
 =?us-ascii?Q?DsxhthZe73gxfmPRO2vkLavxd6jNSYPBmgS/L7xpbyvYqMXv7JS8/cIkDmMd?=
 =?us-ascii?Q?iWY435g+lm2AWOHuNL3lf9SpBwA4EEE7hCLn1H5LRDD5lhClNL98ZJMdvoC6?=
 =?us-ascii?Q?To7d6uslDtRW9ioA6LWH521Q+Zl+iB1i+vCb7/YSBXlH0CsyAqtiaUPo8Jpm?=
 =?us-ascii?Q?oZCIYBnk/wAFlUrgCaumNgs+bseshfxokwHG+nsCROdS5hqV+7i3lKsj1EGp?=
 =?us-ascii?Q?CbSUZXRcPfsa189gB01T9MomQRguHvGmDxeBmm1v?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961f4102-a2dc-4761-3d41-08da5d7f3ba2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2022 05:37:06.8908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sOUb1b+zyW508xlHJF5DtwN+CGr5mRCq5Zl3aLSzd5Kp+OypdKnE0HcVk7+LgggXKXJkeVVWWo9NCTChnJunRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3549
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/dp: wait on timeout before retry
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

> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Friday, July 1, 2022 4:45 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com; Zanoni, Paulo R
> > <paulo.r.zanoni@intel.com>; tprevite@gmail.com; Shankar, Uma
> > <uma.shankar@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: Re: [PATCHv3] drm/i915/dp: wait on timeout before retry
> >
> > On Fri, 01 Jul 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > > On linktraining error/timeout before retry need to wait for 400usec
> > > as per the DP CTS spec1.2
> > >
> > > The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in
> > > Displayport AUX transactions for compliance testing") removes this
> > > delay mentioning the hardware already meets this requirement, but as
> > > per the spec the delay mentioned in the spec specifies how long to
> > > wait for the receiver response before timeout. So the delay here to
> > > wait for timeout and not a delay after timeout. The DP spec
> > > specifies a delay after timeout and hence adding this delay.
>=20
> The source side as per bspec says how much time to wait for sink response
> before calling timeout:
> Reg: DDI_AUX_CTL, BitField: 27:26
> Name: Time out timer value
> Description:
> ValueName
> 00b400us (default)
> 01b600us
> 10b800us
> 11b4000us
>=20
> So this should meet the CTS requirement. For any non-timeout error from
> sink, s/w should add explicit delay of minimum 400us before retry (which =
is
> being done)
>=20
> If 400us is not enough this needs to be checked separately or the timeout
> value in this register can be changed from default of 400us
>=20
The delay specified in the register is the time to wait for triggering the =
timeout. This is being achieved in the register mentioned above.

But what the CTS spec says is once the timeout has occurred, before retryin=
g again we need to wait for 400ms. This is the delay that this patch has ad=
ded.

Thanks and Regards,
Arun R Murthy
--------------------
