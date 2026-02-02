Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEVYIZ9kgGml7gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:47:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D6EC9C97
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:47:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AE810E3BA;
	Mon,  2 Feb 2026 08:47:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BFUbgi2f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BFED10E3B7;
 Mon,  2 Feb 2026 08:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770022044; x=1801558044;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QOzoWFej3LksPYZ9SyMF1IFFYsOEZNIAFHUP+tzj/4M=;
 b=BFUbgi2f3erTjiXcyx7daOmwSn86+HvZYQRJzPO5xla3s79vq4XVZngj
 kA2MQqYUHnuBy+NDjOwP2W9G5llesl8Stwy8ny/P7kVnyJzgLAtRbQvPA
 zQNnIJwSlBmMAKjzTqfGenoTdSHR+POjlZ1lQBJvyPMI48ALFWWrDz+j3
 exVzKSHWs1Zy2O+M3a0aZ2m0KKOZ9gW5Yd4cVaBJO+z2SWwbNe9cz0zOj
 imRBAk2S3W7JCkidjMUtIxZwJnepTQiZxgl8HX06oRt8oTRP/IbuoumTF
 UU+GW0OsQauzFBrtcJM/IS/gTzKdl/1ijcDpl0fmpxBFdvcCaOcXnMmn6 w==;
X-CSE-ConnectionGUID: FNdKcCTHTRaSjJTaR6ZK1A==
X-CSE-MsgGUID: rOZtJNTVS9mO6uNa44vAxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71260537"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71260537"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:47:24 -0800
X-CSE-ConnectionGUID: ny5jrblSQUur2W77x2oe3Q==
X-CSE-MsgGUID: XxWjGV7/S7moODyFWT0IIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208562956"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:47:24 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:47:23 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:47:23 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:47:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cipkzUqrAXBansBESvyxuNWGuLQHh5RUrg+/QqKAaTe3hmaz76SuOlTXJwP+mmkpxOZgM+pl0oVnTR7r98oVLj1CN1iIITUdIuUOyuIKlM/XPWkBUKkOXtCy92akPCbID2b4qEUiClsXVp/pxrxUlxDe6xC2OuqOLCqNeyyWT+aZblrcIG/q6PN40RC6tuSvGHniERSImf90hZa0/OmipqmvUmNIemaxqAErHjRS9/T+M0/lKUgYs8QjZeFe0ykFEt+30eCoHkTGX1mqfcC+lIgwd2QijH7cJ4oqN1s4U/MqSg7RVtAhq8UcntsUvjqh9xbU21cBROiRigLfXtrbDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qZYXbtvgaHnY3Z2PF80FMjVGqlXthtA0/hznA3SZXE=;
 b=GjKyNmrrR51wMmn2Q3F01YBkgRT47rUU+2VTpBfaSPJu3ln+9nsRkBCn69lsUTpbpWDvspCxFs4LksQ09rLv1rKzy7OK5Omg/OcKyTNlJOR2WJWR9D679+XSpN+fzLyq3MneN5Lthu0jgrsc/CRSE1P3ev1uxP41V6A+lau+ypAZmo4OlZ4D9N73PePn6ZM2CJN9x4lRomlKt9tcn6sKqr7Nky+mOXWHv3OKQoZv3+lJ7uqSZfTiiXXFhZ+ICEBsBSjuCsLKRZ5cUdZQ8gVRTc18L5j2vQawZKFSWM8tAFZkSuJ5D9yF3Fbutmz73+QAV3kbZpTRYe23R4SyY5sTnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6330.namprd11.prod.outlook.com (2603:10b6:510:1fe::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 08:47:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Mon, 2 Feb 2026
 08:47:20 +0000
Message-ID: <0d8ffd04-9f00-4968-8204-cf288399953e@intel.com>
Date: Mon, 2 Feb 2026 14:17:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/dp: Add a meaningful return to
 intel_dp_read_dsc_dpcd
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>
References: <20260128044904.1293185-1-suraj.kandpal@intel.com>
 <20260202081801.1400708-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260202081801.1400708-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6330:EE_
X-MS-Office365-Filtering-Correlation-Id: a126e3ea-a717-4c15-22be-08de6237ad08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OXY1cWNpRk1BcFhFYjF5TEMvc3JqREFpS2o3c0c0SlNaVXUxWkpBMmJod1A5?=
 =?utf-8?B?RVNXNnovdWpIeFl3Z1hxakVsYngyd0pYYjltMW9URjJjU0xXUm81TnNPNmZH?=
 =?utf-8?B?aXErWFJBOURxOXF5QTNPTDVYblpsOGhDVE1Vc3hIQjdFQXMyejhMc3dFeGZP?=
 =?utf-8?B?dFJzT3h0Uko3bVpFUGt4QlFKT09wZmhmZGtQMGh2NHo2RWdqWmxLMkx3Vzd1?=
 =?utf-8?B?d0Q4WW96aUUyc2FSUHY1Q2RqcDZtR0tKaE5GRG9rSE9qOUE0WVRyaUNiTk9m?=
 =?utf-8?B?YjZ1U01yUmxkd0pYaXJTOW85NVc0OVpUc0p1Uy83RmdTaVhqNEkrK3Vpc1lm?=
 =?utf-8?B?V0NTR1o1eVpWTW1qd1hPcHNzNFhrYnBVTUdPT1J1dUFyTndYMDV0ZytaWWFq?=
 =?utf-8?B?a3dyZHZUQjNvR3RrM3NhQzJtV3lyOGRrdVl3WlBhWXZnTTlOeVRud25ibm5P?=
 =?utf-8?B?d0x3bzNvdE4rd3NTc21tTDcvUlV2N2dFaU1nRFgvWUlPMnB6UjlFRk5XbFZO?=
 =?utf-8?B?U1lvSHN0eDFUWFFVMEdvZnpaeFRsKzBzU3Y5MVcyV2ZNeng4c2grTU96ZFdt?=
 =?utf-8?B?SDBnMWkzUmY3M0tqcThMdjBNUEhSVm85SE5Ic0dxRDFNNmVOdDVkV1RrcTk1?=
 =?utf-8?B?NHdPck9NM0xZNllWMVZzaGxITENNVGtTMUN4ODA3RUxPaVF5THFlbGtOai8r?=
 =?utf-8?B?MzE4dVRzTkduSTV5dUJqVTdHZ0lRMHFBb1ZqZndvWVVFSCtncmd5ODlBMWlC?=
 =?utf-8?B?eTRpM3RPMVJnL0daR01MNFV4aEI2bnJRWFc5Rm8wTmZKQ1A0WHVBVWtTdnNj?=
 =?utf-8?B?aW55cnI1YURVWTNFemRJclpTZTVzM05sNFlzSXJ5aDVrQUFPZGhSTk80blhD?=
 =?utf-8?B?bUZZTHBjNVRJd2x1aW1LNHY4SnUyRm9uTUJZWEk3TXZkTDBqcFo2RmQvTm9U?=
 =?utf-8?B?cXIzS21JZjc4SllnWHN3UmJxcGFTUHJuV0x0eGpqaUVMSW5DOEdCazE5U0lq?=
 =?utf-8?B?dHdCdnc5ai9obmRFdUxBMjdEeGs3Q2ZzRklXNHllYmhuRTdBNHNPWGRtR1lN?=
 =?utf-8?B?bFFSS2lEeGJVRUFqeTNiNEZDTUhZR3p2TU1NVVVPS2daZEV6SVZTbUcvb1F5?=
 =?utf-8?B?UkQ3cWRlTmlmeEprbW9Mbk5WVm9NejRMdzFtRENCZjVZa2ZCTmpSZmtOMzk0?=
 =?utf-8?B?dG5WVHhTa1QxeEVOSzUvUklYTEhKcVdvcmRoR283bXVkdkVUMzVsaDBuMytW?=
 =?utf-8?B?QTJpckFjK3owZXNWemFESFFJVi80WG5DQmRrVWRqM0RZQ0x2WlFFODhraWxR?=
 =?utf-8?B?WWdUaWc0UlZXbFdFdW84OVB0RHIxbkNBRi9wWTFlYVRsWHQ0QTVMZTh4MHZN?=
 =?utf-8?B?U1FYa0JrZE5hWU0rWU0rMU1sQzBIR3gwbkRvUEFHN1pPeFpZaFdoR2IwbEho?=
 =?utf-8?B?K3Y5VnFLcFJWanFxOFZjTXVlaU5GNzNiV3FTVkNlc0duUWcrRlVBVjdPQy9E?=
 =?utf-8?B?OHp1emZybkUyNGhEd3gwZHpHSHg1Ym1Yd25YYnREQjhCT2g5TzY2NkJLMVhx?=
 =?utf-8?B?ZXR2Mk5UaUsxM1Fqa0h0KzBDNGgrTThYQk9FQm1Xd1lQS1N0SWt2QnlYZ3NR?=
 =?utf-8?B?S3ZONkN2SkhIYURWeU9tUW9iT0g0YWdiZ1dwMllGdVZXREh0UXYxUGRJMG1t?=
 =?utf-8?B?RHliWHRXdWd1VjZ2VGRkRmRZVnhtM09lT0x4cVpsWEk0eGk3ZXVNUW5WUU9F?=
 =?utf-8?B?cWlKVXZ4aUhIdk5LVVhBVE4wbTVMOHpuQjh0NFpyT0RUWFBLeVJteXpVUjVP?=
 =?utf-8?B?b3VBMk9HTHQzL1FQSExGdlhLbWpRaWdRUi9xcWhndzV2d2NyZTdHcjA1MTc1?=
 =?utf-8?B?S3ZNNjI4WTZLckc4WVI1MytjWmdkazBpNWdHcjExcVdXTy9TTUtrQmlGUUxo?=
 =?utf-8?B?RjhhbXFQZWg4YjM3T0pkTWUzZUFYUWJtYW9tazBURytXWDZkbjM5VkN5QW9l?=
 =?utf-8?B?eWlrMFJhUy9OUlY1azk4Yi9qaHVGVlBSOEMxeVZsR0Rucmx1bGhHalBsZDlG?=
 =?utf-8?B?UmxFRXVFaVV5d2JFS2tvbW1wZ3ZxUGxORURBcnNWUWdGVGhxL2IxN3YxV0Mv?=
 =?utf-8?Q?pAn8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnR1VUp2UXorOWhTTllWb1RwNnI0SlZUK21YZ3lBMnhyS1hwN09lMW1hRkRT?=
 =?utf-8?B?dXNMc1E3N25qZmJ5bHdvZUwyRzg4OEpJWDlOUkFQWlJiTVh4anZKZTJIbG9M?=
 =?utf-8?B?T0h4Umd3Mi9uVXNwYlNvNSsvTkFEQWU1STJBdEFvajJRSjl5VU1jRjVHQkFh?=
 =?utf-8?B?VnRMcW81cFZZczFzMzNtWnpsaTdqTlI4NFcxdFB5UEVnQ3FYV3ltUHBsUGQ4?=
 =?utf-8?B?VGUxamlQNTFlTzFrS3A0OWJxc1JlOXN3eWpjSWNXV0ZRRkdJelhtVWcyb2pS?=
 =?utf-8?B?bGhlYnA5bEMrcFVUTERyMG4wMjBtM1F2cXBUYlVUY2tiYTB3WVo1SnVaa05k?=
 =?utf-8?B?V2U0TDAzZ0h1NVJVUjFPUXJUdFhjVDBYWHphREV2cGNNYURzdmphazcybHFI?=
 =?utf-8?B?djFJWTZxanFPOGZaQ1NUVVh3d1JmVkhQbmxvNW4zdUlqV3lIdVpwbmlWUFdH?=
 =?utf-8?B?eUFpN3ZkeG1GdTFsYlQxNXVrMUFjYVlFL3NlNHBKR3lMUXlHMGFqUTZoenAv?=
 =?utf-8?B?cVZrUnFsYXNMR3lRcHgxcjFENGhpQys5RU9zRUFNc0JTRzUyUFB3OGNGYjdX?=
 =?utf-8?B?WjZoOTZzdWlpMElYVmZRM0FqcjJvenJ1aHZQTThyRit6OXFORmhyVFlibkF2?=
 =?utf-8?B?dXZWejlueXQxOXRpcEhvdi9VYXZhLzIxcjVKdlpCMVVhV3M3YlVQN2d4SVNI?=
 =?utf-8?B?VDM2c0NQM0FXZUZJcGtQaEFLY2FoQ3krYXBGa01abTJRaHAzUVk5ZUFlVk01?=
 =?utf-8?B?cmxiNHBhSjRQZzRYRHNJVVNWWTY4T0Q5M1F4dXlPaW5VcDY4S3lQNDNuNlY2?=
 =?utf-8?B?UDY1dHRrbmZ5UzVVc05NeFN1ekxwTjBndGZrWkowWkFxRFlIMWh1Nkhzci9n?=
 =?utf-8?B?ejBPNWJjdzNXNmxNZENFd2FjSEM2Y1lHWnNiaS9JVVNHK0U5VmN3UUY4ZCty?=
 =?utf-8?B?QmYwY0g5cTREK1B5ZFpadUFIbmZzMzc3VXAvc1dTL2ZrUGhwZ2MyTDNaY28r?=
 =?utf-8?B?QTVnMjNDYjAzdTY3UHZNenBhKzNIRUdkZ3FsTFRlTGVCbktGUkhKZGdUSGVI?=
 =?utf-8?B?SmRMWTFDZWlQbklYcGpOT3liYTZxeE5DR0tQaU1qYmhJYlREeE9iais4Vm9B?=
 =?utf-8?B?OG1qeUYwbnZPbkQwN3B5aHVmMDJrZDBObFJiZEZjdXRYWTJmNklMWE1DeWp1?=
 =?utf-8?B?WURRRExjRmlVakhzUW9hYmtLUzFnc3hPNThGQnVWZ1R6MzlZS0JIUXhGRllB?=
 =?utf-8?B?cXB4d3ltamt1TGdaSXdnTFN5eFBqWDRiUjdVdUtmUXdFeDV6S2hFTUFvTzJp?=
 =?utf-8?B?R09COUhyNGFBUUxHME1WQVRpZlNDaFpoZ1lQcklqcnhTT0I0ZW1NZ3BJenBr?=
 =?utf-8?B?WFRwUjFoT3JTSEdmRHpDMWphVzRRL2V6RUFiRW5CcXBxWi9mcmc0RXNnRm1L?=
 =?utf-8?B?b0E2cGgxNnE5QVFRU2Mya2V0dE40elRQU1VGZlFpczgzRDlOSFAxZk9aTXhQ?=
 =?utf-8?B?QTVKWGUvODI0SEZ2UEpweEpnNDlOaEVndTMxcG5zWUQraHZtS3cwcXhLc1Bs?=
 =?utf-8?B?RlBkWU9ZOFRXanFnRlQ1Q0FGQ3pCZ05TbkZQSFdIamFDN2JsZ0MwNXZpSmQx?=
 =?utf-8?B?Smd2VlZqKzF5Z1MzWFg3T3dVNDhua3MvRVpzUndFVkJ5aERXQjlrOUJuT09Q?=
 =?utf-8?B?cWFXS2hPK3JRMWJsR1p0eVYyWU5GOFhCaG5hR2h2aHVvajc4SnZjWU03RTlh?=
 =?utf-8?B?aklLUExwaFdmeElqakZNVUJRbVMwSHRGNFdRNDFManJWVWFad3k5cWxreXZn?=
 =?utf-8?B?T3ZyRXIwSm5sdlVzK29DQjIwTTA4c3ZZcmo4enlqc3ROYjJ4WlVlMW5Ya1Fx?=
 =?utf-8?B?NytrdUlTTlR6QjZ0cURmRDJwODNTd0NINmhzaGcrT2kwZzNIeUhyVER3UWlB?=
 =?utf-8?B?K01HdDVUenFEeVByM0RxL3drdkg1YytYRnBCYjM0U2VvTDNMWTdmZVNuckZK?=
 =?utf-8?B?elJ4bFBvOWMyVW4rb0gvemlJR1dXM0FpQURNQzZrMGViMzV0NExoMUtrbnU4?=
 =?utf-8?B?WHFaRzNHY0llYWpKbjRJZlQzUmNKa3hoVk1HLzl6RnlFMEJzaDNMVkViZFdD?=
 =?utf-8?B?cmJzRWp5ejNiRXluT0hFMVVreHp5YzdIcWcrdXY4UkJFSWtvL20yN1VMTGxh?=
 =?utf-8?B?ZjNRM0NyK29aYVBLUkRjalVaVmFVMzVmUS9uU3U1b1EwYUtsWkdBa21zSTBB?=
 =?utf-8?B?MHJvbHlZendOdlBPZElsTzRoSlNJOUJiZFo0a3ZnTG9YSVZWRm1Fd0R0L3c4?=
 =?utf-8?B?S2QwNGJrQjNOWHpXTG04OWVKR2tlaXZuZmZ1bTFjVFdycElNaHAwQ2h0amI1?=
 =?utf-8?Q?9i5JajRomJGDaEqc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a126e3ea-a717-4c15-22be-08de6237ad08
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:47:20.3889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ihmmYTW9Cao6nXJqqpTc8THds1+srExAxnuT37b8lbOuI/F4Qdb9/iJgh3FmdaWRcVJJfS1jUk2N413Sh1Hkzvr8pCO3UHayFftqpDPWjns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6330
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E1D6EC9C97
X-Rspamd-Action: no action


On 2/2/2026 1:48 PM, Suraj Kandpal wrote:
> Add a meaningful return to intel_dp_read_dsc_dpcd. This is to avoid
> unwanted DPCD reads which are not needed once we know DSC DPCD
> read fails. To do this convert drm_dp_dpcd_read to drm_dp_dpcd_read_data
> which returns a meaningful error which can be propogated up when all
> bits are not read.
> While we are at it convert the drm_err in intel_dp_read_dsc_dpcd to
> drm_dbg_kms. This is because we do not want a hard ERROR when we
> call this function, during the intel_dp_detect phase since AUX may not
> be up, it is expected to fail but we do not expect a failure in read
> when we call intel_dp_dsc_get_sink_cap so we move the drm_err there.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
> V1 -> V2:
> -Commit message fixup (Jani)
> -Convert drm_dp_dpcd_read to drm_dp_dpcd_read_data (Jani)
> -Propogate the error sent by drm_dp_dpcd_read_data up (Jani)
> -Use %pe and ERR_PTR() to log the extact error (Jani)
>
> V2 -> V3:
> -No need for the extra drm_err (Ankit)
>
>   drivers/gpu/drm/i915/display/intel_dp.c | 31 +++++++++++++++----------
>   1 file changed, 19 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 79fd3b8d8b25..380d9801c377 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4281,20 +4281,24 @@ static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>   	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>   }
>   
> -static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> -				   u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> -{
> -	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
> -			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
> -		drm_err(aux->drm_dev,
> -			"Failed to read DPCD register 0x%x\n",
> -			DP_DSC_SUPPORT);
> -		return;
> +static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> +				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> +{
> +	int ret;
> +
> +	ret = drm_dp_dpcd_read_data(aux, DP_DSC_SUPPORT, dsc_dpcd,
> +				    DP_DSC_RECEIVER_CAP_SIZE);
> +	if (ret) {
> +		drm_dbg_kms(aux->drm_dev,
> +			    "Could not read DSC DPCD register 0x%x Error: %pe\n",
> +			    DP_DSC_SUPPORT, ERR_PTR(ret));
> +		return ret;
>   	}
>   
>   	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
>   		    DP_DSC_RECEIVER_CAP_SIZE,
>   		    dsc_dpcd);
> +	return 0;
>   }
>   
>   static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
> @@ -4345,8 +4349,9 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>   	if (dpcd_rev < DP_DPCD_REV_14)
>   		return;
>   
> -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> -			       connector->dp.dsc_dpcd);
> +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> +				   connector->dp.dsc_dpcd) < 0)
> +		return;
>   
>   	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
>   			      &connector->dp.fec_capability) < 0) {
> @@ -4376,7 +4381,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
>   	if (edp_dpcd_rev < DP_EDP_14)
>   		return;
>   
> -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
> +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> +				   connector->dp.dsc_dpcd) < 0)
> +		return;
>   
>   	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
>   		init_dsc_overall_throughput_limits(connector, false);
