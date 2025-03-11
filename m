Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439D1A5BABC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 09:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF2C10E529;
	Tue, 11 Mar 2025 08:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JiyIWqaj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C3F10E529;
 Tue, 11 Mar 2025 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741681288; x=1773217288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ddf3qUn0ZM4dm7ScTprMQ6Nj7ADXNBZJ0zVVWEi6TdY=;
 b=JiyIWqajCm3tUq82DWGgkRCvdQyRzOTUA3U3iv1KTh5mV43x+QNwG8wZ
 lH4YonR4J29MBD8OTv6T4S/Dz15XzrDL9H1WU3mRmg9uhpSMmhT/g9Yld
 mQbtNEzN82HPh14y4PqzAapTRH75IblMFYYx8mBffAskrT/5qpPdeUBKQ
 R+LFxGhuhugzH7KIKOb+EFE6yseSSC600UhMjoJtbvkfCKKsPK1MSVtd1
 ZGQPlwivjJdfKk2Sc45+rBxnlurgM57/RbB/u3m5O+gAii10FFg1XJS55
 GTf7+vuU605WxALjs7Bw1jPkBFQlSm/a27kHJ/qqOE6JykQqGvUdtR8fm Q==;
X-CSE-ConnectionGUID: pKChhkR1S7Kt+yk9CgJygg==
X-CSE-MsgGUID: tnrWJR9jShO5lGzsMGEswg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="53696161"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="53696161"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 01:21:27 -0700
X-CSE-ConnectionGUID: pyZeRuM3QEKvVtmSyNMTeA==
X-CSE-MsgGUID: l1pVEGc1Q+GFF//OpeMwBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="157466331"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 01:21:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 01:21:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 01:21:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 01:21:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ed8z5osBHbDV23bd8yak2BMf5QzNN34nsFae5iJr8qXgu8ejAq/Z/IZGEcaPNtvjXO8xzf3UoqaAahflqnHFEZjcpYZuSvYRAM0vw/rRohFze8nOS90uUY7fQpQWvkcc+zkuC0U96KA4ZXUDGe0YzaJJOWog5/svLAjB60wC+j1NOsi+7cg3D0x4p7sF4E/m59xwC+4sNl9SzgQPqKqRqw09ibjjMHlZudVD2wpUc7rUlIdQEfDiOX811G4sEUb/ie1k/WKksmntRf0Of7dzrPpreOPXzC+6tP6e8XPi82F7YQxEI+2nmMLlziT8Vgsh0N7aYc/1fGim7jTaWCoe9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1tbyVBiaVQSRmBRRTomsojaUnv77CPqcUuE1/bsCDqQ=;
 b=m1keNp4SJAmib6k2uLzSVX0YPJlfhYhLfQBPPcaDUQjAp5TQygCg/KlKildu4AAwMCRIyayE7oEHUhZFktdjxj9dw+gPi+RPpBOC+ZMzCunhx3PhzQnC6W2WITndMMoct2fgzksE23YGCp3qAT5y66n9st6yfukpkul9liYtE2u8UMPNr+snXSiqVwrShyTt4pkd/DNIKNpln51pWBYP5eVGeSUilRNKwUmWpryjcSG/RaLTDoaWTfVEumOOhnRZYobNWCe1gQRZFWIf4Y7ILStEl0htdVO5zhmnLsN8o6CEY0jSXtTvwdT3ggx5MvryL6MGYk94gOP+2B1CyRZ3ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8198.namprd11.prod.outlook.com (2603:10b6:208:453::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 08:21:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 08:21:23 +0000
Message-ID: <bff12fed-08d4-4342-8fe5-3b1a1640c8ce@intel.com>
Date: Tue, 11 Mar 2025 13:51:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/21] drm/i915/vrr: Always use VRR timing generator for
 MTL+
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-21-ankit.k.nautiyal@intel.com>
 <Z88rqb1NeO2VDfbg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z88rqb1NeO2VDfbg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0016.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8198:EE_
