Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17146C92239
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:33:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B4D10E172;
	Fri, 28 Nov 2025 13:33:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fK5nGluD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C576110E172;
 Fri, 28 Nov 2025 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764336789; x=1795872789;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IPgC6uwUw9IiLf1E2QXBl1k8iIvDSKHBAo+WiAEsINU=;
 b=fK5nGluDdRN7JQjz8+0i7s4GOqhhf1Jv/XaB1ayIgtigX7aWmWsC5uNf
 IxjiEvNzSZr6jGtiBjjgMnwF8udzYmRmRFH3F9bmqyiz9Ir7eqsc09lQX
 OxVuf8IU5YFtRAkkDda5njmU5+TCC9S1RHEvJ8YeYLNSQ9dT+xjFqIiiq
 QDVwaJHfB1+RruisIRnwC36a8fiB+61r+5B4RvCnMZhrFcV8RsTBXQTOe
 rqmxccCm4ouQi4MwzEisL9Be8Pr/OjWepSMlt3P7QX4o3tB1C4NHzUzxt
 Y7zYp96JTYuPiLVSIDmdu7WTY2BEP/XqlwJ53QQzRhOj/9xKTHN8QmBZ8 Q==;
X-CSE-ConnectionGUID: G9Cf+xtKRxWEEjJJaPvC+w==
X-CSE-MsgGUID: Q1OuKbgCQaWHWCmCW6R+PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66258975"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66258975"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:33:08 -0800
X-CSE-ConnectionGUID: yN8KTfRdS9Sn4eyBzbpTAw==
X-CSE-MsgGUID: /c79cWsNQp6oZ2VWuv9/OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="192722378"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:33:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:33:07 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:33:07 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:33:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mpF3V2wyAM0++KJ7eer/QgB98WZUIvDHnAWPlFNWuwyX6DdNNusf18hi2lQroeaVoy7SB6kQxyrmA4AmLPlBq3Glk2PEq50niz7Mp0Abjli6xuxy5o/Hl7NQTQ+Ex4N1Rh2Vmq2kIlI6vi7uK9Do5mt0Il/YyTUm494tUGE0jIxwzqnvvXiTP9CIsCVOVSBGo2VNNHZ+x1ej2IsI6T+JLCyaCj3pyksZvf54c0ZtIIgVNcFYFzCQna0x5Z7zyP2TOfxzjiXwyBrLuE+L9QAhEu8pGulAYysm7LibBJ/XmklY8cqYGYTS2IEhcB3ySTi7m6d1QYA5H5hFPUeL6UNzDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ga3x3tuG8fuPL0NssK7YtJBKwrSBwIODHTZldyt/w6o=;
 b=BuhSNz1val0rVONUO3JsJyHmIxPuM01dpJSQsgynLTiOefmGR9MssluU1QgFXARFaeQkd8Yt5KIYkkZzRmWpMy1YGP4cLByt3/ZZtue1eR446/qZt0TpdMVfCxOJHv4tm/nU6XB3bKcASb6OQPeny7qeAmJj3K/vbeB0aptMzLZkB7gI3Tm9qsJJlvMMV2dGN7kQUZs5sbIlmBBDcYsca+CKEcA0dofsumaFsXrjAWHQAIu533uD1H8JrtnE0tKzVDIA4Q7iepu/LZ6wGjtZD/ItOg3fYpDP5ags2DlqzWe1ZfMyIs3YAzLSGTWk71eeH5UoFqFeeCgO+8PH1+X/fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 13:33:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:33:04 +0000
