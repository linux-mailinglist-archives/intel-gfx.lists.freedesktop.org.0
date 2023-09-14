Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AE97A0EA3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 22:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD67210E0D7;
	Thu, 14 Sep 2023 20:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE25810E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694721686; x=1726257686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g5qohMyi3jb3hwSFz42pXzugO/4zPfkfABnL1zfNfFI=;
 b=iHszV5VLG/FshPqyxPg0sbj5odDT0SkEadePzfY76BZK9o9p6ljrHIaC
 LqG4jvSug0Q+97l9fHSPeNYm4SPQ7+EzFGT8vC62eD1zz7NE/FF/crGhp
 MpK4ibKe6MWH0XKfEMT8KPIsaFayMGVgfdy1ZmUZ/XgAogI1Lis25CCxt
 lUGFKnIv6vTM/2rUz90P5DqRun8eMVDVDcHikfvQcgN250UrMp1St+ZtI
 dvUB/x+fIwYoB47T9xITX2YZ4w0bQls2FwAbxHFY39+JM/Gl892zTD0sl
 0AwVx5tZAYnpTKAIuYf1LacLn6GrkBnuHBjwzx4TTzYklqGAoOiyjg3vG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="445499372"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="445499372"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 13:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918364885"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="918364885"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 13:01:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 13:01:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 13:01:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 13:01:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UN5DXm9kJH0zKokO/f3Ur+qokfINwSaGEvRDuXY4Q3MtFZIQnJmlnAiFLfzEkcuuws41AmUu2kiadwFOv5Y1RxSeCDpaDyThQzQf73Zz96GN8V4ZaLKjWwPPBeJ+XqIbDX6vcDlvETX0nVhCAHXIM06vo2YdoDRKIzuhSQXmM0JHNyOJ28qddh/bPnUiXsoeEsuRN7/k+cEHQWdz5W6B49vAMXwatv+f4vAgjQ5Nz0L37b+sOuTA7FYcwmQn4IG4hnVM2hvPnGl2H01UYrE/eTAhtWyH06R+hu54sZKWfsVVm7K4NRXlN33TnVSTjEEmecAOwFlv/tNgd5gMC0a35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g5qohMyi3jb3hwSFz42pXzugO/4zPfkfABnL1zfNfFI=;
 b=cFlMYA+1910IDYWggMFJdVzKSN2vEhz9g25PkfrVJPprszW1qYhJ7+soCyla2xPNaJaEa5ADnCuxW9Dfbmj/rgcfI7FjjEbuhQYYTr+PVcnerdtJsRO7l2XSSfbryPTnBwm7cElkqEMIYNo72JjLHf0lIV/dqDq69Wd295HM5JiJkhNSQUye3G93PLrLNZErJoZJhRF1kuD/MBW2FmoVrt8X2ArgnOwULpGwInHtMDdfAuPgA3Ws2EyYPm00bDGa6JhGEXziwT4rcNKGcgHqpAKxEdf3zU2kvV9BopeYD52mdIgByq4sDnt1fdk4EleJsUbBIEuo/HqoT87nST+H7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Thu, 14 Sep
 2023 20:01:19 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::76da:8cbb:1772:f822]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::76da:8cbb:1772:f822%6]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 20:01:19 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Thread-Topic: [PATCH v6] drm/i915: Add Wa_18022495364
Thread-Index: AQHZ50Nn86GfsG3180GLtKd6jjnN7rAauWIAgAAAkJA=
Date: Thu, 14 Sep 2023 20:01:18 +0000
Message-ID: <IA1PR11MB6266A5C24DF1900D2B2BB2E6E2F7A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20230914194032.1066442-1-dnyaneshwar.bhadane@intel.com>
 <ZQNiwPlvobxGEUEb@msatwood-mobl>
