Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F09F9B0A0A6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A6510E94B;
	Fri, 18 Jul 2025 10:28:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFKjWdii";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4317810E94D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 10:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834507; x=1784370507;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fvnhbEAgqx/j+pRRVl/X7lllR9pD7dTJkvKlIC6eG2k=;
 b=SFKjWdiiqDijB11AELUq7/twJRFOVnJeeftpsI/hcGWR2OmgQaHdQSoQ
 b/cqwJQoTl6JberTSLxgZkStmSqeFe6CSBiacyyiRn7gBH+NPnOS4Hjjs
 pFFDEWzzF4pqoEcJGYW4tu9M3gXF2Uf6JnkZkyBLMepkdsnf56gus4FUz
 d5xwBUcP3Ehy+u0e0mbXSr69KrbAZ7to4et6YKDclS8B5+gj8whTa9FKP
 gZ/PQRcR38wSwov08umFFUL0JSpm6z4dbHRqPP3N3fmG5Bo02a4MuyoQb
 uGbbdloYB4q3DeIBD6LxYZsWQiduxBXrSkDtiiuohlY64BOFmScx/NWxq w==;
X-CSE-ConnectionGUID: d7yGwCjjSOWVEENQU1s38g==
X-CSE-MsgGUID: bEKuhXogSny/RbkzjwwkUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65385312"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="65385312"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:27 -0700
X-CSE-ConnectionGUID: Iwn5CFCCRjmo3LU2A5w8Ow==
X-CSE-MsgGUID: /TIzHNV7QI+pLpd5/b90TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="162057775"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:28:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.85)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fUEvpQqIdvW6CgmuFo386Wt48tbXrSTuQ4zhLGy75eTLp2uoYmBVV4rsvAUCpbuTitsVxawXh++nv62WSy567BAsDKajxDMnGlwNaNGQc75rtiKCq+LDPHuJO7rfZzobyChTnLmk3TNlf288nP2iseTi9f7RAW2RV808JF+LUkCF7ttt6uA78L5aoTf64ihxOmuqpJcAyz7JmZgjdah8uFtYH/lZTppd5WWXyCE76om/QOz8NnNuAHxN5r68IaLStfTMsi+7/tVfkiuvdgoExHOWCru7YwFt+utDD/AAHgo+u+TfVRAwcv/C3uNJ2M2D59HQITFj+qH91/eW/BolMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q0xN5nam1CSnGIe+zH5Y1GRnHpV+IV0LViHWGF5kpQI=;
 b=AYxgfS8dZY3ChOCtjqKbLooOj/fj3oHwSbIyR8weUl0SsebvHBVT7Pa/OPUoiyCDBbpqwUA+wLWkKh5uLryENyEgUfOkS5LbWBS4attvgPl4yos2+TcyoUo9dHB8VxzQ9QDfjjOt8Fg0j/9GggfBTLz5gFJ2tLC8pcu15+dvf+R1JYESgb8x3b3yAjaOjmym2GX5nrFhtLhyClC0MGDIw8EUJXyOeJigqWEN6KQ7eOVFs7s4pMz/5tJlgDFw7jfT26OWzNHRB8n2AaHu5pNuOsmuFKNHSyDHVOj7aIe01nwH33luwl3KONprMl5O79SK6CyYXcMalgYA7H0LLgjk/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7538.namprd11.prod.outlook.com (2603:10b6:806:32b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 10:28:24 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Fri, 18 Jul 2025
 10:28:24 +0000
Date: Fri, 18 Jul 2025 10:28:19 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v3 3/4] drm/i915: Replace empty conditional with continue in
 eb_relocate_vma()
