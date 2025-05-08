Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F66AAF8F9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 13:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FEF410E8E9;
	Thu,  8 May 2025 11:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YDaMzpxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D9A10E8E3;
 Thu,  8 May 2025 11:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746704804; x=1778240804;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CmtUtg4WiVcesQ63ds9wfYQzhzWZS6/EY1t1bo2hwlw=;
 b=YDaMzpxVSZ/PY6BRFWjsaarI9/UxkjxGNYPDSzBkSL+0aVBJ5B5x8u2o
 6UlmjDXIZQPxjDYQ7cTVxd/sHk/kb91Oo2UymV8dSz3fsUCiFc3iLggFg
 J3GkhzLMMWxkX7hAPcIMW6QWukNniqk9c7MiFE82aodZWKmQDjHip3hYp
 TGH71w13nmTNjFtawn2Iubg7ZW69s4bsxdzP4uMESzytJhZpjzSrB9Bhu
 A3x2vU/900+FkgWvBR/Yp/7Sm6nMLhlNQj2HogJnUvdbUke9flTwqqCHm
 aaniLRr6wQQ9lceI+cVd74BnqoZbKLfUNV0geZgAviUrps3PfRxXdc71b A==;
X-CSE-ConnectionGUID: 5hvR30VbSrWJJV7hRzthOQ==
X-CSE-MsgGUID: PB0qx9vITA2uhglW+9tboQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48389589"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="48389589"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 04:46:43 -0700
X-CSE-ConnectionGUID: Ev8NfY9xQA27uWDIs8ZhSg==
X-CSE-MsgGUID: 66UrNlXgTmWqpnNne51i9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="141040969"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 04:46:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 04:46:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 04:46:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 04:46:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UbnOxAHKxdNs3sV2IUbFYkQyumtH4dSXXHk5Q4vfJPRrnjO9K3gGklZkWFtAiL6G5qzJR/70c0fv24hGENzoeFxjx7kucF9vqGQj5VvazdMCRf2943WHQQ/CZXFfuyXQ51vzJZfkU2YiOcvEB1W/ERPc6yPjvV8lcGDRol6cjzwIaNN1mrr7i+O0DUb7hhxZy+mLJnrafnYVZdSCV1cQNUTj5bf36f6GLwY1Xf60ZzCIX/xbc6vWiSFTRGNMhzt2ha4clMYsMmQjFbnDeIYg9aL/mlJzzNUQUi2wkp2TxwTu4IKjlLrTPYDE41ADZOlmP7OAx+cAcjB7//mWANwqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CmtUtg4WiVcesQ63ds9wfYQzhzWZS6/EY1t1bo2hwlw=;
 b=m5HnDnc/CVnPyjtZq74LGZHqPi7ez34pNkQ+aG5+RGkQMeOPxQp/VypV7LHI3l0eoXbm2OMRzYa5I6nEGKyN/7CyS0dxkpbfpgXSreIXNmdC0xF2URvB5wNKLFnVU3w9nYVOHWjvKDQf2iWnccYRx1zvvV5UwXuMwENOndXevMKIwe307M2xUxNseWkmjauVz3+tBsTw8y0bU6C5N+GbGz2s+182dqm+Qd5NMsBhTjlFE0mspEaJiR7G4L+PfZ0tva9PYcdZt8xB6PFbYAeYg17Qg0sAVgm0QkOxCIynWonwgu8VxOrfgy/7F5iL/sAeLZMOsxejnJAU5MaDV/jvIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SJ0PR11MB6621.namprd11.prod.outlook.com (2603:10b6:a03:477::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Thu, 8 May
 2025 11:46:35 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%2]) with mapi id 15.20.8699.026; Thu, 8 May 2025
 11:46:35 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHBf?=
 =?utf-8?B?bXN0OiBBZGQgc3VwcG9ydCBmb3IgZnJhY3Rpb25hbCBsaW5rIGJwcHMgKHJl?=
 =?utf-8?Q?v2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kcF9tc3Q6?=
 =?utf-8?Q?_Add_support_for_fractional_link_bpps_(rev2)?=
