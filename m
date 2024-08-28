Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BA4962859
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 15:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D129C10E50E;
	Wed, 28 Aug 2024 13:14:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ekJP5lq3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC49810E50E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 13:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724850845; x=1756386845;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Bkq9RJpqrBIi5K2JlhQz2DAn9svE9pk9FAhC1Yp+e+k=;
 b=ekJP5lq3e95KcsMiDQ6Y4E7a0bHIdOUq5d0YuUVTYDzCJXaDRy3+itVC
 7iJSydFxS1jtFmC5AQRKXz6Cm/i1KK11bZP5oYSvgn8XWf2N0XTuvBS+g
 swEsl7z5le+KG0wwHkpC1Tz8VRse/cej5PZOKAQgNfJ0MffQZcQ4S120u
 rW+5Y3B/z0Y1FmacsmCfCNMrpyb0HvDCxie9t3IiMWo2oSskNwklVQTAW
 3jow9uZjr98zFyptuFMjwovYW+bRmqIuJQ9kfu3eXG16MyBEU3BmyiiQE
 vOjEJImot8JicRlrvljb2sVnqzL27osugFjJnDCHbzIJknkvGRvkjIgHk g==;
X-CSE-ConnectionGUID: 1rVgxydqRLSXH6JZeDCssg==
X-CSE-MsgGUID: BiamShhkS0+aIymOStbxyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23241672"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23241672"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 06:14:00 -0700
X-CSE-ConnectionGUID: VLqL+Sf0QpCLXPpohSwADA==
X-CSE-MsgGUID: 3kGp3DgOTDy+TKICPIOgjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="63271562"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 06:13:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 06:13:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 06:13:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 06:13:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wI4nLUMociU4x+VECHEQIpghHgy6w397UGYmdqeXou7h4dludDbPIhVCu6IHSa49luHAM0dn3pMWZCKj92L32Mit2UlKvd0hP2VYKTXi/qbqDei6vgRfJLYXeAfgIOfaOcyDDi+4fH6kh0Db6NlL5LYy7eYriQ0+Ao6m2YYR+woO5HmmpYyGgK/x4aQm7tR8aO2RbySLn9E+OjKUUltVJpYb8pv/g8+yzTXwIcGNnWoIcS7bxFXmxkucOFtdSLL+lE0vHcqe2bFobvQyM9deCXDdSqflgBYOUqey8lBOKByVfVaExzaKogj0dKioNw35bVYhAhlD3DR6eDhZNxSckA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bkq9RJpqrBIi5K2JlhQz2DAn9svE9pk9FAhC1Yp+e+k=;
 b=hQKP5LYNL+lHiIZp7QBTn10CAKSS4kCBMJ2ptDjZIUx/lsb1R1lOjJQttytyHGmZa9ved4/bYb0MwC5hkT/BqbDaYPgN+/n1kaq04O0ZZ+8sdRHNNu3FLaWVbO8f5YWAxxHFzlQ1sFdmfFzyEk4fazrOtxcT0NwhrvdQ1P2gryKoTtt0Hrz130UKS0uamRUFpcZNkPdcjdcEJOFldyONZHuASGLjuFc9/qSYCfjYFxhvHBlwsN+Flx3+gq2/SqFNjQ+QZSSk4mFtcnb2KfvHrOO6yfyoCSsHq+vWEJIDxSEemReEe0fNCjJoPDBgqrtcvdX9AjoDFNOYub/Zb2KW4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8184.namprd11.prod.outlook.com (2603:10b6:8:160::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Wed, 28 Aug
 2024 13:13:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 13:13:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <877cc1yr6u.fsf@intel.com>
References: <20240827140353.3022432-1-dnyaneshwar.bhadane@intel.com>
 <877cc1yr6u.fsf@intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Hardcode path to MTL DMC v2.23
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 28 Aug 2024 10:13:50 -0300
Message-ID: <172485083067.10303.4675411534105385325@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0110.namprd04.prod.outlook.com
 (2603:10b6:303:83::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8184:EE_
X-MS-Office365-Filtering-Correlation-Id: e93e76d5-e327-4450-e95e-08dcc76344bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0QzR2lxc3pwZnJXbTVzNlg4ajVrMndabFJEdXk2MHJ3UWpFOFlNdE10SlVz?=
 =?utf-8?B?dzErWDVHVDV5bVZybGhJZDdIQzZacldqdER4cWVob1laQWhONkc3K0xEMVJq?=
 =?utf-8?B?c1dwT01Ta0tCQTd0RlJyeHlrVmEzYnRVZDN4cW9EQkhjRXVLcWJiSDJEd09n?=
 =?utf-8?B?ZTJwOUZHZDdLNVpTamF0Q0w4TzBDT3VoaHdXc1NhRTVCbmJJWjNxdXF2Tnl5?=
 =?utf-8?B?VkcvSExqTHBLRzltb0xyS3BVZTluWExKaW9VTXAvTW1tUE96eFdYWS9zVEEx?=
 =?utf-8?B?c0ZwOEgzNmpydWc1WXNlaG9EeTVGVVR6UDIxOFRCN09WeFJ0b2d0dkpBM0pH?=
 =?utf-8?B?RFJzeHNtMjJFYUtZV3laTlJCVHBDck5ManNRbU9TOWRqWGJUamxYQ0UxTmJv?=
 =?utf-8?B?WTNRSndjenZXNkJLVk1qT2FQRG5lNFVqR0JoQVVyeWtWbkp4R1JBbS9jS0dN?=
 =?utf-8?B?R1NpTVc1ZmFnMHFWVm5uTGZQVFZCaWU5bDVMMCtNRFl4czYrNDFGUk5sUktp?=
 =?utf-8?B?aE5EcDMyNXdES3IrNENYTzk1Q3NROTZERlgzSSt5MWMwaXFLTWZqQVR5Z3Bz?=
 =?utf-8?B?T2NxWXhNcGZCczU5c0ZmSFBHYzhJQWlJS05kVFhKL0NZQ1h0VldGbkRCdytF?=
 =?utf-8?B?c3lSM2lTQm1RTmFWdy9McjlrR2lOTUlBeStQMXg2cTBaNExKQzJnRVZIRzRl?=
 =?utf-8?B?aGt4aGlqUnFEenJ0RnJuL1BENFNyTnNWSmgxK1g0b3ppanBGWHd0M3F2S3lv?=
 =?utf-8?B?Qkg1QWRqSjBOWmhJY0lBcHpHRVdIMEo3bnl1U3NkNXpSd2VBSm5nWWt2R0xi?=
 =?utf-8?B?WTN4RmMwS2JnakRxTWlBM2RjTUlIZlB1MlJoSE1vMCthQkNHOTVmL1JNdEE3?=
 =?utf-8?B?UmJ6TkIvTXVYb0ZkcmQ3aEEwYWFuT1JIeG1jaTQ1cytDdVVsL2kyUWRNVzZq?=
 =?utf-8?B?dHRJZUU0WG9yejVyaG1kbnNlT1paWHQyL0FIS3lPb0RMeE9zdGVSb0hSdUx0?=
 =?utf-8?B?MTlMbkJnTldvZ1JGSlliMlpQVmk5TnBBR3hnWXFsK0JkbWUwckZodUJpWVA2?=
 =?utf-8?B?R09JaDdBVzlqVThmZmc2ZVd2cEQ1TndYd3c4c1RlQXpJS2lrNzhib2t5ZENW?=
 =?utf-8?B?ZUs5V1R3cEV0OGllVVhFRk9BRDNxN1l3OWNkZFRsL2phekhoMUdSTElGTStK?=
 =?utf-8?B?UHVqY3pkMW9LSFFMRlFPZ3pnNkRka3ZqRnBDZ0I3VnlwellOZkJwcEEwRW4y?=
 =?utf-8?B?WG52N1NUY1dLWTBTTndYZThuK2Jsc0RzOGxFU2FQZlhtUXNMQkoxZ3poYnNj?=
 =?utf-8?B?K3FBNzNLN2NoeTFnYkxqWEd2cU1nb0VCSWQ4cTdoWmRkUUcwdkhvc201Vzla?=
 =?utf-8?B?TEJTeGJ5OTJCRFNjbStKaFcvYmhUOFVNRXdsQWhhNndkRm1jd0ExVVZnUjJS?=
 =?utf-8?B?ZkVmdjRIVzkrT2Nic0MycFNNVlJZdHBZMVoyMitDQ1VueXdDeTVKR0k5cGh2?=
 =?utf-8?B?VXZHUTFYVWRHLzFQKzZ4SHlFSDJPZUczRUpzRVhvTWl2QU1qMU13N1htcGlq?=
 =?utf-8?B?RGNtNVdoQmU1VDZ2WDdCYXhkM1VvQk5rTXdiZFlkT1hyZzJwSGVHUllmTmtI?=
 =?utf-8?B?QTQwd0VEaThrQyszUU9SYXgwczJBd3NQYWhCMXB0b04xUVRxQTFYUFVBNklL?=
 =?utf-8?B?dGo2WFdkRDk3UFJMWGVuYkNQQ3dEMSt0YnB2SnoxSEgxaFZqNDh4UjF1U2Fa?=
 =?utf-8?B?NS9NQ0ZzSmRPV2hqWUk0Nyt2NUdDSkdNS1JZbWVnNHlPZXhUb1FCbUUrbURV?=
 =?utf-8?B?cENsTnlFY0pDR3JvN2UxMzJZTjdwa2d3K0ZmUW55VFZ3TXlhbGZGOUQ5Rk5I?=
 =?utf-8?B?NGJqQ0hNR3JDSSs0T2FHeUd0Vzh0Umg3RmlVK3NQZjlTMXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXVDNmY4aTRZY2lpVkJKT0RBdXFHQ2dYZm0xTkViaFRMSElQaFU1ZldUOFVR?=
 =?utf-8?B?S3RDUWo0M1cwVmJka3A0elRvT2wrSW9YenlPRHBaTmkwNi9TK054bjVWMzlX?=
 =?utf-8?B?bys3bEtxZUx4RFhIVVJXdnlZelluQTdhQTJPWmlMLzkwcEg3bjR1K2JaTFQ3?=
 =?utf-8?B?alI3TmVYMXJaL0RYTC9tSGNtNVJsTVJUUVlZKzZVd0s3VHRyLzRLakFkbm1h?=
 =?utf-8?B?K0VxQXBncm5FYzI5em5FeHdlTFhGTDE2bHhlN3N0TTEvSTY0WnEvUGVXYWdw?=
 =?utf-8?B?djRRQzMyWlNCZDVQWjhGQjh3ZGdBVW9MdlluMjNVOEFqOWNCVHR4MTJHUEVP?=
 =?utf-8?B?QTZrN2lYRzBRa3cxRElkazV5M25aajZCc3NmckJhOFYxNDhrTEluWmVYbm1C?=
 =?utf-8?B?NmpLMFNkWnRXNHZaSVM5NmJiMHpYWWZLbjNOTDdGMDQ4bUhVNlRFT2pBMWUz?=
 =?utf-8?B?NDcxUTI3WW1UM2lXeG95b3pFazF2UzZ3dmR1UTZPcXI3eFlFUzV4dldreWY2?=
 =?utf-8?B?S0lBdk9icjNpT0pTeDZuUTBEc3dlRzQzRlNwR05USncwTUVrakZXWUtHbGpr?=
 =?utf-8?B?OXhoRGdFcEFHS3VCUkNST0o4d1l1OUljMTl3Vkhid2xwR3IrT1dEZjh5VmVP?=
 =?utf-8?B?dWJhcHp4K2FaUmZiem1keE1NbHV0RjdIUjk3WE9RZXhZekQzb0Z6bWJrd1VL?=
 =?utf-8?B?MUgxZm5nbmZKTVJBdG1QQU43QVdVdDhTWnJGMCtaaFg5aTB1WWJmM0dmUSs2?=
 =?utf-8?B?Y2g4RXJXU2J2cDVvTkRMQWoyNFB6MElxbTFNSzRUS3NLOHBQdFpncWRkVmFh?=
 =?utf-8?B?NGJ3dHh5WW5CaE5HZ3VPcFBZSFFQdHFrV3Z1OVBpeXJpT25KeGh0VlRGVVd4?=
 =?utf-8?B?R0Q4NDZjR3laZHRRTk9jWHZicjZROWRRdlVaajdZcmZ2dUxmMHZ0Y1pabFhE?=
 =?utf-8?B?QkY3aDR3VHovNzNJYXh3cFQ1N0ZyY2VINmhsVis3ZkkrMFFpNjRVeFkxN2ZB?=
 =?utf-8?B?UUY4bVNxdTBGQTQrbXhMTExNU1J3TTR6Y2RaU3VPZGx3RXBiMmRITVZRSHBj?=
 =?utf-8?B?WDJMdUpPN0ZMS1J0ZjkxVmMvWDk5cWw2SzRlSm03TSs3WmU3RWdabkNCWGx5?=
 =?utf-8?B?UlI4Y21sSlp2L3NQeVJZNnlESHhVaXM2V1ZzU2kyRllZTHNsQ0RHTnFlaDdq?=
 =?utf-8?B?VUFReWw0NFNuZzFxSnFoaDVMM2xPbmRrMzM0Z0V1Z2w0SXdLZ2FTZUxacTRT?=
 =?utf-8?B?QVBsekpsSWlpWGJsUndFTnV5L3FxdjF4N1N5dG43aXplRHdvZFlFVjZKWVpu?=
 =?utf-8?B?MHJnTi9JQTZWS25GN1V1NlNKZXYrVitQb2RtdW8xdXlGTE1GYUNCdll3Rk9N?=
 =?utf-8?B?Snlta2IrQUpra1drM1NKQk1FUGxTZWZMeWFUcXVYemEzYnNOQXhwTHhEMDI1?=
 =?utf-8?B?b0ZOYll3L3lNY1JQUzF6a0hZSlBaQzZiTjE2STNGREpPWkQreHk2QlhiRVJP?=
 =?utf-8?B?ZGlKSzR3NkVWS05idTZyWFZLWUk1YXdZRzNYMXo4akliZkdWVlo5U1FYK0RX?=
 =?utf-8?B?dXlpZDlvVnFtaFVaa2I5SHlWdVREQ3pPUGo0RG9ONmpxMWVMbGhlbEdOMkhy?=
 =?utf-8?B?QmYyRS9zUDk1dG5TL1hNVEhQaGFrdFp2d3RqYWNsNUVGanNnblNjbFNPdHFO?=
 =?utf-8?B?Wm9tbDFxSmc3UVZiZ1VtSXBEQXB0bG1DYm0wblZPT3RIZk0zTGVrRk5JQUlP?=
 =?utf-8?B?VEtCTkw2WmVjRjBwTHZBM08zZkN1cFVMckRtUTdHWjZJVjVBMUtjRHptWUJB?=
 =?utf-8?B?amZwUm1rN2oweG5aaW5qUEdjTlRmTDRZcE1ZYUQ0ZmpjRnRWRXhIMGFMcUVS?=
 =?utf-8?B?bTN2Z1ZxRlNaeTRGai9uNFVheUptTHJHYk5vL1ZYb2lQRm1XRkpneDkrK3hx?=
 =?utf-8?B?VFZUODRqbnQ5U2NQeDE2N0Y1eXFNTWpGNWxvNUlWbmtjZ0dMZkpvb3U2aEo5?=
 =?utf-8?B?TWZjMEhFV1FZQ25mbVV3UExVUWhLRHhBR3hRKytQckg1Tkdlb3prWlczbmx1?=
 =?utf-8?B?VTNvUU4xVFZ0R1FoVDU5S0Zpbjk0Znpqb0lvKzhFZ3AvT0NUU3VrRFFBanlV?=
 =?utf-8?B?STJ3MEhjM0s5ZW8vSDZEK1k0NWVTZGhqVk9UYXh0SWhTOG5VQlpMMGhsQTEv?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e93e76d5-e327-4450-e95e-08dcc76344bd
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 13:13:54.9791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2wWUnDkLJhvhWGF3U1bj7BVXuMImbyp5Fq3ZWH/FmY2YzP7aodzrBrjjOCFLfYouo0olEGtjdD+Nre9pLOqI1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8184
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

Quoting Jani Nikula (2024-08-28 05:42:01-03:00)
>On Tue, 27 Aug 2024, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> w=
rote:
>> NOT TO BE REVIEWED/MERGED
>> Hardcode path to DMC firmware for CI purposes only.
>
>This is why we have trybot, no?

This patch is not an "experimentation" type of thing, it is part of our
regular process of releasing DMC blobs: we make the firmware available
publicly and then send a patch like this one to test it using the
regular full CI cycle before sending an official pull request to
linux-firmware.

As such, I believe it should be treated as a "regular patch" from the CI
perspective, even though it is not intended to be merged.

(By the way, "[CI]" as prefix for the subject would be suitable here).

--
Gustavo Sousa