Message-ID: <20250718102752.684975-4-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA1P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::18) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: a5c40106-ced3-44a5-ee85-08ddc5e5d35c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTFuc3JsbTkxcXBjR3VMTWd6bXdOZW9tSEVtMDVlYW8vdlR3OGVTb0R1aWhn?=
 =?utf-8?B?S3U2aXFlT3UxTjFUa2dTanN2ZWNia0txbi9mOXlqLzF1SzQ4U29EVXdCVEVq?=
 =?utf-8?B?RmZTNXRMR0hYR2R4bkZjYXk4Y0owN1lINmo1VEFaQnZtelk2aTA3NVJNTG9z?=
 =?utf-8?B?c2huK3M4NCs4bHJ4T1kwTDI0WjRFM0JYZHBtNVk4b2ZaMEN5Vis5c3NrNW1y?=
 =?utf-8?B?K0k3Tzltd1JuTUJqWThIdGUyaWhKVHZ0dlUzSTVEL1lteC84WHlOdTBrR1V6?=
 =?utf-8?B?QXlaZEpwZ21GSkVQSUJITllmdE1uQTlzUW5DYkJGYTlyODhWVWxjcHY4SDdE?=
 =?utf-8?B?NVR5MTdNZzVVUGttc3Y5NmVBQlZkMVFicUNNWXRQYUlWeXhzUzJ6eUdVRTlN?=
 =?utf-8?B?MWRRRTdoQ1N4VElMazVXazJCamRJS0JabWs2d0M2YXRTUjdvT2FsVFV6WnFC?=
 =?utf-8?B?SkZ3WkFRRFc3L2RlZ2NEdDlmZGNhMGtuc0xna25UL2I5VW9nd0NVTjAzUUVY?=
 =?utf-8?B?Q2NJVW9vL0FOVlRmWlF6T3pkMjZJTEluVHRnckNiUGEweXFmdDhsR2tDeHVj?=
 =?utf-8?B?MXNtdnZrTDlBdllLQnYyTGY4Nmh4RFVQMDQ2VWtRUFdoQmdxdHlUK3FHRWcw?=
 =?utf-8?B?andUS0RyeGg4MG1TVXQrVlRsaE04ZGxkWnFOaDg5YnV3aVk1OEQ0Tm9Td0Zy?=
 =?utf-8?B?cjVQQnFEY21lV1JlSG5xcUtkTXR0SDd0WUkvdTBpU2ExSjFrWmZIQnRWZDhH?=
 =?utf-8?B?b01sOGhtdmlWVGN6eWpFRDNTNXZEUG03T0xGSGx5QmtXNTZnbXFnZG1rWUFN?=
 =?utf-8?B?YitXWkVJb1VtSTNsbVovczAzZURDWEMzZnhZWVJRMEVnMkNZYjJZcXJXT3Zj?=
 =?utf-8?B?OHJSVTVXK3R2M0NJcytFSUJ3MkdJdXgybThzUy9SVG9mVDJVU09xUllVL0Fs?=
 =?utf-8?B?a1BvdjFDUW93Vi9ZUDM1dXpUeVNGRkFMRUorMk1Ea1NzeEpvNFVuWXZBZU9z?=
 =?utf-8?B?NDd0dXA5Ym5PaFIwMm53bHYzNGVFRGwveFhwMHZuSThLRWpPak1qemxFUnIr?=
 =?utf-8?B?QXJ5SlhaWGQ2aG8xSmdCNHRHbjg2a3BNVXMzN0x6Y0ZSZjdXQ1lZb0JzQjU3?=
 =?utf-8?B?WlFGYXU2UFpQaGkweUJRZExJYit0Ym8rcGh2cElLNHBDRXhzUEFsaUcvdlRE?=
 =?utf-8?B?eWhNd2hyVHE4UzZ3U25hVVR4WmJNNk5CYjNCOVNXT1BSU1Z6a1JQTGZ5QVV5?=
 =?utf-8?B?Vml4QWVwb3A2QVBEVkE0KzEyYnJpU2NRdktlSTRJWHl4Qm9MQTlRVm9zMU9Y?=
 =?utf-8?B?MUdOYzR5cWErSldwVFU2L1BsMUQ3MFpoRkkySlVRQUUxK0dKSU9jS0FTNC9N?=
 =?utf-8?B?dmhveXNTUzJadklENVNFdmorV09xM0RFdXlWQXJMZmxHV3BmZzMwNDN1WkRT?=
 =?utf-8?B?Sm8rVitJNUJLTmhkdzUzc2FMclZvT3AvUWxXbEFMbWlnVlVKVG8zdDZtVU1B?=
 =?utf-8?B?WnhnbWhQZVNsK09pZGFFL29rMzBkb1VEalQwWWlLQ1M4SjJBUUFWM3liUzB1?=
 =?utf-8?B?RVhhNzhKSE1LRFRRZWV4SHFKNGJSU1FJZlJlWktobTBqTVpZUlRJTDk5aEF3?=
 =?utf-8?B?ZHc0MzRlS1ZxSlNreW1LdE0rWGhjTEtVOVMwdVZNamdFMFoyN1JrTmNhNFhD?=
 =?utf-8?B?RkdRcXJkbzFPVzlDbVcyOEQ3VUJDMi9MT0RHaWNKRVhtR0RFR3dwdDJaWGM0?=
 =?utf-8?B?RDRFQkoxM2VFQUJXUGlvbUg0Y2tQUnIxWURJWGpXVDRxdVprbittSVFORCtW?=
 =?utf-8?B?Mzd2aFJkbzFnYUhHVTlRanpKUHlIUWhRcC8yd2t3VXVzSnF4dnJNRURxaVdP?=
 =?utf-8?B?RnVXd25hQnE5MkF3ZGw5aFhIdGYwSkV6ZGRubys5VGJ6TllHMWZ1OG9qWW1M?=
 =?utf-8?Q?f766ZAZwtUU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDZZNkltNnhmV0xGUkNWVW1wV2tyMnhXL2JrbG9ZM1haQ1hmZ2lCZ1FENVpD?=
 =?utf-8?B?RStjNVVwSi9zK0hkc2ZXSnFzWFk1dHVqNEg4Qkgvc3ZIMzBma1NHR1dIemF4?=
 =?utf-8?B?NmdtNlZPYTFHdzE5cWJNMjNYd0xQYzlId24zYzRCYk54M3U1VFdYaW5TVUM4?=
 =?utf-8?B?cHpkYXYyNDl5OVBabGdpUzkzT20vK0ZJU0VWUXI2Szl0QVZ6dXdocUhzT0J4?=
 =?utf-8?B?SjE2MFZ3UDVRSEIyQmdQUnVJNTJ6UzZpRVAzeGd2UGpERFhsdEt4MUFBNXQv?=
 =?utf-8?B?R2ZUNVk4R1Y2Z081RFQyMDJ4UXRQenc5OEdma0JXWFdkQlJibmQxYVE1TXpK?=
 =?utf-8?B?SWVjQzhQTnk0K01JUVFZUzFUenJ4Z0VGOVZJZW4xUnMzcnA2b1FOdEZReHJ1?=
 =?utf-8?B?VjRFSEhKdFNuUjBiMjhaNCtPYTA4alk0Z1RLdUZtRlBhNDVKTXJyWktvUVR6?=
 =?utf-8?B?WVJjeDVvL1QxQTByeldLeFRvZGUyUU5ST1hCa0g1dUxzR2ZTWDFCbVZlcW9i?=
 =?utf-8?B?bmJybTd1dVdrb2F1RzkyNmpzMmU1bjVCTnhnN2s4VmRQdXJiMHk4OStOZEJJ?=
 =?utf-8?B?RFMzTllJWFl1ZEdZL28wSkoyVmloTFV2Tk5HTEVQemo1bTdrdFBRcjRKdDRF?=
 =?utf-8?B?VnFTMS9laHRJZTYvdHkrTHV0cmd6Wit0L2FzWVpLalVHcTEyRm5PR21kL1Rm?=
 =?utf-8?B?SVBCNVJJbFF1QXdMNktLNjNOR2s0MGJQbmNES01sdHlxMGZyR2t5Z0NHdC9S?=
 =?utf-8?B?UTZoYVhuRlIxMWk5M05NaGJqNExWVmFSczBXamlhRTI3dElpWGRNdnRYaVRT?=
 =?utf-8?B?K3JrZjZMRjNsd2FkOUltdGFBeDJOMDJlbW1PeEpNSG9aMkE4Ni9Razc2WFp0?=
 =?utf-8?B?eTNqYUtaQzF3VEF2YlJMMDB0azhlTVoxQjJNV1V2RkZuV3VwaUV2SGtKMUhZ?=
 =?utf-8?B?aElaaHZKTkRQeFM5RERyaVZkVVJXdjlCUFZJSnFtNm9LMkNFV0JZbUtTL2tt?=
 =?utf-8?B?dDRHc0FWaXZlcFFrU25aQ2RkalJEOTVqTVZXUCtENnhjbU8wS3hzdlNpR296?=
 =?utf-8?B?TjF3Tk5GYi81cVRnT3hrQnpjTGpFQ1ZMdU1iRDR0NGlQUkZoMEs2WmxqMy8x?=
 =?utf-8?B?Ly9sR1NOV2hxYml4c3Rnd0hqMDF1S1puMGN5bFBRSFQ4ZmV2anlEY2YxYVdo?=
 =?utf-8?B?SE9TTWMwQWZoQ0p6aWpHbVZuVXhYcTRNR25LV01PQ0MxV0ZaUDZhbjBEbWxm?=
 =?utf-8?B?TTVoaDdxQkQzNkFBK0FURGtNaFBsek5XN2J5am5XZG1mc0I1NHFCeDRwbXpt?=
 =?utf-8?B?VzRMM3Q3elR2OGJSNHU4cUdTREJOMVkrRUw1cExBUzArQ3lYb1JCRWM0U0p6?=
 =?utf-8?B?aTU5SWcrWk55dktrK3lSTEM4MU4xY3ZQdDJZaWM1S1JBb3YvQWthbXozT25u?=
 =?utf-8?B?NGNlQmhzMWJUR1ZURVg0RjZZTEE5NzE1VG9jempsSmNCK2F4NUhtVDdkc0JT?=
 =?utf-8?B?UElxY05ZWW96TytiZjd2K0N6eis0eUhGUGJYbmZWdGVSVW1FdDEvMURLY1VK?=
 =?utf-8?B?S0VQOGZiSkFIVmVXTDNHajRKNjFyNHpnNnd6dnZPdXFZTThTWm5yT2daS3lC?=
 =?utf-8?B?SnZiQ0VCSG5Zci8wOVhqOFRVdTVCOWFKSGk5V2dTWDEzVCt3dDNsL0dHV1Ev?=
 =?utf-8?B?c005Rkw3eXFxayswSUsvOXVnNmo2UDBndXl3eWtWbDE2TXJBZDBoRHdSc3dE?=
 =?utf-8?B?d0YyYThEcTNrNm1RYlM0ZGxTN3ZhS3dWY0pBMFJJbkxPYjRpdFVINWJyUUVH?=
 =?utf-8?B?TVN1eld0RXFqc3l3WnE1UkNzbzlHKzJRYTJwS1ZTUUNRMlFwMkhGWXoxNVVi?=
 =?utf-8?B?OFpXaXdVMWcrMWt1VWozVGpCUWJwUkFSWjhqUGViRTJseVpqQlVQUWFTM1VD?=
 =?utf-8?B?UFhoS0UwclZmOFhaQ3p4YmZvc3VJcXZkclBDQlhLdkF1ZEcrQ1NLTEg4T0VQ?=
 =?utf-8?B?ay84NHJMTms3S0pqd2ExS2FkN01LM2V1Vnp0ZTJMSlM5RXBleUhVekVBSitM?=
 =?utf-8?B?WVp6c2I1K0ZsNThBYzUwb3FIY3FuM2c0ZjlnSzF5SC91MUJWeHVabXl0Y1M0?=
 =?utf-8?B?dU0yL3FIaGNjRGhBMk5KeEN0R1N6L1ZxYzl3YU9HU2N6L0NBcm4rUTNCN1Fl?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5c40106-ced3-44a5-ee85-08ddc5e5d35c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 10:28:24.1765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TDYAzYQ821MmEoE5iovuRxxmC0C7zH1TAsqpzYjXOW+2MJCpIwp9lM6f+wV3J0Bf16+iSFpvjCqV+f7rfcLis+VB7LKqwqNJ1hqj9i97+6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
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

