Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D6E9F755B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 08:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010A910E244;
	Thu, 19 Dec 2024 07:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKoXc6Fd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAD710E244
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 07:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734593117; x=1766129117;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dbh0p/yWPEhdnRvUYaLSYafX4MOmonzf8n9TlY5F1ko=;
 b=AKoXc6Fdc7tqBWAdVTz/ZCJ+GrrxdzyINna6jTwgI5vpQGKYBmJSxINX
 pOSqoXvsSdoKmWdwR5EVWluUqWw4U6kWQVEX3p7fsS0LJs6hiXYqv1lp0
 7UuOPTTJeOu5fHHK8ysVMJN7D8pqubnFExWltLEdcf+xNjVWy5X0d4gDW
 WeMHlFuQbAPgPUDKeHT3eLdG/1IOs1PONd/N0y41jGB+ayhmfUhBVeoBq
 bPzi1Td03fe77DU2LDdWGJShB/aoHmzZX4HwgwPjtXkAxiCZQbbZZK1XD
 zWm32P0TZNYyGlaWMX39cbZy9Z0pbSEcTi617JFOlwuRHLMpcrITBN3Cv Q==;
X-CSE-ConnectionGUID: CmiWUWvLTOurA2CCYDRVUA==
X-CSE-MsgGUID: HbTvqIRdS2+9eRwIhw8Shg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34373957"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="34373957"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 23:25:17 -0800
X-CSE-ConnectionGUID: 7W80OekMS/iA4k5O3+W/cA==
X-CSE-MsgGUID: j2z4+TC7Q6SWk9JKeRlMFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103113622"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 23:25:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 23:25:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 23:25:16 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 23:25:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ondai26UE7bVoqfYQaFW510DnQWmtRUaKNbxgrLaPjdEOMDsxacwHVuSUO/0Wgnn6CuUHEdi0nfm0LIcSRLuVAdEZdvzxt/xOOjGk5Fuw2lsHfn9FtVNeHKc1I3pket76AG7kqagKcOnXvnVqhKPUguN0DOyOAGnR4j8L1VDy46B4VBSNscgIl8xO3kE6fhSGg5rehWCX+jLwmRxcQaSWVWBSV4cASsiuuvvnbrbAt+6O65Cc1ClBv3+LSW7FyJC1RTs6/cPnhUXdXN5pdUFo2Rl00VOGjRJ16bFCiCcCGKiqaValjyrWXOfiAjxIkH73NrQ3+3EiFXmm0g70zos3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nINxJ2Vtqwq+c8Juyd9GTppILyHkTOLvMtKw6G6LzoI=;
 b=xZVcX/fXljtIVnTIXB/tQPDmZlhseBB/fVp9tvUt7eJdhih2yM5F+p8XSzPGdLsnFem4DVbj8Pnuo98lp9WuahNc/n3tw5cieskZmT0jPxHEpPiGxdYxgSApg9Z599HJheFIvRpp7AT+BGPjyIt1b7MxUY+oSMXxvRTBwg33nEnY3TF2iHbTujAB53vk/UPwWqNsUcSCe4tEYMSnLwT17ABLTj8WhXUhsyF1Qs1R2IhVXSls7zbNWy2qoJErPMMGO8Std7iBoD5MJVPE3ur2tlTWfis1e7a5fg279Qq60mMLLfrVlE0W8Nm8LrVg57nQPjSXF0Wl8Qsyhh4rSZGXpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CO1PR11MB5188.namprd11.prod.outlook.com (2603:10b6:303:95::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 07:24:55 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 07:24:54 +0000
Message-ID: <f6ae2097-e7a9-4a3f-9063-ca2399d7dd9d@intel.com>
Date: Thu, 19 Dec 2024 12:54:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
References: <20241217172955.3027271-1-ravi.kumar.vodapalli@intel.com>
 <IA1PR11MB62660FE4E97DE8DA25233221E2042@IA1PR11MB6266.namprd11.prod.outlook.com>
 <a1dd7705-a6fc-40db-a130-ddabc1d3d677@intel.com>
Content-Language: en-US
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
In-Reply-To: <a1dd7705-a6fc-40db-a130-ddabc1d3d677@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::7) To IA1PR11MB6266.namprd11.prod.outlook.com
 (2603:10b6:208:3e6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6266:EE_|CO1PR11MB5188:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fc72500-d84f-4f99-8109-08dd1ffe3bef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N3NpU0NmMEJCeWhkWWJvaWVOUExxOFVUMVV0WloxbFJxWG9iL0ppNjJFcWYz?=
 =?utf-8?B?eXJySWNzNHFMdjFzaG9MM0Y1MGVkY05Lc1QxY25IQ05xdExWa2liOGx1N2Rw?=
 =?utf-8?B?OXFVRVc5eVY1ek1JUzdjc0prbmszRjVFTjVMUTh0dmExM1hNS2RhU2xxQUt2?=
 =?utf-8?B?YVlXdkNHdnBFZStYZ29renJGK01qeHlncVBlZzErR09SSTZLeURENUNUQkEr?=
 =?utf-8?B?NjRydVkrWEo4UFl3TXplRzJvRGQwd1VvbTJoTGR0Q3cwY2Rsbk1EMjFNbkwy?=
 =?utf-8?B?bVRxRVlwWFloKzg4WlAvNTE1ODNQSzFiTEtUaXJudU9HT3IwQkhveW1GM203?=
 =?utf-8?B?ZDRhTVNDMXlhM3JSZkIreTlMWEZwbzVQMzJyU1U0Y2MyS3JJUGs0N1o4ZTV6?=
 =?utf-8?B?WEx6TW9xT09xaGp5cHhWMzltbmp4US9yeDYwU2JhN3kxVXpZOEMwaEY5Mmwy?=
 =?utf-8?B?RStDc0xUZ2RQUEttYkF4Q2JoaVMxbVNDdWhMWTVoTGVCcjJ6bXhRYTVxdU1U?=
 =?utf-8?B?NC9pTkpBa1ZJK2QrUGRDWktIU2xOV2Uwd2ZsR0pJdWpZcDBVSUVFMEpqSWVJ?=
 =?utf-8?B?dkliVTlUSE5yMDNkY1o2QjkzMVBHWVo5OWFVTkJ0T1BSZC9jMjVSWExJRUo4?=
 =?utf-8?B?VW5VbWRJaEYyclVLRDVEQjVzUWtiUzFFWTZGS2tkNkFJMG84dmpXWXVjQWpB?=
 =?utf-8?B?V0hhRmJDYWdyMnpjSG1RVHRQd1NRVUFlQWFISWJKK2lrRzh1ciszYzNHQWhh?=
 =?utf-8?B?L3VLckR2bWJLNkRvNStzNGpzekZUbm54eW9senY0K2FRdURhZWpNR1JlY3gw?=
 =?utf-8?B?eGcxWUF2cWZvbnBmNUo5MmZhTENwOEFaSWVrSkRHbkM2UzBoV2xMS1p6YTZz?=
 =?utf-8?B?ZFhzMzE4N0NpM1B5SnpFYjVXa2FyWjE0U3F2ZEhVaDJIWFRwTjU1QW1QS3Rj?=
 =?utf-8?B?NkF4WjRYVTZsczE5MGJmcUdWYjNvTmV3QkdyamFBWlhvRTNDL1ltTFo1VEJt?=
 =?utf-8?B?ZWNaeVc3cERlc1R4cEgxMGM5UFM1ZWMrNW0zblVJTnBNbERsSmVQc3gyeHVh?=
 =?utf-8?B?dVJHdk9rUXRjVUw1SzN5dGxVMWIva3dWVjlYTkIrbHM4eHZKT1J3RXR6b2Rz?=
 =?utf-8?B?L29zVFVhZi9MWEZ2aTdzNkdaMjkxQ0srWGt5eW51aldQcEVQRmxFcHBNemFt?=
 =?utf-8?B?blNETjJxVU9yam9jNGlxaDF5NnpPaUdYUHBlbGlpa1gwVlZiSWdoQXRGVlox?=
 =?utf-8?B?ZjVLRG1UcFNtNjUzc21YcFRZT21UZ1JhN1dJQkV5ZGNpNjZ2ekxGbE50ZUw0?=
 =?utf-8?B?Z1R4aURxT2pXRzJTaGhHY1pSNmx4MHZaRlJESjIvWU1xekpzMWh4ZUZ5dzRm?=
 =?utf-8?B?Y0lYZzdTZE1IbVZnalA3aDFBUlc5YXRTUm14NUpkUGt4VjdlQ0t1bjJYUWxh?=
 =?utf-8?B?QVBNN25zcWl5ekVBcEJzNUx5N1ZIckNEd1NZQ2ZqVDRIYW1Qdnl3N0tYR1d1?=
 =?utf-8?B?cGVpNUhBZ1AzTEZKaHBpOXQvSjNjbUE4Qy9lbVZIMlluLzNSanowOGZmamt3?=
 =?utf-8?B?L2lBVXNCNCtaRC8yc2FuYnpFU2NtU0RUV2pKTUlCSzE0bDBmSkxiTC84S21G?=
 =?utf-8?B?MGRaVEdUUmMvRDJwdFVHTjlZQXZzQTVGclR3eEVTNkdpYkM4dXdTN3hidTk0?=
 =?utf-8?B?QlVzam5ZdjVDZVVqamRxeHplTzlTYzZBdFY2NGJZdzJYa3d0bkhvenpiRFQy?=
 =?utf-8?B?UEsvSENGZnBYRjcrakVjWEpaQy9FWFRnNERqOW5wdklOdFVnMmRLc2czRndp?=
 =?utf-8?B?WDBtOXAvYmdRcWZVQ0x5dWdQL3BPbkJsTVVBRy9sbElISzMrcyt3KzV6MXhT?=
 =?utf-8?Q?es3lCySPEcx0C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTFLYlp5d21nQU5KeWt0TTFBY0tkcHNuNkhtUUtCMUJ2ZVhqMi80ZzY4OGRN?=
 =?utf-8?B?NTJDTldUVWZuNkZDUzR1RCs5RjQ2UmRINzh1U0dJN0RBN2htZjhUUTU5QmI3?=
 =?utf-8?B?OHF2S3F1TlpCVms2UC9KQ0pPLzZIV1ZhRDNyYlRZelNHR1JLMWlDWFgwRStC?=
 =?utf-8?B?Rk9MM0ErajVST2ZEbkhYbWNqRW9CZzFjdjlubEtUR2VWQ09LT2RNMmFxUDVl?=
 =?utf-8?B?SklTVTUxazdGSGQ5b2dDaU5uazZYVkNtd21CR1dxazdNaU8wUCthSG9jWC90?=
 =?utf-8?B?UHlyWWJ3Q1RsMnQ2azd4TEdmRElIZUNLSkx4dURGanJyeENsZ2pvVHFZQUxY?=
 =?utf-8?B?Z0thNEFnMjBsTVlrRDloTFBOZlQ5LzZ1RkMrQkpmRWduOEpqcDBUbnV2NGth?=
 =?utf-8?B?VGhkWUJPNSt5QXZzaXVaazBpMkkrSXlsT2NCdy84MnVDbXhUWXozeUl0NFA5?=
 =?utf-8?B?c2RkR2Z1bXNQai9RSVFSUGxZR0xiUTBSNlZIbW5NQ2VtUmZTNzNTVlVBYXRj?=
 =?utf-8?B?WGsvcmhoZElzMUZsNzhFNmZPZC9zYjE2eittWU9ZZG5DNDB6SWJZY3dtclZo?=
 =?utf-8?B?QnNiUWhwNnNlNWVudkQ4TlFpSFN4MFJ0MXNHM3g0bnZsVFZiVm5qLzJzR3Mz?=
 =?utf-8?B?cVRqcjRGVjgzSFZKR21FUjU0N0p1eTY0L0lPY3I1RHFYYUNkaVcwdzlzZ21w?=
 =?utf-8?B?SnhTaTUrMU9mUVpNU01UTHZHK2tFOFZmWVJ0OEJiU0FkMGwxZ0hxN3dkRFN0?=
 =?utf-8?B?WFJjYXc5RGs2Rit2dCsrT1oyT0FlcjRnMlZMaUV0ZEZNM1pORXJiK0o0Sm4z?=
 =?utf-8?B?UVlaMnlQb21UUUQ0T2NNYmd3NXJHQ0tORDdxVUkzbDl6NC8vUytJb0FsZEFw?=
 =?utf-8?B?S0VNbWMzSXN3OTcrWDA1VlNVVU5WVW5xMVpQcHFadytQaitnK3VNTmFta2pC?=
 =?utf-8?B?RVlFdFQ5ZWg4dVJia1R2eWprODBqS3lIZTNHNzU3aWRIaW84ZXQwaDRVUFVX?=
 =?utf-8?B?QWozMER1UkUrb0JuK0wyQ2VZU0x0SERNYTZLRDN5QWt6S1UvcUM1MkZyc1h3?=
 =?utf-8?B?WWtWWmszbVM1QkIwajIweEFCVE5JT3A0QXBJZkEwQytiV0pJYXpuM0tDb1lu?=
 =?utf-8?B?RHYxMXRKNnNsdllXcU1WbDBEa2gxQ3Vtanc0KzVmek9GVXhlaS9hN040cFlO?=
 =?utf-8?B?M1ZibFVDQis5QlJHYnBORkd5MUZVVmtaL3pzWDNXTVVmUGRaeHJIclB5SlVE?=
 =?utf-8?B?eUtPQmlZempTT3RTL0NjWExNTEtKRndzZnFvdmx2VzMzT3Z2c09yeFN5aFlh?=
 =?utf-8?B?bW1QT0pjYnhtY2N6ZG1wKzF6dS8xOHFZcnBVMWdFdGpMc2hYK0JXODM0eEdk?=
 =?utf-8?B?a1lhVyt3aEpzckUzM3hYR1dnVjhvZFVwaWdhbWxjZFVTWUliOHRkQ3phSTlV?=
 =?utf-8?B?T2JmbnRuYUdzVXFOMVkybm5HeG9VN0N5cU1CTmNhdFdMUFp3YzlMWWdDNlJj?=
 =?utf-8?B?cHdvVk9SV1FnSkNJdEhqNFZWa0szOUs4MzcxeWVSNWNJVkc5L25vVndXbkN2?=
 =?utf-8?B?ZFVXOXQrdmV5Vmoza3ExYkdnODdPNTIxNG95MFVrelhjaXhNbEQrellxQkc1?=
 =?utf-8?B?c3lZclJRK3AvR0U0N0xVY0EreWpaY0RSdDM2VjNTbXFOWklmUHV3dExHS1lp?=
 =?utf-8?B?SVNlWlluWGNDdDV3WWJONG9GUGM4S3hVQlE2OEYxYkNacXBpaVI5NkVsdlc3?=
 =?utf-8?B?VWhhRHQ1UHhGNzRoQ0ZoUFRrWmxNVDJKMzJkdXJpUnhmdXpSWlVJSjREVmlv?=
 =?utf-8?B?bVBnb09vMkxGM1RVSEN4d0JqcWx5a05hLzRHcVE3SUxPeGtoS1JOYThqOSsx?=
 =?utf-8?B?MCtHNVE4WFh3NnQ1bFNGQ2pnMVRJOGg3STRFSTlQa3N1ZUFvZkVRSnNRekhC?=
 =?utf-8?B?NVVuVDZhRndYU0tJbk5CYmtzSGl1WUlXNjlLQmFYbll5TWRYRDVEZDliMTJh?=
 =?utf-8?B?cVJyTVJadFdMVUVWQ0ZPU0dGZlk2QVdYSC8zNzgvVkF2Z1IxQzRNN0x1QUlh?=
 =?utf-8?B?NlpOa0dNaVJGQTNmU1hJdFplTUErWFZMSTgxdWgydnJLd3g5YUNoNi9neld3?=
 =?utf-8?B?OGxCczRwQ3dQT2RUTHRsRk82NmxZaFBSdzNJbEw3clJnZ2wrOTlFaDZtSVdr?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fc72500-d84f-4f99-8109-08dd1ffe3bef
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 07:24:54.8649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74BhLAA8DbhLL+uIWqRPWLpU6Q7NoofiWWwm80vBcapnjhKIfTudbXks//UqUpstm3K15qdVA4+HAIGVqNpY46YTIP0l9NF2bW8c2kOxr+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5188
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



On 18-Dec-24 11:54 PM, Vodapalli, Ravi Kumar wrote:
> Hi,
> 
> My inline comments
> 
> 
> On 12/18/2024 2:07 AM, Bhadane, Dnyaneshwar wrote:
>>> -----Original Message-----
>>> From: Vodapalli, Ravi Kumar<ravi.kumar.vodapalli@intel.com>
>>> Sent: Tuesday, December 17, 2024 11:00 PM
>>> To:intel-gfx@lists.freedesktop.org
>>> Cc: Vivekanandan, Balasubramani
>>> <balasubramani.vivekanandan@intel.com>; Roper, Matthew D
>>> <matthew.d.roper@intel.com>; De Marchi, Lucas
>>> <lucas.demarchi@intel.com>; Sousa, Gustavo<gustavo.sousa@intel.com>;
>>> Taylor, Clinton A<clinton.a.taylor@intel.com>; Atwood, Matthew S
>>> <matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar
>>> <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar
>>> <haridhar.kalvala@intel.com>; Chauhan, Shekhar
>>> <shekhar.chauhan@intel.com>
>>> Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
>>> service
>>>
>>> While display initialization along with MBUS credits programming DBUF_CTL
>>> register is also programmed, as a part of it the tracker state service field is
>>> also set to 0x8 value when default value is other than 0x8 which are for
>>> platforms past display version 13.
>>> For remaining platforms the default value is already 0x8 so don't program
>>> them.
>>>
>>> Bspec: 49213
>>> Signed-off-by: Ravi Kumar Vodapalli<ravi.kumar.vodapalli@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> index 34465d56def0..cbcc4bddc01f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> @@ -1126,7 +1126,7 @@ static void gen12_dbuf_slices_config(struct
>>> intel_display *display)  {
>>>   	enum dbuf_slice slice;
>>>
>>> -	if (display->platform.alderlake_p)
>>> +	if (DISPLAY_VER(display) >= 13)
>> Hi Ravi,
>> This new condition is not needed here since there's already a similar check in the caller function icl_display_core_init().
>> Please update the condition at the caller function and remove this code from here.
> 
> As MattR explained The function gen12_dbuf_slices_config() name suggest 
> that it is called for gen12 platform onwards and higher, any changes in 
> the code for higher platforms has to be implemented in that function. 

I don't know which part of my review was unclear that you mixed it up 
with what you wrote above. But what I am trying to convey is that we can 
easily modify the caller function condition as

	if (DISPLAY_VER(display) == 12)

instead of modifying the platform check inside gen12_dbuf_slices_config()

Dnyaneshwar

> Ravi Kumar V
>> Dnyaneshwar,
>>>   		return;
>>>
>>>   	for_each_dbuf_slice(display, slice)
>>> --
>>> 2.25.1
> 

