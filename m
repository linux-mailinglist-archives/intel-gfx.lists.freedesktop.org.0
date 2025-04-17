Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C428A91E54
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 15:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1EEF10EB13;
	Thu, 17 Apr 2025 13:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gNEFSTRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A6510EB0F;
 Thu, 17 Apr 2025 13:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744897359; x=1776433359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=b12+2YonINKLUO8bvX6n3pOB+26wNoi2jrkLL9kt1Q0=;
 b=gNEFSTRy/qcf2/h+Y4+qXDqHaYaO9n0Bacs/Kp2g2DezXPXNDBsoTjkI
 qM9EO86zpq4V6dknL0eQyJb7M1p4T54EKRlYFxOeWB9nKsW7+auZKltYs
 BPia6TJ1Ifm5kT8fBfh0VLJevG3mStaNkZsMPnv33a1KaLmwEb4SVU85p
 gN1+jccvErq5YMIcAXQKHnsUuj2u9eToGCL+5VoDrzGGnMSgrS2w6mgNB
 2Vc34jN/w7+vBZMT+R8YupqO7x4XRgF5Rk6lsq3XechTv5xB6Ezr9dFVu
 1DEPNpn5eIVVNMlOpNUIiz0uG5Kd6hixdWQfW9gJelZ+aJlZn5qRdG+V7 w==;
