Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 094425B4115
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 22:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF3610EE67;
	Fri,  9 Sep 2022 20:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6423C10EE64;
 Fri,  9 Sep 2022 20:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662756852; x=1694292852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=weXbLeY5lB/sWWNCZzSHW4Tae0GxosIhy+Dzg2kBxlA=;
 b=Grp3fVIe6DaSuYamzzdeKCld/L+i9VjnbOdzUAYUN3rNS/wLk7iRV8Z6
 10hGcrDF3OWfcWLpK0DKPLCuq727AMKms6CidobWGNROK1rx5T0ihFCrL
 d29R653hD1d1ORrHZInzLpK8hduMDFqnSEg64bms4mfjiYDgchPu1MzH+
 41AnnUXPtlAq68eqUn9S80DpgyOL8GPpLKruhwHhjDK+wbwfROeQcUFn4
 ZJ1aq+3/sYmI3vaVxJSdADrs21YWnOmGVSLcG4+AuGeg5SkGq5dW1aU9H
 xuusJyETxy8U2/FG1EXUjJumGxmtjYbCAAkzNA8IzfHBKtcgJoNIyxZG6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="296306713"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="296306713"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 13:54:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="719088494"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 09 Sep 2022 13:54:11 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 13:54:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 13:54:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 13:54:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 13:54:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e2CF2AUu8IsrqI11F6k3psRpRyJ7OQkmWyxi+8ZkIz929kIKZzbkNjhZrYx8B9j1PHbUhbMix40lw2BEsElM6znorZLKO1HaMugAAEkIjJkUpu8oie0LR6KG1IDU5CtMsPO3Q0m8lhx4oDZXcWKNP78BPW6EcQW+7ra/slCYLKIrqTr7jwk8mVKKzZgUDluUG1QfmXFl5ONqqtsIaS5Ud6t6eu/YTVOmL9bSNOom2SO0AYMd1k2ixTx1B+RacpN734wkszbu87j0DSzDsW/f4eAnhtalghduZAeTxrmArtcPW8jeOsS0hCfvW8GnI11Je8Wep9K8GBTVu/UswAeLvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=weXbLeY5lB/sWWNCZzSHW4Tae0GxosIhy+Dzg2kBxlA=;
 b=X7oxnTRw3IKl4stNmLjdhcbMOefwY7MUtHGprU5RiHv1eSzXyD1sJOQPXrTbjlfQOVGAoJlkFNeMTYZYUdtkPhtZv8rb4TXD+gQk0YKuwbEoB5VJsT8J3+iibQV41C+vLPvuxymv5uEBiNfJh1s33mWuS+sufitrMGVfCYQNeYA/y4osILJ7V6D2VTdDzEL6yey7jo85SHjqCHcAYAw3o4V+MUpvi96iba77bRVhHEiHwAFtaswzF26dOy5VII88PL8bbY5DJVeKiN6KEIWOUeNTlQkqww4Uej9YbvzF3YUDsZYiMckZjbcVN2ZiPHRdxag/+0mIPc2pULcxp5Claw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CH0PR11MB5233.namprd11.prod.outlook.com (2603:10b6:610:e0::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.16; Fri, 9 Sep 2022 20:54:09 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5612.014; Fri, 9 Sep 2022
 20:54:08 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 10/15] drm/i915/dg2: setup HuC loading via GSC
Thread-Index: AQHYw+F9ZYyg7fADT0y/ZuCy3En/tq3XlVGA
Date: Fri, 9 Sep 2022 20:54:08 +0000
Message-ID: <fbe275c83ce6f24e973f698ebedd0722880c05a3.camel@intel.com>
References: <20220909001612.728451-1-daniele.ceraolospurio@intel.com>
 <20220909001612.728451-11-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220909001612.728451-11-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CH0PR11MB5233:EE_
