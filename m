Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B590A8002E3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 06:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7C910E7B7;
	Fri,  1 Dec 2023 05:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB6810E809
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 05:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701407462; x=1732943462;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=n+BBDUDTL0tFELFDW3jeq0rf7W3MpQ19TjadLQYHI6w=;
 b=EPJPiH7qVyiqIUP4w90PL2uCPrT21grqEegJ/DNZjdBybTQIEcid2P3P
 4is4fgXgv5zIWUR1KQE2cvOiv88XWQoVKfTtv298ACUbnwqRo7C9JqlNM
 9MXLrJKdF0BMF8CFpVsziWYAw/YT7+awq2HPnHX4OvXSVolKiJ/3DTBd7
 kYMsF0TyFLQ7YJBSHEy622IMvJ83dtQtE07noFKu77D5LPIZbYIhExdCu
 DQYO7Tjbce3Ri0ye0PYFVgWYSyHfOR6Ui9TfENKIHdYR/AcrApGVedZGi
 6+XOKR8mUBjHDI76YBjEq6Qi964KvnxBag/7YfLbg7M2A7Y/lp1GawdGv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="372827459"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="372827459"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 21:11:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="798577944"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="798577944"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 21:11:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 21:11:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 21:11:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 21:11:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 21:10:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X5uiztOyv8id84j93rSEPSREcLRB7ab6qkSJCzGvYfV03N4GqEfyqzoVjq+fwQqWu3YH7cAtNjqHkft+gQepP6zfVm0lZnYOsI3kUaCzgy8QdouLuyajV6xAL9IHpPvS6sHL4sSpfJof0Qui7GEjeAOqjLnCvruUFh3hhJlclkFPjnMX7ITA6lWTfS51P3PtwKf0v5eEYcBOJG+tZTANS71u2KmlveGzsGMwbHNABVtYS4rJeTPRDoFpfmxoP0W6GedgIE2t5vyOzbeOP3U1Ql7U/etuuS5hgAzfhEOgMN63zHz6f+ym7MAHOzyqbPw6Hs0t5RRNiB+hvYdcoAWbjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n+BBDUDTL0tFELFDW3jeq0rf7W3MpQ19TjadLQYHI6w=;
 b=Iz7wfWeeSB1hcZ5a5DMkY8youLVXERUUV1eRSsSL78dTSVTw/zDWQjR6/NU5I+9MZKFTRWRe1iQoT0peUkRopcvP1A8/8UKz4tKVBXQBJSD9Ya2OjtvE9Xz8sgdAYAF9lx0/onwLa3hLSRMuXKk7nnrK3e1976wkJv2HdPFLw5hBDbaLYZ9yEoXzynOENOnqnyhRQZh1QESp5aGsRotx07ncrU9HCcdIap59TmjTwERppxL5URdz9dRFMipwfhSZ/2CPVjfWot+DMfu1XZ6u/yR0rNdzBUKfo6KSZm5+pjdMbCT09CUzOUBfYt7oiMIpFTs+jgZmCzYFB8R+6mdqSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CYYPR11MB8385.namprd11.prod.outlook.com (2603:10b6:930:c1::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.24; Fri, 1 Dec 2023 05:10:58 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::d070:1879:5b04:5f57]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::d070:1879:5b04:5f57%4]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 05:10:58 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVzb2x2ZSBzdXNwZW5kLXJl?=
 =?utf-8?B?c3VtZSByYWNpbmcgd2l0aCBHdUMgZGVzdHJveS1jb250ZXh0LXdvcmtlciAo?=
 =?utf-8?Q?rev8)?=
Thread-Index: AQHaI/0osIJD9XV6dEGCqS97rXsworCT4YoA
Date: Fri, 1 Dec 2023 05:10:56 +0000
Message-ID: <31bde6dcbe6d037664d1dc65fd6640f8af0d77f2.camel@intel.com>
References: <20231130002013.282804-1-alan.previn.teres.alexis@intel.com>
 <170139720876.19689.7886447817422892743@emeril.freedesktop.org>
