Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E7E7CC219
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 13:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE9710E274;
	Tue, 17 Oct 2023 11:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF0110E274
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 11:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697543689; x=1729079689;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LoLPzoIUnQll8RyQcCjooNVxX4KePa+qUAYW3+AlJvA=;
 b=ER4Qk1D7IpRQ5z3bqJ9FDkEKVvyv34EO19zO8OsYxV8HuCClTKTIn1y6
 idC89RwrLMaCyk/M/q5sX42UwBBuyBr87rJmg8MJ6LgevbMBClY57MigF
 m3qTbHDLPbiBOA2sYrlWakafuiKAGC3fqABCbXL2466A19SJ9bXNaSXUH
 NgC1OVtQIzH1ni2fB82FkB0rJ4smSTC/j/8JiQ8TGNPu+nKSZhvT3rVIf
 Y9AkwgNrPav2Y0GRzH2QlwjE4CY0YQAZ2WKVgvn5IY0LzgxOH2BJ/elNe
 p6bv7bAKGHbezgq8pqYqAubV1XGbEiXor6VL9yjo/OTSXkzYdq8VUudTJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="416847324"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="416847324"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 04:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="821951196"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="821951196"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 04:54:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 04:54:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 04:54:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 04:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGrfBGMb+MS6IrxG1rwT1ebb0a7FIAGewIOU+scIS4IuFCvjKBS8bjdQ/GV6whKF0O15BDazppVV0cnSfxrX8Tde5s90mnWA2bIMKvjFSaXOQhs5ZWiPognTLdcYp9ubNlHKeoQr96EYT67CjlobrenMzwSqaMqxz6y9K8/aHhBsYkoszhhC8OrumsrstZ6buzUc0VPGwGWkV7LhFQ97UEdgHq4VvOyAzqhOW1ZfsWqEDYcSBypM08ZyzM2vbKzjP0G8VqieDJ8j+CFwWv4fRSpXEp/4Ymo/pMTKq/V0dhnW/xhJWPpLPNokxSUZkvZoI7VIujQYZfG7YBpfPGnlVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LoLPzoIUnQll8RyQcCjooNVxX4KePa+qUAYW3+AlJvA=;
 b=en3lV0CPnyvg3IyQ9HuUyXSB7rf3mnPEIq1JEH6LsKtlaj31lEGJUh+ZGGoabI6DueXim/Z+Uy1CPeQgBYA+i++onIcuiEtWLDFoQyxatRX/00w2ROBimsFSaenOGw/c77ssN5Sn7s6JwX2WlKXfEtTLfS1eYqSh4dCVFH54rcO+HsbBn7jiAGkRKfZIuEi4jPiqu32naaMf+Fb0Yqiafr9MvJWLdJW1Uc5SOQoXhsKB13iOv+gVQ1VrZloB2jTMoV2yqcPnKaGpSQaVZL7N2qYE+X+J7KBYLseVgUvPyQHlxs4SlnrJTkA/jSmK4qlWCStbsm2HWbww0vClCuUGwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by MW6PR11MB8312.namprd11.prod.outlook.com (2603:10b6:303:242::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 11:54:42 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::8593:7da:ec34:29a3]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::8593:7da:ec34:29a3%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 11:54:42 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Thread-Topic: [PATCH 06/10] drm/i915/spi: spi register with mtd
