Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A10C2CD449
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 12:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606A86E0C9;
	Thu,  3 Dec 2020 11:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9B86E0C9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 11:07:45 +0000 (UTC)
IronPort-SDR: /8S7N+Nl2eQDnvWVpEEUC9LAp+KSgjmu3hSaUgceA5ax495K4aQU1vS9zuHyFJNgsH9SSZB6kr
 V0OKfgAB1WLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="169669962"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="169669962"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 03:07:45 -0800
IronPort-SDR: M0zlxy2EqB0jBrGMC3MO3ITka6dpvat14N+nyThdeuND/3Ul00cG/P302zheyIBiu4cwMOM1e1
 wZGDP2JDmlmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="361755903"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 03 Dec 2020 03:07:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Dec 2020 03:07:44 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Dec 2020 03:07:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 3 Dec 2020 03:07:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 3 Dec 2020 03:07:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vbza//dHFonj9XJUyPO5IzW5XCkmuV2MhYNj4t1C6b4+qC1H/ua4i0EdbgHoilJ6pTEsn1WcAe/D/fRNvnWgXBoLHa3QNkOpPYU4V7PNaxAk43Mu4NZ60PghtzoAURdOlRgbfwBhhMJlD6C1PYDTIXDZ8YM5Xn5Ogq2nP1ktBnKB3aFduoZ/heu7ScLj0OTMl4OZurWhWvN/B0TVOnLxcfNzfJr+YxiWkNYG2eyC3UObc+Kf9UIVljNaJ73q+rqL3Q/5we/uXKnrGnRXjKNHP8lSVZl7rxq8uh2e7m9/S5bpExRpgCQog4wIjT/6e0TEp4HPOwczCScvSM/I9wOvSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/a+EQexuBRIKFT0GtuQi4PrMUC0P8hsEMJFYBLh1+U=;
 b=eYJ8ddRD+G75pdrK0HKXE0jMiZo2DGxs2VNEbvsxQrMyQUi9D9UsOyJyFvDm666r27PvqLTHtpAHNSHkQLEOARfW5ngYAM2eIGsnTrDoIA7/PRPM0NAI5+k6xtvo9HckrQYEZ/j9j5D1BhYBRGBZ1uI/2fRTJCipAg7wDy7rDfyzur9fTEKcyQlM8hcyqayzLB5JyItTXDmrRt2qjiSNaHs+HdBqMhxWl10o98Kj8eMpB9qU37sl8CI9QxEtHtatNa2dt/3xcgIDPW388UHbjphJ+48+1j3fcIOSBK5Bj+kBCBsW1ZiDiJGQkSRiSgz8qqtaIGR/6bE6pOLCSMsTRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/a+EQexuBRIKFT0GtuQi4PrMUC0P8hsEMJFYBLh1+U=;
 b=riP8/VPF3ZTvMqMbbNjShYoKnxzFDWVX8BMW56U/AfTyOBucOQJK6kqTbSC0hdOBT8L51IV1Ug3wkL1pxH+loLbJKNNSva0wKpdpAR5ioQnIUI7wYP389cUIAAGhpqoqLBl03d0ANvTXeNwZsEr6bkzm12vN91za95nEYvxBOvA=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3151.namprd11.prod.outlook.com (2603:10b6:805:d2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Thu, 3 Dec
 2020 11:07:40 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff%6]) with mapi id 15.20.3611.025; Thu, 3 Dec 2020
 11:07:40 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Pandey, Hariom"
 <hariom.pandey@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Kattamanchi, JaswanthX"
 <jaswanthx.kattamanchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
