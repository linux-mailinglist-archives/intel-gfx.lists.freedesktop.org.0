Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB104D2DF5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 12:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C1410E41E;
	Wed,  9 Mar 2022 11:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08AFB10E41E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 11:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646825381; x=1678361381;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Vr92w3Sv6pHeTcIAa8QYUVy0ghcWZ9DbkAlgUQzxoM0=;
 b=QxY+EmcLlmaVeq7OApu8u1gLXqJH1aX3OKAHrEYeppTny9XJgD22tq5G
 8Bvgd1/wBsBkovYFf3nAETZdUWVZfwUK4mZ18HydXkcQZiMcvinC0/dKI
 Vfby+kwuUP1hilRANaI0AQBWpPxwNE5uQWCyLr68/5XtZy3iIUWOq9YSx
 mjQ1DPYBvlpisOk2/nocezRfryHm6P0NscPeJF+HOU+4skLnsTVmZYSO/
 0EclfATi+gR17Hs5t5SlnLLXrupFK3qFnZ9iSmSEMQqh5hVpnd2pNznSH
 I7dTMUIrUPADYKdBXvPlj2oH4BIpTmN/wl9+k6ETtcCkZhAWWbiwuanrw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="253783650"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="253783650"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 03:29:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554081299"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2022 03:29:40 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 03:29:39 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 03:29:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 03:29:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 03:29:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KU4wrYf0qbfpmOugV7pSI2iaNEY6ch30odzbOYYbHC8h/tevvDPXRq7wyPb4AlsERfbxAOPWFCevZHGrDNpb6PX2547N0JJsutrpMBjNhebdCJMPtsUqxlwVS4jNoR+V7VtaWeCjhwvFOU67ktLnRVYcuORf2L20SV53+ZP7scjMkqbpKpgN9/qLFZpHjkDHVKxzd7r0u4RRKYQC3Gjx9Fxtf0yxCZ32Dl/ZjMRGVqg4zboi9O+8RaTegl3ih2qeGWVOdxJmVf9IpN+iJ6aX4EY+7Koz4XtnNFBteaMMOgtFOzQUWz0nry4tk0jvGNFb7laufQkWpPFAqHJfeVPcSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vr92w3Sv6pHeTcIAa8QYUVy0ghcWZ9DbkAlgUQzxoM0=;
 b=Iupiv7NBEwjlEQ1Ycqb8T2V9QS+mY7f5SOby73e5yPP/N3Xb8VHlixSMLBn4lymM1tMILe1EIzljBphFCB9RodD8fqd8+AvH4hh58ON8ZHRXDRJhHGcYdLNqNqu5iRVfVeUZDLcVHoE46kCyJkvvgPNfJushiwfIzVkJeixYZmi9adLHB0psvPiyXDLGGKypd+l7/1C28EE7Sxfv6f/s5b6EUc/01BwEVVcFKglFtjGhq6yL7Ehee7puA3EL78t4dOyvjcWh0ZiU68eZUg27V6GWwdVhypVCkVzGmDgnVM6EwadduvfKLSFp7fyU9KCZewClhPvefZaO+ejQKTLcmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by BL0PR11MB3010.namprd11.prod.outlook.com (2603:10b6:208:7c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 11:29:37 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5038.029; Wed, 9 Mar 2022
 11:29:37 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/6] drm/i915: Treat SAGV block time 0 as
 SAGV disabled
Thread-Index: AQHYMxRXsce4Alr+jUCC0X0gyNawc6y267+A
Date: Wed, 9 Mar 2022 11:29:37 +0000
Message-ID: <7eff18fd44e1d44f6d014cacfd4db992444a0051.camel@intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
 <20220308173230.4182-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20220308173230.4182-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6bccc8b3-0a59-41d5-67ce-08da01c017cb
