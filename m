Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E37B566995
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487B811257E;
	Tue,  5 Jul 2022 11:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6566610E021;
 Tue,  5 Jul 2022 10:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657016196; x=1688552196;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hg8TiOTwa2g66Oq1tKCYYZ6q787+aerp5EBn2Vl8W6k=;
 b=F8hEPKuqCUixr42xFb57KIML9iOPKvgqM5NCYWibcrMK7CnCaBz+eiJ6
 wig9kwIXWkg8oAw4B7mjy+bxzOdeMmSQIK98GaUoRZjKFV1vkUs4TtcU5
 kkUAx+BCuuHsKiWwwMsE3EssjzWS02ZjbJmpGrlBnB0iRbybIzg5gBbPr
 +mm1l/ife/3xma9Qxasntuu53dr5TWbwhtPFSjN1WcUwnytnAU3T301rO
 SOJk2YzgjBqdjmSf8Kf+6nX80ZYg8cRAL+6DJnpC0EWVIDjq6nPfNPGM4
 vRybevHGwpgIGBENc281vMkG/hwYtdADbVSI3MVULVx4Fq5EBNUXa4KU1 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263737717"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="263737717"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="839069804"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jul 2022 03:16:36 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 03:16:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 03:16:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 03:16:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N0HJxVSuxuQusQB3bf3TB6L44ra9YyH4hsNLCfD9jiloGxBoLDt1j1B4u6UMI1gLRjHjCOoSF7iBze5XYZyAFaGUxO+n58oWm+Ap3xj/W2XOlOxMgp4nSf6scl6pvDTn44PA4qOI4RxF7SHf3/rXH2u1VO4P2/plbUqIZfQLlVvWj+OridyHOD+cAFE28g1pkpl159Dh9W8mor5+kUuE+zF96xgJss+te9Ctn0dFPChOV5mh3DXhqlQDL/zwfJ2yqrDIUP1Ty/7radpno3u449BfY15HKAqzE6R84zCAx7TgkO0jdgKc28zwhuCnFJ4qPyWeTV88Jmpqb+BeKgbW/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hg8TiOTwa2g66Oq1tKCYYZ6q787+aerp5EBn2Vl8W6k=;
 b=TYyv51qQw6zCKKc77fsVSJIR1Wfj4BVo1/AuazjGLKnjatvv2hH8vmV1N/RJWDinWjCBKknW7BQNnpLBLi8Z6cuvI1PeqV10aGzICjIPu/RYwP1rUn1BDXPq3O5BPn9H3gDxNqy0rko1YYj8+qJmTmg8b7J76rhU0qZp3Ym/+kf2OP9uUtF7JevKkFjKO95DhsArMoty2qFO6hbHnUumd336Vued33sDHTv5T1LPtMH7SbgTvndlS1roS630XshSOTnHDQ7VIv8DPkInxJq6wByy895Ry4tP7Ej9//8ptD/fVgruEaNHqmDkudWkIhL3OgjnkORxL1GoYxJQJqFbTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN6PR11MB3953.namprd11.prod.outlook.com (2603:10b6:405:7f::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Tue, 5 Jul 2022 10:16:33 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 10:16:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "B S, Karthik" <karthik.b.s@intel.com>, "igt-dev@lists.freedesktop.org"
 <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] tests/i915/kms_big_fb: trigger async flip with a
 dummy flip
Thread-Index: AQHYit7dLYg1+v7vYUKKIaYPU0Gdea1vjSGAgAABaTCAAATiAIAAAuPg
Date: Tue, 5 Jul 2022 10:16:33 +0000
Message-ID: <DM6PR11MB31773770B8601A018251CB41BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220628110409.768308-1-arun.r.murthy@intel.com>
 <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
 <DM6PR11MB3177AC16AD97327BCBEA3C39BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
 <9bc05a2b-771c-0d64-00c5-dc6432d2eecc@intel.com>
