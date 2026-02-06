Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEHfEa2hhWlKEAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:09:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DAEFB462
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 09:09:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37B010E564;
	Fri,  6 Feb 2026 08:09:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ee5ffXBP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951B110E55F;
 Fri,  6 Feb 2026 08:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770365353; x=1801901353;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=my1wo+QQYVfHQ3F4CXMXYGltUNFupKp+mnm6SoD4qZY=;
 b=Ee5ffXBPU2yrcOrBVfJ9LztH3ej5obb1B1elWw+8qwCuoNuv2xCw4ffn
 ZLWwmZOnLhoZklzPXnVJ3akFIbrLcRasXIJFUSkTw+pjX2F93SAnTYaDd
 ast58DT7NJnJrkX2QqsGpVdxXulNxAb9l4gjKLjGhy4/9fxc/Iyq836bZ
 GbISv7TQPErwaSOPGz+p2eUWZ1GeD6Y1RuwKY7kos6GNQarxqf/T4eQ0R
 wWfsD53yWGxUaU6oBGye34FaIO+TgcL5PJBxFndTYQpGlmtlmvqN4A3ib
 hNvo0UIDCDFhyhvTVtGpKU9fHdUuB8+KC1WN2Bh0IN4whbF7szmRYH0I9 w==;
X-CSE-ConnectionGUID: YVipkAKrS6i+TwazkrgxQA==
X-CSE-MsgGUID: zn0CefBhQf+4Fdst2kpL3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71670740"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71670740"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:09:13 -0800
X-CSE-ConnectionGUID: rOpFOYeXRAGkQr+AvKlGxg==
X-CSE-MsgGUID: JJNvVJ5UTaqMm49YFG5EKg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 00:09:13 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:09:13 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 00:09:13 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 00:09:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MGtkF/3reDpIMOi2hiKhMWpDnQogDX5IUZ0csCb2EfqvG8NFHYw4rbnQyG3i51lw/yvanTqgkqlZ0jJ+E3fLF8GgNUKydXRMztLEKKODG/MSsCXwtxiJi3XEpgBS6b0LB02qeW1KYi7I5xdyuvLQX9Vea3faJWBc6Bd3TuNXzfEbjtIh8hInVqReOZR3ypR7pF3a7OYWZxms5xJzsYe1QruTYfGeV+Ys/dk6lvftPv+eFBGZDiVnP2vaPNEFRIWLFXmONOu7LA6rEmFCen1hHssccRwSi8MYQSC668yk3nao0hVmrgJ9yAQx4saC7hWFZSN6Sr99C0tChvdFBff9Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5tcYlUZF+gu1UVZmA4od4r4Fteczn1Fekj+4Pyx6ow8=;
 b=Z5AJ/npFYAjg2a6S0HqrQhW36fPW18CQuHBjdLfrisZfPN0va1gf4S7ir4ifa0yfTFx5jcYmU69OA+bS26J2OS4W/QPYwtVxtfZuTIOxVLgZf+rWmpV51x8/AZo1QgEjWQvMUwjv4OtbUOUQAhV/qhP4v5uZeREsmrDmtgzgZnCxX6z0FYE5i78SAI5e855s3bnbTy6hFO8eRYOjQwc26fWaokVOpyL9JdkocVhYiV+JAhRZBw2xlPWWqVIy5M4WdufLKGWAp2HbEGjeKROYXbd7D1AU2ik6r0Up/55a3RuSbM0kR+DQRlT4w+rcFxsoF9kei5stdbtQyZLXNvlh4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB4992.namprd11.prod.outlook.com (2603:10b6:a03:2d4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 08:09:11 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 08:09:11 +0000
Date: Fri, 6 Feb 2026 08:08:58 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v5 4/6] lib/igt_device_scan: List PCIe bridge ports
 after their children
Message-ID: <s2plzhlcpbaffm6s5jjucqqlvz5manqzzadz7oiqezvbpuxzlt@pyovto4aq4ab>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
 <20260205145427.1338534-12-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260205145427.1338534-12-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TL2P290CA0022.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::6)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB4992:EE_
