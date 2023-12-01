Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 571FE8013BD
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 20:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC1110E13F;
	Fri,  1 Dec 2023 19:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8711610E13F
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 19:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701460382; x=1732996382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=uMneItlGTBpoUHhkGLeWaspW7ntIXSJnm0TkZst91VA=;
 b=QsXTEAMFHH8TziOzg+oEF8vU09PuFFroJ6mtHXdm+hEPo7WMhMp8jQHU
 AJ1V7fEoaKxnhwa46P8FF9uiBJ787ue4SZJ3hrMR7KDtuEF3tl8oAFhVk
 DlgHMbOuwVptZdfP+C3NJ/Jhhtfm5R/mZKkszstSmlMbX15vA7RaQqPQr
 ksCRN08lCY+mxVmZ6IIQejNpcj3H3LL7agjxCzFmzo3FErOmOBHL9ZwLU
 AcfHxbMahE0PoCf9ACfOm3p1nqzPL+LHT44yIauSyZgEkx+kSVj4otczD
 8sWw3ROKTNZy8PP/jsnUyq0TczjcJp/5EVLb3mGNQ3FcLql27yYIFU/zj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="378573293"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="378573293"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 11:53:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="804173801"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="804173801"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 11:53:01 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 11:53:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 11:53:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 11:53:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 11:53:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHnls/DsJaep99bHrkM4HxW9Scpuhg4pujfuceqsHMAdq4y5OgRIP/HfEzJWrOV9JL3+X+uRz8EGndcQMpZeVjYtD5MQRUt3v+uxqzVDgBzUbXjgfQQw/19XavyqVjVmqsQXyGY3I+ebZ2tyld+sH1RcjCrEg24BqORvE09FcbjaOr+dEgEm43lkfuSI9me7iLYQ8Hp0P/wbzhr5Gg7WUuQCEQ52YVVDFUYC2RQVjgG/G/WIZ63qp3pXQuY3GPDFLd4FDbrNRZ56WTRikCjiSwHJM4UdEXvAd1adS5xEGKFPaR5o4BX0wSqePQTqHzM8nt8848FJOtIPRldygy8nwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMneItlGTBpoUHhkGLeWaspW7ntIXSJnm0TkZst91VA=;
 b=fv9nLyCOsp6TBc9GfzvbNaDyK/+tgqApaNQhHXo7CL/qT6knefEt+u8ZcqvSqY5dXP93yZuTXbd2xTz90CmLoi7sDta4hy7PZQnsf1k6SLVLj5jxHg8Rz5sHA3hvCdke5f0kqvnsrljT5krrGA6f8eXT87CXlf18UP8Ojp7bC0aVWkgVT3G80gDkRm59TTKH8LoVMyRiC4w0P6u34SDIxD7ki2JsrRCrBAy8rmd1F1RMisSXkAQcJjAKV+b6iMW0EFfuDjj8+/HclsJDCRKnXVxxXPmXJDIDo1ique/2DQ9h4AHIO5NzCjS3kOdcWl3QnvjDCc6T0XXz09+uxxX/yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by SN7PR11MB6654.namprd11.prod.outlook.com (2603:10b6:806:262::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Fri, 1 Dec
 2023 19:52:52 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::9ec5:f5c2:d277:63eb%5]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 19:52:52 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2Rpc3BsYXkvZHA6IEFk?=
 =?utf-8?B?ZCB0aGUgcmVtYWluaW5nIFNxdWFyZSBQSFkgcGF0dGVybnMgRFBDRCByZWdp?=
 =?utf-8?Q?ster_definitions_(rev2)?=
Thread-Index: AQHaJAdG6vDvyBOB+EeRUfZOxRyd5LCU198A
Date: Fri, 1 Dec 2023 19:52:52 +0000
Message-ID: <bd68dedba7ec1d375720279a2bdddf77709e1172.camel@intel.com>
References: <20231130231510.221143-1-khaled.almahallawy@intel.com>
 <170140164668.19685.15304352569942107295@emeril.freedesktop.org>