In-Reply-To: <ZQNiwPlvobxGEUEb@msatwood-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SJ0PR11MB5662:EE_
x-ms-office365-filtering-correlation-id: 5fb7c340-0d5b-43ae-daa3-08dbb55d5c71
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SeJ8Pwq76QXi1kPQrr/YIBFPf068hluhaYX2hT8QPYCLenoaq1wcZKtGQFJijvRvRfK/jgocDBIkijjG09+jFRBKX8HJzjUrbMaQybO2k/CcN1k2iIUyiDeh79zDCvUu86irZMSACKoH0mtrvCOmtAYQUCpzMFUqzRUkTO4AuLC/YF1RBAU/AM25Ej3C7GsQOWRaFGU/4gnCHR/DpxiSVZW5hiigYVCkLPlH41HE492oVz7XKMayWlkmCoQV47kMge6VtaKSdX+mD5P9FIclTCSjsstSZiNaQUbpYrgzORCslAFLCMIlosDi4CTQnUBcyvQ/eQfl15JcYeEDiIdQ54T9cU3UfTNArJWByuoWY/+81+tROuez+dQLVmNWJvA1sGQTIzx9M3YREoGeR09dpaDJznDIIP8XFjcQX6ATGVCarCFJb/5+Q6lKYo6mjekiZ6GaANzZbef1+2ddVG8ZWcHnhVNAYKCGKOBSqkj4vZTUH13Gc533LiKJJ5C3at//8P66CwFBXPkp4IsA/grdCSullIw1r0w5skIAmqCWfJ/bubUXMG/w3wiHa+HClX1W4AI3gjRd8BIAxzmWQdMGgwKbNvJ7eFa7iUTZ12aq5kw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(366004)(346002)(376002)(451199024)(1800799009)(186009)(9686003)(66476007)(7696005)(53546011)(478600001)(71200400001)(6506007)(966005)(83380400001)(55236004)(26005)(107886003)(2906002)(316002)(41300700001)(66946007)(6862004)(76116006)(54906003)(66556008)(64756008)(6636002)(66446008)(52536014)(8936002)(4326008)(5660300002)(8676002)(33656002)(86362001)(122000001)(38100700002)(82960400001)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkF6M1hGeFUrUDB2SnkyYlRKQ295eDFXTmJDMmhsSWxhaWRQbHd4M0E5R2ZJ?=
 =?utf-8?B?UENkbTZnaWk5d2R3ZlMzdnY1UGlMcW5VUHZXTXRhNytnNTkxZmJDYW9HQ29P?=
 =?utf-8?B?QUM2eE5BV28xK21sRnVPa0JJMWZqSHVjZnR0VWM2TXNNRGVNcCt5NjhFYkhi?=
 =?utf-8?B?b0I5bDlDbVlSTkI0aWRJSkdnc0RPcS9wQXArVFVxSWUwMDVTQmEvNnI3QWpK?=
 =?utf-8?B?c29ZRTJvc0RxRHVET1ZwSnZjemdDamJBTHpGaUV4QWp4VUcwQnMyNlB0UlB3?=
 =?utf-8?B?U0ZzR2IwNWFkN0FuTFkxbzV6bExiMDFIWVM2MUxVWmVLNG1SZTU3VlZOY1Ji?=
 =?utf-8?B?SWJ1d21BN3RlUmwyR1JDSUMvcFNpRVVSMUU0TnBncHZmNzRyaGdPcFdnSTVw?=
 =?utf-8?B?RXJhSytKWENWTGNQKy9nbVpiUmVOdjBCRXcrU0FpS0FoR1lOQlhYSjArOVAv?=
 =?utf-8?B?K2trK1hsUjlGRkRseDJnQ2c1b0R2MjQ2K0ovSC9iTDBHN0ZmdkxXZVNDMEFl?=
 =?utf-8?B?Tm54T0ZrYzFsYVF6em5GbzZUTE1rMEl3NjVYekRyMVRxalpvVlMwYmt2R2Rk?=
 =?utf-8?B?U0xrRWNreVdISE95U3dveElGYlZLdExyL0pPTzNGMEdwaGducmErV2NpYWxk?=
 =?utf-8?B?SUlvQlRFWlFFYk43SitNaGIvUEFoYXhCMmNWeUtXMURnUWduSmhnczRtUzhL?=
 =?utf-8?B?TVJhYjFXZG1oS1BFNnJCS3ptRGRuS1h2WFNhSkgrSklNbzVMRWs3bGZ3Q05U?=
 =?utf-8?B?a0pwY3ZwcGJtNGYrTGtoT0J5VDFvWnJrS3IxL0ZYL1pybnM5VzdWY1BpZ3h6?=
 =?utf-8?B?dXk1OG15a2pJd0ZVZjBDRWdHNmZmRkV2YkszZmROSXl1cHNDZGt4N2dndjNW?=
 =?utf-8?B?Wm5PcGdGSDBZTm9aT3psZDhXSnBpbU5aQzF3b29QeEtlZFk2OGVlUjZVdWNY?=
 =?utf-8?B?UXc0VFc5WkYra1loSnJyRkhHSjNNVkdjWTZrTXJGTHdma3h1S1RGc21wQnRE?=
 =?utf-8?B?RFhzVWJJYXRnT0FDWXNiUWMwc3A3NGxtdDAvK3ZacWpGcWFiYUIxYVpoUXlS?=
 =?utf-8?B?TmxiTzNtaGZMQUFWVGZKL04xTWRHNlVadXY3YmRXcUsrTTcvK2RVdTU5RTFO?=
 =?utf-8?B?RWdwdVRLSHRFbDVLWUlEcXBLR214MUxMMzNpRVhpK1JrbjdvQk5ZUW5xQ2ZU?=
 =?utf-8?B?dlZkQXZnOU80OGxwQjhVRjMxNVdtWGZYakoxbTlaUGt6MXFjemlxT0xwdU1W?=
 =?utf-8?B?ZE1VWHNCdGxYcmkxc01heHNZUktxazhNdEsrM2psWTR2eTZJYXVSa04wOXhT?=
 =?utf-8?B?TGFjYWpaZm5EUGtZdE5aVEp1YUpvQmxhaFNoQmdYdTQvYXViUkIvNGVkbm5j?=
 =?utf-8?B?R1J0ckxBN2tZQWVSc1RhOHVWZk9aWFp1VXM5UGs3aTBFZlZjelRHUHpzc3B5?=
 =?utf-8?B?UytLUk9HbFFTaHV1SVlvZ0Fvdkp4V3dsUDRXQTdnRnM2WEtzODkzN2ZaNmhm?=
 =?utf-8?B?Tm44dHRNRGZnNUhhdTlOSW1KL2hMSWtXRXp4dEZ1VHFwb2JpU20wUUVtOUNW?=
 =?utf-8?B?Z1ZvZk05QlBvNjNNZzFpclpZU0RnLzJpKy9DVkNiU1JiN1VGc2VuL2sxb2dG?=
 =?utf-8?B?dUlWSFlFNUNkS1lZN3BpeHBFR2VKWS81MEw3b0U3anlIczlXczBJWVVjdlEy?=
 =?utf-8?B?eS9Ha2d1bzByeUVDeVNDcHYzRUVJNGlHdHo4ZzU3SDdjN1B5N096VUpqcWNv?=
 =?utf-8?B?VXFMaVVvcjM4TlJpTGhaKzRtS3JwUGFDblpjd3cwZkR3WVRENTNJRks2OEdx?=
 =?utf-8?B?UUNHb0lCYU0rOFlOVk9NQjNxdmNkWE9EYVhSZHpDSmRDeThuR3Y0Z0w2akcr?=
 =?utf-8?B?ak9SY2RkdHp0WVVtQjhoeDZ1ai81bTl6ajNGdFRsK0x0RUZ1c0NEYVhITHNr?=
 =?utf-8?B?VXEwVVpieGg5ZVY4b2hBaUhqd2pWVmY3blNWZW9DM0xtaHRnTlpGdTFsQ1JP?=
 =?utf-8?B?MjBYRDlKbXFpMXgwSzBCdk5Uem1XU0ttdFJXUDRuL2JOZFdVT3p2Qzh2ZS9J?=
 =?utf-8?B?ZzlpYjBkQ2l0cWRkdVAvVFdUQkpXYnpJR1BIeHNQcXllUU5tME9HQVh6NlB3?=
 =?utf-8?B?VFJJbG45MHl1REVYSFllTXRwMHNvQk12RUFQYnMyUVVoNldwS25mcUVLZlZT?=
 =?utf-8?B?M2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb7c340-0d5b-43ae-daa3-08dbb55d5c71
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 20:01:19.0371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lriWjH/8RsIlGR4M4ZDmu+4cHd71U9QhOOlqJONP5uKm5tCYs0/lPnknGmgnnLgMK2ykna9QXVGXkcFgtTYKwM/H90LBpzS4SrE/cExsl2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5662
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Add Wa_18022495364
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXR3b29kLCBNYXR0aGV3
IFMgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIFNlcHRlbWJl
ciAxNSwgMjAyMyAxOjE1IEFNDQo+IFRvOiBCaGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3
YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnOyBEZSBNYXJjaGksIEx1Y2FzDQo+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+OyBHYXJn
LCBOZW1lc2EgPG5lbWVzYS5nYXJnQGludGVsLmNvbT47IFJvcGVyLA0KPiBNYXR0aGV3IEQgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhag0KPiA8c3VyYWoua2FuZHBh
bEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjZdIGRybS9pOTE1OiBBZGQgV2Ff
MTgwMjI0OTUzNjQNCj4gDQo+IE9uIEZyaSwgU2VwIDE1LCAyMDIzIGF0IDAxOjEwOjMyQU0gKzA1
MzAsIERueWFuZXNod2FyIEJoYWRhbmUgd3JvdGU6DQo+ID4gSW52YWxpZGF0ZSBpbnN0cnVjdGlv
biBhbmQgU3RhdGUgY2FjaGUgYml0IHVzaW5nIElORElSRUNUX0NUWCBvbiBldmVyeQ0KPiA+IGdw
dSBjb250ZXh0IHN3aXRjaCBmb3IgZ2VuMTIuDQo+ID4gVGhlIGdvYWwgb2YgdGhpcyB3b3JrYXJv
dW5kIGlzIHRvIGFjdHVhbGx5IHBlcmZvcm0gYW4gZXhwbGljaXQNCj4gPiBpbnZhbGlkYXRpb24g
b2YgdGhhdCBjYWNoZSAoYnkgcmUtd3JpdGluZyB0aGUgcmVnaXN0ZXIpIGR1cmluZyBldmVyeQ0K
PiA+IEdQVSBjb250ZXh0IHN3aXRjaCwgd2hpY2ggaXMgYWNjb21wbGlzaGVkIHZpYSBhICJ3b3Jr
YXJvdW5kIGJhdGNoYnVmZmVyIg0KPiA+IHRoYXQncyBhdHRhY2hlZCB0byB0aGUgY29udGV4dCB2
aWEgSU5ESVJFQ1RfQ1RYLiAoTWF0dCBSb3BwZXIpDQo+ID4gQlNwZWM6IDExMzU0DQo+ID4NCj4g
PiBQbGVhc2UgcmVmZXIgWzFdIGZvciBtb3JlIHJldmlld3MgYW5kIGNvbW1lbnQgb24gdGhlIHNh
bWUgcGF0Y2gNCj4gPg0KPiA+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
cGF0Y2gvNTU2MTU0Lw0KPiA+DQo+ID4gdjI6DQo+ID4gLSBSZW1vdmUgZXh0cmEgcGFyZW50aGVz
ZXMgZnJvbSB0aGUgY29uZGl0aW9uIChMdWNhcykNCj4gPiAtIEFsaWduIHNwYWNpbmcgYW5kIG5l
dyBsaW5lIChMdWNhcykNCj4gPg0KPiA+IHYzOg0KPiA+IC0gRml4IGNvbW1pdCBtZXNzYWdlLg0K
PiA+DQo+ID4gdjQ6DQo+ID4gLSBPbmx5IEdFTjEyIGNoYW5nZXMgYXJlIGtlcHQgIChNYXR0IFJv
cHBlcikNCj4gTm90IGNsZWFyIHRvIG1lIHdoYXQgdGhpcyBtZWFucywgDQpNYXR0IGhhcyBjb3Jy
ZWN0ZWQgbWUgYnkgc2F5aW5nIHRoYXQgdGhpcyB3b3JrYXJvdW5kIHNob3VsZCBvbmx5IGJlIGFw
cGxpZWQgdG8gR2VuMTIgcGxhdGZvcm1zLg0KSW5pdGlhbGx5LCB0aGUgcGF0Y2ggd2FzIGNvbWJp
bmVkIGZvciB0aGUgR2VuMTIgYW5kIERHKyBjb25kaXRpb25zLCB3aGljaCB3YXMgYW4gaW5jb3Jy
ZWN0IHVuZGVyc3RhbmRpbmcuDQpEbnlhbmVzaHdhcg0KDQo+ID4gYWxzbyBpdHMgTWF0dCBSb3Bl
cg0KPiA+IC0gRml4IHRoZSBjb21taXQgbWVzc2FnZSBmb3Igci1iIChNYXR0IFJvcHBlcikNCj4g
PiAtIFJlbmFtZSB0aGUgcmVnaXN0ZXIgYml0IGluIGRlZmluZQ0KPiA+DQo+ID4gdjU6DQo+ID4g
LSBNb3ZlIG91dCB0aGlzIHdvcmthcm91bmQgZnJvbSBnb2xkZW4gY29udGV4dCBpbml0IChNYXR0
IFJvcGVyKQ0KPiA+IC0gVXNlIElORElSRUNUX0NUWCB0byBzZXQgYml0IG9uIGVhY2ggR1BVIGNv
bnRleHQgc3dpdGNoIChNYXR0IFJvcGVyKQ0KPiA+DQo+ID4gdjY6DQo+ID4gLSBDaGFuZ2UgSVAg
VmVyc2lvbiBiYXNlIGNvbmRpdGlvbiBmb3IgR2VuMTIgKE1hdHQgUm9wcGVyKQ0KPiBNYXR0IFJv
cGVyDQo+ID4gLSBNYWRlIGltcGVyYXRpdmUgZm9ybSBvZiBjb21taXQgdmVyc2lvbiBtZXNzYWdl
cyAoU3VyYWopDQo+ID4gLSBzL0FkZGVkL0FkZCBpbiBwYXRjaCBoZWFkZXIgKFN1cmFqKQ0KPiA+
DQo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiA+
IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+IENjOiBTdXJh
aiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBE
bnlhbmVzaHdhciBCaGFkYW5lIDxkbnlhbmVzaHdhci5iaGFkYW5lQGludGVsLmNvbT4NCj4gPg0K
PiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmggfCAg
MiArKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgfCAxMyAr
KysrKysrKysrKysrDQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlZ3Mu
aA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVncy5oDQo+ID4gaW5k
ZXggYTAwZmY1MWM2ODFkLi4wZDUyNjBkMTI2ZDggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVncy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcmVncy5oDQo+ID4gQEAgLTE2NCw2ICsxNjQsOCBAQA0KPiA+ICAj
ZGVmaW5lIEdFTjlfQ1NGRV9DSElDS0VOMV9SQ1MJCQlfTU1JTygweDIwZDQpDQo+ID4gICNkZWZp
bmUgICBHRU45X1BSRUVNUFRfR1BHUFVfU1lOQ19TV0lUQ0hfRElTQUJMRQkoMSA8PCAyKQ0KPiA+
ICAjZGVmaW5lICAgR0VOMTFfRU5BQkxFXzMyX1BMQU5FX01PREUJCSgxIDw8IDcpDQo+ID4gKyNk
ZWZpbmUgR0VOMTJfQ1NfREVCVUdfTU9ERTIJCQlfTU1JTygweDIwZDgpDQo+ID4gKyNkZWZpbmUg
ICBJTlNUUlVDVElPTl9TVEFURV9DQUNIRV9JTlZBTElEQVRFCVJFR19CSVQoNikNCj4gPg0KPiA+
ICAjZGVmaW5lIEdFTjdfRkZfU0xJQ0VfQ1NfQ0hJQ0tFTjEJCV9NTUlPKDB4MjBlMCkNCj4gPiAg
I2RlZmluZSAgIEdFTjlfRkZTQ19QRVJDVFhfUFJFRU1QVF9DVFJMCQkoMSA8PCAxNCkNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jDQo+ID4gaW5kZXggYjk5ZWZhMzQ4YWQx
Li41NmM5MTY3MzBlOWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Yw0KPiA+IEBAIC0xMzMzLDYgKzEzMzMsMTUgQEAgZGcyX2VtaXRfZHJhd193YXRlcm1hcmtfc2V0
dGluZyh1MzIgKmNzKQ0KPiA+ICAJcmV0dXJuIGNzOw0KPiA+ICB9DQo+ID4NCj4gPiArc3RhdGlj
IHUzMiAqDQo+ID4gK2dlbjEyX2ludmFsaWRhdGVfc3RhdGVfY2FjaGUodTMyICpjcykgew0KPiA+
ICsJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsNCj4gPiArCSpjcysrID0gaTkxNV9t
bWlvX3JlZ19vZmZzZXQoR0VOMTJfQ1NfREVCVUdfTU9ERTIpOw0KPiA+ICsJKmNzKysgPQ0KPiBf
TUFTS0VEX0JJVF9FTkFCTEUoSU5TVFJVQ1RJT05fU1RBVEVfQ0FDSEVfSU5WQUxJREFURSk7DQo+
ID4gKwlyZXR1cm4gY3M7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyB1MzIgKg0KPiA+ICBn
ZW4xMl9lbWl0X2luZGlyZWN0X2N0eF9yY3MoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LCB1MzIgKmNzKQ0KPiA+IHsgQEAgLTEzNDYsNiArMTM1NSwxMCBAQCBnZW4xMl9lbWl0X2luZGly
ZWN0X2N0eF9yY3MoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY29udGV4dCAqY2UsIHUzMiAqY3Mp
DQo+ID4NCj4gPiAgCWNzID0gZ2VuMTJfZW1pdF9hdXhfdGFibGVfaW52KGNlLT5lbmdpbmUsIGNz
KTsNCj4gPg0KPiA+ICsJLyogV2FfMTgwMjI0OTUzNjQgKi8NCj4gPiArCWlmIChJU19HRlhfR1Rf
SVBfUkFOR0UoY2UtPmVuZ2luZS0+Z3QsIElQX1ZFUigxMiwgMCksIElQX1ZFUigxMiwgMTApKSkN
Cj4gPiArCQljcyA9IGdlbjEyX2ludmFsaWRhdGVfc3RhdGVfY2FjaGUoY3MpOw0KPiA+ICsNCj4g
PiAgCS8qIFdhXzE2MDE0ODkyMTExICovDQo+ID4gIAlpZiAoSVNfR0ZYX0dUX0lQX1NURVAoY2Ut
PmVuZ2luZS0+Z3QsIElQX1ZFUigxMiwgNzApLCBTVEVQX0EwLA0KPiBTVEVQX0IwKSB8fA0KPiA+
ICAJICAgIElTX0dGWF9HVF9JUF9TVEVQKGNlLT5lbmdpbmUtPmd0LCBJUF9WRVIoMTIsIDcxKSwg
U1RFUF9BMCwNCj4gPiBTVEVQX0IwKSB8fA0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+ID4NCg==