X-MS-Office365-Filtering-Correlation-Id: 30c3f885-fa4a-436c-c0ea-08dd6075b5a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amNxMHh3VkI2Z3gxN3JBVUh3RktUdUhQTmlJL3poMWxoL1ZLYmdUWEZMeFVB?=
 =?utf-8?B?R2UzWW1lS05CSE9QdndpMjk1Y0twSEJaaFRINVZpdEpDL2RZZzVacUtmc0RH?=
 =?utf-8?B?eHJhbGtDd3JkdmlBbi83L0NiUllzdXM5YnZMTXN6VzMvM09ZT1JCQmZXa1hD?=
 =?utf-8?B?SzRGMkdwNDZCMzZFME5vaHcvUUdhZjlkUWhCcUNaaW80QUNWRlZhTWF6a0ht?=
 =?utf-8?B?b1dJOU8wdWNIckMvVjV3dHIrSDhNVFRnNVY5Tk5admJHVEdUaEU2WWROMmoz?=
 =?utf-8?B?SHZScUJLYkZtNHRPSWtqRXlGRUxUSHJINWVyRUZiMWZ2Y2pzWFI4Slk0NFNS?=
 =?utf-8?B?V25jRnhhZXJicU5rTmk0UHpDdnRQZmlzQXZ0RFNaSHFER2NWUlN2WWJGUzJn?=
 =?utf-8?B?Y0xILzZObXFtd2xrMExVbUYyTFVzbUdTT29sRnFMZTBHN0VVcjJDU1JpaFdK?=
 =?utf-8?B?cnpoTDRVSHJmUzNzb1ZLS1BzOHJCTXN4SWNlR0JQbkZ0Q2ZFeUdEdE1QMUFV?=
 =?utf-8?B?U0pVZmt4SWwyMHRGODE0MUJBYkZRNnJndWphSDJyeHJLRjFJbVV6OVZlZ25R?=
 =?utf-8?B?Qm40UjhuVVZjV3JuckxGOVhGRFhHeEhBRkpOdDljbE5WbjBsWDM2VGh6NStt?=
 =?utf-8?B?Zit0Q3NCeE5UK1RhSktKVHJ6RXlGcHFyZ1JuUUVSL0JDKzNqN04xNWgzQTVC?=
 =?utf-8?B?bzFOQ3RoRFZ2bnorM3paR2tEWGhwWFhkeDViVk5JVXgxU1pnV0VMTmpiMmx2?=
 =?utf-8?B?MENodTBoNUJaSEk3Nm5KWWEwT3NpK1o5YmhTeEZVTHJoa1RQelBBY1RDR05Q?=
 =?utf-8?B?SExocmZac05PN2RNU3hvWm9ZbmZmQXREWTBzTHVHUFRPMjk1N2hsY1hjVnQ3?=
 =?utf-8?B?VkFDdkhsWUxGSEFrVlQ4SE5VNlBZWFArTTdzdVFTVzRLRFRkUkpNRUZTUldS?=
 =?utf-8?B?SDRUUXI1TzV4azlGc1BNMVhHQk9IVnBZdUcrUm1ZcDcwbDl1RkdjSVRlTWJy?=
 =?utf-8?B?aWlIZXpvK04yN2E5ekJOTGJ1aXpsaDRoSE5ydVhkUUVxUDhibmVZby9STVQy?=
 =?utf-8?B?NldpWHhaM2Y1Zmw2aGw4RWhrQmlya3lnS1F1YzZqWnphSWpJejRRT0FkL1pB?=
 =?utf-8?B?Q0lHMVpVQzJ0a0hNWThOeTVTdHRwV1lZL09kbUF4VWZxRUFzNGI4MlAvNGsy?=
 =?utf-8?B?SzlWbVQ5aWdRbHRJaXZyS3A3OTZzTnFtWXVUa0hkY3F2NjFYYkIwckJQS3FI?=
 =?utf-8?B?dE50R2tHTndBYy9vU2Z3SWg3NlVjRnV3RXA5TGtHRitZZUk3OXZZSnFOU0pZ?=
 =?utf-8?B?a2hqYW5kWHhQQU1CN01Hay92cUpGY01qYS9iWE5abkpQYTV4T2dxY2tQZjZw?=
 =?utf-8?B?MjkrMHp2bTFHdjQzRytiZ3JpaWYvQXBoOGllSnJqdGVPbU5aSE9XSVNXQnVm?=
 =?utf-8?B?WjdVdHJac3JXUXRZM2NnTGtKN3ZXcHdXSlFFTjlvcWdmNDIvZGFFNmNzNzg1?=
 =?utf-8?B?UUpyYzFoL2cwL3VBa3dhYzQ5RlFFeW4ySGlEblg1R3QweXN4U3ZkUHNSMU5W?=
 =?utf-8?B?c0lIQVRDY3lZKy9iVHBXREpSTjFPWExjcDUxeHE2d1ZqYlFDMFVIWUxTQ2Vm?=
 =?utf-8?B?b1RTMk5rK2ZURlkzdEs3UHNvWkNnZXdGVk45R2ZEU0tGZW95dkx3ei9MdE10?=
 =?utf-8?B?QzV6Q2FvRFM4RlBJMXpNYmIyZEw5akVvU3kzZERXTUpiOGx2a2F2VDBTcVhw?=
 =?utf-8?B?V3hkZ0dXUXBqVEVXV0ZOd1l2RjFxdUJzczJMVzh1WVcxUEdxZlQraWZPVzhO?=
 =?utf-8?B?UVpQMUo0WU8vaEdHRW1ZM1dHbWNZNTg2WjNHUE04b2J6ZVlWNlhPM2U2cVJG?=
 =?utf-8?Q?oov9BVpiOPBHe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1ZVb2tCbG1xRS8wMHVyVUxGYlBwaU1mZ2lGa0FNYzlPcVJ6c0c2cm02RCtE?=
 =?utf-8?B?cFZ0bFo0d2w1V3F3TzdXWU11L09JTDhHVDNLV0NMWldHaGtKcWh4Nndza1Q3?=
 =?utf-8?B?R2N2Z2hxdVZ0ejNKZldTSlEzV2FjVFQ3ZDBPbEFLYzlKNXYvc3BRSGpkTk5G?=
 =?utf-8?B?SGExTkhGYk5UY3k4cFM5RFlXeGo4NWkydWlORk1XV3ZaU2hXeDRYWFRuWmFR?=
 =?utf-8?B?WHQ2M0x3SFdQU0JXOGJDKzl5VmVvcDlUQnJBRjBaMzVIdTZFdXVDbzBUaVJK?=
 =?utf-8?B?Q1ZMNmE3a3NoR0tjV1ZIck5OYTk1QURIQkxRdFNHNHREaTEvS0J4amVYMWE5?=
 =?utf-8?B?YWRoUGFiN3FBMzF6eEhUTTZZbmF2UjBKMktXOHRCUHRLTlU2ckFpS1pQUmZt?=
 =?utf-8?B?VHpYNTI5bW9jZFQ3a2J2eDhOZnowb0lCOEFmeDBndXliMEcrdThDbUlxbWQx?=
 =?utf-8?B?WGFaNmd5NEVwQk9senM4NEtpc1ZQbGhNdE5vM2prVm9uOHM4NDdJcWUxTHI5?=
 =?utf-8?B?YzZ1RlBJZ2p6R0J3S00vR2dWUzRxOExBc1o0aWpYSGhyVEt6blBHT2FUTVI2?=
 =?utf-8?B?Smwxd2VhWVYvWHdsR0FZQjNCTjU2RkRBejUrYUdvTGJKNm5jL1VnYWovamRX?=
 =?utf-8?B?MzgvbVA0aW5vT3IwTnl0aFpRdms4cjdyZU0vdjdkWVd3YmRGSEUxamRZOHZU?=
 =?utf-8?B?ZUdoUGh5OG5nSW93WUhNWGhjTlM3VC9YT1JzZWhNZ25CNlRzcmVFTjlic2g0?=
 =?utf-8?B?YmJWYVBKN1hOUjJVd3VFaGFqcTBuSUUyR1VtMERKdG1CS2o0SUhZUzJCZWFO?=
 =?utf-8?B?YzdDK0lBZ2U4WU0yWUptNUJiY3NWaUJmUFRPeUZ1Ny9wK0ZoQXlhNGV2RFlV?=
 =?utf-8?B?U0Q4Wm8vYUhuY1RjdW5uL1dsdUJSNStCb1JLNHpCdndMWXRnT0Jxd1pXU1Fa?=
 =?utf-8?B?eWtQQ2FHTmdUcTBlSzhMNG5oazQrbDFQQ21vUlc0TFpIbk9kaU9zTUtBWUV2?=
 =?utf-8?B?Zm5JU0V0Z3cwMUk1OTRoN01Tb1dPeFVKcHM3ZDBZSVhlaEs5bSszMmxaeVQ2?=
 =?utf-8?B?WUVuQlloYWZFemRCcWNUUVFyazFJay9waWdoV2YrVkZhOWgyYlAybW9LME9i?=
 =?utf-8?B?U005TU8rK0hzVll4N2dxQ0tpTnlNcDFjLzFHUS85eFVFdjVXTHZjdFBwS3k4?=
 =?utf-8?B?cFFyd281MmI4WXdPWndCVCsvZXViVmUyVFQxU3IyeXBzOFFCTUVjWkpxZW12?=
 =?utf-8?B?SkE5cCtKVHFJVEV0TnB1elp2TVFUYWozNmtCSG4xZUgzWmxLQ1FXR2tWc2s1?=
 =?utf-8?B?dG50YjFKYnpkZ0o2SzBFeTlLZ05OVVNxa0VXOUdhbnZ4U1dCUXRub3h0QzZ6?=
 =?utf-8?B?Q2p5Tk5tejI1R2d6eDVnVTR2RVEwUC8yOGVyV0xYUzJDTElGM3dxUVZ0S0lp?=
 =?utf-8?B?bjRCajRXcDhueUpuSXlrQXFmZEZ1UVpHZDFlM0dlTHVZSGxrcU45STNOa2R3?=
 =?utf-8?B?aGNhaWxPUGcydnlBVmlOUGxLekJLMVhtdVI1S2F2KzhPejBPTzlxdGJNbWFm?=
 =?utf-8?B?cnBudWpPbmlQcU5iNjgrNE5kdVN2eStvMGFFQ21Rc0pWUnVOOEJQS0YyK2Y4?=
 =?utf-8?B?eTUxSlhGZHp6Q0JyNkZpeVNOZmJnd2RiSGo3N2k1Tkp2NVNnOUR0S2JQY1RN?=
 =?utf-8?B?Sm1qMzVVZEVmTjFSL0hCWGh5RGhWMWpjbFl6anhPUzdiMno1cFhRdGo1QjlS?=
 =?utf-8?B?eWU5dXNvSzkxdm96SHRGSG1hOWlycXJNVEE0NGo5UzdNZWJheU91YmtuR3lO?=
 =?utf-8?B?ZGVwbmtFdWwyN3Rlb0pKRFV1K0dNc1JZbGJvY3oybHA2TGkzaEF5cUF0Wjkv?=
 =?utf-8?B?RTFXSWl1dWhTTEpHbWJDZ1ZhUlZkbzkvYm1iRWtTN3hrTDh1K0tvUk9xeW9N?=
 =?utf-8?B?N3Y4ZFpNVmRYUEE0bHhoQyt4S3VOTjdWc2IyMnRyVHpFWm9jeHZYa1V6eXNy?=
 =?utf-8?B?RGsxRW9tZjNtanZ4UkgrRjA0VFlKUlZJbE9rNGVNczVPcEU3bXE3d2NsUVFZ?=
 =?utf-8?B?TW1tZ21pcXprQ0hrc1pKT3lRWnZleHlrVUlabEVxTTc4QkpaQmE2NjBIV2JP?=
 =?utf-8?B?cGJ0cDZaZWZEYWt6ZlRDaldsNzNHS1dINlN0RFJ0SitDYmlLeVBwMVdBWHNO?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30c3f885-fa4a-436c-c0ea-08dd6075b5a8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 08:21:23.5102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NMvjGI711BFIkY5G4Ufvbpd2e5ZFvg/PyNeMsvNAzfB95UgRdKE/DIw45a70n4g0Twe5pzFgGLstDsyUctYBACYI3mN2Ahmnr7QNLQLH+e8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8198
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