In-Reply-To: <170140164668.19685.15304352569942107295@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|SN7PR11MB6654:EE_
x-ms-office365-filtering-correlation-id: 0cede089-cde8-415a-63d6-08dbf2a71ae7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nOqgoAooXc2Owkk10unQmKgdq3XCZeHlToDglas73Tmdwuwuz3aQAoA2yqvRE4ZXQ1H/m+Uem+JExRiBvyt9pgdNTKGOS/MDpcvyuQ8BiPIFL01lIK36lgpd2YBNsZKfpFoQtOFrTrWVaWDEKPmmraHA3GIZpBfKkwOoLwbWZkkMh36ABHj5vsWPEw2s2JfRWdeMSCyj4QevpQhft608jagXooNfdGkD2i/H6fWuEYdnJrD7uqXntLxv6fXPGYPlYrl7/ET4rA93fakioF76BbDikpvMYjLfsgw9f6IcF37jy0mvx3+WJJMv0Y06Kmlpdr/oG5vkDGj6yz5Yo6Ikwj/hKjLNsCDoUPPDoI8XS6IA/5sagc56vzRBvv/Y5Oqu96DTUPgXE1jxVTdPyIYXmJhpb4eaI5okUYvPGCFJSanV9kx1E9umIAO/UVFVnnOfRk3D7gT9BQ9UmunjfazTecZ4xsTwcqHM5rGbyn16vOO6NYRinSo2C8wziZiO+khzhdijtljwGXGWzRfpHUIqBAG8B4p7aQHiiGmRwW6cFymUKNCrqr7D/eJlpZIm5HUSvATUNfoX6aNdY6U5N9zoS49a/B4ao5iMx/Md2tyjLV5YBD5wFfsbHsD/0dz5Fs6YBHm7tz4b5DroHA/kbkGTVsSLYfnMd+7EhfyP3hAoRzY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(39860400002)(136003)(230922051799003)(230273577357003)(230173577357003)(64100799003)(186009)(1800799012)(451199024)(71200400001)(6512007)(6506007)(5660300002)(36756003)(122000001)(82960400001)(4326008)(8936002)(478600001)(83380400001)(966005)(6486002)(41300700001)(66446008)(107886003)(66476007)(64756008)(66946007)(66556008)(76116006)(2616005)(6916009)(38100700002)(38070700009)(316002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmxYd2tHOTk5bS9jM3ZyMjE1YmVkdC9NY0NUanVLaWVpOWM2WjRLQ0NFTEJF?=
 =?utf-8?B?VTJHYThqYnFZM1M5V2Z1TllhK0JUWDBHaU5pcFh3UXM2V25jWnVUSGVZeDF3?=
 =?utf-8?B?WXN1V2VIQ0x4RzF3bUhrakRvUENDTm53VlJLUlU2aVNmeEJTZ3BtUERPNFRw?=
 =?utf-8?B?RmpZRGx1YVh3SDVvbFZzNUlHTXhtZFhXdjFraHEwa1BBQmx2ODRsWHZwcjkw?=
 =?utf-8?B?REd3TnpzMlVsQjl4azUxK1BvYUhzQWFkQk1SSENQOERVTXUxc1BJWVhkOHA0?=
 =?utf-8?B?OU5FQVM1Uy9LU2dXQUhNOWhuTk43RnNjYzhqZkN2RGdkb2REcnFNUE1jWXpQ?=
 =?utf-8?B?SE1PTmZrVEp2RFFadDhFSnRmR3gyQXRKekd6bUhHRnlXSzRLV0szejhYK0hs?=
 =?utf-8?B?cE12dzhYRC9mbUdHQmZ1MlFzNEFKRS9iVkFHRDBHZTVMOUxZWGlTNGh3TjB6?=
 =?utf-8?B?V25Cb05SRXBDN2thVlFPM2UyVTVmVVU3aGd2RjBIMHNIVVBPN1BYd3pmUll1?=
 =?utf-8?B?aWpxM1dZc1FuZkc2NkMxU2tYRTJmYjJsZ3dmc0liVVFRcTQxYjFsTWtiTENH?=
 =?utf-8?B?a0lMSE9rNjZDclcwNjNSNE9SNjdwZEFMV3dTUFoxenNpV0h2THJzeVVsQnQ3?=
 =?utf-8?B?SEhyYVQ2TW9lVGZ4Ukd0TFdXTlFuOXhtZVBXSzJQTCt1TTlxeGlLK00xTzN1?=
 =?utf-8?B?aFpTeDArcEtyU08yOWY2VmRna0RjM0tsS2dNQVg5V0srOURnR3J5RjJwRy9a?=
 =?utf-8?B?bjhiKzRZaUk4dWZSNlp2R29Bdm1RZEtBdG1RSkpRaHNnZHJDYm8yY2lUeHBV?=
 =?utf-8?B?QlJPSlFGbmJJWHJaaEtHNGZ0eVhtMkhYMmNIYy9Jcy9RZkxNU2JPS0tuL3hq?=
 =?utf-8?B?ZGZkKzhYR2hoOGRFUkRHand2K3prb2lueFFxQkJuSXVQTlJzaFEzMHVtLytw?=
 =?utf-8?B?YmFnTHhkbjlVWXRTeGQrZWoyemlPazdZeDNYc28xOGYrTFFqTHZWRW5NWEt5?=
 =?utf-8?B?SVBvdjZVMmcyZXB1c1I3SXE0RU5IUjFNT2lWaEJzek1BV0RCNHlRbkV0QWxI?=
 =?utf-8?B?WldNOXhEaWx5alpRR0x4dXFDOE9wb3d1TnYvSmZtemN2MTgwakNoSDZXd2V2?=
 =?utf-8?B?Y2syVzFSNFdrRXJZY2RPdm1YV1FOeVRKWHJaek9XRko2Tjl4NWNoWTVmc3lY?=
 =?utf-8?B?eUxValYxUUg2QUFlNm9hRTZWeVJNdk8xK2M0SkNlQTJmbGt2MDEzUTU5NFFu?=
 =?utf-8?B?T0ZhV0xUSkQwN0NQNENnTWRmY21iY09vSEhCVTB0bnVZQXh3eC90VzR5OHF1?=
 =?utf-8?B?anRGa2ZmY2prejRwSERUdVpDSEtMQnpERHd3bzMxaGVyUjJ5aGloMzBwRThO?=
 =?utf-8?B?ZTBNUUJiRlhxYXNDb3lXYTEyQkw5bVp0cVR0eDVBbmsvOUJQN0J0N213cTFp?=
 =?utf-8?B?UCtQeGVwTkZxMm02NEZseUE2ZlkxR3hDWGo3S3lpVUtzMkMwWU1HQk16bnlE?=
 =?utf-8?B?Tlc5VTNkKzVyVU1Pd0lzbzZoTGIxbDJFZlR6OEN4SEJqMkUyUHREQi94bVpC?=
 =?utf-8?B?VUZOM09rS1dWQzJDNWhJQ1ZSbDdIdzZ0cXlRNDhaSCs0clJIVG4zbnFLemhE?=
 =?utf-8?B?NTM2Vm9kRXpsWWRkSk5XbXFSODBkMFJBTWRKVnVOY1Fla2FMWHhyQ2ZBRUl1?=
 =?utf-8?B?OVBuKytnWG1TQWxjYnVhTTZ1ZlNlWHFaQmN4UHBjbHdjd2syL3k3dXZvZjY3?=
 =?utf-8?B?d0dudUFqL2tvNzRGb0RFSSttalY1WjJSMjI1dFJ1NGE2ay9vR1c0dnZlRU5w?=
 =?utf-8?B?RitJT2N0ODVUN2RwVVFwd3ZHaVd0R2xHNHkxSkdxc1VjRDArODBIeEdLeWpq?=
 =?utf-8?B?Tk52UVBGeVF4TjQ4SlpjZzJFZEdobW05YTY5cGU5bUw4WkhGOTc2ZzBZdWxI?=
 =?utf-8?B?ZTRqbkZHaElzdmpHblBqRXVRQy8rOEsya0hlaVdjelh6dXRsUUlHRUw5NXFF?=
 =?utf-8?B?clB1MHlwSWFsQmdNRmFkUndFVm5kdGVVQ0FtS3gzekV2WTYrNWdpUkxZRWVh?=
 =?utf-8?B?WmoyaWN1UUZEOTFQUVp1WUNxNU0vaWx0cWg1RnY3Y0RYL1NmVjFMNlB1Y0dG?=
 =?utf-8?B?V1lhOFBmd2lOTWhKNmcrY1Zsc1FDL2VVeXNEKzBOMUFhNmFqMzhxdXJjWmRl?=
 =?utf-8?B?UmkzM3BzaVc1WktxN0o3TzA0VmMzZVB1N2cra0FlK0ZUaVdyOHBvSFA2Zkt4?=
 =?utf-8?Q?41LXIjloS1q1LWTxEF2GG8Gum2TdK6ZvJ+2GoI+qww=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <530D3D45B63EF646A46C91A1CEC2A736@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cede089-cde8-415a-63d6-08dbf2a71ae7
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 19:52:52.7709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gttBOe4tX7tf5fjVKfPKijJSJwW57UZYZha3jKYpGT8YWFXsyCP4WjkCUrOj3QoC4PUSHIKDe86eXMxq7yVpmd8JrQ5jKqcNsr5Uj7c/ncA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/display/dp=3A_Add_the_remaining_Square_PHY_patterns_DPCD_regis?=
 =?utf-8?q?ter_definitions_=28rev2=29?=
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

T24gRnJpLCAyMDIzLTEyLTAxIGF0IDAzOjM0ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOglkcm0vZGlzcGxheS9kcDogQWRkIHRoZSByZW1haW5pbmcg
U3F1YXJlIFBIWSBwYXR0ZXJucw0KPiBEUENEIHJlZ2lzdGVyIGRlZmluaXRpb25zIChyZXYyKQ0K
PiBVUkw6CWh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTIzMTQ5Lw0K
PiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOgkNCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTIzMTQ5djIvaW5kZXguaHRtbA0KPiBDSSBCdWcg
TG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMzk1NiAtPiBQYXRjaHdvcmtfMTIzMTQ5djINCj4g
U3VtbWFyeQ0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcg
d2l0aCBQYXRjaHdvcmtfMTIzMTQ5djIgYWJzb2x1dGVseQ0KPiBuZWVkIHRvIGJlDQo+IHZlcmlm
aWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhh
dmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IGludHJvZHVjZWQgaW4gUGF0Y2h3
b3JrXzEyMzE0OXYyLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKA0KPiBJOTE1LWNpLWlu
ZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiB0byBkb2N1bWVudCB0
aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcw0K
PiBpbiBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyMzE0OXYyL2luZGV4Lmh0bWwNCj4gDQo+IFBh
cnRpY2lwYXRpbmcgaG9zdHMgKDM5IC0+IDM4KQ0KPiBBZGRpdGlvbmFsICgxKTogYmF0LWRnMi04
IA0KPiBNaXNzaW5nICgyKTogZmktc25iLTI1MjBtIGZpLWJzdy1uMzA1MA0KPiANCj4gUG9zc2li
bGUgbmV3IGlzc3Vlcw0KPiBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhh
dmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+IFBhdGNod29ya18xMjMxNDl2MjoNCj4gDQo+IElHVCBj
aGFuZ2VzDQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVA
ZXhlY2xpc3RzOg0KPiBiYXQtYXRzbS0xOiBQQVNTIC0+IElOQ09NUExFVEUNCg0KVGhpcyBwYXRj
aCBoYXMgbm8gZnVuY3Rpb25hbCBjaGFuZ2VzLiBJdCBpcyBqdXN0IGFkZHMgMyBkZWZzIHdpbGwg
YmUNCnVzZWQgbGF0ZXIuIFRoZSBmYWlsdXJlcy9pbmNvbXBsZXRlIGlzIG5vdCBjYXVzZWQgYnkg
dGhpcyBwYXRjaC4NCg0KQ291bGQgeW91IHBsZWFzZSByZXBvcnQ/DQoNClRoYW5rcw0Ka2hhbGVk
DQoNCj4gS25vd24gaXNzdWVzDQo+IEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNo
d29ya18xMjMxNDl2MiB0aGF0IGNvbWUgZnJvbSBrbm93bg0KPiBpc3N1ZXM6DQo+IA0KPiBJR1Qg
Y2hhbmdlcw0KPiBJc3N1ZXMgaGl0DQo+IGlndEBnZW1fbG1lbV9zd2FwcGluZ0BiYXNpYzoNCj4g
DQo+IGZpLWFwbC1ndWM6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5MjcxIC8gaTkxNSM0NjEzKSAr
MyBvdGhlciB0ZXN0cw0KPiBza2lwDQo+IGlndEBnZW1fbW1hcEBiYXNpYzoNCj4gDQo+IGJhdC1k
ZzItODogTk9UUlVOIC0+IFNLSVAgKGk5MTUjNDA4MykNCj4gaWd0QGdlbV9tbWFwX2d0dEBiYXNp
YzoNCj4gDQo+IGJhdC1kZzItODogTk9UUlVOIC0+IFNLSVAgKGk5MTUjNDA3NykgKzIgb3RoZXIg
dGVzdHMgc2tpcA0KPiBpZ3RAZ2VtX3RpbGVkX3ByZWFkX2Jhc2ljOg0KPiANCj4gYmF0LWRnMi04
OiBOT1RSVU4gLT4gU0tJUCAoaTkxNSM0MDc5KSArMSBvdGhlciB0ZXN0IHNraXANCj4gaWd0QGk5
MTVfcG1fcnBzQGJhc2ljLWFwaToNCj4gDQo+IGJhdC1kZzItODogTk9UUlVOIC0+IFNLSVAgKGk5
MTUjNjYyMSkNCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBtbWFuOg0KPiANCj4gYmF0LXJwbHMt
MTogUEFTUyAtPiBUSU1FT1VUIChpOTE1IzY3OTQgLyBpOTE1IzczOTIpDQo+IGlndEBpOTE1X3N1
c3BlbmRAYmFzaWMtczJpZGxlLXdpdGhvdXQtaTkxNToNCj4gDQo+IGJhdC1ycGxzLTE6IFBBU1Mg
LT4gV0FSTiAoaTkxNSM4NzQ3KQ0KPiBpZ3RAaTkxNV9zdXNwZW5kQGJhc2ljLXMzLXdpdGhvdXQt
aTkxNToNCj4gDQo+IGJhdC1kZzItODogTk9UUlVOIC0+IFNLSVAgKGk5MTUjNjY0NSkNCj4gaWd0
QGttc19hZGRmYl9iYXNpY0BhZGRmYjI1LXktdGlsZWQtc21hbGwtbGVnYWN5Og0KPiANCj4gYmF0
LWRnMi04OiBOT1RSVU4gLT4gU0tJUCAoaTkxNSM1MTkwKQ0KPiBpZ3RAa21zX2FkZGZiX2Jhc2lj
QGJhc2ljLXktdGlsZWQtbGVnYWN5Og0KPiANCj4gYmF0LWRnMi04OiBOT1RSVU4gLT4gU0tJUCAo
aTkxNSM0MjE1IC8gaTkxNSM1MTkwKQ0KPiBpZ3RAa21zX2FkZGZiX2Jhc2ljQGZyYW1lYnVmZmVy
LXZzLXNldC10aWxpbmc6DQo+IA0KPiBiYXQtZGcyLTg6IE5PVFJVTiAtPiBTS0lQIChpOTE1IzQy
MTIpICs2IG90aGVyIHRlc3RzIHNraXANCj4gaWd0QGttc19hZGRmYl9iYXNpY0B0aWxlLXBpdGNo
LW1pc21hdGNoOg0KPiANCj4gYmF0LWRnMi04OiBOT1RSVU4gLT4gU0tJUCAoaTkxNSM0MjEyIC8g
aTkxNSM1NjA4KQ0KPiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9y
ZS1jdXJzb3ItbGVnYWN5Og0KPiANCj4gYmF0LWRnMi04OiBOT1RSVU4gLT4gU0tJUCAoaTkxNSM0
MTAzIC8gaTkxNSM0MjEzIC8gaTkxNSM1NjA4KSArMQ0KPiBvdGhlciB0ZXN0IHNraXANCj4gaWd0
QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNAZm9yY2UtbG9hZC1kZXRlY3Q6DQo+IA0KPiBiYXQt
ZGcyLTg6IE5PVFJVTiAtPiBTS0lQIChmZG8jMTA5Mjg1KQ0KPiBpZ3RAa21zX2ZvcmNlX2Nvbm5l
Y3Rvcl9iYXNpY0BwcnVuZS1zdGFsZS1tb2RlczoNCj4gDQo+IGJhdC1kZzItODogTk9UUlVOIC0+
IFNLSVAgKGk5MTUjNTI3NCkNCj4gaWd0QGttc19oZG1pX2luamVjdEBpbmplY3QtYXVkaW86DQo+
IA0KPiBmaS1rYmwtZ3VjOiBQQVNTIC0+IEZBSUwgKElHVCMzKQ0KPiBpZ3RAa21zX3BpcGVfY3Jj
X2Jhc2ljQG5vbmJsb2NraW5nLWNyYzoNCj4gDQo+IGJhdC1kZzItMTE6IE5PVFJVTiAtPiBTS0lQ
IChpOTE1IzE4NDUgLyBpOTE1IzkxOTcpDQo+IGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVu
ZC1yZWFkLWNyYzoNCj4gDQo+IGJhdC1ycGxzLTE6IE5PVFJVTiAtPiBTS0lQIChpOTE1IzE4NDUp
DQo+IGlndEBrbXNfc2V0bW9kZUBiYXNpYy1jbG9uZS1zaW5nbGUtY3J0YzoNCj4gDQo+IGJhdC1k
ZzItODogTk9UUlVOIC0+IFNLSVAgKGk5MTUjMzU1NSAvIGk5MTUjNDA5OCkNCj4gaWd0QHByaW1l
X3ZnZW1AYmFzaWMtZmVuY2UtZmxpcDoNCj4gDQo+IGJhdC1kZzItODogTk9UUlVOIC0+IFNLSVAg
KGk5MTUjMzcwOCkNCj4gaWd0QHByaW1lX3ZnZW1AYmFzaWMtZmVuY2UtbW1hcDoNCj4gDQo+IGJh
dC1kZzItODogTk9UUlVOIC0+IFNLSVAgKGk5MTUjMzcwOCAvIGk5MTUjNDA3NykgKzEgb3RoZXIg
dGVzdCBza2lwDQo+IGlndEBwcmltZV92Z2VtQGJhc2ljLXdyaXRlOg0KPiANCj4gYmF0LWRnMi04
OiBOT1RSVU4gLT4gU0tJUCAoaTkxNSMzMjkxIC8gaTkxNSMzNzA4KSArMiBvdGhlciB0ZXN0cyBz
a2lwDQo+IFBvc3NpYmxlIGZpeGVzDQo+IGlndEBjb3JlX2hvdHVucGx1Z0B1bmJpbmQtcmViaW5k
Og0KPiANCj4gZmktYXBsLWd1YzogQUJPUlQgKGk5MTUjODIxMyAvIGk5MTUjODY2OCkgLT4gUEFT
Uw0KPiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zM0BzbWVtOg0KPiANCj4gYmF0LXJwbHMt
MTogQUJPUlQgKGk5MTUjNzk3OCkgLT4gUEFTUw0KPiB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBz
dXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbg0KPiBjb21wdXRpbmcNCj4g
dGhlIHN0YXR1cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVS
RSkuDQo+IA0KPiBCdWlsZCBjaGFuZ2VzDQo+IExpbnV4OiBDSV9EUk1fMTM5NTYgLT4gUGF0Y2h3
b3JrXzEyMzE0OXYyDQo+IENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiBDSV9EUk1fMTM5NTY6IGI1
OWEwYTY1MjA3NjRmMzZhNzliYTZiNGM1OTBlMjQzYWM2YjkxM2QgQA0KPiBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gSUdUXzc2MTI6IGI1YzQ3OTY2OTAxZWUx
MDYwYmNiOWQ0YmNjZGQzY2NlYzk2NTFlZjQgQCANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiBQYXRjaHdvcmtfMTIzMTQ5djI6IGI1OWEw
YTY1MjA3NjRmMzZhNzliYTZiNGM1OTBlMjQzYWM2YjkxM2QgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZy
ZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+IExpbnV4IGNvbW1pdHMNCj4gZDA1MmI1
NTVhZmM4IGRybS9kaXNwbGF5L2RwOiBBZGQgdGhlIHJlbWFpbmluZyBTcXVhcmUgUEhZIHBhdHRl
cm5zDQo+IERQQ0QgcmVnaXN0ZXIgZGVmaW5pdGlvbnMNCg==
