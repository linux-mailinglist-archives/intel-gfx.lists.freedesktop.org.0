Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E5F32D981
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 19:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2284289ADC;
	Thu,  4 Mar 2021 18:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE8B489ADC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 18:37:33 +0000 (UTC)
IronPort-SDR: SvRv8RYCKEI9wgexVfiL/cE0T3M81AGoob+kaoMWSZog5SlD/2ryL1SWVGR67NXsEbV4WNLlfp
 HfBnV9gUDekA==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="248872956"
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; d="scan'208";a="248872956"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 10:37:32 -0800
IronPort-SDR: EjBQlHdl6oy5Ho9hUDWrix3PAwgskxPNfGKCP4yezunSXfM41OiXMCAXkzYJEQqpDoHEHbmeIb
 k3VN8E9XAJlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; d="scan'208";a="406956348"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 04 Mar 2021 10:37:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Mar 2021 10:37:31 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Mar 2021 10:37:30 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 4 Mar 2021 10:37:30 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.52) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 4 Mar 2021 10:37:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gKw/CxGjFeGavd9yA90JnraQ9l/5NIcHILo/pHNkQBhlPoWg6hBGGcUsLDaoutsCEgbFCsFScOyB+slvva8SCS9nLQud4vllmCRUx+J8UY2qRQx1PuEo6msaGB60bI0dYAUxjR5k2cCbU34GLyQcreHsfuQlpHnkgcKRk47SZIYRkHjv4omcbBDrUYMIz65ahG7b+VtgMt14tkRqUsqXSNf7iKjzjokXZcVoyop7UcaM7/IAjKBO3c/K0L50JfIMQgAamLWZaswTNRW8Db/aM90rrQeCXPGpatVNVRIT4in6KmRjPVMudz4tb1f1n2sd9CTSlbJgOjw3yFE1v3ByRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwW2fGKBXoxjKEW7VmrlrDs+zFKg2wp1Q0kIhOJ0zPQ=;
 b=lfU9RNw1VZCEw/2+jmWh1XYZNv+SbJrx7LNjHJgRjbc59hCK9Xo4oM7OG5TTj3w4nZLdlU08JW7FY4jEFedjXTi1LZE1DRIs8UT/QnJCwkhQ7kVqaxXNv6lpKc2yTYzfcIVfkMKC1CTQMbEhSWBqjKnhG306Uc+rXpdbZ4X8dfIP4yV5srvYTsGsJfWLyiiM56UChrxHDBfmVw3Ai5ilcqB/KijZxVtSaYUfcH5etcl3cS1tMP+797yqdk0Zp/aRU9kMEheErH9QNrsSL+At0Std08AeDjt9NJtxkFqcbWxPY34PGziSTIYrkIUZ5Yw+sSnuKOQst3LXfK/LlMSNOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwW2fGKBXoxjKEW7VmrlrDs+zFKg2wp1Q0kIhOJ0zPQ=;
 b=GbiajtuA0qMaifwlaO24GhGjNUZdrab01drffjOW7SzkMKr5Xtjid24KYQI9XXZNxSQs/kpL8wtFDK2ucAaonDLSjfzOaou8GmpxUFolD2CkBhlOqYt54RH3Wv2GDIQduaw5TcpoLApOryk7PTf6TNVCSYnv/pRPeOvnFXJe9PY=