X-MS-Office365-Filtering-Correlation-Id: 07983c0a-f69e-443d-3df2-08de65570253
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MU1UL2JMdXVyNFlxM2FMUG04MjVVQ2o0RHpmS3AzTm9PTGJTOWpQd0k0cTNi?=
 =?utf-8?B?WXFURGpkT081NE9aUEd6MGd2a1RUeDVVMjRiem9Ta2lpRTZMOUxpcGFjd3Va?=
 =?utf-8?B?NnNyYUNkTXV0ZlltWnpsRnMyYXNCQlV2MEMxM0Y3R3NrSnY4elBVaVJzRW45?=
 =?utf-8?B?S05yeHNFajZqQk1UWWFzbHR4SkJOYzVEV2YxNWk0cnRvYlZucXBrbHhLcUpu?=
 =?utf-8?B?QTZMcDFrMHZ4QW5rTlA1QS92akgwR3BEcHNwMktYNDRHSis4Um12ZE5tajFw?=
 =?utf-8?B?OTlFc2lOYXk4aTJ1SWtKMktXcTZPYUFnUkxZUDNwbEJ6T0cxMjlsY2JobzJS?=
 =?utf-8?B?eEQrL3FJZXFFV1IxM2hWOWVVZWdJdUlRTlE2NWxCb2Zua0Y1aEY4SkVQaVhE?=
 =?utf-8?B?Qk1YbWx4cHdjQUJQRzNabDBZa0FhS0phL0YwbzVyb3Q3emRhbmlGZU9qQVVw?=
 =?utf-8?B?amlIaTY5VlFqRzVPZ0ROWjY4bmtUSXRPMmxCM2hkMXRKTXV2SVNUR0VQSzR3?=
 =?utf-8?B?N0JLWmFwUGVkQXB3b21nc2kxRWZFeTgwcmY0QzlSeTQzMUJzTmVYZ0lyT3R3?=
 =?utf-8?B?b2JBRUdwVDcxcldJSG0zRHQ0a0E0aUVaQ0pDTis0a01uNFM1VEhickdSUGF2?=
 =?utf-8?B?WXE4OFZJWldPRllIR3g0VzBhS09IU0JtNjloSFJYUlF6ajRtdDFmcm9vc1My?=
 =?utf-8?B?VHZMaGlEVkxETmFoNTlxNk5uTzBuNkpxZXUxVlZxaXpHdnkzZjE3WkFWK0tu?=
 =?utf-8?B?OStiSmdiZi96T1BUVkl2OGdCL3AvWHlJSzA0WUgva09qZXE5bjlEQzRoYUFy?=
 =?utf-8?B?VXc2UW5iN2k1Q1ZqOGwxbHBQR0F5RzRrS1piMXRLd2prL3RHSGFyc3QyOENy?=
 =?utf-8?B?QWhZa2JWUVpPcmlsUjA0azlqSWRBQlUzZlBKVmVOMWpWSDRpUEdxV2F0T0Ux?=
 =?utf-8?B?NXNXRDdHWkUxcCtremRMZ3lmN2oxT0J1NkVnRGl5M1FqL3RseEdoVGQxQ2ts?=
 =?utf-8?B?c0NUYUdlRjVmVGxBQWNHOEJ4SXQ5TGVBNERtSnUzd2xPdGpjNDBHUmprSTVo?=
 =?utf-8?B?VGs4KzA5VWRjbmpveFp5WllEYW91ZnBRRHUrcWdXRDJQWDBONkRQSFNETGpY?=
 =?utf-8?B?SWtITmMvOERORHI3Smh5bCtYcXFLR0pmeEZxOWpEU3I2d0RnUGpRdDdSNVl5?=
 =?utf-8?B?SFpZeHFKRzZ1SGk5V0RVQWR5YTNEem1yN0xQUVZJdHpISVBjT2RUUDJCdytj?=
 =?utf-8?B?UXBPemQyeTV6QmpUUkRDclRlczNwQ003WXJ5Vk5IY21vWTkwZi9FalBrQzRD?=
 =?utf-8?B?VGx2MndUczNNOW9zYUI2R0NYcjB6RHVNMXdMdTFyUHpzNjZJMW9FMzZQVDZ2?=
 =?utf-8?B?Y3Jlc1RtSUhqd2NMSk5CVVpPeWdlaXA5c3dULzJRVXZhY1RQOEtMb21LM2NS?=
 =?utf-8?B?aGVZejIvOWlUaGhBeGFFa0VjKzlFOG5Hcy9LT210dmVZQzE1VUF5MFNNY1Bn?=
 =?utf-8?B?MU94MW13Nmd6QlZVSUYxb2EzdDRjS3JFaGhvQVhiVlQyYjRVcHhKbEpGd0Y2?=
 =?utf-8?B?S3Y3aERmWWhSUlVpODJXWENxMHdwY25obWdxd1VhVHBzMFpPN0F4VjREWGNm?=
 =?utf-8?B?Q0x1a3BvNFFzcXQwNWdIOTlDY2xlV2VIWmR4RFZBYy9mYUFYQkpKZXVka2Y0?=
 =?utf-8?B?em5ydCtNUlhSbEZQbWRsaUxKUUtIZk5aaVJTK2pJR1dHZnZ1TXNhU09DcDB1?=
 =?utf-8?B?bHhvQ3NCRUg4VzFZUFMyOW5BV1BkWklVSkUzdXBRTTljWDRLejZlWnpaUnBz?=
 =?utf-8?B?QXkxZWsvSTNiQ3B0TmNYS052NWREQ3p0V1ZxVFJEakpjREVlL2pxZnhld0FJ?=
 =?utf-8?B?S1Z5SG4wQ002cTVJWEEzTTFsTGRQelhjdXYwV1dYWWJUS1VyeXErd2N6N0NC?=
 =?utf-8?B?M3BpT0xVVWx6aWRwZ3lDR3VEd2R1Z25nZEk2NitZZEg0eVFMak1wTlhaaFZo?=
 =?utf-8?B?NW1LbUxYQ0dKZU5TbzljOThmUlR3c2FyVG9XL3VieXBLU1FOREZ0bll0bVdU?=
 =?utf-8?B?Sko5VGR4OUtRZTJNRHZvSFR0MmtNc3FHTnA2bHg4QzN5Vmw1Nll5WkdUZzNP?=
 =?utf-8?Q?sl/U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTJib3B4azJDNVBCRkpLTTFCbkNyV01OeS9WRmlFWXQ5bjBFSFRqMXQwWDNJ?=
 =?utf-8?B?Y0ZBeUtRNkVwNVJ4N2hxNkx4cnRlQjFiMnVENkI3UmJnT1ErbjQ2VGFMaFlG?=
 =?utf-8?B?K21SVk9wK3FPMFZ6TXRsM0dWTGJLS202Y1R5eHpuZW5NcURWWjlBeTZzRzh1?=
 =?utf-8?B?NEhsUys5U1pPR1IzR29GWE45anRmRFE0ZlJXNU5DQXd2LzEyMXdaV1lpZWJz?=
 =?utf-8?B?Ykdab1c1T1JML1d2STNMc21waFpSTnBlT2pSak44aGRFS1pnTDVicGZSV3A4?=
 =?utf-8?B?UEFFcUpRVE5IalAxZG1DWE1kOXM2cUtibWQzdkVrMWhoWWcxeTdRam1XTE5K?=
 =?utf-8?B?Y1dlTnp3MlpObEZPaVlMcFVmZXJVNzRXZDBaVWNRMUswY3AvNCtuRWpkbDZC?=
 =?utf-8?B?TFRXYVJLYVN6b09BSnd6dy9lQkRiZmtaMU4vZnBlN09sY3FaQzFzSGxBUU9u?=
 =?utf-8?B?KzVCdGJ4ZmxiNVJjV1IzZHViSXg5K3NDaXA2R2FBQm9XdjhacGN3bU9TY0RB?=
 =?utf-8?B?dlVNSWlQVGxmSU15M3dLekR0a0ZsOHdzS051VGdXOVR5NVhVOUZFa2hqRjZW?=
 =?utf-8?B?Vjl3WWdhSEM2RFo0RlF5M1dEUy9qVWFxM3p6NFlkcE41cTZMTGtyYjl1dVJF?=
 =?utf-8?B?UDZEa0xoUWtMY1lycjVvbmVRTDUrTUwwT2FyYTI2T2lOM3ZWTk5VdkVNRGhQ?=
 =?utf-8?B?dC9XMDRJcGRmRC9sTElWN2d4VU9kV2xJV3MrNXZ1ZG9vbFhjTzhMeHVLTUt4?=
 =?utf-8?B?dGttVWtadGhlck9lTk9zdWVGdVdhT0FadHhEZlFsVkRFeTZ5U2l3L1loYVBQ?=
 =?utf-8?B?QUtuQ011ajY4eUR1WHVsL0JyS2g3OXJGWHJ5UW9GOFpTN1dXQ2s4VlZ0Ri9Q?=
 =?utf-8?B?SnpWcjh2OUVvbnREMVRYZWFBbTBDcnYwY25Eam1hUFF5QmY0ZzRBbU9pUjdu?=
 =?utf-8?B?UE8wdUpRTFA1elRKMEcrV2h1RnptY1BtUzV0Vk4zdkt5endvZVYwbC9LMHFo?=
 =?utf-8?B?SWlLNnYvNGdrYlZPNUR2Zjc0b0RnQWcydjNOT0t5RDdsc3JINWx1NE51aGNB?=
 =?utf-8?B?WDZwMmJqZkpzdlFpaG5xT2FUZ0lBVlZkcm5xak5xeWxzdFFzVitqdXNuRGJo?=
 =?utf-8?B?bW9JUm9xa3B5ekI3TTFqSUZ5VCtLaTA2eHhhb1A0R3d4ZHpHWUQ1bnI1RWI1?=
 =?utf-8?B?YzJtRG5UTTFSR0h4cFU2RlNGa0U2czlzVGFFZUxFMmNiQk9yejk5QzJDRDNq?=
 =?utf-8?B?YlJ2WTFVODZtV2ExTExLdXl4ajZoU2JWMXZsN0tyRDdQTWhtelJLRVEzNkFi?=
 =?utf-8?B?U1NXM3ZXMWpFU0ZLa3lRNmo4Slg1WVJYQ0w4TGREaDhLR0J5d0pUeG96aU03?=
 =?utf-8?B?dCtPYzlmR1lmVVpKblQvVVZxaFdIdkw3Z2VWRElmeWpZNnBwQUpOTWtmZmNQ?=
 =?utf-8?B?am1qbVVmR0xIcmdTcWc2ZFlYZkprRkczU2t6a0kwcDkvK3lPVFMrcyt0aWRS?=
 =?utf-8?B?L1ZMajd1NFZjV2NkRmVvZ1YyUGpxSE9vT0ZmRTRlL011aFM1Q2Z0SGtzTEta?=
 =?utf-8?B?b2VRNWRyRjNNQlBJQVJjbHgvOGdpUDk1TjV5OXpkNFpWSmoycXBQRVlkRjFJ?=
 =?utf-8?B?TmJOdnU5QnhpRVpTZjhVT3lUaEZpMXNORk1jaUg0ZlN5cHRzczlrR3FjeXEv?=
 =?utf-8?B?N0htRGc0dmFFOFF6cFpQbkg3Q3owbmRFZ0VFdm1KVElZUCt5SFlQV2FoQ1dW?=
 =?utf-8?B?bU9VTzE1WDFYNURuczZWYzFsVW5qMTRvS3VlZS9Md3ZQYVB1dTlWRXNCZGN5?=
 =?utf-8?B?b2hQdTRKYmNSNTM3SGlsU1Zpb244RDM5RHprU09aa0NCem8xVjRuSFN2ZENO?=
 =?utf-8?B?aUp2N1ZUemlFMmhZVkJrZ0U5RCtLQVN4bzE2UmxJRDJPamIyUXRpc25FdHJN?=
 =?utf-8?B?YVlrRllIMkwvbnhhK1hRMm9mR0sxTEN2eGhqRVdzTEJkTUNDa1ZNa3lXaVZv?=
 =?utf-8?B?ZEl4ZU9uZ1hFMFg3YmlZN2tXM3ZmSU83cFd2RWd4VHNCWDB5UDlHbDFDUC8y?=
 =?utf-8?B?am9vYTZBbVFiaWhkWHBCT2pMRGY2Z1VsY2FmL1E2cXI1MkI2dy9ub2JZU3Qz?=
 =?utf-8?B?eU9MTnZseGcrdW8zc3pDZHZUNXI3cGQzeG4zSWg1YXRFajBuRjNPTW1aRHYx?=
 =?utf-8?B?NWNDdU4rODJ4d2hGaVBkampqbjFWK3hpWWt0eTZQTVdpdytCVVdoQXpiSVUx?=
 =?utf-8?B?RVhlbDRlZXZJM1JSaU05elNHRUl1dmRkSGgrSXBhM0Nxd05JOHQ2cGRwMk5S?=
 =?utf-8?B?dmJCRFlmN0oxRGZVNUhWQUt1RFdPWTBnREJ5dlRRdWhyYTRDeEJqQllpTXRT?=
 =?utf-8?Q?U+0INc9MDRT+GOfc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07983c0a-f69e-443d-3df2-08de65570253
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 08:09:11.0265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bTmXHY8yRSIZmBynlQ+HY4a8R9aw/sUh3YrgEuwteUy+U7bL7j9vIGge+yc/SsygqObUek3f7HRf03Fucr7S/8R2eEBNqL344POxJw/8trY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4992
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D0DAEFB462
X-Rspamd-Action: no action

Hi Janusz,

On 2026-02-05 at 15:51:53 +0100, Janusz Krzysztofik wrote:
> Current device sorting algorithm positions PCIe bridge upstream ports
> between DRM and PCI devices of their GPU children.  Listing those two not
> interleaved with bridge ports, and the ports following their PCI GPU
> devices, seems more clear.  Go for it.
> 
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
