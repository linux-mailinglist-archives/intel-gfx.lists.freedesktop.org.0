Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E24689B956
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 09:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09E210F968;
	Mon,  8 Apr 2024 07:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JES4xgbE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3748C112223
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 07:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712562873; x=1744098873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Cai92lzEp9/ZKPK/REdwbE2ruXQanUPqO1261fgCgZE=;
 b=JES4xgbE7hB+1RFnE+QM/nZeP5WpAgAXjj/BLlgQDpnW/sz+LsT8GsjI
 LQhJ/tHLlECxXJHlmzr3DIsOrytagJ4vwRFg81+L0P/n/riqyTLK79Kc1
 UwdrxR4CHTH7EhfXzTBZ/mBeSu+VD6szDba4FJ9zkcflGLOatfnduaMOp
 pV1S3VXSCOA3tIGmfCw0yoCVJ4ZfN95FhpPvMwYJ0vZY78lQ5NrEJ9N0l
 5Osu+ED3UFLuF9TnQwcmZjHSl0+olQY9tLijaXYRlO0IoisQtUuK1GYUb
 9Dv3qmQ2BaZUc7yWVCOD8dD8kBLSDKjqvdvuhxkbdu+HcZzJMD+Vra9n9 w==;
X-CSE-ConnectionGUID: 5fiB8bxCSg6f6jyH8Ubs+w==
X-CSE-MsgGUID: GDRxlQ2vRb2r7acDzv3b7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7735516"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7735516"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 00:54:33 -0700
X-CSE-ConnectionGUID: ykiFe7/YTFKyRBT0lJRckA==
X-CSE-MsgGUID: 0Kykapr0SpOJVVeAHLMeuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24578485"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 00:54:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 00:54:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 00:54:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 00:54:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eb871XEfk8Wk56Xuw45Ntfhd5DwOjDFFiq3v0OObVbxn0UQfdRMDRvMLZqjOZ+9nWRJ6FFyEO43gIfuUNB1zt344x6cfootDH9tKPbGQ4VfuOc2bj5dqpAfFVZdkMxqgr6kvY8wtvIGWmXH5pjscPNCQKIhJcg1cQJS9yXSwH8J4pXPm6mpMirx7u9qIFM37dS/+pcSt7dSZ2hnXyEks3wqhSjzU+Crc071nJ4kZmd8awSG1rU8z/VfcT86w7y1YrJOcarcE7EN+RfQPYrfxK592HVx2bhhWK/Xuveat/6UngHdHc860n+7OlUB+Z9r/nIErwf5oOr0XoVT4ajf+0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cai92lzEp9/ZKPK/REdwbE2ruXQanUPqO1261fgCgZE=;
 b=GedqB1Fh5yqc6kmoXtlsclf/9dixGev7ssC/xQ03H/ES6+Ua+EBCCWkneZp+UWSyZ0Vm2BZtIj+6zruRKYIR3T2SuvnO/JLEvPYO//hQSOPZCaKpbd7vxQk13XBgASynf3GfZiC/vmY9/azWBom9z59xOeoHSf0IuT5Rz5/sMytvmytPneNbHoK5D4xe/SeXW9TF9l3zbVUNcoqQtHMAiD5MZmoVLT5S6bJs6Oj0UgmDYnsp9ARUpA2xmOkmYxX+zaM7TAk7f0Rfr7AFOD8dY3129Me8eqvtV+eRSLC8/r1a/GeYWpU6iPIfrI6CvMm9Wh1/d/tTDigQ72/xnMRjTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6342.namprd11.prod.outlook.com (2603:10b6:930:3d::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.26; Mon, 8 Apr 2024 07:54:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 07:54:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 0/8] Panel Replay fixes and clean ups
