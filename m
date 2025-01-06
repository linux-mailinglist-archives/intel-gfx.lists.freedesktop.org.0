Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0848A02E79
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 17:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E4F10E2D7;
	Mon,  6 Jan 2025 16:59:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EqG7zAAl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826CD10E2D0;
 Mon,  6 Jan 2025 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736182763; x=1767718763;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vd3rqJnPM5zP/dhHZXmQVZOjIwV6/TvDllVtywb1bPc=;
 b=EqG7zAAlwGRbKHpEho9WZO6vMZGA9TnQIEd3qjwkBL8z6yRVSWFJnUfh
 j8rj6YhkP9Q2KyETkdeh07Dce1QItkXsODwKBYC2yPSUk3mzPlkYorBqD
 uwYL9y5rovSG5ZvwktGVM0ZJBCxcKCPGqjB2AKKL6tq8frYAfVv9wOOuH
 363IV5xe8XsviJCnbN3Aa1L5rnN0rVSsnWQtEPECKVHUz7U8BgE9m1kkw
 bAJtEo8eSqo4ZDrx9PGd/8lAr1MZbfYRLu0aIXFJC0y77lR058Tzr28UE
 PmLDN5QqekcogOD2yR7B6Slz3ZxL4p7Zl/P0czEU6aa7amtufsJDE8+iJ w==;
X-CSE-ConnectionGUID: SEEUD4mkTuC/MVQYzD5zvw==
X-CSE-MsgGUID: 6MDTm/v4SFqxME40m8dGGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="39157505"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="39157505"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 08:59:22 -0800
X-CSE-ConnectionGUID: FFDX6DnAQP2v5NdFDbS57g==
X-CSE-MsgGUID: bDG1Q4rRRMCUNJp0U5S5Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="102580501"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jan 2025 08:59:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 6 Jan 2025 08:59:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 6 Jan 2025 08:59:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 6 Jan 2025 08:59:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=piBHpb3qK95QW5fBtlJycFqQSE9OOgX62spkJM4jJ7/+Vx1eBW1okoaFE9UdoZ1kYM+vQ6pGa6k/rq/r/jj9HCDlb37IK9j2+je/yW8KayNUHbxIq3FbdMy+GBPqDD1wMYRvoZyzqdDIAa2UP+FmuA2jjRuXLWPv99NT/Lg1a6SslTJro0DzErLxGzhiK5/Y+K4sgW8QGIhVZiUtLqABt5qwVMIna63cqK1jCM8x2+ZPB86Teobo49q1QTkdpaNT6w6+kiBjJeJJMHNI30E8sGFM0HKbXzzPF0pBizdhlkg7gSAA5qKQuCOxD0Dy6UJl9rCANhZjnHEe4h6tFQFjyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vd3rqJnPM5zP/dhHZXmQVZOjIwV6/TvDllVtywb1bPc=;
 b=meX6aTPMjsY+OaP4mhmon614YigdQawfOnCBrFiFYqNlA2yyX/lMXB0bD0hxZsngIE8Qb/+SD+KCLcYMbDMbCf05Jp5NyrKjal/Fvs5TlkJdZO+gWrpHaUYh0pirKnxrmTqvaDCgm3f1LLRYRui2EuLQDpc8/FF9ptvhoUY44mTep53yd85GfXmdmfX71BXD6Og+807nw3p8vSK0jfVSqDwDYyolpyMAqHwErAuz/KElhrJL9BdCbtPOZeKRQH51HlxCHZHUSpIuK3nesFLr3Y+F9fGDVhWU/dmFLfRVD2OqEciyV8cX0zlwT5vLLOrbjdsA5AWqmb2natIDTjM6Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Mon, 6 Jan
 2025 16:59:02 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%3]) with mapi id 15.20.8314.015; Mon, 6 Jan 2025
 16:59:01 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC v2 1/6] drm/i915/scaler: Add and compute scaling factors
Thread-Topic: [RFC v2 1/6] drm/i915/scaler: Add and compute scaling factors
Thread-Index: AQHbUK46MOFxs1rmlEOhztBF6u3d97LziBCAgBaOQrA=
Date: Mon, 6 Jan 2025 16:59:01 +0000
Message-ID: <IA1PR11MB63483C0B551492406AEE5A58B2102@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-2-mitulkumar.ajitkumar.golani@intel.com>
 <3843d303-1ced-466f-96b8-eaae33d92ad7@intel.com>