Thread-Index: AQHWxxhY7kXRSdZumE6Pi/Mqo5s7Hqngo56AgAAcjYCAAAT1gIAEAXoAgAB0HYA=
Date: Thu, 3 Dec 2020 11:07:40 +0000
Message-ID: <SN6PR11MB342113B3B07EFA7D7E6656AADFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
 <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
 <160674847963.9850.14014681039747149826@build.alporthouse.com>
 <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [43.250.165.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cca9f1f-5043-4e44-cb24-08d8977ba6bf
x-ms-traffictypediagnostic: SN6PR11MB3151:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3151B767D2B3BD4E4EC693F0DFF20@SN6PR11MB3151.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCBztiCr+lUJ71E1AHIXmTKQjvbR/Er9haJhwSnKsmXqiGmOfzn8MR7MCZp4mQqxowA+CjZUazUWXy+Lx+/ZeqreNvN/iKG6Ik+5sddgRbxTfrJ+RHPgKX+pXJkTxd11ZdiomerA554T0z/kojC8SUmD8gL9gdom6+zw9PzQ5UIv7hvYFCoCNJU6qyuwH6+UIrRVU3oG+53ikTnT+fhkDF80xqvHxjjm9CZ+Ocmep6BPGgA6eGNKm1AxCnIPZO9jBRJakZTQzaDH1kMYYt7XL3B6A50HRvnApf8x4AYGGGSd5TNgmhEVKnAS1mZCwKQXSUtys4SG+oYaYtGin7besw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(52536014)(64756008)(186003)(7696005)(4326008)(66556008)(53546011)(66946007)(66476007)(6506007)(478600001)(76116006)(2906002)(107886003)(6636002)(55016002)(9686003)(83380400001)(86362001)(66446008)(110136005)(71200400001)(26005)(8676002)(2940100002)(33656002)(8936002)(5660300002)(4001150100001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Q2NNWXFVS0tTYTRqYk1nTzFad2lOb0J3ZmZWNHA0V1VaM3R1bGlUYkxlRERD?=
 =?utf-8?B?TDlxSExJajU0UUpJcTRRYlVHWnM0bGlESHhMSWJkK0tJRlhZTmlQdllQS09Z?=
 =?utf-8?B?K0ltS2NmN2c2Q1dRaGVPRmZoRlVFSXdUNHFXOGpmNnBJcTJ5cStod0JaZXZu?=
 =?utf-8?B?THQzcTc1SWhKN0NsYUUxNlF1VjZxQStheEhzVjZxUjBkSTA2cHlrbUIwNDU2?=
 =?utf-8?B?WjNiMCt4T0QwTkNmcUdrZHp4dVpxSEkxSkhXUXlLUE10UFlxRXc1ZjVSclor?=
 =?utf-8?B?cTZqVUJad01ZZWFyUkczVmZrMTJzY2pIMlBRM1liekE0UHVFRXhTcE02aUFT?=
 =?utf-8?B?cHIyUkh2M1dFbHFpbHdaMzNHMDg3VVhNcWdJWUVyTjRvb0d4ZHdQWkRVUW01?=
 =?utf-8?B?K0NQZDJBT0FPbnRRQWNYR3BJT20xS3UzYmJ3eTdXN3dKdThacVJBaGNwcGdp?=
 =?utf-8?B?NzhJZytNOWdwMDZqdXZ1c2NISXBpUWowSm5aSHhVeStuMzV5UjVRcnBTV0h3?=
 =?utf-8?B?R0FMa2hIOFY0MFdCTUplVG5VUnpWL1JtNEwwbE1qaWpZb0RlSnNiaUc4TXEv?=
 =?utf-8?B?UUlHWmlQVWRtWW9GRmhYdlZWbllTZmx1WWFORlBURjgxdGZPMllWSGpBMGsx?=
 =?utf-8?B?MTdBN2VBNXFJVjdtK1ZKeW5JZHF0WndReGp5NXFqa3F0QXkrc2IzQ2orc1lo?=
 =?utf-8?B?bWFKZlFQZ0FQRzNydFpyODZxaTFtUzRhR09VakplZjI1aHZBc08wRnl3Zmdi?=
 =?utf-8?B?aHlCY1M0Vm0wZWc5OEdOTTlhek9WZ2N0UlNqZktMZG5Fd2VzT29DQ2hjbVNj?=
 =?utf-8?B?Q1lKN3JqcjlUN00yc1JNSHp3dVdnd0hLeTBrSHVVT0lpcGE3dzVLb1l6UGJX?=
 =?utf-8?B?c1dyS1FtNzBFYW03MUkrZXE2SEZIeU42N28wc3FmdlRuZjMrUW1kR0tIdXdU?=
 =?utf-8?B?YVBieTZwUWJDV045akxteDFkMTZSbUQ0OVpsWVRMVHgxeW45Yk5jd1d3bDlN?=
 =?utf-8?B?ZUd3Yjc5anRtN0QrcXJLakVlVWw5dmxDcE51a3lQNkhOblRsTStKUE0wN0Ix?=
 =?utf-8?B?THNHa2srUXJUanBldWM3YkdNWXkzM1A3NEJ3Rlg2cmdSUkRORTVObFNSQ25K?=
 =?utf-8?B?NjV4VnJrZ0V4Zy8zckMxSm11WHVZSHVGVlIxcUJWVkRCOERuZnNwei9TK1cw?=
 =?utf-8?B?bmpwemJRaFlPTlZkSklXRE55NndZd3RiUzlWQm02QnN2QkhZL0lteGNrb2NL?=
 =?utf-8?B?WkQrbjF3SzB1VnlER0poMFV0NWFlc2NNZ2crcUFrcTkvUXU2R3JDeGpmZjNZ?=
 =?utf-8?Q?eOEWRYzeauWnk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cca9f1f-5043-4e44-cb24-08d8977ba6bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2020 11:07:40.5744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h9DNsP0mMq/W1hJgViInw1NKzOAMbgU87ucEdbUm1PxeJSff0tavIzv/JMn43GoOzVLPonn9TlKNb9jlE79YSf8hqXta9ddGbOImVr18pwkxqfC47YSgbfatrIEBdY7GJioPc6S+dUoWNgokBaPQ6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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
Cc: "Naramasetti, LaxminarayanaX" <laxminarayanax.naramasetti@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Jaswant

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 03 December 2020 09:44
> To: Chris Wilson <chris@chris-wilson.co.uk>; Pandey, Hariom
> <hariom.pandey@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
> protection
> 
> Hi Jaswant,
> 
> Can you please re-run resume run on CI as well as local setup and share
> results here? If it passes in full resume run in either of setup we are good go
> with.
> 
> Thanks,
> Tejas
> 
> > -----Original Message-----
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > Sent: 30 November 2020 20:31
> > To: Pandey, Hariom <hariom.pandey@intel.com>; Surendrakumar
> Upadhyay,
> > TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove
> > require_force_probe protection
> >
> > Quoting Surendrakumar Upadhyay, TejaskumarX (2020-11-30 14:45:14)
> > > Hi Chris,
> > >
> > > The failing test was not part of BAT run, it ran in CI resume run
> > > and failed
> > there, however on manual run the same test got passed. Please find
> > attached results.
> >
> > One pass versus a major failure is not satisfactory.
> >
> > We can not say we are happy with the hardware/driver until it is
> > reliable, and forcewake is of fundamental importance for mmio access,
> > as well as execution.
> > -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
