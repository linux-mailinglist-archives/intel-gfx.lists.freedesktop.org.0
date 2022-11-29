Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0316163C741
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 19:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECDD10E162;
	Tue, 29 Nov 2022 18:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38E610E0BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 18:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669746949; x=1701282949;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=/sq7t4cj7WdrhksFWWIsnvLpuLw0mp99zipaNAzcXVE=;
 b=DbiJ3J2dB9q1vDh3lgWTId2dBCj8wqNoi/w1UTfOA8E134U1AJfKj63w
 wD4vVdpwbxxyAnnbq+j1RQMxUDicFxaUaQLY26zCnq8TW2MS4rkA5r5g0
 P3sO/HW228fc+so0XncpdYDyuC7FEh0bpbQnkXV//B0D11tzxUeFpVMwa
 Cr5ySB1OZv+qgMgHFz4LVAtG9KAWNToBKfHBjtrtq2w1sXbYTcms3qC/p
 1bwaZlGRf6xugIGARl9uOICHDrY1D0Imcnt7+x3FFb21K3al/8+1J6o0I
 1HMQ/lYyN5K/mTbfpnhT8JP8UoTEpjYnE/Y5p68FxD+x1r0h79qHDilq+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="317054195"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="317054195"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 10:35:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="732671959"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="732671959"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Nov 2022 10:35:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 10:35:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 10:35:47 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 10:35:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kYnUqncNa4NHurH7fdrNfeKfjn6IO8Thv/oa5VPm/PrhIDfXF3mp5gKRX1fyYhbjSqTfpeJX5Ac/ulTit8Nn1H1b0HXDTNJ5tXBZ0DtG5tSi43au1g5bSBSJtRA79430D33yvSZcjwVpNC+a4I/Phy9WmqFmMbK9NWdy6+V3IMGkhwuoGxvVdRmXGSYOCQjd0uRfphJxnGAyQuiDzmac3eQr3EuHRVCztQywKm+Up5LLO9u0BhY5pudGCVlg66vI9qBeebbRUkzgE7aend3CUSs+wRP6bq65L4RzVQx68oVW59hzFxmdWVKOB2FH0t+aQugavWVqY88gKUEdrMZ83g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/sq7t4cj7WdrhksFWWIsnvLpuLw0mp99zipaNAzcXVE=;
 b=dy57if4WVH/1UotWd/6aUihHHjzH5KyfBDLCnvtX03mjsFKaPEe2PH55qYvRcvZqcjbrKvO+RSr8znzckvAB5Zl5OhW8+RjmxYN70k5o+St9GShuu6QhuOhnbgq5pNmjMtjpIT0FaEwUOksdyzSoAuTXA9nPjEsEqS2sMmJlPyFt8dcSeNfmG6ogB/2iz9VHL/1lgBROzdnlpVbWSq01QFPU0d0uyun1wEVMXtr+daofi8SI4AKTor9t6AbeFhkabwXzA2ImkvKXG41Dy5Hb5MwhqdCmmWdB2LfAAX2VOU1aTqSbvwftilfMSagbbqM2xlEZsmp6BR67Ppx7HuQUkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB7802.namprd11.prod.outlook.com (2603:10b6:8:de::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.17; Tue, 29 Nov 2022 18:35:38 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 18:35:38 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZA4nHZz/omAjLo0WDAgip6sYJSa5WPFyA
Date: Tue, 29 Nov 2022 18:35:37 +0000
Message-ID: <4076508b4150451dad8e942f44ff6802b1299a35.camel@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB7802:EE_
x-ms-office365-filtering-correlation-id: 682c475c-42e2-4e1b-eb6e-08dad23882cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zC2lViPOMA4QTb8xWimxaz4EDf0wi7wiJWUrmTs7cPwwumpdbLKfGKp2d4c1yMvlblBRapyaIIpXNElAjn52s5PwNyWD1CGLdsfodbePFLAZLmGoQkCGG074iKbDKuz/cqVA015becbMy9addGCDx70bm+nQYD7suYqje8U14CxNjkZEQ4PS4DSsoPEuplpMOYIrrSIUx8ChQzDWrjOXJKNNQ/95q5f3WuJ8AYpwvnZCmOwz2qDpNZMoUkxoJwsJF1CxMSM+P2NibhvSYxBuFBaz7nNAuXvCwpaeX1NCNhB2aCK3Zdpm5pe2JzaXkFbLmpVT7ytDRAvEEkbjBBD+WWt0CoJhS4dy56HKNzEFA22NGSUWhacRc4djMW4Pd6g5dpob/kegF39WZRhZtoiwHUGK7CXSXTfs2pTfyufe81FOs/9Zh9ClfMW36ce2qB9ROa+NKV1YK51X6+7HAEqrLf4GT6raiBWV26SU4v7eKQviBj8MJUSB89H8Aeug6Qqzu/uU3zGvm43/J+oCIQAg4druOvIurpuyZYjzGtVIL4HNAOOVrQ5dazCJagmhpqJrsFRPqFlxAqY4569hOebs2oN44iuUmed4rofJ3IZydlGkUmWKGUWzxPkSr0UpVnKa/QaItFU5KUb20mcOp7uYphfcwJhMQD48uJ4N2qTN4oKaCHD3qTIhRgfD4xYybxOZB3rXRhnstmdyzVyq1TVFnA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(346002)(136003)(376002)(451199015)(122000001)(86362001)(82960400001)(38100700002)(2906002)(4001150100001)(8936002)(64756008)(5660300002)(66446008)(41300700001)(66556008)(66476007)(8676002)(66946007)(76116006)(316002)(6916009)(83380400001)(38070700005)(36756003)(6486002)(6512007)(186003)(91956017)(2616005)(6506007)(26005)(478600001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHNqQnpjZTZpZFQvaEN3NEVsTHF2ekl5TU03OXBuTUs2K2h0QXFYOUh4SXo5?=
 =?utf-8?B?RnZ0dWtPZTVTQU8yZ2NrWXROQ3g5UXFFdm9KL2VzQjdmdUE5K0dlczhhTS9k?=
 =?utf-8?B?eWk0M1UrTFBqTCt0dmhHSEdPd3dPL3NPS0NSa0xUbm9pL1diUnQyNkxsMVVx?=
 =?utf-8?B?dWg3ZldlSC9XcUt0TERXUTBRSUd1Z2VQREFDNFl0V0o2QUsvL1NqYnh2SlRr?=
 =?utf-8?B?bnRBV1JiUmxpQXJWUXNQUHhoT040TkdvRVNRL0p6Nnc4ZTdIWjBDZGtKRlAw?=
 =?utf-8?B?ZDRWWS8zZkhHY0hjend2L1E4WG9naTljQktIZ3RuVjRrRDNsNTVXV3hMS2Uv?=
 =?utf-8?B?a2U3UkEvRWdtM1ZoOHNqOUh0WHRGbWc2VVlCaVJqTVU4ODBMWTVkSWh3d3Ar?=
 =?utf-8?B?UHVva2ZZQThBNmZxRWZFQm1nVldrcFdDdjRBNGlYUW5NeTQyM2ZJYzR5TmdD?=
 =?utf-8?B?T0xkeVlGcHhFTHh3a3B6OTBPMHpTQmQwQW9HYjk2QmUxbHU1cDd4RDE2N0Na?=
 =?utf-8?B?QStJcFdtNzlabmtRVFJNSzRaOElCcDMyZEpBT3NTOVlFWnIvT2FyR0dWS2dC?=
 =?utf-8?B?L3dtK0ZRck1kZVFGZ0VickxIby96NXRuamJ5dnJxaDFKRGNVWkJ4bHJpdzht?=
 =?utf-8?B?STBCTk9NN1NtbW5WZlovRVlmaSt0Y0NiK0s4TFV6VjdZUUJiNjE1NDUwSHRE?=
 =?utf-8?B?RVFFKzRtUi9SdW9qemhkRlJZSktyTWZSc0QxN01VekIwZmFrZU1teWJYelJ1?=
 =?utf-8?B?YnZWZGpWSVVLT04zeTFaR01RTFMvS08ra0wrVjMwSWlGTTh2YnZ5dHJic1lk?=
 =?utf-8?B?eHZDRDVoT2lmcGFiZmp5bnJYVzBqYlgxblM1NjRKN1pUOW5keTV0SFpsRVl4?=
 =?utf-8?B?eFVjSHF5bERYMVlOa3lwOGJIYnZiREFyQzFvbEc2TUpaZVdXakdTd012QUZD?=
 =?utf-8?B?d3JXWXdYd3BET0NWYy80d2U0WGlXMW1sd3A1T1kxZnNCWE4yNU5qcEtlaTMx?=
 =?utf-8?B?QWQybVlLajdNT0lBWkhWZXBodU8xclJGajJURjJUTkIxK3psTEtHUEtZc2xT?=
 =?utf-8?B?bTlXWjNvQy9YdkUvVnh6WWhVTU1qRE1qM3hVTXYzRERSbWVMMkt4UitFdWZq?=
 =?utf-8?B?SXFrbVgvLzVJVC85SlZJdlpSOUVqZ2dXWmRoNkVIcytvMkJBTEVWYUFxMzFM?=
 =?utf-8?B?SmNDU0VTRUNzWmF5NEx5T3lIRit4bjRvdWNsTkV4NXc2dWg4Tkp1WFRqem9N?=
 =?utf-8?B?T0JrYi9OYzg2MXhsQmI5WnE2eWJiV2ZMZXpaMTdxdUJVQ1QzNmxYUDJ5dk5V?=
 =?utf-8?B?amVOdklkSG9rYkdSREZpL1d5M2F3bVovWXUvZG16SWJ2YUR5Q3VFN2dWNW9h?=
 =?utf-8?B?d2VJOVNaN3dNZXN3OXUvZTNYRnhMdlA0bWsyT3VMbVJRaXYxUlI4RXFnVVE3?=
 =?utf-8?B?VHJTZWNXQU1TNzVaV3lzRlZ5MHByQ2RzdDZlREZKUjA5U3V1SlNKdlpxQUhS?=
 =?utf-8?B?RWErV01vOU9jczBneTRmMUVkdUFWUkNveStVWEpDcG5FYWJ1VXhsZG1VZ2o1?=
 =?utf-8?B?NlFFK2hsTXlDZ3ZzeVhOU2d6bjFLdnc0SjlWVHFBZ2RoaHNGZE5Sd1hFRERX?=
 =?utf-8?B?NVVON3V5Q0dQenVRU0xNbmZsVksyTEVvZFl0VThVc2xwSWVZblhaRjdLZFR2?=
 =?utf-8?B?L0RaR3MrLzZiZHJGTE9RVmZ4RGVwZUJrd2hhRVNjWlRBOTJ1cW1oS3pMOHFl?=
 =?utf-8?B?K0ZhYkFoZ2R5M1M2dU1tV1BEdFowc3B0dE5LbHlobEI5SG54blRHbGlkWnlt?=
 =?utf-8?B?MUthTEtaRTl4WWVscjRwMkZYN1h1LzZSdDl0R2hkMTVvc3FXVnVNbHV1MVVy?=
 =?utf-8?B?bnlwZTRXbStLdG13SjNUMWM4dk5weDk4OTBNZnlyS3U2MEdVcTg2UVRIYTBO?=
 =?utf-8?B?TkVGeTZaMTZvem9nUHl5TjROeUJ1YUNZUzFwYzByYXZvY29TaGlEa3ZZWWhD?=
 =?utf-8?B?S2gzWnk5OVpmTXV6N2t4Tm5PcFcweDM1c2o0V1ROVHVxRi9DZi9wQUN6Njd4?=
 =?utf-8?B?bmJNVS9FMVd0SzYvSlJvVjUrbVhuWFZ5b2RaZUt2TjJ1aGFnbWNadE9XalNB?=
 =?utf-8?B?MzFzakxqZlYxcHFpTzN1ZncvaUR5Z2c3Vjk4cGIvZlpBSDRvMWI1ZzBYMitS?=
 =?utf-8?Q?hRKziLw6HnId9APKD7D87AE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4608B11E08F918419A669E089F3EB408@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 682c475c-42e2-4e1b-eb6e-08dad23882cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 18:35:38.0543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yzhGFyiIv02WpRjeVlv8so08Eze14Uiq61eE2VkAl0sH8QEhJQh/bCKkULUe1JWvdi8aVw/BJEBbhmqyWIdrlx/T7p2xKLTpu286BfMynwdkv7uQBeu1dSpz5kRIr4+O
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0yOCBhdCAxNjozMSAtMDgwMCwgQWxhbiBQcmV2aW4gd3JvdGU6
DQo+IFN0YXJ0aW5nIHdpdGggTVRMLCB0aGVyZSB3aWxsIGJlIHR3byBHVC10aWxlcywgYSByZW5k
ZXIgYW5kIG1lZGlhDQo+IHRpbGUuIFBYUCBhcyBhIHNlcnZpY2UgZm9yIHN1cHBvcnRpbmcgd29y
a2xvYWRzIHdpdGggcHJvdGVjdGVkDQo+IGNvbnRleHRzIGFuZCBwcm90ZWN0ZWQgYnVmZmVycyBj
YW4gYmUgc3Vic2NyaWJlZCBieSBwcm9jZXNzDQo+IA0KPiANCkFsYW46IFtzbmlwXQ0KDQoNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+IGluZGV4IDY5MTAzYWUzNzc3OS4uM2JlM2M1
MzQzN2U5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTczLDYg
KzczLDggQEANCj4gICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIg0KPiAgI2luY2x1ZGUgImd0
L2ludGVsX3JjNi5oIg0KPiAgDQo+ICsjaW5jbHVkZSAicHhwL2ludGVsX3B4cC5oIg0KPiArI2lu
Y2x1ZGUgInB4cC9pbnRlbF9weHBfZGVidWdmcy5oIg0KPiAgI2luY2x1ZGUgInB4cC9pbnRlbF9w
eHBfcG0uaCINCj4gIA0KPiAgI2luY2x1ZGUgImk5MTVfZmlsZV9wcml2YXRlLmgiDQo+IEBAIC03
NjMsNiArNzY1LDggQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCWZvcl9lYWNoX2d0KGd0LCBkZXZfcHJpdiwg
aSkNCj4gIAkJaW50ZWxfZ3RfZHJpdmVyX3JlZ2lzdGVyKGd0KTsNCj4gIA0KPiArCWludGVsX3B4
cF9kZWJ1Z2ZzX3JlZ2lzdGVyKGRldl9wcml2LT5weHApOw0KPiArDQo+ICAJaTkxNV9od21vbl9y
ZWdpc3RlcihkZXZfcHJpdik7DQo+ICANCj4gIAlpbnRlbF9kaXNwbGF5X2RyaXZlcl9yZWdpc3Rl
cihkZXZfcHJpdik7DQo+IEBAIC03OTQsNiArNzk4LDggQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2
ZXJfdW5yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICANCj4g
IAlpbnRlbF9kaXNwbGF5X2RyaXZlcl91bnJlZ2lzdGVyKGRldl9wcml2KTsNCj4gIA0KPiArCQko
JmRldl9wcml2LT5weHApOw0KPiArDQo+ICAJZm9yX2VhY2hfZ3QoZ3QsIGRldl9wcml2LCBpKQ0K
PiAgCQlpbnRlbF9ndF9kcml2ZXJfdW5yZWdpc3RlcihndCk7DQo+ICANCj4gQEAgLTkzNyw2ICs5
NDMsOCBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0
IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpDQo+ICAJaWYgKHJldCkNCj4gIAkJZ290byBvdXRf
Y2xlYW51cF9tb2Rlc2V0MjsNCj4gIA0KPiArCWludGVsX3B4cF9pbml0KCZpOTE1LT5weHApOw0K
PiArDQo+ICAJcmV0ID0gaW50ZWxfbW9kZXNldF9pbml0KGk5MTUpOw0KPiAgCWlmIChyZXQpDQo+
ICAJCWdvdG8gb3V0X2NsZWFudXBfZ2VtOw0KPiBAQCAtOTk2LDYgKzEwMDQsOCBAQCB2b2lkIGk5
MTVfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAkvKiBG
bHVzaCBhbnkgZXh0ZXJuYWwgY29kZSB0aGF0IHN0aWxsIG1heSBiZSB1bmRlciB0aGUgUkNVIGxv
Y2sgKi8NCj4gIAlzeW5jaHJvbml6ZV9yY3UoKTsNCj4gIA0KPiArCWludGVsX3B4cF9maW5pKCZp
OTE1LT5weHApOw0KPiArDQo+IMKgDQo+IA0KVGhpcyBpcyBhIGJ1ZyB0aGF0IGlzIGNhdXNpbmcg
dGhlIHJlZ3Jlc3Npb24gb24gQkFUIC0gd2lsbCBwb3N0IGEgbmV3IHJldiBBU0FQLg0KKGludGVs
X3B4cF9maW5pIHNob3VsZCBvbmx5IGJlIGNhbGxlZCBkdXJpbmcgdW5yZWdpc3Rlciwgbm90IGFn
YWluIGR1cmluZyByZW1vdmUpLg0KDQpBbGFuOltzbmlwXQ0K