Thread-Topic: [PATCH 0/8] Panel Replay fixes and clean ups
Thread-Index: AQHah02KCqCwmQULrU6YIhMxg1KW0bFeBVyA
Date: Mon, 8 Apr 2024 07:54:30 +0000
Message-ID: <6ce0ddd7956f638aa8d108442d17cba4da7103d1.camel@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6342:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GocBqJE1XsriC14GlHHhAgdsR0jyGMCnyGvhvk9OD30ywObu97p98Lwge3f2jQ2gJ7vku7f4OLTexP/I/z4dXIQDlD5Hlh/OIpHWigu3ziIcdBadzZAMamYTufKqTpTwA+zAVLtGvjZToEtABI2ChWyUc1R21QyxLeSTwRClaZ/o0E2Cjakpd+3MRhE6sLfktipyT3ydr+Kpp4z04ThLawbyxu5FxEaQkIK0Ajp+UYDHfWUr2afwpcyw3WzrGu+waKvVElwVZdpbjpxj6DNFpZhEY4kKl7fjD4jASRxBBCHVAbInxQDZ9TzjFL/X/lNp6+LZ8PcqgIokHOBhv5jzkUhkpIBMQXJCS/0tjwZ8xxDZaTcbnr3arTdDshNfvFiIUnkjl/FJDO+w9xi3fIO2jV+VfdD2jF/Q1gxGSRwjHLsK+k3GyXNz2ImmHQDMvOj4CTP9+BSz797m81MtNXHjTY+vQPxwUw3juICybVGd66Rwq94qngeRDVfi7Ax8QcgzlQZpTkXCazOU7d37kwmWqvaFzM6rPlO2LPP1AGvduggYuYmdgyjo9I1IrcrT3lVhbw7O7sdLqRYp1w9ESanrLudfBrkJGRPFBxll5y2gbmo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cW5TWEhxRCsxc2hoQWhhRDlJTnB6WGcwdnp6MUdDZ0cveGNrR1VvY25kWFM3?=
 =?utf-8?B?RjFuMk9vQXBWZldrd09XcjI2Z0x0UE9ERUc3blczUUNxdWdMaGJjZHdkNGNB?=
 =?utf-8?B?a1hsQmYxSy91L3JRWHJ0R0dlNEo4QU1mcVRhTmRCRWpIM3UvOElXbDI1MW0v?=
 =?utf-8?B?RGFPWjRSOXRBZjQ4MlkxWkRGQ3g4cTNrSDFFY0ZBb2laSXNkRHp1OFIzUnZo?=
 =?utf-8?B?Uys3clhuY3RkNGkrajhCYlE1Z2cvb0NXTitOWjU2QURLY29lMU5kdG5meDdh?=
 =?utf-8?B?WnRVRk5KQXBHSUQ5ZEUvZ2dWb3QxV1UyY2ZSb1dvZGNwaE03ZzBGT1V6NFgz?=
 =?utf-8?B?VktrenhXWE95Y3NmZWdBcmVYaWtvRlk4emZWSXNyeXFCaTZWM0c0L3hFZGFp?=
 =?utf-8?B?K29kWmhpTUNtalJpR2dOYm9seURnNjFlWmFQcTRXT0o5WFlXTlE3STdoY2Nk?=
 =?utf-8?B?bVNBRENpOFZZYWUyenpUVmhHeHYrYWhwQndBaW1KSVJIa3ZuT3hkTTRLbnV3?=
 =?utf-8?B?NkFsS1JadzRaU2l1bFZvWWxTNkFqL0JQUjJOU2pkT2cxckg1L2dUVVBGYXpo?=
 =?utf-8?B?UTFMcUFMVlcvbW9vc2FVdjZIOWliQiszczFBZFJDWDh0YytxYi8yZVBUd1FL?=
 =?utf-8?B?RDZmMlBCNnFsOUkyYnVjcUoyb1RqUnhQVS9MVTBCd3JCNTU1TUc1bFVnR0hY?=
 =?utf-8?B?dEl0Q1dRSExQaUMwcGc2UmwrRW16d2M0T2xNMlUvZXBGQ1crVWpLWmdnakU4?=
 =?utf-8?B?OWZvNmtsQ3UyZEZkUGZhUXlGTENEZENEc2RWT1k0Q1BGM0RNb2J0cjA3UDhu?=
 =?utf-8?B?c0MybU1Td0NtbFIvVHVxSU8zZWFxTDVjaHJ5T3RRa094aFJpTk4vN2E4ams4?=
 =?utf-8?B?b2JnZVg4UUZ4cklKS2QyMGNJN3UrL3ZJamlpaitmWHZ2YTFZcjg0cWQ0UlFB?=
 =?utf-8?B?UE1WNlJrWkYzUENvRWJUVGVBTnRmNUZIanlyb1RIdmE5RS9GNnRmWTRoNTJD?=
 =?utf-8?B?NDRhMTNsREs0N0lpakZLTVNsSnY4NS9ndWlITHNOL1RXb2dTN3d6VG1FVkMy?=
 =?utf-8?B?Q2lrTndZTC9PY0JNMHROcVptWVpUam8vVFprL1VsOURrRXZXMkZKVmJNZDU5?=
 =?utf-8?B?c1ZIcHF2ampyR0VmYVNjZjM3VFVMR0RhWVAyajNXcDdiY1M1NEZZSWZFUVpS?=
 =?utf-8?B?NlBkVld0TkxFNTBKNTdyNzR1bzdtazU0RGNGRVhPSi90b3VEcmlUWTJmejJp?=
 =?utf-8?B?d1dEYWRSTnBaVG03S1B5Z2VLVjZBSXhTWWVhNVZjWVZkaXJvRmZXRm14TGtT?=
 =?utf-8?B?Rk5GKzJPd1Z5YnVsanVOUjlIcStHOGV5eER1UG5DYnNmQUVycTBuS1hZaWdB?=
 =?utf-8?B?VThFaUFRRFRaK0VWeXNsUmxSSmtNblR1aVJyWS8xSVQrNldMdWxlbXNlcXdM?=
 =?utf-8?B?U1M4Qm5XOHNUZUx3SU9aUE8yaTR5VjVMVG01d2pOZWJhSTR6elhmTDRBTUJB?=
 =?utf-8?B?NTF0cTN6WWZjL3BPQ0wrNFYxS0ExaHNndlpnTWRSR3N0YWRrakR4N0lpQnd0?=
 =?utf-8?B?RExnTjBmcHNmNjlLNnlxRWxkUWJRa3FML2xpM0xaWE5sT0V3bFVRa1l1RWtT?=
 =?utf-8?B?WENoRU4zWG4zSXczbU41NG9rL2oxZFhORU52SE9IZmE3UDJSamp1enZlUW8w?=
 =?utf-8?B?bkhBNXA4TktScXVKanRzOVM1K3Q5UVFjeE5rM2VQazZWWjh6WTNQNmMwSk8x?=
 =?utf-8?B?aDh5QTdhY1ErNUJyS2FxcFRJRGtMTUZTS3h5U2RvaDFnSUhSMDdtWkttM0Vw?=
 =?utf-8?B?N2NYbnVpQW5RcUoxbndGM0ZUMFNJdW5CaW9CVkR6WjR4aDlyNmZ1SklNYjk5?=
 =?utf-8?B?Rkc1V2lldTVhSnVkQllNdnNxZytTbGxxTkFYNXhtbmxoOTErMmVQTEtOVnVV?=
 =?utf-8?B?dTFHZGFIK0RGMFJOaXgweU0xK0FxNnE5MTBBVUttMWJvU0h6V2ZOSi9jUk1w?=
 =?utf-8?B?MHNQTUhnb1A0NjdKU3FMV0VGb3BkRXllQU9tVGVGc1UydDNNVUMydC83TW9v?=
 =?utf-8?B?Q2JYOGdJZjBDTG42enRrYndtMElOUzlvT3V4TlhNYzBETTRQSlNXUE5FUUhi?=
 =?utf-8?B?cTJIdk1BWm9TV0dFN3RLdi9vRmo1TDFvempqNHROaGZ5WHJOb2U4Zml1K2VH?=
 =?utf-8?B?Unc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <00EB518E07AC79479B2C0F9E870EA3E0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d96ea2cb-5b3e-42c4-7bbe-08dc57a11f5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 07:54:30.7094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 57PKow3N05EskAfdgzILURkM4NUWcfUUClwvraVbjV0V9hn/DCP9m49R5aXlGNhGRDqF+1wno0Js/jK+IN8KhMY8sZbO7Lv6ijVXWAfeDJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6342