Message-ID: <41b8f2f1-39a8-44a4-a298-58e76bf07331@intel.com>
Date: Fri, 28 Nov 2025 19:02:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 09/17] drm/i915/display: Add DC Balance flip count
 operations
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0195.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: edfb84e9-1fb0-4d76-b2e0-08de2e82a8aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlcrN0xtUWpaditqb0t6VzM4N0IraWhpU2NMUGMrcTcwZXdBVVdVd3NaYlY2?=
 =?utf-8?B?TDdEWkt3bFE2T1VIYzBWZ004U3FtcXlScEpTb3J5cUlLS2pTcWNrRk1GbGhw?=
 =?utf-8?B?Nk1tTjJvUDUzMzQ3RHZEWGhIbnh4cEEvWGFGckVCM2RWQzI3YmVMVGV4MWNW?=
 =?utf-8?B?THYvWEJ5TG03OExjTDNYUlJyQUFiWERJSkJtZGF1NjI4K0Z4OTUzNWlOdnVX?=
 =?utf-8?B?M2VPcTY2UzhEcnRlOGxhQ1JJZjJIS1crY3Buc2F3MFlPYWhydjlFSGpEODIx?=
 =?utf-8?B?RHV3MUlqcUlHUmsxWHN1bmJ6STcrampKRUcyS1BMV2szOXBQdEk1dHppK0Y5?=
 =?utf-8?B?S3UwWjdxY01BMzM1S21hRlhoclhNUjY3K0dVVE5Qa3ZGa1lXMXp0K3I2c2h4?=
 =?utf-8?B?T3dqZC9md2xkWmJWZ2hYSFZZdU1QZ0RINjViRTBRSk1MNE96UEsyQVJsYlJR?=
 =?utf-8?B?MjlNczFOQk92NGxUZlR3STlYQjBrbGRwdWlOY3NHRGVHS2IxZ055NUx2Y2o1?=
 =?utf-8?B?VHVrZStIQ2NxL2hKdUdpMzF1R2xYLzJNeXVTNUJoNnlvTEhUbU1uTW5QbGN2?=
 =?utf-8?B?MGw3cWlpKzNGU0tHQjFjL1pUSzVJMFdEOEpPaHU4SjdGWUVVaEJQTzN1dEEz?=
 =?utf-8?B?L3k2Y1lCeHlYUWQvY0dRVUU1alM5Qi9hVzBmN0xiYUpNd1AwcUZGbHpnYWI4?=
 =?utf-8?B?WWNTMFZ6a3h3RWtsL2lRZ0xXWXRMYzVXMHJ6VVFqdHl2ODIxQVpzZVV5cDYy?=
 =?utf-8?B?ZGE2czVoSHllY0tpbkdZMVdhaG9VU2ViQkRMZnFWazJ1ZENSeW50QVhVVlRs?=
 =?utf-8?B?bEdKaW9iMmtXTjU2NHVBc2pCZG04VDVvZ21tREFJbnFQRG45b0FlaWxXRGFQ?=
 =?utf-8?B?WXQ5aVFBR3Fta2NRNjZ3RVR4Z3R0cEc1ejl3Z1VrTGxtOGJJOGNtS1hIRnpL?=
 =?utf-8?B?d0IwcVMzTjFwTU5zMFo1a29td0daaG4vRUlGcThNMXdDNWVsb29HT1NvM3RG?=
 =?utf-8?B?OVRKbVVubCtYVXhaaGJFZXJMdU05MnhlVFFwOC85a2ova1g4K3puTEJJRDBG?=
 =?utf-8?B?dW02ZHZIaHZpT2Y0Tzc5eEczaTIvbEtRV2ZweXo0OXB6NFN2cWwvWDErR3V2?=
 =?utf-8?B?Ujdjb3RTU1J5aWEzbmI2bDVvMURFQ2tNNDBsdERSRkpjazJhS1VKSXNrUnJm?=
 =?utf-8?B?TVoxMEpONmVUMkYvOE9yZEpyVnpEaDlYUE5pZFQ0QVZYdGVCa0ZIbXJhQkJW?=
 =?utf-8?B?QURpeVMxTXpjVjdjZlF4cmVrZWlPZXo2OUs0M1A2VVU1dEFLU3lTdHEwM3F0?=
 =?utf-8?B?NjMzdE1zOVRiU21SREQ3ZzBrZGpsYkhwM3d2d1pjNUZ4Sm1peGZNYzl2b1lv?=
 =?utf-8?B?VHQ2Z0E3TWtrdlNCcTNtU09qMWlrT09TeFlkTUxlTncvendkTnVOUGQwNE1I?=
 =?utf-8?B?eTUwaitwNWJBUldLODJCM0Zsekc4RzZvUzVsaTgzcXk3d09QUE1VbENkdWpI?=
 =?utf-8?B?citiRDMrdjVYanROUlRJRlFEK2gycnR2eVliOHg5UWZySHBrNlBxemtqOGpP?=
 =?utf-8?B?K21vN3d4K3VGNERXTXh4YjdEb1hqcnNGWnRhYWtoajVSclFZNmlTNyt3ekRq?=
 =?utf-8?B?enI0L1U0ek4vWitaYldGR3M4UUtLOE1FMXR2NGhhaW02bGc5WXZoUnFNcWNJ?=
 =?utf-8?B?SnIraEM4T3ZHdXlLbG84dEwwb2pONXkvNXlYdHNmMU9GMXY2WENZV2NIOFVI?=
 =?utf-8?B?bGg2a2lnT3pxRG9GNmVIU0FWZlc2UEtlVFo2RDA2UGF5WE80dU81UXpyM0o4?=
 =?utf-8?B?YTNMNDVuOFp3SmVkOTNKbmI3dlBKdWYwajdjYVpJSWQ0S1RhUGttSHN5WTRo?=
 =?utf-8?B?SGJzUi9ncHl6M0RQc09lL3dNRXdsRDU1eXF6c0JiWTNCMjV4UEdITkUyaXpU?=
 =?utf-8?Q?qxLoz660Vimr3k8I7JKG89F3SvFZGACh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MExsZlJTTHMvNGhrM01QVGhTK3N4K3ZKUVZjblJHSVRRMUphK3VUemJNaDVF?=
 =?utf-8?B?VnJmSG92QUVpV0QwbEJGNWZ5MGpmZk5xS3F6UVk0dEVPT1lqVUg4RlpSUjMz?=
 =?utf-8?B?N0lya1RsRlFSNjNMYUNEUUNoVVBsTG1PSXY0ZnNVenFwOTJ6MEQwMTQrTnZX?=
 =?utf-8?B?QjlhWDVOUUZ4VERXMUMwRGhlZWs2cXA3V0xzdDMwNWxNM3NpbDQrR2VCRHdr?=
 =?utf-8?B?Y2pGSGQzd2x4VytKWjZtdlBISXZYOUNaTFJyaDN2V3FOTS9tQWowazZIY01n?=
 =?utf-8?B?S2tQTVpkaG9mRWpGWVRPUnBBSXh0MUlyRzRpdjNMTVRHbjQzTFBQUUZOSUEy?=
 =?utf-8?B?Nlkyb0tWNW1RSDFiQmhySFNnWHRvOUVQMlVPLzNYU1BnSHNOQ0liWXhWcVBt?=
 =?utf-8?B?MFJsTkxyT084TWx3SXV3bGZhQml1NVk1bW5XdmZrb0IrdHUvMnJaVHR1Ni90?=
 =?utf-8?B?KzBnNDh6YnVWa0FhZjZaTGtNUk1mekk5djBYb3l0bk1FZFh0a3JwQmozeFdC?=
 =?utf-8?B?UFNtVXFFbUE2aWlrOUh0NW9ybUxwZlNPQTVzZmZTSTJVOExvRk94TksvUlR4?=
 =?utf-8?B?d3Z3Vk9CVnpJczZlbEVlay93bjVmRTZiYlVIb2dJZ1FMWkEyOXlVUlVWcFBT?=
 =?utf-8?B?U0p6UXdMZThQS1ZzWFIvTlhGZkd6ckdsOGgzd0dmbFJNeEZWam45NE03Z3p3?=
 =?utf-8?B?QnI0cytnRVhsdm1KY2VYQ0JjOTJJMTBhWTNCMTBUSnNmNmVlTHVHbmhhNENN?=
 =?utf-8?B?WTNWdHNjNSswZFkzY0phVkU0N3d4L21GdmhsWHZnVFdtN3MyQUwvVit2dm9M?=
 =?utf-8?B?V2NuVkNQQjJFOENlMjQ0NDJQWWRRbG1VMUJ0VEVUQjRHVk4vMzByTjBKRTBR?=
 =?utf-8?B?VjBQdjd0SGl6c2RBREtMZ3RwaXdDN3NRdmdmVGd4ZVUweFZMNUxuNEZza2lQ?=
 =?utf-8?B?eGc1dEhCZTdrd1BVa1dtM20yQk5LUk1KcDdhbXhqa2FYMVV4OEtFOFFYaDZ1?=
 =?utf-8?B?Rks4TGJLajNPMDJ6OTk3dnp3bnNYQ1BQR0lkdzhIWDZ5OGNGcVlXTVpTZVdP?=
 =?utf-8?B?RGo5NVcySi9KVUFjM1VJUkdDbEN5dllRcmJBS3laaVVYSnZ1UlJzTkx0ZnJT?=
 =?utf-8?B?bWo2Z3Rncm1rWVdsWmxuNXhQZDgyZ0hJUTh6UlNlOTdqR2tvaElRd1kxbGNQ?=
 =?utf-8?B?U0ZDeWZoMFIyaTl6WC80WlY1U0h6R2lKbkViNlFGS0NDSVFSTTFKRVYrU3Zi?=
 =?utf-8?B?SjRYRzZrOTJhU2pwb2dSK0laZSt0U2tuV0RRSm1Rd1pJR0E0MWlTMXkwa05J?=
 =?utf-8?B?OFBUWmdCazd5NWdVei96cXpXc0Z1M0tYWklORVVPQUpjK2dFWU5BOFcwSnJj?=
 =?utf-8?B?MDNZdVNua3NKanRIOWRHVHlEZVQzMmRvRTNqSHROUWN4OUdQMC95TWxtSjdw?=
 =?utf-8?B?RkJyWE8wWk0ra0tvLzhTbmFtMFNYczRReFk2RGQ1T0FWbklZVkxEeDRlelNG?=
 =?utf-8?B?L0pHNHd1UjRCbHEvYzFOY2c0YVFINnVCU3FrL0J6NEQ2Ynl4T1pURE9OL3o4?=
 =?utf-8?B?U1U5bjhKK0Q2RUloSDR0ZW5tYUc0RVQ3NXJtck9RYVQ2YmtLcmJiSjZmNnJm?=
 =?utf-8?B?cFZNa29kUEpvOEpEd1hYTEZNbUM4L3d5dTBaVzEzL2NaU2pyMVR4MGlVNGlq?=
 =?utf-8?B?OU9qR3prUGZHSkk4T0Zoa3ROUmdNSndud1lpVldpeTNtTW1vMkFORFI1akF0?=
 =?utf-8?B?THBqWnhJR3kyVjE3TmVLd0JTOFhpLzhnbHQwc3RwdGp0eGNuRDJPek1yRStD?=
 =?utf-8?B?TjkxOE1EL0Y4SG9qekdpelc0dG92SHdEZ2M0dTBBRFRXVU5NS2NLd2syVzFJ?=
 =?utf-8?B?VlAyRG9JUmk0Q25kWEkwZHZFOWJ0OUJXSTRGMzlNb2k2NU8wVmVTYVg3Z1RD?=
 =?utf-8?B?akk3QkdLdmxLZS9rT0puTndOODVkSFdYSnhyWCs1ZFJQOEpKWDJzT0dFbm1r?=
 =?utf-8?B?Z2FkM2ZKU1dKeXBUYTlMK2FSR3UwUGJnL0lFWDJ6cmMyQXUxMVNUZU05N01F?=
 =?utf-8?B?REVzYXJwekFsWXVISVJBbjI2NzgySWhTVUNPNG5lSElIdTJXM291WU5mT09Q?=
 =?utf-8?B?TGpoQzV5UjNGYkZ4TTA5dkEvMDFIVUpLSVJhNjQvU24yVEYwQmZSY0JhMlZu?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edfb84e9-1fb0-4d76-b2e0-08de2e82a8aa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:33:04.7685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HCQPQ80EKnkNuChr2QCfAvVWXZ2qn2scjZOaN1SgmaSSwGyvWKvO43nn/+KSM+sMvdLHu39G2nXjsDxoU5qgao5Jnaa9sLJsVn5ZFAylVCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
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


