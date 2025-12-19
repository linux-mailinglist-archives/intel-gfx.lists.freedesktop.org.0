Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A001CD0F2F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 17:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37DF10F03B;
	Fri, 19 Dec 2025 16:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OHx2EfYF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FDD10F03B;
 Fri, 19 Dec 2025 16:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766162642; x=1797698642;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=0YG8XpXRV+V140ZMM+FrLFQnDMLJTog3sGZ9DOx62c4=;
 b=OHx2EfYF/Owv+kj6/56cKR37uBtODgKeFG1NEc8p0m9vLZMePnx1vwbK
 vKScrrOXnN4Xszbg/fqLc6DEgoyy+2IopO1/YJppT5mMlpLhBZO2XGFkp
 lTWEvLhDn9ORdhIhrQ5XwIFQ/XO6dyYriCXkvJrmYneL75tZn3CZmK8Qp
 0g1qbP7HkjpLx6cVULmmjEEh2Zi33PVnHVuCOqCxrh7dd4JyjEqD2KRR0
 bQdNvb+lR13On2Asx3vC0nO+1RvIUy/9ZomKVBo0Eie38ki6EFFWOb+Jl
 JD7RB0KXctLIAZevnZi+hAyI0cMlxNE8MP92AMrNaXqJEQoGo8LClpPRU w==;
X-CSE-ConnectionGUID: x1ClzUMMQ1KuyRec1UWTAw==
X-CSE-MsgGUID: 9nVpEFucQS21ewQR/qknIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="70695218"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="70695218"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 08:44:02 -0800
X-CSE-ConnectionGUID: b/OYdXljSnqxzdl+czrO4Q==
X-CSE-MsgGUID: 4BbDTbifSvOdmXoXSOMXpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="198803765"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 08:44:02 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 08:44:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 08:44:01 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 08:44:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QAhaopG2K6Q1BL9U/AEz2ytyDA8eq2UhV1MvqtoUBU4CyccD/AWlb3O1ORD8svvouMqugMaqSr6vSUTJSYDGD/IfsaImNIMKvqXd7C6BCnrCpTxg+xqb7Sih18K8l1JPVN7Na7SxBmqlrR4c3b9wORFTpDnaa/WagwVGXGjLxyUgrlJZSAkFg6JsvCE9+brywMTg6TZ9rzNRRE37pYBUWc6JbDNc7+1DBleZE31tw1Ro+/PVvlcbxWrtRb8COQQUC5hV7bXep0JPGJ590HyMHXzGSBAPYcMoWkvXcusqsfLs4KjtKGhOORyrtYRZahawk3hY4mwtS8fJ/Qr4MqMcHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MV4vPgayrscBCVSkMJ84biVUkYhNG+kSsBO5Yg1UMcI=;
 b=r+FLIo6VhKEKpf9A8Gpe1U5EklAHuUUTDwbDI4cKA+HPmqBUr83YUDh/O5HiL9MxtMwu3wx8BCe8L7iBZ4nQ1Up6nAZBrvachMvNUH2fCZErUa0Y7bUv0WuG7WZc4vVdphM4K/cmLjyTGsyKTuTUv6cqd3HV+j+T1MgOmmMR+hZcvgaDn8eScAhN6z6vSZNPT/insHLOU16GInAP+19esBxRrREwAMb8agOV/7WSRzxPcfHCOIKJHWCvGmof0+FGAr53ox0Ss1fs9hBmi0ehE0vG9wpFoETi9DwQ07lH9D6d0d0TRsLeDdK79QiRUcUk5+oud4KSry+Qo0lzbKe87Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM3PPFC89313B1C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f4b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 16:44:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9434.009; Fri, 19 Dec 2025
 16:43:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176594624644.95861.8140577459556936225@a3b018990fe9>
