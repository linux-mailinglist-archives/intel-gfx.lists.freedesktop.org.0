Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF119A1D5B4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 12:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BAFE10E3AA;
	Mon, 27 Jan 2025 11:58:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kcumZSt8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B8F10E18B;
 Mon, 27 Jan 2025 11:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737979096; x=1769515096;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=vrugCYIMOq1ksNW8oRuZwgxQZU4lsoFqYaPK97zW2Xg=;
 b=kcumZSt8dMGmbDh02qhwntZka1RMq7it8Q6DTt+llkxh5mzF9mkDhf3g
 8qhaqnpuUhue00plaKojlf+7nKVXlL3k80ku1S2DTs1kYgOjDnzTY4PWb
 QX01Cl+eICgzGmEzJtLy8TnwbaNqHZ27e66aLdXEmI9eIv/UV8tU8tHJs
 MsOHnKIwDMa6Wl8tdW35M+McFD7DZYlWQw7PgMXgpXr6q9V4dC9IHi4Pr
 Ba5TocFV5zlQwh7VhCu20MmJ1zk0MBbjxLK1dNzNi3jVwbr467JQbHeix
 m7KmieO0Ps8Rh53ceuk0FwQOC6rgwotYec2pnVdo8O6G1cHFwCI/EBoB2 Q==;
X-CSE-ConnectionGUID: tEhIvlfuSZ+3K7nTJ8KxJw==
X-CSE-MsgGUID: vWqZAfyXTwGv+Ui7VIkwqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38466562"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="38466562"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 03:58:16 -0800
X-CSE-ConnectionGUID: 1MUcTJ52QEaZtfk/WH6PrQ==
X-CSE-MsgGUID: za7OxNrGTF+3GXjoGnUZag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="108949614"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 03:58:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 03:58:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 03:58:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 03:58:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JncINQLYPvCDnC7mfPpzJfpBsTqPSvdUwbBhNHcbbQ2/oBGb+chOW2MQ0gR8xsx9rsImIPy8+77UMtAem84ZuWW/Zpz8ZkQF9KV0LmyleUoytSJTylYzWxPjZ5A2PfLAqAuWwni7Xse9Hd3p4kCd/rukZjd2fYhxGzNnw5Ds9VYwB1gYWGasy4G4MOOTkfI/JeNQHbUesNZp1JW/GutShKNmGSIpHswnUHMzhZrK+hQGyGMyvxDBaYfjSFnlSb8uBSwO39VayMq7itrEy+zgLAQzZtPgYc2U58dG1IaASciarxSBZIoXX7VuPBD4TEK4E09dD27Lo8TdOCmhNVo3tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L3NFb84IQpwHWzL/1mEBZQ3JMIwTko3mmb5naLPoGTE=;
 b=a0pNA2/r8a343kh6KLy8/6IxUR/2qPb87vJNoB5TPK2ZIiIXAMNTFTDkzHjCEhpJW3f5GbLadDqQqscyYufhfL7UPIkXiDEr4FH0QNOylFOlj6/DnHeIYkvar4I33zHvlncwBQkv3PrGT4ekEumYhM7s2pIUd2ylqrXgKyW7NCl1Dlbvh4iMy6FsaDLRcA/d7g+ZrfRvXDlW8HfxNVsRk+QnIZOqgLcGUQiScBI6+XwD87MDP1zY/lwcBFRHT17jnu//gNQJt5XBloZDUN89iVg6oQWnkmaoSrmnP1DfoXukapVhSVQnT5ebpXLt4kcPJCzxAgEV+O6AXjWDqZvViQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA0PR11MB7694.namprd11.prod.outlook.com (2603:10b6:208:409::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 11:57:44 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 11:57:44 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173779694442.267154.11098382375835057259@b555e5b46a47>
References: <20250124173956.46534-1-gustavo.sousa@intel.com>
 <173779694442.267154.11098382375835057259@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/cmtg: Disable
 the CMTG (rev9)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Jan 2025 08:57:40 -0300
