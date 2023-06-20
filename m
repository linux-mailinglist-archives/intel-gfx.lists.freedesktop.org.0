Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC41473766D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 23:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3497510E065;
	Tue, 20 Jun 2023 21:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5817110E065
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687295433; x=1718831433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=22qAYLmaBoAQzyH1p2aQ+WTP38q8BrZI+urR4rQSlYQ=;
 b=NONdWW1Av0keSoXaY8Z5ie2NmeGywzW1RUwF0r+gG5SOjg3ZNZTTwNk2
 RveZYQBI9RR87yqEDDOTNgekkjJEfPxrrpz4ZWKEMcZXHAM2GKIHH2lPb
 uSmHWdre8sQohw+sl/hGgFc+vR3BN3Ac7d72dv6RM0gfh+2tGcL2lU8sP
 VTrOuWY/QyPtI2jroUzJ3wvBVYhtsvNw7Jr7hOizZPgSZK/0Z+kHKXsRe
 i8fDTUrGlfWcECUAGR3zbN7gTIpevaaGqozeFX4jolPbYCUGJo4Nfu+jz
 gCygk0QNfDz2DLXeXXErWGaifceXJ/zHZGTPUmzAZrHrzTecQnnMSn5Aw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="359995162"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="359995162"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 14:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="784251262"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="784251262"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2023 14:10:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 14:10:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 14:10:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 14:10:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mCNILGQ2id16dsIj9JcRglZ6ud7UuJyNwybWGDI4OcYcKSp4g1DLpBvJbTMAsIfL7IzM1q9fxJxIflLATQZNRdra0TH0zoJ2jmByfbII1sNGKBuP4KUCRWUAUybAEg8T0asYNetweiOIQ9uJGgRuWKQMrLz4AljhB7DWNfLTLVctF0xG8OmqDDuF9vb3H2va3dMpff3QAD30S8oQn8ojn7bflY6sXrzXUAkbG7c6s4QeT0QKJWmzJ+wUBjJIRg1NJZzVjTvgKq/OoXY7QIcb8t8AgXLqUQDRpD3FIBY0TxZJFcYvJaTCga1mKdn/7S4AWI43qr2kZKV2dQ5Mhn01lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=22qAYLmaBoAQzyH1p2aQ+WTP38q8BrZI+urR4rQSlYQ=;
 b=hl6C94oQPGMUo7dJb6PQRwqdO9kxrVWJ0w8uGs+ayRjl3/pNZLjnm15qfyboDG2Cn1Ua3CuGISFjTrBLP9O0ZMgNzMY+SUuJDv0/dMyoIazp3KzOyquJJiAzWoxKtYpSXsNGWBHvGaNTgzdpDyK3gpIOVO35aRI+/JRIqw1opmroftm7+fpE2xLGFNXE54n9GDRHaSKFAhvMm1nHzjuOJeEBpqDGIlBgoIDp13r+H/9O7bZXMuhGzdGryYMp57CBgejKf3ou9s+gMn2hlrtGeAm++z9tOBIwOP49dWBJucAKv6lBTDv0cGIai29uFq9InbDzTs5qj0uwYpXhz8Vp7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by CH3PR11MB8495.namprd11.prod.outlook.com (2603:10b6:610:1bd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 21:10:04 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::ccee:3d17:cd7c:909e]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::ccee:3d17:cd7c:909e%7]) with mapi id 15.20.6521.020; Tue, 20 Jun 2023
 21:10:05 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter
 selection on MTL
