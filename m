Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH4MBo2c+GmdxAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 15:18:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 493B24BDBA2
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 15:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A988510E6E3;
	Mon,  4 May 2026 13:18:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d8+p8eBW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6223510E6E2;
 Mon,  4 May 2026 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777900680; x=1809436680;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=792zphbnGHneOn6Fwbwwu9VkjctNKVUoLEnQgH8desY=;
 b=d8+p8eBWWsdfB6laR8t/WX+9NlK4Y3xlATLxuWOnkq2VBEHbC5/CcxGG
 YfCghHTXzRAeIgcgwrDw3yIo82oeLDu+rzn1lU+Nn/RqIbpJc+wyFfKHJ
 MDZOP3C0/ZWkxz70IzGufJcLmC+QHijppZINjMJLDanwkjINwOyRxYyMj
 iKUCYdNBUCrlOmzwp1iDZSXyH/pdYOymgtgh8UhKyNJVzeA9T3QQSMjpC
 ajQneZyUUBrtgfAry6PT2v3my8sKAE68OzPm2MjJUkrrzdF6dVrbYVo0Z
 Ht2qBe0HJmDEx662y6bgo2NUp7101ULH7Zqu2K5PMxFrteipP2rfZWllQ Q==;
X-CSE-ConnectionGUID: kJpPviQ9TGWm2N0JmI5djw==
X-CSE-MsgGUID: luHJvwSQT+KlFGPzJjoUfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78686191"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78686191"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:17:59 -0700
X-CSE-ConnectionGUID: fbLNQWkvRQyuxcQ+tLzhpw==
X-CSE-MsgGUID: 8qhZJHWPQ6aJ9rK2DYNptQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="235765351"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:18:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:17:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 06:17:58 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:17:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GUZyNlqNMYKHASB0txfuhTS0SHEiHQC8dTYVfDHtqGPEyZZ+wTjWo1onUCCLXyGanYaly4qeMIXYNmgeRQqqNUVy0MVX1De3D95sIPyxvYJX/YAO+iIknZhCBUwyX3KSUM8eT8yW5bXraIeULP2GbKcUPQiluZCP4cKORlnd98Glqlxb9WqS4k8s4kYkKZkRBeZYchBonGssOXUw6qhdgf2DiN6GxLSQ5T/rhghXqg9QlmC/fA3rh9EVFO1+x3oYnsUjuqkCrLvkiqE0yw+CKUQjocevkUDLnJgstKJHD2aUWIgPxoDjdILLC1c4XoXgyEIDhWJeS27N0/wUg5Ruig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ucz1tsUmi8uT0L2C9TY+73v1tsbIbfPdO8uvTFqodg=;
 b=ZiV1pw2YdlBFkaB5+TtEwMw221ckZiimf2CO6pVaS9WwMCurlwtlPtko7eRU2mIIRUIwpZpUhSae2hwAjoApl1WwKoqOSHJRHCD/WzeG9QeyMFE4SH6DYtlX6Ja0kX8GwHHuupBWkRdKTmnE6vNnYVHcrXnwZrDQrJ8jvPLmo71md5CdSqHz0bxlE7Gya9kVHXvEIbKQPa3bXERTjC5rSRxgoV8y7e/4ynJQeZPrXoch7wFOb+9kwn20taQX/AJ/WgDZFF76UsYJEQbwUSaL6vnGPoxyrF1Dia2Nonm1nlGJh8cZv02l3tvXx5cgVBOi06GlNFpqQuyvlUnRFeenJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8725.namprd11.prod.outlook.com (2603:10b6:408:21e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 13:17:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 13:17:53 +0000
Message-ID: <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
Date: Mon, 4 May 2026 18:47:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com> <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
Content-Language: en-US
In-Reply-To: <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0044.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8725:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c116861-1066-4210-ac28-08dea9df8c53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: k0xHHRCnG/3wjaC1ZizE4shreq8Yxw+oEeVwAtOgtrgZoIRfTYDHPvyVhGFxkxgv3IgKO3PthsZ2aktAbtXeUC20vjhIQSgH6Ce3E22qcFkJ84ZzOIqvt1WasDDQQb5MwUSGZV/zUs/5TGoEm8A5k/cJTtKBx+lQr60F4v/pi5yP/SnoNfVNO7208VNfkiUiRr6VBRINodcXWhwI0R8Tl3KuBkIjKL9IVwfRoQzSmPM9jCsJNjdr+9FqquqJWI69SW5vVso4cwlfE4yTCoeuwtzZnCqUhJK79JJqTYVgZgzRyG+2l8h+5Ihw0M5GwJQaW18/fKKDstQwV5L5xAZ2DE8/Bbc5PMbnmKfLH3344yKcF2toQsD8FDz6BaIh3JatdKE2jmevbvXQD3GNsVm9fIhsL6zBMnHLfaDXkU/J1UyfpRJyA99NzK/PaPjuUYNjw3vRgOeVtP+x51p7OedCDuTKVZ51575EKYUo0t0wdp3KoGHHIyteJm7Pu0UbVB65pERwHinjL2vH5hJooGbAKqBXM1GolMIBKkyWIE9JHOxg+/c/5hjDItw3Aecvj5iIuakOqOcAnDXpulqoU0fndOFFY5Qj+W/39CVySf5cTp4cnc+h0mAJYnR37Zq1noKQQFe/2oH4iCctLhj/IVGhFqAPMPceELD3KYz8NpBBm4V+yaFi4f0D6QL6TXHzqZcM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0c1MWhvZmhxU2M0K0Nkak5kSTNBekFqOGJzQUhWSFJ0Y09BZnZXOXNhK0Ni?=
 =?utf-8?B?dXcxenlqanBwU05nK205NlQ2Q25CWWNraTNieEJJTkpIN1VZUG9oSjRpTlkv?=
 =?utf-8?B?S2xVWEhjSjNjNkhkREFnQk1FQjRmTlYvK1dOSlNSMzJvaUNBRDRKMmwzVVBX?=
 =?utf-8?B?L3JxbFNDMlZZeUloSXBUNG00UkRycWJ6ME1xMlpPR0p2Rm9JQXFHRkUydzJl?=
 =?utf-8?B?WWFnR0ZqTStLT2F3aUFHZVRqM3VJN3RUTytRVGQ1WmY1SFBxSGc2aGY4aFJs?=
 =?utf-8?B?dmtmWGhPZjZ2UUV0bHhYWDRGQmVselYvTjBDclFVNDZmN2VKZndtbGd4aFFh?=
 =?utf-8?B?a05NdnZIVEZFQUxTQk9BSG8ySURHd3oxRGRxLzE2ZjVORjhZY2ZQRStaOFc0?=
 =?utf-8?B?Z21oMGhwcHFIb283dDhrSTBxNk5pakFucGVLbXhlRHh2RVdrMDljK2dDUnNL?=
 =?utf-8?B?S0xBRDBmTnNSdU1zS1Q5NU56U05IdUNjY1BaUExxaEFwZW05T2VWcm5nRHM3?=
 =?utf-8?B?NHNKMzM0TTNXWkI0ZEd5RGhwVUdxeWoyT0RUNHptb3VrbDBReU0vVTlJTk5T?=
 =?utf-8?B?MnhYL1BrQ3dHemVzUm1WWXhKR3pBZ25UTUltcmVWeng3Skh3c1NzUGVnbmk0?=
 =?utf-8?B?enVuQzM3RkUvMnM5MjljN2FYS3YraWd3VWZDRWRzQldQZWZnQ2VIN1VRSkh2?=
 =?utf-8?B?NnNackFaVE56dXBGMVVYdDlwV1JkcVM0RTBzTjBwd0swL0tNT2pPSjVkNkM1?=
 =?utf-8?B?L2daOVBubHJsQUt2M3BCMzhLL0c0MHczY2EvMlFISU9pYnB5Q1I5MHBqVzYz?=
 =?utf-8?B?cU4va1cwNk15c0FUaEZCODJSTmw2SzNTSXpaNGVoalFtWnVwWXhFeGVyVTNn?=
 =?utf-8?B?WWNtd2FxREFrTEFZQk9ZTTZjdGVIck5tM2lOeTNqUHpwVDJkVnBOLzVyV3h2?=
 =?utf-8?B?U2dMYTR1VUNkSTJ0ZG8wd2dSeGpEZGlka25SRmRyaVRNcDJraFl1OEVMTllx?=
 =?utf-8?B?OXVGQldXTDBaLzZQMHh0emt3RUlkdmptdWNyaER3ME9zRCtWQ2FLM1JvMTgy?=
 =?utf-8?B?YVVDQzFxdnV6UE9sQ1FES1Z2eGRnMUpUOGZTSDdHckhDNUFPUHlxMzlyZlls?=
 =?utf-8?B?V3IwSm1UUUtObmNYUUEyejlSa1ZucStPdXE2R1VkaVovN0FMVVBjaFdNQ3k5?=
 =?utf-8?B?WHE3QlMzODk1MFlzNHVTczlHU0RXdmhFN1FEMlhjVUJId3hSWnVxY05PS1Mw?=
 =?utf-8?B?Sk1BZmplQ2tSNGFJTjZ4QUQ2T2FBUCtzQndnS2lwSjlVRFk0eGFvNWt5Yi9w?=
 =?utf-8?B?TTRCUk9DQzcyZWFpOVdQdFpQaXIvMndyWGxFWFgxQTg4YlpYV3ZaMTViRGd1?=
 =?utf-8?B?dmM3TXZmZGh4UmRrbC9USHdwQlVaeU5RNnFwTkNCcjBvV0hqdXJtaVhEWmIr?=
 =?utf-8?B?dUV2L3pMazhFSVhyY1A4WnY0akt4V0ZqZ3NUSXFiNEViWGJlSytlb3g5blBV?=
 =?utf-8?B?aEFMTEozaE9sM3E1SllNMDM4dHd1QmJXb3pzQS9YTklON1ROd2VQTFNtN05x?=
 =?utf-8?B?a0FmNVBVTXljbmJhNWYrb0xuOXVIK3IreStiZGRwWUtRemR4T05qUmFGZUlL?=
 =?utf-8?B?WllwYVJDdGNlUW0veTFLMkt1YUpvSE1uSENiMWkvZzZ4V3V2dTdZT2ZTMGUy?=
 =?utf-8?B?K2R2THhaVW1IRVRNMzl6VnBFVUg3TDZzUC9mR3FmZm04RGJ6WXg1YTlMM1Y0?=
 =?utf-8?B?TUVQYVlTK05CWXV5QmJZQ0JxeFJObmVzT3IyOUh4N3RvUlIySEg2S29TQ0pY?=
 =?utf-8?B?ak9EY05zL3pCQnVXMkFxMG8raVRVZmNRS01la05kZHB2SDE3TFRSNkFWRHln?=
 =?utf-8?B?L2dKTmFLVFZkTzdRYThzaEVRN085bklRQ0VrMng2RDNCTUxORy9EUEFoYnQ3?=
 =?utf-8?B?VlFPeERnb21ybWVRQmRNWlRxUGR0ZTV2NVI4U1B0MVh5SDMwblY4VWFZaVpQ?=
 =?utf-8?B?UnVZNWxlTTZTWVZOTFd5alhycUoreWRCOUkvdHh2Yy93U2psMkQ4Z2pUcDFH?=
 =?utf-8?B?K0VyZUJ1VzlHc1dkd0orRUwvd3FMOEpZT24rM0F5MFF0NzU4cCtFVUtsdTRH?=
 =?utf-8?B?TFAyOVpEZUIzUkRDL092ejBRTEFEb0Z2VmtxVThKMFpoUFN4c2Z0VStUUjFD?=
 =?utf-8?B?MGEyUVFTMno5VEg0OG9nWFBwaWgxamFxeS8zY1NtZjFGZ3lMaFhqdy8yWEpl?=
 =?utf-8?B?L2EzV3ZIRnNON0pMVlNtYm9DY296VGs1NmkzenRnbElpbWlJcjNKUXo3K2Z0?=
 =?utf-8?B?WjV0bHNDa3VuRkpZWmE5ZC9RVzY0SU5hU0pOdG9oenBoVTIrUkhIRjVmQnpW?=
 =?utf-8?Q?zXxTE/FLrbe73e/4=3D?=
X-Exchange-RoutingPolicyChecked: EvmGyMW5NU8hRp8LagkEzDi7s4RToM23zzSWL33ZK4r+GWXAOjxg2QhH09r2QNIp+1sW6yr8ZfevAHRtRXGM1ZpwcQKgBakODEn1Bf6WVA7bSsC3Ydyipta+fxOZw2BYCVSfrKxjLt9zeiUA8teTaJIqLU47X/gZ3c38r1+2O214Mvhg0PD/A/9pPmjKMIcAmilXGBoXpD5gEc1jjGibLirlWSU43jvCE+ofWm6AMyVkqiVVfmOASsGtOpbOg3bnoZYR98wELOt0fJOc/76/FkO3QHDMN5ZyMiIgn74OX8CYPjyPssnwJKytC8byNvTTKMTXy1t8qnr7s2hCiqgtmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c116861-1066-4210-ac28-08dea9df8c53
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 13:17:53.8427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HxyTj3HkFgv20mKp8SYWO3s1mt818zrYLVF99pdnvH/Yeej/WpTb2rqHjucYz54YI9q0YCk0eAQID/e8iyMor7ILid9Ljj78aNDMAQdFUww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8725
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
X-Rspamd-Queue-Id: 493B24BDBA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
>
> On 4/29/2026 5:44 PM, Ville Syrjälä wrote:
>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
>>> intel_panel_fixed_mode() intends to choose a fixed mode at or above the
>>> requested refresh rate for VRR panels, so the requested refresh can be
>>> reached by extending vblank.
>>>
>>> This is called in compute config to find the 'best' fixed mode for a
>>> requested mode and also called during mode valid phase to prune the
>>> unsupported fixed modes.
>>>
>>> For Non-VRR panels there is no issue:
>>> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESET
>>>    flag) with a custom mode, the intel_panel_fixed_mode() gives the 
>>> mode
>>>    with refresh rate nearest to the requested mode.
>>> - Seamless switch to a lower mode is only possible if the platform has
>>>    support for Double buffered MN and the sink is Seamless-DRRS 
>>> capable.
>>>    In this case the user sets a lower refresh rate mode and doesn't set
>>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode() returns
>>>    again the fixed mode whose refresh rate is nearest to the requested
>>>    mode.
>>> - Since Duble buffered MN is not supported on LNL+, the seamless switch
>>>    is not possible for such panels from LNL+.
>>>
>>> For VRR panels the current logic has some issues:
>>> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed 
>>> mode
>>>    at or above the requested refresh rate so the requested refresh 
>>> can be
>>>    reached by extending vblank.
>>> - However, as per the current logic the helper can return a lower 
>>> refresh
>>>    rate mode, if the lower refresh rate mode is first in the list of 
>>> fixed
>>>    mode. Later, if the selected fixed mode's refresh rate < the 
>>> requested
>>>    mode's refresh rate, then the requested rate is matched by extending
>>>    the vblank.
>>> - In case of a full modeset request with a custom mode this is not a
>>>    problem. But for the seamless switch features like LRR (Lower 
>>> Refresh
>>>    Rate) and the Seamless-DRRS this creates a problem as this 
>>> results in
>>>    change in vsync_start/end and resulting in a full modeset.
>>> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is not
>>>    supported on LNL+, but for VRR panels, the vblank can be extended
>>>    similar to LRR case. But due to the above mentioned problem in the
>>>    intel_panel_fixed_mode() this also results in full modeset.
>>>
>>> To solve these problems for the VRR panels, identify if the user 
>>> wants a
>>> full modeset or expects seamless switch. If seamless switch to a lower
>>> mode is desired, make intel_panel_fixed_mode() return the highest
>>> refresh rate mode, provided the requested rate is in vrr range. This
>>> will then be modified to extend the vblank to provide the desired
>>> refresh rate.
>>>
>>> This is particularly needed for DRRS panels on platforms without the
>>> double buffered M/N support (display version 20+), where seamless clock
>>> changes are not possible.
>>>
>>> To understand the user requirement for full modeset/seamless switch, 
>>> the
>>> intel_panel_fixed_mode() and intel_panel_compute_config() need 
>>> access to
>>> the connector state to check the allow_modeset flag.
>>>
>>> Add a nullable conn_state parameter to both. The mode_valid callers 
>>> pass
>>> NULL since they have no atomic state and the compute_config callers 
>>> pass
>>> their conn_state.
>>>
>>> Also remove the VRR check from is_best_fixed_mode() since the 
>>> selection is
>>> handled upfront in intel_panel_fixed_mode().
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>>>   drivers/gpu/drm/i915/display/intel_panel.c | 35 
>>> +++++++++++-----------
>>>   drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>>>   drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>>>   drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>>>   9 files changed, 37 insertions(+), 34 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c 
>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> index afbaa0465842..1efe81404d01 100644
>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct 
>>> intel_encoder *encoder,
>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>   -    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode);
>>> +    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode, conn_state);
>>>       if (ret)
>>>           return ret;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 35b8fb5740aa..f014ce28e69f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector 
>>> *_connector,
>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>>           return MODE_H_ILLEGAL;
>>>   -    fixed_mode = intel_panel_fixed_mode(connector, mode);
>>> +    fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>>           status = intel_panel_mode_valid(connector, mode);
>>>           if (status != MODE_OK)
>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder 
>>> *encoder,
>>>       struct intel_connector *connector = intel_dp->attached_connector;
>>>       int ret = 0, link_bpp_x16;
>>>   -    fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>>> +    fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode, 
>>> conn_state);
>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>> -        ret = intel_panel_compute_config(connector, adjusted_mode);
>>> +        ret = intel_panel_compute_config(connector, adjusted_mode, 
>>> conn_state);
>>>           if (ret)
>>>               return ret;
>>>       }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c 
>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>>> index 9005c1f5d857..a480bb79dca7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>>> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct 
>>> drm_connector *connector,
>>>       struct intel_display *display = to_intel_display(connector->dev);
>>>       struct intel_connector *intel_connector = 
>>> to_intel_connector(connector);
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(intel_connector, mode);
>>> +        intel_panel_fixed_mode(intel_connector, mode, NULL);
>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>>>       enum drm_mode_status status;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c 
>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>>> index 405b33aca9dd..0ec25d895777 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector 
>>> *_connector,
>>>       struct intel_connector *connector = 
>>> to_intel_connector(_connector);
>>>       struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, mode);
>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>>>       int target_clock = mode->clock;
>>>       enum drm_mode_status status;
>>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct 
>>> intel_encoder *encoder,
>>>       struct intel_connector *connector = 
>>> to_intel_connector(conn_state->connector);
>>>       struct drm_display_mode *adjusted_mode = 
>>> &pipe_config->hw.adjusted_mode;
>>>       const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
>>> + intel_panel_fixed_mode(intel_dvo->attached_connector, 
>>> adjusted_mode, conn_state);
>>>         /*
>>>        * If we have timings from the BIOS for the panel, put them in
>>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct 
>>> intel_encoder *encoder,
>>>       if (fixed_mode) {
>>>           int ret;
>>>   -        ret = intel_panel_compute_config(connector, adjusted_mode);
>>> +        ret = intel_panel_compute_config(connector, adjusted_mode, 
>>> conn_state);
>>>           if (ret)
>>>               return ret;
>>>       }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c 
>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> index cc6d4bfcff10..2e30bc3f1e62 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector 
>>> *_connector,
>>>       struct intel_display *display = 
>>> to_intel_display(_connector->dev);
>>>       struct intel_connector *connector = 
>>> to_intel_connector(_connector);
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, mode);
>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>       int max_pixclk = display->cdclk.max_dotclk_freq;
>>>       enum drm_mode_status status;
>>>   @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct 
>>> intel_encoder *encoder,
>>>        * with the panel scaling set up to source from the H/VDisplay
>>>        * of the original mode.
>>>        */
>>> -    ret = intel_panel_compute_config(connector, adjusted_mode);
>>> +    ret = intel_panel_compute_config(connector, adjusted_mode, 
>>> conn_state);
>>>       if (ret)
>>>           return ret;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c 
>>> b/drivers/gpu/drm/i915/display/intel_panel.c
>>> index 5e918ee0c8ea..65d017371d78 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct 
>>> intel_connector *connector)
>>>                       struct drm_display_mode, head);
>>>   }
>>>   -static bool is_best_fixed_mode(struct intel_connector *connector,
>>> -                   int vrefresh, int fixed_mode_vrefresh,
>>> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
>>>                      const struct drm_display_mode *best_mode)
>>>   {
>>>       /* we want to always return something */
>>>       if (!best_mode)
>>>           return true;
>>>   -    /*
>>> -     * With VRR always pick a mode with equal/higher than requested
>>> -     * vrefresh, which we can then reduce to match the requested
>>> -     * vrefresh by extending the vblank length.
>>> -     */
>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
>>> -        intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>>> -        fixed_mode_vrefresh < vrefresh)
>>> -        return false;
>>> -
>>>       /* pick the fixed_mode that is closest in terms of vrefresh */
>>>       return abs(fixed_mode_vrefresh - vrefresh) <
>>>           abs(drm_mode_vrefresh(best_mode) - vrefresh);
>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct 
>>> intel_connector *connector,
>>>     const struct drm_display_mode *
>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>>> -               const struct drm_display_mode *mode)
>>> +               const struct drm_display_mode *mode,
>>> +               const struct drm_connector_state *conn_state)
>>>   {
>>>       const struct drm_display_mode *fixed_mode, *best_mode = NULL;
>>>       int vrefresh = drm_mode_vrefresh(mode);
>>>   +    /*
>>> +     * With VRR always pick the highest refresh rate mode,
>>> +     * which we can then reduce to match the requested
>>> +     * vrefresh by extending the vblank length.
>>> +     */
>>> +    if (conn_state && !conn_state->state->allow_modeset &&
>> The foo_state->state pointer should never be used. If you need the full
>> atomic state then plumb it through from the top.
>
> Hmm noted.
>
>
>>
>>> +        intel_vrr_is_capable(connector) &&
>>> +        intel_vrr_is_in_range(connector, vrefresh))
>>> +        return intel_panel_highest_vrefresh_mode(connector);
>> What we want is the fixed mode that matches the current adjusted mode
>> exactly except for vtotal, and I think we also want to maintain the
>> vsync pulse location relative to vtotal.
>
> Oh alright. I was thinking the issue is in the best mode logic which 
> is resulting in lower mode getting picked when we wanted a higher mode 
> as best fixed mode.
>
> I was under the impression that since the vsync start/end of lower is 
> not the same with the higher mode and since this cannot be modified on 
> the fly, it results in full modeset.
>
> However, as you said, vsync start/end can be modified indeed the 
> problem becomes:
>
> - we are not scaling the vsync start/end similar to what we are doing 
> for vtotal.
> - even if we do that, we need to remove the check for vsync start/end 
> for fastboot.
>
> Another consideration is that is the vsync_start should be inside the 
> vrr guardband, but I think if the vsync_start scales up then it will 
> still be inside the guardband so we should be covered.
>
>
>>
>> We should in fact fix the vsync_start/end mess first.
>
> You mean the existing vsync_start/end change due to AS SDP thing? Or 
> you mean the above mentioned scaling up?
>
>
>> We need to add
>> TRANS_VSYNC handling to the LRR codepaths and allow that to change
>> during fastsets. And intel_panel_compute_config() needs to preserve
>> the vtotal-vsync distance when adjusting vtotal. I think that should
>> all be fine for DP since it doesn't really use TRANS_VSYNC for
>> anything.
>
> Hmm I think I got some direction here. Thanks for making it clearer.


Hi Ville,

Going through the Bspec, I have a query on the TRANS_VSYNC part.

For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I 
understand, this is no more used with VRR timing generator, instead 
TRANS_VRR_VSYNC is used.
So we can avoid reading/writing it completely for platforms that support 
VRR Timing Generator.

But for platforms using the legacy timing generator, BSpec says 
TRANS_VSYNC should not be changed while transcoder/port are enabled.
Given that, should we treat TRANS_VSYNC updates as modeset-only on 
legacy TG platforms, and only allow the fastset path where VRR TG is 
always used?

Just wanted to make sure I’m interpreting your suggestion correctly 
before changing the fastset checks.

Thanks,
Ankit


>
>
> Regards,
>
> Ankit
>
>>
>> +
>>>       list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, 
>>> head) {
>>>           int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>>>   -        if (is_best_fixed_mode(connector, vrefresh,
>>> +        if (is_best_fixed_mode(vrefresh,
>>>                          fixed_mode_vrefresh, best_mode))
>>>               best_mode = fixed_mode;
>>>       }
>>> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct 
>>> intel_connector *connector)
>>>   }
>>>     int intel_panel_compute_config(struct intel_connector *connector,
>>> -                   struct drm_display_mode *adjusted_mode)
>>> +                   struct drm_display_mode *adjusted_mode,
>>> +                   const struct drm_connector_state *conn_state)
>>>   {
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, adjusted_mode);
>>> +        intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>>>       int vrefresh, fixed_mode_vrefresh;
>>>       bool is_vrr;
>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector 
>>> *connector,
>>>                  const struct drm_display_mode *mode)
>>>   {
>>>       const struct drm_display_mode *fixed_mode =
>>> -        intel_panel_fixed_mode(connector, mode);
>>> +        intel_panel_fixed_mode(connector, mode, NULL);
>>>         if (!fixed_mode)
>>>           return MODE_OK;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h 
>>> b/drivers/gpu/drm/i915/display/intel_panel.h
>>> index 2f7a317995ea..c1189a20c8b2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>>>   intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>>>   const struct drm_display_mode *
>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>>> -               const struct drm_display_mode *mode);
>>> +               const struct drm_display_mode *mode,
>>> +               const struct drm_connector_state *conn_state);
>>>   const struct drm_display_mode *
>>>   intel_panel_downclock_mode(struct intel_connector *connector,
>>>                  const struct drm_display_mode *adjusted_mode);
>>> @@ -47,7 +48,8 @@ enum drm_mode_status
>>>   intel_panel_mode_valid(struct intel_connector *connector,
>>>                  const struct drm_display_mode *mode);
>>>   int intel_panel_compute_config(struct intel_connector *connector,
>>> -                   struct drm_display_mode *adjusted_mode);
>>> +                   struct drm_display_mode *adjusted_mode,
>>> +                   const struct drm_connector_state *conn_state);
>>>   void intel_panel_add_edid_fixed_modes(struct intel_connector 
>>> *connector,
>>>                         bool use_alt_fixed_modes);
>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector 
>>> *connector);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c 
>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>> index 2e1af9e869de..e07c1070a3ec 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct 
>>> intel_sdvo *intel_sdvo,
>>>         if (IS_LVDS(intel_sdvo_connector)) {
>>>           const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
>>>             if (fixed_mode->hdisplay != args.width ||
>>>               fixed_mode->vdisplay != args.height)
>>> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct 
>>> intel_encoder *encoder,
>>>           pipe_config->sdvo_tv_clock = true;
>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
>>>           const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, 
>>> conn_state);
>>>           int ret;
>>>             ret = 
>>> intel_panel_compute_config(&intel_sdvo_connector->base,
>>> -                         adjusted_mode);
>>> +                         adjusted_mode, conn_state);
>>>           if (ret)
>>>               return ret;
>>>   @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct 
>>> intel_atomic_state *state,
>>>       /* lvds has a special fixed output timing. */
>>>       if (IS_LVDS(intel_sdvo_connector)) {
>>>           const struct drm_display_mode *fixed_mode =
>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, 
>>> conn_state);
>>>             intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>>>       } else {
>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c 
>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> index 76e8cd0f65a4..bfe465443d20 100644
>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct 
>>> intel_encoder *encoder,
>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>   -    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode);
>>> +    ret = intel_panel_compute_config(intel_connector, 
>>> adjusted_mode, conn_state);
>>>       if (ret)
>>>           return ret;
>>>   --
>>> 2.45.2
