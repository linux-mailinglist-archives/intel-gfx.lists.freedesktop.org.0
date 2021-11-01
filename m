Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DEA441C9F
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 15:29:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617BA6EB04;
	Mon,  1 Nov 2021 14:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C716EAF0
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 14:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="230978474"
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="230978474"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 07:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="576202062"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Nov 2021 07:29:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 07:29:35 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 07:29:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 07:29:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 07:29:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XoMTTP37nQEY/b4bKPihQVaItd2etkamfuFK5G9kdQhtG+ZQIz7AJ8l1idYk5m2tyv1Gasg0GrIwRpkYoD9M0YRJpHRgPPZVz7E9He/Mgg/4swzf0uL++VokyS/CpOoJwvbFXsPGrlGHQ287RLtUQuxt6rCWIL82Kju5iPvk8abzQio5mNCmyUliTWxXKAwOXMuFlPFXQK0LQa+8q9NWKPFktS/JZBdxvIqEPfmDQd5Gga//Xq/4ZYc+jgLlMSSfDpnBQvQxFo9pkifEI/XPeXXTQyJQWilqqEWW52RAKjDp9PWREQFQCw9P3Q+WhsP+e4no0U5h2OiZLOWNzM8pvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LBksIAuYT0w5KabxG8b2q0zcF+MphZqFGuRs2ZbjCeA=;
 b=MDpWmGIbaT908VIZuq4Fz0bQel4grLKL6MRullVNDDy/0WBwS0ujEXjEXBvB58B5r5HSKxvd0UnZU+omv+PYMqXNscYORu3DKRL4t6/Hvi+y3Oqa/iDAGQmwxjmT+BScEB7nOk1hgPUJjdcY6UGwrIuvsd+ydNb3+zeCrBbdGuxfa/+DOkrguJkRox1GZvIcDP1Vf9qC7EyiD0cW5TVGDpZTm18q9kQSfBTaYOGIkDTWr6zdo+i7YNvlIATfobVWdpB72vQYoePO8zuCQdiIOc3ggz+yqV/7oO4GQPewc/i8AYNWajNZBH7ti9a//GpPYDldK9JzO7DTgB/YDx55ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LBksIAuYT0w5KabxG8b2q0zcF+MphZqFGuRs2ZbjCeA=;
 b=VnLj2KlChcHVdCdodp5qRD2UvAWfsyVULBPljPdSStUI7afzPI3CYxTDLXMwijlTzgSm4Jucy0Hkn3Fuc8MMvrI4kJaZowtzmdZH3ufQm5CXH0XBLgcCpzhIlHjjkU4oFBNyjoOhvHyYql78lfZaDCT0y+hPqTzlBc+16asQVZ0=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4495.namprd11.prod.outlook.com (2603:10b6:208:189::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Mon, 1 Nov
 2021 14:29:33 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::49d6:ef3:b83:2379%3]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 14:29:33 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
Thread-Index: AQHXxUfzx0iKOQHUCUupKvDEtDXS6Kvb++iAgABITICAA0hMgIAJaMAAgAXZ9IA=
Date: Mon, 1 Nov 2021 14:29:33 +0000
Message-ID: <a68a1f5360065e9abf11235c9f3ecafa454156fb.camel@intel.com>
References: <20211020002353.193893-1-jose.souza@intel.com>
 <9a1dc5019848cc8c854d9cfdf46113b626563d98.camel@intel.com>
 <e061d0ce689b9bcba4473a9703effad35505a593.camel@intel.com>
 <6349cf75e1a674288250a137b09911ea2349fc41.camel@intel.com>
 <e4a994711cf0bb0d580269eda56ab0bcdad98f87.camel@intel.com>
