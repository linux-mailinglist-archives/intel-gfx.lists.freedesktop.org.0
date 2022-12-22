Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671CA653A40
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 02:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C36E10E429;
	Thu, 22 Dec 2022 01:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C154110E429
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 01:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671672038; x=1703208038;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nzEmFkwa2mxV44hMr/Hcyr7Nc8z5L+4z8nkT+u+5TBI=;
 b=k/5MMhUgqhKnhxNui/DlXjOEcCxAIszcfwcLVO3n52iRW9GYghVKpE6b
 fJw4dmYczpflfw0dwySVjMwz9rD5OGDgFQfKIj+1ngVc/2M7/AJq39Iw4
 8vxn2oORBRysIQSjUFpEkCgtxU63F1SAj2+SEwSHwFJg5EN97roWZaCIC
 4SvLlaR4Ts1mLqsEqA/qRNcApxXNNnudU2Y0pLehizY/qjEQE5YeyRVk+
 UJawYj7yw1C0GITL5CunLj0aQEu0m2yPDhTBWmVawhdnkc+4Y/CQlZAqp
 FgM+yrV8bxPIxEA3saXa/jbhQ/uMNAfGPXbTcD8MG9jSvJPxfTi/uD2Kc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="382239167"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="382239167"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 17:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="980397771"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="980397771"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 21 Dec 2022 17:20:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 17:20:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 17:20:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 17:20:25 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 17:20:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a38vVjg7FbPO5FVjA6Eth/x1aYm9J7MGlDFU80LwxmRgpbM6r0QZrsQODJxzoru9zK6fLjHcMfRjBGeyxxfglcj8lcPqhIdxwwzHKPykvqdrovKiEnEgYKJL7hEzCC7Zyak8+gMXxAQyyRN0xGjzjuDKBumLu0KXJwb1SWIy4JmeVURAub5vv418Nqg5fD59ZTYZU/4vzTWberg4+n/eN8gcR6w3MafTGyFsTXILI8YJ1/JnH7Hy2RxS2HJp9J8BipZvCkOfLAWc/Y9NACJtYEX3aS9nAKuzC/cDAQli057+WpFR4a6SyWO8ZJhumdg+CCI/uSf/8l9AaTMjFQ5dYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nzEmFkwa2mxV44hMr/Hcyr7Nc8z5L+4z8nkT+u+5TBI=;
 b=JsYHuAQZQ+SCX/Sbkn2TiHT25/j/FlOyzLbvv7KdUYosC8muxyLurD5DayGV2Kmh/qj9Wa653rOOVZH8Aucz4u59QxGP2/s5Zey+gQaYiaUAUd8RQNkQv24LuoiVRP75cf77+fGAtrLIzBAbmUDubtcFPckUppzmjRjeKhQLJGhNopcR5U93HhvHf5pjaHUFMujElRZF0LXi5P5T1nMiqrDrGtdoHqjIm/oQYya5cmVJ6H/2K9VP2szxSZzaq/+Ia7+2MKBTVkobapifZpkny+n/Zt1E6UaUkzG10Fea5FGJbcU6F53m7h//c/xoswNqV3GMIerQCpl39hF4tZvXCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5094.namprd11.prod.outlook.com (2603:10b6:510:3f::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Thu, 22 Dec 2022 01:20:23 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.016; Thu, 22 Dec 2022
 01:20:22 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 1/7] drm/i915/gsc: Create GSC request submission
 mechanism
Thread-Index: AQHZD5u7uAijxZNHE06XVo4PbhoZe65vVlaAgAb6ogCAAte6AA==
Date: Thu, 22 Dec 2022 01:20:22 +0000
Message-ID: <611b8a77bac6e42a30610dad5788ce936e42d217.camel@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-2-suraj.kandpal@intel.com>
 <29c51b99784f84c81e8155c6c7d35029c728dde8.camel@intel.com>
 <MWHPR11MB17417BA768F433EC1F256F4EE3EA9@MWHPR11MB1741.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB17417BA768F433EC1F256F4EE3EA9@MWHPR11MB1741.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5094:EE_
