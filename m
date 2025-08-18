Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B75B29944
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 08:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F6F10E1BB;
	Mon, 18 Aug 2025 06:01:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SzSqFt/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CFA810E1B7;
 Mon, 18 Aug 2025 06:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755496873; x=1787032873;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gnAmuwg4I1y2AEIPhx4GHinoqTcC6R7mIIAHfwBpPuc=;
 b=SzSqFt/KjzJVX5pNhMnxgKqbyspl3leb5EPSlysUZ2OEZMVk73D5J/VH
 7ll3n+7Hbm8ik+lhYyAxooVV8CVIt4lSGU8RAxu1+nPeFFaVc2p15aUIK
 n/sExDuSO4eM5IrMQQZLsBrSQUWMxS/PDnB27VAAfVBsfLReM1mqkPCzq
 XETfzOto0A+5Z03ZEbbuF/7Z/tpNEe1wWLwukScKG360ryWk+H6jA7V9g
 wN0d5cfhH/HcLDz1B6/02qvCnD4+ROUt+BJah5zl8O9vpRB76kze7sYGP
 UptPlo1v15xFXYery7he7mynLTLT2ojrZJRAEC/Wve2IX8bh86Ak1vZHn A==;
X-CSE-ConnectionGUID: /H8NnKKQSxiStT6ju9qRTg==
X-CSE-MsgGUID: b5cwuPNcTZyEkaLV4K0CCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="57623555"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57623555"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:01:12 -0700
X-CSE-ConnectionGUID: qEv/onE4QrqIsGQqBEw0Tg==
X-CSE-MsgGUID: U4aFdC4hRH2LGB+wk+a5ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167884122"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:01:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:01:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 17 Aug 2025 23:01:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.46)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:01:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ve6jlROqIDr2KqsiWzUJCnG2mgJtVpjPyzFSrcFc1VhmctscBPutqaSzStDdUCR7xRMZOfKkViFuyytJ1wn/b9pJni9pVeohvYvp1RMKCPXgdpAJktCH7KA+XFuICgkwFQoLNfoERCFbuEnhOcUAAzWYyIvzKnl7B9jV5PsZ/UCybJlXla2xTnG/PG6yuVALj13eAPq9AE+jxmlAZC830o5bUoWgnNqrbC8bop5YsLTlp6uSvkWC1ppqbno1MbsKhA6eF5kMeZmG7cOL6xsGPfVk5cELA1ukqaA6vh3R1Sxs+psvYwWuMSO+UDi0S+AdotgAqB1h4Rf08fhAveolnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BCrnHnrBbjJO+SicZSwggyjuz80K2iYwHc+zC3a+5qc=;
 b=HvjFogRlM6tQpPBbLgVIjSqBVDsHeX1VsIHhEcmDMIbdvd/7IxdVYoRflApJe0P6XEsw0C8y0Zp1TPYer/bIUwXcYExVgxEjpx0p8eCpEOIFTcRHDFRqMVvm2z0zUJfKqrhk/4b1ibwYpPWO4ijGmSn3xT2OS2iWAfVJWN1qT1vxuNb3KjpaR/OkLP6QCJVQTt4h/JcMNouwfOFrOHUI+Uw9jKpHhZews6DgMBfbbmokItj4T3GJe9GQ0f7dyyL8o1HC2xLJbCrOY9wQ0+tdESYrxfmZm9tTVamDmoR0y6QlUSfuLWf5trTlLq7F7WtIp5nTZD1Tw8bzYU8wg2WsYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8301.namprd11.prod.outlook.com (2603:10b6:208:48d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.23; Mon, 18 Aug
 2025 06:01:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 18 Aug 2025
 06:01:10 +0000
Message-ID: <16046b31-a814-438f-9287-0e37abacce82@intel.com>
Date: Mon, 18 Aug 2025 11:31:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
 <IA1PR11MB6348D0CBB47D6406CCEDF024B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <IA1PR11MB6348D0CBB47D6406CCEDF024B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8301:EE_
X-MS-Office365-Filtering-Correlation-Id: e84f4857-1fee-4887-d97c-08ddde1ca0f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0t1MEtvSnlpRGxQT3NGbmZKeUwxQ2FqeVgxd1laNytRZlFOMTRaQzQ4NURH?=
 =?utf-8?B?aDZwb1JsbEF2RDB1NFpFM1UxS0FieC96QlZVQ1o4dzMydGFHcGhhTEl2NUVC?=
 =?utf-8?B?SEJvUldGZkI2ZGlyOEx2L1pEaFI4NThHNVYzeDVZRlJ4NWxJQnVsTEc3NHpr?=
 =?utf-8?B?M3hvd045Z042d1kyZ2pxaXIvMVBIS2wrRU9RY25XOVQ0RlZDdlk5SmFmbC8x?=
 =?utf-8?B?emZ1MHQ1dnZiQS9kVUUyK24weEx6N0Z3SFVoVkQ2SnhyVzNUTWphSmhrN1lU?=
 =?utf-8?B?NVZYMWFqcGZJMkJEYVlFbitpM1BTWXRuSFVzdVVRWEw5TGZQZllabEcveGht?=
 =?utf-8?B?Y2NrY1ZHOW1BNlg3U1BYMnFqMTRQcWsrM3dkaUFseXdYSTJxaVVDMUZ4UFRt?=
 =?utf-8?B?Um5XSmVuZjIzK1UrVFMrWFp4aG5FWHFuM21DdzNSdHZRRHM1TlVIU3pGM3Yr?=
 =?utf-8?B?M3k0OXAvOGFYQW9SeW42TC9mb1RLa24xTUdrdFBRZTZRMWZCRVZac0oyQ3dv?=
 =?utf-8?B?S3ZZNkFGVTB2SFNzSkg5TWpraDU3anR5YWVCaU93ZXdyVHkxbFlXVnBPSFVk?=
 =?utf-8?B?TG84Uk1xdDhYMFFlcWplZFluUUcrK3RESFhTUTJVeU5ESG9nTlhicnRWRWZv?=
 =?utf-8?B?MVhtOXJwdnAwS3Y1dXZDQ2FSbVhZVlp6RW4zVW1obkxOVTlzZThBckhYM2tU?=
 =?utf-8?B?NEpuanJPbm1SS2xiQjFndUFKWE05cUkxeW5VN2kydmt6Q3ZFb3cvU1lOSW9E?=
 =?utf-8?B?eThFU08yU2hvMkx4cnJSaEhuckxZNDB1NTMxWTZzV25haDYyYWIvVUo3VzNG?=
 =?utf-8?B?aGdjRGo3S3RFOThEUjZsRU1SSVJOQkdTYThBaDFkMW1UYUFSWElwcWkyV1Bv?=
 =?utf-8?B?Q3RXYVpha3BRd2V4YjBPQ2Y2TUNhci9XNGJOWXlJUEtGM2NYVnhUMDBvQ0Z0?=
 =?utf-8?B?ZzdwSGxyUE9aQ0xLZkZsL0RBVHNOazJNSlVqMVpKdVJtOWUra3BBYVpqZjlE?=
 =?utf-8?B?bUxYMG1NRkxVUmhPVnBkSDJQUGNXU0YzZnkvVGRvUXovTkVFMUdzbkhuQTdt?=
 =?utf-8?B?d1YzTGt0R1hoTzJGalpIcFU2Y2VrbGQ2Y25EWWlCZjhTdWNRbFZFRW1tcFZs?=
 =?utf-8?B?UjNoeThJSlNldGgrdEZHcUNGSmgydHZxRGNZZHFWcXRXdjBFZlE5cjErSmwz?=
 =?utf-8?B?ckc3S0huaWl2dXBLdVM2Z0Q4STVuRC9XbjBQL1k5azVicmE1VzF2TTZnNENh?=
 =?utf-8?B?VG1BcUozVUhxRS9oSU5sUng0TWNMRXkzZ2RJa1ZySEUzaUVveU9pVHdwb0ZR?=
 =?utf-8?B?Zy9qbmtqeFh1b0huNk1GS0ZieUZPTnJzQ3Y2U3U5ZUFURHdTakluOWNmQkR6?=
 =?utf-8?B?d243bEttc1RWdUROVGNVd0NwdWxmZXZwaEthU2ZDbzVVU0JIbHNpdDR2Y29P?=
 =?utf-8?B?NHNnVzcrTTQrSEFkakxEcTkraXFCRjdEalRzdHJPSXRLNkZON1ZjcVQ0R25m?=
 =?utf-8?B?d0ZxSGVCL0xXWjJzRG94eFk1ZkEvTWpyUUV6Y1dpTXc3bFFnRFdTUHZ6NWNu?=
 =?utf-8?B?THVqNmp6bm9wbzE4L0xsT3lGVHJ1bHlVSDlmV1Z1anpVbGNGK0xhWWtpbDBC?=
 =?utf-8?B?cHViaGVqbVZkM2U0Y294L2Ntb2l3RTRLSllZNlJaZXpWWGNVWWYxRnVOdHoz?=
 =?utf-8?B?azh5cGM0ajJmRHg4dFZWanc5Ukdyb0xxanVvWm1OMEhBdThTSC9sN2REaVVv?=
 =?utf-8?B?QzM4aDRBSEdJa2Joc0xGVkMyZElWb3ZHNTAxVzQ1NjRHdy9XeEVXRnJlM0dq?=
 =?utf-8?B?OXk4WUFrM3hUcStNVW5QTDA5TUh2M1dOUkMxdi8yTEdGeDRkamgrNVR4SktP?=
 =?utf-8?B?N2pGR0grNkgrd09aOUNBajZtWHhacFZOcVNVN3pWblc1WHh2Nk9VYXF0ckxr?=
 =?utf-8?Q?KnaoixKwkro=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEpFTENueUVMN3FUekpPMVdOUG5sYSt6RVNSby9DWFV3dXo4RkJHV1ZtbkNk?=
 =?utf-8?B?RmdGVlZJQ1h0UWRMKzRIUXJOYzhlL2JzS3RtWTNib0NidDY5RGlvb25HdmtT?=
 =?utf-8?B?ejlkNnB3T015MDJUZmt5V2ZXV2xTTDZISlJyeldsdXdFMUJMdzRLT0xSOTJH?=
 =?utf-8?B?SUtBSUVpamVqdmdybUdTWUV5ck1MOWpueXI2SEYyMXVYcnJodmtVb3owOS83?=
 =?utf-8?B?MFlTSVFRMFpseFdZSUJZNFhWcWVmeU5vdThOU0xEaVRNSjJxcE1YL1MyVTZN?=
 =?utf-8?B?bEU4amxpbDg0R09jT2NRUnMxdlFjb2hCRFZDaWxUanZDUS9pTkNpRlRoU21l?=
 =?utf-8?B?aFVnVk55UXV5L2FqbDVrUCt5d1R5OU5zM1kweS9BTS9pc0xtdDMxWHhER2Vm?=
 =?utf-8?B?UC9LbTBvMktzclZhV3dYWWZ3UDFZVWF0VlZZZWJMeDVFYkZ5V1puYjhxZWNM?=
 =?utf-8?B?bVZsd3B2NkttbHBKZGRvMmtQRGZxZzdRYlBqVmphNlgzTEpQbm9LWjNFVjZi?=
 =?utf-8?B?WlRHaUorblNnZlVMY29rOGVDbGxuaFFSckhVaU5KQ1pVZDQ0eno2b2V1anZY?=
 =?utf-8?B?WERPeGcreDdoNFdKckFtc2FyOG9aSUo0a3JUaGt1MnVrZWFoR0ZUK1Z1cXgw?=
 =?utf-8?B?dkhJMlFBTHdiNWMwdHBlOHoxdnpvOWx5b2FmL0loN2Uxb3lSU0JHOTU5RXpS?=
 =?utf-8?B?OHRSOWdDYUFkaXJYby8wTzVMYmFtQmFVOWlIVWZMVTQ0L25KWnhSMTIxbzBk?=
 =?utf-8?B?VmVqa1ordWIxQ3VkUHI3SXQxRHZMTmlFQ1A5UWgzQVRLbXVCMmp1eFQwaW9W?=
 =?utf-8?B?UHdiek1QN2pzT1ZqRytGbTlwY2xCZlZWYWc5YnpVTkUxVlFzYU9XTDNBNkgv?=
 =?utf-8?B?TDdpa2FFZFYyYjNvWGJvWVJORTNjV2xPOVNoSm1HQlBGNzNzOTVmUzdTcmd5?=
 =?utf-8?B?bzZWQkhUdy9VOS90eVJ3Qnl6MGUxWGVJTXdPY0lNeGhwQTN3VDlUbk9xbXov?=
 =?utf-8?B?K3VKTWpkMUtwa3RDMFl6NjJCaVNpbm5GQ2ZXbFdWN1hyWWVBNHhTV0N0N3NO?=
 =?utf-8?B?ejRsUjRoakNWbTlLNkUvZmNlQzBmbytnbk1RNldjUEtGcitFZGVUeHhFWWtU?=
 =?utf-8?B?ZlA3L3NhM2o3ZkFqTWRicUlTTitHNktCVlhhNWtBT2Q5QkRFRnhhaDh3Nm5m?=
 =?utf-8?B?aXQzZzJiTkJSYlE4enM2aVZjNklDcXpRU25sS3B6U2x4dHd3NEtYWFdPbGcw?=
 =?utf-8?B?aklJcEVUa0NrdHp5aG5yZ0hHOU0reWlDdVdHb1VYbHlBS3RLcUsrekZQM3VJ?=
 =?utf-8?B?UUg5SVF3dHNTSjFQdUxNYytqUG5wbHJaeUI4eTZRY0JuR1oySUg0WW84K3dJ?=
 =?utf-8?B?N3N1empZRE1rNXloa3FhTkxhM1hpbWt5NFN6THAxWGM5UUplR0tsamZHN2Jh?=
 =?utf-8?B?VWRzVlBIUFlLTVBhdjQ2MjdUMDArQnZaNE82S0tFVTVCZitYRVFqei9OZjJo?=
 =?utf-8?B?NUgyYWxTc1BFMTVnT1FNU09hRStGbGRPT1RVQmpMSWROa2Y5RFpTNXgyVHNN?=
 =?utf-8?B?Zk5peGU2Ympia3lYalorOURPYTlKTnN0WHNqc1dZNzRkRTJvaHpHQ2RlSEQ2?=
 =?utf-8?B?cE51OGdUZmZiRlNTaUJaeGtCM1oyV041enNxRDVFSmsrS0ZkTWxkY0hPR0U1?=
 =?utf-8?B?Sjh1L1pGSkdUNjFsbkQzTGE0S3lOSXBHVUMyK1lrVHNEekUxNXhaZTNsUEdM?=
 =?utf-8?B?Q2RGcjJIZVI1dkNYVmlybTEzK0tCd0xXMWNqUXVvb1BxaE9XMmo3cWVld1Vl?=
 =?utf-8?B?LzNZcWtjamx4U2l1TFcrZnZTT2FTZ0xScDd0N3FqS29kd1pGSDcxSzlHMDlW?=
 =?utf-8?B?OWova3VlME9iR1JYN2NaM2d3SmdVOGRVUEtmbkRkalp3VUlTQ1NvcGRoWTNt?=
 =?utf-8?B?K1dOQmZyVFAzMGJTb3EyQVk5MHZIU1pHdVBHa1ZJcTZqZGpKeVpJVlY1Yk41?=
 =?utf-8?B?bXpzcW1BMzNZMlJ6RDZUSjc0Q3pKYzkzOHIwUjE0R3loL2FJek80cmRqdjRo?=
 =?utf-8?B?dVZndXUzOVA0NXZMemprbkxURk1yZk1hNm53bW9SOWE1dzUxbEkvdFNuNFE4?=
 =?utf-8?B?Z3B6cmlNL3ZhY1ZRL0tIZEUvZkR5Q0VlQWVGR0gyMjBwRzFTRkxKVTN1TGRl?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e84f4857-1fee-4887-d97c-08ddde1ca0f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 06:01:10.0895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SyX7XR9QeG6vUejYb84SeSZx4QsABauzF8W6KyWTJx/v/oLUs73f/ug7FJcKVIUQkjxpH4G+HVj+q6QXkLvt5N0+FLtiNzSkKhyzFl1TeN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8301
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


On 8/11/2025 2:41 PM, Golani, Mitulkumar Ajitkumar wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: 07 August 2025 16:46
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
>> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit
>> K <ankit.k.nautiyal@intel.com>
>> Subject: [PATCH 08/12] drm/i915/display: Add guardband check for feature
>> latencies
>>
>> Add a check during atomic crtc check phase to ensure the programmed VRR
>> guardband is sufficient to cover latencies introduced by enabled features such as
>> DSC, PSR/PR, scalers, and DP SDPs.
>>
>> Currently, the guardband is programmed to match the vblank length, so existing
>> checks in skl_is_vblank_too_short() are valid. However, upcoming changes will
>> optimize the guardband independently of vblank, making those checks incorrect.
>>
>> Introduce an explicit guardband check to prepare for future updates that will
>> remove checking against the vblank length and later program an optimized
>> guardband.
>>
>> v2: Use new helper for PSR2/Panel Replay latency.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 138 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
>>   drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
>>   3 files changed, 140 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index af4d54672d0d..c542a3110051 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4227,6 +4227,138 @@ static int hsw_compute_linetime_wm(struct
>> intel_atomic_state *state,
>>   	return 0;
>>   }
>>
>> +static int
>> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state) {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	struct intel_atomic_state *state =
>> +		to_intel_atomic_state(crtc_state->uapi.state);
>> +	const struct intel_cdclk_state *cdclk_state;
>> +
>> +	cdclk_state = intel_atomic_get_cdclk_state(state);
>> +	if (IS_ERR(cdclk_state)) {
>> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
>> +		return 1;
>> +	}
>> +
>> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
>> +				   2 * intel_cdclk_logical(cdclk_state)));
>> +}
>> +
>> +static int
>> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int
>> +linetime) {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state-
>>> scaler_state;
>> +	int chroma_downscaling_factor =
>> skl_scaler_chroma_downscale_factor(crtc_state);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u32 dsc_prefill_latency = 0;
>> +
>> +	if (!crtc_state->dsc.compression_enable ||
>> +	    !num_scaler_users ||
>> +	    num_scaler_users > crtc->num_scalers ||
>> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
>> +		return dsc_prefill_latency;
>> +
>> +	for (int i = 0; i < num_scaler_users; i++) {
>> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].hscale, 1000) >> 16);
>> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state-
>>> scalers[i].vscale, 1000) >> 16);
>> +	}
>> +
>> +	dsc_prefill_latency =
>> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
>> vscale_k,
>> +						  chroma_downscaling_factor,
>> +
>> cdclk_prefill_adjustment(crtc_state),
>> +						  linetime);
>> +
>> +	return dsc_prefill_latency;
>> +}
>> +
>> +static int
>> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int
>> +linetime) {
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state-
>>> scaler_state;
>> +	int chroma_downscaling_factor =
>> skl_scaler_chroma_downscale_factor(crtc_state);
>> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k = 1000, vscale_k = 1000;
> Should be zero while initialization ? as already we are maxing with scaler user checks


Yes we can do that, inline with the comment on the previous patch.


Regards,

Ankit

>
>> +	int scaler_prefill_latency = 0;
>> +
>> +	if (!num_scaler_users)
>> +		return scaler_prefill_latency;
>> +
>> +	if (num_scaler_users > 1) {
>> +		hscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].hscale, 1000) >> 16);
>> +		vscale_k = max(1000, mul_u32_u32(scaler_state-
>>> scalers[0].vscale, 1000) >> 16);
>> +	}
>> +
>> +	scaler_prefill_latency =
>> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
>> vscale_k,
>> +						     chroma_downscaling_factor,
>> +
>> cdclk_prefill_adjustment(crtc_state),
>> +						     linetime);
>> +
>> +	return scaler_prefill_latency;
>> +}
>> +
>> +static int intel_crtc_check_guardband(struct intel_crtc_state
>> +*crtc_state) {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> +	int dsc_prefill_time = 0;
>> +	int scaler_prefill_time;
>> +	int wm0_prefill_time;
>> +	int pkgc_max_latency;
>> +	int psr2_pr_latency;
>> +	int min_guardband;
>> +	int guardband_us;
>> +	int sagv_latency;
>> +	int linetime_us;
>> +	int sdp_latency;
>> +	int pm_delay;
>> +
>> +	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
>> +		return 0;
>> +
>> +	if (!adjusted_mode->crtc_clock)
>> +		return 0;
>> +
>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>> +				   adjusted_mode->crtc_clock);
>> +
>> +	pkgc_max_latency = skl_watermark_max_latency(display, 1);
>> +	sagv_latency = display->sagv.block_time_us;
>> +
>> +	wm0_prefill_time = skl_max_wm0_lines(crtc_state) * linetime_us + 20;
>> +
>> +	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
>> +
>> +	if (crtc_state->dsc.compression_enable)
>> +		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
>> +
>> +	pm_delay = crtc_state->framestart_delay +
>> +		   max(sagv_latency, pkgc_max_latency) +
>> +		   wm0_prefill_time +
>> +		   scaler_prefill_time +
>> +		   dsc_prefill_time;
>> +
>> +	psr2_pr_latency =
>> intel_alpm_compute_max_link_wake_latency(crtc_state, false);
>> +	sdp_latency = intel_dp_compute_sdp_latency(crtc_state, false);
>> +
>> +	guardband_us = max(sdp_latency, psr2_pr_latency);
>> +	guardband_us = max(guardband_us, pm_delay);
>> +	min_guardband = DIV_ROUND_UP(guardband_us, linetime_us);
>> +
>> +	if (crtc_state->vrr.guardband < min_guardband) {
>> +		drm_dbg_kms(display->drm, "vrr.guardband %d < min
>> guardband %d\n",
>> +			    crtc_state->vrr.guardband, min_guardband);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>>   				   struct intel_crtc *crtc)
>>   {
>> @@ -4289,6 +4421,12 @@ static int intel_crtc_atomic_check(struct
>> intel_atomic_state *state,
>>   	if (ret)
>>   		return ret;
>>
>> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
>> +		ret = intel_crtc_check_guardband(crtc_state);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>   	return 0;
>>   }
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 4474f987de06..5ffa76cb1633 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state
>> *crtc_state,
>>   		adjusted_mode->crtc_vtotal - adjusted_mode-
>>> crtc_vblank_start;  }
>> -static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	enum plane_id plane_id;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
>> b/drivers/gpu/drm/i915/display/skl_watermark.h
>> index 62790816f030..8706c2010ebe 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct
>> intel_atomic_state *state);  void intel_program_dpkgc_latency(struct
>> intel_atomic_state *state);
>>
>>   bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
>> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);
>>
>>   #endif /* __SKL_WATERMARK_H__ */
>>
>> --
>> 2.45.2
