Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8F9999477
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 23:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BD010E9D8;
	Thu, 10 Oct 2024 21:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKCI3seL";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B560310E9DA
 for <Intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 21:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728595828; x=1760131828;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=KP7i7l+aT9Fc6fVnoBg0zcZgXB3fuR4DnrwtgUaq3vI=;
 b=iKCI3seLIfOvG8qMWcgDzjlTgo5c5MSFsBZTF6Ie7ezbxc7KdXoNxjmR
 r9WQaJii5wcz5QkHUH1wlHzXb/3or6KKRtaBzLz3ZiyktsZLUYoEElehZ
 Bmfht1HHsgSjM5ivxUQi+GT/trifpjECtN0Ykf5mcRcZthO/u1D/VyxPy
 0aOYX/CvkmxpaL31hZAbgOaaypVd4xqa/E82bMpqM7eaYk3ztGevRDFPm
 po5VxyKHEzZUKVTVZ+Gq30sWXI5Lu1Ak5LSBphJSjYKKBlSW1D0qjIbMQ
 Csrhx70vuxiyjCug6uBMunuLJw5LJiGoB3l/DgXuFHjDh+37FGiszpuIa A==;
X-CSE-ConnectionGUID: hEHS4CZFTXClkg9ZzRERkw==
X-CSE-MsgGUID: Ao90Dz1VRjafgZBXFWDcEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="28125330"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="28125330"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 14:30:28 -0700
X-CSE-ConnectionGUID: n+jWM6TOSNyE31jKm3Zdrg==
X-CSE-MsgGUID: OsP5RXqDStKAzKduRtJm+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76637674"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2024 14:30:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 14:30:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 14:30:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 10 Oct 2024 14:30:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 10 Oct 2024 14:30:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UG7oRA7wKncuNoEDNYXAq07xnU96dVJu9tmXGC10V3OIfcw+ysdR8gTFh4FN96fXiuP9duTWxAlyIBJKVlM0ulSY9irNP7PMI4a2uOJpXs00+whw09UBMFSEyGATBqhs2F02EUqFIVhjjhoeEfPbBuqba42rqG98/hSBuijHfsV0BPtsMaMWnJUtdgCPsbCq/Uhu5plP685jzjCb68C69WJzH8xd2iNoHGfIQNIuYgnxJRG9a035jlsxwFdActSkwBliAAzXDxcWm28KIXM9Rq8mJedRk0wsmEGez25I/fTmoPZW1tb88t6zHWwjJoDpXZWx0uWPiEh/hQmFoP6c2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KP7i7l+aT9Fc6fVnoBg0zcZgXB3fuR4DnrwtgUaq3vI=;
 b=r6iO6kxTKCpOoAVrkLXDVr5ltFSZMUpVut8l23/n5P6MqIDUrprxIX2kBsLmdPO9I6cGx7Z7IzauSOZHF3pMvH0N/Qa4RAWAiTKGx1deahX8UMhAd7hBiiiaSYYdj2R74h0Ow2w33t6dzgXAzVN00n3KJ+k07NvtePe9zLqNpwdj3AoYdNBQrCowq9mnFdXRs0xwd7r9j/AFL6TR+Y8NUCx0RkGnxmPEjdaXsS3z5fnmTjqhxWxUIYc7ZGi8OHucJZV8jLMiNH6ukUc6ZFpgIm68A8Hcr8ANURwIDDKg3uOb51SnSxKTaFpdAmN7Wg8BetDREeYSA9nwgHJZ7C187w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.18; Thu, 10 Oct 2024 21:30:24 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa%5]) with mapi id 15.20.8048.017; Thu, 10 Oct 2024
 21:30:24 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
Thread-Topic: [PATCH] drm/i915/display/dp: Reduce log level for SOURCE OUI
 write failures
Thread-Index: AQHbFqGcH8o8AuZs206IQ7YEqcl+eLJ+rOsAgAHdCgA=
Date: Thu, 10 Oct 2024 21:30:24 +0000
Message-ID: <2916f018481d3ecb354c0c1d6c2bd8f0c891bef4.camel@intel.com>
References: <20241004210816.3976058-1-clinton.a.taylor@intel.com>
 <35fd248c-db2a-47f5-a59e-549e2adaad72@intel.com>