X-CSE-ConnectionGUID: /FOZ0BZgSFWfWRzs2JjUhA==
X-CSE-MsgGUID: mpQqpyGRTdyTW0nk/Tg/Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="34097387"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="34097387"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:42:27 -0700
X-CSE-ConnectionGUID: WeMyZ9MPSqqsUjzJwd1EKw==
X-CSE-MsgGUID: wEBYkpkpRCO1x7jCUwsmPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="130748715"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:42:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 06:42:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 06:42:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 06:42:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o0Tvr1XUxdbboWbZlUYbNiTTfacCeCUgLTLjIeHzm63wLJ9vMwzYO7z82riy7Nt0W0pOYDCJXtDkedBlMfyn+Tj4lyGcypOon4qcm3wGD0sXzlk/QVxczaEGRDMKT0O/lcDrDm7rq9xY8tVM7LPZY5iPS5DzSI2pedNVb1U16urZ20vCtt4uuTaWYGRM8a922EpebJvEDnUlCtWOJ4evQuMGSTHil4qL2tVHqhKD2zYL+WzNIjd1gUrLX5DWM96haz1wuNR4b6OKvH13GCAa72AgoTwaLJvoTMe7qxfXn4zSqQifXKVi+8YHkppdAHNVE7zY0YVfdW6aMepuhO0kXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b12+2YonINKLUO8bvX6n3pOB+26wNoi2jrkLL9kt1Q0=;
 b=vxTxQHnqVvTkLso8Ce4eomwAAmnfjNuGD3xTrjexiTv621KRJrRYMDnwwMhhkgh5l+rxv2BdVZW3B7Iv1Sz8NM1W4nCDf9vav9TNxluXu7NKFG4VX29nw5NiHMlotJNxgVTAKFU0kOm55BmRlL0vFgASu9aFWGlYCMJXgaw6Y3mapTby5gw4X1V+QxqH37S581ZnQha66MajDIrn6Rj+RiljV/PH1ELa7Dn7Q7KQWJN7YizsDsklbhMX+5Hm+ZWY5Uit7kNACz3Kd2afVVHthufHSA6n1uWq2eeINx6aNfnTeyPx/Bii/7xfk2u3RLEIiEqtsoA6AKkNt1KxFudUNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6607.namprd11.prod.outlook.com (2603:10b6:510:1b2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.29; Thu, 17 Apr
 2025 13:42:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Thu, 17 Apr 2025
 13:42:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Topic: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Index: AQHbr4BBzX5a2dK8mUyOmibW04vWdLOn3fGA
Date: Thu, 17 Apr 2025 13:42:23 +0000
Message-ID: <9cb8a8b06472eb2126fa0ab17f2042f5274118b8.camel@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
 <20250417094123.1662424-11-animesh.manna@intel.com>
In-Reply-To: <20250417094123.1662424-11-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6607:EE_
x-ms-office365-filtering-correlation-id: 965b6c97-2ca2-42cc-eb2e-08dd7db5af57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TXRaV3BMZWVRT1RGMWRpWEVsRjVtaXYvdUNBK09kaVV0b2RUYzNBSXM4Rkdh?=
 =?utf-8?B?RlhSM3BZUDlBOFhjRVAxSGVnMU9qTkp5RTlXOTNvYnJVb1hMbHpadFZFcjZk?=
 =?utf-8?B?TDNhbmp6dm03Mkc0czBldkhxTHR2eGtaTWZGeHJQL1BCNCs1UXpwWVB5bWla?=
 =?utf-8?B?blczWldMNlRuNHI3bE43VkhTRUg5RGhKWUxSWGF5VHErdmNXa1I5c3BOTU9s?=
 =?utf-8?B?Q1I2djhDdmhTU21lVmhWVGFRQWVsWm5PUVM1Z25JM2VhWUVyWmFyMGF2VW04?=
 =?utf-8?B?alJpUFRmL3VNak9Fbjk2UlNGSUY5cjl5MmluRUdNWDhjNHFMV2JnTWFiV1lD?=
 =?utf-8?B?REdUcnZVRFRxZ3NaQ0pHSytxamE4Z3dVNUZiVlZKQ0JtSUhmWWF3Z0NWQ3JZ?=
 =?utf-8?B?Zk0yMHhqMkh4MmdWNDRUSzNUMGpEMlJMR1l0MkdBaU5iS0NacVcreEhaYVBk?=
 =?utf-8?B?bzl6eTY0ck4vUUFOWFkzdjBGWmlrU0hZeWU1ZWFsUHZ4eUhmWDJCVmlqemxi?=
 =?utf-8?B?eFpmYy85YnpCcC8wQ2xaWFcvdnpnREVBczZHdmcwY21JYm4raG83WjJ6cG9v?=
 =?utf-8?B?d3hGSkpZc1ZTOEk1TTIrOWk1eGc1RlhWZjVTb0FlY1F0TjNaMVlaZEM2aXNx?=
 =?utf-8?B?RVQ3dld2M3E5WlNJSUVjWlNuNlFYNFdUYmVMZys1K1JkbHFTZjZtQzRKNmpB?=
 =?utf-8?B?WUEyTUZiZE80SUFiZHpoZGZaWGVEclpTenFVR0R5cFpzWU41QVNyTnNuVHlV?=
 =?utf-8?B?dFBsWkR6Ky9PN2ZjYmtRU1ZydzZmSXUvY1NUVHhUNDMzbXNXWWpidnl2YytN?=
 =?utf-8?B?SldRM1UxZEpRNG11STBtUHBpRlREdzhoOEFreThjSk5iYkFoRHpMZ1liTWJP?=
 =?utf-8?B?dmEyQ0FjcmJDbEk2T1pocHVBbGdDVlE0ZktjcUF5RTlBL2NLREtWdmZpY1B4?=
 =?utf-8?B?V1hpN1FjRSs2cDI3TkNJOVlVTmtPRkVOWlJHdDNWcTEvNW9ZOEtocGxtY3cr?=
 =?utf-8?B?bXZ0cXgraWhnbzNTa1RGWm5McXdQZzNISVlIMVhySjI0UVRJSTl5cHIrS0Z1?=
 =?utf-8?B?NnNnMmhmZFA4azVPWkdSTmtuaEV1MldBSzE4WHZjT25YMmlPNnJtMzNhSXZC?=
 =?utf-8?B?NmtIU2xjenRZN3JOQmp2QU5EQmVmdXR4a0pBYVlCWTBuWkV3VnYwZGF0ZEFi?=
 =?utf-8?B?VERyK2ZXSU1kNGVSQ20vckt2N1NDeno1UDJHbm84dDl5S3ZkWjNhSjhQcWZk?=
 =?utf-8?B?Nm91VndXSC9DSXhJUThzMWZ0RitwWm1VSFRaZGQ0TkpCVDU3Nlh4dzl4ODVl?=
 =?utf-8?B?RFB0UmVaSm9RRFdqdUU3c0ZDTGxRcGNtN3kyYnpSY0s4RCs5b2E1YkprYk5Q?=
 =?utf-8?B?YUhUeWV4S0k5YjVrWUxyQy9pY1RRVlMzWWVFSkdmb0QxVU1oR2JQYzl1R0hD?=
 =?utf-8?B?b2Nad3BLVUJjU0pXTmxPWkt4MUJ1cTM3UXp5VTk3dWp3ZW5LQ2F0a1ZueUFB?=
 =?utf-8?B?ZFYzQ2p5RlZxVkd4b2tCVVlvaDJZRXo3VDFlSDNTS0liM2hDSTQ1aXJpUzRY?=
 =?utf-8?B?cGVnaEhGL2pTOVZTU3l5Nk5Ea2pSR1ErT0dNRUxJVDgyc2xkNWZMWmcxV0Q1?=
 =?utf-8?B?VFRBMmtmdmFCM1kyUnRNaW41VWQ0VVNHK1JXNHUxb3M1ZGlBeDZOUi9BaHFs?=
 =?utf-8?B?ZW1vajBuci9FZ1poMWVSMEF5bGY3Ni9jeDZUOFAzLzhUTzJrVzJLZ21uZTVB?=
 =?utf-8?B?bmtkMW5HWnJ2U0VoT203OTYrd3NSSTE5RllBRHhERFVEb0g2MHkxY3IrblFw?=
 =?utf-8?B?Qk1QMy9QTVZOL3hwc1FZSkZnZkJvK3ptTGZxUmkvQldoRkt5RmNIRnMyd2xQ?=
 =?utf-8?B?cFFEdklEWTAyUlNTR1gyYXhSSVVvV0tvTVBySkhwZERZT2hTQ0JFS3ArOUlz?=
 =?utf-8?B?YzhYN3JQVTZ3M3crOGQzR0d1dExpR2s2ZlFvWDhveFZnVERIbkdQcDFUZE12?=
 =?utf-8?Q?0sW66Kb2LCVQs49plSVkM+sARda6SE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEtITGR0c0t2S04zaDAwTklvNHpuUzB5VmlrNjlaR0JEMXB3WS9uZGJkTXVx?=
 =?utf-8?B?TGJaM2hZYkY2dzdzSGJ6QXlBYU93MWZ1VmRCZmwvMmRuZTkwWDVvbDVXNGVn?=
 =?utf-8?B?bExoeTRxV3htNmdYMVdoMm10TE5XZ3pvMkQ1anNHVlJPRnRnTldqUWtMbnpP?=
 =?utf-8?B?UDl1Z3lMUFhPdi9UNGZLM2tCNlZaUm4yaGE1a1ZMVWpqSmNyaTJXRi9sb0pX?=
 =?utf-8?B?YXUvMGFEMnFtSDBGMkFLVVlXdXNNTlZJVU43M2xvL29QL1VmUkx5K2s4djFM?=
 =?utf-8?B?RGZ2RDl3TjgrR01NR2RrV1dybXAwUGpOK0YrUVRWQjh4SmI4bCtDWlVPS2Zv?=
 =?utf-8?B?RWpjNjVQM0pHTHhXQVhPa29uR0c4ZFVzaU9WYmZnVnc3c0RpY0p1dGpGcmFZ?=
 =?utf-8?B?S3YyUmc4cmRUcmZEWjU2azZxYUNRQ0V0b1JCbzE2R2dCck1vUUp4MTJRNlR4?=
 =?utf-8?B?aUltTHVOOG9ZQUtQZXp1Y09qVDM4VXZkZWZTWktXYnVmS25raHE3Y2V3bTk5?=
 =?utf-8?B?VEdGVDU5dlVxdG03aDB2TzJ2YXM3YzU1OE40eTFsSUVxNGY5K3EzbVcvU1M3?=
 =?utf-8?B?YjdxRGpMMmxLcTE4SlZnZUltSGxybGNTS3JRTStGNnJjQ3MvQlhnRmx1VmEw?=
 =?utf-8?B?Ym9SVDZVVjRVcjJ4SmpKR29nMkhQWk9xYWVWdWtlSGJ0djRaTHhpQXFLMDAx?=
 =?utf-8?B?RldKdGhSNG5jZlRlNWMzZU5IUkdQN3grWXhTaU9welpTK1JzekhLaWlGUjZs?=
 =?utf-8?B?OU9IdEFVV0FDemVUNGV1VWN4ODFlaVVPUkhjUHJ0MGxZQ21oNndzcmZZcis3?=
 =?utf-8?B?d2QxYVQ0dkZvMFhVTCtaSnpuTS9zRnVTYnh2YTlocFF4SUxVczJrT2VhQjR1?=
 =?utf-8?B?WnVNYkx3TVllSUNQcXlzaytnd3FxcC85cmFPbU9FeGt0ZXU2eVJxdUlqVGl4?=
 =?utf-8?B?d1lXK2lUMG9nMlNONDB6cHNJS0hIb0xubXRuNXZrRGQyKzJFK29kNkVweVNN?=
 =?utf-8?B?ZDNUbEt0ZzZpZlJJN0FBVFMwVGNBMHhWOWVldTlqc0VoeU1CcjV5K0NBT3Fa?=
 =?utf-8?B?eW9Ibk5qOGxPd1pJbzZNUWllWldwMnphYWFXaDRJN1FFYVIvTFlEK2VhNS82?=
 =?utf-8?B?NDhpQW1wV2xsRmprVjRjN2VYSC90aGt4WjVMQ0JPcHF1TFZTcWdRelN6blpG?=
 =?utf-8?B?aWRJaTBaNmd5NWQvZlM0OVhJMUtGNUw1Tm5iVnY3R2FVWUlFYmFaZklrZGNi?=
 =?utf-8?B?eXN6dW84aGttNDJ1Zzh2SWJ6b2ZwT3lUZFp2K1A1NzdxRWs4UEVVS1krVytE?=
 =?utf-8?B?dkxJQ1g0UzFRTTBqQkhMUjJMK254aytFeXVsZHFLSzZuT1FCOUcwWFE4QU1y?=
 =?utf-8?B?WFZDTnlCTVlYYzhTbWRjUGlWazg4U1hkdnRhbTB6cmM3V293cjdHNFNHcFNO?=
 =?utf-8?B?KzNEOHZtRm5KenI2Sjh1Wi9Rdk5sWFpEZkhQKzQ1UWY0aDh0cmpGdTZQdnJ0?=
 =?utf-8?B?eFV2by9ldTJYRkdGUDcrMms2b3grYVAyeXJkWFFJSGZaam0xTG9VRW9WR0Fx?=
 =?utf-8?B?WEhUanBHL1BRazZxWEdZcXkvcEd1N1RYM2U1aTN4ZTFJUERoL1Y4ZkNQTkls?=
 =?utf-8?B?M0MwZlZrcEJZZTNOOExQNmlma0dxamM0eTBOVUdmUlllVG1ES2FCRW5MSmV2?=
 =?utf-8?B?enVzZU9HNUdQY2lWQ0hRNDk2Vk1qNmM5UVhCV0ZYeXppTkZGb2tFSHdIZUYx?=
 =?utf-8?B?ZnZVMjd5ZGlQVnRNRkgvaFdhL3RKcEhBbU0wN2srdkFhWVc0d20xQ2IyaUtM?=
 =?utf-8?B?MW9FdTVoak9qZ1l1aUdkZDEvdzMzUnpMcXZodGZFYTUzbE9FZnM3cDB2Tkow?=
 =?utf-8?B?MTFtdWJXNUw2c0t6YnFyYngrS3NXZWxpc2ZRbzJTeEg2MDhiYWhlMlB2UU1v?=
 =?utf-8?B?TktCUC9nL0RDY0VDejZNQXZQVS9yVDdmbmlHMktJamlZTHVES3B3T0t6RU9K?=
 =?utf-8?B?ZzFHS0w5VitWWmZYT3lBeDJCUU9kelRUa3c0NExRSm9BbHpPNjFtZU9HVlVQ?=
 =?utf-8?B?Njhtb3dFUWRvZ0NtNElEZHE4NFUwZm9KWnlhbi9XWTBZMDc3WS9tU0QzWjcv?=
 =?utf-8?B?V1FXZEZvS1ZqeW5BZzlGR2pQSWw2S3crbUI3d2R0RThRNnhhZHNhWGpZTi9Y?=
 =?utf-8?B?bkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EC7074C490D3E946A5FEA4766A14D10A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 965b6c97-2ca2-42cc-eb2e-08dd7db5af57
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2025 13:42:24.0686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3hyje/aPKZ4Y5aLDjGTgR5BOUjbk5ZXbYsQuYbM8a15kfPCWlTMO7vk3vvEqZKIIL87MU4uvMvxms6L3dW6oz7cV+szQ+DzpGm+9pbtDRNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6607
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

T24gVGh1LCAyMDI1LTA0LTE3IGF0IDE1OjExICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBNYWtlIGEgZ2VuZXJpYyBhbHBtIGVuYWJsZSBmdW5jdGlvbiBmb3Igc2luayB3aGljaCBjYW4g
YmUgdXNlZCBmb3INCj4gUFNSMi9QUi9Mb2JmLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgMjcNCj4gKysrKysrKysrKysrKysrKysr
KysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqAgfCAy
MyAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25z
KCspLCAyNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDNkNDQ1OTg4MWU3Yy4uZjRkODY5OTUzMDQ1IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtNDI5
LDYgKzQyOSwyOSBAQCB2b2lkIGludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJfQ0KPiDCoH0NCj4gwqANCj4gK3N0YXRp
YyB2b2lkIGludGVsX2FscG1fZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gKwkJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRl
KQ0KPiArew0KPiArCXU4IHZhbDsNCj4gKw0KPiArCS8qDQo+ICsJICogZURQIFBhbmVsIFJlcGxh
eSB1c2VzIGFsd2F5cyBBTFBNDQo+ICsJICogUFNSMiB1c2VzIEFMUE0gYnV0IFBTUjEgZG9lc24n
dA0KPiArCSAqLw0KPiArCWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSB8fCAoIWNydGNf
c3RhdGUtDQo+ID5oYXNfcGFuZWxfcmVwbGF5ICYmDQo+ICsJCQkJCcKgwqAgIWNydGNfc3RhdGUt
DQo+ID5oYXNfc2VsX3VwZGF0ZSAmJg0KPiArCQkJCQnCoMKgICFjcnRjX3N0YXRlLT5oYXNfbG9i
ZikpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCXZhbCA9IERQX0FMUE1fRU5BQkxFIHwgRFBfQUxQ
TV9MT0NLX0VSUk9SX0lSUV9IUERfRU5BQkxFOw0KPiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhh
c19wYW5lbF9yZXBsYXkgfHwgKGNydGNfc3RhdGUtPmhhc19sb2JmICYmDQo+ICsJCQkJCcKgwqDC
oMKgDQo+IGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoaW50ZWxfZHApKSkNCg0K
SSBrbm93IHRoaXMgaXMga2luZCBvZiBsYXRlIGNvbW1lbnQuIEknbSBzb3JyeSBmb3IgdGhhdC4g
SW5zdGVhZCBvZg0Kc3ByZWFkaW5nIHRoZXNlIHVnbHkgY2hlY2tzIG91dHNpZGUgUFNSIGNvZGUg
eW91IGNvdWxkIGFkZDoNCg0KaW50ZWxfcHNyX25lZWRzX2FscG0oc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwgY29uc3Qgc3RydWN0DQppbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSkNCg0K
aW50byBpbnRlbF9wc3IuW2NoXSBhbmQgdXNlIGl0IGhlcmUgYW5kIG90aGVyIHJlbGV2YW50IHBs
YWNlcyBpbg0KaW50ZWxfYWxwbS5jLiBFLmcgbG5sX2FscG1fY29uZmlndXJlOg0KDQppZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPCAyMCB8fCAoIWNydGNfc3RhdGUtPmhhc19zZWxfdXBkYXRlICYm
DQogICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpKQ0KCXJldHVybjsNCg0KdG8NCg0KaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjAgfHwgIWludGVsX3Bzcl9uZWVkc19hbHBtKGludGVs
X2RwLA0KICAgIGNydGNfc3RhdGUpKSkNCglyZXR1cm47DQoNCmFuZCBzbyBvbi4gV2hhdCBkbyB5
b3UgdGhpbms/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiArCQl2YWwgfD0gRFBfQUxQ
TV9NT0RFX0FVWF9MRVNTOw0KPiArDQo+ICsJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+
YXV4LCBEUF9SRUNFSVZFUl9BTFBNX0NPTkZJRywNCj4gdmFsKTsNCj4gK30NCj4gKw0KPiDCoHZv
aWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IMKgew0KPiBA
QCAtNDUyLDggKzQ3NSwxMCBAQCB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgDQo+IMKgCQlpbnRlbF9kcCA9
IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gwqANCj4gLQkJaWYgKGludGVsX2RwX2lzX2Vk
cChpbnRlbF9kcCkpDQo+ICsJCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+ICsJ
CQlpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKGludGVsX2RwLA0KPiBjcnRjX3N0YXRlKTsNCj4gwqAJ
CQlpbnRlbF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ICsJCX0NCj4g
wqAJfQ0KPiDCoH0NCj4gwqANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGluZGV4IDQzZWQxNjYwMDdlYi4uNjg5NTJmN2JkZDdjIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTc5NCwzMiArNzk0LDkg
QEAgc3RhdGljIHZvaWQgX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVs
X2RwLA0KPiDCoAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FTl9D
RkcsIHZhbCk7DQo+IMKgfQ0KPiDCoA0KPiAtc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9z
aW5rX2FscG0oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gLQkJCQnCoMKgwqDCoMKgwqAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+IC17DQo+IC0J
dTggdmFsOw0KPiAtDQo+IC0JLyoNCj4gLQkgKiBlRFAgUGFuZWwgUmVwbGF5IHVzZXMgYWx3YXlz
IEFMUE0NCj4gLQkgKiBQU1IyIHVzZXMgQUxQTSBidXQgUFNSMSBkb2Vzbid0DQo+IC0JICovDQo+
IC0JaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApIHx8ICghY3J0Y19zdGF0ZS0NCj4gPmhh
c19wYW5lbF9yZXBsYXkgJiYNCj4gLQkJCQkJwqDCoCAhY3J0Y19zdGF0ZS0NCj4gPmhhc19zZWxf
dXBkYXRlKSkNCj4gLQkJcmV0dXJuOw0KPiAtDQo+IC0JdmFsID0gRFBfQUxQTV9FTkFCTEUgfCBE
UF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFCTEU7DQo+IC0NCj4gLQlpZiAoY3J0Y19zdGF0
ZS0+aGFzX3BhbmVsX3JlcGxheSkNCj4gLQkJdmFsIHw9IERQX0FMUE1fTU9ERV9BVVhfTEVTUzsN
Cj4gLQ0KPiAtCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUkVDRUlWRVJf
QUxQTV9DT05GSUcsDQo+IHZhbCk7DQo+IC19DQo+IC0NCj4gwqBzdGF0aWMgdm9pZCBpbnRlbF9w
c3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQkJwqAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+IMKgew0KPiAtCWlu
dGVsX3Bzcl9lbmFibGVfc2lua19hbHBtKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gLQ0KPiDC
oAljcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID8NCj4gwqAJCV9wYW5lbF9yZXBsYXlfZW5h
YmxlX3NpbmsoaW50ZWxfZHAsIGNydGNfc3RhdGUpIDoNCj4gwqAJCV9wc3JfZW5hYmxlX3Npbmso
aW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KDQo=