x-ms-office365-filtering-correlation-id: 8cc140c8-8aba-487e-093c-08da92a57100
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /HgUszsjElgXm4sfL8Geoy7JZXW7uiGvAklu6SF/mwe+MflmR7rtsYnsluSKpFBsegBjWK/73X6eY6841ufbuFI6DOBERWfuSc3smUAjzaKvW5Yf9xGX8ww+90XtAidIsd9ryb1b2xlVUfGsnmBzwINY/DLs1DxXEkSdCdHQM2/DgmmrsS5AaHw63bRFYzVgFluRJYI0ikgaS9brpKAOMVypIDHnuRcJM+eTByeiPTIZCi/0HmdXCSCGTBzimx6xpDYgQnSVfKmmV4CMzzbdy0Nk/WTbKxISNg2UdZWzF1lolSeU1WZpxsyihi3kL6dJrgAAkhcNtsBPp4WU34D6uYlLNMwoDHe6YbDzHBlDZo0JCXKSj0xK0eK/Kh42ticGNjxmWlCqvqb9Z93kzjWqDK0nxaXG7HlS5GWb5NpHkmq4u7g7q0cgwmfLhR2Kryl0GgZeRF/Tamy3rj6bHYre1RUr4US1ApBLhdPD8Owc5N4UMwahE8VEyDldsn4PspJnG7hA32+7e0PKz62oDnS2DZ75GmW5fcAVmXKnLKujkBwNJmv9l/3E/IEm0Z9h/1Dn16xd7GhbY/6AuTDslxWtOBiKjWIuKmdVkj9ymls10oUG7Ad6/BU6ipxmswG94phhgkgrh/LRVuPc5spvxxJXxkzWa6TyosCYoUcACMgb0x7eztZTrNTkF/0Z2Oj4X3eZ6FpDzRMs5TlelIaxdBNE8wjkov3kFmEryc6EMjZCq1Ae3TgDx5/V7ktAk4YxYB7+UWLV4/ZQ5MEfCY9tHOX5Ww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(366004)(136003)(396003)(376002)(2616005)(122000001)(38100700002)(186003)(83380400001)(66476007)(64756008)(54906003)(66446008)(2906002)(110136005)(66556008)(66946007)(316002)(36756003)(8676002)(91956017)(76116006)(8936002)(450100002)(4326008)(107886003)(86362001)(6486002)(5660300002)(6512007)(6506007)(38070700005)(26005)(71200400001)(82960400001)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHZLRENaTkRobTh1N0xIM0ZFclZHRXVBWWVOMzdsQnJtV3d1K0dkV1NlQTBh?=
 =?utf-8?B?SmpZQ2p0L2ZVRTN5UFF6em5YVUVZSWdORHMxMWtLbUEyVk92dXdTL0tyUGdv?=
 =?utf-8?B?cXhtdGg1dkxFb0Y2SFQzbjNBZHBDcFQ2c0UwMTZUUy9ZUFNYVnliWVI0R1ZM?=
 =?utf-8?B?NHF5NVlxZ0xzTDNlbnNWdWc1V2pRSDJCTzVERmdqR1ZTUE9qTEIzM1lVQmNZ?=
 =?utf-8?B?QWJ6aEQ0ZmNieXVaWXkvalM3bzlHVFl3bGhnRU9tSHQ3RUhOY0JLaDlyZUZ2?=
 =?utf-8?B?b0VXYVhnaUJsOGdyRGluYVRmZXQvaFdiVUlVUEFhcmJmaWI1Vzkxc0tpVjdD?=
 =?utf-8?B?RDlZSUt0Q1lFbEY2VXBtUXhXMHF0aGRnQ3BZRVAzdm5vYmpoaVRLc2EydW5T?=
 =?utf-8?B?Rkdnd0tkdWlaUi9nTmpxVVBTb3hReUhRZjhhYjROOGVXeW1Mb2JNR3lHV2x2?=
 =?utf-8?B?d20wZEZCQzNJSVdjZ0FFREkzaFFocTVZRVJYZ3NsVU5DZzdyczNpWTZObHNQ?=
 =?utf-8?B?VGpiUitCWlJYRzY4NDU0dVZobU9BWGkyVjlMSmdaMjJJc3U1ZVpjYm5Qbldz?=
 =?utf-8?B?MVlQazV0SXZ5OGhsL01DcEp4NFRBaWZaUEh0VjZoOEYxZytVaTZwYkZ0UTNK?=
 =?utf-8?B?Szd5RWFzNW9mdDJsOHd4L08vWGxEMUw2cGJvdmsrV0RUSmdCN2NPcUZOdnZI?=
 =?utf-8?B?ZTVNTmhaOWlQNkp6ZWZNMzRpV3FSa1VIR2NyQ0xZdXU4TG1hcjZ6UnljcUNm?=
 =?utf-8?B?eUxqSGsyNkFCRERSdlpTaldFYld1SnJpZjNoQnVQQTd6NThnQWNlbHhnZ0hS?=
 =?utf-8?B?TjVsSTB3TFFQemVuU1F3NmtJOS9lOVpvK3hnL21takJyV3NyT05lTThRZ2FC?=
 =?utf-8?B?SDgyTUhhdEhxVzk0a1dxMXBSYWhBRllOOWxiRlorUnY4cEk5QVA0OHgraldq?=
 =?utf-8?B?bzdWZE1jZXV4aDRIUVhGT0NKWFNUWnlLMFQxTVdQblpnZnhIWC9BQXB1YXhU?=
 =?utf-8?B?ZEIrT2UvYlVaeUhRZ3FiNGlGdG9CaTE0b0U0RzY0ZG42NnkvTVk5WTV5VEc0?=
 =?utf-8?B?TUJlajg1RTJMdVZ4UVBZL1VEeE8zcU5VRkJPeGRCMlN5eFR1ZjNYQWJrRWFo?=
 =?utf-8?B?MDdkemhMbUFOb3I3UE0vVlNLMWM5NStqdVdLSUVRd1plV0FpN24xaU1tUFJu?=
 =?utf-8?B?a082aG1lL2o5bXFTZFhhYUdsdXBXNWYvZWVYZE9FdFRrNUhPeWFSdjA3VVk5?=
 =?utf-8?B?cjVObzFySVhyV0tvVm04NHQ5NmhocHJmMWpTK0xaSVo2c28vbTV3cGhQc3lv?=
 =?utf-8?B?NjhJL1JWOUpuTFdyWThIQTlDaU9FTE1tSUNHZDFpQ2RVZWhhcEZ6MFNlblR6?=
 =?utf-8?B?QjZjNzJub0xGcDhlWVB4TFd6aFhNd3RrTFk2MkFsQWkzWFpNZjkvN3Y5ZjZJ?=
 =?utf-8?B?dS9nV0FWVkRkV1FVaHptOE1Fd3drUmg0eDRpZmo4dmRlTkNTS3hNYU81QkFU?=
 =?utf-8?B?ZUVKM1NrWkhKNk9vZWNta1ZGTFY5WlJWaS9zRGRXUHVkdWlGVnRqQW9vQXp3?=
 =?utf-8?B?QVpMNThzUGNhZ0xlQzdsWXpnbVNteGV4OGxIUEV4ODk4cnlDWklpQ09lRnhl?=
 =?utf-8?B?OVU4UGwrT0pQV2t1OFY1TnJPTkViS0xzbkRqT1YzZTlpQjRQK1dnRWJKVHUy?=
 =?utf-8?B?c3pSUXM2RWFuS2lKdU43b05iYmc3NlZpeW1HWlMrVnViei9ITklmbzdCM0pa?=
 =?utf-8?B?VDJpS25rdjg1L3NMVUdmamlyelhkelZSc2ZzSDBKYzJWR29UNkd2Z0JrSHU2?=
 =?utf-8?B?WmRabFU2NEhwMmZwUHlWTWpRSUVYcVhTSVVPYTRSUG9QYlRFdFhPYkhzbUZ5?=
 =?utf-8?B?bWtvSjdaOERab3ZpT0Q2UzJPa3BQQmJhUHFibXpzU2VPayt2QVh4WVFCZ3Bm?=
 =?utf-8?B?N0ZnNndZT0luTy85Zk5TZ1owOE1wQjgrUmZtOGlUL0o0Y2gzL3NNSUlGRHdh?=
 =?utf-8?B?SEdVUTBkS3dEZnQ1WDhXbW5QcjBqamt0RmZqM1lJRDM4Tm5nNUsxdldGSVV1?=
 =?utf-8?B?QUVDaHFhL3V3K1IzejA5eG9FODExQitXc3hwN09QZlBvREk3WDNaZmlzWXk2?=
 =?utf-8?B?M0JlTzJkSjNDQTY1SlptSko0WGI4bk5OWFBHbGU1ZVFyNS9uRUprSkpldzRq?=
 =?utf-8?Q?eQObjnfjve6Oc4SGojo8zjvz9HGqimflwuNhDY3PMc8l?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E0436D638907A40B67E75E234705578@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc140c8-8aba-487e-093c-08da92a57100
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 20:54:08.9277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4GmlBijDtcCEn0x53oQSFWLpZFkQeEkv0hlQsqPEuO+zx+ylAM5ZUE8F6hJzyQgDUzFNqtci2F5OSupDUCBqC5j7J0evifE6/d1MnR/mJhwXdJcQ70C5wtE1ntUSzsKd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5233
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 10/15] drm/i915/dg2: setup HuC loading
 via GSC
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmVhcmx5IGlkZW50aWNhbCBhcyBiZWZvcmU6DQpSZXZpZXdlZC1ieTogQWxhbiBQcmV2aW4gPGFs
YW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQoNCg0KT24gVGh1LCAyMDIyLTA5LTA4
IGF0IDE3OjE2IC0wNzAwLCBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSB3cm90ZToNCj4gVGhlIEdT
QyB3aWxsIHBlcmZvcm0gYm90aCB0aGUgbG9hZCBhbmQgdGhlIGF1dGhlbnRpY2F0aW9uLCBzbyB3
ZSBqdXN0DQo+IG5lZWQgdG8gY2hlY2sgdGhlIGF1dGggYml0IGFmdGVyIHRoZSBHU0MgaGFzIHJl
cGxpZWQuDQo+IFNpbmNlIHdlIHJlcXVpcmUgdGhlIFBYUCBtb2R1bGUgdG8gbG9hZCB0aGUgSHVD
LCB0aGUgZWFybGllc3Qgd2UgY2FuDQo+IHRyaWdnZXIgdGhlIGxvYWQgaXMgZHVyaW5nIHRoZSBw
eHBfYmluZCBvcGVyYXRpb24uDQo+IA0KPiBOb3RlIHRoYXQgR1NDLWxvYWRlZCBIdUMgc3Vydml2
ZXMgR1QgcmVzZXQsIHNvIHdlIG5lZWQgdG8ganVzdCBtYXJrIGl0DQo+IGFzIHJlYWR5IHdoZW4g
d2UgcmUtaW5pdCB0aGUgR1QgSFcuDQo+IA0KPiBWMjogbW92ZSBzZXR0aW5nIG9mIEh1QyBmdyBl
cnJvciBzdGF0ZSB0byB0aGUgZmFpbHVyZSBwYXRoIG9mIHRoZSBIdUMNCj4gYXV0aCBmdW5jdGlv
biwgc28gaXQgY292ZXJzIGJvdGggdGhlIGxlZ2FjeSBhbmQgbmV3IGF1dGggZmxvd3MNCj4gVjQ6
DQo+IDEuIEZpeCB0eXBvIGluIHRoZSBjb21taXQgbWVzc2FnZQ0KPiAyLiBzdHlsZSBmaXggaW4g
aW50ZWxfaHVjX3dhaXRfZm9yX2F1dGhfY29tcGxldGUoKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogVml0YWx5IEx1YmFydCA8dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IFRvbWFzIFdpbmtsZXIgPHRvbWFzLndpbmtsZXJAaW50ZWwuY29t
Pg0KPiBSZXZpZXdlZC1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0Bp
bnRlbC5jb20+ICN2Mg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Yy5jICAgIHwgNDEgKysrKysrKysrKysrKysrLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5oICAgIHwgIDIgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jIHwgMzQgKysrKysrKysrKysrKysrKysrKw0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmggfCAgMSArDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jICB8IDE0ICsrKysrKystDQo+ICA1IGZp
bGVzIGNoYW5nZWQsIDc3IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMNCj4gaW5kZXggM2JiODgzOGUzMjVhLi5m
MDE4ODkzMWQ4ZTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2h1Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5j
DQo+IEBAIC0xMjUsNiArMTI1LDI4IEBAIHZvaWQgaW50ZWxfaHVjX2Zpbmkoc3RydWN0IGludGVs
X2h1YyAqaHVjKQ0KPiAgCWludGVsX3VjX2Z3X2ZpbmkoJmh1Yy0+ZncpOw0KPiAgfQ0KPiAgDQo+
ICtpbnQgaW50ZWxfaHVjX3dhaXRfZm9yX2F1dGhfY29tcGxldGUoc3RydWN0IGludGVsX2h1YyAq
aHVjKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBodWNfdG9fZ3QoaHVjKTsNCj4g
KwlpbnQgcmV0Ow0KPiArDQo+ICsJcmV0ID0gX19pbnRlbF93YWl0X2Zvcl9yZWdpc3RlcihndC0+
dW5jb3JlLA0KPiArCQkJCQlodWMtPnN0YXR1cy5yZWcsDQo+ICsJCQkJCWh1Yy0+c3RhdHVzLm1h
c2ssDQo+ICsJCQkJCWh1Yy0+c3RhdHVzLnZhbHVlLA0KPiArCQkJCQkyLCA1MCwgTlVMTCk7DQo+
ICsNCj4gKwlpZiAocmV0KSB7DQo+ICsJCWRybV9lcnIoJmd0LT5pOTE1LT5kcm0sICJIdUM6IEZp
cm13YXJlIG5vdCB2ZXJpZmllZCAlZFxuIiwgcmV0KTsNCj4gKwkJaW50ZWxfdWNfZndfY2hhbmdl
X3N0YXR1cygmaHVjLT5mdywgSU5URUxfVUNfRklSTVdBUkVfTE9BRF9GQUlMKTsNCj4gKwkJcmV0
dXJuIHJldDsNCj4gKwl9DQo+ICsNCj4gKwlpbnRlbF91Y19md19jaGFuZ2Vfc3RhdHVzKCZodWMt
PmZ3LCBJTlRFTF9VQ19GSVJNV0FSRV9SVU5OSU5HKTsNCj4gKwlkcm1faW5mbygmZ3QtPmk5MTUt
PmRybSwgIkh1QyBhdXRoZW50aWNhdGVkXG4iKTsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0K
PiAgLyoqDQo+ICAgKiBpbnRlbF9odWNfYXV0aCgpIC0gQXV0aGVudGljYXRlIEh1QyB1Q29kZQ0K
PiAgICogQGh1YzogaW50ZWxfaHVjIHN0cnVjdHVyZQ0KPiBAQCAtMTYxLDI3ICsxODMsMTggQEAg
aW50IGludGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4gIAl9DQo+ICANCj4g
IAkvKiBDaGVjayBhdXRoZW50aWNhdGlvbiBzdGF0dXMsIGl0IHNob3VsZCBiZSBkb25lIGJ5IG5v
dyAqLw0KPiAtCXJldCA9IF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoZ3QtPnVuY29yZSwNCj4g
LQkJCQkJaHVjLT5zdGF0dXMucmVnLA0KPiAtCQkJCQlodWMtPnN0YXR1cy5tYXNrLA0KPiAtCQkJ
CQlodWMtPnN0YXR1cy52YWx1ZSwNCj4gLQkJCQkJMiwgNTAsIE5VTEwpOw0KPiAtCWlmIChyZXQp
IHsNCj4gLQkJRFJNX0VSUk9SKCJIdUM6IEZpcm13YXJlIG5vdCB2ZXJpZmllZCAlZFxuIiwgcmV0
KTsNCj4gKwlyZXQgPSBpbnRlbF9odWNfd2FpdF9mb3JfYXV0aF9jb21wbGV0ZShodWMpOw0KPiAr
CWlmIChyZXQpDQo+ICAJCWdvdG8gZmFpbDsNCj4gLQl9DQo+ICANCj4gLQlpbnRlbF91Y19md19j
aGFuZ2Vfc3RhdHVzKCZodWMtPmZ3LCBJTlRFTF9VQ19GSVJNV0FSRV9SVU5OSU5HKTsNCj4gLQlk
cm1faW5mbygmZ3QtPmk5MTUtPmRybSwgIkh1QyBhdXRoZW50aWNhdGVkXG4iKTsNCj4gIAlyZXR1
cm4gMDsNCj4gIA0KPiAgZmFpbDoNCj4gIAlpOTE1X3Byb2JlX2Vycm9yKGd0LT5pOTE1LCAiSHVD
OiBBdXRoZW50aWNhdGlvbiBmYWlsZWQgJWRcbiIsIHJldCk7DQo+IC0JaW50ZWxfdWNfZndfY2hh
bmdlX3N0YXR1cygmaHVjLT5mdywgSU5URUxfVUNfRklSTVdBUkVfTE9BRF9GQUlMKTsNCj4gIAly
ZXR1cm4gcmV0Ow0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgYm9vbCBodWNfaXNfYXV0aGVudGljYXRl
ZChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpDQo+ICtib29sIGludGVsX2h1Y19pc19hdXRoZW50aWNh
dGVkKHN0cnVjdCBpbnRlbF9odWMgKmh1YykNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0
ID0gaHVjX3RvX2d0KGh1Yyk7DQo+ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+IEBAIC0y
MjMsNyArMjM2LDcgQEAgaW50IGludGVsX2h1Y19jaGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1
YyAqaHVjKQ0KPiAgCQlicmVhazsNCj4gIAl9DQo+ICANCj4gLQlyZXR1cm4gaHVjX2lzX2F1dGhl
bnRpY2F0ZWQoaHVjKTsNCj4gKwlyZXR1cm4gaW50ZWxfaHVjX2lzX2F1dGhlbnRpY2F0ZWQoaHVj
KTsNCj4gIH0NCj4gIA0KPiAgdm9pZCBpbnRlbF9odWNfdXBkYXRlX2F1dGhfc3RhdHVzKHN0cnVj
dCBpbnRlbF9odWMgKmh1YykNCj4gQEAgLTIzMSw3ICsyNDQsNyBAQCB2b2lkIGludGVsX2h1Y191
cGRhdGVfYXV0aF9zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAgCWlmICghaW50ZWxf
dWNfZndfaXNfbG9hZGFibGUoJmh1Yy0+ZncpKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gLQlpZiAo
aHVjX2lzX2F1dGhlbnRpY2F0ZWQoaHVjKSkNCj4gKwlpZiAoaW50ZWxfaHVjX2lzX2F1dGhlbnRp
Y2F0ZWQoaHVjKSkNCj4gIAkJaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cygmaHVjLT5mdywNCj4g
IAkJCQkJICBJTlRFTF9VQ19GSVJNV0FSRV9SVU5OSU5HKTsNCj4gIH0NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmgNCj4gaW5kZXggZDdlMjViNmU4NzllLi41MWY5ZDk2YTNj
YTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5oDQo+IEBAIC0y
Niw4ICsyNiwxMCBAQCB2b2lkIGludGVsX2h1Y19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9odWMg
Kmh1Yyk7DQo+ICBpbnQgaW50ZWxfaHVjX2luaXQoc3RydWN0IGludGVsX2h1YyAqaHVjKTsNCj4g
IHZvaWQgaW50ZWxfaHVjX2Zpbmkoc3RydWN0IGludGVsX2h1YyAqaHVjKTsNCj4gIGludCBpbnRl
bF9odWNfYXV0aChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpOw0KPiAraW50IGludGVsX2h1Y193YWl0
X2Zvcl9hdXRoX2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7DQo+ICBpbnQgaW50ZWxf
aHVjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfaHVjICpodWMpOw0KPiAgdm9pZCBpbnRlbF9o
dWNfdXBkYXRlX2F1dGhfc3RhdHVzKHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7DQo+ICtib29sIGlu
dGVsX2h1Y19pc19hdXRoZW50aWNhdGVkKHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7DQo+ICANCj4g
IHN0YXRpYyBpbmxpbmUgaW50IGludGVsX2h1Y19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfaHVjICpo
dWMpDQo+ICB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9odWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jDQo+
IGluZGV4IDlkNmFiMWUwMTYzOS4uNGYyNDY0MTZkYjE3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYw0KPiBAQCAtMyw5ICszLDQzIEBADQo+ICAgKiBD
b3B5cmlnaHQgwqkgMjAxNC0yMDE5IEludGVsIENvcnBvcmF0aW9uDQo+ICAgKi8NCj4gIA0KPiAr
I2luY2x1ZGUgImd0L2ludGVsX2dzYy5oIg0KPiAgI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiDQo+
ICsjaW5jbHVkZSAiaW50ZWxfaHVjLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfaHVjX2Z3LmgiDQo+
ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gKyNpbmNsdWRlICJweHAvaW50ZWxfcHhwX2h1Yy5o
Ig0KPiArDQo+ICtpbnQgaW50ZWxfaHVjX2Z3X2xvYWRfYW5kX2F1dGhfdmlhX2dzYyhzdHJ1Y3Qg
aW50ZWxfaHVjICpodWMpDQo+ICt7DQo+ICsJaW50IHJldDsNCj4gKw0KPiArCWlmICghaW50ZWxf
aHVjX2lzX2xvYWRlZF9ieV9nc2MoaHVjKSkNCj4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ICsNCj4g
KwlpZiAoIWludGVsX3VjX2Z3X2lzX2xvYWRhYmxlKCZodWMtPmZ3KSkNCj4gKwkJcmV0dXJuIC1F
Tk9FWEVDOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBJZiB3ZSBhYm9ydCBhIHN1c3BlbmQsIEh1QyBt
aWdodCBzdGlsbCBiZSBsb2FkZWQgd2hlbiB0aGUgbWVpDQo+ICsJICogY29tcG9uZW50IGdldHMg
cmUtYm91bmQgYW5kIHRoaXMgZnVuY3Rpb24gY2FsbGVkIGFnYWluLiBJZiBzbywganVzdA0KPiAr
CSAqIG1hcmsgdGhlIEh1QyBhcyBsb2FkZWQuDQo+ICsJICovDQo+ICsJaWYgKGludGVsX2h1Y19p
c19hdXRoZW50aWNhdGVkKGh1YykpIHsNCj4gKwkJaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cygm
aHVjLT5mdywgSU5URUxfVUNfRklSTVdBUkVfUlVOTklORyk7DQo+ICsJCXJldHVybiAwOw0KPiAr
CX0NCj4gKw0KPiArCUdFTV9XQVJOX09OKGludGVsX3VjX2Z3X2lzX2xvYWRlZCgmaHVjLT5mdykp
Ow0KPiArDQo+ICsJcmV0ID0gaW50ZWxfcHhwX2h1Y19sb2FkX2FuZF9hdXRoKCZodWNfdG9fZ3Qo
aHVjKS0+cHhwKTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0KPiArDQo+ICsJaW50
ZWxfdWNfZndfY2hhbmdlX3N0YXR1cygmaHVjLT5mdywgSU5URUxfVUNfRklSTVdBUkVfVFJBTlNG
RVJSRUQpOw0KPiArDQo+ICsJcmV0dXJuIGludGVsX2h1Y193YWl0X2Zvcl9hdXRoX2NvbXBsZXRl
KGh1Yyk7DQo+ICt9DQo+ICANCj4gIC8qKg0KPiAgICogaW50ZWxfaHVjX2Z3X3VwbG9hZCgpIC0g
bG9hZCBIdUMgdUNvZGUgdG8gZGV2aWNlIHZpYSBETUEgdHJhbnNmZXINCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmgNCj4gaW5kZXggMTJmMjY0ZWUzZTBiLi5kYjQy
ZTIzOGI0NWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Y19mdy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19m
dy5oDQo+IEBAIC04LDYgKzgsNyBAQA0KPiAgDQo+ICBzdHJ1Y3QgaW50ZWxfaHVjOw0KPiAgDQo+
ICtpbnQgaW50ZWxfaHVjX2Z3X2xvYWRfYW5kX2F1dGhfdmlhX2dzYyhzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMpOw0KPiAgaW50IGludGVsX2h1Y19md191cGxvYWQoc3RydWN0IGludGVsX2h1YyAqaHVj
KTsNCj4gIA0KPiAgI2VuZGlmDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9w
eHAvaW50ZWxfcHhwX3RlZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90
ZWUuYw0KPiBpbmRleCBlMGQwOTQ1NWE5MmUuLjAwNDMzZjU5ZTJjOCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jDQo+IEBAIC0xNCw2ICsxNCw3IEBADQo+
ICAjaW5jbHVkZSAiaW50ZWxfcHhwX3Nlc3Npb24uaCINCj4gICNpbmNsdWRlICJpbnRlbF9weHBf
dGVlLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcHhwX3RlZV9pbnRlcmZhY2UuaCINCj4gKyNpbmNs
dWRlICJpbnRlbF9weHBfaHVjLmgiDQo+ICANCj4gIHN0YXRpYyBpbmxpbmUgc3RydWN0IGludGVs
X3B4cCAqaTkxNV9kZXZfdG9fcHhwKHN0cnVjdCBkZXZpY2UgKmk5MTVfa2RldikNCj4gIHsNCj4g
QEAgLTEyNiwxMyArMTI3LDI0IEBAIHN0YXRpYyBpbnQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF9i
aW5kKHN0cnVjdCBkZXZpY2UgKmk5MTVfa2RldiwNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGtkZXZfdG9faTkxNShpOTE1X2tkZXYpOw0KPiAgCXN0cnVjdCBpbnRl
bF9weHAgKnB4cCA9IGk5MTVfZGV2X3RvX3B4cChpOTE1X2tkZXYpOw0KPiArCXN0cnVjdCBpbnRl
bF91YyAqdWMgPSAmcHhwX3RvX2d0KHB4cCktPnVjOw0KPiAgCWludGVsX3dha2VyZWZfdCB3YWtl
cmVmOw0KPiArCWludCByZXQgPSAwOw0KPiAgDQo+ICAJbXV0ZXhfbG9jaygmcHhwLT50ZWVfbXV0
ZXgpOw0KPiAgCXB4cC0+cHhwX2NvbXBvbmVudCA9IGRhdGE7DQo+ICAJcHhwLT5weHBfY29tcG9u
ZW50LT50ZWVfZGV2ID0gdGVlX2tkZXY7DQo+ICAJbXV0ZXhfdW5sb2NrKCZweHAtPnRlZV9tdXRl
eCk7DQo+ICANCj4gKwlpZiAoaW50ZWxfdWNfdXNlc19odWModWMpICYmIGludGVsX2h1Y19pc19s
b2FkZWRfYnlfZ3NjKCZ1Yy0+aHVjKSkgew0KPiArCQl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJmk5
MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpIHsNCj4gKwkJCS8qIGxvYWQgaHVjIHZpYSBweHAgKi8N
Cj4gKwkJCXJldCA9IGludGVsX2h1Y19md19sb2FkX2FuZF9hdXRoX3ZpYV9nc2MoJnVjLT5odWMp
Ow0KPiArCQkJaWYgKHJldCA8IDApDQo+ICsJCQkJZHJtX2VycigmaTkxNS0+ZHJtLCAiZmFpbGVk
IHRvIGxvYWQgaHVjIHZpYSBnc2MgJWRcbiIsIHJldCk7DQo+ICsJCX0NCj4gKwl9DQo+ICsNCj4g
IAkvKiBpZiB3ZSBhcmUgc3VzcGVuZGVkLCB0aGUgSFcgd2lsbCBiZSByZS1pbml0aWFsaXplZCBv
biByZXN1bWUgKi8NCj4gIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXRfaWZfaW5fdXNl
KCZpOTE1LT5ydW50aW1lX3BtKTsNCj4gIAlpZiAoIXdha2VyZWYpDQo+IEBAIC0xNDQsNyArMTU2
LDcgQEAgc3RhdGljIGludCBpOTE1X3B4cF90ZWVfY29tcG9uZW50X2JpbmQoc3RydWN0IGRldmlj
ZSAqaTkxNV9rZGV2LA0KPiAgDQo+ICAJaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRp
bWVfcG0sIHdha2VyZWYpOw0KPiAgDQo+IC0JcmV0dXJuIDA7DQo+ICsJcmV0dXJuIHJldDsNCj4g
IH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF91bmJpbmQoc3Ry
dWN0IGRldmljZSAqaTkxNV9rZGV2LA0KPiAtLSANCj4gMi4zNy4yDQo+IA0KDQo=