In-Reply-To: <35fd248c-db2a-47f5-a59e-549e2adaad72@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|DM4PR11MB6068:EE_
x-ms-office365-filtering-correlation-id: 2b309c26-3b44-4ec4-4281-08dce972c074
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?N1A4bUdySXZ4dFl6bHFXMDRwbFdDNmxXWER5Mk4rR3pkZXRXa2xXdHdRSS9h?=
 =?utf-8?B?ZmFKL2VvRnRpSXR4WUg0Uy9lcUZXLzBDcytIRS9ROTMzaXgwOFFxSGNJWXBX?=
 =?utf-8?B?czZOdXlvb3J6MktZeEZFOXF3MWFQbkdpK3lqQjNMMmxKdElsWWdQakRtQitK?=
 =?utf-8?B?VzlDdjQrQThIUXFjT3FjN3Z6cVlZYkc5amo3MnlOUlVjUHlGUHdxWm5Ndnlu?=
 =?utf-8?B?bHluT2RYUjR6Qzl5emNFYnNObm5rVGMxYmpDLzFPdjBERHhvUy9jTlhlRTVZ?=
 =?utf-8?B?dnAyM0o2R0FTMGlaTWxSN25rUUlsaDBlQlhsaFFIMndOYmd5RHo4c04wL25a?=
 =?utf-8?B?eTI3OUZSVnpjNjJ3NVRFa1FUekJjQ0RlTzlRM0prVEdkMkZWSm9ldXhaUDhw?=
 =?utf-8?B?cm1PenNBUGtWenVvWVUxQlFBcWI1RVMzK3k4bkdnUFhnYWFiL2FhMGdiV1JZ?=
 =?utf-8?B?RDlML3BVNkdZbXp1cEU1TkFDaU1KQ1kzUW9vWGRjdlFZTHdsZ3I5bzg1a2Fm?=
 =?utf-8?B?bTYwdEZnQmhJdjNsYTFycmpCbDVvdUJBU2tkdmpLTndvN1NCNWdibXhjcUJs?=
 =?utf-8?B?RkFmOGtUa3dZU21VRlBIcGVWYmphd0JiQnpJY0tkYTd1ZzJyMXRCbmRjbjZT?=
 =?utf-8?B?RDUvLzl1RFIyWmJtYy9qVGpnR2pUVE9pMU4wbVBSa3F2L1RYVHY1eEN2Y1Zy?=
 =?utf-8?B?QldVc3JXUU0xSHQwZjQ1K3JOV29iSmFva3Fvd0o0OVk1VTl4YVBmOU1oTnlY?=
 =?utf-8?B?M0RMMHV3c3YrdFJvY2g1U3ZVc251NHJvWUhsOFF0VjBzRkxmSUU3OG05Ry9W?=
 =?utf-8?B?dG11bEFZZVo0YkZPREsyQW5ieW1henhqQ04vN1dlVW9HV3R4MGkxdTFQUmJt?=
 =?utf-8?B?N3NnalhzSU5nckExeFNoUVF3UnAzZTRUVHFUMVp3QVlFZDYvbjdZZE1pVFJ3?=
 =?utf-8?B?UWxPM3hxbDFmeHBGaDVoeWROaEFKSUYvVlExc25NMlpNanhxWk52QXRlZWFQ?=
 =?utf-8?B?MHFsM25VTER4S0dRZ0ZNaktzeXA2NGtXVTQ4NXpCSWUrczZxYkFoYkt4REF4?=
 =?utf-8?B?Z0htaFhGWHRFNm1mNElFT1h1YzlZVEFJK2VkQnRvcGdPNmlVYkV1dnlyOWF3?=
 =?utf-8?B?VWVUMXYxczFRQStSdXlXeGx6Ti9zdFlPZHpSR2pEM01rdlNBbHZ0VjdFN2Fa?=
 =?utf-8?B?WUJzZk1Oc2FhaFh2azdER2ZDREEwc0ZseWFCbS80eWxzZVVvUTB0Vkk2eS9j?=
 =?utf-8?B?NllONFpsbFJBZFFjMVVzdDR6clBJbmhyVXJJczMyZDdPRWJrai9ncnQzM09q?=
 =?utf-8?B?cnJqSDJSYW9yZWZlajRjR1dacFhudmptaDZlbVk0Z2ZzNlJqWkVCZzg3aFhN?=
 =?utf-8?B?djI4eFZac0pGOUprOVZPeUJDYzAzQ0tvYWh5R2IyVDhpSHRtaFJLT3ZZc3hJ?=
 =?utf-8?B?K0xhcHhaaFBQcUs0U2xKcVRmUUlxdlZBbUcxWE9WWTIxcmk5WC9OWUNqazVP?=
 =?utf-8?B?cktycjNFYjBaeCtXT3JUUGN2SG83TzR3Z1hzTTZzaHU2SnYxOTZxL29YTWZ5?=
 =?utf-8?B?WHorWFNNemtDQ0w4UTZib0JoLzVqZDdoZXVEY3FCTmtTdGNPamYyUDNaQkd2?=
 =?utf-8?B?YmY2VHNEN3ZOaU13V3pCbG5JcnBRTW5wMXBXVktmeW5wRUpGcXFIaWM4aEU5?=
 =?utf-8?B?SzBZem1yWnVaYWtYL01SMS9tMzE5M0lDenI2N1g0TlE5dDFKZkc3dWk2dmhj?=
 =?utf-8?B?cFQxTXRZbUg1SDVhL2YrRC9pYjF3U1doYlNNbTFqeGpETnNqTGhIM2lESjR6?=
 =?utf-8?B?RHlkNlIxOTV2RlpaUnpPdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eFlYc1h6aXg2QWhQNERzOFhhTUJ3QlpqT29LUVU0WjQvQm5zS01qZ3h1NlIz?=
 =?utf-8?B?cWwrTVVDUUpkWlp6TmluMWtESW9GczJvS25mWHd2WThMNU9nRUpHd3JHMEpS?=
 =?utf-8?B?bUExS2lyVnlEdnFIYlB5NmVBK3dGSkJDK1g0cmM3S2hkbTRnZEU5elliODFt?=
 =?utf-8?B?SUIwUTVEVkhNK3BoRVRvSXVDT1VpV28ybHMzWE0xMGxPckt5Q0ZtaFgwM1hw?=
 =?utf-8?B?NENMRTNqUExsdldjMVRURmszZk96NVg0NXU3UFB4RDIzcnRmWkpIdHJNSzBJ?=
 =?utf-8?B?RnhvODFJNjNBM2dCbTF6L0szUm9jSm5maytaTmhhUjRuVm1uYnRRdCtFNmF3?=
 =?utf-8?B?dkRLMExEMjJsc1F3V3RpR2lLOGwwazRDekFyT2ZkdzVPaGJxcElVVE1NTnI4?=
 =?utf-8?B?WlovZXFhQ3RRQWRNNU0zQTdjTUlOUnN1M3FIb0hYeTdlbTR2NEUxRXZjSmxL?=
 =?utf-8?B?aEk5RHhkTWhiWTJHOW5SSXgwbk40cG1Eak4wc0V5NmtkWWtyYkdQMFhmdWdR?=
 =?utf-8?B?SzdzMG50aHIvTjVjbVcvU21zNGttdVYxb0s3aHQ0Qm1kdGIvaHZUT1h2dXd3?=
 =?utf-8?B?VktUTXVsbGIrVFVEeHZJWFVVRHZ2VHFBY1lFUVFiN3Jva0pHbzRMVWRXV1Nu?=
 =?utf-8?B?QmxuYWVkVyt0UzhqN1cvdEp1SGx4ekluVzVmV1lncklCT3BPY1lnUjNxeFRR?=
 =?utf-8?B?b3lNR0xycVYyOXFTQVpPUjJkNUdNMVlhandBQkl0czdlYkR0ODh4ancyRk8y?=
 =?utf-8?B?RGlnaENuWkM3OTV6YWVUSGVCWmNJRGhSSG9nY1lFcndJNWF4c0w3RjFoUmVT?=
 =?utf-8?B?amNaNldORi9td1ZSMjRuZkZiS0ZsWUNXR1JGSzdrQTQ1M09JR3prK0Uxdm5Q?=
 =?utf-8?B?WkhLNnE5MUd3L3N6S0RjVE1UeG5KVVpDeVpRVTk4VTNudkpCV2xBSmUyNWF5?=
 =?utf-8?B?eFhpTEl3RVVITDY5bnZJRTI0UzFlNHVRWm5Xd0pwc1N5MjUyY2p4RjVKZjNj?=
 =?utf-8?B?MUpCZWowUFJsa1JOSDBlb28xWS9XUllMY3F4Y21wSmpaTGlmcWNwVWdhaURD?=
 =?utf-8?B?RG1sQW1KZ0lzbGovajgzWnV0WDBYaXlTZWZVdU1RTmdjZmFrN29qMmt2b1Vj?=
 =?utf-8?B?QWcrb21MYjBwR3ZxWnQ3SW1QNVg0YWVsQjR3azdvMjl3SUR6dnVaeXZONzFk?=
 =?utf-8?B?bERxMUR3bkVsYWFSekw5ODFCc1ROM3hOQ2lvS2xmM2JteU0wTm50V29ja0VX?=
 =?utf-8?B?R0ZPVlU5ZmxGQUpKTHFPMWV4S01ZRlJQY1ZmVGVJaFBaVWVFZHBYNVUrRUsw?=
 =?utf-8?B?V1FnKzhZLzNlN2xLcjJmeXdNYnNBaGpWUHhYenpaVkhOQUEyNkZzT2JQRVZV?=
 =?utf-8?B?ZWE5L2wyWTV0M1k5RXNOUE4xbDdRVWNXWTZZeE5hZ3pNdm52Rlh6SndvMTQv?=
 =?utf-8?B?cWRGVXpudkU5VXA4S0tSdXdWY0xYNnNoYzNNQUc2Qi9uSmhoUlhhV2NSOHpw?=
 =?utf-8?B?ZFVxellCVEZGNmRtU0ptaWJ6MWlhMkhNVnZ5eFAvZ3poK2dLTWcyc09NNnBj?=
 =?utf-8?B?VzJQRFB5MG5pcnNvOWRROU5zczJlNmxtR3UyYXRoSk5DcGxMUkROY0owdFlZ?=
 =?utf-8?B?K0xIanpnS1B3Q01vRW8zY1FJeXNsTU9nRkxCekhvOEdncWJjWEE4QTZzTGpM?=
 =?utf-8?B?RExaZU9qc1hZUlJabUJwSk5jTktUbXdSY0ZJSXk1U1VQYi96b2ttWWN4REZ6?=
 =?utf-8?B?MUYxekNSakxLVHcyYjFiYUpKNFlkZ21qcWJ3TmZ4dUVLL0daRFFPOC9vRjlk?=
 =?utf-8?B?RGRQY3lZalN5aVRSN3NaYVhDMjljZmtmNG9aODFoNVoxQ3RPdzdTdWV0TGpX?=
 =?utf-8?B?ZDF1Tlk5TDcwQjk4dTh2Z3VOZW01bWlVN2Y5Z0sxU0I2VEpnUDdSV0RoRGg5?=
 =?utf-8?B?K2JjMURSckdra3hhSUtNUGtPS2IrYnhNMVNocEh6SG1wcjd4eko4ODhQQlNm?=
 =?utf-8?B?YTVSUkdaamNWRDczV2E4eGFFV3pveHpQdTZ6Z0dacGw5ODVFcmNBZFhpWVZY?=
 =?utf-8?B?dGxCM0lJUklGeUNLRWxZWmc0QW5STWRUSU5leThzWllxSVkwbHBURHR3TFJW?=
 =?utf-8?B?NTYzNEFHbnlkUEJWVFBoMDdmdFhOWUhTTTJDcHFIMzcreURBM24wTTJuMEcw?=
 =?utf-8?B?cVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C5DE141C9B98584C8AC720A7C37001D0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b309c26-3b44-4ec4-4281-08dce972c074
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 21:30:24.3999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0qdGKr53lk8ALstaQZe2a4z3mRDaXquokP/WwuG/EHzFqAtZOSVasMih3eWqQPU6RYu6sw4iWDVQPF6jm/H0g4ArzLSPHbeD5x+4YsDvHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIyOjMyICswNTMwLCBQb3R0dW11dHR1LCBTYWkgVGVqYSB3
cm90ZToNCj4gT24gMDUtMTAtMjAyNCAwMjozOCwgQ2xpbnQgVGF5bG9yIHdyb3RlOg0KPiA+IFNv
bWUgZGV2aWNlcyBOQUsgRFBDRCB3cml0ZXMgdG8gdGhlIFNPVVJDRSBPVUkgKDB4MzAwKSBEUENE
IHJlZ2lzdGVycy4NCj4gPiBSZWR1Y2UgdGhlIGxvZyBsZXZlbCBwcmlvcml0eSB0byBwcmV2ZW50
IGRtZXNnIG5vaXNlIGZvciB0aGVzZSBkZXZpY2VzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6
IENsaW50IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyICstDQo+ID4gICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCBmYmIw
OTZiZTAyYWQuLjk5MjBlYzFmOWM1MyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gPiBAQCAtMzQxOCw3ICszNDE4LDcgQEAgaW50ZWxfZWRwX2lu
aXRfc291cmNlX291aShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBib29sDQo+ID4gY2FyZWZ1
bCkNCj4gPiAgIAl9DQo+ID4gICANCj4gPiAgIAlpZiAoZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVs
X2RwLT5hdXgsIERQX1NPVVJDRV9PVUksIG91aSwgc2l6ZW9mKG91aSkpIDwgMCkNCj4gPiAtCQlk
cm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gd3JpdGUgc291cmNlIE9VSVxuIik7DQo+ID4g
KwkJZHJtX2luZm8oJmk5MTUtPmRybSwgIkZhaWxlZCB0byB3cml0ZSBzb3VyY2UgT1VJXG4iKTsN
Cj4gPiAgIA0KPiANCj4gSnVzdCBoYWQgb25lIHNtYWxsIHF1ZXN0aW9uIGhlcmUsIEkgdGhpbmsg
TkFLIGlzIG9uZSBjYXNlLCBidXQgaW4gY2FzZSANCj4gb2Ygb3RoZXIgZXJyb3JzL2ZhaWx1cmVz
IChFSU5WQUwsIEVOT01FTSkgd291bGQgd2Ugc3RpbGwgd2FudCB0byByZWR1Y2UgDQo+IHRoZSBs
b2cgbGV2ZWw/DQoNCklmIEVJTlZBTCBvciBFTk9NRU0gb2NjdXJzIHRoZXJlIHdpbGwgYmUgcGxl
bnR5IG9mIG90aGVyIGZhaWx1cmVzIGVhcmxpZXIgYW5kIGxhdGVyIHRoYXQNCndpbGwgYmUgbG9n
Z2VkLiBUaGlzIGZ1bmN0aW9uIHJldHVybnMgdm9pZCBzbyB3ZSBkb24ndCBoYW5kbGUgYW55IGZh
aWx1cmUgZm9yIFNvdXJjZU9VSQ0Kd3JpdGUgYW55d2F5LiBUaGlzIGp1c3QgcHJldmVudHMgbm9p
c2UgaW4gdGhlIGRtZXNnIGxvZyBmcm9tIGtub3duIGRldmljZXMgdGhhdCBOQUsgdGhpcw0KcGFy
dGljdWxhciBEUENEIG9wZXJhdGlvbi4gVGhlIG90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byBsaXN0
IGFsbCBrbm93biBkZXZpY2VzIHRoYXQgcmV0dXJuDQpOQUsgYW5kIGZpbHRlciB0aGVtIHZpYSBh
IERDUEQgcXVpcmsuICAgDQoNCi1DbGludA0KICANCj4gDQo+IFRoYW5rcywNCj4gU2FpIFRlamEN
Cj4gDQo+ID4gICAJaW50ZWxfZHAtPmxhc3Rfb3VpX3dyaXRlID0gamlmZmllczsNCj4gPiAgIH0N
Cg==
