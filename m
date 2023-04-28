Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE53A6F170C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 13:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4997110E11B;
	Fri, 28 Apr 2023 11:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F51E10E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 11:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682682860; x=1714218860;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xPFbUQpZ5XbIr2LsWKyFoxcoa1WGzqYDzR5Yum39apo=;
 b=UipNadAIRnXNTQenIO12UWyG5gqk9dx2wd58ogEits9bVQPd6FY7RqEW
 gbDRWusFBK0d855HjjkpX67Z3yAuTYhSs60l6GjRHr+md/+gdby6Nlhbk
 SPwIjuPLdjc05+UMix043hipcROWZfz3ltd17zLZOSQCetK+O2twtQW73
 C7TtbzbvFqHFefsFHSFQOSBm2Xg311Dkuy8lti2OtXCYxhJVZsM2veOFb
 IKULtN4MJwYXCudx+aKUctmdTdf9Az5skvHovVmB37rw7k2uCtwHvAN3b
 kXiRfmt1HgZ0NmlYJh3il6Lh2rDYosO4aUG8FyMcYEAWJ4g5P7t0+72+u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="434021427"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="434021427"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="672155549"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="672155549"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 28 Apr 2023 04:54:18 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 04:54:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 04:54:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 04:54:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HuOdNY6d22bYZJ8KRNNNKP0Nz3D6zLlKbvWsmMSqQfslm3GXopBDqkpfvJAku31YV0aRp5LPSxkFKBvP3YDzQrn7aUD3UpN79EYi3GvfZKEqIKjAhoGfGgA3htJbsLQCeluXQlvfeeDIH6CmDOkTnAQBiNMrs175qnEH8fF07bRad63KmitPCpfD/10T+8IBdTTcpk5rBjkroeZg+YxAFxds87JoC7aQ5VMu7SlOOEt0PRVnIyQeUM1tw0yDUJ6WSBURYAtLRZ3tEe/1I0lS+atkxqSYHup+UL6Qj/pgR5ET5gww3P4VTzhPJ0bvNAFNI8X9Y8s919PbaFsVgslOcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPFbUQpZ5XbIr2LsWKyFoxcoa1WGzqYDzR5Yum39apo=;
 b=TYbSok3jiHeetq15AT2KqJNC2/VETg4DLsP0a0/NraVZOo0VQree1wjwfVXZGv9eX02LqHmVv2HJUW13zubXVflGt5PCglapf3sYDmiUSWdjZdlZFEUirkbggIjfGgYnwQbyd8rVDxah2Q4rOX2texrHexpuCOMfgyYYSSLopVGinX9ABiW7DJi1MWuapUFQ2hZZmT2Z6a6mMtrwdcrmu1CR7dVN8H52rFt0AVW/2db/pyRbF6Rhl93oFS1TZiXtbx8fsmcyJLC7H2o2L8KVmAr5Z522ExZRVh9Gvr8AClzEuxTYqf/Og/lXZbFkwilwzCxl0RCMxYGvIKhwBMwEpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5495.namprd11.prod.outlook.com (2603:10b6:208:317::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.24; Fri, 28 Apr
 2023 11:54:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%9]) with mapi id 15.20.6340.022; Fri, 28 Apr 2023
 11:54:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 13/13] drm/i915/psr: Re-enable PSR1 on hdw/bdw
Thread-Index: AQHZdEljzt9HUYDDoECkhaTJmX7d4K9Ang+AgAAE0gCAAATUgA==
Date: Fri, 28 Apr 2023 11:54:11 +0000
Message-ID: <034b5a28dad5966423c82e5bb0bc1d77541eae3c.camel@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-14-ville.syrjala@linux.intel.com>
 <176dae6934e6d79b93fbe158b8ac05ff161b76b3.camel@intel.com>
 <ZEuv1DAk5V7Ffswo@intel.com>