In-Reply-To: <170139720876.19689.7886447817422892743@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.50.0-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CYYPR11MB8385:EE_
x-ms-office365-filtering-correlation-id: d7df8c7a-cf11-45ff-fcca-08dbf22be697
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fcN+uhn4Xr8eIk1C1QfPe8Dij3ugloHFVshCny2fGD9ky8tsnc8NAelM+sf5S158rRdcpbTEcrndgSr+tRn1KTnaD9nPAJmMMrUb2SgAcxW77cYkm0pE3kBRY4S+Vm2R/ZTam6qwKYLSf8kl7+jplpGeC0ekGrq2IgdZU5yBe5L6FeXNvFXfhpF97E9MSeOyV5gj6T1QWnKk/im3DzYGSSIRfi3BZ5Iw3wK4BLYVd4U91C6XUTGhwwRSWF8e6PuviiYLvniOLxeqsayTyR8SPje8PGQo2RapAX3fVITwnBhbR85p6thWYbXY7z1du02IQeAd1XWQu04k9M8VHFfn18ddRYVyZVpVQGFS4arhSxz6ZDoAd+B4aVZYaJMrEq8UAi3IJhbJPuqU2J4Q4cpFj0bvSymeSyzMnKPqbsJxlxCkfnRJqukRKYNemPJeFeW4ex1YnVqPIRyqsJ81192pKb0WkzyQX3u8jcMjLMvTiVnCv9jj5h4Y6uXxTP55KPAypfmCFJAkov3Mvun+x1cRyaru3FVZuQ4smzDkRjJ/e7MVAtDu6LSEaBlMpYIz2qlLnd5dMnn8tfRRhx5x2WXUHAz4AZVqBtQdzZJdW2swVwix9YehaLPf/pMl0pCSr563
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(366004)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(38070700009)(66946007)(66476007)(66556008)(64756008)(76116006)(91956017)(66446008)(6916009)(71200400001)(82960400001)(38100700002)(36756003)(122000001)(86362001)(83380400001)(26005)(6506007)(2616005)(6512007)(966005)(6486002)(478600001)(2906002)(15650500001)(316002)(41300700001)(5660300002)(4744005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2puL0VLV0htbzZJSDM3T3NJeFhObHJQQUQ5SnR1QTBVdjJxNUZLNEhxSG9D?=
 =?utf-8?B?akR2MWFyWU9hK3NacGpXV1ArelE0K2hjSWg2MEdrUGoyZUpmTGpFU0h5TXRW?=
 =?utf-8?B?b1BienI2Ty9PdU5DNXNSTkVQNmhIT3RwSEJhUDZNdkJXSlpKNFNZSUdvMFJ4?=
 =?utf-8?B?eEdKZHlhcnE2VnZDcXVXd0xqQi9wNmVTU2VxNk44T0RyK0hua3pwRllkeWZu?=
 =?utf-8?B?UUc3YmFCQ3NWNGp5NGQ0eW91N2JxM0ZLK05VaVBlUkhDcGFPYVVNRi93Zi9x?=
 =?utf-8?B?d1VXOVRDL0RBVnBZL1ZNc054d3BZejR1Z0RIVHJkbW1WbHErU1NFY2xjZkRj?=
 =?utf-8?B?TFdYRkE5Z0l6NDh3cW9PMFNDVjMvMUkvcC9jTkEyZ29MU3ZvMEM4N09vMHlz?=
 =?utf-8?B?OXh0OWxObEoxQmtQM0ZlQVA3ekw2MWJZUHVvQ1ZaWkxINHVaK3dVSW93U1N1?=
 =?utf-8?B?dDE0LzdFTFllMDVOQU9tclptSG5ySWozaFVIaWU0WkUwamdSNUJlVXREUWNp?=
 =?utf-8?B?SEFNU0E2SndMNm1XVU90bno0ZFdRR1ZrdEliQVY0bEhRblNsczdkZkY0dUNm?=
 =?utf-8?B?eUVDNHYvNld2dGU3cWdXZFlreVU1V09HS3UrRFRGZEdGdFZTM1UxNmJRUnQz?=
 =?utf-8?B?ckF2aE5TNHJVVlQ3VUpHU2Noa3ZUUHI1cXlVRHdUVjJCckRxM2ZrYWs3RWdH?=
 =?utf-8?B?SkFvODdTQlQ1RDVHeTQ4bEc1REZTU2RsRmpQTHhTSldFWW5tOGp3UlRWckZi?=
 =?utf-8?B?MjY3OFpYWld2N1Y4ZW5UYng4N2ViTmpidlZ5TktRVzg3MUNxNXhRNTdqaURN?=
 =?utf-8?B?N3kyRUZzNElEbHFUak9PUEdHalZKK3N3SWw2bXJsNmp6WE50SEgyOUp6V1lN?=
 =?utf-8?B?SW5JcUE2ZGNKRFhsamY1UWZ0djhqaUphTG9tYnR2NDZoejdMdEVPSW1TcGhU?=
 =?utf-8?B?d3pjL3k2RGVhSmRmc1hMZWlsMjNoUC9GT2hGWSszSUxZMDdVajFueFowWEZq?=
 =?utf-8?B?S0JhY2RFSGtWUi9JZXV2SWhuSmw5VkpYSFduQW5GYTk1MXVtb3hya2JMcEdt?=
 =?utf-8?B?dDFqWkRLR08yT052ODgreDNjano5a2VhWFdPQmQxR2NVQ0xpMEI3RDE5ZE9o?=
 =?utf-8?B?eGR2V1J2VEhGeVdsc044OHAxQ3BLOTJoU2VORUxJT0FHOFJ2MzFjZ1ZqUjZp?=
 =?utf-8?B?eTNQZGxuKzl0bExKOXRHTG9CT0ZPOVI2M2JnZHZHNWpHSUlNMW1jNTExalV4?=
 =?utf-8?B?SHhUUmJNMDFlMFVETWE1cnNwb0czNXVCOVNLL3NmTDhEV3pERENiVndOUzdz?=
 =?utf-8?B?MGtEcFFHOWk0NGtvWHlyRmF6bUx1dXorZTU2Y3dlZVpYa05zcFV5cUNkQmpS?=
 =?utf-8?B?VHRZRTlPQkRsU2VLbGd2VHNlOVhtMDVzbGt2ajNNRlpmSy9tbnRxcGxBQ3Vq?=
 =?utf-8?B?OW0rclhtQVBCZHdtOVZxK2paQVZuOU1hdTN6L3VDb29oZC9DSXk5bUxKTmZK?=
 =?utf-8?B?Ky9EY3p4ZkRyM0dUY2xLSE5Ra0dITWRPVUJaQkRSK2NDNkFoMmxQclJxaGpl?=
 =?utf-8?B?MUtSYS9USXNPaFl5aUd5cHlaVVFnWXlMS0FtZjhBZG9QK3pSTDE2bldSOS9Q?=
 =?utf-8?B?Z3kwWmRZZXZhUzYxYVJmdFhGOGd1VkdSZUF3QjBaamNvMWZXYjhZTjJqbXJX?=
 =?utf-8?B?emxDUk5MZzlmeEpLQkZHcWVPNkc2R1NTMnQxKzJYMlBlUU5ySEhhN2pWWUFy?=
 =?utf-8?B?SW95d01vaWdBZFhQamg2VmVtK2kxRVY0cmV0SkZzN2pUd1h3b3R3NXZaWkVH?=
 =?utf-8?B?dVdIakxxL1JRY2FBOHJmeVdPTWt0Rkl0M1RvRk4wOEVReklzbENXTlNGTDUw?=
 =?utf-8?B?YWtPbGIxcTdSZkppcGhVM25IRUFTbDR3eFlXVHd4NVdUUnpFUWsxWjJXL2lI?=
 =?utf-8?B?NkxhTE1uYmFwRWMxTkEyVVJhYXRoQVd4TnlFaXZRS3RhQ0RoWUJsMG11WkIr?=
 =?utf-8?B?S2JRQm1uVVJMOEhoZ0NROWtLbXZPcEZpdUU5bmVsM3A4ekJYUG9aYlJSTzRp?=
 =?utf-8?B?RWtwOHNPeklqRUpxV2Z1OHhDY3VlQW0vUWh6TGkzajNsa0t5dUpQUkljd082?=
 =?utf-8?B?bHJScU1meXhOdjJUS3lCbHNpWDBvcXVSNENlTEJjMTJITmU3UTAxM3QzODRn?=
 =?utf-8?Q?UN7PHnvHoxEcstFBa+U6kYw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3A58B64E2B3F04599FB2A40A037DA58@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7df8c7a-cf11-45ff-fcca-08dbf22be697
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 05:10:56.9178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xMLSN94b/TLTza1vxKDiD4GqkLC/ihhjl2h0qPIy2jkKOVqHyCdnjr7HSDOmZ+ArlpWF93OJKdBVRTotgaMa/nzxan2TU+ENVT/DgmbPjK+dTkiqr7A/WDtJOOcTkt/9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8385
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVz?=
 =?utf-8?q?olve_suspend-resume_racing_with_GuC_destroy-context-worker_=28r?=
 =?utf-8?q?ev8=29?=
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

T24gRnJpLCAyMDIzLTEyLTAxIGF0IDAyOjIwICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBSZXNvbHZlIHN1c3BlbmQtcmVzdW1lIHJhY2luZyB3aXRo
IEd1QyBkZXN0cm95LWNvbnRleHQtd29ya2VyIChyZXY4KQ0KPiBVUkw6ICAgIGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTIxOTE2Lw0KPiBTdGF0ZTogIGZhaWx1cmUN
Cj4gRGV0YWlsczogICAgICAgIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyMTkxNnY4L2luZGV4Lmh0bWwNCg0KYWxhbjpzbmlwDQo+IEhlcmUgYXJl
IHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEyMTkxNnY4Og0KPiANCj4gSUdUIGNoYW5nZXMNCj4gUG9zc2libGUgcmVncmVzc2lv
bnMNCj4gDQo+ICAgKiAgIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVxdWVzdHM6DQo+ICAgICAg
KiAgIGJhdC1tdGxwLTY6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fMTM5NTYvYmF0LW10bHAtNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlcXVl
c3RzLmh0bWw+IC0+IERNRVNHLUZBSUw8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTIxOTE2djgvYmF0LW10bHAtNi9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQHJlcXVlc3RzLmh0bWw+DQphbGFuOiBpbnNwZWN0aW5nIHRoZSBzZWxmdGVzdCBjb2RlIHRo
YXQgaXMgZmFpbGluZyBXUlQgY2hhbmdlcyBpbiB0aGlzIHRhcmdldHMsIGkgcmVhbGx5IGRvbnQg
c2VlIGFueSByZWxhdGlvbi4NCnRoZSBzZXJpZXMgaXMgY2hhbmdpbmcgaG93IHdlIGhhbmRsZSBj
b250ZXh0IGRlcmVnaXN0cmF0b2luIGVpdGhlciB0aHJ1IHRoZSByZWd1bGFyIGNvbnRleHQtY2xv
c2Ugb3IgdGhyb3VnaCB0aGUNCmZsdXNoaW5nIGR1cmluZyBzdXNwZW5kLi4uIGhvd2V2ZXIgdGhl
IHNlbGZ0ZXN0IHJlcG9ydGluZyBhIHJlc2V0IHdvdWxkIGJlIGFuIGlzc3VlIHdoZXJlIHRoZSBj
b250ZXh0IGlzIG5vdA0KY2xvc2VkIChiZWNhdXNlIGl0IHdvdWxkIGJlIGhhbmdpbmcpIC0gYWxz
byBpdHMgYSBrZXJuZWwgY29udGV4dCAtIHdoaWNoIHNob3VsZCBub3QgZ2V0IGNsb3NlZC4gDQpJ
IHdpbGwgcnVuIGFub3RoZXIgcmV0ZXN0IGFmdGVyIGkgdmVyaWZ5IHRyeWJvdCBzZWVzIG5vIGlz
c3VlLg0K