Message-ID: <173797906053.2736.7692609955702868269@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0271.namprd03.prod.outlook.com
 (2603:10b6:303:b5::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA0PR11MB7694:EE_
X-MS-Office365-Filtering-Correlation-Id: 36a617a7-f362-4832-0346-08dd3ec9cf45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aTRRaStFdnNYdjhFWjcyLzFpODA4UE1qTjdFSkxtRUJiUUJRVlhiK1NJRS9Y?=
 =?utf-8?B?NUs1Nys1WTYvMi9zQTJCaHg5ZFllSjgrL3hWZ0hwbzl3V3pxOVhYSGVBVHNF?=
 =?utf-8?B?czB0UDgxQjEwZm5tRWpFMWNvdTYxb0NBOC9kYWVJMFZyOEQyMUlVY0o1VGtL?=
 =?utf-8?B?L3crM1hTQjJZbnV3NXYwWUJQUjBrT2MxWTJlY1FXU1pFb3JLODRNRDArWlp4?=
 =?utf-8?B?RXF5L2x4SGtMeEwwelhqS2xYZlR4M0N3L1hlOHRBc0VQTmRhSTE3WTdCL1Rw?=
 =?utf-8?B?dzdLMSt1c0VBL1Z1UllMSXkrc1lwRmVwVUEyYW83bVVRSEZ1VmNYOVZ2cXcr?=
 =?utf-8?B?d2FiUlZrNENpbWZKNXBZdUVzOU4yZFJQOWhNdUtBR3FPL0JGZmE5bU9lbmND?=
 =?utf-8?B?U0RwN3lRelFWOXpiTWdrcEtmSW9seEgrc1Y4Q0xwUkIwMHpMSjg3N1pJTmxG?=
 =?utf-8?B?T2picHFmeFZLQ01TWURIK2ZmREJRRkxlZmltL3hWbDZhTHZzWXdQUjF0Q0Y3?=
 =?utf-8?B?QnRIRWVMQ04xOWtBRE1IeEh0ODQ0NkFnRVdSUTliWnNCN3hiQTljOXJ4VU9B?=
 =?utf-8?B?TThGMU03L3BESFhXTjdzUytTWkY1L0c1YWhUQ0ZYY05sUUd3NngyVUUvMXBi?=
 =?utf-8?B?K01uNVBTOG9rMDR6SkpkWFR3aUl2bGdmcXIwNUp5aHJBT04rNFZoVEswVjF4?=
 =?utf-8?B?RTZzSnYvOHdmYjZaWmYrbGxCSTUrWDc0S1FNMjdQZktiMmpYVUVBYnkwL1Nh?=
 =?utf-8?B?R1hlTi90a29HT3ZkbVoxTjVHdEtDVUhrZkVYZkNRM3NpWHZzUVVVbkVGbTRl?=
 =?utf-8?B?VndOVElhTFV3eUl3am9Qb0s5Q3RvbWpDR3d0c0xLd1dvZkpEb3g2Z0t3QlRz?=
 =?utf-8?B?YWxzVk9xdXczOVBkeHR4YmlRTnVtclcyS3A0Nk9OMG9kSGxCVUxDNkxxVkc3?=
 =?utf-8?B?bDFqSW5wWjQrRUg0V3lPK3AzY2lXZHA1TEFmaWgvaE9oVmszdUhQWkZGcFVi?=
 =?utf-8?B?OGltMmpUcnNsdWVHOHJpMjA1SU10YlRpc0JCUG85S2ZGSTdQMDdkakFGZVRk?=
 =?utf-8?B?UzkzQTJSaUsyazRCSkRYNHhJYlpkd2ZLc09tQ3UxZmswa0xTRDBGdGIxZHVS?=
 =?utf-8?B?eTVaa2Q0V09SYXBFK04xMHcwVXdpUHJsYXc0Qkt5NFVqRFJaNTVTTm52anI3?=
 =?utf-8?B?UjlFejZYay9QOFdJZmpOM1ZDVE0rMkMzdXdVTVgyUVBKeWU2cDgwd1BJVVRa?=
 =?utf-8?B?V2tRN0ZWbWNkcW1kbUVHOS9PRjFiMm92L0NDczRmSytvZXVIUHpkY1kxYTFL?=
 =?utf-8?B?cUxHcEhwRzhWV1pBaWZwZFRZK1REelpHMjBCVUZHRTI2OSs4SklXVkFkV0ht?=
 =?utf-8?B?TE5rd21iSCsrWUJSSzQwZktaVzBTSG1jV2RkWnRnMnIzSVVWWnRURlU3SUxy?=
 =?utf-8?B?Zkcra1dtdmZCcEFjQVcvbDRTWUNic0hINmIrTlBMNWp5VVRqTnRiRVl5S3Z5?=
 =?utf-8?B?T0oyeCtTYzJGSzJWMDkyWi9CcVc0MFVzUzJjWFFqajNEM3BqRWpxU0JiS2xB?=
 =?utf-8?B?QW1GVUxHdWpTc3N4enJ0UnV5cWxQSkNzZnFkYWtqRzhmdFBoamdpSXpkbXI1?=
 =?utf-8?B?S3ZQWjFibmpFTi9wKzArTmpCY0dmNnpYd0J6ZVJnbGdaQTlMR1VWZDBITW1j?=
 =?utf-8?B?SENwblljeCtQTjNKV3lzZWFETk5RQ3hmR2JRRHFnV25udDNKR2NhYkFaYVZ3?=
 =?utf-8?B?SndOeEVIWlhnTldiTkJuRkxnT2txUXNPV1I3bmJkUnJyQTJHR3VTOENvWDZ3?=
 =?utf-8?B?OWtaYnZ4R25VRUJZTTRtdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWoyWFU4Mk04NlNZNEMxN2JFRUgyM3lRNEptUUpBMHpEY0htYVZET0JUL0R2?=
 =?utf-8?B?eEtFQ1cwM3NpZFJHZXJiL1BtQ2QxZjh4ZEtYOXpPanMzQThJZ21odjNNY3lO?=
 =?utf-8?B?TEF1WkdGdjB1WXhPb0dzWURYRmZHTXlvbWlHa3BmMytCc3RkSjltY05CMFJQ?=
 =?utf-8?B?NnRCeFhtcEppVkwxdG1Wa3dlUG5GV0s1cVlYdTh2bGZoMldjeUxPNkFSck5C?=
 =?utf-8?B?dkNHMjNGRTQyUW9uMGhNRUU3KzFpTGdJWVB3Z3JKdkgvenNLMDBnMUd1WDIr?=
 =?utf-8?B?RTBONjNBREEwUlJiQUlPNVNOUzJMcnAzU0pFd0VZM05oVC9VYU1IQ3FubnRk?=
 =?utf-8?B?Rmw2a2IxdmlnYUREOS9LVzNTNS9oMXk5aitOdllJL05zZUN6SUFRNVlnekgx?=
 =?utf-8?B?ams0R0w3WFVqK2xKNXlDbUltQzZxYTdaQ21aNGsrWFpYVGtoak9tU0IzcndP?=
 =?utf-8?B?aVc3WnZVYUplWktTZXNUdld0WUpDcGFjTVY0VjNKaFBIb2xGSjd6VmR1d3N3?=
 =?utf-8?B?UkhhbEQ0UDVUUEt4UXNSZmRuQmoxVjNVM0FRVnJiZmRuSFFuSUQzYTRvK1Fs?=
 =?utf-8?B?bkdqemVnVnpMS1h1d2VnbE5CanVFWjZOMkJMdUY4ajBPVEZUcjlTbnRxdE5X?=
 =?utf-8?B?RnBCREhiaGpzZ0x4ZG5XSkxGbkttaU5pc1dZWkNNS2IrNEtFSEZlZENXdFo2?=
 =?utf-8?B?dTU2LzhPQytGQ3U0aVBDb3RKNXNrUHd4VFJoWEdqTmdjZ2ptbjV6UzRzYnE3?=
 =?utf-8?B?Q2l2UjVmQUk2UE9rNElnUERrRW5qRiswMEVZblZCUlA2bkJJem1IQmxkakxm?=
 =?utf-8?B?VlBnQ0d0MG0zdU5vakRNU2dBd1M5MjMreUlsMjZNYndSQjZyTVpGUmp5d2pE?=
 =?utf-8?B?TTBZWW5kakk4bmFkUzRJNmJHcVV1bGhBKzdlZExNc1cxUEM2eHFQaXZyMXY2?=
 =?utf-8?B?MUxJS2tubDRIUWhEVm9vcWl0NWhaUGRmT2FEYlBLZEpLVFNuZ0NFRFRYVlNF?=
 =?utf-8?B?WmY5NEFFU1BvWGFqTEx0bU9OZ1hhYktvMGgrOE9vQjQyWFd0MzVzSE9uSW1K?=
 =?utf-8?B?ZXVCWXBxdm44Q2VpZUtFWDNmbEJrY1N0bWxPcHhpNnQ0QS9hNitZbGl1SU0v?=
 =?utf-8?B?cjZ3NkZISlNJQitKNE50U0tUSzdyYS93bXpzeXphRXloaVBIWkVyTnIyUlNr?=
 =?utf-8?B?QUVDZ21RRWJMblJzSzk0ZzZqSnRxQnpBaTVjTWZZSG8rRjJmcXI2eS85bW56?=
 =?utf-8?B?aUVCdkdsbUlya2NJaUtLYllYTSthWVlRRnlBNFRDeDhXQ2NJenBobHcxdWg0?=
 =?utf-8?B?SW8wQmdmUTl6b2FvOEREYzFZbXcxYVViMHB0bzhrNkVvOU1OTkJLL2tYR1dr?=
 =?utf-8?B?VVNzRys4N0owYXpTdVRXdys0Z2FhazVIbEc2ODg1cCtUdkVmMzBHT0pVdkh3?=
 =?utf-8?B?VzEreE1PU1gxRnlhZmRCNDZIK1c1MzlWRnlOYWNZQVRzbVZkTmwxL3VVb1dy?=
 =?utf-8?B?V1YvaG80N2swV2FrR0g5emt5U1FDekhWRU1Id0FlK2YrKzQ4SWxoQ0VnT3cx?=
 =?utf-8?B?SDhIUisraUR4VzBvcmJCQTIwREVwZ1NQLzRJUGZLVTgrOW5KWDVpbnFTZ25N?=
 =?utf-8?B?RUpxaFlSaUJ3cnAvckdIL1c3NWVsUWs4Wnl4dDZLOWFTdHRIazZHYTNBSWFD?=
 =?utf-8?B?TW02ZE1oSE5NeXd2bTZjN2dPeVYxWExtdzdFZ3dZa3p2T05RM1pWUTNEejdr?=
 =?utf-8?B?UHVKblBsNWxrZUNvUDJPY2VxWXV2VUcveEkrUnc3aWhkSGx0UEcxQTlkRDNE?=
 =?utf-8?B?WVo5Wm5xNWRGd3ZnSW9yMXZYaDJJZk90UndoeU1UY1YzY0NFWU40M3RhNCta?=
 =?utf-8?B?SUsyaWhBei9UY3hnZGNienZ2QUdsZjVXV0lXcmduWUs0aEppbkpYN1BoOTBx?=
 =?utf-8?B?NTB4Vy8xVkl5b29rOGJSZFgrTThxZkU5ZnowWTlmQTl4eUwrY0JZdVFSMm5m?=
 =?utf-8?B?UGRNS1V3ODBvYzNWT0JFMkIrblpIQ1pNVEtQRm5kZ0V0TzF0TndqOEZGUE5y?=
 =?utf-8?B?aE1zRWRlb2dobzFiT1Z5Nm1XUFFZVTU1UTBtY2FnNUJWejVQR2huSjEzVkcy?=
 =?utf-8?B?OTVoWHFFaU1IdXp5Znp4c3lJeVduTGlhRUpyM1dEWXh1Ukg4a1RyNU9CRURr?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36a617a7-f362-4832-0346-08dd3ec9cf45
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 11:57:44.6142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pYwhGY4yYKy02Tbaej1suC134h/eX1czwUsqHqBOtHyRTlXidX3hd7ZMPTJrfWPkAU2w56PZ+WshqdsXSLREsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7694
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

Quoting Patchwork (2025-01-25 06:22:24-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/cmtg: Disable the CMTG (rev9)
>URL   : https://patchwork.freedesktop.org/series/142947/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16018_full -> Patchwork_142947v9_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_142947v9_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_142947v9_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (11 -> 10)
>------------------------------
>
>  Missing    (1): shard-glk-0=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
142947v9_full:
>
>### CI changes ###
>
>#### Possible regressions ####
>
>  * boot:
>    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PA=
SS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11],=
 [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [P=
ASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS=
][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PAS=
S][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [FAIL][=
36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42]=
, [PASS][43], [PASS][44], [PASS][45], [PASS][46])
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/=
boot.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/=
boot.html
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-8/=
boot.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/=
boot.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/=
boot.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-7/=
boot.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-6/=
boot.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-6/=
boot.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5/=
boot.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-5=
/boot.html
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4=
/boot.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-4=
/boot.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3=
/boot.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3=
/boot.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-3=
/boot.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2=
/boot.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-2=
/boot.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
/boot.html
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
/boot.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
/boot.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
0/boot.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
0/boot.html
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
0/boot.html
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
0/boot.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-10/boot.html
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-10/boot.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-1/boot.html
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-1/boot.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-1/boot.html
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-2/boot.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-2/boot.html
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-3/boot.html
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-3/boot.html
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-3/boot.html
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-4/boot.html
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-4/boot.html

Unable to view this URL (tried around Mon Jan 27 08:44:26 AM -03 2025).

>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-4/boot.html
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-5/boot.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-5/boot.html
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-6/boot.html
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-6/boot.html
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-6/boot.html
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-7/boot.html
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-7/boot.html
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-8/boot.html
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-8/boot.html
>
> =20
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_ctx_persistence@smoketest:
>    - shard-tglu:         [PASS][47] -> [FAIL][48]
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-tglu-=
10/igt@gem_ctx_persistence@smoketest.html
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-tglu-2/igt@gem_ctx_persistence@smoketest.html

HAS_CMTG() returns false for TGL, so this is should not be related to
this patch.

>
>  * igt@gem_eio@kms:
>    - shard-dg2:          [PASS][49] -> [INCOMPLETE][50]
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg2-1=
/igt@gem_eio@kms.html
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg2-6/igt@gem_eio@kms.html

"runner: This test was killed due to exceeding disk usage limit."

So, this should not be related to this patch.

>
>  * igt@kms_flip@flip-vs-suspend-interruptible:
>    - shard-dg1:          [PASS][51] -> [ABORT][52]
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-dg1-1=
3/igt@kms_flip@flip-vs-suspend-interruptible.html
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:
>    - shard-dg1:          NOTRUN -> [ABORT][53]
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html

HAS_CMTG() returns false for DG1, so this should not be related to
this patch.

Furthermore, the test seems to be aborted due to network
issues, which seems to be happening to other tests that exercise
suspend.

>
>  * igt@perf_pmu@module-unload:
>    - shard-snb:          [PASS][54] -> [INCOMPLETE][55] +3 other tests in=
complete
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-snb7/=
igt@perf_pmu@module-unload.html
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-snb2/igt@perf_pmu@module-unload.html
>    - shard-mtlp:         [PASS][56] -> [INCOMPLETE][57]
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/shard-mtlp-=
6/igt@perf_pmu@module-unload.html
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v9/shard=
-mtlp-8/igt@perf_pmu@module-unload.html

Those are possibly related to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520 ?

--
Gustavo Sousa