References: <20251216-wa_14026084006-c10-hdmi-toggle-powerdown-v1-0-08677b03e2f1@intel.com>
 <176594624644.95861.8140577459556936225@a3b018990fe9>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for Toggle powerdown
 states for C10 on HDMI
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 19 Dec 2025 13:43:53 -0300
Message-ID: <176616263327.9461.8475372278682270417@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM3PPFC89313B1C:EE_
X-MS-Office365-Filtering-Correlation-Id: 167e96a1-0ca1-4433-8273-08de3f1dcf38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eFFKVFB1dU5qSW5yeStmMU91S2RoVytBZFdHZ0VTQmF4RlZLZzQ0MTV2bnNn?=
 =?utf-8?B?akx2YzBBK2ZnSXJET014VS9XSTVqdUVxSmlFQ3N0UXVCTm81Q1hqbndjRHBT?=
 =?utf-8?B?dzZGbjBCNVQ2dno3QXF5WG5UZlcxS2VIbDhLajRpcEFBNjF2eFNBYm1iTTlJ?=
 =?utf-8?B?bVdIWjVLSGlnYlNybTNxVlFnbnZWZE4ycGlYaHJYalRPbVRvWm1nL3c0TkJE?=
 =?utf-8?B?YW5CWndtelRXYjl1TUh0ZCs2TEJFY3JhaTVpd3lRVXRyZ1MzQks1RkpUcVVY?=
 =?utf-8?B?bjZ4cDRncnNySS9heEpmeUVpRlJGQUp4SjRRT0E2YmE1cVBzUitIVXh2K2hE?=
 =?utf-8?B?Mm5hVC9rTXlzdWVWKzFVNjN2U2VNYkdETFRHSDkzT2psNk4yVE9oNkI4eXRk?=
 =?utf-8?B?dVFwVzJCT0U2MzRPWEdQTzhyRUo2YTZJajY3Q3p2QkxaaWVaZlA3SVM2RUpZ?=
 =?utf-8?B?dzdHOWlvZU1hUlhGWnNFa1hET0N6SkpVdUF2QSswMm1ibzVrSHVmM29NbVhX?=
 =?utf-8?B?NWwxM3Baekd0ZzAvUzBzNFhCc2Y1SDlLbFRmMkMvV0dJNjAyS2Z3OTdraDVh?=
 =?utf-8?B?ZTJURGRKaDNieHRuVG9TeHZUakhtOXo2U0h3YTY3emkyQ2VzMG5uWmExMThT?=
 =?utf-8?B?UTlzMzdPUG9GVzd5b3UxREFlWUJrUFd3NTJkLzVDSDVROEVKNjc4Y0psWGV0?=
 =?utf-8?B?dGNzZlFHR0p6bnpwckpadzR4ajBFWWFSZXZsRnFDTVlsLzRyYjJoZVZMcmVn?=
 =?utf-8?B?ajhaOG9FN2ZVdzQzUFVxekpCeWFRU05ianVCTnFCcktuUjNpS25pOFpLU0RZ?=
 =?utf-8?B?bWxEOEtmT2hqRVZsMUd5SVNpaitWYisrc084WjdTZFFoOURqekNjbkxtNjJY?=
 =?utf-8?B?YVc0b2ozWkcyQTJmcjFUY1BuOTlleHRNQ25Pb2gvVjBEOVVDU0M1UFV4azBx?=
 =?utf-8?B?L2JpY0F0aHpnZVoxTDZIT1ZUcFJTVHU3c2U1b3ZudXJvYzRxZUhwem1Yc0JP?=
 =?utf-8?B?K0tZZmxUUURnU0ZhTWdzOHlCSklObWs1ZjdNcnpzRFRMUHNyREZMWVorUGdV?=
 =?utf-8?B?ZDZHaG1xbW9xaXZOdGp6cXJZN25yK016RFRJcVorR2dLSVNtOFVtdTA0bHRF?=
 =?utf-8?B?TUNuQ0ozaG0wYnNsWk0vdXkvUC9iSzVUdGpWYXNhT1dTZU1DWU01Z1dteE85?=
 =?utf-8?B?dUZRdDZDampTZWNiQnpMOG1TR3Zwd2ZXKytndkNsbEJIRHphSzdoUWR0d0Rv?=
 =?utf-8?B?Y2xROHBYdHRzVk5uMVFjRFhHS1E5K292TWxOQ3BFSW1NR0JVNGlsT0hOZjgr?=
 =?utf-8?B?TG9JaUQ0M1pyNlZmK2lYZzFoUEYwQVNPdWNjQU4zTVVrOUhpcWtkSXRVc1Rs?=
 =?utf-8?B?cWVCcmw0cjRCemRZZjdpamlHMHArVWsrU3B0SHEwUlhrSm9LYlJYSkF1M0do?=
 =?utf-8?B?emZ2SDliWWhFc2Y0RDdYQVVaTFVuc05KMDFsVDcxRy94bHhxYVRmTE9SR3l1?=
 =?utf-8?B?VjJsUndTcTBva01TRXNPWmxrZFJ3WGZzOUI0Z0Fhbjc3dHhtOVZsZ3dOTXZQ?=
 =?utf-8?B?Y21JVVY3dGdGQkRpTlRvMmJUdy9aZ2hUT0xZb0QvcFU3WDdaUk14T3NrWnl3?=
 =?utf-8?B?NXBSLzRVcmlpZktBVzdNRGhiVnV4OWZmK3lpbDNld3Q1OFBUblFrSHhSbmsv?=
 =?utf-8?B?NFZ6eEtpdEtkZGxCOW5wcXhwSWxzNEdtdjVjcXZOS3F5bFBDYjZ3a1VUZURa?=
 =?utf-8?B?UHZVV3VpdGI1eC9aQW10bHc2K294KzdjNVg0bEdBWTAzaFFrSjBINHpaakxT?=
 =?utf-8?B?VnJyeUdMeXdDaTY4ODhTRUhZNkl6V1U4MXFpUk5DVjRoalFML2cxTC9wU2Fx?=
 =?utf-8?B?NnFJWGhUYktQZHZOdlZXVThKTlRKTXBjaTNkd3VBOFJEYVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1ZBd1BYNGxVRVBjNWcxMmFRWlRpR0lBbWpMVXVHSzhHQ2F4L0FuNGs0VGgy?=
 =?utf-8?B?czFyL2Zqb1c5SG12TVRzQ0hIWkFkb21JM0VhM0VwNFJFNnlzT0xLUUVLOG42?=
 =?utf-8?B?Wm9JYmdnd0dtMHRRNWVVdzVCZ1JvQnVtZDlyZEN0V3ZVNDdZNTNiTnlXSjBo?=
 =?utf-8?B?SlJncWV4MGpNOTdNeFlqaWU1akZLUmozSDJ0S3czYmpCZWY3WlBELzBQM0NM?=
 =?utf-8?B?ZlJxQUtjdHByT1BDeVA2UDVOdkdGWW9MNjZReXczamhpN2dPSFVCcTNYc0xU?=
 =?utf-8?B?M3EvdVJ1d2FpWDFLSUZBTEhZQXc0TGFvSnNTcExWOTg5d29ROXdpdkpKQzM4?=
 =?utf-8?B?aHh1dW92Kzc2TUhyK25mL3dkU1dSWG5ndXA4RExmc0Y0U0VPYU03MStkTy8z?=
 =?utf-8?B?dXBIMGlFQ1FkajRCbDh1cytGeDRMTkdvVEVQTjJlT2ZWdWVIMS8rWlFmNkdh?=
 =?utf-8?B?NTA3c2RJRFhpUU5sVHJQOUwya0MxKzJQNVZtVDNSVWZFS2F6WWdzSmF6Qzhu?=
 =?utf-8?B?ZGlERnkrc0lEYm0xYk1MMzZiSFQ1SlZlbXRyZWRGRjlsM2Jubjd3K3FTRjMy?=
 =?utf-8?B?cmVVcngxeTZ0TkVaWjR4RjZPWm8vM29MWGsrM0pjTDFFVW8xOCtoanI4aVd1?=
 =?utf-8?B?T3hQbEM0bnhCazlxaW1iWjUzeldaaVpqMFlMNXVtTTRhcXRRS3JLWit3cWJJ?=
 =?utf-8?B?K0JzbE43QjNNblBwUndFWUJzY09BZlg2SHlGTnRud1pTSHVCQUJSQUE5ZGhx?=
 =?utf-8?B?YTFEcHdBTHZTMzhpN1NHRmczUXplL2ZxRFBKeDNoV3liSUZhTHhJbTdkaHFr?=
 =?utf-8?B?VTExTU5MNUtZQWQ1WWhkT2J3NzZZbSswTmp3SDI0N1ArQS8rMTZxYUFoUm8z?=
 =?utf-8?B?Z3dEUlNxTHJ4SkY0ZHRGUzMzejQ3NkNJRS9yRDJVWDJsS0lqWGVDY3Vwb2xC?=
 =?utf-8?B?YXYxTThGTHAvNkp2ZWFIcy94N2NuWVB0QS9palVqM1JVcUdoSnhqb3VBZmtK?=
 =?utf-8?B?ZGdoUEtVMndJN0tPY1FsSDQ2SU5RUjFKbzc5Tkk3aThmUkVGMFhYcWNJT3Jl?=
 =?utf-8?B?WDZQdzNkdVNOU1I4eGxJT2ZxQUV5Q0ZGbTUxRlQ0Q1MyYjJ5Q2M4c3RXWW9C?=
 =?utf-8?B?YnQ5YjdFVm5QcW5ZUVcvSkZQa1owZXNWcG1aS1BTZjAvNlZ0YTBJRlR2OUJh?=
 =?utf-8?B?dUJMRFh0RFppemNtTEtQTEFTWTUzZENVcjBFWGZRTnFJYjk4ZDBhK1RzVFg2?=
 =?utf-8?B?RXpJWlFGRm9BSEpDUjdpalNNNmNoSnRXeEI5LzBucDJkcFBGMmFmcXQ0UDZq?=
 =?utf-8?B?UmgrdTJrN01mM2V2NVVWR3BjSjhlT2hhU3Q4NXRJS0lCUlpWYkNjdlJNbmVm?=
 =?utf-8?B?clN0SVUvYTFTdHhuNkVRbHBic1pHRFdMS0I0dDFhSFpiSm15R1B1L25QWGlh?=
 =?utf-8?B?Tml3L1BPYXhzcXlPbHBMYWRvcUdJMlZ5NEYvWHl2UzVwb0x3UmpGdjk2WnNX?=
 =?utf-8?B?L2JqV1U3cXdWTDM4UVplRThrVDNVSEhER3lUT1dGeE83VWVVTHBDMS9Zb3dK?=
 =?utf-8?B?d0VvZU1kVmFVaVY1QzlxZjB2SW1tSy9rT2ZWSkdEckZ0MTVJRlZ3NFVoRFZW?=
 =?utf-8?B?TEwwZEtleG91S0NuQWxYK3hGRCs3VkNseW1uWUZRbUNGTjJ5aStxRGtmR2ht?=
 =?utf-8?B?MXQvM05YcEhrV0xrS0JsZzJLanhnZS8zeHZLMDNRWlI3clM5TWl2UmN5WFho?=
 =?utf-8?B?R2ZpTmk2aGFTT0x0eFlndlFySlM3NGNDaFlhQ1M2QkV2Q05JVTQ1NDZjR1NT?=
 =?utf-8?B?eHN2WXpLUGh1cFBXcFZ0Vlp5cmRJVXc3MUc0c3RQWDZqQy9XSGFmUUhhRVhS?=
 =?utf-8?B?Z3l5K0xoQXBFdldubFFhTWNQU1JiV2VrOFFZNzF6WTVtUVJDZEtLQ0tTdThp?=
 =?utf-8?B?eGNmekJPUzZJM3JvMVYxQ0RRRE5uRldNME9hbWl6bXJicHpWRElITFVVWDZz?=
 =?utf-8?B?ZkNmK3hHVHF0TDA5Z1M5WEIvNVQ5OXZpMFovbEpWMlpWUTB6eDRxT3NnNjNi?=
 =?utf-8?B?UDJmVGF1Y1k4a3FDYlZMYVM1a0tsdFFQTGFzQlh2WkZuQ1BvbTlyRzV4WDRv?=
 =?utf-8?B?WmdaVzZNaHVRWm14anZSVTBSYXFZRHRZcVdCeXJUTzdzYU4wMnB0T3l1OFY1?=
 =?utf-8?B?WHZvRVFjY1NxUzlnYmJocUhIUDRMSGJvQXVOUlAvb2x6VnZ6RHBHSnFXTHVV?=
 =?utf-8?B?T0YrclhPZUc5ZTA2NXhGaTUrWm9oekdlSHRzMTAxYm5rSTRiRGpwUDFGT2xW?=
 =?utf-8?B?UklrWnhtZVBQLzdmR0wwZ0ZjSnZmeWNuRlRwd2tTalpCUmdoc3hiQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 167e96a1-0ca1-4433-8273-08de3f1dcf38
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 16:43:59.8127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fG+YJN4nWAFYtgv/pshslTYWgEOa7b03LEX6CUHGKQr5QbP13HNh7jgEPNsfr3rygxQ4xciGXNdRndEDN//q3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFC89313B1C
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

Quoting Patchwork (2025-12-17 01:37:26-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Toggle powerdown states for C10 on HDMI
>URL   : https://patchwork.freedesktop.org/series/159123/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_17693_full -> Patchwork_159123v1_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_159123v1_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_159123v1_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (9 -> 9)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
159123v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_plane@plane-panning-bottom-right-suspend:
>    - shard-tglu:         [PASS][1] -> [INCOMPLETE][2] +1 other test incom=
plete
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17693/shard-tglu-5=
/igt@kms_plane@plane-panning-bottom-right-suspend.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159123v1/shard-=
tglu-3/igt@kms_plane@plane-panning-bottom-right-suspend.html

Looking at shard results as a whole, most of the incomplete results come
from suspend-related tests.  So it appears the incomplete here is mostly
related to suspend issues than to this series.

--
Gustavo Sousa
