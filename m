Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D09504E5914
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 20:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E56310E0EC;
	Wed, 23 Mar 2022 19:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA9B710E08C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 19:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648063481; x=1679599481;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UIeN7Lx8yZc2znKO+eC3/lGqIIgWw+gsT3eD4xwXk2U=;
 b=baq+hUSPJ1xhxZi2t63xe0+B0IZ+mFd6jegn2iMwmneDJxP+aT9rje8W
 sg8cEGkirVnr1eCD7Ru3QUOiT2ayeX0hI0Vy1v8lWZ7kBKmi3l7JijrRk
 kYWUal97jwacttcB103u7nG4ZUoQUTiqP7FEPAvXiTFOZYmUoYvYufX3z
 MZx7Yh6lCSJwJx8U9kjcnUCFFIdr9GvhCt+8Sq2AOFqSJzXnx58XnBBI6
 1OaDN6OCyYHKC3VhmTV7hnaoJV3jntblZrlRbYLmUxne+Ul05aUhUROaa
 bWk57+edQhQvSGaTW94BClF8aMVddGKPjyRkM6AclnKo8oKntvAGpNG46 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="318919736"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="318919736"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="717530339"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2022 12:24:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 12:24:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Mar 2022 12:24:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 12:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j0YhdWgvfW4Mly1ZnPK+ELnej3yjR636f8giN0yp7pRzxXzlcpk6camF/NEW7Nw4mm46ig2OKAwUnCNM1DJ7ch49xmdYRXzsWeYaxRB7G7HhCmQCbA+lHuQpNUtY6E8Vg4WYh237C5RSm1JLxi33SpgnsePZ40rsO+Ot8KLEZogUldjvA3u/NnetMl+tnGxgLf8IfngTGnC4guzcls52F4RLJ+mt8CgTFsfhKD6RikhPA5UOPGNQxd2w5KJN+SA5llfe+jjLJhZzPsaIg5kn1wezuXP2dFQCAPiGVuuiJ+LGi8N8nx5rlr9K4TWO/aYRE0ieRzB5uxo3aUahj9MgJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIeN7Lx8yZc2znKO+eC3/lGqIIgWw+gsT3eD4xwXk2U=;
 b=FWqCZmAAg4J4cciz/KFb+CWHarZylwitjWijfbFHioXY/Cr/IPPmQKREjsrS1ghMkDp00cBwayUcIex25+OOUQ+4fLueze0Y8aDzEvp7r2wl52u96UuzzAKRuBo9aC1RzLEt+yymZ/OaeO6bUP7ZdwtXuQ4f3ddFtuh7v2cb05I63y0zt8+eZ/YgrqjnceoQ0frai0IyVqJQGMLlCgKcgRgynSX9no7MsHFIXaLjvNLSW4xdK3PXCbQAcbkf0reGfPbDFuQ+bShG3/eSJtyEm+V3lp1y0z2JdOj54Drjgmwh5aKuyS/qvmXR+KiGwDJ3qQ0ENaAr0ugSSaQu+2FMHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by DM6PR11MB4425.namprd11.prod.outlook.com (2603:10b6:5:1d9::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Wed, 23 Mar
 2022 19:24:38 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::4818:ff2c:ac59:8bc4]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::4818:ff2c:ac59:8bc4%3]) with mapi id 15.20.5102.016; Wed, 23 Mar 2022
 19:24:38 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/dg2: Load DMC