Thread-Index: AQHZoJXZPX7R5rk4JUudmDnOXF7+wK+UNh6A
Date: Tue, 20 Jun 2023 21:10:05 +0000
Message-ID: <f78a4825e63acc93ae6f4bde4916e66ca1f0c3db.camel@intel.com>
References: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|CH3PR11MB8495:EE_
x-ms-office365-filtering-correlation-id: 3634b025-086d-471c-51e7-08db71d2b838
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u1NEVnPSTiyg8rD2Vt/0u3c1laoPkr3VCU5poIsZDArT1RqmtHOskDryhef/YN4dMEONKnBLix5/4RpuWYJWxCPJyJZ9sME9//rOeCp8IV8atgLgBtx3YPw6Mx34DCAqCcJ0j8CuujFEbUYO4fpqU5N0YL5Eoo1KdoYE2iDtIzEwnvkxI7TvYI2Ob/bPSJ66M64ha2XKRB3kh+7xUZo9O4+HZw7E9ncz0f6nZqqWRR/Vp81qssKMsCjOAstM76xaILWpfLN2/o94lZiW1Nx+vXZ8sxsbxxwlfMOAwl3F56aXPpWrzHvgEV37av82uGmuE5viA72aADbwtHlm0ZXR4UFli6tAD30qwuigZQnAQTMFW4iOHJlXft93dVBTIWbpkKjDqVtm+4QHD/ntlt/6IhoaTt513KhB3AkU26rOZ3n6Or+uxEBAmHdmpFUUdr2FksdhgfVeptF6DLxMhvF/S/mnn861ocbQeRlBuLTOXEA88Uaeezxgy7nnxhmf2rBGEMnTBgnGktUrQg+Sj+8kkBwrtxsGUubIoEyRybo7bG3ZHhM3+aMNNmOBTkEktmDV38ITxAGewBTW66lcFVaQdlrYI0cTxbF2zem7oY8wIJLq82UTwouLK84GQCHe3AM0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199021)(8676002)(8936002)(186003)(82960400001)(6512007)(38100700002)(5660300002)(122000001)(26005)(6506007)(107886003)(71200400001)(86362001)(2616005)(83380400001)(38070700005)(41300700001)(478600001)(110136005)(54906003)(316002)(66476007)(36756003)(91956017)(4326008)(66446008)(66946007)(64756008)(66556008)(6486002)(76116006)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0tpZHJmUFU0TGZLeHd3V1pwOWJ1aG92WUFlUldmSmptUCtNMThNbUFJTXk0?=
 =?utf-8?B?ZkNObFJuYTRuRWprd1BqdWVxK3JwbGgxeWhpTnQ0bCtQSVhYSTJOc09xOHZY?=
 =?utf-8?B?d3hmQzl5R0w0TWQ4YWxOMG1NTkV2Yk1yR3B0Z1QvaUR0c0pmYmNwOEJCa2xQ?=
 =?utf-8?B?ejRZMjNtMHNqUEVOU3lQSVlrSDNoV0tsODJ1d1Ywa3JRNkN2cWJPVW9UUS9X?=
 =?utf-8?B?WXYyVWN4Wkc5aEtoczQxdUJOc2JCSzUxbW9PYVpuYXFDTXpKUFh0S3BCc0tq?=
 =?utf-8?B?SS8wMFJwRzN6VlBmWTVPaE5RSUxSdG9nb0V5cXprb0JYUVFPYy9JUEp3RFZx?=
 =?utf-8?B?NWxQbTFhWncrencvUTBvTVJEajU3bTRVaENvUjlVOCtxd3BYblR3UFpRdm05?=
 =?utf-8?B?dXVidFhFRDZENWFjQmVHR0xqUUhQeElFNXRyTm5LZlI3YXl6MFVuZlY4VFl5?=
 =?utf-8?B?ckt1OE9HSHc3Q2doNUtteUZDRmxDaWVzc3R5Z3VJc2JkUTVXbWYvV0F2VGVr?=
 =?utf-8?B?ajI1SGdObWFPc0Z6bDhxeHpUcXhHcVdlWGU0WS90UXgxbVBDdmRFTEpvUS80?=
 =?utf-8?B?SDJOekd3SG5pR0hEem1oRW1Pa0FrVUxQODkxaXhUcFRhOW5YSHc1UUJoa2NI?=
 =?utf-8?B?NC9KOW5rMUE1aWltNHBBZnYzczJpdFdwZnRXQU42TEZJallUZFQwem1YTHIw?=
 =?utf-8?B?TjJXVVAxeWNNSnBleU5EcnNHWmFKWnBOdTBNN2tDd0NWVVZjQVZtclRINFpt?=
 =?utf-8?B?dzA2UWR1U1hVaElORXpwUHAvTWF6aEd2Y3ArdUkyTEtnend3N1VGV0t1S1pI?=
 =?utf-8?B?NFFBV1FmNFRxVlRjNGtyY0s3R2NYN05xdlRNMWJtQ1RqakFVN2ZDZFlMOTE0?=
 =?utf-8?B?TVRndmdxSEtxZG8wazNVTWhuNEZHQ1djTWFWSjBQU2cyc1BXUXdKQlFlOEMy?=
 =?utf-8?B?Y3lPdkpZV1c5VzI5TTNlTU53RnB0SERxQTVWTTFHMkt6U2xJRTVwcGQvUHhI?=
 =?utf-8?B?MjdUZUxkbUdrSnFyQStDL1NsV09RMWJYT2xqWVVGTUhlUVEvazhXSllNZzRW?=
 =?utf-8?B?ODBKY2c4ejloWVo2K3BUbjZobkxPVWtsWFdob1pXTXZNWUdpTVlMNTZOanZU?=
 =?utf-8?B?UHJzZVRIOHN1ZmhTdTVQeGNPMjhzbjJjcnlJY0Flcm82RXg4SHBoT2hKUG0v?=
 =?utf-8?B?MjdBQitSUnQ5b21Qd0djcU93L0hkM1BsOThzcmFSNXNROTNCTHBSTEtJZGc3?=
 =?utf-8?B?bWVtc0pGdkhIOVpidDJuS3UxR2JhdTV1VnNwZ3A1MXUvcEVWNlM0RE5yS3Fu?=
 =?utf-8?B?MmRmT2kzb0k2Ymd1cytrVU0yN21EZVI1MitCUzIxaWdhWkVsUHY3K3c3MUVX?=
 =?utf-8?B?aVJBZG5iUWdON1hEQ3JqY0sxa2YxalRzdHRpK0VmVVNsd25XUUdJYzlTL1Vm?=
 =?utf-8?B?NS85YXJRYSs4RkVuNlVOUkdpMWswajlzNytVeUN6dlRZaEVBS2ovNG5qN2Vz?=
 =?utf-8?B?eVM0WHJWUTdEQWdMOUxBUENUWjlFNExzeU9QZmViVGFuZTVLUXVOL2g3WjZt?=
 =?utf-8?B?bjVvQmlxZUpNdzN3NEdsVzB0TkoyMW9ka052K2NGNXdsTStpWXZQc0VzanVO?=
 =?utf-8?B?QTNPL21IQ2lxMXVtQStwMkZaTjN6RzBTOG12OG50aVRCRk9vbjlpZGc2TVRB?=
 =?utf-8?B?OWVKd0dmOTVxanpTdEYrRDlWT05kU2xuYTBoWjBFK0hWUzlyOXZxazhhcGpK?=
 =?utf-8?B?cWY2N3NsUjRQTVJqWTR2Zmh5MW8ramM0TzA5ZkQzWGlwc1B2eEluSlRNZUhp?=
 =?utf-8?B?YVlmT2xrYWg2UVliZkZCbUxCU2w3M2s0YmJWemNFRjkzdGFIc1ZkN2x0Z0Ry?=
 =?utf-8?B?QldUbmRsWWQ3a3FQV2dqRUJ5ZkJ4TWZBSm5BMkk5Q2dyNThjNGdPbWZ4SUkv?=
 =?utf-8?B?YXNYWk1FeEYyaUhpK2hueEZ1a3JEWHFZNE5GMUxraHg3c2NYdDVsSk5OcG9l?=
 =?utf-8?B?K2JYczhDM2pjdjcxRnVDTkJhWGovVDNXbFlDTkJMUnV2WEd3N0YzVjNnM2hv?=
 =?utf-8?B?MS9IVmNlN0dNMklMdGtsOG5VUEROWkpibjVWVFFDbHd2L0hKaElldmJKemZB?=
 =?utf-8?B?WkYxdGRPQWN0UTNsSE9mL2ZGaUh1SVhzVEttOEh0R2QvUS9pQ1VncFd4VjhW?=
 =?utf-8?B?d0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <977D16CE9196BD459A1C97F2F71F1368@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3634b025-086d-471c-51e7-08db71d2b838
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 21:10:05.0602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQPYu5/OW8yt0y9kPj3vxoeXh6hx3TJo1ZVY0kzdckXuxovFhpqVJ9kP5GhZPE2RZFc+2VJAs5kexbj1K6ZinmhztMsi26DEmwF+vO9Xswk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8495
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt
 hdmi_level_shifter selection on MTL
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