Received: from CO1PR11MB4963.namprd11.prod.outlook.com (2603:10b6:303:91::14)
 by MWHPR1101MB2222.namprd11.prod.outlook.com (2603:10b6:301:57::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Thu, 4 Mar
 2021 18:37:29 +0000
Received: from CO1PR11MB4963.namprd11.prod.outlook.com
 ([fe80::e42a:8558:7bf0:538e]) by CO1PR11MB4963.namprd11.prod.outlook.com
 ([fe80::e42a:8558:7bf0:538e%4]) with mapi id 15.20.3890.028; Thu, 4 Mar 2021
 18:37:28 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTU6IEVuYWJsZSBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lm?=
 =?utf-8?Q?icMmioReads_for_Gen9_(rev2)?=
Thread-Index: AQHW/rL5zxIE6nhgbUmjXrKnBjmpq6pPshUggAx+vwCAGBWqoA==
Date: Thu, 4 Mar 2021 18:37:28 +0000
Message-ID: <CO1PR11MB49632EFDFAE874AE116ACC489D979@CO1PR11MB4963.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <161285475934.28238.17153316113364596984@emeril.freedesktop.org>
 <SA2PR11MB496989392E7289731DC748AF9D8E9@SA2PR11MB4969.namprd11.prod.outlook.com>
 <bd172f7b-7adb-5841-e983-039f42dacf3e@linux.intel.com>
In-Reply-To: <bd172f7b-7adb-5841-e983-039f42dacf3e@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01d0bebc-d1f8-445b-5a96-08d8df3c908c
x-ms-traffictypediagnostic: MWHPR1101MB2222:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2222275F8AE768DC8B03834A9D979@MWHPR1101MB2222.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XGsR/5XEcpZE4XoaBYfs5IlrW9tmHSdD7ZfPVjtf1frgiNlXcwm3SnSI23n2tipjA0CXyjg7iSZvACEPVixboa9aFlsszgvJfcD6xW/HGAq/3dbhR1CPFpURatshpH9X8NgX4zh9yMsYzIUOKg+pkqkoYozc/NKJI803FrneVsvyxheCZGM/DDeV5JmljjC3zDa0VZs0LWmigdNlxU7YL0Uo2GfHKJTdbdNs61jjuy+Q2weSMzqBh3Dv5A1OAD/8bx3rkEwZ8jKEYEvWZj1UEOAl1QSeMl7jmZV7WDec1Udt3ApLC4s4chMTtkLnYt7qj35xRkbzlD/os6CVjo1eIRe3H1fErTjOt2IOhjbSKGmdFJEllWdx9iqZFHUpwDi/tZWt4/ZI/gfErWFU5wqEl2ZDMv3KZTokbC4hVgQOBOsa1RyWaWKU/BIUsnq/wizFUADb4iMcrjtEucofNO4w/X18ECIZ56qbvbAlGFdeHKI8Y0U8S+dCpdlTVLZhNTZtZ5RE2Fm6p1WgsCUo4KXoli4GUDLINYC7+d56MDwO3+44DlKNtixvAbYdhbwpRTBNCU5Wm5EtnIgC6DWzAZpIt4coCxOm3sWXyz/cBI9ZHdy9+fzPcYuTqzoconASnThf223M+wZIHUn70sjBEuKsmA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4963.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(346002)(396003)(366004)(39860400002)(376002)(136003)(966005)(7696005)(186003)(76116006)(26005)(55016002)(2906002)(86362001)(6506007)(9686003)(4326008)(66556008)(66476007)(5660300002)(8936002)(33656002)(52536014)(83380400001)(71200400001)(64756008)(66446008)(316002)(478600001)(66946007)(110136005)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Y05reDhueTM3Q2I5eHI5bUNrbFpySm9GSnpNdUlOakorRzh0bHRiWXNuUktz?=
 =?utf-8?B?NDR1SnFVdWlseXdpdnV2RmQ2cENTUlVhM1RHZkNsTVVBUlN4UGg2S2NYeEN5?=
 =?utf-8?B?SE1ISXhiOGhFdHljTVZUUERjSGhNNmZQNjJPODVTdWZvQU1zOTVEaDJkQTlO?=
 =?utf-8?B?b2RPay9rUFJMYTRub3dKZ3ZvZXFhN2U5eDVtSVRiOE9raE9CcHV2dTJheWxz?=
 =?utf-8?B?azM4NUpaNG9VOGgya3JGcmtHUUgyT3JLYVdTdGM5aTBqVEhldGpodUJIYldO?=
 =?utf-8?B?WmxIWi9ISEQ2cGJ5YzlYRVdaR0J4MWYyNlZwVDFtZjlPb3FNUit4L1RqRFc3?=
 =?utf-8?B?dFo2cTVtc1l0d1NCeENSckJqZDc3WS9RbnlEL1lZNjFndk9vc0pBRzFwODNj?=
 =?utf-8?B?RFVQeVp1ODdDS2pMWHhxc0gveXFqWDB2NzRuUXhCYW9XN0NjVldDN1N5dVpu?=
 =?utf-8?B?TkZ0eEM2UTUraUF1Q211R1FMZHY5NkhPZzVVeHZZckczS2d4V3JvV0ZJenJC?=
 =?utf-8?B?RDZ3YWRvT3pqaUo3QnVzMmpRSTdBQ0lDaVQvTUhWSGpaejNSMmpsd09ic0xD?=
 =?utf-8?B?SGN5TVRZUmI5azRHckJocWMwWjFDRm9GREY5Ti9YaUtBdm5CamJqeGMyK3da?=
 =?utf-8?B?NTRUdnNQZ2Nib2dsMk9hYXdvTVRjOUtSTGxFaERGOGhVUUh4OEJsd3BJNDMr?=
 =?utf-8?B?cDJLRXM3d0ZpY05jZmxRZXluVlgrVGoyZlN0blFKcEFKSG9NYlhkTFgxaGNs?=
 =?utf-8?B?c2s5RklvVGJ1SEdmb1ZaaHlsVnVCQWFIN01YZGJvdURETlBwb1BEaFJXU2tJ?=
 =?utf-8?B?RWpOZkExc1V5T1UvQlpWaU9zNDFkSWdyMFVaZEZ4WWd0UmZiUVZxMTNNSlFZ?=
 =?utf-8?B?VjVsbHR0V2l5M3kwcXlIb2FORFVJV3BVSHZKMi9wRTNHbVMyanBsQzBQckZ5?=
 =?utf-8?B?ZnN2OEZGR0R6ZVpVWWIwQnVsa1RBc1E5MC9GVHVEMy96bGJ6aVJPUnJNbDN0?=
 =?utf-8?B?L1Zkc3RYTFVvZUhoZXBLb0F3bmlzcWJQYUlhdFJCbjBPQmZqNU9NUTJpdTc5?=
 =?utf-8?B?WU9MWHpjUzFhdzllMlB1Uk9xZXVZeVp0MXI5YngzNFN3a25nVGVMbjNwNGUv?=
 =?utf-8?B?ZnMwRzlxK0lBUHFORlJ4U1g1UXJQVGhpb0p3ak1kdEl6T3B2ak4xZHh3MnpZ?=
 =?utf-8?B?SFZKbVZld09QQlovRmh3ejQ4UzNTU1lCRUFKWURMbFRWZzY2OXVRVVNSOW5x?=
 =?utf-8?B?cUJ1SlpSdEhTOEIzV3BESHUrdEovbEQ3ZDNJVmZmOVdRQXVjazk5VTBzOHkr?=
 =?utf-8?B?RldrNHk5N3p4TGtWOWc4blRrdzV6N2c0Tmo2cEhGV0JqVGhRakpQellDNEg2?=
 =?utf-8?B?YWlCcWpBUzR5Wi9EaW5DQ3g2MVhsSVlLZkF5bjJ6bzVmQlBOUnlBR0UyelJl?=
 =?utf-8?B?bHVoZW9ycEFMbDhaTnF1NmhtUEdSd3cwQUdWQU82ZDkwMnN6Mzkzc0V0NUVw?=
 =?utf-8?B?ZkJkZHpoa2s3dll5Ui9xaTRCcXF2eE9VZ2pxMlRGZjcwTlVvWTAwWFBkSVBR?=
 =?utf-8?B?azUyZnIrYkF2TG5RNTN5azJZV0YvUFlhYSt0bDJZaXRnbnk0bDNEb2ZFQ3hL?=
 =?utf-8?B?UmZtRVQrSHFEVEVXeVM2aFVoMjdxNmlBdTczdXlnb3kvY1lVazNFaGIzcnFF?=
 =?utf-8?B?eHZpaXp0OTZzNXF1U1BmNkFIK1pjNGRHL1ZrZGxkQVZVV3dOQzRyamZOYzh1?=
 =?utf-8?Q?twrbHGFX/92GdRu/AB7mCOlQPY6Qy3oWkD3IoXO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4963.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d0bebc-d1f8-445b-5a96-08d8df3c908c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 18:37:28.7546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /V+9SnjOut5nVUdGm74mVPrCSMBhfK9nwcZP0yVgl306+zB/hCs7Ccp+I2axNfa7xyCfwO6MP6h1RxrSVwMHXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_WaProgramMgsrForCorrectSliceSpecificMmioReads_f?=
 =?utf-8?q?or_Gen9_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> <3> [198.221812] [drm:wa_verify [i915]] *ERROR* engine workaround lost
> on application! (reg[b004]=0x0, relevant bits were 0x0 vs expected 0x80) <3>
> [198.222751] [drm:wa_verify [i915]] *ERROR* engine workaround lost on
> application! (reg[b118]=0x0, relevant bits were 0x0 vs expected 0x200000)
> <3> [198.223076] [drm:wa_verify [i915]] *ERROR* engine workaround lost
> on application! (reg[b11c]=0x0, relevant bits were 0x0 vs expected 0x4)
> 
> ?
> 
> CI does not think they are old warnings and registers are the MCR affected
> range. So more digging would be needed to be sure. You are saying those
> happen in our CI without the patch?

Hi Tvrtko,
This patch only programmed 0xfdc register in reg[fdc]=0x12000000, no touch 
reg[b004]=0x0 & reg[b118]=0x0 & reg[b11c]=0x0, so I don't think this error 
is caused by this change.
This error might be due to wa_write_masked_or() 

Meanwhile, as you can see this 2 kbl devices has different CI result.
1. fi-kbl-7500u - no any error log - 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19752/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html

2. fi-kbl-7567u- has register read/write error log: 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19752/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0.html

Cooper
> 
> Then with regards to the reported perf drop - something to check would be if
> the CML system you tested on has the same slice/subslice config as the one
> from which the original report originated. Might be hard if the test farm has
> been re-configured. But essentially running the benchmark on a few Gen9
> machine with fused ss would be needed I think.
> 
> And finally I couldn't find the WA entry in bspec, but maybe I just don't know
> where to look. Someone better versed to finding WA. Maybe Matt you would
> have time for a quick check if
> WaProgramMgsrForCorrectSliceSpecificMmioReads is documented as
> applicable to Gen9?
> 
> Regards,
> 
> Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