X-OriginatorOrg: intel.com
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

SGVsbG8gQWxsLA0KDQpUaGVzZSBhcmUgbm93IG1lcmdlZC4gVGhhbmsgeW91IEFuaW1lc2ggZm9y
IHJldmlld2luZyB0aGVzZSBwYXRjaGVzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCk9u
IEZyaSwgMjAyNC0wNC0wNSBhdCAxNDozNSArMDMwMCwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiBUaGlzIHBhdGNoIHNldCBpcyBhIHN1YnNldCBvZiBQYW5lbCBSZXBsYXkgc2VsZWN0aXZlIHVw
ZGF0ZSBzdXBwb3J0DQo+IHNldDoNCj4gDQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvMTI4MTkzLw0KPiANCj4gSXQgY29udGFpbnMgZml4ZXMgYW5kIGNsZWFuIHVw
cyB0byBjdXJyZW50IFBhbmVsIFJlcGxheQ0KPiBpbXBsZW1lbnRhdGlvbjoNCj4gDQo+IFNldmVy
YWwgbmVlZGVkIGZ1bmN0aW9ucyBhcmUgbm90IGV4ZWN1dGVkIGZvciBwYW5lbCByZXBsYXkNCj4g
RW5zdXJlIGxpbmsgdHJhaW5pbmcgZm9sbG93cyBlbmFibGluZyBwYW5lbCByZXBsYXkgb24gc2lu
ayBzaWRlDQo+IERvIG5vdCB1cGRhdGUgcGh5IHBvd2VyIHN0YXRlIGZvciBwYW5lbCByZXBsYXku
DQo+IERvIG5vdCBhcHBseSB3b3JrYXJvdW5kcyBub3QgYXBwbGljYWJsZSBmb3IgcGFuZWwgcmVw
bGF5DQo+IERvIG5vdCB3cml0ZSByZWdpc3RlcnMvYml0cyBub3QgYXBwbGljYWJsZSBmb3IgcGFu
ZWwgcmVwbGF5DQo+IFVuaWZ5IHBhbmVsIHJlcGxheSBlbmFibGUvZGlzYWJsZSBzaW5rDQo+IERv
Y3VtZW50IGJvb2xlYW4gdmFyaWFibGVzIHVzZWQgYnkgUFNSIGNvZGUNCj4gDQo+IEFsbCBwYXRj
aGVzIGFyZSByZXZpZXdlZC4gU2VuZGluZyBub3cgYXMgYSBzdGFuZGFsb25lDQo+IHNldCBmb3Ig
Q0kgcmVzdWx0cyBiZWZvcmUgbWVyZ2luZy4NCj4gDQo+IEpvdW5pIEjDtmdhbmRlciAoOCk6DQo+
IMKgIGRybS9pOTE1L3BzcjogQWRkIHNvbWUgZG9jdW1lbnRhdGlvbiBvZiB2YXJpYWJsZXMgdXNl
ZCBpbiBwc3IgY29kZQ0KPiDCoCBkcm0vaTkxNS9wc3I6IFNldCBpbnRlbF9jcnRjX3N0YXRlLT5o
YXNfcHNyIG9uIHBhbmVsIHJlcGxheSBhcyB3ZWxsDQo+IMKgIGRybS9pOTE1L3BzcjogSW50ZWxf
cHNyX3BhdXNlL3Jlc3VtZSBuZWVkcyB0byBzdXBwb3J0IHBhbmVsIHJlcGxheQ0KPiDCoCBkcm0v
aTkxNS9wc3I6IERvIG5vdCB1cGRhdGUgcGh5IHBvd2VyIHN0YXRlIGluIGNhc2Ugb2Ygbm9uLWVE
UA0KPiBwYW5lbA0KPiDCoMKgwqAgcmVwbGF5DQo+IMKgIGRybS9pOTE1L3BzcjogQ2hlY2sgcG9z
c2libGUgZXJyb3JzIGZvciBwYW5lbCByZXBsYXkgYXMgd2VsbA0KPiDCoCBkcm0vaTkxNS9wc3I6
IERvIG5vdCB3cml0ZSByZWdpc3RlcnMvYml0cyBub3QgYXBwbGljYWJsZSBmb3IgcGFuZWwNCj4g
wqDCoMKgIHJlcGxheQ0KPiDCoCBkcm0vaTkxNS9wc3I6IFVuaWZ5IHBhbmVsIHJlcGxheSBlbmFi
bGUvZGlzYWJsZSBzaW5rDQo+IMKgIGRybS9pOTE1L3BzcjogUGFuZWwgcmVwbGF5IGhhcyB0byBi
ZSBlbmFibGVkIGJlZm9yZSBsaW5rIHRyYWluaW5nDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmPCoMKgwqDCoCB8wqAgMTEgKy0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMTIgKysNCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKgIHzCoMKgIDggKw0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoCB8IDE5NyAr
KysrKysrKysrKysrLS0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmjCoMKgwqDCoCB8wqDCoCA1ICsNCj4gwqA1IGZpbGVzIGNoYW5nZWQsIDE2NiBp
bnNlcnRpb25zKCspLCA2NyBkZWxldGlvbnMoLSkNCj4gDQoNCg==