On 3/10/2025 11:42 PM, Ville Syrjälä wrote:
> On Mon, Mar 10, 2025 at 05:46:14PM +0530, Ankit Nautiyal wrote:
>> Currently VRR timing generator is used only when VRR is enabled by
>> userspace for sinks that support VRR. From MTL+ gradually move away from
>> the older timing generator and use VRR timing generator for both variable
>> and fixed timings.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 76398b3a9679..35f1463583f7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -556,7 +556,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>>   	if (!HAS_VRR(display))
>>   		return false;
>>   
>> -	/* #TODO return true for platforms supporting fixed_rr */
>> +	if (DISPLAY_VER(display) >= 14)
>> +		return true;
> I think we might want this just for ptl for now because otherwise
> we lose the LRR fastset.
>
> Or do we know MTL/LNL having actual issues with the legacy timing
> generator?
>
> I think there was some kind of claim of issues on PTL, but dunno
> if even those were real or imagined?

For MTL/LNL there are no issues, that I know of, with the legacy timing 
generator.

As you said, for PTL there were some concerns during debug of some 
issues, that were attributed to the fact that legacy timing generator 
was still used,

but even those were later root caused to other things as far as I know.

However GOP and other components like DMC fw, pre-si, etc, have 
transitioned to VRR Timing Generator as per HW recommendation,

so perhaps we can have this for PTL for now to avoid clash/issues due to 
mismatches with these.

We still need to rethink the LRR fastset as you have highlighted. Will 
add a note for this in commit message too.


Thanks for the review comments, feedback and the guidance. I will 
address the remaining things and send the revised patches.

Regards,

Ankit

>
>> +
>>   	return false;
>>   }
>>   
>> -- 
>> 2.45.2
