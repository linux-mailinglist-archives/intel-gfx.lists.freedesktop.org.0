Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B9ECFC2F7
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 07:31:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620ED10E02E;
	Wed,  7 Jan 2026 06:31:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="epWkUlBq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468E710E00B;
 Wed,  7 Jan 2026 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767767487; x=1799303487;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sPDkJaW5ovW/BtnZDwqRB1iiVLW/taGcyg4hNpzZRvA=;
 b=epWkUlBqtUxNL1gUtQnx6sFbWqC82mVjbuOkFEyaaNv9ozhZa47Qq1jQ
 YAAfiPb08wvvwLG9fZ7K4EgjTaBLJ4rZKMmBqupFir7PGFQ6eyPmfBM6l
 CwGS6YXZthzFNLZdM0hq0Om4pa1hn1DhJPG2iha3a4Xs4HAMHcqUBI+9t
 0S/FYWhmFki06rQblp0Zc+5NNpOBbiPXyOql/I553Ockf+ogfV4uRfloH
 W9Ic75s8DbV+WV2tU47XG+uWzora7Kp+a4IbuzdeN0yz6VxXksZ1037YY
 /jYhklZ5nVLhn5gIvxDp5ImWW0seCGyTeeReudwQjKveiIjM98IWDJYVX A==;