x-ms-office365-filtering-correlation-id: 8a76090b-4161-4263-6ef5-08dae3bab2bc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NGwDBemZGo5I1tE2iodBwSBn18OJDU9oEa5mLK7L7QrbsCaNuYgoRYeWVSRE51oti9DHw6glaRUtB1viiRiybVXDutfpBAj2AdPX6awbl8L4NaRC3oVv1CnYn8Jeihw5WWgvuRLGAlw/6utT1+5H9+/twodZfeBjAX+0MoDdSbE8RXSD4moGOWoRARACREVSl2/O/ZJznHhHmKkHGt6hkD2WR/5/f5FgNYIvfJjIWfgB8MRVjR+RELjm1KhEz7ilL5TR+I0aW8BTSljn+q1t5WyXhn/GDSSXrvunobEhE/eDGQz2cQ0pFMhILGRsoyrd+BEbkEhcyuJv8sYR7sijmfIrdcRQcFcIcLAEwfKwdwVqIf6tJ+Ib6b5PJZTejAnC1QLLRC/uFsZpZto8QNxu1kiMtrS3BF0+6PWSGsVrTCxJGnM0yV9LPUg+FB0+fs1txQpXxDtvPQUm6IKSTg+tBxJ0lbVBoKV0IneAPETNXLdI14XhLHpSuslYr21d87P5fW3c//498EfPpiIH5mdO6yyN/7tWvpC6NWmeLMwVb10ACdpRwvBEEOOO6MEsUDsc/wUG6BrJ+7VcKzqPwSLBjUIuy2x4gkYh2nq0aD/LWnknYvaQhsMNJtVyDDLOGtlHsD2SsAcjqLns3G1fKMksfUjyCNyBGliBlDDmgnchoIfrFQ3AYjPjehcM6ypb/USqzt/AgCgAD6pTn5yM46iIGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(396003)(346002)(376002)(451199015)(36756003)(76116006)(8936002)(86362001)(66556008)(4326008)(66946007)(66476007)(64756008)(8676002)(41300700001)(66446008)(6512007)(6506007)(5660300002)(107886003)(558084003)(91956017)(186003)(26005)(478600001)(6486002)(316002)(71200400001)(54906003)(110136005)(38100700002)(2616005)(122000001)(82960400001)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dEtXOEFac2crTnhoaTJqaXV2WVorSGx3M0FqaVdTblJ0WDYvSCtzWE1VWHl6?=
 =?utf-8?B?Ny9sSXM3d0d6Z0dxMUxTR014MmI3b3JhaXgxRlVRSUpNTnB6NElwUWNJTFd6?=
 =?utf-8?B?K0NNRzBHc285dlhFVDA2OHlGN2t2VVkvRGJBSTVoYWthMUE2MnZRV2N6UkpO?=
 =?utf-8?B?MlhpUHlHME1iYzNNU1pBMUd2dkFzNnJwT2VpVmZZZ3ZRUjRDV0hhUzUyMlgr?=
 =?utf-8?B?V1kxRmlEbSthUjJFTG04RTlKMEptQk5DaVVOVFdLRGpuRm9vcHhOL3pxVHRy?=
 =?utf-8?B?TkVHTTBUclo5bGYvRnVMU0IyMS8rM2ZLSnlXNHE1enpZOWxKY0RSeHVlSjAz?=
 =?utf-8?B?VW11Q3RRUkw1L1ZkbythZStxa1BVQnRjOStHenVRRGNyNUxuaXlXSFhjRi9R?=
 =?utf-8?B?cy94QWtSNVJmZERwWVVhSkduVGNuZW9mektXMzR4WGxONFhJVUZMbnpxL0JR?=
 =?utf-8?B?VDFMTCsvaFhCNndxZDRSS0FnSDBrMnJIVnE3TjRLbWJEQnJMVTkxTS9vU2tQ?=
 =?utf-8?B?VEFNb2FkYjVlTTFFMG9aWTNyT3pqVTNUVXhYQkVuUmMyZENyZkJUOURkalg2?=
 =?utf-8?B?NDVTKzg1dlhFNHJwVnAyQWZRVjh2UVVnd0lSY0psUjN0bmJHUEl4cnMzakMy?=
 =?utf-8?B?V0h0VU1WNXhuN0tCY2M3S2NMRDZvMkpQUWRWa0NyYUxpN0s3OUd4NjNBaHVO?=
 =?utf-8?B?bzh6WDhxVWxldmVGZHZnTWs5VFZOcHZraWVJY0NiMmNPQStjWmE3bENhUi9L?=
 =?utf-8?B?SCsrS0ZNbk5xMmdDSThyYVRlNnp5RWQrQnJyV1p6dWtCR2U2NzB6RmlVUVRo?=
 =?utf-8?B?N0ZjZUtrRlVIQXpyaCtiRWJnbU5xOFp5VmVtbWd5eVdqZ25NVmVPbERwdU0x?=
 =?utf-8?B?K3JpbnU1cnRZOWlTZ1dhOTJvd3hyRzh6dWVqYTVrQUpPcG8yNG1hL05KRisz?=
 =?utf-8?B?UUp4T0d1TDJSd1d2enk3TnBCZ2NuN3RwN3NZRDM0TW9QYXZxcENuWXpjUExD?=
 =?utf-8?B?bTNYVnRjL1FmbVFia3hJSWpZYklnYXgvWFQySS82ZTV3YnY2ekFTUWJxQjE4?=
 =?utf-8?B?ZlBhTitlaW1tdU11alRJc1lrY0ZWOU1YSUhqbGFTZm5nQjN5YjFmV1RNT2ZX?=
 =?utf-8?B?aC9VcnNiSk1ZRVdqQmNzdk1sUGFkUWdmZUZyek1RSkVMVDlpK24zZ0ZYNExE?=
 =?utf-8?B?NVNsOE5HMktjbkZJVUZ0THp4bit4bFVwd1VRUVNocDNxWGZ5UFhSSDZMNFhv?=
 =?utf-8?B?cm5sNHowdkcxZXQrTWVQRE5yNHBJOVpscVpUZ0dhSmNKZ2d6ekd5cjE3RUZy?=
 =?utf-8?B?RFIvQ0xKb1JDdzRFSkNZbmNnNDg3b0VXSjVjenhacW04cllVNy91Sk1GUHp2?=
 =?utf-8?B?TXhObDZVNlVLakd2UGpOUXJCeW05WWF5ajFkd3BZaTdSaHpnSzFtdFNPUnk1?=
 =?utf-8?B?VU1zbWltOU1XTWhRN2k0aHJ3cHczdUxPTW1mczF4S3RnY2VYOXNvWXhVblI2?=
 =?utf-8?B?a2w1bTNQMVJ4bDNscW5HQmw2SUJXS3NMUWxZSW0ySGNKcTcvNlhac1Ntb2ta?=
 =?utf-8?B?UVppeGw1L2ZoUjdBdVB6ZFJ3UnQwK3Btb0tUUlpkVEtFaHNhQnR1S29vL0dM?=
 =?utf-8?B?RCs2MDQxR1JSbDdDZVdmSzRJdTlyWDl0b3lwa1RiZEs0aHNPVXQ2bFVtTHRt?=
 =?utf-8?B?YkR2RDAzbXBEVnJPZFY0RlZZTGhVeDZYV2R4RjQxbE1ESStKUDM3R2wrak12?=
 =?utf-8?B?UUpQWGQwb0VXd3Exam82MkNjTkUrT1V3Wk8vWGM4NENYTkMyV0FJNHo1SEtK?=
 =?utf-8?B?ei9wMGMzd1Rvc0tYNDZEaGV4am1tL1R1RDVEanpxS3dmYmllNFdadlBCUG5Y?=
 =?utf-8?B?YnZnMXM2b3cxRWN1cC9VNDBSRTVpb2UrMGZ3WXlydHlRRUY1Tk14WXhOLzJx?=
 =?utf-8?B?Yi9EMzAyanRwb2ppdWpqWFNqcFg3VGh2VEZUa01zNnBSZkU0Nk91c1I0dTVU?=
 =?utf-8?B?MVMzMExhL0U3RUNIWDBvWkpqUFhTSHJOenZCczM3ZCt6UmFJbTZlb1dSSytw?=
 =?utf-8?B?UDJEZlh2R1ZDU2wyL3hPcmhrSFVJUVBxb0NhUVV2TVdPemtLZFh2cEt2cUZ3?=
 =?utf-8?B?c1EwMkdhSHZQY1FuWmhkVWdMQUJidm10STBxTVdkbkFlTEl1TlEvRE5zYkVR?=
 =?utf-8?Q?OvhhwgKxH+gODjjOmqsC6Ow=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F131D78BED6EC14699409C2BEF4A9943@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a76090b-4161-4263-6ef5-08dae3bab2bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2022 01:20:22.8306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nIuF2lx//fqfTsnp8H/Z0aZYYYbFmi876dcce00Up71XrFa9OeGI2GR9657q2dWSmPdIne91yiuDu0DJEFs8cZldveP194TKSV+spobSC3B1CJz1iDSuguwUfQrOBTgH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/7] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gPiA+IA0KQWxhbjpbc25pcF0NCj4gPiA+ICsJdTggZ3NjX2FkZHJlc3M7DQo+ID4gPiAr
I2RlZmluZSBIRUNJX01FQUREUkVTU19QWFAgMTcNCj4gPiA+ICsjZGVmaW5lIEhFQ0lfTUVBRERS
RVNTX0hEQ1AgMTgNCj4gPiA+ICsNCkFsYW46IGJ0dywgZnJvbSB0aGUgaW50ZXJuYWwgc3BlY3Ms
IGlmIGkgdW5kZXJzdGFuZCBpdCBjb3JyZWN0bHksIGF0IHRoZSBoZWNpIGNvbW1hbmQgcGFja2V0
IGxldmVsLCB0aGlzIG91Z2h0IHRvIGJlIGNhbGxlZCAiaGVjaV9jbGllbnRfaWQiLCBub3QgImdz
Y19hZGRyZXNzIi4NCg0K
