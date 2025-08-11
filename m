Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCB4B202E3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7118610E3AB;
	Mon, 11 Aug 2025 09:12:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="no3uj3RV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF42810E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 09:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754903559; x=1786439559;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FCEvyW0W8yQgTc0PpmPhK/OQFFMgfgqJeBo5bFhtnM0=;
 b=no3uj3RVhcuc0uCGpnAy/ceEG2GcN9yuwlCe47rlaqhGvmRTTqQcwUDs
 k8S0FrUIFF7mZ8IEiiDWmvUWzB7bK6dkxXGqpSZ2RL9O2vMAEB2L++Rtb
 ITETaYNrwe86UhhjC1iNk0NOct7dNKY/HJr5XjhLIM3VqLjt6xipWGUZA
 U3Bukt3sA4LUCwXhtsYYfweMMKi53HNaSXhSTgH9Bc3lz+6sXn+vcZwAp
 +zGy9miOsqTLxcKvRaiaV+QUXvMn4VulkcLoKPZSJ1TrUdo6/lXZ2RaIY
 4Lq8ckryEf4yALLcPcFDM0y0kCGyJlkx44nuj8j54Z6AKDVCk+Ol9dais A==;
X-CSE-ConnectionGUID: hbtfMoBURH2ENs6aU5hlXA==
X-CSE-MsgGUID: 9J549MUZTASANCCpB3UHQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="74737800"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="74737800"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:39 -0700
X-CSE-ConnectionGUID: fkw7ON8LT++sb6R530lplg==
X-CSE-MsgGUID: 8Oib2mIrTlKt/C7Wgxh32g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="166223057"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:12:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:12:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 02:12:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.76)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 11 Aug 2025 02:12:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wG8EjtYzclqSbPLayuFztaP/kuLCU09tz4xjJ7zvXwQ7HBXKV7al1b0swnLkK0sJ1biF2z3UC35GRhV3ozkUa4prx++YT7D6gZbRSM1yw502rwM6FoJc1IqBozk01b0ixQqxrN8rCQyCEawY9X0DN5AxGXaota76QS2uQnVqwQy/9iz0RM+QTGDq3GqXkd4wsduTHScEWGpndt2qlCC/GnYE/ogRkKhuj57u21hnsuYAru22CyyYFxGy3gqyhOd76PfJXE/4mBdB4LqqHSEXsgCTxqP43kQA7cBg3GVWyjbbkX1QOcbNY3QrsnD94NnlR7pHT2qrXGb4TKaHI65yGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84oNgWw/C6bTEklhj3OVoJkb/hLwEQyBKUGaGMPzuIg=;
 b=OlpzokfUWBNv1bKr0awxfdsJXOZ+qcGPHTq9hnpFTO3ifV0LI0brQvDkM46SAnA9kFnOJ5yctNf3pvEc+D/IlRzr8ilpoCaSIlAW+AUdOHBxWhva6AXhwIhc9GhX4M1rbNxKIPedWNm+neyioRM5aHqnhhOLxhhNDprczrzoD/cASRvZ16XELQZ/O9zzxobS4Wd4B3poG4ka0hS/YJLUVUG/ip8ZEW4LAocEVUViXFn8nUJ9Xtw65Qra6s7FutajO+ulkvwvRrvKQVylD9c8ZA0iuffVwRQ3DhjhDIhf+/es+Z/umGuE7hqT762UEw1oEys7J60asr7d5EVyXdGRaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 09:12:37 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9009.017; Mon, 11 Aug 2025
 09:12:36 +0000
Date: Mon, 11 Aug 2025 09:12:31 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>,
 <stable@vger.kernel.org>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>, <stable@vger.kernel.org>
Subject: [PATCH v2 1/3] drm/i915/gt: Relocate compression repacking WA for
 JSL/EHL