In-Reply-To: <3843d303-1ced-466f-96b8-eaae33d92ad7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW3PR11MB4539:EE_
x-ms-office365-filtering-correlation-id: 91321676-a457-4fdc-53d4-08dd2e736b58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?QU9vWWMvbTdRY3RUMFF3aWtKQjFERTVBSEo0dDVpY2xodEJFdkxzK2pjMFJ3?=
 =?utf-8?B?S0JkL3hwNHovZlRMMTk5VjFMeWM1eHViM2pJLzZkbzhGUk1Mc2Rwby9rUzVL?=
 =?utf-8?B?dWR5dlNLOHB3Q1RScGM1dFlFUDhHL3hYN1QvMGFKMmlxYTlmQkdmQ0x5SFZs?=
 =?utf-8?B?YWtEbjFnQW5BUEFUaWl4YzNtNkNZbHByalB4S0N1eFErZFRrcE1XOXI3cFQ5?=
 =?utf-8?B?YjByeTNsVTJzSE05OXZ5MHZocWlBMGRyUCtlMlk2WEFpUmFOcm1IZ1B2RmZy?=
 =?utf-8?B?UzBNVjNLV0hiSk5lbVdPYktZZlRiYUt1bjFrdGVFYWxJU2xkNzhST09hUFFk?=
 =?utf-8?B?Y2Z1bEV4ajZWanRwM2x6OWluOGtVZzBjeDhFU3djWnNHaVJXMEM1UFZ3d0g0?=
 =?utf-8?B?b1p5VEFtczNzN2tkZ2tud01aV2lFQ3ZmYm0vRTdHTUIrZDAwVTVuL1JPLzhX?=
 =?utf-8?B?UlVpNjArSHlZM3daTjlPdUFMbU5LczRvclFwR3pnUEtqdkRheUtmVVdlQnlV?=
 =?utf-8?B?QUpjNHNMdkRXVFNuaXlBVC93VnBxUjRRSnJzdzhQa3BaWTBkSURHenlXZzhr?=
 =?utf-8?B?SmFSMFRVcDljZUg0a0xjKzBmMjJDUDVabDR2ZGl0dGNQTWJlcFJ2dTBENGxY?=
 =?utf-8?B?N1ByMU9yZXZ3QU8vM1g3aktGMFc2SkJMMzFSM2R0c0pnWmZPTnpsWW9UcFVU?=
 =?utf-8?B?czB0MVFZNGUzemZCMjNQejc0T05XZ2FKU3ZBK1J6VUsyR3k5OXc4V0NJci9p?=
 =?utf-8?B?S0xWRU9WdW9pMWduRVF2VHJDdDFheDZZK0RrK1A1b3pYZ2V4MXJZYjY0NEY5?=
 =?utf-8?B?RUxkQmQzdEdVdE03R3NOOENwV0g5UTBRRE1zUnBpbS8wOFdFbExidHJKc0dh?=
 =?utf-8?B?eERRdjZMUDdWeWd4eDVxdjdjVnRlMnNISEtUM1VLTUo0eFZJMXRwT3lCMVkz?=
 =?utf-8?B?K2dWYTduM0tXSG1KcHhMQVg1N0FUY243MFpJcDRxT2pJOEN4YW5rZGRhVmVy?=
 =?utf-8?B?ZjgwaEt3K1VNM0pQdHY0dThXVTJ1bGdlNTB3Vkl4ZUJYZXdSZzFoNDBRbmg4?=
 =?utf-8?B?SWM2d0lGWHI0enRpRTBiNi84Wm5SUUFFa1ZDWmU0bDk1cER3U21Zc2JxcFhZ?=
 =?utf-8?B?REpjbXEvNVh6N2xFeVh3c2hHb3NVVUk4YXRXVTlEQTBmT1NwdjRaQ0Iyb1pQ?=
 =?utf-8?B?ZElheUYyTDY4K25WVVBBdEdiSTQrRDRMYitvVDc1WXVzd0V3MnVxUUhDQVVj?=
 =?utf-8?B?ak0wV0ZWbFQxaWVYbzA3c0pjUzZoWkRON2daUWZEcXJtRU01M1ZZVjNsVkVL?=
 =?utf-8?B?czFuUUdpRm9TbG9XYzBIQmx4Z1ZDMXFTem1tZDJBNkt5RzQzU1hDVjc0dENR?=
 =?utf-8?B?R3FBU1ppNSs0WS91RSszUmdFblJHd3FTWlNyMVpvSHRwN3B2aTM4TkxRTFpY?=
 =?utf-8?B?Q2xuQ2pKZTJobUdGc1loOXlra2o1SzJSOTdOYnhoejJiazBPUzNycG4zbkpE?=
 =?utf-8?B?Mm9hTWkzS0ptZytkQjdJNzNiTXhZcldBNlZxQ05USndxVlF6RktCeHpOWFNG?=
 =?utf-8?B?ZkdIb0ZwNkNsdy8yc2hSS0lCb25PSzVhNFBUTFBZdWxxam1iVm1ocGE4N0l3?=
 =?utf-8?B?SlZ3UmpURmFncU42cktveUViVDlDU1REY3VySGdGalNFYzJYTW96SDEyMUJq?=
 =?utf-8?B?UHJkcVNyakJOWGdFdDdsVmpYWmxmSk5ERVJaUzE1cm5PMHIyTHFxbjNSWjl3?=
 =?utf-8?B?RU0zQW4zM2xXVXR6VzVPa1FzNkFOdStOeWZnUmVHcmpaRkhoMm5XZk5IMUcw?=
 =?utf-8?B?M0VYZUZ3cDNENXJQM3pTQzJKanowdWd2YzVHeVE2N2NwWm12b2RHeUZ4WE5i?=
 =?utf-8?B?QnAxVjRvaVRxU21icmx2aTlVaWdha293a2VKWDNqZ3lLSlA3ejBDbnY0UEcv?=
 =?utf-8?Q?sw8SGUMM18GcZTWAaBQIK8McQYErNwD8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXlYMU5QTFFwZit4VkpzOTZhMnJzb05EZGtrR0dHMGVESUMxVk5rcFNMQ2I3?=
 =?utf-8?B?VC95enkzcUxKMEwzaVRBeFJicHF4bGpIQzZUUFlKVVFmelU4R1UwRjZGbVB2?=
 =?utf-8?B?UmRrUHlLc1Y0VlhPZ0RSVGRJR2VrY0UyaEordWoxZmI3MGZmanJaQWRscTNQ?=
 =?utf-8?B?NVRNTjE1V3QxQy9RcWJVSUlwbzRldU5sWHFQbVdDWXpRbkdDRGFrdW0rRDZW?=
 =?utf-8?B?aGtNUEEzbS9STVZHVGgxcGdjNGw0ZSt6OVNxdWxmSUU5MkpQRU1HeE1mQkRL?=
 =?utf-8?B?MjhkWFlaOW0rVE5aTEtKdzA1dExEZGxJRU9wNGxJVDdMMVVIUHJHUkJiajU3?=
 =?utf-8?B?dE1VdC8zbTBmSmoxQS9LVzdJNVB1SDlzRXJCWHl1LzE3L0RTb1VCakFqQjVu?=
 =?utf-8?B?SERXYXBiL0JGbVo3dk9ZbWZNbE9DaGY4RmcxRlNsSmI1SGhYNWdYa2ZBSnBP?=
 =?utf-8?B?RURsYUpweVlYU1lZejlqR1pjK3FVdFdNcjhHOG5kZCtmOXB5Tkt1K3ZHWlkx?=
 =?utf-8?B?MkpoY2pHa2VzYmdCZVgxSk1CMTlBWFZwckZRc1dYQ1NFc1FQS3J5VllHRE1I?=
 =?utf-8?B?UUtPL0VqWnczaEJQdEUyODJGUmRSM2FTWEk5MkFRVVpJSDF6Q3Z6UzFvc2tI?=
 =?utf-8?B?b0VoaUlDdTNJM1ZlU3ZwMlU5SHJvOXc5a0hScGMvM2tGWXN1VWJBYWtMdHph?=
 =?utf-8?B?VXZ2d256eVVXamcxdE92TVU2MkRrdmJlV2hFcmN2MDdCN3FTMG51RmJxaDRa?=
 =?utf-8?B?Q1IxdEZSTUswZzlhWlZQZVJvUUpSaitWZHhnMmVQM29OamRqemI5VkZKUUVt?=
 =?utf-8?B?cFdPcE5DdGJKeG9qa2wyemlleHlOOEx0UG5NZGlWMnlnbUJPclRwT0NYZ3Az?=
 =?utf-8?B?SHkxL0hUM01MOTdadmkwZ3BHUUFjaE5lQ3Y0eUVFbURmUTJMVk1TYkhmUVlk?=
 =?utf-8?B?UTFDUGJuN1o4ZEdxTEg0Y1JMVGpEZWx2VUJYdHJNa2ZDcmJzNWpaSnZ3ckJW?=
 =?utf-8?B?OXl2Z3hoNzdtanVLNG9kaWwyeVByY0hSaG1lTGFSb045VFhZSm12bGZ4VjlU?=
 =?utf-8?B?R003WmRseWFaNGtwT2VIWkZPVnUrd24razYvVXIxNFlxcHR2QkdoMHNDOER4?=
 =?utf-8?B?N01mazdUMmN4WW43RHV1bWZjd0tiYkNYSG80VXZtTUJmYXgzL1JHTTRiV0VU?=
 =?utf-8?B?a2E5WVBrREFlRXdEbHAzRjN1S2NHMUJVbzNoMVhyTVZGdDlVaWpzZmpiOWh4?=
 =?utf-8?B?bUxHQzYxcW93Z05nNWkrV2pEQ2tSdlczVG1XVmRvTllFU0o3dFBBRXRGR3Z4?=
 =?utf-8?B?dGczRWZFTmxYTnpFOWkvK3NOUDFMTE9aSHFJUTRxQ1dHeHB6YW8xaHMraUlD?=
 =?utf-8?B?R1R1VGFxdk1pbkg5UUwrYWE1MXQ2bkhuZS8yeHZ4cFpxWVFFZ0szTjZYT0pv?=
 =?utf-8?B?ZjJlaXRTb28rUHhjZm9NMFdHa213VGhtODVKbmtKTTQ3cGpyMGFJY3NhNXM0?=
 =?utf-8?B?NjZBcEQzbms1S0hXdlVuek1mWlYyM2hpMUJhL0ZxV3hnRTU5eGliRWpvSFgx?=
 =?utf-8?B?OGdBem1INmZHOHlVTVZSai9IMXB5QUppNXdtc081VkoycWJQVEFJOXgxVWMv?=
 =?utf-8?B?ZDhxa2RzTnlKRWJLeHhia2g4MkZBb3hTNW4vYzdYazhzeHc1TWdHckhhakdJ?=
 =?utf-8?B?clVhTVMyMHNEeTRjKy9SQ1gxZEd1WEFPbVc3K1V0Y3RycWp2aEcza0hsOU9O?=
 =?utf-8?B?Y0dPU2VlLzNyRldyQnUzVlR6Sis3bWxNUzI5bzg2VW9Bbkkxa1hHbnVhaG9F?=
 =?utf-8?B?N1k3TG5nMnU2a1hkNlVSYk05eGRCYWVmcHczR3JqdzRMVFhXTW12VEpBOGl3?=
 =?utf-8?B?cnRtYzRYd2IzdWhlb3U5NldiRXhuYTB6NnNnWFJBUHRIeEdrejNOQnIxdks5?=
 =?utf-8?B?dldKU3pHbktaKytwSjV2bDBSTml4U05ZU25JeHFaVEZWcFNXanZNN2dPS1VU?=
 =?utf-8?B?ODJmOXlVK3ViSkF5N1M1cXZBQUtsZ3lMdlUvUUx1UC8wUW03RE5lUFVzZ2d4?=
 =?utf-8?B?WkdqSkpTYkYreHpCNitNaUpYSGhnQjNIbFp5UER5VHhHTEgycXhwYm1iUWlx?=
 =?utf-8?B?aytSNGxkV1djcnJMUURRMnpXRHBXb0JhM2JWZ1k0K3FuaWJSL0Q2bEpMUWhW?=
 =?utf-8?Q?6FFLtGHmhYOPS+/E1LGSE5U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91321676-a457-4fdc-53d4-08dd2e736b58
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2025 16:59:01.2965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GjxkMu6yZt+tDv4b7k3VisWl5TbZPI980KxIH39kmyxHxSpRkgTjZA5lVpcYqEwkpCym+rQznrMGuBVSzWfBSyyo8mq0LcEZgwzdV8J4i8kl3C6fGkp7kJkbJJ7+0zHf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAyMyBEZWNlbWJlciAyMDI0
IDEzOjU5DQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUkZD
IHYyIDEvNl0gZHJtL2k5MTUvc2NhbGVyOiBBZGQgYW5kIGNvbXB1dGUgc2NhbGluZyBmYWN0b3Jz
DQo+IA0KPiANCj4gT24gMTIvMTcvMjAyNCAxMTozNyBQTSwgTWl0dWwgR29sYW5pIHdyb3RlOg0K
PiA+IEFkZCBzY2FsaW5nIGZhY3RvcnMgdG8gc2NhbGVyX3N0YXRlIGZvciBhIHBlcnRpY3VsYXIg
c2NhbGVyIHVzZXIsIHVzZQ0KPiA+IGl0IGxhdGVyIHRvIGNvbXB1dGUgc2NhbGVyIHByZWZpbGwg
bGF0ZW5jeS4gQWxzbyB0byBleHRlbmQgdGhpcyB3aGVuDQo+ID4gZWl0aGVyIHBpcGUgb3IgcGxh
bmUgc2NhbGVyIGlzIGluIHVzZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdvbGFu
aSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMiAr
Kw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmMgICAgICAg
ICAgfCAzICsrKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gPiBpbmRleCBiNzE0MTZmZjViN2YuLjI4YjI4NjFkZjQyYiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+ID4gQEAgLTcxMCw2ICs3MTAsOCBAQCBzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9w
bGFuZV9jb25maWcgew0KPiA+ICAgc3RydWN0IGludGVsX3NjYWxlciB7DQo+ID4gICAJdTMyIG1v
ZGU7DQo+ID4gICAJYm9vbCBpbl91c2U7DQo+ID4gKwlpbnQgaHNjYWxlOw0KPiA+ICsJaW50IHZz
Y2FsZTsNCj4gDQo+IFByb2JhYmx5IHNob3VsZCBmaWxsIHRoZXNlIGluIHNrbF9zY2FsZXJfZ2V0
X2NvbmZpZygpIGFuZCBhZGQgaW4NCj4gaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZSgpIHRvIGNv
bXBhcmUuDQo+IA0KPiANCj4gUmVnYXJkcywNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IEFua2l0
LA0KDQpJdCBzZWVtcywgd2UgZG8gcmVhZG91dCBvbmx5IGZvciBwaXBlIGR1cmluZyBza2xfc2Nh
bGVyX2dldF9jb25maWcsIHdoZXJlIGFzIHdlIGFyZSBjb21wdXRpbmcgaHNjYWxlIGFuZCB2c2Nh
bGUgZm9yIHBsYW5lIGFzIHdlbGwuIFdoaWxlIHJlYWRvdXQgaXQgbWF5IGNyZWF0ZSBtaXNtYXRj
aC4gDQoNCldhbnRlZCB0byBicmluZyBmb3IgbW9yZSBkaXNjdXNzaW9uLCBJIGhhdmUgYWRkcmVz
c2VkIGNvbW1lbnRzIG9uIHJlc3Qgb3RoZXIgcGF0Y2hlcy4gDQoNCkFnYWluIFRoYW5rcy4NCj4g
DQo+IEFua2l0DQo+IA0KPiANCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0cnVjdCBpbnRlbF9jcnRj
X3NjYWxlcl9zdGF0ZSB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3NjYWxlci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
c2NhbGVyLmMNCj4gPiBpbmRleCAxMWY3MzY1OWMxYjYuLmUwMGM2ODMwZWY2NSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jDQo+ID4gQEAgLTQy
Myw2ICs0MjMsOSBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXIoc3RydWN0
DQo+IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdA0KPiA+DQo+ID4gICAJCQly
ZXR1cm4gLUVJTlZBTDsNCj4gPiAgIAkJfQ0KPiA+ICsNCj4gPiArCQlzY2FsZXJfc3RhdGUtPnNj
YWxlcnNbKnNjYWxlcl9pZF0uaHNjYWxlID0gaHNjYWxlOw0KPiA+ICsJCXNjYWxlcl9zdGF0ZS0+
c2NhbGVyc1sqc2NhbGVyX2lkXS52c2NhbGUgPSB2c2NhbGU7DQo+ID4gICAJfQ0KPiA+DQo+ID4g
ICAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiQXR0YWNoZWQgc2NhbGVyIGlkICV1LiV1IHRv
ICVzOiVkXG4iLA0K
