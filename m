Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13A8581CC6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 02:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567E4B6D66;
	Wed, 27 Jul 2022 00:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79855B6D94
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 00:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658881991; x=1690417991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=k0okKnoy9rAN9PHXhT6lngZkJUndZ593FRoIBYMAftk=;
 b=VBUcXWuuAbPs2PEy8RcjSeOFmfx+r1GQKqE/EERnUHDBarMqiVYi30Ko
 2gi9hmG24j4duHZofljlUotkRxnuxeoaUvTLKdq3QlkpnzEEbTENyzFjj
 T6f9zrSDxgbzaL9dBOkOlAhtBZ4FLadDrSAaWBRhBsUFB5DavrgLvXttx
 AEOwKE0jBUoGTggVWtfKlzAx6umTU7CO1/ZsNbLJJBOxkkuUIlw148Bny
 4WTY/sq1kc9RdPimBOtWe7PqFpZy7/pSytjiVOyl6xvqDvpSUAUQVwaa0
 2+w8RCteG4Zwq7XR0z8uTMRQzP/tCR9s1Fcznzvs4lgef/I8KdfQx8tTa Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288119507"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="288119507"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 17:33:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="597233018"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2022 17:33:07 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 17:33:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 17:33:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 17:33:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKgKHFYTgut2vs1h2bD708CdKlxaCUvw3heQfTHJPrPFz/M4ltxi91uaoC8VYihk36OG+sCG0aoK8CZH7qjjbOD868IEJleQyM44eW1y39fqkB4AcIRI7sDulWEO7Q0oe9GaUJxkjf1jS54LZPw2xiNSHd9yTxKF9lE3X+evdTbaViiu5dioG5iNx3Z2FLMotOrbqwVFd97xOKXGZFo11IffHtw/l+IVhtCVmMugrXkG+ewRv0MEho0uR1VKMHouN4byUTduuxff1VW68e+x1/HyxNPg5WLHvyRgIzlcmTVXpQ1ZzNZcnco0IyRurXlMrj7j88gvaxYAEwVOvDtJnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k0okKnoy9rAN9PHXhT6lngZkJUndZ593FRoIBYMAftk=;
 b=gxqcZRY2gh+5YZ0iC48F2JHL0YBHRTKWgdNEgJNC6Lik9DgxUn9tali1ZHLe7FD3wg9JM7eIkWOtmwssqywj42jO42OeLzSMqBznqlTNLOUAqnEDja+wvbO3rs27ABlTb1UzzNCZ7GGQ/VbE/QMr4vxP833zDv0nRsZeLItbIbBUI8pdlrZoxSWujEwS/HPiUvvSEOUT7YhzXAduD1cshGipGBe7lvLBxin0vVZd1xbZqnJb60mji624nNoJjROSzlEUPvCAebM9lheJVl8y1+7OPpoWdKNokorqVFx5OsB+xQbcXqbl+s/SUBKrmYbP+Pk4E2dqvMRhHVYxWh4N7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MN2PR11MB4112.namprd11.prod.outlook.com (2603:10b6:208:137::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 27 Jul
 2022 00:33:05 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%4]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 00:33:05 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 12/15] drm/i915/huc: stall media submission until HuC is
 loaded