Thread-Index: AQHbv1mw3S5Xz1sFjU+GM/bAaSaoarPInnSQ
Date: Thu, 8 May 2025 11:46:35 +0000
Message-ID: <CH0PR11MB5491D1997A089028D07AD068EF8BA@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <174586321225.21365.6014197148725125394@c664b1dc75d1>
 <aBtpfQZ9MAtOWobK@ideak-desk.fi.intel.com>
In-Reply-To: <aBtpfQZ9MAtOWobK@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SJ0PR11MB6621:EE_
x-ms-office365-filtering-correlation-id: ffef03e2-603e-4cc2-7bba-08dd8e25fc2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|13003099007|7053199007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZWJnU1FwVEVuVEl1N2dyL083VEhWZW1NWlkyUFQwTFd5U1VTdzR4QVZiWHp3?=
 =?utf-8?B?ajJlRjhZS1BHM3JZcm5UQTliRTB6Uk5kUmVDWEZ0U0ZMQUtrMXFGOC8xQUcx?=
 =?utf-8?B?Y25CV21HaU13c3Z1YmMrQkZUWWZXMERJU2RvUi9oQ1M3NkJ0T2FqMDR6N01p?=
 =?utf-8?B?b0puY1N4T3FKVXU4QnlMSlRTNkxJNytFVFpUNmw2T2JZT1pZNGNTRit2VGIz?=
 =?utf-8?B?R0lQWlRKQUMrRXZpd0pINTd4VVBHNVo3M2ZBQ0JHZ2xLYzczOG9HYUl3OU03?=
 =?utf-8?B?aWZCZ2E5TFRUOHVmcFptUzV5elRGOVYyY1ZDaTN5clpIS1oxZ3FvK1hLdVF2?=
 =?utf-8?B?Y2pvYUNSQ1lFUFI4b3pBMGJhRHVqUnI1VTFpc0RZMWtkY3JmUENnenlxRDJj?=
 =?utf-8?B?ZzZDYVU5VUthTWJDTTFxcE9hWFhZUHVyVEMyRzR3QS9OODQxTTRvblJTZEpF?=
 =?utf-8?B?cU5WdlR6dmZqTTZidXIxK3M1ZFd0K2h3RU9RWktmQTA1cndTaC8wSkJqV2xR?=
 =?utf-8?B?b1paVDRneCs2blJHWG50dy9odFBrMHJ4c2dpVzRwNE9jL3lnSXM0Q1ZNeTZJ?=
 =?utf-8?B?WXl4QTBCYmtYNU1IQmpuZHJtcXUwV0VHNkREbDQwMit2c2FZMzUwaTc4WW0r?=
 =?utf-8?B?TTczQ25LZTMxQ0FlVE1NR3dnc2ZNVVp3MGtaNVJNRllsMExmWXdZR2lobEtG?=
 =?utf-8?B?b3hGajlLdVI3Vko0OW15YUp2dEhNOGVZR3lGQWtaRmN1SnJRd2tLaXFZd2N5?=
 =?utf-8?B?TGRsRGVLc1FWVGw1cTg0cndnY05jYWJGSlVObGtsRno0MEV1QlhpdUsvK0wy?=
 =?utf-8?B?KzBNanpWQ1lJMmQvNXN5U1dJOGVtZHl5OE1Db1RZSzBkR0s5Q2FXVWpnVkpV?=
 =?utf-8?B?QXBtY01nV2ppODJrdVBiazJqa0picXo1RDNXY0FZR1Z1RmtISGExWHRTN2dO?=
 =?utf-8?B?VmRBLzZNcURISlZlajd3aEN6YmxOS09zRjl4N25JZHJPSDFaMTZ6U0ZiTVdO?=
 =?utf-8?B?K09CN3YyNGt1ZHlDK0JSaDFxOVRyS1FKV0pZMXZqSzIvK21OQVk0Y1lySGdI?=
 =?utf-8?B?bWhxcCs5dTFRTkV2b0pNSVE4ZVpPQlVXcVhFalBKems3T2VxR0NDQktJNi9q?=
 =?utf-8?B?c0NtWC9PTjR3MVF5ZVJDcHBNUGNmMGFRc0V2OUFsMjB5RHZJUXdFbUp5eHRE?=
 =?utf-8?B?UnRPeDROTFBTNmZGeWZXS1BIdFFUU2JHYXNCVzZyVFA1OUttenJpNGZmL2lL?=
 =?utf-8?B?MzNqZGthbExuVDE3dnR4bkRBMVV1ODRRdmFtWi9JamdsN2UrWEE0d0F6d1Jm?=
 =?utf-8?B?bHZBKzQ3aDF1aEdnVE5lNlllcGJ6czRsWWhFUHZZVnY4NzFWOWNDNlVvUk92?=
 =?utf-8?B?a3B4aEZKN1VZMGhGOFNnQmlyUFFHVmZCQVNQc3lBU2dDWVNudW8wcExNTXJM?=
 =?utf-8?B?bUlhQi91S1pHYTkyMVoxTk5uS1JjMktncytQZTQvVGlKdjR0dWkrbzl0K0dV?=
 =?utf-8?B?cTJlck5qVm5ZM1JlSXpjN0JCdGZqMzZZUkhjWUVFYW1EaWsyQnhwL2Q2QSta?=
 =?utf-8?B?TXZOU0wrdFhzT2lNdGdZYzIwbFpRbC9PWTZwanZiZnBDK3V5dnArcVRqdkpy?=
 =?utf-8?B?U3FQNUZ6cDY2blBCMUdLUHVpdGVGOTEwQVAxUHdZMC84S0dxZFZLZmdlYm4z?=
 =?utf-8?B?ME5TeUl3blMvWkdIRWpkNVpWWC9VUjlndWNxcEE5U3phZjR2T2RkVTFmc3dt?=
 =?utf-8?B?elMvTmJ2eFlLZnZYZExYejdKd2VXQWFydUc3cjB4ZzRoUGJ3bC90bTJOaWx1?=
 =?utf-8?B?MEpnc2pjMEFaa1V0KzVvbkZQRkxXczAvWFNGTktERFQzcjl2b2dnUmQvL2R4?=
 =?utf-8?B?ME9JeCtYWis5Q0libi9WSEhPU3diRytRLzhYY3pIUXlkYXRwZnRjeEtFbkFQ?=
 =?utf-8?Q?BcK11cMN7bE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(13003099007)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z05kc3M0TUpHS05BeWh6aERMc2pUZmp3ZDh5ZUVHang4UW5EeFhGM08zaXVE?=
 =?utf-8?B?elNudjRNazZoVXhTdnoveGltekFLNkpaK1MxeTlDYmNObk5BTHhuT3h1RWR5?=
 =?utf-8?B?QysrZEdUUnB0bGVSR3ZUb3hpVmhZMzF6a0Z4M29Vc210T3NxQ3lYQjZXblBt?=
 =?utf-8?B?NWxtK2srZUErOXlOYzhoMEJPNktPYkxnbUVwcW5qRWQ4aDRQaE5XZXQ1SFFp?=
 =?utf-8?B?c2pMdmpGRFUrS2ViVFYwUHdVYUhLdUh3Y1MzRUdvY015YmJRVlJoVFpFNTJU?=
 =?utf-8?B?WGJXTU5TU0h4T2xPdUtsYUdhZC81UTlEY1BsOXE1Yzd6WWJiLzk1QXZiUWdy?=
 =?utf-8?B?VkM5QVZHZEFuRjlxdkgvRUNHL05nQWRHdHdxbm1aVkJkcjhyKzdpU0M2a0ND?=
 =?utf-8?B?bDljVFFpdlF3WTk2REhQVG1FWUNqMjNqT1o0N1RwL2VoNGtSTWJxb2g5Nzhp?=
 =?utf-8?B?Z2d1cURQVUxDVlJycEZsWFgwTjkxTEdzbEY1OEkyeG93MFp5cHdwQTR5Rm9B?=
 =?utf-8?B?Yk10VHFHK29RNlBOeFAyd3paeDduVStDZXR1V2dKYXQ3SzY1MjcwdmZUOEJL?=
 =?utf-8?B?U1VzZ2w0R1BsazlZL2F6cWRMcWlCek9qeTZqdWt5MDlINExEQ1R6U0RYcUY2?=
 =?utf-8?B?OVJZYnVrbEpXQ3QxbUs4blRRbVZNcGpSZkljM3hYRktiRElOdy9mNUNqZW13?=
 =?utf-8?B?K2NCL2ZndlZmOHRZUFV0VDlwMEdZSkNhSmJzNTZ4UzYzU0Nub1NvbXFMVGd6?=
 =?utf-8?B?YkpPMmFrT29sZ1NIQ3NlVlNpYUU3V29KekxwVHEwWXNkdFg1Nm5iMUdIYXND?=
 =?utf-8?B?MC9kTTkwYUtiOXdHdFFjQ1ZnSnhuUFlxcDBsV2xzSVh5K0EyelNkRzRlVVg4?=
 =?utf-8?B?QXc5dnRWN3hwSXZZUDBpNEYwbXVtVFJ5enhuR3ZsMDdxWUVCS0Ric3dyWjAy?=
 =?utf-8?B?L2hMZVhGNnpIM3YxSkE4Um8vcnNCZ3hwOWRHbk93cU1HRElwSk93cFdZWjFY?=
 =?utf-8?B?cXdYMy9Yd1JuQ2wxbS9uTzgrM2EwdzlSU3BNY0RXOWdaeGJXOVhvbHcwT3Jo?=
 =?utf-8?B?SWNNVFJMczBpRlBrQWV5TDBVSVBQYUY5VHR6KzRFVGFyamE3MjdBb2grdWNL?=
 =?utf-8?B?MXFhd1NUNXRZNzNoOWFic3ZuK3dvTElSZ1Arcy9OdVgyV2N0Rm90cWtHMVpm?=
 =?utf-8?B?YndXNDdDb2ZDU3BqMlRaYVZ5YkpHWjJ1NDVkb1F5a2RVOW9nSkt3b1UrZEs5?=
 =?utf-8?B?eFZKRnRjQkNzb3M2R3dSUG1kM2kydjBFUzN4R3UyTXMwNDFtdUc3bi9udE5l?=
 =?utf-8?B?K2dUblFZajY1T2F2WnB1QjFUc2pTNUR1cnlTT3FESTNQUFNhNExLdjFJZlls?=
 =?utf-8?B?RFdMbWxlTm9oVDFOck00UWo2KzBrckV1a2ZoTGxIMkk5RGhhNWNwZWpkYzlI?=
 =?utf-8?B?dC94eXBTOGhaODJndW16cnZIbExoellCZVlXZ1ZSbXZoYk16a0VhQ0ZuQnV3?=
 =?utf-8?B?YkVpUGRIM1BFOVNFSUlUYUdGa09zNXZGbzZ3ZUpIaXRiRG50dUw0OGR5Nmhp?=
 =?utf-8?B?ZmRtb1gwcEZGd3VMR1dzc1dLRnhZeGIwbno4bkVmUnNlcDJZRGVHdlo3bTNC?=
 =?utf-8?B?RzdEaW5pN25mODcxNkhNRjBCN2ExcGE5dG0rcFRZWW9WSWlCK1pnY2pwM0Zn?=
 =?utf-8?B?TFcwOTltYzhrbWxUR1lnSlpJMzBUeHlPem9ISzc0RUFORDUvOXgvWjZkeWZi?=
 =?utf-8?B?VGJ0STRPZzh6MTNPZ0tvRmJqTGtRT0JwUkZxWU93T2hVNmhoV1F0OW4vSEdo?=
 =?utf-8?B?V3BPck1ub09BM01iSjVQdnhsbWI2c0xjRTZvZWw5YmNBYmZQMVUxRS9sL29p?=
 =?utf-8?B?VndWTkhGTUFIQktuV05QM3BLME1hTkxNa1VOUmdhNnBiNnRhYzlvRXlySmtt?=
 =?utf-8?B?dW15cjlDZnNvSUtGZ3BvZDJiYlVZODJ5ampvRWlQVnFjSlFhSUxNWFNzWUFN?=
 =?utf-8?B?VStSb3ZVU2gza3YzbEhKelk4VXFwS2t1UXMxV3RFMzhZOUJ0M2xFaW1ReXBr?=
 =?utf-8?B?UWlqbmo5UUU4WFFuYnJvMWJCR1ZIVVppbXZlWlh4R3phSE1FZWJGb1Z5NkxB?=
 =?utf-8?B?WFRJM1dENlU1VFlNMlkzTFhzT2o4ZGFoRkVrVEl1S2FCRUVCSGFCV0dnUXpZ?=
 =?utf-8?Q?J4Z5TB31HlNBda/4Un/RHabDP/L1TdMXieJMdc9FcJj7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffef03e2-603e-4cc2-7bba-08dd8e25fc2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2025 11:46:35.1686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lgx48EtGC/mv4IpBCu1F+pBD6GICVs3BnlZfGK0OoQx0v1fhoHhnGwPsczsMdHVbzFH2RMl7vq+5feza7mGiwWthbmAnV266dYeT2pcHsc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6621
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