On 11/27/2025 2:46 PM, Mitul Golani wrote:
> Track dc balance flip count with params per crtc. Increment
> DC Balance Flip count before every flip to indicate DMC
> firmware about new flip occurrence which needs to be adjusted
> for dc balancing. This is tracked separately from legacy
> FLIP_COUNT register also Reset DC balance flip count value
> while disabling VRR adaptive mode, this is to start with
> fresh counts when VRR adaptive refresh mode is triggered again.
>
> --v2:
> - Call during intel_update_crtc.(Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c      |  3 +++
>   .../gpu/drm/i915/display/intel_display_types.h    |  4 ++++
>   drivers/gpu/drm/i915/display/intel_vrr.c          | 15 +++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h          |  2 ++
>   4 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d41ab965c013..1269f841d48b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6863,6 +6863,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>   		intel_crtc_update_active_timings(new_crtc_state,
>   						 new_crtc_state->vrr.enable);
>   
> +	if (new_crtc_state->vrr.dc_balance.enable)
> +		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
> +
>   	/*
>   	 * We usually enable FIFO underrun interrupts as part of the
>   	 * CRTC enable sequence during modesets.  But when we inherit a
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8eb0ace7d918..740c5fc9fe1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1501,6 +1501,10 @@ struct intel_crtc {
>   		struct intel_link_m_n m_n, m2_n2;
>   	} drrs;
>   
> +	struct {
> +		u64 flip_count;
> +	} dc_balance;
> +
>   	int scanline_offset;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ff65c1167e1b..411ae5da3824 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -632,6 +632,20 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +void
> +intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe),
> +		       ++crtc->dc_balance.flip_count);
> +}
> +
>   void
>   intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
>   		    struct intel_crtc *crtc)
> @@ -642,6 +656,7 @@ intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state,
>   	if (!old_crtc_state->vrr.dc_balance.enable)
>   		return;
>   
> +	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
>   	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index d40ed5504180..bedcc8c4bff2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -29,6 +29,8 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state);
>   void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>   			       const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
> +					struct intel_crtc *crtc);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