Thread-Index: AQHYfFegalD9GkJEVUqeVTO2hgzijK2RqH6A
Date: Wed, 27 Jul 2022 00:33:05 +0000
Message-ID: <5ae8cb4d7843d9337e1456ba14c6ef8173e0b285.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-13-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-13-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: feca0f3d-4d4b-4c81-4d26-08da6f679276
x-ms-traffictypediagnostic: MN2PR11MB4112:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CKgWMr0bkuCssHc0UjJDo4MZSL/KrVjxhPq1kgreAdV3ghNZvVlzXLnlKb4U2mbm3Z8jsUO/kHTdNF9UMrwgnwOpO68HnOmHMZXrfMV/ltDmo58NTGA9V1NCZgjI3iIYbmy3U44uo7o181ZUuf2Dl0BitVdXdaJmToIHCAlM3xBf1h+hOTIv9EHw8xhW0hPVfVWDkO8Fsa62fGPgLn5RQrHhIlAejf6iaTjDtzD2BbALuCBkIThxmHQT7a0Ms324tvgmePnmlCTfoc2WcHGIlrHhqnKXX5ODPXbRbjF3P6pEp/7FY7W92xOpd7wUASsgZJrDe8VliW4BNFR9GK188De8ode3Bvv36Io4spTDVF5RUfQR9wFpwTdFkv1ewabrQZQOS4/MRlvxOPfjq+NQeJsRzRQKQp6WOlsSKUlMzCsrMup19vdqS0tbq0j6jkiu9pI/B10ZgClVBNJZLXj5iYZF4VBp4wd5remjwgm4oznMFwz7dfeLSeZMq1c6KouAZ3NTmrBamyaGgaWYK6E/5MkAp2nTbhz5kseHGE5Dt+nxJoDO86ntNjWCqeiT6WPcl4ytVheUz/tfLheStSl8r5+fDvglILbhV8NfO20P1cpD+FbzCqsbNOcrrr0i1T08/tq0szBLSeRtBBnffRUKIuiDR2qBIolFk7u7Pa0PYKcH1h6gAELs7a2vBg70r0OJk/Y0mX5ZdzJ1xnfADp/I7tFIa87FbLYybtVFSFFIN6h3pAV4yp2gvU1IfOwGTweDac3Nt5ZTPkNglW4JhDIuVI0QeMMCktFROHxLQw/aLw0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(376002)(346002)(39860400002)(366004)(36756003)(41300700001)(5660300002)(4744005)(478600001)(71200400001)(4326008)(66476007)(8936002)(91956017)(110136005)(6486002)(8676002)(66556008)(66446008)(66946007)(76116006)(316002)(64756008)(2616005)(186003)(6512007)(6506007)(26005)(107886003)(2906002)(82960400001)(38070700005)(38100700002)(83380400001)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVpaL3pSZHNmU1JoVG9RZGNBdWk0UmlKWUZ5dUJ6ZytTbVlxOTNYeS9DMTBq?=
 =?utf-8?B?R3daa0JWeUVvWG9PdnIzdHovVFNmWGQ1Rk9pMHVvSlB4WkxnV1d5eE5rR2VW?=
 =?utf-8?B?bGVRMVBhWWlXUHhpQ2kvUFJsMjRmZndqTm50RDM5OUtianFseW04OHMrbXFk?=
 =?utf-8?B?SVVGOXlrM2lZY0htd2JBUFBIWjRWeWpCRmZsVzh6Z3pNY3crblY5NEFVaE15?=
 =?utf-8?B?Z2ozNklCMHNrcnd6cEpFZGZEOXdCT1B1K25XYXJ1YUhQTEh3OURsS2NvM2Jt?=
 =?utf-8?B?OE9pZjlJd3MvN3NyajlWNVhmWVpVRDluTHg5dndRVnZlbXlWaDFvNGZxeVpl?=
 =?utf-8?B?c1VRdjlhalJQZ0Z2M2xsQnpGTXdCUmMzMUxrczY4Rk16Q1FEdlJ5T0V5Sjc3?=
 =?utf-8?B?a3RuWDI0NU9id2U3TjFoenV6ZDZKWjZEaHlJdU56TGR2Zjg3bWhqQ2lWT3c5?=
 =?utf-8?B?Z1JmSjhDMStlTWtSQVM5OVUzRlhwYUg1T0lpTWpUNzAzTjRFa08xM0FieGh3?=
 =?utf-8?B?ZmJTUE4yVTc0SFBsenZNb0R6N0M2SGgxSk1kUVFMQTV5dmVjd1kzL0wvMHZB?=
 =?utf-8?B?am9zUDg4ZCtXV3BGcGpYZUxrdHVPN2pHdDY3TkdTUE54SGZnOWttTDFxeEJF?=
 =?utf-8?B?dC9MTnhCY3dZT3dqY041U3FuMEJ4dXNETEZrc2YyNURkM3dwVWx3SXc4VmRE?=
 =?utf-8?B?RDU3N0c1dW44NFQ1ejdYOHJXeE0vcC8vUXVsVVdTaGVMSk1ISmJGTExzNFdZ?=
 =?utf-8?B?TjAvRzAwN2FsVGxUaXVwZ00zclZCNUszWC85SkJqKzJRaWxERUkrNWE2b3Yv?=
 =?utf-8?B?b1doZUg1NkxXaU9BWVVMRHpaNU5HZXh3bXI0MUlmQmhoS1NtaGhsSVBZQURK?=
 =?utf-8?B?U1luM1ZvZW80VUo0U0ZIYlZLVDE4cjlvMXpTWCtTTVIyUEJWYXBYOEd5ZEk5?=
 =?utf-8?B?cm1IRUZzQUE5UUlmUW4zd3Q4end4N05YdzZGUVpBOWhiM0RQOTRrN21palRv?=
 =?utf-8?B?Z2RvSS93N1NncU4vZGlkMXREVTJ2eHk0SmFsY3dNTkxHdjE5cjFmRDdYUTJZ?=
 =?utf-8?B?MWU2NklrTGcvcG00WG5BczJRRGZ3djVXNFNwVFRTWXFwcCtEOWoxREs0V1FH?=
 =?utf-8?B?T2tLQlhEdmNzK1dlc0xTOHhUZ09qT0VJTHJBYmZuN3FuSm5iSW1TSUcyaHhj?=
 =?utf-8?B?dlBya2tzejJ4WnZSSXBjOUQ0Z0FGZ3VYcVVXU1VYRitIWHRIUDRMd1ZnaFJ6?=
 =?utf-8?B?c0c0aHlzdko4REN5ZDduUUNJQ3hPVmVrVFd2VnFhZFJNUUU0MGMxN0FDWm04?=
 =?utf-8?B?SnliNmMrTmFJUTI4THFHWmVmdEMvcElXSXorcCsrakt3UTVQcW9nS0RXdldM?=
 =?utf-8?B?ZWN5RVJmc1hRMnk5RjJnYnJ4ekJPU3JWeExuS3FvcHN0a1crUDQ3dU5ZdWcw?=
 =?utf-8?B?dWhKQ2c5cUNISGM3WUpVYUQyMHhkeko5S3Rhay9YUXRQS3JRMmtWbU5iZ283?=
 =?utf-8?B?bSt6UUl5aXZXdTJ6dGZSVGFHVDYxTTh2d2hiMXg2K2V0ZnlSRWczZ08zZHFv?=
 =?utf-8?B?aldmWm1kV3p5V3lTQzJ1ckNnSG1sZFBBb2FPRTEwd25IcTdmWmJ4N1BVeE5N?=
 =?utf-8?B?Z1JYNzN2WmdPSmd5a0VIU2JHaGs0WnB5V2xpbFp0WHlXUngwd0c4VnZGS2VE?=
 =?utf-8?B?YVIwWXlBaTlIdHNsSjhxQVJseUZiUlVMN21FOU9XbjN4K3ErWjNWVmdDL0k4?=
 =?utf-8?B?ZzRoYVIwVnBpTFFTUTNBekJ3aTNsVFZmeGNwMW4rTmNBUVg4cytzT2V6Sm5D?=
 =?utf-8?B?bXZpRVkxWVhvdHZKQTg1a0s4Ny84Y3RRWWYwdC9nd282R3N4bndPVXh0ejBX?=
 =?utf-8?B?bENyTzhySTJNSGlKYStTd2RQbHRQQk1pbHFQMVVjbS9MTVg0bWZ2RmFkSkEw?=
 =?utf-8?B?bkNqOXdRdFhmUVQyRkQzODkzYmlMODVkdDlNWHRGQ3dORXNtbytqY1RrcFZl?=
 =?utf-8?B?QzNYRmIwY1NmbnZqZ0NvSjNRUnZndnBMZURqMGdDLy8zWEhqUUJBcWoyeis4?=
 =?utf-8?B?dlcyZk1qdmVEQllHUHhCTmh3OTVlUUhKcDBZcU51eUF0enBOOGtUYkVyV3FS?=
 =?utf-8?B?bk9aeE4yWk5sR0N2ZTlidGxoTmlwSVorNlpTL1NIU3pzeDh1LzJkd05HZm1U?=
 =?utf-8?Q?nJlLX/TA99ZtSgFdJJ7WgSc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DAD4CA6F0660F74682E4D0FD0D79F81C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feca0f3d-4d4b-4c81-4d26-08da6f679276
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 00:33:05.5418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M48uz52LCtg0zre7hPb89sJdS2gDg6RCFzCgzBSK+NBkHBAgjz/9x7XNMi9RhqfkvUrN6vnEUCy/hUSD10MkXkMv4Y2nWcw30QgJ6dXmbWVOgjExPsXqkIN5Je0NIb2/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4112
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915/huc: stall media submission
 until HuC is loaded
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

QWxsIGxvb2tzIGdvb2Q6DQoNClJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4u
dGVyZXMuYWxleGlzQGludGVsLmNvbT4NCg0KT24gVGh1LCAyMDIyLTA2LTA5IGF0IDE2OjE5IC0w
NzAwLCBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSB3cm90ZToNCj4gV2FpdCBvbiB0aGUgZmVuY2Ug
dG8gYmUgc2lnbmFsbGVkIHRvIGF2b2lkIHRoZSBzdWJtaXNzaW9ucyBmaW5kaW5nIEh1Qw0KPiBu
b3QgeWV0IGxvYWRlZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IENjOiBUb255IFllIDx0b255
LnllQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9odWMuaCB8ICA2ICsrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMgICAgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MzAgaW5zZXJ0aW9ucygrKQ0KPiANCg==
