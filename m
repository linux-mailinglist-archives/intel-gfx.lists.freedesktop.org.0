Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B9480A2C3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 13:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EA410EAA2;
	Fri,  8 Dec 2023 12:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D994110EAA2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 12:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702036869; x=1733572869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=09lJg7/j9kjV8IVPIY/L1UU+ltgajUe15PJPORT1rZc=;
 b=LUma5oj8ECtct30gvzM/3gY+/CnCCGQC+8dd9FW9gft74Vm5i6A8YGh3
 qrwUPzTLUEMCUkam577/Y+Qzb1OrX2hh9v77mU9esk1URchql1PpoQYSv
 bFJZvwRL9mXiEOpQhTA7oxo2K5y/OEa5BfzUMR8vYr7AJQSKeXQDOxtv8
 5CsXvsil25I5UKqMf9T9LMcZaEML8iBNfjJuIMIy5oaCW0t45xeKSgVca
 rF1Bhe0+Q+zLWtEkiLoXwo1sCBCX/PfpawZ6/G+vwNifw03GYBSqsmhke
 9TLS3r0oYsZoo+UUR+3AUKSm79WB5JIXE5Vnb/h1HFiADCgQoQxo2izt1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="15947959"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="15947959"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 04:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721850610"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="721850610"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 04:01:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 04:00:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 04:00:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 04:00:59 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 04:00:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kEw0KTuEqrx5M6b9uMfkGuTgeofFZJrYTdsw43ZAB5AIzPRzl5ywxxLCuOgM+aE16qFJmeDYkKLuJwsvM5/HNnX/r1JylxPtPY9lhEqzMxSfi8KUt9pYkglyyxMcChhhbe5bQmsX/RQz5Mm66Evu+Nj0YLl88JSFDnQYGzeghYe1pmLuT7LH4PLXOHvs+E7+/XkezQvH1DjFyFvvuivR+bWXNdDGivtmn9pY4A6sAgBQYAtwaVU2X/BXTu16oXJ36O9mbmfVeidjUSOZ1NmhrxzYz3EFWxfz3s6gBqu2dHBLnIyNnJU47DQnuqzGNolT4Dkvr/ei4bK/xkEf3F7gGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=09lJg7/j9kjV8IVPIY/L1UU+ltgajUe15PJPORT1rZc=;
 b=OCJ2XM74dquVIZC8VGphAo9kIEthNH+ilzyge++iEVIqysT2SFjXsCy2BvGUxwLrKJe1kN7qWjiygu67GuC+dN9CCZ/ewMquEklaoNkXR6mZrk/5JnT7nZxBMTyIqFGIi+Qnxo7Y7uDyUHGzJMkIM/TM5FrZpd0gdqueFDZUl9R5aBgm/Q/JplWqbB4YdaSPz8VxQbQwh2apWzimMeWeZpet0MmPBJkYEMPKnzuyhhwxopYytRsdgtWncWPLKmm06Ih5FcTluQtAYNdIIqcng8CrdSKOYyf7Y0tPqnioA2MMC5YwKKfdYl51TNC72rse22i990mNIQNtgUv9h+6t/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8210.namprd11.prod.outlook.com (2603:10b6:610:163::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 12:00:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7025.022; Fri, 8 Dec 2023
 12:00:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/3] drm/i915/mtl: Rename the link_bit_rate to clock in
 C20 pll_state
Thread-Topic: [PATCH 3/3] drm/i915/mtl: Rename the link_bit_rate to clock in
 C20 pll_state
Thread-Index: AQHaKVprObQVy0dAOkWgGCgFnmh8/7CfSZNg
Date: Fri, 8 Dec 2023 12:00:54 +0000
Message-ID: <MW4PR11MB7054567FED86F41FB9E67692EF8AA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
 <20231207221025.2032207-4-radhakrishna.sripada@intel.com>