Thread-Index: AQHZ4+SWmqcIZAUsFU2z1MSft+JTq7BMUNCAgAHIK5A=
Date: Tue, 17 Oct 2023 11:54:41 +0000
Message-ID: <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
In-Reply-To: <20231016103939.67445bee@xps-13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|MW6PR11MB8312:EE_
x-ms-office365-filtering-correlation-id: b2df29e0-5feb-49ba-61c8-08dbcf07d948
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IcfdauAWo0RxwmVH9/GXxVLOk/jfircZB/D3eaPj/jbYWP1/HirBuxUQpIVEOo+H6/FuMdqr+tgrgW0xvfp5zM4OyzZEVqg+3A2Ha52lshWCZAwSj3k+u+fyXenB7xMVnATz0wOqSJq6bt9S+n3AyDh/L6a9y27mFoMXV096RyRE0riR020la82FzusHhudsZGlkddv7ouavF34yy3BRq9AyYY65s1F95G9FOOyVsSQqBE1u4YI4M8cyAaSKl7FYuDAPdGrNClqU/riHd/NqZ47o5PCNY8ENcwqoa8N1koOwXQMahBsubr1t+244lDdHmkfPD6FeBQ1qobAHvqKDWkhL+hSV5Jm6+a0IUt5++62UZ8ru0xGoeo2xHtmGdDunlz8B0EF0orxOq3ELuHx24XCvrbYX0XmaZOmmf6/XjUn/jvJjfhpbYrKLRkOEof1Qfa2dJcpLxkrW9+oDo1ihAYFc0UGZlNQ9QBPpYZj30RRnpR5TZVpMeO/YAExP9N6CfnwxVkjb4B0BxeTMi9VDKAkohd4dDHjImt1i8UfFB6OWlqFWTdcYRd6Vex7spJH/Tn+ZQmU3g1VRSnBr6EhoIpqPMG8oNxhZ9VxPzvZGoDvvcg3SZ2/jUJhOiUjS/uhx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(396003)(39860400002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(55016003)(26005)(7696005)(71200400001)(6506007)(8936002)(41300700001)(52536014)(4326008)(5660300002)(8676002)(2906002)(478600001)(76116006)(66946007)(66556008)(316002)(6916009)(54906003)(64756008)(66446008)(66476007)(38070700005)(122000001)(82960400001)(38100700002)(86362001)(9686003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rnpub3NLVkxqY0tWOVh0OFNza2MzNSt4eVRyQmUwQ0JDK2hlOVZ1TFREc2Yz?=
 =?utf-8?B?YWl1eHZWaFVkWFJjaG9hM1U0NU1MWHBMZ01CMFBSUGJpdSs1UEVkd0lLSWpN?=
 =?utf-8?B?ZU5jelN3T3l2UFIyb0xoampWYnRTU0FSMGF5a21FUFg3OWdzYnFDTklwLzZF?=
 =?utf-8?B?MTFOZjJ5ZlBqcTUvQ1lzNHkvSElrbE02ZWtyQjZ4N09tRjFHUFIyZmo1RllE?=
 =?utf-8?B?N3UyMXNWM1NkMXh0aFROazFzUkdUTFlweFJubnlrUkkwWThqOUcrbDZ6ZTYy?=
 =?utf-8?B?dk5YRWo2ZDFhakFxYzNZYnF4S1ZFZi9OM1RtdS9zd0Q4VDUwWkV1K0Z1ZG4x?=
 =?utf-8?B?aGxhTFdtM0NMUWxxU1ZZaUluYjR4RDVQTE8wd055MUp0SU5xcnJKcFd5YnJW?=
 =?utf-8?B?cis5czV3YUcvcTZOWXdxaUVKdzBVaHYxY09BRFlQYXV4bmdsWEZ0Zkx2MVkz?=
 =?utf-8?B?bXduV2hhdmNYc2VuOWhNdEtFQ3lRUTFSNGdkMkV2dlVrbjM1emRCV1hROUJN?=
 =?utf-8?B?ZHpkOHNaV2NwTy9IVFRqdEZCZmUrdHM2YStlbWhsOU4wN3RCK3ZTRzlMNFJs?=
 =?utf-8?B?c3E1VTlodkZTbHpidTU2MXZqRitSb1MzQUhoU3VQcTJZZHI5c1hSTU9VQWU0?=
 =?utf-8?B?QzBJQXk3bC84bjRpZ0Z3NWdrUS8vd013bUxCQ2ZjdnY1eER1Q1hUWUptWEcy?=
 =?utf-8?B?eXJmWWcreUxkOGxNakEvV01kNURDNWFhRzhUUzlrMW85ZnArV1ZMdis3SG9z?=
 =?utf-8?B?ODNMNkVJWkdlN3pmUytGdndkYzEzSXdIclprS0JmNW5sUDlXR3VUNG16NUc4?=
 =?utf-8?B?RTA3Mkt2OUluWHBCMWdtNEhjeFNFT0VUaGNKb0VpS1hBUHpBMzY4NVJGL2ZK?=
 =?utf-8?B?L081TStvZnNkWXhhWFlIamVmM3dNUWo0dDZsVnZGYVpVQU9vVDNycjJUcDB6?=
 =?utf-8?B?eTB6NkZhNmM5bXRFK3pnQklOWEJIWFZieFEyWGRXZUxJajBkMW8xR2JZMU8z?=
 =?utf-8?B?dDgxcU5RTTdGSFQ3T2lXcmEreEtIRGEwSFpuUHZVSDFwNkFZM1JENDFKVXVQ?=
 =?utf-8?B?YlBEZUpZcjU1OGUzTEdiMFBScGNKbFIzMHpqTnpKd2tNVFdHU2t3MXFoQkUy?=
 =?utf-8?B?TlFKeEI3NndwcC9vMitBWDltdWk4Yy9BNTU2SER2Tm9RVVBNSGdaUDQ3bTRv?=
 =?utf-8?B?ZGgzTW95cWhwaURiZ1RZUTNQOVdCaUtxZHZ4Ykt3M0NJUzV5dkRBS2lCQ0Jv?=
 =?utf-8?B?YVcwcFZTSXh1dllGNjUxR1ZXbFdDVUg2YlVSV2dEMFhsZlpRejVOc0lSVmpD?=
 =?utf-8?B?NmpHSmVZMlM5VEFkNzZVcGxBZHArZnd6RU5aUHRGaHZwSnpUUURQbGdXNWVq?=
 =?utf-8?B?Y2poYVlxQnBGY0V0aWxSaTlnOG12SDBURHFhanBCeU1kaDlMcHozcWpNcDgy?=
 =?utf-8?B?NzhKZzhJc2Q5bUFJWE5TVWZMQjhKSEpLNHJ4OU1NbWpZSWpJLzBTSzNRVEhS?=
 =?utf-8?B?Z2ZJL2I3UkdPQXc1Y2tPNlRpL0QveHYweU90S2tPdHFyZmZaajNOdkh0cG83?=
 =?utf-8?B?WnFrQm0zS09ITUFZWXFQWmNwWEpkVzd4dUtpSGY2ekJsZTdNVjdrSFdHd1lG?=
 =?utf-8?B?WUdSdmtjZTJPOGFrUmVseUgxakNlOWtZaXhFZU9Xb3JvdTBlY3lQc2wrM1d0?=
 =?utf-8?B?NTZWRFovem9YYkVlcVlNV3g3YjdvcFp0WVN3emdTVHhPdzFYbklLZDBMbFo3?=
 =?utf-8?B?TFZncWdwbGNCMytWUmpWR3I3SkwwN1Z3TTM5NER2VTgwTDNHS3FoSFltQldO?=
 =?utf-8?B?c2JCdXpFOFhRakhXckp6ZlZUVVFqWDNNbnpKY0hMS2FzaVF3VGxVL1IzdVUr?=
 =?utf-8?B?a1JlNmxlUGQ4b1djNS94KzIvNzAvU1BORlJtN1ZaRUF3Rk5adHZzQUl6Zkc5?=
 =?utf-8?B?UnVjdDA2RXlTa1lvemtJSDl3VVZYZ1JiUEkycHM2eFN6SGJIc0hUbEFUQzlH?=
 =?utf-8?B?dk80TEtaUmwvQ3NTd0FmOUJOZlRteElseFZHbUNJaWQ4Um9OMEo2U1dSM0t1?=
 =?utf-8?B?alZyUFc0dGtWdGw0T004OUtWOW14K3A0dEl6UGxqRlIrUWVUR3VoaU83VVJn?=
 =?utf-8?B?TjBtWlg1NUo5dGdxdmVLWnZLcWZQM1IvK2ZuRmZhcGtTVTk0VktyRVNHeTVL?=
 =?utf-8?B?aWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2df29e0-5feb-49ba-61c8-08dbcf07d948
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 11:54:41.9941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tWyV0hEM6wD77eMEXWac7SPsRa4Nqy3C6kBbZsFA9npxfd/CFSnrc2tEmQV61uUokcKFK0kyie280TYe0Y9LoBV9GiLoQfdRuCnQdtFt2o4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8312
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWlxdWVsLCANCg0KPiA+ICtzdGF0aWMgaW50IGk5MTVfc3BpX2luaXRfbXRkKHN0cnVjdCBp
OTE1X3NwaSAqc3BpLCBzdHJ1Y3QgZGV2aWNlICpkZXZpY2UsDQo+ID4gKwkJCSAgICAgdW5zaWdu
ZWQgaW50IG5wYXJ0cykNCj4gPiArew0KPiA+ICsJdW5zaWduZWQgaW50IGk7DQo+ID4gKwl1bnNp
Z25lZCBpbnQgbjsNCj4gPiArCXN0cnVjdCBtdGRfcGFydGl0aW9uICpwYXJ0cyA9IE5VTEw7DQo+
ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiArCWRldl9kYmcoZGV2aWNlLCAicmVnaXN0ZXJpbmcg
d2l0aCBtdGRcbiIpOw0KPiA+ICsNCj4gPiArCXNwaS0+bXRkLm93bmVyID0gVEhJU19NT0RVTEU7
DQo+ID4gKwlzcGktPm10ZC5kZXYucGFyZW50ID0gZGV2aWNlOw0KPiA+ICsJc3BpLT5tdGQuZmxh
Z3MgPSBNVERfQ0FQX05PUkZMQVNIIHwgTVREX1dSSVRFQUJMRTsNCj4gPiArCXNwaS0+bXRkLnR5
cGUgPSBNVERfREFUQUZMQVNIOw0KPiA+ICsJc3BpLT5tdGQucHJpdiA9IHNwaTsNCj4gPiArCXNw
aS0+bXRkLl93cml0ZSA9IGk5MTVfc3BpX3dyaXRlOw0KPiA+ICsJc3BpLT5tdGQuX3JlYWQgPSBp
OTE1X3NwaV9yZWFkOw0KPiA+ICsJc3BpLT5tdGQuX2VyYXNlID0gaTkxNV9zcGlfZXJhc2U7DQo+
ID4gKwlzcGktPm10ZC5fZ2V0X2RldmljZSA9IGk5MTVfc3BpX2dldF9kZXZpY2U7DQo+ID4gKwlz
cGktPm10ZC5fcHV0X2RldmljZSA9IGk5MTVfc3BpX3B1dF9kZXZpY2U7DQo+ID4gKwlzcGktPm10
ZC53cml0ZXNpemUgPSBTWl8xOyAvKiAxIGJ5dGUgZ3JhbnVsYXJpdHkgKi8NCj4gDQo+IFlvdSBz
YXkgd3JpdGVzaXplIHNob3VsZCBiZSBhbGlnbmVkIHdpdGggNCBpbiB5b3VyIG5leHQgcGF0Y2g/
DQoNCldlIHN1cHBvcnQgdW5hbGlnbmVkIHdyaXRlIGJ5IHJlYWRpbmcgYWxpZ25lZCA0Ynl0ZXMs
DQpyZXBsYWNpbmcgY2hhbmdlZCBieXRlcyB0aGVyZSBhbmQgd3JpdGluZyB3aG9sZSA0Ynl0ZXMg
YmFjay4NCklzIHRoZXJlIGFueSBwcm9ibGVtIHdpdGggdGhpcyBhcHByb2FjaD8NCg0KPiANCj4g
PiArCXNwaS0+bXRkLmVyYXNlc2l6ZSA9IFNaXzRLOyAvKiA0SyBieXRlcyBncmFudWxhcml0eSAq
Lw0KPiA+ICsJc3BpLT5tdGQuc2l6ZSA9IHNwaS0+c2l6ZTsNCj4gPiArDQoNCi0tIA0KVGhhbmtz
LA0KU2FzaGENCg0KDQo=