X-CSE-ConnectionGUID: 0DcYHa/lSG6smU8joFsHcQ==
X-CSE-MsgGUID: rhQ/UCZ+Qv6jhfSjzP1vxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="79436526"
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="79436526"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 22:31:27 -0800
X-CSE-ConnectionGUID: TSHq9sd/SuWj4w66ONyiIA==
X-CSE-MsgGUID: IdX+2/iSQkSZr9IOj02yeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="202063922"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 22:31:27 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 22:31:26 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 22:31:26 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 22:31:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rsOyI4Zf0j7f1LKywzTquHGjl3dOpCIA4AElF2gBZtueTsCI6xkivHjZmMX+3rHYdS3+60sCXSQogmM5Rfqwp4foq3GCppNXV/sMFIVIQNbxxK8tIlopOO163+NNAsUmBt8JwHU73frG1umMaj4KgQH52ENXo1K5wyt8CrnuWg8VQd3BOxgFqSsjaOqJWc2nVEgZYFygC4xQ6dTsbt0ojPb7D2+fB4YX4ORTtfNjKWVnMtzfb+ofzr+n6Luq1iRmtlSIhiT6Fy7l4pqvvlz4G/Xum4QIfD1DxzqLnpDnVpzQDrfeydSRSAjHs761b/yADqYV6f4Ch7OH3k4oIUVt1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sPDkJaW5ovW/BtnZDwqRB1iiVLW/taGcyg4hNpzZRvA=;
 b=gP0V1+J4kpOm9g8Aibt5kYKMK7yNueYoT+Hdxxx7W5sMdkEf4mGVo/1pBlesZpbruxxfe4052RrdwU3X2XTQDNaDG2NzJUCyc/N1Fsvhbt9+T+rwOrO05K2/RM+b6lthfGywRoXMOA3lP9dRk7jjZpaiAY4r66Km1in+Cyg/Rj5+nNrpLoHuAI1VluntWkiBE3rfWG0DnGmhXLd1PREsxMPkcKqAZbbsucJ9uXmEUPsdILDkj2/9NLGoQgm6D/gK+EE8IqGRcatR7kaayCHATpLdDtF/N3Fu/XT67uqTswsVqxzjYOA4T504BxAynynjIDMYuPEjtJ/VNrUsZqmpVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CO1PR11MB5012.namprd11.prod.outlook.com (2603:10b6:303:90::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 06:31:23 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 06:31:23 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
 divider
Thread-Topic: [PATCH v2] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
 divider
Thread-Index: AQHcf1Ur4nr2+pvUCUmC/9HZ062h8rVGPvlQ
Date: Wed, 7 Jan 2026 06:31:23 +0000
Message-ID: <IA1PR11MB6266B480556D9B6B710C7CE3E284A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20260106-xe3_lpd-no-cd2x-divider-v2-1-06e5cbc9dabb@intel.com>
In-Reply-To: <20260106-xe3_lpd-no-cd2x-divider-v2-1-06e5cbc9dabb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CO1PR11MB5012:EE_
x-ms-office365-filtering-correlation-id: 1cb1a2eb-5290-4a84-e5f1-08de4db660c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?M3prWTRTT0tIWURhaXZENDcyNUc0NTIxMWtjSHpMVEw5aituMTY5T3h3Wkpp?=
 =?utf-8?B?WlB6Z05yYWlCUlU0d2dYSGk5aWd2bWo1RjhwL1gyUmJQYS9KaHhWN0x3U2J2?=
 =?utf-8?B?Wkl0VGlLeFU2aEUxTCs1bGJjdDVzWS93aWdsUHpJU0U3MjkvdXJWU3dUQ1Vh?=
 =?utf-8?B?YlZxQ1lwZjJpcjhuL3ZaM0k2S2xZVnpJU0RtZHVoRlRpTTYrM25CeVBqcm5y?=
 =?utf-8?B?bUduekVCS1QvM3ZWWTBucE0xZit3cm8rdklFeVFFRnRZTGsrU3lVZXVWZXEr?=
 =?utf-8?B?WGxIS3RmMGNhT2wzNFd4Y3ZLcTF5YysxdWpVR0djOUlkMlFiejdJMmdyOC9m?=
 =?utf-8?B?ZC9CREJZaG1VTWZYM3N0bENTNW9IRzV1THFZQ1ZvTHVoaTRjNHdDVXg3djRk?=
 =?utf-8?B?VEJVUHlqb2pVUTFtK2RNNlJYOThHcGhrYkhXNExFWGNDSVUwV1U5MVJwd3dq?=
 =?utf-8?B?Y1J4MWdjZW45eFA3NC9sUk5SeFBqcmlmMjMxWmJaZzgzdmVrVlMzK1ZqdVV0?=
 =?utf-8?B?dFdma1l5aFVGR25hZllubWdLbURFLzFLQk1UTjNZUm1odDVBaHVLTWU4ZVJB?=
 =?utf-8?B?akdsQ1l3ellZZmpjZ0tXQmJwUWdvVU1KeXJyck1tQnlQRC9yQUdWVWVPYzZJ?=
 =?utf-8?B?aCtKZXgvdGs0eDBvbkpDVCs2eXF6TmRURG1GR01Odkx0M2krYzNzZ0dhR1Ja?=
 =?utf-8?B?ZHFaR0haT3dqVE91WEdGaXhhYU1xUElxa1Y3a0ZqVWU1M0tFeFBvc0JiY2c3?=
 =?utf-8?B?NjYwOHdub1R4Z2t5eU9iYkh0YVl3dUtMMHVTcXJGa2pkNW1wVHZEWWR4ZGxZ?=
 =?utf-8?B?bWRtaStkLzY2Y242YUMwU2poT1NTZkVURk5od0F1TmlmbTJWTXZ5VUtuV0h1?=
 =?utf-8?B?eHp4NmxFK1VlKzdtMlgwME92RVYxbkUraTRwZHVpOGZIazhiZy84Z1BPL05K?=
 =?utf-8?B?S1pUQVVXajNQQVJ3bVFHNC90U25SWHNNcit6SFJCcUFzT0hIRFR0b3VVY2Nh?=
 =?utf-8?B?WjRoSjJhTlhjaU04QVkvYUN5ZERrOFAvejliN2dTWllidjFZWjZrYU5QNTYz?=
 =?utf-8?B?cHJuaVM1akVxUndrUk9iRkxnOEgxQXBzL0xnTzFIZnU5WEZJNGxzNzJUK1Vh?=
 =?utf-8?B?L0lXdmhEN0ZVYnM3dGJiOEFjZW9PbVRUemhrOThidmdGSFFUTGdxYUxLTmdt?=
 =?utf-8?B?aW5OcUVRaGt4QVFHUk5adzJlaW9mU1lldzRhaWFRU2czUldhSi9oN1hzb2R5?=
 =?utf-8?B?dnI0MTVMTDhOTllDbEc3cFZFY211VXl0Sk5kalo1b3RFazlCdC9qZzVEN1lt?=
 =?utf-8?B?clB6N3plaXVTemJZL3VSblhOYmRFakdZM3gwMWtsR1EwNS9zWHo4WmNBTk96?=
 =?utf-8?B?RW5JdldEcUptRnhqSEw2K2hyeU91UGlJMDlYSnNPZVM0L1I1eUd0MDdmMjdw?=
 =?utf-8?B?dHVZdktUZzNjN3YxVjlSWTQ5OE0wUW9vN2JZSTRvd1dSdDFwMHZqejB2c3Aw?=
 =?utf-8?B?ZmRsVDc2WXB1OU5ZSGNKZ0FkWWgrZUxGWmY2MDZta2ZFeG93UkRzQkI1cGxO?=
 =?utf-8?B?YlRWK3BiTm1zUUd5VzN4UHFySzhzQjBjNFYrRUkyUC9GYXpuL1VNbTdYR3ZH?=
 =?utf-8?B?Szg1Nk42d00yb3J0MEdxbHUzQ2VmcVRkY3hyeTY0NW4rdm5YejJ3S0pNVm1w?=
 =?utf-8?B?dkw5dng1cWR5Q0U2R1R4WGJGU1kxK3FvUnZ3c2REK0szdUhTN1publo5Qzls?=
 =?utf-8?B?QWZ6aDl1UlNaVEF0QWlIMlBwNFlHeXZrY1pzazZTVUhNSzcwOTVjWllZZFh2?=
 =?utf-8?B?N25WT2pNcTI1TkhGYTdSZXp6eVpZKzliMmJ0UHJ5ZXZGMmYrWkFpSVg4aEhl?=
 =?utf-8?B?Ynd0UDI3bWVmNHM3TmN2VWZNcU4wYVdaSnlNUk9PQmgyUXNzMWdUclc2UCtj?=
 =?utf-8?B?MjRadE1tY2VxU0ZEWnp6VTNaMDNSUEpIcVlxcWc3N0E3K2t2TVhFMEpIWkhG?=
 =?utf-8?B?cldPaEl2T1pnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NHlFTGRzREhDV1dUaFMyRUdsZkdNM3hvZXg4a2xNVTBraXZVOHpkaG5Cdysw?=
 =?utf-8?B?ZVVzNnExblc4aTQ0ck50djdMREhWc2xNSmY0ekhBTVJ3azhWaGNEMTZEaTVo?=
 =?utf-8?B?eW8wbm5jaWNoNDR3L3NNZEVRZElhZHQrb0ljR3dHRjBUcHFZR1Nnak1zZlVu?=
 =?utf-8?B?Sk8wTzFHVjgzVkpwMDZRRkZMREsvU0ZidmRTSmpoNFhCMGFXMlBjUEtCNnJw?=
 =?utf-8?B?MEtjVndqSVpGRWJNMjBKd0VsS2NZYis1MGJvbTNTbENBWFlPUU83bFhMSXpP?=
 =?utf-8?B?aVVtem12L3hNZkxYZkZDMEJlQUtaOUdHTEJHS1M2Y3ZuQ2VrQUJIWnBMeUk0?=
 =?utf-8?B?N1hkMnR5MFBod09CT2tvT2tSbm56SlFhemlXNW9sVzUxdm05bk9iWFJjVzd4?=
 =?utf-8?B?emNlQlExdmFMTUswYUF2ZlJ4WFJ5L2V3NVZtbUxQVDdTZHFPZVNTeFRSNExM?=
 =?utf-8?B?b0dOZVErOW8rYW9VSHNJbHVQRFJNSEtmSzh3c1NVclRianVzWW9FOEhvYThS?=
 =?utf-8?B?ZHJHaEozcDdubmkveDN0bnNmVXhFRytqT2lWTWJpRy9ZZVZDR3oyNkl1ekVS?=
 =?utf-8?B?Ry96OG5VOXpqMTNSTThnbnltVGZKeldYbitVVVJ2Q0x0eklBd0ZqdzNHbVpo?=
 =?utf-8?B?R01INGFkeVZPSXNBS3YzWW14MTFQaHFCSjI0R0ZRY0pSOFo1YWVHSlRqVG51?=
 =?utf-8?B?WjVlS2taVldpUkZFWGpqL3VkcktPQUtvREV5Rk93RklLaWxwZ1EyblVLd3Fp?=
 =?utf-8?B?aW1ZNWRDVmQrRUtZaVkxajJvbnpMM2FoOCtlc0pFdDdqSTF1QXBJRlRNQm1U?=
 =?utf-8?B?Q1lOTnh2Rkdscy9QRGRtS0JIaXQzMm9XblJJdnB5U2tMa0w1QmRWN0xFUndB?=
 =?utf-8?B?eU84bkRpeWVEbFlCWGVNTlRrcWdvT3hXL0Y1MnlQK0F6WGh0NzcraU9LeGlP?=
 =?utf-8?B?elFnWFV6MHJJbnkrSHp3Qm02WmtyYkJyd3NOZjhJTU5yc2F3WVlOS2wwV1Vq?=
 =?utf-8?B?bzg5RHZTbXVFeUIrck9oSlErckpscjJ0MUZpVGsvZnZZTkpKMDdLL3JwNzlE?=
 =?utf-8?B?SzA3b3F3c1RmNXBtNEdoNzVaNjRTZGgwZStIVTJSRjhsaE9NT3hqWW1haWda?=
 =?utf-8?B?VHBrckw3bmxjbTdCRE11UmdOaHNLdEU3VjRndG5rMFFhU1BIcDQ1R0Z1RnVY?=
 =?utf-8?B?V1YrTFRHNGFneEtaMmk0MDBENW9Vcis0WDJENEdmWnY2M2lMa0dKOFdWaTRT?=
 =?utf-8?B?ZGVPNmUzTDhab2YvditIQXdYVHlLb3VpVUpGeVRWTlEvKzBxMDVOMmluelVm?=
 =?utf-8?B?YzZXV2ZJTytsakVXdWFBbzIyOHkrZDFmT1JseVkzaklaWm9ZUVZsRDh1ZWJy?=
 =?utf-8?B?UkxISmJWNjJ3eHJoU083M0E4ak1rYmVTcVRaVWE1d3lMSTdZS256RnFWb3JD?=
 =?utf-8?B?OG9NRUFuc2MxQTkyT2ZyV0RLcFJubjFhQ2xNa0NhdmdxVk5RODhYRjJiaWYy?=
 =?utf-8?B?ZjZ3MnZIZGhkdFZvMHdlcHpndDZEUDV3Y0M3UnZmUWRyZml5cVdPdUFHRXMx?=
 =?utf-8?B?S1JaMnVkVy9MNU8veFFLdHNTN25JQ1dRSXU4TkxwcVMvZk5VVDBNMmRsOERT?=
 =?utf-8?B?WW5KQjNvU3VOZDE4czlySGo3M042QVlvV0hBSjFqQVpIYUV2T01ZWnhsYlhp?=
 =?utf-8?B?b0FEUkova2RRWGZpTDdpU2M2NnhkZXRLb2VlUnZZOUljWG41WjBSaDdZa0Zx?=
 =?utf-8?B?UDdRTDZuakJMYjgxb0huVWwzOVNKMms4cGVWR0hHM3MzYlNmd08ydHhhV0lL?=
 =?utf-8?B?a1JSNFNkWFkzVnVUVmk1Rkx1QTlMU1dlUm0yTWJ5N1dQb0hMTVl1eTgzTzR2?=
 =?utf-8?B?NExFRThodm9jQldteWxTcjNrbTloUFB3NXM5am5HSURibjZhNC9ORUFLZG02?=
 =?utf-8?B?WDFnUk9nVU00cjE3MVpEMmMrUVA2VXg0U2lZUGpWbDNpb1pzdVZzYXFMUldi?=
 =?utf-8?B?dERXcFpSdUFyM01EL3YzRGQwaUF4cE0yWWdYMG5tWmptNFlZYlBRVEhjZ2Qr?=
 =?utf-8?B?NDhYL0VhM0g2MGt4RG5KOWh4Z1MyRGZhSjNPaWtHMytDWlE5cUc4b0IrczVu?=
 =?utf-8?B?WGV6bS9ZVjZlNFVTRURWVm83L1BDb1JwOERHSWwzRXBKajQ0T1IrQUYyZktz?=
 =?utf-8?B?NUltQ2U2SDFvek1DcDBjbVNVNnk5MW5SdW9pQnl4M3RNOWMwbm4rOVBWUEY2?=
 =?utf-8?B?aC9KaEdibHVINGRvencrZWFOSWFVbkxCUS93d0tOOHRHaVkvV21IMzBsbCs1?=
 =?utf-8?B?UU9RVW9mcHIzd3FYV2NCMW83UXR6YldiZjU5VnZlaWk2bHpuaS9tQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cb1a2eb-5290-4a84-e5f1-08de4db660c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 06:31:23.6211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: axSKoTM51u3sFQP4FT9CSp6epyIU56I45Px1JanhS9wNqM4LiPsHcDztvuclqv9aOJKvzz01J5HkaoF232vsun0lMOV/68I08YX9nIfVgQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5012
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgNywg
MjAyNiAzOjEwIEFNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJoYWRhbmUsIERueWFuZXNod2FyIDxk
bnlhbmVzaHdhci5iaGFkYW5lQGludGVsLmNvbT47IFNvdXNhLCBHdXN0YXZvDQo+IDxndXN0YXZv
LnNvdXNhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYyXSBkcm0vaTkxNS9jZGNsazog
SW5jb3Jwb3JhdGUgWGUzX0xQRCBjaGFuZ2VzIGZvciBDRDJYDQo+IGRpdmlkZXINCj4gDQo+IE9u
IFhlM19MUEQsIHRoZXJlIGlzIG5vIGluc3RydWN0aW9uIHRvIHByb2dyYW0gdGhlIENEMlggZGl2
aWRlciBhbnltb3JlIGFuZA0KPiB0aGUgaGFyZHdhcmUgaXMgZXhwZWN0ZWQgdG8gYWx3YXlzIHVz
ZSB0aGUgZGVmYXVsdCB2YWx1ZSBvZiAwYjAwLCBtZWFuaW5nDQo+ICJkaXZpZGUgYnkgMSIuDQo+
IA0KPiBXaXRoIHRoYXQsIHRoZSBDRENMS19DVEwgcmVnaXN0ZXIgd2FzIGNoYW5nZWQgc28gdGhh
dDoNCj4gDQo+ICAgKDEpIFRoZSBmaWVsZCAiQ0QyWCBEaXZpZGVyIFNlbGVjdCIgYmVjYW1lIGEg
ZGVidWctb25seSBmaWVsZC4NCj4gICAgICAgQmVjYXVzZSB3ZSBhcmUgcHJvZ3JhbW1pbmcgQ0RD
TEtfQ1RMIHdpdGggYSBkaXJlY3Qgd3JpdGUgaW5zdGVhZA0KPiAgICAgICBvZiByZWFkLW1vZGlm
eS13cml0ZSBvcGVyYXRpb24sIHdlIHN0aWxsIG5lZWQgdG8gcHJvZ3JhbSAiQ0QyWA0KPiAgICAg
ICBEaXZpZGVyIFNlbGVjdCIgaW4gb3JkZXIgdG8ga2VlcCB0aGUgZmllbGQgZnJvbSBkZXZpYXRp
bmcgZnJvbSBpdHMNCj4gICAgICAgZGVmYXVsdCB2YWx1ZS4gIExldCdzLCBob3dldmVyLCB0aHJv
dyBhIHdhcm5pbmcgaWYgd2UgZW5jb3VudGVyIGENCj4gICAgICAgQ0RDTEsgdmFsdWUgdGhhdCB3
b3VsZCByZXN1bHQgaW4gYW4gdW5leHBlY3RlZCB2YWx1ZSBmb3IgdGhhdA0KPiAgICAgICBmaWVs
ZC4NCj4gDQo+ICAgKDIpIFRoZSBmaWVsZCAiQ0QyWCBQaXBlIFNlbGVjdCIgaGFzIGJlZW4gcmVt
b3ZlZC4gSW4gZmFjdCwgc29tZQ0KPiAgICAgICBkZWJ1Z2dpbmcgaW4gYSBQVEwgbWFjaGluZSBz
aG93ZWQgdGhhdCBzdWNoIGZpZWxkIGNvbWVzIGJhY2sgYXMNCj4gICAgICAgemVybyBhZnRlciB3
cml0aW5nIGEgbm9uLXplcm8gdmFsdWUgdG8gaXQuICBBcyBzdWNoLCBkbyBub3QNCj4gICAgICAg
cHJvZ3JhbSBpdCBzdGFydGluZyB3aXRoIFhlM19MUEQuDQo+IA0KPiB2MjoNCj4gICAtIEFkZCBt
aXNzaW5nICJ2YWwgfD0gIiB3aGVuIGNhbGxpbmcgYnh0X2NkY2xrX2NkMnhfcGlwZSgpLg0KPiAg
ICAgKERueWFuZXNod2FyKQ0KPiANCj4gQnNwZWM6IDY4ODY0LCA2OTA5MA0KPiBDYzogRG55YW5l
c2h3YXIgQmhhZGFuZSA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KDQpMR1RNLCBU
aGFuayB5b3UgZm9yIHRoZSB1cGRhdGUuDQoNClJldmlld2VkLWJ5OiBEbnlhbmVzaHdhciBCaGFk
YW5lIDxkbnlhbmVzaHdhci5iaGFkYW5lQGludGVsLmNvbT4NCg0KQlIsDQpEbnlhbmVzaHdhcg0K
PiAtLS0NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBFRElUTUU6IGRlc2NyaWJlIHdoYXQgaXMgbmV3
IGluIHRoaXMgc2VyaWVzIHJldmlzaW9uLg0KPiAtIEVESVRNRTogdXNlIGJ1bGxldHBvaW50cyBh
bmQgdGVyc2UgZGVzY3JpcHRpb25zLg0KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vcGF0Y2gubXNn
aWQubGluay8yMDI1MTIyMi14ZTNfbHBkLW5vLWNkMngtZGl2aWRlci12MS0xLQ0KPiA5NmYxZTEx
MmJhYWFAaW50ZWwuY29tDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKystLS0tDQo+IC0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNzQ0
M2U1Mjg1OTQyLi45YmZiZmJmMzRkYzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gQEAgLTE5NDgsNiArMTk0OCw4IEBAIHN0YXRpYyB1MzIg
Ynh0X2NkY2xrX2NkMnhfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51
bSBwaXBlIHBpcGUpICBzdGF0aWMgdTMyIGJ4dF9jZGNsa19jZDJ4X2Rpdl9zZWwoc3RydWN0IGlu
dGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+ICAJCQkJICBpbnQgY2RjbGssIGludCB2Y28sIHUx
NiB3YXZlZm9ybSkgIHsNCj4gKwl1MzIgcmV0Ow0KPiArDQo+ICAJLyogY2RjbGsgPSB2Y28gLyAy
IC8gZGl2ezEsMS41LDIsNH0gKi8NCj4gIAlzd2l0Y2ggKGNkY2xrX2RpdmlkZXIoY2RjbGssIHZj
bywgd2F2ZWZvcm0pKSB7DQo+ICAJZGVmYXVsdDoNCj4gQEAgLTE5NTYsMTQgKzE5NTgsMjcgQEAg
c3RhdGljIHUzMiBieHRfY2RjbGtfY2QyeF9kaXZfc2VsKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiAgCQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHZjbyAhPSAwKTsNCj4g
IAkJZmFsbHRocm91Z2g7DQo+ICAJY2FzZSAyOg0KPiAtCQlyZXR1cm4gQlhUX0NEQ0xLX0NEMlhf
RElWX1NFTF8xOw0KPiArCQlyZXQgPSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzE7DQo+ICsJCWJy
ZWFrOw0KPiAgCWNhc2UgMzoNCj4gLQkJcmV0dXJuIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMV81
Ow0KPiArCQlyZXQgPSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzFfNTsNCj4gKwkJYnJlYWs7DQo+
ICAJY2FzZSA0Og0KPiAtCQlyZXR1cm4gQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8yOw0KPiArCQly
ZXQgPSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzI7DQo+ICsJCWJyZWFrOw0KPiAgCWNhc2UgODoN
Cj4gLQkJcmV0dXJuIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfNDsNCj4gKwkJcmV0ID0gQlhUX0NE
Q0xLX0NEMlhfRElWX1NFTF80Ow0KPiArCQlicmVhazsNCj4gIAl9DQo+ICsNCj4gKwkvKg0KPiAr
CSAqIE9uIFhlM19MUEQgb253YXJkLCB0aGUgZXhwZWN0YXRpb24gaXMgdG8gYWx3YXlzIGhhdmUN
Cj4gKwkgKiBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzEgYXMgdGhlIGRlZmF1bHQuDQo+ICsJICov
DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwKQ0KPiArCQlkcm1fV0FSTl9PTihk
aXNwbGF5LT5kcm0sIHJldCAhPQ0KPiBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzEpOw0KPiArDQo+
ICsJcmV0dXJuIHJldDsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdTE2IGNkY2xrX3NxdWFzaF93YXZl
Zm9ybShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgQEAgLTIxNTEsOA0KPiArMjE2Niwx
MCBAQCBzdGF0aWMgdTMyIGJ4dF9jZGNsa19jdGwoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXksDQo+IA0KPiAgCXdhdmVmb3JtID0gY2RjbGtfc3F1YXNoX3dhdmVmb3JtKGRpc3BsYXksIGNk
Y2xrKTsNCj4gDQo+IC0JdmFsID0gYnh0X2NkY2xrX2NkMnhfZGl2X3NlbChkaXNwbGF5LCBjZGNs
aywgdmNvLCB3YXZlZm9ybSkgfA0KPiAtCQlieHRfY2RjbGtfY2QyeF9waXBlKGRpc3BsYXksIHBp
cGUpOw0KPiArCXZhbCA9IGJ4dF9jZGNsa19jZDJ4X2Rpdl9zZWwoZGlzcGxheSwgY2RjbGssIHZj
bywgd2F2ZWZvcm0pOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzApDQo+
ICsJCXZhbCB8PSBieHRfY2RjbGtfY2QyeF9waXBlKGRpc3BsYXksIHBpcGUpOw0KPiANCj4gIAkv
Kg0KPiAgCSAqIERpc2FibGUgU1NBIFByZWNoYXJnZSB3aGVuIENEIGNsb2NrIGZyZXF1ZW5jeSA8
IDUwMCBNSHosDQo+IA0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDNkNjcwMGEwMjYzOGQ0NDZhNGU4
YWQ5MmE4MjEyYzNlZmVmODRhZTANCj4gY2hhbmdlLWlkOiAyMDI1MTIyMi14ZTNfbHBkLW5vLWNk
MngtZGl2aWRlci00OGY5ZjA5NzJmOTgNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gR3Vz
dGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQoNCg==
