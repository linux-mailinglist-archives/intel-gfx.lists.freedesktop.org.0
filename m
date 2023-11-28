Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A347FB88D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 11:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0BEC10E4CD;
	Tue, 28 Nov 2023 10:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC0110E4CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 10:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701168623; x=1732704623;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=t7fEMrXu/oFPd8rKm5QEtzv4HTKPNHAf94cNPIiOq9c=;
 b=m57E04wQ3v4ahSQcztR9jDKSQBd8HDzof6whR4hNpnNmITQGBa4qRaZr
 Udp/E2eSuUY0xVhIAq2bpQH3By2CPtHIlzC8PYRDugjd0oqkylNYHRRV7
 13j3Gi4+K9RFs10sHHgJmpQWjMjNz8ath7yC3QG1fy55oTt1PLGeIu20u
 0QLTNEUxxKVw4RbmN/78g5krMJoypkDMA8gOlmkM6t/GqyieoDXUmMogg
 mV2RlGgjNr+vHMe6bJwhn0NoHfiJwz7fIrqJ9wLasDIRyeBDNImDHpbdm
 e5X2uvvyuh3ukYkifCgpqH3YlLOp+YoNvk+UQfwWGF+bgdoza3ftbIBod w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="6158309"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; 
   d="scan'208";a="6158309"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 02:50:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="859386640"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="859386640"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 02:50:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 02:50:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 02:50:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 02:50:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 02:50:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akZ5/FhxdHh7Fy0jQJub6Oww47bLLvipXA7XIy4flQnPmKF/FIqi1Y72kSZts0rIgk6I8/7IriaFDG3ZDET8MAnkYMNYul90YvomODXFNsMs5qLauiYVjv8Af43ZAwYQYF6Cvc4uRnilHSRIcHVyjIfgQ0x2FMAHZ5EtMtXuQI41IwpqdLRsxsmVhnasFB3N/6T5cnRTYIAUjImIH1cp56jKWgnm23JE0lLR43cMK8JmAuN1tq+GTF8zt5qAKMJkhgvkxwN9nBT7ZXNZQlAbwTmI4MWjnyCfNtNxEkfNGashp8b6A3UaCNQNTRJFMmEwlddAShvji7aTLt2rk02N9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t7fEMrXu/oFPd8rKm5QEtzv4HTKPNHAf94cNPIiOq9c=;
 b=F7lbAy2NwREX/Vm8qMQpRJAXG1xYuR+WFeDOJgnvtSyzd2Ge4CuWYqKFLcq6/XDZx5fw+NumOezpH3qGVckHd3e4R3p7LOjcNfK5EIvmUUxRcgDtA7Qi1MPmKqh5/1tbcVDS4UiLX/9JKePkijadG4esaLGgZz4s/GK/sR7FJHUQHRfHjbMMYLHtV9Uu9R5bOi41p/0B03x44wwnvNSM8XCvWDWNb7Fa/irdK+Ww6CIltjGoRQppXCGaLRaeIkIPFi7ACwIjN9JjDUa5BRXba8RzYPIxMoHX7PiQRjAydGOFEnrNwmhBC7cwKQoTOtmULt9LDxYWkmSZDryNPSFEig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ2PR11MB7520.namprd11.prod.outlook.com (2603:10b6:a03:4c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Tue, 28 Nov
 2023 10:50:17 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 10:50:17 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
Thread-Index: AQHaIUnaqMdlg7GqSE2Omyt0uWS8xbCOeXQAgAEUtsA=
Date: Tue, 28 Nov 2023 10:50:17 +0000
Message-ID: <MW4PR11MB70548C56CE6E677F0A47BB40EFBCA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231127154702.979401-1-mika.kahola@intel.com>
 <170110906486.56286.5753363562301794958@gjsousa-mobl2>
In-Reply-To: <170110906486.56286.5753363562301794958@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ2PR11MB7520:EE_
x-ms-office365-filtering-correlation-id: 72d89dcc-7919-4c1d-4183-08dbefffcef4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5k74smTlrrWUKmGwvhErQyS+XMc4yo4oqY5F3o5Wp7gtteZS9C/V1USDMlDKG9lDorRiabnF4A347FDlNx3RAzlTUpEnfoJXiMW7EnIvGUEQeMTOoO8dV5lyE5e7uEQGDDATfY9DUN8Zos99eFL7hbvRZDrJUwpLx4L2Cw20IoSa9WnTulgxjnbHkwxIi3dJIHVOjp+ws9EVeIMl9x13zP0xcuLtYYVsWBs7ANJQ2A4nNTPfP5XC1q/DyM23Xxri1bciq6CpGurrAChWk+ZBTP+LY4cqhc0P1xZeSephEkaqk2qm4supKDWokcicaVVZ8lN9ouzgWxvpGowzjQreWVNTrwhhPYk/ebRMdmlgDQ5o5qdLKPbDHX42Uk3nJ0L2XPFBZkreP174Ki3JrXcBKk7EQCXUAugH4GAbgoY4wiBJ8imx66QdJOCP37EJqBtxQQY8scATxNpRnSMCzv5JEBv9wSrhEuT7Spj+hM1ISk2Dx8zY2q9cK8oiOh9vQgpnzSyA+/6oenrDhRKoAmtYCJS2JuLVw9Rkvl3AAneV6JlvParLEBSArTxy4xBdG+//EAW4uuKIdhy55+0W5OeN7W25Ok9Bcsa1FohmsekKrjDaOT4OiBsX6hepfnD3dRhv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(376002)(346002)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(55016003)(9686003)(71200400001)(478600001)(26005)(122000001)(82960400001)(86362001)(38100700002)(33656002)(38070700009)(5660300002)(2906002)(83380400001)(15650500001)(41300700001)(4001150100001)(53546011)(7696005)(6506007)(316002)(66556008)(66476007)(66446008)(64756008)(52536014)(110136005)(76116006)(66946007)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWIyUC9qRkg2ZXZRTXBPZzFNQkZuU0FzeW9GN1B2YnpxK1lJbUZwT25lckQx?=
 =?utf-8?B?ZGd2a2xBeElNK01hNDRJSTlCWllIQjFDSTlyWHFWdkpLOVZ1bXF0b2dnMkJ4?=
 =?utf-8?B?NWlTL1FiUC9lRURJMTJCRU8vUWMwVHdzd0p0SmVQY3hLRHFBM3ZGcURFcGFU?=
 =?utf-8?B?N0kyZGpFODNPQ25Yb0prb1dKZittTFB0MitvTHpENi9CVmVmL1o3NWxrU2pF?=
 =?utf-8?B?NVpoSzNWYUwzbitrbmx3R2JsbW1sd3d3VW8rUlNGeEpwOEd5bTJYbHlNRGVI?=
 =?utf-8?B?TmxiVzZaZHBidDBrcVJMd29oQ0tvNkhJYkVqWCtlRWExTndYSHpub1dCNE1R?=
 =?utf-8?B?aWpsd0xkYUg0cjRvRC9HcE1RNzJBbG9LbDhTRU5aN3FvMEZ5Q1Z2STZETm5M?=
 =?utf-8?B?R0pSZFhFcEYxWXk2Y2FGZ3BBZlNyVnVra3dJVVBYbFhHbzNsQW9ra1FNRHBw?=
 =?utf-8?B?eTJGTnNBdStxMW5ETUN1OE02UnVoM3VIbzBTcEV3aks2eXBEN2dvSHUvUitN?=
 =?utf-8?B?dUk2b3B3aTRNc0dmSlBIYXE4Y1hHOEJ5N0hmbGVEbWxZYVJtZnhDbDExUmFv?=
 =?utf-8?B?VUtuNnZtRDdReklRSDNlWXpEWUVuRXFLM3FMMGZzNDFxN0JGMGM0SHFoWDcy?=
 =?utf-8?B?M0g3SFBobS9qMy90Vkg1OUM4Z1dydVFyNkpMOWtiWEg2UDBZazZacmZKVXBX?=
 =?utf-8?B?RjA3bWhqMnBTTlBRbW1qbXlFMnM0eGlNVEJ3SzR2dGo1MGxNNHZibVpWUjJv?=
 =?utf-8?B?UTAwWnQrazdIY3FvUEFWWHNpcnNpSGxDazZ0ZTJlNVBSRE9QYUt4NVoyTlk2?=
 =?utf-8?B?cXhXK25Kb3BxRUh0bURwbERBOEMxU3dxczZSRmgrdFRMOE96VnVCWFVoUWlD?=
 =?utf-8?B?Vy9TWXB0b053eVZKRFFEV201ZVVoKzFQSDIySHJ6RmM5c2dFL3EwQnBiMGE1?=
 =?utf-8?B?VmI5d21NOGpTOGdWUVZHOHlLK0tjY09qNlRXTi9IcElRY0xtV29NbmJKWmov?=
 =?utf-8?B?N1JyOFVGWkE0b1FnSmozeXV6MzROTzkyN3EzQ3loUXVEOU1EdVRnSXhoS0xS?=
 =?utf-8?B?TjVMQU1jaHBZeUZndUpPNUdrYzdsRUZRVjE2S1czbkN0WlN4RytBVzhmTTdD?=
 =?utf-8?B?bVNmYlRrcktzdG82bTBWV3RIbnQra2ZORU5NbzlmTmo5TjhzeC9URjZDQVNl?=
 =?utf-8?B?VW03QnlOYW95Tkc1TyswK2JUcC9JQmEvU1U1Tk5Sc0FXdWNlNmQwNGduL2sr?=
 =?utf-8?B?azcxY0poTzhrUWFsUWVoWTNrVmFKMktCbFBUUy9NYVFJV3A3cVlPZldUcG5W?=
 =?utf-8?B?YTNsSHdZc2Jrd1dsUnBHRzVmZmY4WHRCK2tVbTNsWVMrVXdCUFJvNmNEOUlp?=
 =?utf-8?B?bG1OZzBZd3NkTmxmcVl0NVh2SmZEaXZJbGNLRGUyTE5uenF3Ti9uR3A5cjVJ?=
 =?utf-8?B?bGgyZzJudTN1ZEhYMElIb2tZcGhTZW1waFNWaVMxLzhvdXBQMUhFMjRLUjA3?=
 =?utf-8?B?bjBCWXEvWmp3Sk5veXlIVkQrNzdweXBXK0pKeWMrZU9Rem5kdjNwQi9iWjg5?=
 =?utf-8?B?WUhZNVNSK0pXbFk5NmpKMEtnOFovOURJK2VVdVhFUHJGNE5kS1hQUGpKdFpm?=
 =?utf-8?B?UEgxTFgzOFM3K2pPeU1oWGQ2RjNCMGdPNDJXa25TRFZXWUI0UUVpZ25CcEVa?=
 =?utf-8?B?c2JoZ2lrS0g5TUZscnhkcWRVSDRob2loM3QralJ0MVdmUjhwNmNtM0UzMVdM?=
 =?utf-8?B?cDUrQWRZeDFWZ0VEUE9EdUJaMXg5dEZQSDFVS3VDZlB2aXZlVi9hSnpZZlpm?=
 =?utf-8?B?NG4yZFJRQkk5a093cXVHZTltNENkUzZCOFdKbTRyZDJGRFo3THB1NGZCaWdO?=
 =?utf-8?B?ZDZUaXlTaVlKem52T2Q4OHZVUk1yeTVKR3UvZlhFRHl4S2dFRWQ0QnhXZ0l3?=
 =?utf-8?B?U29hVkNGYUNFaHNsc1d0ZnJLVzRrdXh5b2I5bG9SZXd1K2s5U1lSR2lEWU5j?=
 =?utf-8?B?Y2ZucWxtNVRwb082UEdnTkdybHlIVStsNi83UTlDRnprTXc0QVJxVkxydkd2?=
 =?utf-8?B?NEJ6VllhSjlySlNqbjYwVTc2SDlYVFpsbFptZXppalJOMkN3SlpFUUUwWUhT?=
 =?utf-8?Q?v7QiEAacXILvqtB5NoGAef21q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72d89dcc-7919-4c1d-4183-08dbefffcef4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2023 10:50:17.0454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cEUe96IQ0Q94AN57HyCewy2z2KlW8KRAZrMnBAS6wzhjAUj/ia2Ibny9hN69CnupZsPtWCphm7H34cM2lyttg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7520
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjcsIDIwMjMg
ODoxOCBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBb
UEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNraXAgc3RhdGUgdmVyaWZpY2F0aW9uIHdpdGggVEJU
LUFMVCBtb2RlDQo+IA0KPiBRdW90aW5nIE1pa2EgS2Fob2xhICgyMDIzLTExLTI3IDEyOjQ3OjAy
LTAzOjAwKQ0KPiA+V2l0aCBUQlQtQUxUIG1vZGUgd2UgYXJlIG5vdCBwcm9ncmFtbWluZyBDMjAg
Y2hpcCBQTEwncyBhbmQgaGVuY2Ugd2UNCj4gPmRvbid0IG5lZWQgdG8gY2hlY2sgc3RhdGUgdmVy
aWZpY2F0aW9uLiBXZSBkb24ndCBuZWVkIHRvIHByb2dyYW0gRFANCj4gPmxpbmsgc2lnbmFsIGxl
dmVscyBpLmUucHJlLWVtcGhhc2lzIGFuZCB2b2x0YWdlIHN3aW5nIGVpdGhlci4NCj4gPg0KPiA+
VGhpcyBwYXRjaCBmaXhlcyBkbWVzZyBlcnJvcnMgbGlrZSB0aGlzIG9uZQ0KPiA+DQo+ID4iW2Ry
bV0gRVJST1IgUEhZIEYgV3JpdGUgMGMwNiBmYWlsZWQgYWZ0ZXIgMyByZXRyaWVzLiINCj4gPg0K
PiA+U2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4g
Pi0tLQ0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwg
NyArKysrKysrDQo+ID4gMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMN
Cj4gPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPmlu
ZGV4IGE4ZmE3NjU4MDgwMi4uM2EzMGNmZmQ0NTBjIDEwMDY0NA0KPiA+LS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID5AQCAtNDE4LDYgKzQxOCwxMCBA
QCB2b2lkIGludGVsX2N4MF9waHlfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ID4gICAgICAgICB1OCBvd25lZF9sYW5lX21hc2sgPSBpbnRlbF9jeDBf
Z2V0X293bmVkX2xhbmVfbWFzayhpOTE1LCBlbmNvZGVyKTsNCj4gPiAgICAgICAgIGludGVsX3dh
a2VyZWZfdCB3YWtlcmVmOw0KPiA+ICAgICAgICAgaW50IG5fZW50cmllcywgbG47DQo+ID4rICAg
ICAgICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9DQo+ID4rIGVuY190b19k
aWdfcG9ydChlbmNvZGVyKTsNCj4gPisNCj4gPisgICAgICAgIGlmIChpbnRlbF90Y19wb3J0X2lu
X3RidF9hbHRfbW9kZShkaWdfcG9ydCkpDQo+ID4rICAgICAgICAgICAgICAgIHJldHVybjsNCj4g
DQo+IEkgdGhpbmsgd2UgY291bGQgbWFrZSB0aGUgY2FsbCB0byBpbnRlbF9jeDBfZ2V0X293bmVk
X2xhbmVfbWFzaygpIGhlcmUsIHRvIG1ha2Ugc3VyZSB3ZSBkbyBub3Qgd2FzdGUgdGltZSBkb2lu
ZyB1c2VsZXNzDQo+IE1NSU8uDQoNClRoYXQncyB0cnVlLCB0aGFua3MhLiBJIHdpbGwgbW92ZSB0
aGlzIGludGVsX2N4MF9nZXRfb3duZWRfbGFuZV9tYXNrKCkgY2FsbCBoZXJlLiBUaGlzIHdheSBp
dCBpcyBub3QgY2FsbGVkIGlmIHdlIG5lZWQgdG8gYmFpbCBvdXQgZWFybHkgZnJvbSB0aGlzIGZ1
bmN0aW9uLg0KDQotTWlrYS0NCg0KPiANCj4gV2l0aCB0aGF0IGluIHBsYWNlLA0KPiANCj4gUmV2
aWV3ZWQtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiANCj4g
LS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPg0KPiA+ICAgICAgICAgd2FrZXJlZiA9IGludGVs
X2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oZW5jb2Rlcik7DQo+ID4NCj4gPkBAIC0zMTM2LDYg
KzMxNDAsOSBAQCB2b2lkIGludGVsX2N4MHBsbF9zdGF0ZV92ZXJpZnkoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gICAgICAgICBlbmNvZGVyID0gaW50ZWxfZ2V0X2NydGNf
bmV3X2VuY29kZXIoc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsNCj4gPiAgICAgICAgIHBoeSA9IGlu
dGVsX3BvcnRfdG9fcGh5KGk5MTUsIGVuY29kZXItPnBvcnQpOw0KPiA+DQo+ID4rICAgICAgICBp
ZiAoaW50ZWxfdGNfcG9ydF9pbl90YnRfYWx0X21vZGUoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIp
KSkNCj4gPisgICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+Kw0KPiA+ICAgICAgICAgaW50ZWxf
Y3gwcGxsX3JlYWRvdXRfaHdfc3RhdGUoZW5jb2RlciwgJm1wbGxfaHdfc3RhdGUpOw0KPiA+DQo+
ID4gICAgICAgICBpZiAoaW50ZWxfaXNfYzEwcGh5KGk5MTUsIHBoeSkpDQo+ID4tLQ0KPiA+Mi4z
NC4xDQo+ID4NCg==