Message-ID: <4feaa24094e019e000ceb6011d8cd419b0361b3f.1754902406.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <cover.1754902406.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754902406.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DU6P191CA0008.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: 94e4a2a6-5dbe-4fb2-2561-08ddd8b736ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXRrdHRRSHJUb09ENEhtUWFqUVdEaHliRkQzK3ZWSWJ0ckEwNkRSV0pVVnJZ?=
 =?utf-8?B?SWRrNktFMm5nVUsyelJRbHlMWEpkZWpTZFJIVU5QVW5SU2NnUmRYeEtBb2VG?=
 =?utf-8?B?SzhYSVViR3Q3Rkg2N0tUTjZEVmVBZVRDMGhLZlB1OVRhMFJXY2MzMTM0eUo5?=
 =?utf-8?B?SENmNjl4Qk1iL0RQdDU2K1NKWE14OWkraXhaUndVNWpQWjk5bGI1TnNNV1dj?=
 =?utf-8?B?NFZoVXB2WWMvV0pjTWJQa2oySktqR3FUaElkZTFYU3FWT2IrK0ErRkk2OG5G?=
 =?utf-8?B?UGc3OGlwdjFRdmlGcEd2UkxYNndyTGhXNWFOeUZZUHhXNnFJSVptVXFLWmpX?=
 =?utf-8?B?VzEzNDB2dkpkc25hRHRwbUJDK0lVTjUrckJHMExOdHd0b0ZuMGVYRHVZYlNY?=
 =?utf-8?B?ZmlJLzNIVEo1NW5VelFqYmMzcVMrcG44WVBmTFQ5dkFwQmVyUUZHMWg5blRV?=
 =?utf-8?B?MG5XTHV6RFVKN2ptdExnSjlla2tYM1pLckNNM0JLNzRDUGNOMDFrRjFodFRt?=
 =?utf-8?B?TnRsZ20yaldYdndNdkVoazlGd2NsMWU1TVBVWnRXV3g0OXErL1FJazY2Vnd1?=
 =?utf-8?B?TEJwSExndTJYODNZcHpkNGNYc0kxRGF6aDJ3MCtURGluRWNmMjVsd0lFekNW?=
 =?utf-8?B?QUNRVXlEcENLYVhuRURnUld5K2FPL2ZxTzZYZkl4ZFp5YzdaRUk4a2NVT1BH?=
 =?utf-8?B?bzZldjdkTllIcU5LU1ZOVklJSHdPaHl3dXo3bDFrWlF3akFHZktCU1Boc01J?=
 =?utf-8?B?TzNydktBOXVaNUlyWUoyMGkvQWUycW11M2QydHhLc1hJZkcrUUFXWmhPeDB2?=
 =?utf-8?B?ZUtGWnN6UXVOQzJ0QldtazJvRVkvSE1MSnlxMEswTUpJRmFGNjFRVm9Dbkdw?=
 =?utf-8?B?dXp4emM1SURYcHBDV3RCU3c3cmNPYjgrSlpodE5vaHhCQXVHMkZsc1pqdVh0?=
 =?utf-8?B?TzhSa2lrOTBWM0hhT3ViWGdPRFJpQWtmczJpeE8vcEcwejNteGpjU0Y5ZWJr?=
 =?utf-8?B?NXo5Z0o4emlpTFpDVnc1TVdiUC85ZGkzSmR3TEcvYzZDOENLYllCL20wRk92?=
 =?utf-8?B?MFk3L09OVFdlWXVqcVFsMmxNVDdObExXQjFIbmxIZjk4YkNyYzZxNlgrUWY5?=
 =?utf-8?B?Y2Q5MzkvUk54QVZXck9oT0ozTXlKbzJyRXhOdXhrQmY0ck5hdkpsR2tzWWk0?=
 =?utf-8?B?YkRQU1RrenpSL0lBSjQvcmJmdDB4T0k2aURGN3pib2V6blcrR0hHejJnMU5h?=
 =?utf-8?B?c3VmSzdIbzFVblVqMTlyVVRFb0tUT3U4elpxTGlsZVRxSDlVL0owbkJ1T3Zk?=
 =?utf-8?B?Q0NvWmNLd2ViOWE5c1pRZFVKdGdsSklxODFDZzU3V1RxeTl0LzFmbTBMRjlV?=
 =?utf-8?B?ZmRqOWl6eWpjR1FxdWVpNW5Dd1BKcEp0YUJJYW9jNWE4djJEUlB5UzhuVVZ2?=
 =?utf-8?B?MUNRc0JqUjlXSkM0ZWVpN3IrbmRzTUdkdlUrL09tZ3RsWStKNWZ3Q3dwWGNw?=
 =?utf-8?B?eHQ3c0VidThqNUFpWWk2MzNoNFRMSTJOZ1FqTzM0cnBvOEVkM1VVODRkNndU?=
 =?utf-8?B?cVB5M0pWeEVmaFhLSVQ4WTdQN2tSQTlxc3VVZHpuWEh6Vk1tZEZxZjA3R3Z1?=
 =?utf-8?B?b3NMQ0trNXRId1Iwd2VMbzA5T0RpSHpBc3pWK1hMT2I0Ny96bDdvYkJ5QTN4?=
 =?utf-8?B?VTJCcWM1WUI3dFdWN1JURW00QVluLzI0ckNQWWgrWG1YcXNzL1dIUjViL2NO?=
 =?utf-8?B?VUd3WjIzeUlBeFl5aWpadmliakJzbmhkbTJJVmJIMm1yVzNYZ0ZnaWRYUC9D?=
 =?utf-8?B?L1poS1daRS9oWHo2bmRyaklFOFBQbVEzbWtUQUtTT3J4cVV0SEdFaFlHc3FM?=
 =?utf-8?B?VTlhWG9nZTZ3VUxDTjNOVXhYM0tzU0FNeUVSYm1hK0ZzMXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDFBRlE4YllEYjd2RkZPNGdSVm45UlgrSlJEVjFhMm9Gb1FuTjhEV0o2aWFF?=
 =?utf-8?B?b01TcTNaaWkxbmp2YzZSdVVSUVRDZTVYQ1Z5amZocitFemN4Q1hSSkdDN2pw?=
 =?utf-8?B?bkRWbkdHUnU0blJHUHRvTUJFQ2JxQXJmZlJFQWd2OFpoR2NKZWtkdGZrU0J6?=
 =?utf-8?B?Zk8vYXF4UjZwSnFQU0xONncrSjA4UDFGUXBnOWY5dkczM1lncE8zclNYUXg1?=
 =?utf-8?B?ZXFRRUZRTEpWSzdGWW1IZklUZkVUV1NhZXU4RUo1ZTdodnJya2szN2h0M1F4?=
 =?utf-8?B?SjJWTjdjalNJaGR2YVp1Q1VBMkQwb3ZuOXBjU2ZkeUZiNDNsTjJueWJyT0p6?=
 =?utf-8?B?M3FaZkxFTzVJS0cyeExkV2pnT0l0bGRGQkFOZFFwcmk5ZXhFdEZxell1cEVt?=
 =?utf-8?B?SVNKTWRhMVZ5ampENW9NUFp4MVVQVUQwVHhtOXY2cjJzRTZPQ0RpU0dGUkR0?=
 =?utf-8?B?cTRDbUlpT2NZZWxIZks4VlZ3V05zSjFDZW9kNXVUVUpPWlNURjh5M2QxZFlN?=
 =?utf-8?B?cFVTZTJ3VnJpNlJYTmtadXNiWGR2ay9lTk14T0NBVlFMZm1zUHU2L1RaUG5Z?=
 =?utf-8?B?R1Y0NXVmK0IyS2NJbnlPR09HcGhXM29FOGppRVd5VmZRbkd3ci9mdTNSYUJM?=
 =?utf-8?B?ZTVGTFFhN1I2VDZuM1Zia3BlUGJiNUcxVjNISTBwRFBWeGpQMnh2QncxRkNU?=
 =?utf-8?B?dFFDdVo1bEU2QU9mdW1CWUcyTVE5NGFQYjF1cFNsYVQ1bnBiNVVoOGM1UDZl?=
 =?utf-8?B?NGV1UUJKeFhSZ3U2aGFLRzNqQlVHc1ZsVVpGaDY0ZHNxNFMzUFBJb3c2YitV?=
 =?utf-8?B?U2ltZWRDVUNQbldhcmUzTjBJSGhMY3JmUzFPMktITEFRZk5MQ3NSUGhrOUtF?=
 =?utf-8?B?Wkw0TnpKTU9SVGlpMG5VMzFreU0xcFFMUFJ1MExWYUtXTlQyKzlGVjh6WUxQ?=
 =?utf-8?B?Vy9mSjRwK0g4YlBrcnNObENudjBhNXNWbGR5ckZKUm1qMjhVb3lOTVBCb29N?=
 =?utf-8?B?b25FZDVzcjlLMGVoSlV1c09XamplSyt4cE9uRnduTFlJTGJOQU9sdjhKL09r?=
 =?utf-8?B?NWo5R1NhOFdWSnVZcWpKME02N3BxT3owaE1kV0l4cjQzZnNRZjJqd2Rsc1JE?=
 =?utf-8?B?ZWZsNW9lRnB5d2dCVE9CMG9FaEw3T0VHYWVZMnhzZUpGVGZyVHFIUkNyVzNq?=
 =?utf-8?B?Sjh4SEI1ekZQSUNyRXNRT3dRdzNKMDNseXZiK2dwdmhldElkTXlFYjVUY0NK?=
 =?utf-8?B?aDNiK3dVRG5QcXptWDFxQlF6aEFCcWQrU2cyMVNpVktWQklxS09Eay9jOTZQ?=
 =?utf-8?B?Nno1Y3hjd09Ha3Q2VmdCSDJWYUpUaHVudnF1NVlDNHk2OFJsZGsvbFo2U3lx?=
 =?utf-8?B?eDdJa2ZkVkxNd08zcTJWOFp1NTlCZFV5aVRGNVFJN2dkR3dpRGc1bXEyWm1l?=
 =?utf-8?B?dzhpUDQ4TmFoZC9jVC9BbHlweHJkU1N2QzBKNGpiaHJzUmgwcVFLaWdiOHZz?=
 =?utf-8?B?T080bUhHb1l1SnBhb3ZrK2dJQlN5cDlsTHlYU2pZdzYwdjRuVHVpNEYvR3VD?=
 =?utf-8?B?cSs3TWlGM21pS2p1eU5SVm8zNVBTK2IvM2JHWktHNkpjb05Ca1d2djNXNFFy?=
 =?utf-8?B?SzBySFZBSHFxNUlKT2VkSlVSdlRRZ2t1WjlmdEtmYmJmSjRmRHJNWjVXNlV3?=
 =?utf-8?B?dHY3VlNoMWFsY25ZUHNHM0VpdDVuRjMwMUhsQWhYQ1hBTzNyR0ZMUWsxMlU1?=
 =?utf-8?B?MCtrREpPWXU4bVdMZStWdmJTQjNpYkZDMHJocDIxSjVhMlpqUDJoWU9sTldN?=
 =?utf-8?B?VFY2ZHkwcGRpdUhwQ2ZTdGJLditiQlN6VERTMEtXTHlwSjc1U0haQlcxRURy?=
 =?utf-8?B?YTQ1Q2RCcHk1a2JiUjhoSXUrakRDM1p3RGtwa3dkVUU1N2xieUJ1bkgvMW9k?=
 =?utf-8?B?aTR2WmxOYVFaNkw0YWRkVndzNDNmZ1NmZ1oraXpFTE5oMWNLZElpV3JhUnAw?=
 =?utf-8?B?QVdZNnc5UVhHVndJZUlacGlkaVVNSDdXb0VvSGMxL1VPcUlwV2pONGdHSDBK?=
 =?utf-8?B?MTI1RTJrenlQeXRPR05INHdFdmw1eGxkWG84dkFQZXBRN01EbXFZWGhoeTVy?=
 =?utf-8?B?TVdvT2RoU0FVeFA5MHMvWWNUcGlmN3MrbGxlYlR5UWR5bi9FWkFBVlJIVU9R?=
 =?utf-8?Q?VExbfxa1JhxfteH1fVyTwc4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e4a2a6-5dbe-4fb2-2561-08ddd8b736ca
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 09:12:36.8739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rk+wlcWgBPRLxqSVtC4PU5W3WhOe1/ssdtiGpTsRi7SxUcQ5kknozP95yn5SqeenrNimkonmlYgMhgo4F0Bq9NejXHq3UyrYlDjSyCoIaiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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

