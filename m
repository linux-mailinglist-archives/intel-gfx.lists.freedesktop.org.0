Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOMiHrUGqGmEnQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:17:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74811FE2F5
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B9610E063;
	Wed,  4 Mar 2026 10:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJCI0Btc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A3810E063;
 Wed,  4 Mar 2026 10:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772619442; x=1804155442;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QIYVDpRve7CH4olxoBGgVG17NjUa44p2Hp7U3wibDPI=;
 b=BJCI0Btcu8XsQS5Ju/rZdi4s7oF1XEdZpYVBKsMS89JfD+QGNpQUrWW/
 0WGwZeAix09tk8l2gVJTZ0oYIaW08uteNM+QQ2xda3lrfnqk2XIMEEE7F
 jHszdJgJETkk07wtvZAToXuBV+4volXSQNVCNatwsXrMvoCQUgYhHB6Pa
 d3MUTdeIN12+AAZxokT3E8D8fnh79VRMbOvTUYs5AWLpCqSIeRvwJoOQQ
 bJvrm6ClFL3XEJRFCMEjImjFP4bwjeQMgokGp+RshC4uD9zKOsBo8SeOC
 9qs0VWGOzcrWpyQon8kOeb+ggoGg23324qeyM4Rff/eOWvi4jDt/e+i7L A==;
X-CSE-ConnectionGUID: v8hmF8JAS1SkzO4CGniAoQ==
X-CSE-MsgGUID: qaD7zk54TGmYM1MB/AezCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="84310736"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="84310736"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:17:21 -0800
X-CSE-ConnectionGUID: 7Rm/qIceTWqfxSZYKp/mSA==
X-CSE-MsgGUID: eCg/HYqiSkO4D2Zbi1+2Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="221268237"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:17:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:17:20 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 02:17:20 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 02:17:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yuv17pBEYhxfu93OwIo7GkoDSFKMwL9CGueEA6MP7Cc/fTCHiEJ+9sAHvZsjugyASxhLFvhMyYjR78M0Dpc9AM+pOxBDLcicxDOImCJKIQ05VifjJF8CDQL1usHAmzmKzZrOvcx1TrX5p3mQYTP8NowsDNDNqM37e31jCIkrFAYBwyNh4cDqTzdbZB/gYvN7yht54Wuaz/Qz5HCrIk5xNE9C3hLYaZXrHihOeJV1RoIUrV+FfPsXpmhVCMVUUs1sluOToAStuyQVVF0wxknKeVu0deLXaxfo7/hSa40VNlaWVxS1Pp7ri5sF6KVT+2o/npcSNxCstCc5A+Ik3JNNOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QIYVDpRve7CH4olxoBGgVG17NjUa44p2Hp7U3wibDPI=;
 b=Og5366tqm4iCd7XRsppq1QeFVzCvddKkXo4EU5+t+GUvg6yEuE6JajXIEd1QRPx7DnZdwT2WY0zl1GYYh4uFc1Ugp33v9+/tk04f7nhnJ04wpxk7MCCHzHQtB3bXBTqfi1YltpgXreCdnrkDCOKh/t3/6cV31hXGNkQTYq74YD8aux6sa+GBcvHYTZ0yV52uRY2wWc4J8AEDet8C1yHwc/FH0ihlHsJwJ3kQesNsg08gMDKUrUnVvad8gJvUTPl7kHvlDh3zcJ0WRBvfv/sBJyz70zyhdaG8nWwTgC2QooOKOfr2701Sc08ISIXFrAsYRl11x3qkJzQ4uvp50EBTBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SN7PR11MB6800.namprd11.prod.outlook.com (2603:10b6:806:260::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 10:17:13 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 10:17:13 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v5] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v5] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHcqjxW1bL/xlBwBUWSrEcwrYokwLWcm0YAgAGN/oA=
Date: Wed, 4 Mar 2026 10:17:13 +0000
Message-ID: <DS0PR11MB8049D0C2625E714C81529F66F97CA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260302113153.3225806-1-animesh.manna@intel.com>
 <4cbde07056b800d0505d8d662de3c58b2aa03af3.camel@intel.com>