In-Reply-To: <ZEuv1DAk5V7Ffswo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5495:EE_
x-ms-office365-filtering-correlation-id: fa1c37fa-a99c-4df2-baa6-08db47df47d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JoybFzWfZBPCp52ugk5uP6HHhO6O0VyotK3ZmQmtKrltUlPUnPbOnuSkaTmO9UkPkVyXMCdIPTuAn4ehA9rNOAuKwgPUEfhPYYaQFYGcd2Rr1pXWQs6KtNkuabiGs1OJnALy+6ZVTnP9uLASmsOpDhjfz9ON53OM1i7x6i8QK3913I9n8uKxvTlkkQUK2OQWNJYtcxsNzGtr7r74MEfEl5sS2rtv+583G9A7T1Oah3w5krTFS7gif5CRSkl4+CUM3aWX3eW/KFuphMIuflPUzaU6NQQAATq87kAvCXq9/ISxqWzD5hDCsuY4g+BcHCT8eqEzltfA08boYmUbExqoewkGknWeWjY+5YxVaVo6M9DcyPcofTVw6Xr9J+CvCa1ADzRfvXSNIcwRi/2EB0xi+yjhlvTradeXsBwlSDvb6J66Q5eBHXV2jn5hWE9/AOn9N2C6oXghD2DqLhAacME4Af85h5GuImtEBLPnh4pw1u9p3A3EpM7vKedR9PYmvFLidzvzf5bhzI8bSQNSirGLHV45BpVrosiiQgigUSugzzsVf/b6GW+AFsAka5xLflBQYhWt5Y8C2UHIZgl/QBbYOecOX436GY2Rc/EjMshLnCu64twfhmtsjLBqd7d3KaEL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(376002)(366004)(346002)(451199021)(66574015)(6512007)(26005)(186003)(83380400001)(2616005)(86362001)(66946007)(76116006)(91956017)(4326008)(316002)(38070700005)(5660300002)(64756008)(66556008)(6916009)(66446008)(38100700002)(66476007)(122000001)(6486002)(478600001)(71200400001)(36756003)(41300700001)(8676002)(2906002)(8936002)(6506007)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkhQT2VldjNmSGI5VUxGT0dMenk2OVNlYlRyK2daaEUvcmtPMm9NVzQzaktj?=
 =?utf-8?B?d2h1K3RUTTZQVThGcVNxTDdJajhDeVhnVmE5VitwSmszVDdvZnZWVHNBblQx?=
 =?utf-8?B?Q3BnWmVhYysxMS94NGs3Zm9WSVNtWGNWbkxseE91VnZMbEVYQ2o0VUViSVZN?=
 =?utf-8?B?SU5GVUdZVlowRmIwUDdZN2NzdThrZndDdDdxZXRHNzhkQ01hcFZQMlJqY1No?=
 =?utf-8?B?K3pYeCtlY1FJWHc5ZXYvRkRBU1VTUmo3NHVNL3o2ai9rWEFuOHJaSnh4bG5i?=
 =?utf-8?B?Rjc1S3NEeGwxUW9jWVdlblhDRitqcHRuZEp4ZjExS08wWjVkelRub21VaCsx?=
 =?utf-8?B?MWp1Y1c4TXpCN3BwOWNBeVp4OHpDem9hL3NIRFRHNUFNWk1BRndWUmdFTzVo?=
 =?utf-8?B?OGpEZ0JxNkNRYVhscnBnN1ViU2VISkZUdDlMZVpBbjdsaWFUUVlzdVQ0K1Yv?=
 =?utf-8?B?amF6cXFRSVF3dFlHYytHSUl1NTUvYzlWcUtMVXRmalE2MjZLOUt1bFpQMDhY?=
 =?utf-8?B?MHdEbVU5RGdjUW1DYUFCd1czRW9zY2lZOUlQVDEyTmtYTDcyV1hFcmlETmpC?=
 =?utf-8?B?c1JGQ3dpNEw2NmFDYU9qcjJhS0NrNFBvWVJuaE5QMnhLdjhKL3JhWXV0Y05J?=
 =?utf-8?B?YmQ0cjRsRGNhZFRra1VuRW5kK25INmVRK1ljUkNIQ2x3c2Y1UWhBRmhhcVBl?=
 =?utf-8?B?djVzS3ZzUnROa2xkeThqalErTElwaW5FSWVTSTdqVENNdnRFQ3U3enFNempE?=
 =?utf-8?B?RFlLNURLR2ZOcVpjdWxrQnVqWWUyeU1SbExyNlZOUXgwT3JBYSt0SHQwclJx?=
 =?utf-8?B?NXFNU1R4L2pjQlJoUXlHTTNSZm5ZczlCWVJ6NGdNUmJkdmpyaHhyVUtwbExJ?=
 =?utf-8?B?V05QRG5GYTFiQzZwT3pCakRQOEFWU2VLNXNWcGJrNCt4MFpncTVHNXVoRFN6?=
 =?utf-8?B?Tm1mRTMyRjdYREw4TlZCdnlmOFlwQ1FKYnpXcWxkM0Y0d3lEanJYNDdNaXpK?=
 =?utf-8?B?TnlQL0NRMmd6RkVaNVhpREhjeVFuWFhvVWowdi85L0ZyNW1aRHgyVncyaHlH?=
 =?utf-8?B?WVUyRWdKSjdBd0RXSUVlWjRibEUzL1hteGhtb21KcDB6RVZsellIZDBCMFdn?=
 =?utf-8?B?eUlkMjEyYXFmNW9iQ2RhSUtnYk1DOE91V1p0ZUpvUG5wMmhkWG4zaTFQQ2R0?=
 =?utf-8?B?Tm1JNWh3TnVDSi84UWZIemhJWnlkOE5ha09Hc2Zxdktnck9xakpnNm9XMDFW?=
 =?utf-8?B?U0FxNjg5RUd1bEtZaWdyUHZSNXFOUHNYTHJuQzl1SVF4TGxUeHlWZkFjV2hm?=
 =?utf-8?B?S1Rpa3VCYnBHalM3TkFSOGNZdTlnMTJEWEROTXZSVzU1ZlVRVW9FTGRvNlkw?=
 =?utf-8?B?R1NTRjQ0NmIreHR4ckE2aURoMXJNZm9kVGk5VFlIZEJZUEkxZzkzRUJaQnRn?=
 =?utf-8?B?NFk2VTVUMlZUTGRkalZPbGRMZDJZUjB2MTlaNzB2TmZEYTBCckNrSzFOS2lm?=
 =?utf-8?B?Uk5YVklickNxYkJPRTF0Nnoxd3JZd0tpcm5iYTBOd3pKSkRaVm14RmgwalRQ?=
 =?utf-8?B?UHl3NHJOeERIcEZKdjRPU2ZOSTdRUys4VkJVVGtEQTNhMzM2QUxFa2plbk9k?=
 =?utf-8?B?MzlLdjVuTnN0RSsxQW1vem42QWhIdTVQSVFYaStqWExsaS81cWJnd0gwT1RD?=
 =?utf-8?B?aFpxK0lMWnRKWXpwdk16SnI1aXVudTYxNTdrWjlYMGdWRTJsdWZVVEE0N0dy?=
 =?utf-8?B?eVp4Umd2OHVXUWVpNGdXd3JCTVFia3d6dEdKajRIb0s5TDJjK1lSSGYveVNh?=
 =?utf-8?B?Q1RQRHlHQU5DbFp2QU03RkV0UjZsUDJpbGQ2OHlDNDZnVFBZSEF4TFh3dVFC?=
 =?utf-8?B?V3VKbklJQU9obEV2ekpHNHBXTWhXTHo3b3FVQVVoMkl3aGI4dUdyNCtFcmt3?=
 =?utf-8?B?TFJ5cmp4eDliTzZYU1J1T3V2UHc4aEVVRk9mUisvZStEUVk3OVRxbmFpOEZl?=
 =?utf-8?B?eHRodURBTklVczdWV0JUMDUzOVBMSXZ3K203MVRLdTh4MC9BYUwxTnFibUR0?=
 =?utf-8?B?cVFvZDkvTTltVEg3clloa1JFb0tQSHdmcHkwOUtiK0luRjhYSUNGRk4vaGt4?=
 =?utf-8?B?L1VZWG1UaGlIR29Bb2NEalB3MFhXQWkvY3ArMWNSNlJJTmRxZFpxWkQ3a25Q?=
 =?utf-8?B?S2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <02E4234DE8EA934985B2A9CF797CE06B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1c37fa-a99c-4df2-baa6-08db47df47d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2023 11:54:11.0758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HgAytRY3UZcH6QLUqFVTAmEy4UECQX3oGQBwSDyoew42KAfxaSSQ3JZBXWnDd4pbeRJAkF5l6gji9KYTqcV77sOcyyEpX6X6TJd4v/9hz9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5495
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/psr: Re-enable PSR1 on
 hdw/bdw
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA0LTI4IGF0IDE0OjM2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgQXByIDI4LCAyMDIzIGF0IDExOjE5OjM5QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBGcmksIDIwMjMtMDQtMjEgYXQgMTU6MDMgKzAzMDAsIFZpbGxl
IFN5cmphbGEgd3JvdGU6DQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBBbGwga25vd24gaXNzdWVzIGZpeGVk
IG5vdywgc28gcmUtZW5hYmxlIFBTUjEgb24gaHN3L2Jkdy4NCj4gPiANCj4gPiBQbGVhc2Ugbm90
ZSBzL2hkdy9oc3cvIGluIHN1YmplY3QuDQo+ID4gDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4g
PiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDQgKystLQ0K
PiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
PiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
Yw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ID4gPiBpbmRleCAy
NzJhOGJhMzdiNjQuLjkyM2UyNDA0NDk2NyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMNCj4gPiA+IEBAIC01NjIsNiArNTYyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbw0KPiA+ID4gdmx2X2luZm8gPQ0KPiA+ID4gew0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBCSVQoVFJBTlNDT0RFUl9DKSB8IEJJVChUUkFOU0NP
REVSX0VEUCksIFwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAuZGlzcGxheS5oYXNfZGRpID0gMSwg
XA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoC5kaXNwbGF5Lmhhc19mcGdhX2RiZyA9IDEsIFwNCj4g
PiA+ICvCoMKgwqDCoMKgwqDCoC5kaXNwbGF5Lmhhc19wc3IgPSAxLCBcDQo+ID4gPiArwqDCoMKg
wqDCoMKgwqAuZGlzcGxheS5oYXNfcHNyX2h3X3RyYWNraW5nID0gMSwgXA0KPiA+IA0KPiA+IElz
bid0IHRoaXMgaGFzX3Bzcl9od190cmFja2luZyBhYm91dCBQU1IyIHdpdGggaHcgdHJhY2tpbmcN
Cj4gPiBtZWNoYW5pc20gaW4NCj4gPiBlLmcuIElDTD8gU2VlIEJzcGVjOiA0Mjg5LiBNb3JlIHJl
Y2VudCBwbGF0Zm9ybXMgaGF2ZSBtYW51YWwNCj4gPiB0cmFja2luZw0KPiA+IG1lY2hhbmlzbS4g
SW4gVEdMIHRoZXJlIHdlcmUgYm90aC4NCj4gDQo+IEkgaGF2ZSBubyBpZGVhIHdoYXQgcGVvcGxl
IG1lYW50IGJ5IGh3IHRyYWNraW5nIGluIHRoaXMgY29udGV4dC4NCj4gcHNyX2ZvcmNlX2h3X3Ry
YWNraW5nX2V4aXQoKSBpcyB0aGUgdGhpbmcgdGhhdCBkb2VzIHRoZQ0KPiBDVVJTVVJGTElWRSB3
cml0ZSB0byBmb3JjZSBQU1IgZXhpdC9ldGMuIGFuZCB0aGF0IGlzIHVzZWQgZm9yDQo+IFBTUjEg
YW5kIFBTUjIuIFNvIHNvbWVvbmUgc2hvdWxkIHByb3Blcmx5IGRvY3VtZW50IHdoYXQgdGhpcyBp
cw0KPiBzdXBwb3NlZCB0byBpbmRpY2F0ZSwgYW5kIHJlbmFtZSBlaXRoZXIgdGhhdCBmdW5jdGlv
biBvciB0aGlzDQo+IGZsYWcgdG8gcmVmZWxjdCByZWFsaXR5Lg0KDQpPaywgYW55d2F5cyB0aGlz
IHZhcmlhYmxlIHNlZW1zIHRvIGJlIHRha2VuIGludG8gYWNjb3VudCBvbmx5IGluIFBTUjINCmNv
bnRleHQgc28gdGhpcyBzaG91bGQgbm90IGNhdXNlIGFueSBwcm9ibGVtcyBlaXRoZXIuDQoNCj4g
DQo+ID4gDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmRpc3BsYXkuaGFzX2RwX21zdCA9IDEsIFwN
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAuaGFzX3JjNnAgPSAwIC8qIFJDNnAgcmVtb3ZlZC1ieSBI
U1cgKi8sIFwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBIU1dfUElQRV9PRkZTRVRTLCBcDQo+ID4g
PiBAQCAtNjY1LDggKzY2Nyw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2lu
Zm8NCj4gPiA+IGNodl9pbmZvID0NCj4gPiA+IHsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAuaGFz
X2d0X3VjID0gMSwgXA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWUuaGFzX2hkY3Ag
PSAxLCBcDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmRpc3BsYXkuaGFzX2lwYyA9IDEsIFwNCj4g
PiA+IC3CoMKgwqDCoMKgwqDCoC5kaXNwbGF5Lmhhc19wc3IgPSAxLCBcDQo+ID4gPiAtwqDCoMKg
wqDCoMKgwqAuZGlzcGxheS5oYXNfcHNyX2h3X3RyYWNraW5nID0gMSwgXA0KPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoC5kaXNwbGF5LmRidWYuc2l6ZSA9IDg5NiAtIDQsIC8qIDQgYmxvY2tzIGZvciBi
eXBhc3MgcGF0aA0KPiA+ID4gYWxsb2NhdGlvbiAqLyBcDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
LmRpc3BsYXkuZGJ1Zi5zbGljZV9tYXNrID0gQklUKERCVUZfUzEpDQo+ID4gPiDCoA0KPiA+IA0K
PiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiANCg0K