UmVzdWx0cyB3ZXJlIGFscmVhZHkgZHJvcHBlZCBmcm9tIHRoZSBzZXJ2ZXIuIFJlc3VsdHMgYXJl
IGtlcHQgZm9yIGEgd2VlayBvbmx5LiBQbGVhc2UgdHJ5IHJlLXRlc3QNCg0KDQpUaGFua3MsDQpS
YXZhbGkuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJh
IDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYg
T2YgSW1yZSBEZWFrDQpTZW50OiAwNyBNYXkgMjAyNSAxOTozOQ0KVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpT
dWJqZWN0OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kcF9tc3Q6
IEFkZCBzdXBwb3J0IGZvciBmcmFjdGlvbmFsIGxpbmsgYnBwcyAocmV2MikNCg0KSGkgQ0kgdGVh
bSwNCg0KT24gTW9uLCBBcHIgMjgsIDIwMjUgYXQgMDY6MDA6MTJQTSArMDAwMCwgUGF0Y2h3b3Jr
IHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNS9k
cF9tc3Q6IEFkZCBzdXBwb3J0IGZvciBmcmFjdGlvbmFsIGxpbmsgYnBwcyAocmV2MikNCj4gVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0NzQzNS8NCj4g
U3RhdGUgOiBmYWlsdXJlDQoNCnRoZSBmYWlsdXJlIGlzIHVucmVsYXRlZCB0byB0aGUgY2hhbmdl
cywgc2VlIGJlbG93LCBjb3VsZCB5b3UgcGxlYXNlIHJlLXJlcG9ydCBhbmQgZm9yd2FyZCB0aGUg
cGF0Y2hzZXQgdG8gZnVsbCB0ZXN0aW5nPw0KDQpOb3RlIHRoYXQgdGhpcyBzYW1lIEJBVCByZXN1
bHQgZW1haWwgd2FzIHJlc2VudCB+MTAgdGltZXMgdG8gdGhlIGxpc3QsIGlzIHRoaXMgZmxvb2Qg
aXNzdWUga25vd24vZml4ZWQgYWxyZWFkeT8NCg0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNjQ2OCAtPiBQYXRjaHdvcmtfMTQ3NDM1djIg
DQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0N
Cj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4gICBT
ZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQ3NDM1djIgYWJz
b2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYg
eW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRo
ZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQ3NDM1djIsIHBsZWFzZSBu
b3RpZnkgeW91ciBidWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcp
IHRvIGFsbG93IHRoZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdo
aWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgRXh0ZXJuYWwg
VVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQ3NDM1djIvaW5kZXguaHRtbA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDMgLT4g
NDMpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBObyBjaGFuZ2Vz
IGluIHBhcnRpY2lwYXRpbmcgaG9zdHMNCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDc0MzV2MjoNCj4gDQo+
ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMj
Iw0KPiANCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+ICAgICAtIGJhdC1hcGwtMTog
ICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1GQUlMXVsyXSArMSBvdGhlciB0ZXN0IGRtZXNn
LWZhaWwNCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV8xNjQ2OC9iYXQtYXBsLTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+ICAg
IFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0NzQzNXYyL2JhdC1hcGwtMS8NCj4gaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQoN
Ckl0J3MgdGhlDQoNCjwzPiBbNDQ5LjcyNTgyMF0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpF
UlJPUiogbGl2ZV9hY3RpdmVfd2FpdCBpOTE1X2FjdGl2ZSBub3QgcmV0aXJlZCBhZnRlciB3YWl0
aW5nIQ0KDQpHRU0gaXNzdWUuIFRoZXJlIGlzIGEgRFAgb3V0cHV0IGNvbm5lY3RlZCB0byB0aGUg
aG9zdCwgYnV0IGNhbid0IGFueSBpc3N1ZSB3aXRoIHRoYXQgb3IgYW55IG90aGVyIGRpc3BsYXkg
ZnVuY3Rpb25hbGl0eSBpbiB0aGUgbG9nLiBTbyBjYW4ndCBzZWUgaG93IHRoZSBjaGFuZ2VzIHdv
dWxkIHJlbGF0ZSB0byB0aGUgZXJyb3IuDQoNCkkgZm91bmQgdGhlIGFscmVhZHkgY2xvc2VkIHRp
Y2tldHMgZm9yIHRoaXM6DQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUv
a2VybmVsLy0vaXNzdWVzLzE0MDQ1DQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMjEzDQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyNDM1DQoNCj4gS25vd24gaXNzdWVzDQo+IC0t
LS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTQ3NDM1djIgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiANCj4gIyMjIElHVCBj
aGFuZ2VzICMjIw0KPiANCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4gDQo+ICAgKiBpZ3RAZ2Vt
X2V4ZWNfZmVuY2VAYmFzaWMtYnVzeUB2ZWNzMDoNCj4gICAgIC0gYmF0LXJwbHMtNDogICAgICAg
ICBbUEFTU11bM10gLT4gW0RNRVNHLVdBUk5dWzRdIChbaTkxNSMxMzQwMF0pICsyIG90aGVyIHRl
c3RzIGRtZXNnLXdhcm4NCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV8xNjQ2OC9iYXQtcnBscy00L2lndEBnZW1fZXhlY19mZW5jZUBiYXNp
Yy1idXN5QHZlY3MwLmh0bWwNCj4gICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDM1djIvYmF0LXJwbHMtNA0KPiAvaWd0QGdl
bV9leGVjX2ZlbmNlQGJhc2ljLWJ1c3lAdmVjczAuaHRtbA0KPiANCj4gICAqIGlndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkOg0KPiAgICAgLSBiYXQtZGcyLTk6ICAgICAgICAgIFtQQVNTXVs1
XSAtPiBbQUJPUlRdWzZdIChbaTkxNSMxMzU3MV0pDQo+ICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTY0NjgvYmF0LWRnMi05L2lndEBpOTE1
X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAgWzZdOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDM1djIvYmF0LWRnMi05Lw0K
PiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LWRnMi04OiAgICAgICAgICBbUEFTU11bN10gLT4g
W0RNRVNHLUZBSUxdWzhdIChbaTkxNSMxMjA2MV0pICsxIG90aGVyIHRlc3QgZG1lc2ctZmFpbA0K
PiAgICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzE2NDY4L2JhdC1kZzItOC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAgWzhdOiAN
Cj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3
NDM1djIvYmF0LWRnMi04Lw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0bWwNCj4gDQo+ICAg
KiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAgICAgLSBiYXQtYXJscy02
OiAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctRkFJTF1bMTBdIChbaTkxNSMxMjA2MV0pICsx
IG90aGVyIHRlc3QgZG1lc2ctZmFpbA0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2NDY4L2JhdC1hcmxzLTYvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxMF06IA0KPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc0MzV2Mi9iYXQtYXJscy02DQo+
IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gDQo+ICAgDQo+ICMj
IyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPiANCj4gICAqIGlndEBkbWFidWZAYWxsLXRlc3RzOg0K
PiAgICAgLSBiYXQtYXBsLTE6ICAgICAgICAgIFtJTkNPTVBMRVRFXVsxMV0gKFtpOTE1IzEyOTA0
XSkgLT4gW1BBU1NdWzEyXSArMSBvdGhlciB0ZXN0IHBhc3MNCj4gICAgWzExXTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTY0NjgvYmF0LWFwbC0xL2ln
dEBkbWFidWZAYWxsLXRlc3RzLmh0bWwNCj4gICAgWzEyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzQzNXYyL2JhdC1hcGwtMS8NCj4g
aWd0QGRtYWJ1ZkBhbGwtdGVzdHMuaHRtbA0KPiANCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxp
dmU6DQo+ICAgICAtIGJhdC1hcmxoLTI6ICAgICAgICAgW0lOQ09NUExFVEVdWzEzXSAoW2k5MTUj
MTQwNDZdKSAtPiBbUEFTU11bMTRdICsxIG90aGVyIHRlc3QgcGFzcw0KPiAgICBbMTNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjQ2OC9iYXQtYXJs
aC0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICBbMTRdOiANCj4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDM1djIvYmF0LWFy
bGgtMg0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gICAgIC0gYmF0LWRnMi0xNDogICAgICAgICBb
RE1FU0ctRkFJTF1bMTVdIChbaTkxNSMxMjA2MV0pIC0+IFtQQVNTXVsxNl0gKzEgb3RoZXIgdGVz
dCBwYXNzDQo+ICAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzE2NDY4L2JhdC1kZzItMTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJv
dW5kcy5odG1sDQo+ICAgIFsxNl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDc0MzV2Mi9iYXQtZGcyLTE0DQo+IC9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gDQo+ICAgDQo+ICAgW2k5MTUjMTIwNjFdOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEy
MDYxDQo+ICAgW2k5MTUjMTI5MDRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTA0DQo+ICAgW2k5MTUjMTM0MDBdOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzNDAwDQo+ICAg
W2k5MTUjMTM1NzFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzEzNTcxDQo+ICAgW2k5MTUjMTQwNDZdOiANCj4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xNDA0Ng0KPiANCj4gDQo+
IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPiANCj4gICAqIExpbnV4OiBDSV9EUk1f
MTY0NjggLT4gUGF0Y2h3b3JrXzE0NzQzNXYyDQo+IA0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUy
OQ0KPiAgIENJX0RSTV8xNjQ2ODogZjZmYzI3ZDMzN2YxMDc4ZTE0ZGUxZWYzMTlhOTJiNGU1MDIw
M2FlZCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgIElH
VF84MzQxOiAwZTc2ZDgyNjc1MjI2YTk0MmY0ODExNTE0YzA0MGMwN2Q4N2QxNTZiIEAgaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAgIFBhdGNo
d29ya18xNDc0MzV2MjogZjZmYzI3ZDMzN2YxMDc4ZTE0ZGUxZWYzMTlhOTJiNGU1MDIwM2FlZCBA
IA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+ID09
IExvZ3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3NDM1djIvaW5kZXguaHRtbA0K