Simplifies the control flow by replacing an empty
`if (likely(offset == 0))` block with a `continue` statement. This
improves readability and avoids unnecessary nesting.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v2 -> v3
	- Split commit to isolate individual changes
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 54 +++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 42a525f28f3e..e66d2f60f23b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1568,36 +1568,36 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		do {
 			u64 offset = eb_relocate_entry(eb, ev, r);
 
-			if (likely(offset == 0)) {
-			} else if ((s64)offset < 0) {
+			if (likely(offset == 0))
+				continue;
+
+			if ((s64)offset < 0) {
 				remain = (int)offset;
 				goto out;
-			} else {
-				/*
-				 * Note that reporting an error now
-				 * leaves everything in an inconsistent
-				 * state as we have *already* changed
-				 * the relocation value inside the
-				 * object. As we have not changed the
-				 * reloc.presumed_offset or will not
-				 * change the execobject.offset, on the
-				 * call we may not rewrite the value
-				 * inside the object, leaving it
-				 * dangling and causing a GPU hang. Unless
-				 * userspace dynamically rebuilds the
-				 * relocations on each execbuf rather than
-				 * presume a static tree.
-				 *
-				 * We did previously check if the relocations
-				 * were writable (access_ok), an error now
-				 * would be a strange race with mprotect,
-				 * having already demonstrated that we
-				 * can read from this userspace address.
-				 */
-				offset = gen8_canonical_addr(offset & ~UPDATE);
-				__put_user(offset,
-					   &urelocs[r - stack].presumed_offset);
 			}
+			/*
+			 * Note that reporting an error now
+			 * leaves everything in an inconsistent
+			 * state as we have *already* changed
+			 * the relocation value inside the
+			 * object. As we have not changed the
+			 * reloc.presumed_offset or will not
+			 * change the execobject.offset, on the
+			 * call we may not rewrite the value
+			 * inside the object, leaving it
+			 * dangling and causing a GPU hang. Unless
+			 * userspace dynamically rebuilds the
+			 * relocations on each execbuf rather than
+			 * presume a static tree.
+			 *
+			 * We did previously check if the relocations
+			 * were writable (access_ok), an error now
+			 * would be a strange race with mprotect,
+			 * having already demonstrated that we
+			 * can read from this userspace address.
+			 */
+			offset = gen8_canonical_addr(offset & ~UPDATE);
+			__put_user(offset, &urelocs[r - stack].presumed_offset);
 		} while (r++, --count);
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
-- 
2.34.1