In-Reply-To: <e4a994711cf0bb0d580269eda56ab0bcdad98f87.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3901825b-0464-4511-b3a3-08d99d4405fb
x-ms-traffictypediagnostic: MN2PR11MB4495:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB44952FF7DF4CD8C71DD346AB9F8A9@MN2PR11MB4495.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U0bEg9Mcaaj84ljktxlUYEWhuw0urCFm4Ry2MvytgMTsScyyeziI2gbvmRJrofzUsYK6CmhR8wCbF+Jf1NBHsGaOc800QcQ0JHs2jW/8vMHeKh1JvOoYzvbviSroYcSHBRd15Y9NbIwvoPe+O1ZHpdD69862PNAUpQZnvrutCTBkP01SESxhbY7mWWpMbauzXk3r471JO21w9mI+T3tWpYr1t4+MFn547b+BG+htDrTOKsB6LAITcj5XEMrgjNRtC9w68/kTNX0nspzuHUCNSPBu+9u6X0CIcVJlrBljTJOcxNOgMSKeEZlSPti9hCPGzdqsEasBvgYmhpIDG7E3cV+zpLo4NY5nW4fM1Q9mSqiZzSJiOPT+ev/WXfOvxOIBVvaiNx0OH0v1aDLjC9grZ8bHhL9qs06WKaMIgHyC4Jz9YItDsOgFMYmrsrvVbpu87Ra1Po+CN0K6NDPP9kT1rKwWpjR+tQk5EoeoJLJT+hIehVSZJzpFgNR3hoK/Y9FKkgfAYuHSsJZ4gIyDJI0/UkRpOAOD4yja9aPfeXg9tNVj0ds7vmIJ0iKkOePly5PcvVFR7oWoCqBxupglW9QI+/+rlgdSbS4K+unxRPEKQo+TRBDi2nxtd/Ko6rUXvEncqPWfEmQrB9dRGzzLbfkUuWRfA701efDZJZ0kUbE6nFG5cxOtfC4QsA1mjN0zAGe08nL/AVULnLe2b/ZilBQmkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(2616005)(2906002)(71200400001)(66946007)(8936002)(64756008)(66556008)(66476007)(6486002)(4326008)(38070700005)(38100700002)(36756003)(6512007)(91956017)(76116006)(6506007)(186003)(107886003)(26005)(558084003)(5660300002)(66446008)(316002)(86362001)(82960400001)(4001150100001)(6636002)(110136005)(508600001)(54906003)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N004dkZYRForMUNmeW96VjhFQTQzQXJMVEY4RjNkcDhsSUxmaDhFNGRyTi9k?=
 =?utf-8?B?VzR5eldDaWNFMmY4SlRZb1JQZ3dNZTRhYmpMajJWMUhCTlU4UERNV3h1cmVy?=
 =?utf-8?B?L0FWRUQ5SmlRcThGWXpKYmhxcEorSkN2UW54eFJadmQ2V1Nhck1PWjBoalZW?=
 =?utf-8?B?TTFxSDFaaXV6bnNITW5oR0FzSkNZbHJ0RnJBL1JzSzRXcXI5Nmt5WTdnN3h5?=
 =?utf-8?B?bG1wdDFoUW1mdVJWeFpQQkxKK2ZqRlVIZ0ZZNU85dTFWYXJaSFkrdFhFYktt?=
 =?utf-8?B?Vm44Ryt2d2VzSXdYN05RaWRQMmQvTk1BVmhzMHEyTlg3NjBsSUc4d1ZselA4?=
 =?utf-8?B?YlhIR2ZZS3VIV3RUZ2FOQWcwcEFhMEN6d1Vsa0ppR1hpMlpsM3NhbG9tNkNn?=
 =?utf-8?B?K2NVUXBlU1ZScGE0Z0JLSGdSVXdWT1gxdUlKdXpZQzZqV0FHQ1VESEE2cE9q?=
 =?utf-8?B?VUpOZzl6QnNYNktsMXMvT3JPa0h5OFczOXBLR0NjZmk3UldFd3lsOGNmTmN5?=
 =?utf-8?B?eVlWbHByOVVta21MQmdCckhUazFKdFNQNk5UZitqcTVMWFIzbE9WMGRJVTA2?=
 =?utf-8?B?djRpNnpla3kvckZmZDFhVDhvZ2NPdDNJOGJWZEdUQVRSbzhUT0hiWmNsOHlv?=
 =?utf-8?B?RWE2dDJicW5NdTN3bXI0K3pKRFJUS2VmdXdzc280WjdkNlRYR2hvSDJMd3gx?=
 =?utf-8?B?bGZqQ1M1NTZYdW41dEFaMkdxTklNVnRSR2t3ZU9maUl5R2RwOEVnNTJDcGpH?=
 =?utf-8?B?Sm1NT2Z0cUh0bkxaYTVBQ2xXYVZTaEhNR2V3V3RJbFhhN0FrRWJtZFltNFBy?=
 =?utf-8?B?NWxEME5KYnZDcjN6VktLd01JZUI3a2tvMzh5d2VkemVmYkpvRVFma1AvVWpQ?=
 =?utf-8?B?MWhDVEZXZlJLYnpETCtmQTBCWDI4bmx5VFczWktZSUNXTHNONEdGbGxLTXpW?=
 =?utf-8?B?QXRsdHZRMkJ1d0F6MFZ5dEROVFI3cmZJODE5QjgxWjhmN3JqOTNMNHhESGRV?=
 =?utf-8?B?d29wRUkza0tXQjZiMGxIWWxmNWVXR0x6SGJUUmx6dWQ5S09CSzh0MlV3bEVa?=
 =?utf-8?B?bEM4OE04cFhDWkJLclNLNWVGd0VScXlJRVZYei8vbWg2T2Z3UngwOTVRWDhh?=
 =?utf-8?B?aGxXRWl0QkdRb0Jhc3FINUtMK1ZIQlQ4eHkvaVh3ZnlIOWxraXlYbzgwMTJC?=
 =?utf-8?B?VlFRRTZuN1J3KzQ3WG1oOGlYUlZ5dkpGU0NEcmZWdXljcTZpWk9hQUZDZGNJ?=
 =?utf-8?B?STI0ZTNKMzE4MDlObWx3d1ZNeE5mSWNwaU9xT1RPaVArMlpSei90MUFIZExJ?=
 =?utf-8?B?Y01PR3hKaElLYzdOTVplYkpudCs1U2gzQUE2WUJtanRZQ3VHVS9EZ25mY3Nn?=
 =?utf-8?B?cHlZaDlWc0UvZlZIZzZ6YkRjYnIyajlubEhyTGErSnZCVUpsekNXckFaWUNt?=
 =?utf-8?B?Sk0vcVBEamxXcmRuZmdGV1BpaGx4V3J1Q0pacnVrUThuRUN1VGhwR0tLdzVV?=
 =?utf-8?B?NVA2ZGJFNGphcE5QZlR2TG1GZXZPVnE2Q1VvbGZTbEJUQjNNd25RMW5meXpZ?=
 =?utf-8?B?TXdGVkhPQ3JxdUlxUU9xQXo5M0lTUXZuamFNR1B3NFZRcndlSUNlUmM1WEFR?=
 =?utf-8?B?Z3A1OVVIc3hHOFZZVzV6OGp6NU1DbHZIM2xLYytrTDJKeU5ydDBNVGlPeFR6?=
 =?utf-8?B?NkM5aWZsbVA5Y2JGQ1Bvbk05OXBXUXd6OGp5VEtqSFo5cDQzam83TU1EVm5D?=
 =?utf-8?B?dFdqUkFzY3JacGF4M0g1R1pjMVpnbFF0ZGx0SHNNR08yVS9aeHhtd3lES2lB?=
 =?utf-8?B?UHRpbUVjY0JzVW03ZUJBR1prclMzdUp4NkdEVThidU0rbVRUYXFLS3ZqUXJ1?=
 =?utf-8?B?OEh6NWJPRzlWT3JTRndUUnN2T2wxWFVCbFlLeUlUTHkwUFJMMWFwcHNaWjhp?=
 =?utf-8?B?TTJwQXlCT3hBS0VYeEV0UlZaY0cyNlRHaURLYmxmUzI0ZTBZUUFtMU9BMTU5?=
 =?utf-8?B?TkhTRTU2NE5ldjU0U1luNjFSTkZGakZSekgzRDY1S3pQOHhoSmRZbUVVUU9h?=
 =?utf-8?B?OWU4S1VEM3h2V0FXV1lkNUlkZ2paWElzR0h0QUhpM1RKRDhjSmlmdkY3eTdr?=
 =?utf-8?B?WWVjUHVmQlZ3c0VOM0crUHpaMDFXQlpiUmhhL2plK1BvSXdkZkZBeUhjYWNz?=
 =?utf-8?Q?+chcSJRtaoXHbr5xXDPYHpk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F9AF6A6B2588494187384A821BC668E1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3901825b-0464-4511-b3a3-08d99d4405fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 14:29:33.1303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C3cn67bV6Rme6NvWbMQ/BrydDV01legPdmTPK8G+u0zllxcL5q2lVKorlWROixRQr7KDfnMVp3EbqtoLCeu8CQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4495
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
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

UmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCi1jYXoN
Cg0KT24gVGh1LCAyMDIxLTEwLTI4IGF0IDIxOjA4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToN
Cj4gUmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCg==