Thread-Index: AQHYPujWrHgAH8EJE02PUwohn8bBOazNWXQA
Date: Wed, 23 Mar 2022 19:24:38 +0000
Message-ID: <e51b36338ca95a1c5fa7e1e9518c3e69f489ec9a.camel@intel.com>
References: <20220323190124.2343794-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220323190124.2343794-1-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d1406fe-8356-4ae2-d0d4-08da0d02c5fc
x-ms-traffictypediagnostic: DM6PR11MB4425:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB442508B53DCDBCF5EAD06A96C7189@DM6PR11MB4425.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aiZ5Oc5NLrIOLabjkCLD1tcTaLEBAWALlz7AuEGqmcQjR1+3Ou40tbq87Y07wQeTl1qfmkPjNg33NCWnzQPCNOaqJh1lyNs+1Y4MVoLjZB28Yr0DRRqSl5dXlj9b9/yq/aMGhTkb6SoiQ+5ld4qZqc7Bpg1c3bpIFbrWM/FqRYtnyzbjw/e6MjT2Ow3SdbRSIpAVvHpEXPHH50UGl3oEjkat9RPx72YgZP/GA0p/LAIhgfxwbcs+OtLdlSi4Ih2aW/7BwNhKU8awrCWeMgqE8r7OqETuAqe1fI0kQ3o2XI5xuVTcYlaOZIIHJ9htezipVWh/HW8ytRk5Ikx5OACq4H6QjSxE8Jb4B9lpSPW3DpXHca7OGi5myjjTXu53IU2MGcfmXT/ZwI2g1dpb48vS3rKhnePesjYp8qQYdTMBJEPLkBATh6ODyOSqbgkyrzQvcDqGCbDmiOaYWIDMRqU/sa521m+9X9OpcM0Pov9bs4rW9Zoi/pmQmAg1l1k9lnN3i9gP/8imcFCIzRo/zTbeMHSh/AlST9UV/NPqW6vNUklNiLeL3b8o7npWz5aO4/ijB7L6WXMqt6ojQajb7O4vPYRSxt1qTZwmkQ/JRVJyID/gDFu2LC667mOYQ5M4tAf3dGzVGvdgklS43qPENqCXYGHMnbUXFmNe4rHKM82IbW7I+gLpKq+ShIfy/dBLlAy3cfKut6qtd2fJ3fVvCjEXcwWuP7iHyRRrAwJfGQmbL9wNWRQUwSlrm8+HG6GPo2jc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(2616005)(2906002)(36756003)(186003)(6512007)(6506007)(6486002)(110136005)(5660300002)(8936002)(66556008)(66946007)(122000001)(82960400001)(76116006)(316002)(71200400001)(38070700005)(508600001)(66476007)(64756008)(66446008)(86362001)(8676002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUdoRW05MU1Ga3N5ZEZuZVduNjE1QlU5RzdjVjJiS2tRQm9xMk9BM3pCUTNI?=
 =?utf-8?B?UDJlRXJlSkVya29reXQ5c1IxK0NZV0VaSmRtcm5INU5mSTNUUDZGSk5acjJK?=
 =?utf-8?B?dmYyb3F6THREWnlUaTRPT2tUa2ZhU2R3UkRESVUvYURmVmJIdW01Y2ZCMjFZ?=
 =?utf-8?B?M3B0T240dStPak9OL2haSzd0VmE5dHlRbGNsRmh6MmkwYXpZWGlxVnUxeXZJ?=
 =?utf-8?B?RERUTllWQnB3K0xQcXhHbjRDT2lWenBMQk03T0hMdFZJeGp2YnRqTnBkVlpt?=
 =?utf-8?B?RG9qcDFOVU96ZlpzOWN0SU4yUUd3ckNWVzhIa1l0K0dOM0Q2dTFENnRqdVJs?=
 =?utf-8?B?bHlSeGNORGdWQWlSZW8wQWpPSzFBN05wd040T3Jna0N3eUtmRStCcHhRK09L?=
 =?utf-8?B?MFp5ekh6SGU4NTJIKytrWGRuTzhKeDVabGUxVWFuT2RDcm11YTV3SVFwNUc2?=
 =?utf-8?B?MzdGeDhieU9nb2d6Q3dlbkl1cUZsRmloM1BhVVFGUk90N0tpeGNGSGkzTC90?=
 =?utf-8?B?eVVUeTVyTjhsWmhzLzhMekNobUE1T1VEMkY5TEI2NmNvTnVHb3JCdGoxcGdM?=
 =?utf-8?B?MFVLY2F3TDFDbDdkRVYxMEN0d0RuL01KZEtvVGdwTjY5bDlSaXlMdzVVaFVG?=
 =?utf-8?B?NW1ZTFppQTd2T3lOeFpQWGx5ekFpa2JPQkt6SGdwNUZGbzM4RjN3QnRRTjNW?=
 =?utf-8?B?SlJKRzRaV0hvR0NmVWo1K25KemlqYXpZaldIMVFIaEdDdEpLTDF5WU9WOWwz?=
 =?utf-8?B?Ry9XekkwRHhVV1RRMFBVN3VDWE1uU0h3dW9XQU1PVkRJM2Q5bllDOHkwRUU0?=
 =?utf-8?B?NlR3TmNpc3VEUlV6UzVuRnRzNlJRcUVra1hBcjI0OVRMNXNaS2VTTTREdHhz?=
 =?utf-8?B?TFZnMTRjU3pkNDBhWW1ZRmlNNzk1eWhJT2R4RnY4QmpMV3NtZzhGRWZjVWFM?=
 =?utf-8?B?aVdLT1gvRzVLQTJoSEhCK2dKUE83TGo5U0RMM1BmUWZRSjRTYmlRNkdOZ045?=
 =?utf-8?B?R0s1R0FaSE1BeXF5RVNLUitYK3kvbTNUbTBidktycEdJbWt3OXd1bXltK0x6?=
 =?utf-8?B?WWtseEQ0cHp4bllnMHR2a2I2ZjE1Z0JkYUZvV25lU3p5Q1k4TjkrWk9UN3hW?=
 =?utf-8?B?L2o0T1F6d21mcjBsVS9qZGRpOUkvSTlJNWIzQWhXN0ZMdHdJZWdlbDU5YlRz?=
 =?utf-8?B?cTdGTk00angyei9qTDVoZFdNTzY4WnJCK3pTZ01YbGFKMjFNd281eUovT1Az?=
 =?utf-8?B?Mlk4em9RRDBZdFRoQTNIN2tMaWFvb2hxQkFYSSs5YjhPYzhUNU9oMTdVYkxU?=
 =?utf-8?B?c2Z0YjJXNFpEQWNVNzR4aXZPNXpMYml1bU5QWjFYZ0VBYVp6TUV0WjhoYURh?=
 =?utf-8?B?bVB5QnN0UHAvNG14RSsxSms0YUVVeHRVVDVWWjVCczY3czI2aHZJc3VJKzFB?=
 =?utf-8?B?RmNaK1ppRGNzTmR6UURsOHRTNFdyR3dFdW54cXNkUnU4ODJPSHV1Y0RUWTdi?=
 =?utf-8?B?MnY5QVhlQ3JIUzN3R0RKUlArMGJYRVdYUVZiVHV3ZjhGSDdiNkZiZTMvQjZV?=
 =?utf-8?B?VG85SnVnTmY1dEhkQWxuWFNmZWI2YWtsUzBaaVBuM2JpUXp5RlhySGpNVWpw?=
 =?utf-8?B?Y3o5VUxmWWVaQkJMclRxSnlaMUhjZ1NNR1M2aUtkOFFoRno5RUt0V1poSGoz?=
 =?utf-8?B?SnczbTdxRkgxZW81QUN0dUJNZGVHeit3U2pnK2l3aVdzUXAzSDl1cDdJZnhD?=
 =?utf-8?B?NlB2SForT25uVkFuak5sLzNWcktHYlZNNk5XcTIxSzJZaXlWRVU4bEV3MVUr?=
 =?utf-8?B?aU9wTkNuODFiSzBOZ1hRWmczMHYxNkxvNEdzc2JkMmlvWTh4NmZEdmVmdDB2?=
 =?utf-8?B?S0Fjcyt3Tml6L0RXRGxtS3FEZWxrS3YrSmE5NmlBSlZvTXcxV3d0N3RXWDJt?=
 =?utf-8?B?T1hHYytXSlF5MHNjN3ErN1FzVEExYXdwTWpRTStLc3AyNUM3cllQRjA1L1pn?=
 =?utf-8?B?c2hGakZ2Y0tYK3g3WmkxR0tFdElOSHRGRGxSQVppNGJlSjVIclFZQXBvc1pj?=
 =?utf-8?B?YnhQTkFRQ1Z4UDFFNHoraHVlZkNZZTRBYTFzcmNXLzRWY2krd1lHbFE3cWk5?=
 =?utf-8?Q?E8E4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <948C49E18CB0D848BBC3E178090462E3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d1406fe-8356-4ae2-d0d4-08da0d02c5fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 19:24:38.8341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sH/RaRrE7Re4au50XILP8o5JMu+6Y6V06ZIhf2TrlKFXdaItl41VWWqmySD1p8zB2snBu3t6ZCy4NoEXlrv1L6CZC6DcEa0ZcAu4Mzyh631u08Fr5UYGfgV0ZtvtFAgDp6fUGBAZs0BC0ZFD2qXQ+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Load DMC
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

T24gV2VkLCAyMDIyLTAzLTIzIGF0IDEyOjAxIC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
Cj4gQWRkIFN1cHBvcnQgdG8gbG9hZCBkbWMgdjIuMDYKPiAKPiBDYzogTWFkaHVtaXRoYSBUb2xh
a2FuYWhhbGxpIFByYWRlZXAKPiA8bWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZG1jLmMgfCAxMCArKysrKysrKystCj4gwqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZG1jLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZG1jLmMKPiBpbmRleCBhNzE5YzBmMzc5YmEuLjQ2MjExMWExNTMwNCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYwo+IEBAIC00Nyw2ICs0NywxMCBAQAo+IMKg
Cj4gwqAjZGVmaW5lIERJU1BMQVlfVkVSMTJfRE1DX01BWF9GV19TSVpFwqDCoElDTF9ETUNfTUFY
X0ZXX1NJWkUKPiDCoAo+ICsjZGVmaW5lIERHMl9ETUNfUEFUSMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgRE1DX1BBVEgoZGcxLCAyLCAwNikKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIMKgCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eIGRnMgoKPiArI2RlZmluZSBERzJfRE1DX1ZF
UlNJT05fUkVRVUlSRUTCoMKgwqDCoMKgwqDCoERNQ19WRVJTSU9OKDIsIDYpCj4gK01PRFVMRV9G
SVJNV0FSRShERzJfRE1DX1BBVEgpOwo+ICsKPiDCoCNkZWZpbmUgQURMUF9ETUNfUEFUSMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERNQ19QQVRIKGFkbHAsIDIsIDE2KQo+IMKg
I2RlZmluZSBBRExQX0RNQ19WRVJTSU9OX1JFUVVJUkVEwqDCoMKgwqDCoMKgRE1DX1ZFUlNJT04o
MiwgMTYpCj4gwqBNT0RVTEVfRklSTVdBUkUoQURMUF9ETUNfUEFUSCk7Cj4gQEAgLTY4MSw3ICs2
ODUsMTEgQEAgdm9pZCBpbnRlbF9kbWNfdWNvZGVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQo+ICpkZXZfcHJpdikKPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2RtY19ydW50aW1lX3BtX2dldChkZXZfcHJpdik7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBp
ZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKElTX0RH
MihkZXZfcHJpdikpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5md19w
YXRoID0gREcyX0RNQ19QQVRIOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMt
PnJlcXVpcmVkX3ZlcnNpb24gPSBERzJfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+bWF4X2Z3X3NpemUgPSBESVNQTEFZX1ZFUjEzX0RN
Q19NQVhfRldfU0laRTsKPiArwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9Q
KGRldl9wcml2KSkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5md19w
YXRoID0gQURMUF9ETUNfUEFUSDsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRt
Yy0+cmVxdWlyZWRfdmVyc2lvbiA9IEFETFBfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPm1heF9md19zaXplID0gRElTUExBWV9WRVIx
M19ETUNfTUFYX0ZXX1NJWkU7CgpUZWVueSBlcnJvciBpbiBETUNfUEFUSCwgdGhlIHJlc3Qgb2Yg
dGhlIHBhdGNoIGxvb2tzIGdvb2QuCgotIE1hZGh1bWl0aGEK