In-Reply-To: <4cbde07056b800d0505d8d662de3c58b2aa03af3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SN7PR11MB6800:EE_
x-ms-office365-filtering-correlation-id: 7750716c-deb3-4411-1f46-08de79d7342e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: kEHjMgBFVCou7aTyy2KIXCChLg+Qohr7spnfwXVaJ6P5/Eyn9kjnfq/bJZB07mnceRp13GoCRQX9tqg4B2AuGPqG69R6s/ozlETR0B2aa6R0Lc7WGYx9zUpBFfTMBz7PRBXijG6N7W9WEsuA8zucNm0fxKMlHAEQwl0OjXkJcTNqBsa9Pu72tWcJvhI4V8KagEneqmCHiGcMq3iM8blDz4sLV/hxJXXDQS/uJBT/8hPcBzIzzHTXgjJgODwu+pjDHjz4//a/pWOHvFRgHL/Kw+VoXvNHYyvgEkJL1ql2OgkCxnkOGERN01jFhSwn+eS3it6d+T8a3gID1u6yerSK7gJnyIoKZkQ+RPBWbL+nEMBeht+3cvOUMVC5FTU9ZxxnWDVZyGkXOPSb0MXtv6DLR9DwlqJrdQTVNW+kaSP74HHYWUgyzSSSvhgMexnPLNO2ZEYGCrJecusDT/JH+kRgouUCS/3qXGt7Rmen9G98YKXeSdpMJY6W4Fo+eLnqhOYy178iXpqoAHE+hwshVkM3B62LU+nfOLOrk7nZOohmCfAGb63i767QQxRZJXPn/4XDk6+Q6YMzLEiFrn8cSIPjYPFlT5qJz5OX8E9XTfUuM1LV1E/AfVmB1vVDfQFN+Qu0uSggieREAL8n06TL9gjxNZtdplYZYwR4pwrjQLK3cQFSytnAHMN3H1bPk7+S8aYhXCD0D3qTqjWnVW8YUqfmuzit7wQIobZFECc/1qL9n3vOS54YjXY5WYkomc//OI17EMwfxPuFtEEY3m0OfDDYie6SAboP41hsBFCC4e+sLjk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGwwWWlYTkovdzdmU0hSenYxNjZjV0RFNTVhUGN5MHB3dVl2WnVNYTVYUnVL?=
 =?utf-8?B?MDRMUDZXTjlrbVVQN0wxbVJrNGppSFBoWS8wQTllcy9hYkJNV0lVMlBuWTN3?=
 =?utf-8?B?VHF4cUYyWmV4Wkk1alJaNURFVkNIZjNUYytXRVJPNHpQYWhrazFreVJTNjFB?=
 =?utf-8?B?aTkyNmluOStHMUtTZVU4clpTVUQ1cXo5amx1eUJVWXdhK0tvb3A4YU93eWtJ?=
 =?utf-8?B?R0Q3K2NIRVIzWmlKczZHekYwRXdHRkxHQTJJc2JIOWFVamxrVXFZSks5aUJY?=
 =?utf-8?B?N1BiMnJNRTNrZ0poWHdJaXR3aERxU29vTXJmMDVGQXg4UjFZeC9rcFpCVjk3?=
 =?utf-8?B?YjlIb1hFVS9TV3hKaWtNV2xOVUluZit5dkpVcmRRSFZ1NDMzQzVhVFdnUW9F?=
 =?utf-8?B?d3JDbzV2ZHhuaW1GTkdPNjZBSzZuSXdBSkZIdGtHMjVFejJYTHcwZGxCeGQ4?=
 =?utf-8?B?YmVHOFFJTEFEOFIwQlVHd0pIZEFwdUdpb0l2MzkxNDN2dS9nelg0d1Z3WHA2?=
 =?utf-8?B?Tkhra29hQmI3QXB3Zkp5ZGZsTXhJdFJHSmNkMWNBaGhoTi9DS3FKZmRBUVNk?=
 =?utf-8?B?cnM1K2J0bWhRUXR3S040NkpxQzllRmJMb0FLRjVtWmxENkdqSXVhWkpnekZM?=
 =?utf-8?B?akNhN1AzS3A3bjlIcDgrcGdCbTBGeW9ldUdEdVNkSVUwbHowM1Y2b2dDNmFW?=
 =?utf-8?B?dUhzU0RIWkpmeGEvWnlpbTRFSkFaQjVBdkV0OUJNVDEyUGpaRS9iSkdIQWNR?=
 =?utf-8?B?ZCtvclY4TEJjOTNMSHFFaEorNmZVaGVtUVg0SEx3MGNZNFJ3SUNrK25VQm93?=
 =?utf-8?B?WlVRN1ZmMTE5Vk5UVWwvd0I3M1NOdjEva3RqRzNtZmp2Mm93c1pvc285NCtK?=
 =?utf-8?B?RTdHbjRlK1BsZ1pVSXRKQi9MaktRRHdpblRnZkdNL3hqQU9iOEFyM09IR3RR?=
 =?utf-8?B?RXI2S0NXMWhqQnBwUCtCNG9UZXROc1Ivc0tuWlhJZjB6dkFxa25ySnNmWlk4?=
 =?utf-8?B?MmMvdW5xZEdNMjdoMVhrQmRuM1Y1T1REaktwdkFCWEVEVm1xMmNaeUZlUngr?=
 =?utf-8?B?clEvaTBqaFFRNDFDOVNiRktXMVZCdXQwdkNIa3ZMbFltQWpPOU0vYWNMTVN3?=
 =?utf-8?B?dUJldFhzd0o5ekFCVUVFRXhnNy9ZZXg5WDZJUEN1SVk2elhqK05SODRVS05t?=
 =?utf-8?B?T2RFY09FRXptSnAzd29LdkRNYzF4VXgwWGFBNmZNbm9OS1VMUDRLc0FmMFBH?=
 =?utf-8?B?aWk5Tmc4SjNseHhEWGIvN3hEZFZ0MnNJbjFtNXprQUM1MkE2MmIxY0tRRXdt?=
 =?utf-8?B?eTRJYVRWY05UUGtwTlVyZTZrVzdkTFVzSlhwM1MybzJxbEROc3N2RW5HNVBl?=
 =?utf-8?B?WkQ3QUhEbmxCcVplMjMvQmgzN3dvMmE5TlJSUTZJSFpEbUxQR3NXeDIrQS9E?=
 =?utf-8?B?eFgvTFBPK0hFaTJpMkh6K1VzQ29ISGJTU3FDbXpHbTFXOE5EbGVnYVN0MjE4?=
 =?utf-8?B?SmhxQytQd1Q1aTJ0R0ljVFZldjdMZ1RHdWIrY2d4TG12dDNqRTU2RWh2L1o5?=
 =?utf-8?B?OEF0VEJDWWV6YmV0N056Y0htSmZTS3U2S1FsV3NHT3pKWVhxWEM4S1JpZ3lR?=
 =?utf-8?B?RWwvdUZzRjR6YVk3eFJpZm1id1Boc0RCS3h3aGNZNVkzd1JBT3JMcmlMblBo?=
 =?utf-8?B?NWJHdCtjTytXSWxwcHVFclhRcTZLYXBNUzFROTFNN2t6UlR4Nk9ldmhuaVQ0?=
 =?utf-8?B?ZzNKeU1HMlR4cFgwWU1pNmx5RytoL1piZEo5NWNhY05oWXExSXZnancvWHQ1?=
 =?utf-8?B?NVFOTUdoaXh6OVVkWUxMM09nSkdWNUNWM3NQNzV3WENtTWlaUXZ6eXN2RGs2?=
 =?utf-8?B?UHFwRHlSZVN4ajkwRGdoUU9GMnJ1cGFHNDNxOEVlYXFxeDRwR1poenRnMUNx?=
 =?utf-8?B?dUg1Z0RZY1pBK3pQYVd1MXo4elJmTWhDMTdRVy9mWFlGMlREQ2s1Q1dYVnVL?=
 =?utf-8?B?dVUzQ094NTZJdm1YZmd3QjdJYmUrTmNHdkx0dEIrVXQzajRDemRNR0xnMEF5?=
 =?utf-8?B?VUZvOENNd2RoQncxU3loMno3aUxlQ3pNTTZ6M3RadUZqVWRJTnpVVGlmUzJ2?=
 =?utf-8?B?OEtkSUI1TStjdVJ6NGxacGtBZEU5RG9wV3ZzOUk2TW1uUEZjWlRZRTF0Y3Jp?=
 =?utf-8?B?OHFwalQ1dVQwcmhLeEhZZU90am4vYm4zVjJET0RsRGFhTVRNRWxwc09xV0w0?=
 =?utf-8?B?V25ObU1DM0Y4OVZlZTRuWGxrcDZvL0MrVGFLR2ltNUVvM2Q0TnJZY0ZiSkVI?=
 =?utf-8?B?NE5RcU1nczZIeG42eXgyY0FGdGxTTmxyc1N3Mk5Bd1pvczR2Wkc3Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QZKp0atmnxGxJYzKkYszQKL+yrJMtJlbO6c28aM4dV6ycZKBWCLkfEThTIAxVFL+IoHixAlmprAwSrHuG54woQzMghdzSf1d7FlC0uLNPw0a4jF3qmevEF2fvDUF4QA+GTaK6RM2jckoe70ITs0kGCAWxGZfDhfG6sH7a2//1SAvwAyuF+pYuEV01rSze4WeKXcHAgP5rtX0PhZZvo4GHMT39fmbR2VjsKCKhmsZmTXauOCTb2oBIYuZhlALwOoGkrPRhj2ddGaCT37ZAEkba2nl0symp26TD3nT8z7UuJ2kvfJ3lL1PHIrzIOYrYKA1QIXyp8NEe4ULPnhxlJ0+aA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7750716c-deb3-4411-1f46-08de79d7342e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 10:17:13.3392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K1GOVbM+QXITl5oiOMqU7o1U6fH7PeFqIlnsC2X/NY0Ugv1Yl7A5B9tEB4QvCX64FiXZgN7KQ87LmVJPQ3D2eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6800
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
X-Rspamd-Queue-Id: D74811FE2F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDMsIDIw
MjYgMzo1NCBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5j
b20+OyBOaWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSCB2NV0gZHJtL2k5MTUvZGlzcGxheTogUGFuZWwgUmVwbGF5IEJXIG9wdGltaXph
dGlvbiBmb3INCj4gRFAyLjAgdHVubmVsaW5nDQo+IA0KPiBPbiBNb24sIDIwMjYtMDMtMDIgYXQg
MTc6MDEgKzA1MzAsIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4gVW51c2VkIGJhbmR3aWR0aCBj
YW4gYmUgdXNlZCBieSBleHRlcm5hbCBkaXNwbGF5IGFnZW50cyBmb3IgUGFuZWwNCj4gPiBSZXBs
YXkgZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mgd2l0aCBsaW5rIG9uLiBFbmFibGUg
c291cmNlIHRvDQo+ID4gcmVwbGFjZSBkdW1teSBkYXRhIGZyb20gdGhlIGRpc3BsYXkgd2l0aCBk
YXRhIGZyb20gYW5vdGhlciBhZ2VudCBieQ0KPiA+IHByb2dyYW1taW5nIFRSQU5TX0RQMl9DVEwg
W1BhbmVsIFJlcGxheSBUdW5uZWxpbmcgRW5hYmxlXS4NCj4gPg0KPiA+IHYyOg0KPiA+IC0gRW5h
YmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVsIHJlcGxheSBlbmFibGUuIFtK
YW5pXQ0KPiA+DQo+ID4gdjM6DQo+ID4gLSBXcml0ZSBUUkFOU19EUDJfQ1RMIG9uY2UgZm9yIGJv
dGggYncgb3B0aW1pemF0aW9uIGFuZCBwYW5lbCByZXBsYXkNCj4gPiBlbmFibGUuIFtKYW5pXQ0K
PiA+DQo+ID4gdjQ6DQo+ID4gLSBSZWFkIERQQ0Qgb25jZSBpbiBpbml0KCkgYW5kIHN0b3JlIGlu
IHBhbmVsX3JlcGxheV9jYXBzLiBbSm91bmldDQo+ID4NCj4gPiB2NToNCj4gPiAtIEF2b2lkIHJl
YWRpbmcgRFBDRCBmb3IgZWRwLiBbSm91bmldDQo+ID4gLSBVc2UgZHJtX2RwX2RwY2RfcmVhZF9i
eXRlKCkgYW5kIHNvbWUgY29zbWV0aWMgY2hhbmdlcy4gW0phbmldDQo+ID4NCj4gPiBCc3BlYzog
Njg5MjANCj4gPiBSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRl
bC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9yZWdzLmggfMKgIDEgKw0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAxICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8wqAgMSArDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDM1DQo+ID4gKysrKysr
KysrKysrKysrKystLQ0KPiA+IMKgNCBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4gPiBpbmRleCA0NzQ2ZTllYmQ5MjAuLmRh
ZGE4ZGMyN2VhNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiA+IEBAIC0yMjYzLDYgKzIyNjMsNyBAQA0KPiA+
IMKgI2RlZmluZSBUUkFOU19EUDJfQ1RMKHRyYW5zKQkJCV9NTUlPX1RSQU5TKHRyYW5zLA0KPiA+
IF9UUkFOU19EUDJfQ1RMX0EsIF9UUkFOU19EUDJfQ1RMX0IpDQo+ID4gwqAjZGVmaW5lwqAgVFJB
TlNfRFAyXzEyOEIxMzJCX0NIQU5ORUxfQ09ESU5HCVJFR19CSVQoMzEpDQo+ID4gwqAjZGVmaW5l
wqAgVFJBTlNfRFAyX1BBTkVMX1JFUExBWV9FTkFCTEUJCVJFR19CSVQoMzApDQo+ID4gKyNkZWZp
bmXCoCBUUkFOU19EUDJfUFJfVFVOTkVMSU5HX0VOQUJMRQkJUkVHX0JJVCgyNikNCj4gPiDCoCNk
ZWZpbmXCoCBUUkFOU19EUDJfREVCVUdfRU5BQkxFCQkJUkVHX0JJVCgyMykNCj4gPg0KPiA+IMKg
I2RlZmluZSBfVFJBTlNfRFAyX1ZGUkVRSElHSF9BCQkJMHg2MDBhNA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
PiBpbmRleCA4YTJiMzdjN2JjY2YuLmZiZjc2YWQyYWYxYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4g
QEAgLTU3Niw2ICs1NzYsNyBAQCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yIHsNCj4gPg0KPiA+IMKg
CQkJYm9vbCBzdXBwb3J0Ow0KPiA+IMKgCQkJYm9vbCBzdV9zdXBwb3J0Ow0KPiA+ICsJCQlib29s
IG9wdGltaXphdGlvbl9zdXBwb3J0Ow0KPiA+IMKgCQkJZW51bSBpbnRlbF9wYW5lbF9yZXBsYXlf
ZHNjX3N1cHBvcnQgZHNjX3N1cHBvcnQ7DQo+ID4NCj4gPiDCoAkJCXUxNiBzdV93X2dyYW51bGFy
aXR5Ow0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+
IGluZGV4IDAyNWU5MDZiNjNhOS4uZjM1YWFmZTFlODZmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC02MjUwLDYgKzYyNTAsNyBAQCBp
bnRlbF9kcF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3INCj4gPiAqX2Nvbm5lY3RvciwNCj4g
PiDCoAkJaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0ID0gZmFsc2U7DQo+
ID4gwqAJCWNvbm5lY3Rvci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuc3VwcG9ydCA9IGZhbHNlOw0K
PiA+IMKgCQljb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxheV9jYXBzLnN1X3N1cHBvcnQgPSBmYWxz
ZTsNCj4gPiArCQljb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxheV9jYXBzLm9wdGltaXphdGlvbl9z
dXBwb3J0DQo+ID4gPSBmYWxzZTsNCj4gPiDCoAkJY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlf
Y2Fwcy5kc2Nfc3VwcG9ydCA9DQo+ID4gwqAJCQlJTlRFTF9EUF9QQU5FTF9SRVBMQVlfRFNDX05P
VF9TVVBQT1JURUQ7DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGluZGV4IDViZWEyZWRhNzQ0Yi4uMjdiYTk2ZWRlOGUyIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTQz
LDYgKzQzLDcgQEANCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gPiDCoCNpbmNsdWRl
ICJpbnRlbF9kcC5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiA+ICsjaW5j
bHVkZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHNiLmgiDQo+
ID4gwqAjaW5jbHVkZSAiaW50ZWxfZnJvbnRidWZmZXIuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRl
bF9oZG1pLmgiDQo+ID4gQEAgLTYwMyw2ICs2MDQsNyBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVw
bGF5X2luaXRfZHBjZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBpbnRl
bF9jb25uDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDCoAlpbnQgcmV0Ow0KPiA+ICsJdTggdmFs
Ow0KPiA+DQo+ID4gwqAJLyogVE9ETzogRW5hYmxlIFBhbmVsIFJlcGxheSBvbiBNU1Qgb25jZSBp
dCdzIHByb3Blcmx5DQo+IGltcGxlbWVudGVkLg0KPiA+ICovDQo+ID4gwqAJaWYgKGludGVsX2Rw
LT5tc3RfZGV0ZWN0ID09IERSTV9EUF9NU1QpIEBAIC02NTAsNiArNjUyLDE1IEBADQo+IHN0YXRp
Yw0KPiA+IHZvaWQgX3BhbmVsX3JlcGxheV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwgc3RydWN0DQo+ID4gaW50ZWxfY29ubg0KPiA+IMKgCQnCoMKgwqAgY29ubmVjdG9yLT5k
cC5wYW5lbF9yZXBsYXlfY2Fwcy5zdV9zdXBwb3J0ID8NCj4gPiDCoAkJwqDCoMKgICJzZWxlY3Rp
dmVfdXBkYXRlICIgOiAiIiwNCj4gPiDCoAkJwqDCoMKgIHBhbmVsX3JlcGxheV9kc2Nfc3VwcG9y
dF9zdHIoY29ubmVjdG9yLQ0KPiA+ID5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5kc2Nfc3VwcG9ydCkp
Ow0KPiA+ICsNCj4gPiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+ICsJCXJl
dHVybjsNCj4gPiArDQo+ID4gKwkvKiBSZXN0IGlzIGZvciBEUCBvbmx5ICovDQo+ID4gKw0KPiA+
ICsJZHJtX2RwX2RwY2RfcmVhZF9ieXRlKCZpbnRlbF9kcC0+YXV4LA0KPiA+IERQX1RVTk5FTElO
R19DQVBBQklMSVRJRVMsICZ2YWwpOw0KPiA+ICsJY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlf
Y2Fwcy5vcHRpbWl6YXRpb25fc3VwcG9ydCA9IHZhbCAmDQo+ID4gKwkJRFBfUEFORUxfUkVQTEFZ
X09QVElNSVpBVElPTl9TVVBQT1JUOw0KPiA+IMKgfQ0KPiA+DQo+ID4gwqBzdGF0aWMgdm9pZCBf
cHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QNCj4gPiBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvcikgQEAgLTEwMjIsMTEgKzEwMzMsMjkgQEAgc3RhdGljIHU4
DQo+ID4gZnJhbWVzX2JlZm9yZV9zdV9lbnRyeShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiA+IMKgCXJldHVybiBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5Ow0KPiA+IMKgfQ0KPiA+DQo+ID4g
K3N0YXRpYyBib29sIGludGVsX3Bzcl9hbGxvd19wcl9id19vcHRpbWl6YXRpb24oc3RydWN0IGlu
dGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+ICsJc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtDQo+ID4gPmF0dGFjaGVkX2Nvbm5l
Y3RvcjsNCj4gPiArDQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAzNSkNCj4gPiAr
CQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJaWYgKCFpbnRlbF9kcF90dW5uZWxfYndfYWxs
b2NfaXNfZW5hYmxlZChpbnRlbF9kcCkpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4g
PiArCWlmICghY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5vcHRpbWl6YXRpb25fc3Vw
cG9ydCkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIHRydWU7DQo+
ID4gK30NCj4gPiArDQo+ID4gwqBzdGF0aWMgdm9pZCBkZzJfYWN0aXZhdGVfcGFuZWxfcmVwbGF5
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDCoAlz
dHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiDCoAllbnVtIHRyYW5z
Y29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ID4gKwl1
MzIgZHAyX2N0bF92YWwgPSBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJMRTsNCj4gPg0KPiA+
IMKgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIHBzci0+c2VsX3VwZGF0ZV9lbmFi
bGVkKSB7DQo+ID4gwqAJCXUzMiB2YWwgPSBwc3ItPnN1X3JlZ2lvbl9ldF9lbmFibGVkID8NCj4g
PiBAQCAtMTAzOSwxMiArMTA2OCwxNCBAQCBzdGF0aWMgdm9pZCBkZzJfYWN0aXZhdGVfcGFuZWxf
cmVwbGF5KHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoAkJCcKgwqDCoMKg
wqDCoCB2YWwpOw0KPiA+IMKgCX0NCj4gPg0KPiA+ICsJaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50
ZWxfZHApICYmDQo+ID4gaW50ZWxfcHNyX2FsbG93X3ByX2J3X29wdGltaXphdGlvbihpbnRlbF9k
cCkpDQo+ID4gKwkJZHAyX2N0bF92YWwgfD0gVFJBTlNfRFAyX1BSX1RVTk5FTElOR19FTkFCTEU7
DQo+ID4gKw0KPiANCj4gRFAgc3BlYyBzYXlzOg0KPiANCj4gIg0KPiBUaGUgRFAgU291cmNlIGRl
dmljZSBtYXkgb3B0aW9uYWxseSBlbmFibGUgUFIgb3B0aW1pemF0aW9uIHdpdGggRFANCj4gdHVu
bmVsaW5nLiBUaGUgZGV2aWNlIHNoYWxsIHF1ZXJ5IHRoZSBUdW5uZWxpbmcgQnJpZGdl4oCZcyBQ
UiB0dW5uZWxpbmcNCj4gb3B0aW1pemF0aW9uIGNhcGFiaWxpdHkgYnkgd2F5IG9mIHRoZQ0KPiBQ
YW5lbF9SZXBsYXlfVHVubmVsaW5nX09wdGltaXphdGlvbl9TdXBwb3J0IGJpdCBpbiB0aGUNCj4g
RFBfVFVOTkVMSU5HX0NBUEFCSUxJVElFUyByZWdpc3RlciAoRFBDRCBFMDAwRGhbNl0pLCBhbmQg
dGhlbiBlbmFibGUNCj4gUFIgb25seSB3aGVuIHRoZSBUdW5uZWxpbmcgQnJpZGdlIGlzIGNhcGFi
bGUuDQo+ICINCj4gDQo+IFRvIG1lIGl0IHNvdW5kcyBsaWtlIHlvdSBjYW4ndCBlbmFibGUgUFIg
aWYgdHVubmVsaW5nIGJyaWRnZSBpc24ndCBQUiB0dW5uZWxpbmcNCj4gb3B0aW1pemF0aW9uIGNh
cGFibGU/IElmIHRoaXMgaXMgdGhlIGNhc2UgdGhlbiwgSSB0aGluayB5b3Ugc2hvdWxkIGFkZA0K
PiBzb21ldGhpbmcgaW50byAgX3BhbmVsX3JlcGxheV9jb21wdXRlX2NvbmZpZy4gV2hhdCBkbyB5
b3UgdGhpbms/DQoNCklmIERQIHR1bm5lbGxpbmcgaXMgZW5hYmxlZCBub3JtYWwgUFIgY2Fubm90
IGJlIGVuYWJsZWQuIFdpbGwgYWRkIHRoZSBjaGFuZ2VzIGludG8gX3BhbmVsX3JlcGxheV9jb21w
dXRlX2NvbmZpZyBpbiBhIHNlcGFyYXRlIHBhdGNoLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KDQo+
IA0KPiBCUiwNCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+IMKgCWludGVsX2RlX3JtdyhkaXNw
bGF5LA0KPiA+IMKgCQnCoMKgwqDCoCBQU1IyX01BTl9UUktfQ1RMKGRpc3BsYXksIGludGVsX2Rw
LQ0KPiA+ID5wc3IudHJhbnNjb2RlciksDQo+ID4gwqAJCcKgwqDCoMKgIDAsDQo+ID4gQURMUF9Q
U1IyX01BTl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FKTsNCj4gPg0KPiA+IC0JaW50
ZWxfZGVfcm13KGRpc3BsYXksIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID4gPnBzci50cmFu
c2NvZGVyKSwgMCwNCj4gPiAtCQnCoMKgwqDCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJM
RSk7DQo+ID4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChpbnRlbF9kcC0N
Cj4gPiA+cHNyLnRyYW5zY29kZXIpLCAwLCBkcDJfY3RsX3ZhbCk7DQo+ID4gwqB9DQo+ID4NCj4g
PiDCoHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApDQoNCg==