In-Reply-To: <20231207221025.2032207-4-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8210:EE_
x-ms-office365-filtering-correlation-id: bbbb102d-0234-42b5-fe8c-08dbf7e5551e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UaOfQUtSpnnJF8NSlUvhSQNPZt8JtMR3c5nPocIpHAwI3gFbA31WLgW2Lk5o0OcDmffCfryfNSFLMmQbC0RDfsAnWmG25+HrNeCvCH1mN/ttJn5g24VZsDmcTG4AnVOWkOO2IwEg9XZxeYDX3PIZcQyuKl/e0GW6UHqy+q7ynAdz/f5qtgktCeH5KHUMwZS+9gTvtGDQHAMi16uqpIEC1LbjOTpbpusM94k1/JrF2RxZhU7jYtCx0jH32n+rrS9J8Wz+32hv4LRYkCt98qv1qRKaUK+ymjJX2wFhp0BNgKapu6kloY4UKeLhdyEv0k9Cb69akN1aGQRXvq7vHqS+bq5gp6v7NuDBrFUzkzHiSNtEqAfKx4EjaJrAHkLR+UFVde0A7IJr6koaiS8S2pUGu1m3pie+X9Aq8j0aZ7v4FvRkPogYOPf0moSJLlAaByFJMAFAOXxK2f8PldIlCXd8KUjQT0Skp6gTI8My2oYlku6Y+p9Uwm1EFmRktlBsE+IDCWBYtYr7M1CR3xs2PjRbnw4Zyy00BbANk0WOb4PY+P7oKNWvq7ScOkTDbTiPeCp1hYQfOWACCzoTVFdIhsQSnt7VEZQwjj2RgtfjOW0rZ5idKsfYISptvT12ZmFxRSHH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(366004)(396003)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(83380400001)(9686003)(26005)(107886003)(7696005)(33656002)(6506007)(71200400001)(53546011)(478600001)(122000001)(316002)(110136005)(66476007)(66946007)(66556008)(64756008)(76116006)(66446008)(38100700002)(8676002)(8936002)(86362001)(4326008)(52536014)(5660300002)(2906002)(82960400001)(55016003)(38070700009)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vlh3cGRIU1hlVmN4cFRUMzNEQ0lRUXV0Q3REaHpWQkQvMVNlbTArWUdHRGR5?=
 =?utf-8?B?Z2VicXhwWVJ1WGk0aXQ2elRtT2NvMTNwL0JhTDF1VWkxdXUyeFV5K0pvMzRP?=
 =?utf-8?B?emk0Y0NhUnFHTzU0T2oxTnVvVVNpeXY1TWVKY3NpZ1RvWENHbXlOTFVRQkhK?=
 =?utf-8?B?ZlI5KytrTUxacTY0eldsU0lNTTE5d25Ebm5SaFpuamlIV28yRWJtMHFWU25n?=
 =?utf-8?B?TW5BTWcvZ0NWczdIbTZYNVVpcmFFSU04ejhWVThEbUlRWVdoZjhZTjBUeGZI?=
 =?utf-8?B?aVd0NnM0VW9aa1l0S0R6enhRbDNla2N0azM5VTRGOEY2QXFpSDNaZGEzeThs?=
 =?utf-8?B?ZmpGZ3JYWEg4dkEreWMzck1Rd0RYcnYvR205YVFUYy9mV2lIWHhBUUhMT0NU?=
 =?utf-8?B?em53cklpQXJGaWdsUmxNMHVXYnRUWkRKMTdwZzFQMFJJRjdienVwUENVY3ZC?=
 =?utf-8?B?cDBXMFBzOVdLQnp1WHlaRDVQSGI5SGlCditPT041dnk2N1UwaFlDYVJuVm1E?=
 =?utf-8?B?ZTYvL20yRElucFEwNFkwT0g2OHpDTUFzVWNWaXVMbUcrOU8vNUNYV3N2RnpQ?=
 =?utf-8?B?MHRVOTAvK0xCUkFwSGo2RDJFbTZwc2dvMGVpYTZkNkJKM2xKb0lGU1Q3b1cw?=
 =?utf-8?B?VWg1OUhqcDE0TDA0bzNOM0FBTGxkeFdseHNrVy92WU16S1FGSXNIRWtBUGgr?=
 =?utf-8?B?U0J2ZmRpWXQxRVc1TWhUcXVXWUhkTmFXL2hlN0lqNU05N2tCUGxCYmRRdWd4?=
 =?utf-8?B?K08xMGIxTE84OWlsanNoK0RPbnhza1lWbTF5bS8xQThES1RkL2VVWGVMTzhm?=
 =?utf-8?B?bG85aDhKZit6eTZHRjBwWnZPazJGekMwaXFubVJSVGg5ZlpTV2pvWXhxZ1Az?=
 =?utf-8?B?WmQrb0V2Vkx2SDNRUjZGVi9nL3B6UFhXUWhicS9JSW9YeFhuSU1rWXlYdFJt?=
 =?utf-8?B?aElLa0V6TG5WZUI5dW92bTBDME5xdXQxcUN1cVozYnd1VzZ4VU05QU1zMVR6?=
 =?utf-8?B?c0xoN1ljcnQ2S0FZS1hJd250aHlFanRKeGk0aGlzMWNhQjMzcVFaK3hJSW9j?=
 =?utf-8?B?Qm41bzhTakdCSHVuQkc3U3NOZ2RmeCtuWmU3aG1vZGFHTHdldSt3RDNVOGlB?=
 =?utf-8?B?OHZsTG13MkhWZGEyVHNRc3NrUzR0eldMd0lwSWNIWTFUWXFSQWN5ZmpEZjlV?=
 =?utf-8?B?YVU2cTB6RXU1QkNzVi9DQjYxZzFGS2x2ZkFJZHRBNTNlc2ovaGoyKzRaaGdC?=
 =?utf-8?B?OVgrTHhPSy9BbDRjZmpXd25mT0dGM2hkbG44dTJDNFBRcFN3cVFTaHJEb0NC?=
 =?utf-8?B?U2xIZ1k4SG1rby9Bb3E4ckZUSTY0Y3lYaVlzdjFLZ0Q2QytEZnVDdyt5Z1dp?=
 =?utf-8?B?VDlZQTU1dklkSHBNVnJFTGtlL0V3T1VlNUZpeTRkQXhGSWRwYU1Mb1lsYk1p?=
 =?utf-8?B?bjVNeFdoWllHRndmRGgyb2g0VmdJRHVKa1UwYjlQdUx1NEVtWEdKWW1ZMmt1?=
 =?utf-8?B?NjljRHptZGdlVVFrMmVnTnhpV0hVNDJSYjkweTNmYUlwNlBDd3N6aHM3eW05?=
 =?utf-8?B?TVRhVThWUFJXaVhoS0RBN0JBdTN5UVlwQVdkeGlkZ3BTa1paMHFVTy9uOHpr?=
 =?utf-8?B?V3RDVlhJZHZaaVZOMmxvOWdiRDFLNm1rdW9QeDlzcHAwaEUwTWc3SE5ndlNQ?=
 =?utf-8?B?NHNCTEVIRnpKR1EyT2ZndEczb05FVVQrZlVVSyszbk8rL2d3eWczUWordHFm?=
 =?utf-8?B?VEo4S2JRdGhxL0ZzbExZVVJDRVEzK3JOd1c3VjQ3UFBEWmhYa2NJR2djRmlu?=
 =?utf-8?B?YThlOXgvbjhNbXNkNUR2eCt4d3hsd3lwZ25jNTBOWlJPQi9Xc0FvamdpSHNn?=
 =?utf-8?B?ZXUrN2pYN3dBWWlBYWF5eGNTMDhoWEZOSXdabGdjNmFVVFY2cjBMVGU1SE5i?=
 =?utf-8?B?YWZFL0FhbU5ENUU5eDB1QndXOFk1NWRKR3pYS1oydm9SUTF6Rk5ObVp0SVQ5?=
 =?utf-8?B?RDZhdldqUmYzV0dzM1IrZ0Y3QXN6R201RlBhWTh2WDZkTmIza1RmaXZDMlhp?=
 =?utf-8?B?WGtURE9WWmw4c002SFhoVlliM1pwc3l2UHl0ZFF3c3FacWl6L1VmZVBxYlND?=
 =?utf-8?Q?F3dhLpRsi1CezuQG4WwE4hIhb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbb102d-0234-42b5-fe8c-08dbf7e5551e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 12:00:54.9106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S4LRkksCr4QNaZRsVHt2eJJRbka4DCcJRD5vLMql4kJND4MXtYlyTlRR4DiEBUNo2f1VN39fcVz2jr4SgNSrMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8210
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTcmlwYWRhLCBSYWRoYWtyaXNo
bmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBEZWNl
bWJlciA4LCAyMDIzIDEyOjEwIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+IENjOiBTcmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGlu
dGVsLmNvbT47IFRheWxvciwgQ2xpbnRvbiBBIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFU
Q0ggMy8zXSBkcm0vaTkxNS9tdGw6IFJlbmFtZSB0aGUgbGlua19iaXRfcmF0ZSB0byBjbG9jayBp
biBDMjAgcGxsX3N0YXRlDQo+IA0KPiBXaXRoIHRoZSBjbGVhbnVwIG9mIHRoZSBtaXNsZWFkaW5n
IGNsb2NrIHZhbHVlIHRvIGF2b2lkIGV4dHJhIGNhbGN1bGF0aW9ucyB0byBjb252ZXJ0IGJldHdl
ZW4gbGlua19iaXRfcmF0ZSBhbmQgY2xvY2ssIHVzZSBvbmUNCj4gc3RhbmRhcmQgImNsb2NrIiBm
aWVsZCBmb3IgdGhlIGMyMCBwbGwgd2hpY2ggd29ya3Mgd2l0aCBjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrIGZpZWxkLg0KPiANCj4gQ2M6IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRl
bC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQpSZXZp
ZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQt
b2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jICB8IDQyICsrKysrKysrKy0tLS0tLS0tLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyICstDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIyIGlu
c2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gaW5kZXggZDUxOGI1NWQ1MTUwLi40ZTZlYTcx
ZmY2MjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3gwX3BoeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeS5jDQo+IEBAIC03NDUsNyArNzQ1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9j
MTBwbGxfc3RhdGUgKiBjb25zdCBtdGxfYzEwX2VkcF90YWJsZXNbXSA9IHsNCj4gDQo+ICAvKiBD
MjAgYmFzaWMgRFAgMS40IHRhYmxlcyAqLw0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9j
MjBwbGxfc3RhdGUgbXRsX2MyMF9kcF9yYnIgPSB7DQo+IC0JLmxpbmtfYml0X3JhdGUgPSAxNjIw
MDAsDQo+ICsJLmNsb2NrID0gMTYyMDAwLA0KPiAgCS50eCA9IHsJMHhiZTg4LCAvKiB0eCBjZmcw
ICovDQo+ICAJCTB4NTgwMCwgLyogdHggY2ZnMSAqLw0KPiAgCQkweDAwMDAsIC8qIHR4IGNmZzIg
Ki8NCj4gQEAgLTc3MCw3ICs3NzAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBs
bF9zdGF0ZSBtdGxfYzIwX2RwX3JiciA9IHsgIH07DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9kcF9oYnIxID0gew0KPiAtCS5saW5rX2JpdF9y
YXRlID0gMjcwMDAwLA0KPiArCS5jbG9jayA9IDI3MDAwMCwNCj4gIAkudHggPSB7CTB4YmU4OCwg
LyogdHggY2ZnMCAqLw0KPiAgCQkweDQ4MDAsIC8qIHR4IGNmZzEgKi8NCj4gIAkJMHgwMDAwLCAv
KiB0eCBjZmcyICovDQo+IEBAIC03OTUsNyArNzk1LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9kcF9oYnIxID0geyAgfTsNCj4gDQo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2RwX2hicjIgPSB7DQo+IC0J
LmxpbmtfYml0X3JhdGUgPSA1NDAwMDAsDQo+ICsJLmNsb2NrID0gNTQwMDAwLA0KPiAgCS50eCA9
IHsJMHhiZTg4LCAvKiB0eCBjZmcwICovDQo+ICAJCTB4NDgwMCwgLyogdHggY2ZnMSAqLw0KPiAg
CQkweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gQEAgLTgyMCw3ICs4MjAsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2RwX2hicjIgPSB7ICB9Ow0KPiAN
Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfZHBfaGJy
MyA9IHsNCj4gLQkubGlua19iaXRfcmF0ZSA9IDgxMDAwMCwNCj4gKwkuY2xvY2sgPSA4MTAwMDAs
DQo+ICAJLnR4ID0gewkweGJlODgsIC8qIHR4IGNmZzAgKi8NCj4gIAkJMHg0ODAwLCAvKiB0eCBj
ZmcxICovDQo+ICAJCTB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiBAQCAtODQ2LDcgKzg0Niw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfZHBfaGJyMyA9
IHsNCj4gDQo+ICAvKiBDMjAgYmFzaWMgRFAgMi4wIHRhYmxlcyAqLw0KPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9kcF91aGJyMTAgPSB7DQo+IC0JLmxp
bmtfYml0X3JhdGUgPSAxMDAwMDAwLCAvKiAxMCBHYnBzICovDQo+ICsJLmNsb2NrID0gMTAwMDAw
MCwgLyogMTAgR2JwcyAqLw0KPiAgCS50eCA9IHsJMHhiZTIxLCAvKiB0eCBjZmcwICovDQo+ICAJ
CTB4NDgwMCwgLyogdHggY2ZnMSAqLw0KPiAgCQkweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gQEAg
LTg3MCw3ICs4NzAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBt
dGxfYzIwX2RwX3VoYnIxMCA9IHsgIH07DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRl
bF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9kcF91aGJyMTNfNSA9IHsNCj4gLQkubGlua19iaXRfcmF0
ZSA9IDEzNTAwMDAsIC8qIDEzLjUgR2JwcyAqLw0KPiArCS5jbG9jayA9IDEzNTAwMDAsIC8qIDEz
LjUgR2JwcyAqLw0KPiAgCS50eCA9IHsJMHhiZWEwLCAvKiB0eCBjZmcwICovDQo+ICAJCTB4NDgw
MCwgLyogdHggY2ZnMSAqLw0KPiAgCQkweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gQEAgLTg5NSw3
ICs4OTUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIw
X2RwX3VoYnIxM181ID0geyAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2My
MHBsbF9zdGF0ZSBtdGxfYzIwX2RwX3VoYnIyMCA9IHsNCj4gLQkubGlua19iaXRfcmF0ZSA9IDIw
MDAwMDAsIC8qIDIwIEdicHMgKi8NCj4gKwkuY2xvY2sgPSAyMDAwMDAwLCAvKiAyMCBHYnBzICov
DQo+ICAJLnR4ID0gewkweGJlMjAsIC8qIHR4IGNmZzAgKi8NCj4gIAkJMHg0ODAwLCAvKiB0eCBj
ZmcxICovDQo+ICAJCTB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiBAQCAtMTUxNCw3ICsxNTE0LDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMTBwbGxfc3RhdGUgKiBjb25zdCBtdGxfYzEw
X2hkbWlfdGFibGVzW10gPSB7ICB9Ow0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
YzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV8yNV8xNzUgPSB7DQo+IC0JLmxpbmtfYml0X3JhdGUg
PSAyNTE3NSwNCj4gKwkuY2xvY2sgPSAyNTE3NSwNCj4gIAkudHggPSB7ICAweGJlODgsIC8qIHR4
IGNmZzAgKi8NCj4gIAkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gIAkJICAweDAwMDAsIC8q
IHR4IGNmZzIgKi8NCj4gQEAgLTE1MzksNyArMTUzOSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV8yNV8xNzUgPSB7ICB9Ow0KPiANCj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV8yN18wID0g
ew0KPiAtCS5saW5rX2JpdF9yYXRlID0gMjcwMDAsDQo+ICsJLmNsb2NrID0gMjcwMDAsDQo+ICAJ
LnR4ID0geyAgMHhiZTg4LCAvKiB0eCBjZmcwICovDQo+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcx
ICovDQo+ICAJCSAgMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+IEBAIC0xNTY0LDcgKzE1NjQsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlfMjdf
MCA9IHsgIH07DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUg
bXRsX2MyMF9oZG1pXzc0XzI1ID0gew0KPiAtCS5saW5rX2JpdF9yYXRlID0gNzQyNTAsDQo+ICsJ
LmNsb2NrID0gNzQyNTAsDQo+ICAJLnR4ID0geyAgMHhiZTg4LCAvKiB0eCBjZmcwICovDQo+ICAJ
CSAgMHg5ODAwLCAvKiB0eCBjZmcxICovDQo+ICAJCSAgMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+
IEBAIC0xNTg5LDcgKzE1ODksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9z
dGF0ZSBtdGxfYzIwX2hkbWlfNzRfMjUgPSB7ICB9Ow0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV8xNDhfNSA9IHsNCj4gLQkubGlua19i
aXRfcmF0ZSA9IDE0ODUwMCwNCj4gKwkuY2xvY2sgPSAxNDg1MDAsDQo+ICAJLnR4ID0geyAgMHhi
ZTg4LCAvKiB0eCBjZmcwICovDQo+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcxICovDQo+ICAJCSAg
MHgwMDAwLCAvKiB0eCBjZmcyICovDQo+IEBAIC0xNjE0LDcgKzE2MTQsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlfMTQ4XzUgPSB7ICB9Ow0K
PiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRt
aV81OTQgPSB7DQo+IC0JLmxpbmtfYml0X3JhdGUgPSA1OTQwMDAsDQo+ICsJLmNsb2NrID0gNTk0
MDAwLA0KPiAgCS50eCA9IHsgIDB4YmU4OCwgLyogdHggY2ZnMCAqLw0KPiAgCQkgIDB4OTgwMCwg
LyogdHggY2ZnMSAqLw0KPiAgCQkgIDB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiBAQCAtMTYzOSw3
ICsxNjM5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2My
MF9oZG1pXzU5NCA9IHsgIH07DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBw
bGxfc3RhdGUgbXRsX2MyMF9oZG1pXzMwMCA9IHsNCj4gLQkubGlua19iaXRfcmF0ZSA9IDMwMDAw
MDAsDQo+ICsJLmNsb2NrID0gMzAwMDAwMCwNCj4gIAkudHggPSB7ICAweGJlOTgsIC8qIHR4IGNm
ZzAgKi8NCj4gIAkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gIAkJICAweDAwMDAsIC8qIHR4
IGNmZzIgKi8NCj4gQEAgLTE2NjQsNyArMTY2NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV8zMDAgPSB7ICB9Ow0KPiANCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV82MDAgPSB7DQo+IC0J
LmxpbmtfYml0X3JhdGUgPSA2MDAwMDAwLA0KPiArCS5jbG9jayA9IDYwMDAwMDAsDQo+ICAJLnR4
ID0geyAgMHhiZTk4LCAvKiB0eCBjZmcwICovDQo+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcxICov
DQo+ICAJCSAgMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+IEBAIC0xNjg5LDcgKzE2ODksNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlfNjAwID0g
eyAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxf
YzIwX2hkbWlfODAwID0gew0KPiAtCS5saW5rX2JpdF9yYXRlID0gODAwMDAwMCwNCj4gKwkuY2xv
Y2sgPSA4MDAwMDAwLA0KPiAgCS50eCA9IHsgIDB4YmU5OCwgLyogdHggY2ZnMCAqLw0KPiAgCQkg
IDB4OTgwMCwgLyogdHggY2ZnMSAqLw0KPiAgCQkgIDB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiBA
QCAtMTcxNCw3ICsxNzE0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3Rh
dGUgbXRsX2MyMF9oZG1pXzgwMCA9IHsgIH07DQo+IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9oZG1pXzEwMDAgPSB7DQo+IC0JLmxpbmtfYml0X3Jh
dGUgPSAxMDAwMDAwMCwNCj4gKwkuY2xvY2sgPSAxMDAwMDAwMCwNCj4gIAkudHggPSB7ICAweGJl
OTgsIC8qIHR4IGNmZzAgKi8NCj4gIAkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gIAkJICAw
eDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gQEAgLTE3MzksNyArMTczOSw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV8xMDAwID0geyAgfTsNCj4g
DQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlf
MTIwMCA9IHsNCj4gLQkubGlua19iaXRfcmF0ZSA9IDEyMDAwMDAwLA0KPiArCS5jbG9jayA9IDEy
MDAwMDAwLA0KPiAgCS50eCA9IHsgIDB4YmU5OCwgLyogdHggY2ZnMCAqLw0KPiAgCQkgIDB4OTgw
MCwgLyogdHggY2ZnMSAqLw0KPiAgCQkgIDB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiBAQCAtMTk4
OCw3ICsxOTg4LDcgQEAgc3RhdGljIGludCBpbnRlbF9jMjBfY29tcHV0ZV9oZG1pX3RtZHNfcGxs
KHU2NCBwaXhlbF9jbG9jaywgc3RydWN0IGludGVsX2MyMHBsbF8NCj4gIAllbHNlDQo+ICAJCW1w
bGxiX2FuYV9mcmVxX3ZjbyA9IE1QTExCX0FOQV9GUkVRX1ZDT18wOw0KPiANCj4gLQlwbGxfc3Rh
dGUtPmxpbmtfYml0X3JhdGUJPSBwaXhlbF9jbG9jazsNCj4gKwlwbGxfc3RhdGUtPmNsb2NrCT0g
cGl4ZWxfY2xvY2s7DQo+ICAJcGxsX3N0YXRlLT50eFswXQk9IDB4YmU4ODsNCj4gIAlwbGxfc3Rh
dGUtPnR4WzFdCT0gMHg5ODAwOw0KPiAgCXBsbF9zdGF0ZS0+dHhbMl0JPSAweDAwMDA7DQo+IEBA
IC0yMDI0LDcgKzIwMjQsNyBAQCBzdGF0aWMgaW50IGludGVsX2MyMF9waHlfY2hlY2tfaGRtaV9s
aW5rX3JhdGUoaW50IGNsb2NrKQ0KPiAgCWludCBpOw0KPiANCj4gIAlmb3IgKGkgPSAwOyB0YWJs
ZXNbaV07IGkrKykgew0KPiAtCQlpZiAoY2xvY2sgPT0gdGFibGVzW2ldLT5saW5rX2JpdF9yYXRl
KQ0KPiArCQlpZiAoY2xvY2sgPT0gdGFibGVzW2ldLT5jbG9jaykNCj4gIAkJCXJldHVybiBNT0RF
X09LOw0KPiAgCX0NCj4gDQo+IEBAIC0yMDc2LDcgKzIwNzYsNyBAQCBzdGF0aWMgaW50IGludGVs
X2MyMHBsbF9jYWxjX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0K
PiAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gDQo+ICAJZm9yIChpID0gMDsgdGFibGVzW2ldOyBpKysp
IHsNCj4gLQkJaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPT0gdGFibGVzW2ldLT5saW5rX2Jp
dF9yYXRlKSB7DQo+ICsJCWlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID09IHRhYmxlc1tpXS0+
Y2xvY2spIHsNCj4gIAkJCWNydGNfc3RhdGUtPmN4MHBsbF9zdGF0ZS5jMjAgPSAqdGFibGVzW2ld
Ow0KPiAgCQkJcmV0dXJuIDA7DQo+ICAJCX0NCj4gQEAgLTIxNzQsNyArMjE3NCw3IEBAIHZvaWQg
aW50ZWxfYzIwcGxsX2R1bXBfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
DQo+ICAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgImNtblswXSA9IDB4JS40eCwgY21uWzFdID0g
MHglLjR4LCBjbW5bMl0gPSAweCUuNHgsIGNtblszXSA9IDB4JS40eFxuIiwNCj4gIAkJICAgIGh3
X3N0YXRlLT5jbW5bMF0sIGh3X3N0YXRlLT5jbW5bMV0sIGh3X3N0YXRlLT5jbW5bMl0sIGh3X3N0
YXRlLT5jbW5bM10pOw0KPiANCj4gLQlpZiAoaW50ZWxfYzIwX3VzZV9tcGxsYShod19zdGF0ZS0+
bGlua19iaXRfcmF0ZSkpIHsNCj4gKwlpZiAoaW50ZWxfYzIwX3VzZV9tcGxsYShod19zdGF0ZS0+
Y2xvY2spKSB7DQo+ICAJCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGh3X3N0YXRlLT5tcGxs
YSk7IGkrKykNCj4gIAkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJtcGxsYVslZF0gPSAweCUu
NHhcbiIsIGksIGh3X3N0YXRlLT5tcGxsYVtpXSk7DQo+ICAJfSBlbHNlIHsNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5k
ZXggNmIzNDhkMzI5OTU3Li4yNjE2YmI2MjY3YTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMDIyLDcg
KzEwMjIsNyBAQCBzdHJ1Y3QgaW50ZWxfYzEwcGxsX3N0YXRlIHsgIH07DQo+IA0KPiAgc3RydWN0
IGludGVsX2MyMHBsbF9zdGF0ZSB7DQo+IC0JdTMyIGxpbmtfYml0X3JhdGU7IC8qIGluIGtIeiAq
Lw0KPiArCXUzMiBjbG9jazsgLyogaW4ga0h6ICovDQo+ICAJdTE2IHR4WzNdOw0KPiAgCXUxNiBj
bW5bNF07DQo+ICAJdW5pb24gew0KPiAtLQ0KPiAyLjM0LjENCg0K