T24gRnJpLCAyMDIzLTA2LTE2IGF0IDE0OjAwIC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3
cm90ZToNCj4gVGhlIGhkbWlfbGV2ZWxfc2hpZnRlciBwYXJ0IG9mIEdlbmVyYWwgQnl0ZXMgZGVm
aW5pdGlvbiBpbiBWQlQsIHdoaWNoIHdhcw0KPiB1c2VkIGZvciBjaG9vc2luZyBkaWZmZXJlbnQg
bGV2ZWxzIG9uIGVhcmxpZXIgcGxhdGZvcm1zIGlzIG5vdyBhIGhpZGRlbg0KPiBvcHRpbiBhbmQg
c2hvd3MgdGhlIGRlZmF1bHQgdmFsdWUgb2YgMC4gVGhlIGxldmVsIHNoaWZ0ZXIgaXMgbm93IHRv
IGJlDQo+IGRlZHVjZWQgZnJvbSBoZG1pX2RlZmF1bHRfZW50cnkgaW4gIGludGVsX2RkaV9idWZf
dHJhbnMgZm9yIGVhY2ggcGh5Lg0KPiANCj4gU2tpcCBwcm92aWRpbmcgdGhlIGRlZmF1bHQgaHcg
cHJvdmlkZWQgdmFsdWUgdG8gZm9yY2UgZHJpdmVyIHRvIGNob29zZSBoZG1pDQo+IGRlZmF1bHQg
ZW50cnkuDQo+IA0KPiBCc3BlYzogMjAxMjQNCj4gQ2M6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hh
bGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gQ2M6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxl
ZUBpbnRlbC5jb20+DQo+IENjOiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5h
LnNyaXBhZGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jDQo+IGluZGV4IDM0YTM5N2FkYmQ2Yi4uNGI5YmY3NmUxMzdkIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjYxNSw3
ICsyNjE1LDggQEAgaW50ZWxfYmlvc19lbmNvZGVyX2lzX2xzcGNvbihjb25zdCBzdHJ1Y3QgaW50
ZWxfYmlvc19lbmNvZGVyX2RhdGENCj4gKmRldmRhdGEpDQo+ICAvKiBUaGlzIGlzIGFuIGluZGV4
IGluIHRoZSBIRE1JL0RWSSBEREkgYnVmZmVyIHRyYW5zbGF0aW9uIHRhYmxlLCBvciAtMSAqLw0K
PiAgaW50IGludGVsX2Jpb3NfaGRtaV9sZXZlbF9zaGlmdChjb25zdCBzdHJ1Y3QgaW50ZWxfYmlv
c19lbmNvZGVyX2RhdGEgKmRldmRhdGEpDQo+ICB7DQo+IC0JaWYgKCFkZXZkYXRhIHx8IGRldmRh
dGEtPmk5MTUtPmRpc3BsYXkudmJ0LnZlcnNpb24gPCAxNTgpDQo+ICsJaWYgKCFkZXZkYXRhIHx8
IGRldmRhdGEtPmk5MTUtPmRpc3BsYXkudmJ0LnZlcnNpb24gPCAxNTggfHwNCj4gKwkgICAgRElT
UExBWV9WRVIoZGV2ZGF0YS0+aTkxNSkgPj0gMTQpDQo+ICAJCXJldHVybiAtMTsNCj4gIA0KUmV2
aWV3ZWQtYnk6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+DQoNCi1D
bGludA0KDQo+ICAJcmV0dXJuIGRldmRhdGEtPmNoaWxkLmhkbWlfbGV2ZWxfc2hpZnRlcl92YWx1
ZTsNCg==