CACHE_MODE_0 registers should be saved and restored as part of
the context, not during engine reset. Move the related workaround
(Disable Repacking for Compression) from rcs_engine_wa_init()
to icl_ctx_workarounds_init() for Jasper Lake and Elkhart
Lake platforms. This ensures the WA is applied during context
initialisation.

BSPEC: 11322

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
Fixes: 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL")
Closes: Fixes: 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL")
Cc: <stable@vger.kernel.org> # v6.13+
---
v1 -> v2:
	- clarify commit message
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b37e400f74e5..5a95f06900b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -634,6 +634,8 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 				     struct i915_wa_list *wal)
 {
+	struct drm_i915_private *i915 = engine->i915;
+
 	/* Wa_1406697149 (WaDisableBankHangMode:icl) */
 	wa_write(wal, GEN8_L3CNTLREG, GEN8_ERRDETBCTRL);
 
@@ -669,6 +671,15 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_1406306137:icl,ehl */
 	wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
+
+	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
+		/*
+		 * Disable Repacking for Compression (masked R/W access)
+		 * before rendering compressed surfaces for display.
+		 */
+		wa_masked_en(wal, CACHE_MODE_0_GEN7,
+			     DISABLE_REPACKING_FOR_COMPRESSION);
+	}
 }
 
 /*
@@ -2306,15 +2317,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
 
-	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
-		/*
-		 * "Disable Repacking for Compression (masked R/W access)
-		 *  before rendering compressed surfaces for display."
-		 */
-		wa_masked_en(wal, CACHE_MODE_0_GEN7,
-			     DISABLE_REPACKING_FOR_COMPRESSION);
-	}
-
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
-- 
2.34.1

