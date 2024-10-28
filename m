Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CCE9B3345
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC5C10E194;
	Mon, 28 Oct 2024 14:22:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hgx0CNzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCD910E194
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730125331; x=1761661331;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=BVI9RcrFAtLvBRuDKgxhRU/SmLk4bejzxLx686euufE=;
 b=Hgx0CNzjcRc5cb94bfXho6UsVQgEyT5zus0me96iqs6VNaeLbZ29b9IW
 oy9IY5QnUDFs2B4+rhjiVxliILVEW51Ywu3gQod4IdRV/2oic5qf13lU5
 gXNYMNx8YDzxttJPGwSp5RT1bAjVkNdO/zlhxnMqvt/dPkecWg1gJnBfR
 GFMyAABqSFTXsrorhAROH7+609Ui/wreHiGUP51L4a7mdi8M3vlURKcUN
 kDececD68z6pYYVf0zmiAV74wP0cIS8leQGdDvEVuCRsbmEJYVodEuSge
 v8KWH8724LlfiUa2lqSpcOKVpTbD+nAZoLr+Dpw9kkOlSlg0lAfsZ+JNL A==;
X-CSE-ConnectionGUID: WB1P6MUrTr2N5FA1NDyF8w==
X-CSE-MsgGUID: Td6MceCIRUqVTvYsCNY8cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29496938"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29496938"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:22:10 -0700
X-CSE-ConnectionGUID: PWvBLhcnTBys7I8epiJHZw==
X-CSE-MsgGUID: AJX2Na1EQ5eZvUgu8Lk7Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="119092033"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 07:22:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 07:22:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 07:22:07 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 07:22:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kje/it7GMbYx3CUA+zB5CsTc/UkEPyEDJp/jahXF6Vlj2qbHM6v3iYX+Ey1FC1uLhyuJIJyOhC2O6cuWc54+L8q98Hv7ZQwZyeCBfOxYOvn1s3CELlPpXBB3YrtRWU1UZIUb+7C+hrOezw96msOOGmJ6ZUIK0xvtBB0fbimxqYwI6z8RX5+cfKeq5EYtRcQ6B7zRn22jEtZnUSc1HNvPVYyCCGZTj2Yj0ID+9uJlzPkLsKmm5l679oUDhH3iJ/blAg5mcri+bs8pmN5LReGoLwe3XkxnlrTMVHwGOvpdcAfbsVSOo2tCBbY3rHY5I/M8yGBz1wexzer5vPYkJJi3qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y/pxisfbwfswq8oMcMa/c37CFVsLU0Dv3pz+r1h0nps=;
 b=BE3F8yyvzH3kunMeSwgV9MA1VqWkqKfUqlJ+tghgysf5vcrKfOd0FNjJ0bPHvQNwfGveYe4SCNvwSwfb/Re9nC3WsUNFnyFD3cuiLkgXUX8s7CL3vavvt/fbvC7ABXBfyAzU8YrjRyKuAQ134bdFSdCHTsKghqSGArMMEdrHfTAFIxf5hb8oh1PLCCh1ImviDbl7Au3B0NLsAZi1mCtOfCkLxyQQRkm0VXjMgtFHbEKZxgwpCLn2A+aa/di7Qpdxw5ZFYsbEpna7Lnaurwytprlabpod7dFfqMDEWQ23gJesdcRhY0HmBQzDPjcTV17Ve8CXytkVSXjIOhNv0Q0bZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6773.namprd11.prod.outlook.com (2603:10b6:806:266::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 14:22:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 14:22:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zx-ZWj-icaHVlmpB@black.fi.intel.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
 <Zx-ZWj-icaHVlmpB@black.fi.intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Mika Kahola <mika.kahola@intel.com>, Raag Jadav <raag.jadav@intel.com>
Date: Mon, 28 Oct 2024 11:21:59 -0300
Message-ID: <173012531967.3514.1295181866845484331@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0090.namprd04.prod.outlook.com
 (2603:10b6:303:6b::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6773:EE_
X-MS-Office365-Filtering-Correlation-Id: ff4cf161-920f-47a7-ad50-08dcf75be54a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NU45NjNOeHpyZ3lEUDZPNGtnQVBaMjBFay9NWWw5VVFGR0hDZGtSVmhJTnFJ?=
 =?utf-8?B?Snh4Uy9aVjV4VjcrZGpjc2xwV0txb1VlUC9TWUlqZWttU21zMEt6elV4UEJ6?=
 =?utf-8?B?TTdVWkt0L2JEVkdVeUE1U2RmMlBtZnhBNzUvRTMxaDFIYWRhSUM1UHdLcEpx?=
 =?utf-8?B?K1I1blZkc216aXY5Y0pmNm9LS0x6LzVxajlMVXkwcHQvZXliZnpQTnRadGJR?=
 =?utf-8?B?dUMrdVVMUVRqYTVkRTkyY0NYME5Ya2xPMFh0c3l1cXVnamRPMUhORzE1K01m?=
 =?utf-8?B?dTN6NHBVVy9LYVpzU3BwY0s0ZXU3RWZkZlMvM2NQaVA0eGc1bjNxRkVkOGJN?=
 =?utf-8?B?QWswSEpWV01CcXdxTkp6ZWkxaHRoRTlBTWdkd1RqMDJ5b0YxdDlQek0vWW96?=
 =?utf-8?B?RTJhVldyc0VhSnBmaFpmbFpCbGJUZUJEVjRMOFlLL1Fmc1FHV0RreHN4UHZ4?=
 =?utf-8?B?MnpEMkdRZk5YbFc5eUxGVlRya21iaTdZeTZKUXk0dEhwSnR2cWhDOUxWYjZp?=
 =?utf-8?B?MkVoNk1BS2FOYnRuKzRHZ1VXeDVkNmFXMGZRVWhSN1ZGOUZnVGJuQ2VEN3dO?=
 =?utf-8?B?TnBOV2JPZXU1VnZEdDd6OXl5SG9LeXFnWHZRYVNOS0JHWHRaUUpubkJWdjVB?=
 =?utf-8?B?c1F5cSthWVpGbkdxSGx2dnNpNWpwSXNicm8rL1FDVHZqa3JGVVNjUi9zcS8x?=
 =?utf-8?B?Y1oxQ2FpTmNPTFd6M01XeEVxVmYrWGcwT0JRWUdUM0QzRW1EZmFkRnhzZk8v?=
 =?utf-8?B?bjZyTVVLbjBIS0JHOHMvU2hYSVpPakVjRXFZbVlkZWMvVXdva2lFR1ZtVTMz?=
 =?utf-8?B?ZWpOT0syQ21xc05ndkNFUDYvc3ViLzVMa2EwTjI0bTFmUHB5cUcxVUNVY25Z?=
 =?utf-8?B?T3pEYnQrU29aVDV6RU4yMndYVi90d1QwTzRRZ0ovQmFOQXN6dkQ1YnZHbllU?=
 =?utf-8?B?UzZPakpYMGFmaXZ2QTl6T0RRdHkzaE1EenVpaHN6NVNzaHNheHlSVVJBSWV3?=
 =?utf-8?B?VjdtVTlleHM2d2xmc2FQYTZoV0liZHRCZXgxU3ZnenliVGROck5GSjNtdk00?=
 =?utf-8?B?UVZ3SElQdTJJY1plUG9XYlo4M1hjRXJpODdDSzI3T1YzaUJ4VGF4aTlnV1U5?=
 =?utf-8?B?K1V1NmpNU2FWaWEwc3VNU3IxVFhINDNZRUp5UWlNbU51b29BUE9nMDVpYUdP?=
 =?utf-8?B?ODhycEhIU2thTzBSRjFmazl6K1lIbzdsN3I1enV4bWdTaDJqbHR3ZWdTdmNo?=
 =?utf-8?B?RDBxVzlQZnozMkgrVUpIOW1nTllvcHdLZVpZVzFxVkhVK3laMlZiVVpmbHVK?=
 =?utf-8?B?eVF2TlJWSVUxdzV3Qjg4ZGhVdnlhVjNtMHc5dzJlUGhSTTFBRzlFUzRubUpx?=
 =?utf-8?B?U1RFRlZYaEx1NUliK0l2Y29xc2ZaMTRHRWU3N0FPcnNBQWFCbHh3WGUxWksv?=
 =?utf-8?B?c3hwcG9XaWRxR0liYVFnQjc3R2N4UUhBN1BZUzNJOUltV1I0NHBOR3cyZGFM?=
 =?utf-8?B?eDNwSXlYQ3FVMlN6emFCSWdlYzNCbEZpVVpwZVNCSE1DRzBLRXFIZ2ZDZ0Fj?=
 =?utf-8?B?WGRjOVdJQ2xWZ3JJVUhzYzBzWFU5Z1RCbzN5d3BJUWd3MXRaS0VoVkwrNGZP?=
 =?utf-8?B?aWRRWVd1c2Ivcmg5Qm01b09zT2JUMFQzbitVY2ZiQUF3YUI2QXdsdkJJTVc1?=
 =?utf-8?B?OWhHQ2l0Q1UvYWM5bVNnTUtJSmw2UmlEbTlVdWI3aHp0UkdqSU5VS1BnOXZR?=
 =?utf-8?Q?xXFHr+7fJ2Lsm/JU58MdoT+xOOq2TJ6tpUWJSMm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlM4a1Nic2hhMUtoQTZYWWtWT1pZNmZQNHJuZEk3blFrUlFIMWQwYzlwMDZx?=
 =?utf-8?B?Tk9GWFJlQmRJVnBGc2tleHlrdTJoTnVIMWJTMmpMcnlaMVlnYTdhRitKUjhr?=
 =?utf-8?B?bUxDM3ZVNjJwRnBXM0N1QlBIcmhNK282QlV5UWpOYzE0alVtN1k0Y1Y3V2F6?=
 =?utf-8?B?d2pUM0ZJWDEzYlFmTGgxMnFQK3hZOGwxbjNOeTI2TnBENERNQTVIdS91VGpu?=
 =?utf-8?B?c3hQR0dwWHVVdE8yMkM2YjYwQ3dnK3ZENFVZVm53clplRjdrOWRDNGRCZnJy?=
 =?utf-8?B?NGtmMkxtY2d2bHFmZFZKa1IrWGZsZS9lOEV4WUxkQnFubUVzU0g4dVJZTEh4?=
 =?utf-8?B?WWpPNWhrMEhHcWgrRUlJWGYvck82aE5kSjc2anNUVjQrYlBpM0hPd1RzbjVx?=
 =?utf-8?B?cHhCa1JoNDlnNkhURGtRdEpnNnJPczlNRi9lTGJoK0hsK0FSQ0hEUDdod1V3?=
 =?utf-8?B?djlaQUdOcU1FZTM3NmE4LzA4TGFUWHNwamE3c1BEaGFDQ1FITVB6dUVsUE5W?=
 =?utf-8?B?WVJVcS9pQ05ZeFBSbFdMQmQyRlU2VFhqbnE2UTNQNzhwL2J4TCtIdUlhV3pI?=
 =?utf-8?B?c0ZtQlNHbVBKTTcwZXN6SWxZNDU1SmNZTnZBTUxDVys4NlBFUWVrWGF1cWlv?=
 =?utf-8?B?c005aW9OZEtTUFR6aEpZTjhnTkY1bG8rNjVtbXNUbEMvVmQ2dVMzUE4wRVM3?=
 =?utf-8?B?KzBHQW9oVWVnLzJjdmdCSFpqemlDQmV5VGMxMndkUW1MVjV2U2xMNkkwaWNF?=
 =?utf-8?B?cWowUktndTNqazZDR0NmR0R2S3NkNHdHRjRrYS80WG1UWHE4YXlaUFJiRW9m?=
 =?utf-8?B?WFdmSmNxL3RXSUxITUJhRTZ5Y2tIMUlpbWplVi9ld3lSRGZSSFptcEFITzkr?=
 =?utf-8?B?cXJOTENVQlJBWlJVOXltZ0FCZTcvdTVRQSt6RHkzWEZDWFUwWmFKbVo2c1FR?=
 =?utf-8?B?VW1uZWRUdWNTYkt4aW16Zngyd0RwUjVPc1BEaEJKWDVDMGNCc0pHZERxQ2Vi?=
 =?utf-8?B?cWRRRndseFZOVElOUGYra3A0cFRwTnM0QVEveW5TU00wR2hsRzVHemV0a1Nt?=
 =?utf-8?B?Y0lqSTNUM216OGlMbDQ3aTZjVHdXelJuQ0NFMFJNamI2S2NUOVpqcnZhakpr?=
 =?utf-8?B?TGVEOWl4bDU4SGFmUjZESnJEeEFCS1pMaFJNR2lCakNRbXVwVnRjbHJ0VHJi?=
 =?utf-8?B?aXlobkVwRGlDRE1aSzloNUlxbW9YVUZsOE9YcDB3RllueXpRbGFmakZIOTNk?=
 =?utf-8?B?ZzR5bXBCTUxBeUJVR1ZhQnJtalBRYnlURldpSHRCR1RGTFpzalU5TEdta1Ro?=
 =?utf-8?B?ZG1WeE81UmQxcW54c1FqMGhOeVZBVzA1eDBMNDd4U2dKdkRuQU5qZWlMaTc2?=
 =?utf-8?B?U055V1IvSVpiUEpJQ1F1VjNpUzYzSWhjeTVvMXpJbGpicW9PTVR1UGVORWJY?=
 =?utf-8?B?M2ZHazNMOXlUTTRaZENCU1g0NisyRVh0NmZ2Z01iWFlxcEJ0WTZwVmp5dGoz?=
 =?utf-8?B?TzBxc3pxbnZkc0E1NXdwQTU3T3lzQWVqTHdyRCtKSTlEOWNKK3B5SFFWN0M0?=
 =?utf-8?B?TzB3QTRIZXYrVEN3cXlCbkFFcEgyaEI0KzRkNkpJQ3Q4YmxUWXdWQVI3Q3Nl?=
 =?utf-8?B?VkFNRXNSU3JRdEJLRlc3NS9pNUk4M0UwK1g1M2RRSGYyeDVFd2FhOVVWVHNy?=
 =?utf-8?B?R2R3eEk5NDQ3Qkt1cis4SVc0ODd2a0Q2NU1EeThWblMxUmF1UjI4RURwNUpQ?=
 =?utf-8?B?MUN4WmVGRmJZQkdDT0lvUTJNd3N3bDdzeHgxSzR4MjFyT0xxYUlNUFBhb0FI?=
 =?utf-8?B?Zjl5WG81YUNkcis4TDZFSDljcE4ydzhIbUMzcTZEQkMvU2Uwc0d0OUU4ZTJm?=
 =?utf-8?B?cXBrZ2FSaTY3NWJuNWU4QW9FakQxbGVJQ3ZjdTB6T2k2OEQ4QTZWMElKRU9O?=
 =?utf-8?B?VU81ZmtDbW5DanRlcTl2NkRaeDQ5U01Ia1VWcXBzN3hxOUFYU0ZWaDZna2Zr?=
 =?utf-8?B?cko2UW45WFhXTTh5TmY5M1ZaaWdISHlKdHZjeXl1WTNIaDJHa1ZrenMzRWNL?=
 =?utf-8?B?TjRsV1ZnRDBPZzdXK0VYemo0emFNdWdGNG10ekMzaHpydzJZVFFXT1cwR1Av?=
 =?utf-8?B?QzZqYm44UXEvQVU2S2srN3lZVmlDL3plcXF5dm1EUVVoL2RmaW1qdHRxUzM0?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff4cf161-920f-47a7-ad50-08dcf75be54a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 14:22:04.3369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cgTUDoJjpvNfVji9HsI+1rE+PYAMRDhRzZmaJUtaXsLKp29VV8bSqbbmwPn6pfSD0fR7F9P1GpliRetS5oAxkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6773
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

Quoting Raag Jadav (2024-10-28 11:02:02-03:00)
>On Mon, Oct 28, 2024 at 02:58:35PM +0200, Mika Kahola wrote:
>
>...
>
>> +static bool wa_tcss_power_request_assert(struct drm_i915_private *i915,
>> +                                         bool enable)
>> +{
>> +        /*
>> +         * Limit to PTL only
>> +         * TODO: Add check for PICA IP and use that instead limiting WA=
 for
>> +         * platform
>> +         */
>> +        if (DISPLAY_VER(i915) !=3D 30)
>
>Not sure if hardcoding constants is the best of the approach, but I found
>similar patterns in other places, so upto you.

Using version number directly makes it easier to concurrently merge
independent patches for some display IP without having to wait some
#define to become available. That comes with the cost of having
to remember the version numbers (or checking somewhere) though.

>
>> +                return true;
>> +
>> +        /* check if mailbox is running busy */
>> +        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>> +                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, =
10)) {
>> +                drm_dbg_kms(&i915->drm,
>> +                            "Power request assert WA timeout waiting fo=
r TCSS mailbox run/busy bit to clear\n");
>
>Is timeout considered a failure? Not sure _dbg is the right helper if it.

I believe it is okay to have _dbg here, because the returned value is
checked and a warning is raised. Althought we could make this more
self-contained by jumping an error path inside this function.

>
>> +                return false;
>> +        }
>> +
>> +        if (enable)
>> +                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>> +        else
>> +                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>
>Since enable it already a bool, this can be
>
>        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, enable);
>
>> +
>> +        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>> +                       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
>> +                       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
>> +
>> +        /* wait to clear mailbox running busy bit before continuing */
>
>Any specific reason to do this on exit?
>I'm assuming anyone trying to use the mailbox further down would be doing
>this anyway since it's a prerequisite, right?

This wait is part of the "DE to IOM Mailbox" flow. I believe this is
necessary and the workaround might even not be effective without it.

--
Gustavo Sousa

>
>> +        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>> +                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, =
10)) {
>> +                drm_dbg_kms(&i915->drm,
>> +                            "Power request assert WA timeout waiting fo=
r TCSS mailbox run/busy bit to clear\n");
>
>Ditto.
>
>> +                return false;
>> +        }
>> +
>> +        return true;
>> +}
>
>Raag