In-Reply-To: <9bc05a2b-771c-0d64-00c5-dc6432d2eecc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39b6a558-1663-409f-a27c-08da5e6f6f9e
x-ms-traffictypediagnostic: BN6PR11MB3953:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mC/HLQagA2buVZH6+r4nzxPvG3gNNyg68RXriW73jU5Jd0PiKj5DXDWYpjdas2DGBQGta/dswYEjoER0qXvKCGxKcE7GY4JY6LNvDhw+tjqMlt0sBgVDEzstXsMem6UkaPfR7Ft4qe1ky//8BVdqCfdoRJFltMt7SvLyuO6z+3MYoP6uTbDamFWb6iD3FJqGnIwuBvPOlO54o0590Csq61iKcjUJY5YScYci1S8ub1UPckThUcOXGBbWQ2I/izf8eQJcEKNti9cLZ+7IRY42GNYRIlAw13lW3qXtcBmJ1cKdLFL4JKQawyUqD+aP4jEzBbaubsHAhOuYvVAic6jfwZ+9l6AT+DbEsOJP0q0slqY1ppD6PR9tXnuBvL1eYztIJkASihnbqwKLXC81oOIaqTMvR7a/dgLcXLUG61EBc/oBGZAecjJYl/E/u866j1q4rEMwrpM1giKffb+XrK1jo7eqZ0Qd+CkBTT3QW6UzV5pynd5e1TYytXQJHMkUrkOjSe7sMPn7UvPlxKFsxgiZp4ixXEsLiLnTyANOdFffw1rQLcf9ubOKLb1aYUndk2sG3R/3FqweqeELjW9HN+wvMOW5iG/yuvSsZxTg/LkNWopjSa0G+FJcmd0nrW4Z5p+MyR1rOgfDbO+bldIbbjSQ0gYkGFpNz6S7kOasCtMqOtQxsCcggLvY5m0Go4tArJ6UrDc3S15QSvUNllV1Usqt5xS2gF+YLNuu9yPX4FQZ1hRMgT/azeDkMqLL40Gh8EbWbD6bnM5FkdZ2tBPcE7M9RtIFZnuYvR/+VKI7GL/dN0TIOrlluQ9eaWK5mNfZOsDW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(366004)(39860400002)(136003)(376002)(316002)(110136005)(54906003)(83380400001)(26005)(33656002)(186003)(9686003)(6506007)(86362001)(55016003)(2906002)(5660300002)(66556008)(66476007)(66446008)(64756008)(38100700002)(66946007)(8676002)(4326008)(76116006)(7696005)(478600001)(71200400001)(41300700001)(122000001)(55236004)(38070700005)(82960400001)(53546011)(52536014)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjJoU0EwZitLL3NYK0hLM0hoanRGRUcreCtvSkxIYm1EendmZUs2b25Tb2Jx?=
 =?utf-8?B?QXdEcGJNLzE1bTN2M0cvbEhkV3IrekZJbERRemFTNVNYRXFrTkJCQUloM09G?=
 =?utf-8?B?akpTbkZLRE1TbGNta3ljT0pHcUs5NTBhRVhvK1NDaU9rU3pUbVZva1d6dlZp?=
 =?utf-8?B?ZFNqelVzb1p6Ui8xMFNYZHJ3bis0MnI5aHUzS3doZXkxay9UcjNteENGeEZH?=
 =?utf-8?B?QTNyQmJRUy9zdWcwZlh6SWZ0RWVrWDZVRy8zb0tBREg2WTVPSnI0QjdsVUYw?=
 =?utf-8?B?Y2RHZkpFR0JYNW1tamt3MzVscytYODZySnluTFRpd1c3V2JTMUpJUVZvMWlC?=
 =?utf-8?B?QnRla2NObmhXajRCem5xTGVPTkxFWWtQY3FqeDRaTjlVZkRETWlscVgwMm13?=
 =?utf-8?B?VHlBUVdqTTNPeHlhVnE5eXVrc3hvazZGMVdRRG5Kbzd5Z3NrclY5V1EyWE9u?=
 =?utf-8?B?RGNPQkwzdjd3L1F0SVliSUNKcHNLbjZyVit2ZkVNejRPWWlyOHMvVGkvSURl?=
 =?utf-8?B?VmJEdEpSRGNaNVBQL040TjdEc294TkdqWlNOSGF4TUxGYVQzc0IyVlpKeGYz?=
 =?utf-8?B?RkpKNmZWYkZDR3grTmk5VFVGclVsY2hJdExYVWh0cWdpZ2JsYXBYcDdxTWFi?=
 =?utf-8?B?eE82eEJ2WGh3NVFlbmJhQ0gzVjAweFRLSVc5Z1dDMElMZGVybERmMkJic0Vz?=
 =?utf-8?B?T2w2U0dLQUdsYkY4YW5OYVRwb3YrUkh2ODBSYUI5K2hPNnk3SEJKYytWNlFS?=
 =?utf-8?B?OHVEcHkwN244UGIyWUg5c1NOaTFPSFppMXhxR3FkOUZLN2JLblN0TCtIT0Mx?=
 =?utf-8?B?cGs4QnNBMFhoZVpwbXg5c0pleDlWMXdjYnJMUnBSbXpIb1ZRYklibDlhdkJw?=
 =?utf-8?B?MmsrZ1NmeVpHb0pLdmxKaDAxeFg5Vml5NVFjUUNNZFlNWFNleThaYWIwN0tF?=
 =?utf-8?B?UGtsYUZsb3gxNmJ3SE9UVmVmTFV3NUxweWwyVlRwdHM5b2JBUXYxR1FpUGNK?=
 =?utf-8?B?TS8yZmkwM1dWQUZkY2N6dmI1emY3aDRPb2R1L0FwQ2tWZDUwZkJWWGtabVl5?=
 =?utf-8?B?Yy9kYWtHMU5acE8wSGtpMkdITzJwSm9JT2VVRkRaSWJVdWt1dmhEandxY3Mv?=
 =?utf-8?B?ZUFzeHZzbFRJVU50NCsyQmlFQ3NSMkhrZ2tiVHFNRkthTVUrdlBuQk1oWXdV?=
 =?utf-8?B?YkRXOVUyNVpFVlpMMlF5MHAwVTBqVy9XaTBSam9nckM0QW9MelpybFZyYisr?=
 =?utf-8?B?d1Y4N3Y0MU52NFFOb3pUUUxGaDF0YkQxNW1GMG1weWhwWERDWU5RWEYveXAx?=
 =?utf-8?B?OEVWajFzYUpwTzMyZkNKMTN1eGRKNlh0REZmamFMQzBzNHp6YUdiOU1pUFJU?=
 =?utf-8?B?ZjBPOHh1UURBenVBcjJPWHFJZWtCYW1Nb1NQWm1lS20zcGZRa2JXVzRDRVh5?=
 =?utf-8?B?aFMxeGlzZWFadXRqdUczMDZOaDExdmNFbm52Yi9pTXlnVFFYaURmNDFaOWdy?=
 =?utf-8?B?dmVWSmxNK3A2NzYzN0RHaitnOVJaVTNhMXhtK1JZVnVzNUZkVEtobnNiUEoy?=
 =?utf-8?B?OCtWTlM1R3ljQWlVcmsycExPTmRoL0kzTzZGbmNMVzgwNDZVcldwb3UxaWVB?=
 =?utf-8?B?Ym5lN0sycmkvcXNoL0ZmOWcwZ3RBempsNnZkTzB3dmdaTzJEeXpWTUM1WEdV?=
 =?utf-8?B?RjZUa3M3cm8rQWdyZ3Vha2d2K0RPYlBpZkJ4VllCMmdTV0Z3Vk5IWjlIcEdu?=
 =?utf-8?B?M0hWdjdaOVpqZHZLc2EyV2V3YmtYZ0lMSkMxSWVVYWRwN08weXM5NFZSUGsx?=
 =?utf-8?B?VXZKdEgyQkJxT3dpZjVpNmxCUUlyd0lOZFZ5elZ0ZHh6UWhqc0ViYmhmTHNJ?=
 =?utf-8?B?Q1NCM0M4WGhsZmRDWnhYWDFtQVhRVVlSdy9abGRsVUsrT1czN1Fhd3pVei9M?=
 =?utf-8?B?UjFRdVVZYzFvUExuYjA4d0FDZm9oYmxwa3NpeDU5Z28raEdEcVVvWE1yVXk3?=
 =?utf-8?B?dVBmaitVUklZckpEWWZyN2RDYkV5azRvMFRIRWlxc2xEK1lKWWRNbWRlenBT?=
 =?utf-8?B?ZWRXR2tyRm1ZU096Q0dTRkVMUkNMMnhBeXVlUWR2TElTZTVSOGVkVGt5Ymxj?=
 =?utf-8?Q?rdbcVND/6/968fe4NDA3OhIQw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b6a558-1663-409f-a27c-08da5e6f6f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 10:16:33.3082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FutP+0jKLN+/FSojguczInuIv0y5NgGeDzkm+JQ4MRyR6LjvwrLWkAtiawisNNer3Ttii4eqv++Ov5pntS6ftQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3953
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async
 flip with a dummy flip
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBPbiA3LzUvMjAyMiAzOjA4IFBNLCBNdXJ0aHksIEFydW4gUiB3cm90ZToNCj4gPj4gT24gNi8y
OC8yMDIyIDQ6MzQgUE0sIEFydW4gUiBNdXJ0aHkgd3JvdGU6DQo+ID4+PiBJbiBvZGVyIHRvIHRy
aWdnZXIgdGhlIGFzeW5jIGZsaXAsIGEgZHVtbXkgZmxpcCBpcyByZXF1aXJlZCBhZnRlcg0KPiA+
Pj4gc3luYyBmbGlwIHNvIGFzIHRvIHVwZGF0ZSB0aGUgd2F0ZXJtYXJrcyBmb3IgYXN5bmMgaW4g
S01EIHdoaWNoDQo+ID4+PiBoYXBwZW5zIGFzIHBhcnQgb2YgdGhpcyBkdW1teSBmbGlwLiBUaGVy
ZWFmdGVyIGFzeW5jIG1lbW9yeSB1cGRhdGUNCj4gPj4+IHdpbGwgYWN0IGFzIGEgdHJpZ2dlciBy
ZWdpc3Rlci4NCj4gPj4+IENhcHR1cmluZyB0aGUgQ1JDIGlzIGRvbmUgYWZ0ZXIgdGhlIGFzeW5j
IGZsaXAgYXMgYXN5bmMgZmxpcCBhdCBzb21lDQo+ID4+PiB0aW1lcyBjYW4gY29uc3VtZSBmYWly
bHkgYSB2YmxhbmsgcGVyaW9kIHRpbWUuDQo+ID4+Pg0KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQXJ1
biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4+PiAtLS0NCj4gPj4+ICAg
IHRlc3RzL2k5MTUva21zX2JpZ19mYi5jIHwgMjkgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0NCj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlv
bnMoLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9rbXNfYmlnX2ZiLmMg
Yi90ZXN0cy9pOTE1L2ttc19iaWdfZmIuYyBpbmRleA0KPiA+Pj4gZDUwZmRlNDUuLjZjYWYzYzMx
IDEwMDY0NA0KPiA+Pj4gLS0tIGEvdGVzdHMvaTkxNS9rbXNfYmlnX2ZiLmMNCj4gPj4+ICsrKyBi
L3Rlc3RzL2k5MTUva21zX2JpZ19mYi5jDQo+ID4+PiBAQCAtNDY1LDcgKzQ2NSw3IEBAIHN0YXRp
YyBib29sIHRlc3RfcGlwZShkYXRhX3QgKmRhdGEpDQo+ID4+PiAgICBzdGF0aWMgYm9vbA0KPiA+
Pj4gICAgbWF4X2h3X3N0cmlkZV9hc3luY19mbGlwX3Rlc3QoZGF0YV90ICpkYXRhKQ0KPiA+Pj4g
ICAgew0KPiA+Pj4gLQl1aW50MzJfdCByZXQsIHN0YXJ0ZnJhbWU7DQo+ID4+PiArCXVpbnQzMl90
IHJldCwgZnJhbWU7DQo+ID4+PiAgICAJY29uc3QgdWludDMyX3QgdyA9IGRhdGEtPm91dHB1dC0+
Y29uZmlnLmRlZmF1bHRfbW9kZS5oZGlzcGxheSwNCj4gPj4+ICAgIAkJICAgICAgIGggPSBkYXRh
LT5vdXRwdXQtPmNvbmZpZy5kZWZhdWx0X21vZGUudmRpc3BsYXk7DQo+ID4+PiAgICAJaWd0X3Bs
YW5lX3QgKnByaW1hcnk7DQo+ID4+PiBAQCAtNTE5LDcgKzUxOSwxOSBAQCBtYXhfaHdfc3RyaWRl
X2FzeW5jX2ZsaXBfdGVzdChkYXRhX3QgKmRhdGEpDQo+ID4+Pg0KPiA+PiBEUk1fTU9ERV9BVE9N
SUNfQUxMT1dfTU9ERVNFVCwgTlVMTCk7DQo+ID4+PiAgICAJCWlndF93YWl0X2Zvcl92Ymxhbmso
ZGF0YS0+ZHJtX2ZkLCBkYXRhLQ0KPiA+Pj4gZGlzcGxheS5waXBlc1twcmltYXJ5LT5waXBlLT5w
aXBlXS5jcnRjX29mZnNldCk7DQo+ID4+PiAtCQlzdGFydGZyYW1lID0ga21zdGVzdF9nZXRfdmJs
YW5rKGRhdGEtPmRybV9mZCwgZGF0YS0+cGlwZSwNCj4gPj4gMCkgKyAxOw0KPiA+Pj4gKwkJLyoN
Cj4gPj4+ICsJCSAqIEluIG9sZGVyIHBsYXRmb3JtcyAoPD0gR2VuMTApLCBhc3luYyBhZGRyZXNz
IHVwZGF0ZSBiaXQgaXMNCj4gPj4gZG91YmxlIGJ1ZmZlcmVkLg0KPiA+Pj4gKwkJICogU28gZmxp
cCB0aW1lc3RhbXAgY2FuIGJlIHZlcmlmaWVkIG9ubHkgZnJvbSB0aGUgc2Vjb25kIGZsaXAuDQo+
ID4+PiArCQkgKiBUaGUgZmlyc3QgYXN5bmMgZmxpcCBqdXN0IGVuYWJsZXMgdGhlIGFzeW5jIGFk
ZHJlc3MgdXBkYXRlLg0KPiA+Pj4gKwkJICogSW4gcGxhdGZvcm1zIGdyZWF0ZXIgdGhhbiBESVNQ
TEFZMTMgdGhlIGZpcnN0IGFzeW5jIGZsaXAgd2lsbA0KPiA+PiBiZSBkaXNjYXJkZWQNCj4gPj4+
ICsJCSAqIGluIG9yZGVyIHRvIGNoYW5nZSB0aGUgd2F0ZXJtYXJrIGxldmVscyBhcyBwZXIgdGhl
DQo+ID4+IG9wdGltaXphdGlvbi4gSGVuY2UgdGhlDQo+ID4+PiArCQkgKiBzdWJzZXF1ZW50IGFz
eW5jIGZsaXBzIHdpbGwgYWN0dWFsbHkgZG8gdGhlIGFzeW5jaHJvbm91cw0KPiA+PiBmbGlwcy4N
Cj4gPj4+ICsJCSAqLw0KPiA+Pj4gKwkJcmV0ID0gZHJtTW9kZVBhZ2VGbGlwKGRhdGEtPmRybV9m
ZCwgZGF0YS0+b3V0cHV0LQ0KPiA+Pj4gY29uZmlnLmNydGMtPmNydGNfaWQsDQo+ID4+PiArCQkJ
CQkJICAgICAgZGF0YS0+YmlnX2ZiX2ZsaXBbaV0uZmJfaWQsDQo+ID4+PiArDQo+ID4+IERSTV9N
T0RFX1BBR0VfRkxJUF9BU1lOQywgTlVMTCk7DQo+ID4+PiArCQlpZ3Rfd2FpdF9mb3JfdmJsYW5r
KGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+IGRpc3BsYXkucGlwZXNbcHJpbWFyeS0+cGlwZS0+
cGlwZV0uY3J0Y19vZmZzZXQpOw0KPiA+Pj4gKwkJZnJhbWUgPSBrbXN0ZXN0X2dldF92Ymxhbmso
ZGF0YS0+ZHJtX2ZkLCBkYXRhLT5waXBlLCAwKSArDQo+ID4+IDE7DQo+ID4+DQo+ID4+IEhpLA0K
PiA+Pg0KPiA+PiBTaG91bGQgdGhpcyBiZSBhZGRlZCBpbnNpZGUgYSBnZW4gY2hlY2sgc2ltaWxh
ciB0byBrbXNfYXN5bmNfZmxpcHM/DQo+ID4gWWVzIHNvcnJ5IG1pc3NlZCBpdCENCj4gPg0KPiA+
Pj4gICAgCQlmb3IgKGludCBqID0gMDsgaiA8IDI7IGorKykgew0KPiA+Pj4gICAgCQkJZG8gew0K
PiA+Pj4gQEAgLTUyOCwyMyArNTQwLDIwIEBAIG1heF9od19zdHJpZGVfYXN5bmNfZmxpcF90ZXN0
KGRhdGFfdCAqZGF0YSkNCj4gPj4+DQo+ID4+IERSTV9NT0RFX1BBR0VfRkxJUF9BU1lOQywgTlVM
TCk7DQo+ID4+PiAgICAJCQl9IHdoaWxlIChyZXQgPT0gLUVCVVNZKTsNCj4gPj4+ICAgIAkJCWln
dF9hc3NlcnQocmV0ID09IDApOw0KPiA+Pj4gKwkJCWlndF9waXBlX2NyY19nZXRfZm9yX2ZyYW1l
KGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+IHBpcGVfY3JjLA0KPiA+Pj4gKwkJCQkJICAgZnJh
bWUsICZjb21wYXJlX2NyYyk7DQo+ID4+Pg0KPiA+Pj4gKwkJCWZyYW1lID0ga21zdGVzdF9nZXRf
dmJsYW5rKGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+IHBpcGUsIDApICsgMTsNCj4gPj4+ICAg
IAkJCWRvIHsNCj4gPj4+ICAgIAkJCQlyZXQgPSBkcm1Nb2RlUGFnZUZsaXAoZGF0YS0+ZHJtX2Zk
LCBkYXRhLQ0KPiA+Pj4gb3V0cHV0LT5jb25maWcuY3J0Yy0+Y3J0Y19pZCwNCj4gPj4+ICAgIAkJ
CQkJCSAgICAgIGRhdGEtPmJpZ19mYi5mYl9pZCwNCj4gPj4+DQo+ID4+IERSTV9NT0RFX1BBR0Vf
RkxJUF9BU1lOQywgTlVMTCk7DQo+ID4+PiAgICAJCQl9IHdoaWxlIChyZXQgPT0gLUVCVVNZKTsN
Cj4gPj4+ICAgIAkJCWlndF9hc3NlcnQocmV0ID09IDApOw0KPiA+Pj4gKwkJCWlndF9waXBlX2Ny
Y19nZXRfZm9yX2ZyYW1lKGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+IHBpcGVfY3JjLA0KPiA+
Pj4gKwkJCQkJICAgZnJhbWUsICZhc3luY19jcmMpOw0KPiA+PiBXZSBzaG91bGQgYmUgbW92aW5n
IHRoaXMgSU1ITy4gQnkgd2FpdGluZyBmb3IgdmJsYW5rIGFmdGVyIGVhY2ggYXN5bmMNCj4gPj4g
ZmxpcCB0byBjYXB0dXJlIENSQywgd2hhdCBpcyB0aGUgaW50ZW5kZWQgcmVzdWx0PyBTZWVtcyB0
byBiZQ0KPiA+PiBjb21wbGV0ZWx5IGNoYW5naW5nIHRoZSBleGlzdGluZyB0ZXN0IGxvZ2ljLg0K
PiA+IFdlIGFyZSBnZXR0aW5nIHRoZSB2YmxhbmsgY291bnQgYW5kIGJhc2VkIG9uIHRoYXQgZ2V0
dGluZyB0aGUgY3JjLiBOb3cNCj4gPiB3ZSBrbm93IGZvciBhc3luYyBmbGlwIGF0IGNlcnRhaW4g
dGltZXMgaXQgY2FuIGNvbnN1bWUgYSB0aW1lDQo+ID4gZXF1aXZhbGVudCB0byBhIHZibGFuayBw
ZXJpb2QuIFNvIGluIHRob3NlIHNjZW5hcmlvcyBnZXR0aW5nIGNyYyBiYXNlZA0KPiA+IG9uIHRo
ZSB2YmxhbmsgZ29lcyBmb3IgYSB0b3NzLiBIZW5jZSBjYXB0dXJpbmcgdGhlIHZibGFuayBzdGFy
dCB0aW1lIHN0YW1wDQo+IGF0IHRoZSBiZWdpbm5pbmcgb2YgZWFjaCBmbGlwLg0KPiANCj4gSGks
DQo+IA0KPiBCdXQgd2hhdCBpcyB0aGUgdGhlIHJlZmVyZW5jZSBDUkMgd2UncmUgZXhwZWN0aW5n
PyBUaGUgb3JpZ2luYWwgbG9naWMgaXMNCj4gZGVzaWduZWQgdG8gbWF0Y2ggb24gb25lIGl0ZXJh
dGlvbiBhbmQgbWlzbWF0Y2ggb24gdGhlIG5leHQgdXNpbmcgYQ0KPiBjb21iaW5hdGlvbiBvZiBm
YidzIGJ5IHVzaW5nIGFzeW5jIGZsaXBzLiBCdXQgd2l0aCB0aGVzZSBjaGFuZ2VzIHRoYXQgd2hv
bGUNCj4gbG9naWMgZ29lcyBmb3IgYSB0b3NzPw0KPiANCkJ1dCBJIHNlZSB0aGlzIGxvZ2ljIGRv
ZXNu4oCZdCB3b3JrLiBXZSBjYW5ub3QgcmVseSBvbiB0aGUgQ1JDIGJhc2VkIG9uIHRoZSB2Ymxh
bmsgdGltZSBmcmFtZSBmb3IgZWFjaCBmbGlwcy4gU2luY2UgdGhpcyBpcyBhIGFzeW5jIGZsaXAg
YW5kIGF0IHRpbWVzIHRoZSBhc3luYyBmbGlwIGNhbiBjb25zdW1lIGEgdmJsYW5rIHRpbWUgcGVy
aW9kIGZvciBmbGlwcGluZy4gU28gdGhlIENSQyBjYXB0dXJlZCBiYXNlZCBvbiBzdGFydGVmcmFt
ZSsxIGxvZ2ljIGlzIG5vdCByaWdodC4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11
cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