x-ms-traffictypediagnostic: BL0PR11MB3010:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3010776F6D7816E0D42A9448F60A9@BL0PR11MB3010.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UwWZT1Wv+GPsiW0DGYafoLJ+75MJXjXXUB+Qa6yTU7UyQWv4JtLY0klk/PSM7N3bo2AtnJRHceLjEtMc8AbBW8uDrtqE+8yTxtRrFCDa3wY+bh2SIXLDAflFC3FQfkRMIJMZAeqY3Ljwh02jHbQ7eGqvhIbW5XyHE1ZkGePQ4a+ZUCtzIHxxl1b+GCcy112TWiRqNOTZ74+69s7CRihDdricG/dXr03CXK01yIGx36XtqLJiL2GZwsSmZyQVZ89VVr7QT8oDJ0TqVQzYkvHy8MwLkki7TmVqq0pE0ouYaKFXBzvlrFBBfjC7NSRAmK43LtoGGcdDK5hts1vb0LjdJALbE017+qwFqWiXRcu5ezOLjWUhJZ2gCufmdx4NlX0vYLFXvryO0OXGMmD0YmUwT9DRi+3Atu6/X08SBcWyzDlEKVixPPwUBpAmPFPCvxWbj9RgbwTrLr2ivas379qCNIn70OSaouoM6ANIvweA7HNTkh+cE5GMUDFPB6A20DL+gqYLfjRlb466FmkpraI62y476q/nsBoQOYDFY/8rkJGlAvknPy4EzxMoIEVs5cmHqvz/vms12W96EP55Tetn3OhfZ45wSdDzpDUoIdwPVrnVMACR3bcXkvsSCV9CCniz+4cBy3PoHDX3Au7oWBYBLhactxnobST9ic/scb0nLqFdf7P2r8YtWkSoHJQcMsZRy8Uo24sjrUbIxDNw/SKAwg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(91956017)(36756003)(6506007)(83380400001)(71200400001)(38070700005)(82960400001)(8936002)(6486002)(76116006)(86362001)(66446008)(64756008)(66476007)(66946007)(66574015)(66556008)(8676002)(110136005)(38100700002)(5660300002)(6512007)(508600001)(2906002)(186003)(26005)(122000001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHQ3RXo4eXdUbU45RjVxNUxwYXVlMGV6WTZvOEk1RXJ3ZFVVcHdxazNIbTJB?=
 =?utf-8?B?bGZ0KzZNZjJEQ2JqQU1xSmNjSzFiWDRCVWJ4QWVPWWFJeTJsa3VaNGpVRmNE?=
 =?utf-8?B?ekpRSVczUnpWQnd2S1M2NldOaGd0L2pNOEpocUt1NXE0R2RudkFJWmErVXdZ?=
 =?utf-8?B?T3lrQmJDR3RPakJGTWVxdTdoQ1YrenVnZmxhaE1Td00xT3IwMVVIdnhqQi9C?=
 =?utf-8?B?MFY0RHpFMGx6UkF3Wk0rWXhqZGNkOTFEWFJKeGJRRGxpVFJCM2M0MEFlRlZU?=
 =?utf-8?B?bHFHTlBEVzg2K2MvQ2x5Sk5FRFRXc2hSUm5ybktpeGkwdENhRWQ0MHdCeGo4?=
 =?utf-8?B?SFZ5TWlFQlVTdjJkSjZpTDMxRC9RdzRBMlFYR2pFa1IzVWtrM04yQ1BMMTNK?=
 =?utf-8?B?WUlUNW1HdFN3ZEp5UG1FbHRicGhoYjNkamgyeWVKdmtza0ZQMjRvekNTdDBZ?=
 =?utf-8?B?VEdPbk40MlBDR2txSjBJTHNlVjJ3bXdHNlY3amRwZHl4RURWb2JrMUdKVnFz?=
 =?utf-8?B?MUlNckF6TFZlLzE2bCs3bE8wTXZtYkZ3QzI5b0J1TzdHaVM3cFI0SkxGWFVI?=
 =?utf-8?B?VFBKTnlYVS9RRFRBYzVxSlN6MmFrYk1sbmdkMnFSaUFrL1BhaDNsUytoOEg5?=
 =?utf-8?B?Z0tmY1ZLV1ZOLzJMWFhYbzRlSStzczh0ajllQkF3ZnNxVzNCeHhkL1JSeEE3?=
 =?utf-8?B?QUZLclV0ZmFNSjJOR0pCaGpUYkwyUHNPRkUrc2IrSU9UUHk4bVFBb1BZT2E2?=
 =?utf-8?B?VlFOYU9QMWlFa1RhdEpTazVQcDJpNjNlZGNkdFlNRXdoaEk5alU5MlB0dFl6?=
 =?utf-8?B?ZExBUnZXZ1VicEtqNFlKV1krUTN1cUlkelBIMEdpc01qSW5nOUhzTjI5UlVo?=
 =?utf-8?B?NDJLU0pYSU9mVUNvMjJPb0M0cVpCa3ZpZXdhakVaSWlEa1FpcWFDMmsrZ1NV?=
 =?utf-8?B?bUxwSFlyRnpuMjZnVzlXbUoxdTNHTkVUSGZEczkvL285cTU2NW0rdmtTb3Jh?=
 =?utf-8?B?THJJMEl6Y3VzZ1hoa2FPdG9FdlUvR2ozWnl3K1FkTFgrZFlONGlCU3AzTGw5?=
 =?utf-8?B?K1dVNzZxVFpTRjRMU0M4OUh3Y09HVUZHSDNGVTNLWnR2SEtxYXBScUJaMEJV?=
 =?utf-8?B?V0ltODFKV2x3K1N2bTkxYVpYWTQyVm40anFIV2YrR1Y2L1ZFQlM0dStZOWtB?=
 =?utf-8?B?M2NNSTludzN1RVk1ako4blZBTGptUmlmK2dvYmZkNHFURHBDdEdxM21qdFVy?=
 =?utf-8?B?NTlESm5LWEtQOWlqTHlyai9qQllYYzVwLy9yeXNJbnBTU2NqNkt1SDI0RVVh?=
 =?utf-8?B?Z0V4dnkvdnprSlYxR1JnakpvZG5UanhLVzhHQit3bFIwSWJtaTZXaU1wYzlh?=
 =?utf-8?B?cEw3SnZEQm1rYkZYUFN0MXlIMnJDckFCK200eXNGZ1NxUnJyZDFIVnAyM1FK?=
 =?utf-8?B?dmQ1S3ZxT1I2K3ZYZzJHbnZwSWtiNlpUY3A1bE1qVDFiL2ZIM2lTa0tmL05L?=
 =?utf-8?B?VWQvT0dIREwvQ0NaZFZCakN1ZzR6YytLcUFPRFQxSFVRMmNGdmxYNC9ZaW1y?=
 =?utf-8?B?aWlpRnMrMW42eHhuZHM5TjJBOFI5MHVNR3NzVGJ4b3FMbEVOYkc3a2c2eXlT?=
 =?utf-8?B?N2F1d1J3S1RHUVo0RXBSbGQ0ZWM3K25TQ2RQdFlUNjVyR1huOElNSnBOK0lw?=
 =?utf-8?B?UWUwM0FUMHRTaUR5ZkJES1VWTGZDbmlla0dRZzRkckNuOG4vdXU3aU8yc1VH?=
 =?utf-8?B?Nkk2SFdaSlJvaHoydWtqTkUrMTZ4VXBldnhZb00vdjVRMEVON3ppbFdwamRK?=
 =?utf-8?B?WXIyQkV1QWw3MS8vWE5Ld0dPdERwbmZZOWw2MCtrVi9oMjNlVHVrVXdHbDhG?=
 =?utf-8?B?akdxZ1VoSjlqa3RZaGs5MVVEd3NDZS91Y0JwcGtqWWlMVUlyVVpQRS90VUV1?=
 =?utf-8?B?OUdKOFU5SGFESXdzZ1h6RUpISUZpazJ2cDVvNmd1cnoxTjhTZk85VzZrekh5?=
 =?utf-8?B?UWF0a1JiTjkzMzBoZWZ4dU5QeG9rT3JIMUQ4aThQMTMxUnlHN1BTVmdmNnJG?=
 =?utf-8?B?cXdKQkJFRG1EbEd2cE9ydzJjSndqUkVjdTV5eFY3NVl2TGxIdGFVajRPY1Y1?=
 =?utf-8?B?ajBOWGxleXAxYlNGdDNBMmdOb0NKbndYbUlHTG5pWXk1M0pwbnMrN2t3QktT?=
 =?utf-8?B?QkRVY1J3dEU4YUsxdmxkamtRVTI5Nmg5RHNicUlDVnZreTFIRDJ6QUpTWnFh?=
 =?utf-8?Q?IAL2WWpWMysMw06s19V3qaR9IzVsgfLG1SdWGQ1K6M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C05098C2C47AE643B90CB4B0135EBE60@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bccc8b3-0a59-41d5-67ce-08da01c017cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 11:29:37.0432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i6EheIcltcBj3BPNCEyK3DLcQ5lHMaFaJrIBCLKwGeGuBH+oPWXGHAYQTgKIC+xwhAIRijI6KXFzEokiqIiZp1CXXpj//23Tb0XFn2ZEsD4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Treat SAGV block time 0 as
 SAGV disabled
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

T24gVHVlLCAyMDIyLTAzLTA4IGF0IDE5OjMyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRm9yIG1vZGVybiBwbGF0Zm9ybXMgdGhlIHNwZWMgZXhwbGljaXRseSBzdGF0ZXMgdGhh
dCBhDQo+IFNBR1YgYmxvY2sgdGltZSBvZiB6ZXJvIG1lYW5zIHRoYXQgU0FHViBpcyBub3Qgc3Vw
cG9ydGVkLg0KPiBMZXQncyBleHRlbmQgdGhhdCB0byBhbGwgcGxhdGZvcm1zLiBTdXBwb3NlZGx5
IHRoZXJlIHNob3VsZA0KPiBiZSBubyBzeXN0ZW1zIHdoZXJlIHRoaXMgaXNuJ3QgdHJ1ZSwgYW5k
IGl0J2xsIGFsbG93IHVzIHRvOg0KPiAtIHVzZSB0aGUgc2FtZSBjb2RlIHJlZ2FyZGxlc3Mgb2Yg
b2xkZXIgdnMuIG5ld2VyIHBsYXRmb3JtDQo+IC0gd20gbGF0ZW5jaWVzIGFscmVhZHkgdHJlYXQg
MCBhcyBkaXNhYmxlZCwgc28gdGhpcyBmaXRzIHdlbGwNCj4gICB3aXRoIG90aGVyIHJlbGF0ZWQg
Y29kZQ0KPiAtIG1ha2UgaXQgYSBiaXQgbW9yZSBjbGVhciB3aGVuIFNBR1YgaXMgdXNlZCB2cy4g
bm90DQo+IC0gYXZvaWQgb3ZlcmZsb3dzIGZyb20gYWRkaW5nIFUzMl9NQVggd2l0aCBhIHUxNiB3
bTAgbGF0ZW5jeSB2YWx1ZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIHwgMTQgKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMNCj4gaW5kZXggMjFjMzcxMTVjMzZlLi45MDY1MDFkNmIyOTggMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYw0KPiBAQCAtMzY4Miw3ICszNjgyLDcgQEAgaW50ZWxfc2Fndl9ibG9ja190
aW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJCQkgICAgICZ2YWws
IE5VTEwpOw0KPiAgCQlpZiAocmV0KSB7DQo+ICAJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwgIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7DQo+IC0JCQlyZXR1cm4gLTE7
DQo+ICsJCQlyZXR1cm4gMDsNCj4gIAkJfQ0KPiAgDQo+ICAJCXJldHVybiB2YWw7DQo+IEBAIC0z
NjkxLDggKzM2OTEsNyBAQCBpbnRlbF9zYWd2X2Jsb2NrX3RpbWUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiAgCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09
IDkgJiYgIUlTX0xQKGRldl9wcml2KSkgew0KPiAgCQlyZXR1cm4gMzA7DQo+ICAJfSBlbHNlIHsN
Cj4gLQkJLyogRGVmYXVsdCB0byBhbiB1bnVzYWJsZSBibG9jayB0aW1lICovDQo+IC0JCXJldHVy
biAtMTsNCj4gKwkJcmV0dXJuIDA7DQo+ICAJfQ0KPiAgfQ0KPiAgDQo+IEBAIC0zNzA0LDcgKzM3
MDMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zYWd2X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpDQo+ICAJCSAgICBzdHJfeWVzX25vKGludGVsX2hhc19zYWd2KGk5MTUpKSwgaTkx
NS0+c2Fndl9ibG9ja190aW1lX3VzKTsNCj4gIA0KPiAgCWlmICghaW50ZWxfaGFzX3NhZ3YoaTkx
NSkpDQo+IC0JCWk5MTUtPnNhZ3ZfYmxvY2tfdGltZV91cyA9IC0xOw0KPiArCQlpOTE1LT5zYWd2
X2Jsb2NrX3RpbWVfdXMgPSAwOw0KDQpIaSBWaWxsZQ0KDQpDdXJyZW50bHkgd2Ugc2V0IHRoZSAi
c2Fndl9zdGF0dXMiIGFzICJJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQiIGJhc2VkIG9uIHRoZSBu
dW1iZXIgb2YgcWd2IHBvaW50cy4NClNvIGhlcmUgaTkxNS0+c2Fndl9ibG9ja190aW1lX3VzIHdp
bGwgYmUgc2V0IHRvIDAgZXZlbiBpZiBpbnRlbF9zYWd2X2Jsb2NrX3RpbWUoaTkxNSkgd291bGQg
aGF2ZQ0KcmV0dXJuZWQgc29tZSB2YWxpZCB2YWx1ZXMuIElzIHRoYXQgdGhlIGRlc2lyZWQgYmVo
YXZpb3IgZm9yIHNnYXYgd2F0ZXJtYXJrcyBjYWxjdWx0YXRpb25zPyANCg0KQlINCnZpbm9kDQoN
Cj4gIH0NCj4gIA0KPiAgLyoNCj4gQEAgLTU2NTEsNyArNTY1MCw3IEBAIHN0YXRpYyB2b2lkIHNr
bF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLA0KPiAgCXJlc3VsdC0+bWluX2RkYl9hbGxvYyA9IG1heChtaW5fZGRiX2FsbG9jLCBibG9j
a3MpICsgMTsNCj4gIAlyZXN1bHQtPmVuYWJsZSA9IHRydWU7DQo+ICANCj4gLQlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpIDwgMTIpDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDEy
ICYmIGRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMpDQo+ICAJCXJlc3VsdC0+Y2FuX3NhZ3Yg
PSBsYXRlbmN5ID49IGRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXM7DQo+ICB9DQo+ICANCj4g
QEAgLTU2ODQsNyArNTY4MywxMCBAQCBzdGF0aWMgdm9pZCB0Z2xfY29tcHV0ZV9zYWd2X3dtKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5k
ZXYpOw0KPiAgCXN0cnVjdCBza2xfd21fbGV2ZWwgKnNhZ3Zfd20gPSAmcGxhbmVfd20tPnNhZ3Yu
d20wOw0KPiAgCXN0cnVjdCBza2xfd21fbGV2ZWwgKmxldmVscyA9IHBsYW5lX3dtLT53bTsNCj4g
LQl1bnNpZ25lZCBpbnQgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5jeVswXSArIGRl
dl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXM7DQo+ICsJdW5zaWduZWQgaW50IGxhdGVuY3kgPSAw
Ow0KPiArDQo+ICsJaWYgKGRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMpDQo+ICsJCWxhdGVu
Y3kgPSBkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzICsgZGV2X3ByaXYtPndtLnNrbF9sYXRl
bmN5WzBdOw0KPiAgDQo+ICAJc2tsX2NvbXB1dGVfcGxhbmVfd20oY3J0Y19zdGF0ZSwgcGxhbmUs
IDAsIGxhdGVuY3ksDQo+ICAJCQkgICAgIHdtX3BhcmFtcywgJmxldmVsc1swXSwNCg==
