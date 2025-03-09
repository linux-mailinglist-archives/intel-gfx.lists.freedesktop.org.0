Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97594A585D9
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Mar 2025 17:36:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CE010E277;
	Sun,  9 Mar 2025 16:36:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHwDZaYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 325BC10E277;
 Sun,  9 Mar 2025 16:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741538160; x=1773074160;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fURPQNBTVCqHTxHu4D8u5PFQYsOUg2huahDTVbCgJbo=;
 b=fHwDZaYUWvKjZlva4yfMs04JX3qnXdynmA+VtG7fZIa8+nCe6Cc9hLQM
 IXdW732bkA9OMb6laHKHf+1/l/i1DZWWLJsoFgxWvExNPap04+eESwG6p
 lmOsAANLAYMheKBCjCvONeVo/Jug4Sl7U0iYK+bb42H3hiCHDU/P7vwSe
 8oFMSZegR+DXybvl1j+0l73n2Qd2ogfEJ+hIkGZFxzwTSdtX+XKzPkGCc
 rVq71CIJZjhAmlDag5ifgJ9k3Un3Sx49To2eghKJMrdyFyJjXwxyYk6Bm
 0ph02Vd+PcLcBp2WzgW60hQdTS5ciWJQbmk5BxE7cWB6xd3+oU1tnX1yp A==;
X-CSE-ConnectionGUID: XwMLSGMcTAenpgIIkrUBbg==
X-CSE-MsgGUID: o3aQrfEyQaC2ly0HYZkANw==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="53173675"
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="53173675"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2025 09:35:58 -0700
X-CSE-ConnectionGUID: NsEyItkXTG+5OAvfhC8pFw==
X-CSE-MsgGUID: i1OA4onGTgqObmhYSoevyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,234,1736841600"; d="scan'208";a="119630159"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Mar 2025 09:35:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 9 Mar 2025 09:35:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 9 Mar 2025 09:35:58 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 9 Mar 2025 09:35:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M0pZ/x5eewq5GJ0b9XoP/izFpIN1WahmGbzUK3N3ozylAAS0Z/zdbsiKT7bnwkne3zt56C0dW5ILxYCgezeEgExxUMIjCWny5wR0yttO+raN/nZZUwif5xxrlf+nv8eP5sxVv61kl5fImyJyb+RHEmhoLpI8+JyNEIHMlR4umIG9mNhQiAN4AF/8ccLPLirU4EMY7U0q//qZL6OHN/xBSseq3gr/kzATckYjHDqd73J4oyoozlPoDVfaXTDvJZUMZz7+ieskDfsW1yrNyY8QR64scv7xGu9zjcwsyiNE4sDq2Fh2Ma5ns/7/x4lTA0vu0TC0C8dqGHj1I21vGwiWZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z8hjw87MJanrackUTXlXSOynJoothGiRKyJQ14/lG7E=;
 b=JFAEQNxLFRlKRVEuhuUhVNiqVxhuZN/eai6NEdYGxY8gc52YDBmx5WzaHA7HvpaHZ602AK4Q5NaWaVtQgkuuhqAJP1yztdFMULcEi10sVthMVzv0iFoipdRSj/nAkqE/XUIF4NDpmOekAlA5m8/RGwrS/+6yIynjOp7EZQJQvBAZG08MHFHdinfcDQ2RyTcRpAEO5XHIEAShVhVK3CCdEFAnfvTPyEX+oX6xYcwiof08wqUGjANEm6YW9BJOLLXOAb1AT3fH8cPRb4HrGebeYjG0hDQMv4IKcFh+EV9QS0WtyIlRfl1w1rlUcpAA71N3C1n8j9N3stO2gCVR1qzipg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Sun, 9 Mar
 2025 16:35:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Sun, 9 Mar 2025
 16:35:55 +0000
Message-ID: <49d75934-ea02-45e1-a8ec-862af3aee5b1@intel.com>
Date: Sun, 9 Mar 2025 22:05:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/21] drm/i915/display: Move vrr.guardband/pipeline_full
 out of !fastset block
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-18-ankit.k.nautiyal@intel.com>
 <Z8sCIb37gtdczFtx@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8sCIb37gtdczFtx@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0003.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 897c3044-2d5f-4213-19e9-08dd5f2876af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXppU0UxQlk2dGZjWlV6bXcyQlo3WWpSRVA3OFdTMlZpRmkreHQzWjRRK2U0?=
 =?utf-8?B?NEpQZU92d2htK1c4V3NUeFhaZlZ2aVlGbjVLSnYyNk1zVjZscXZaV3BQdHFj?=
 =?utf-8?B?d1VGMGZpM0JrdkpXamFpMnpVNy9COUd0VE42Q3gvZUtIQjJQMVN2TTNtSGNx?=
 =?utf-8?B?d2F6UlNFODRzOG1UNzlNdnpsMmd0OVVlczZDaDh3aHBUU2hLRTJydisyNktp?=
 =?utf-8?B?bjNybTZWN2lyU2N6MGluM3hFUEt2SzBVcXpHRFFud0t3a2V2bXdRR1FZWHZY?=
 =?utf-8?B?RkNqMTBTbWRPVWlVVU1ycUpCaWxwU2JKMTR0cmpIWlhHUm92K2VicjBGRytn?=
 =?utf-8?B?Yzk5cVVZS3pQMlpFMVZyckFtUFlpUUwwVDBZcC9JQTdpcHpsT0QyNUE0azkr?=
 =?utf-8?B?SXJoVHd0ZjZzK1hmMy92bTVsR1BxSXhrd3h3aWtDMmNrN09hYitSU2VMS1or?=
 =?utf-8?B?aUFKVnZUTkhHQUFZK2dLZXJjT0dWQVpJUmtJOEZYQ3hhM0RMa2d1bmtFUlli?=
 =?utf-8?B?WUQvbllzT0t1TEhrcHo5TkVWajlXTmpEZHdIMHBMRng0TmRnUzR2NDhWTE9N?=
 =?utf-8?B?K0NCMEs2QVMrY3hYWFZkeG5wOXcreGhqSGUvZFMrV0l5RW96Z3pNSjJDd2l6?=
 =?utf-8?B?MlQwelB2OFZodlI3WWdOZmtjN20vcm13TmlleFhVWXpyZ3RsU1Y0c2pyZTNk?=
 =?utf-8?B?QWxTbkpmTGtmdGhnRUFjK011VWQwNXNrOTY2ZkFyQTNjZ0liVXZpR1VqYllX?=
 =?utf-8?B?dDk1a1hKbTJtUUhoTHJIa2FzbXRHVXZTZ3NaTkRJVGlxV041ajBkV2tXeWM2?=
 =?utf-8?B?RmhPeXUvV3hnMEFSQmJNVXpQQ05WR3k4ZHZOcEExKzBpeUZpWjhWU213WW5l?=
 =?utf-8?B?T3lxc0U2aGtGV2VwV1krRlZuaWxVQldYK1VzaDVZMGNHY3hiTTlDLzdGWStF?=
 =?utf-8?B?WEZZNTBPVEhFeExXVC95ZW9YQktBVzlKYVp4S3hsMFhlNXlxeTJrdzJnQUp4?=
 =?utf-8?B?UzZXVEE2VDJKQ3JmRHE1N1NwZlJOOHVsKzd6UjVEd0ZEb0tDbUJiWjdvR0di?=
 =?utf-8?B?RnhnVEhOZ1d2Z1FCcVZRVmVJdVlyRUh4eFVFVTJYYkV1aVhmVjUydzRzQWZ4?=
 =?utf-8?B?WVRmUTJUM21hTkJvdGc5NTlYeWJrT0t5SForOGR4UDRiMVVCZUhwSG83WFdv?=
 =?utf-8?B?bk1yZEtVQkdBU0dvMEZBV01aMVpvVGcyN0laZVhkdlQ3R05mblhLdEFDTEtR?=
 =?utf-8?B?WVNGS3dIOHZSbG5zQzd4YUdnaDJCUHNNa2J6a0ZEalFGYlo2a3ZqOU5OcnA0?=
 =?utf-8?B?WmRVdWdmbEhLWmJIUzdkTlVzKzFQalBSSHV6ZXlMSStZU0JYM2U4aC9QRVFJ?=
 =?utf-8?B?MXFrbmZiSU1zbVhwSjFNWGV1Z3lkRUtjRDhzN1ZncUNDVVdCSTBadnN2dVhr?=
 =?utf-8?B?S3Ira2pKLzVrOTdHd0w3YWFiMTFJb3JubzFOS1VXTmhGUnBOa29PK0JVSWVQ?=
 =?utf-8?B?WjFEVGYxTVh6NElYcml2UHdWSmtZcWFFemNvUzVuUU1SWXFyT2J2SEc1ME1C?=
 =?utf-8?B?bVNBQUFyTlIxOGYyQXcrejB0M3VJcUs3bU5iZDVvUW5kb1dJWUdZOXNNZFEy?=
 =?utf-8?B?bHdQeXcwTW4zck5GZHVhUEdNSHpqYmJvOXViVmRnMzM3SGNxNlF4aWdsblFS?=
 =?utf-8?B?cVpWUUc0UUlLOVczSWFtOUw1N1FiUWZOZDJnVUR6dEp2ZTdCeVZQVGoxRWNH?=
 =?utf-8?B?aUlINlducmVRU3dZRDNRODgydmRiQ3ZnajlxZjluWUN5RktlckNWb0FMcEY1?=
 =?utf-8?B?VFJvRjR2K1VlNU9HaUNmMXo3eFQxUkhTbS9Mc2ZuS0JINTRwT0h6OFk5MjZ3?=
 =?utf-8?Q?L/kWlxr+C9ItL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clBjNkpsWENUNEhmOFhFdE9GR0dhRlRNVzcyZnJNbkdTWmJHcjZ2V3dEL25G?=
 =?utf-8?B?MHJLVmJiSzJReE55YTFHRGk3NXM1MWJnelpOOVBkZFFvb0gzNGNHSTFFR1Nj?=
 =?utf-8?B?endiTEpoa1MzclpHNmd6bmREUWNueFMxdW5PZjhPRVZtWlp6QzZ4YjBGUmNh?=
 =?utf-8?B?SHRXa0NPalk5YTk0UW1oM0cwcEFNcWpKclR3M1NROEJuV0oxNzJVUXg4Undz?=
 =?utf-8?B?NGE3L0JLekNBLy9EUUt4cFByZi9pdnJRanVjMkkyMkloM3N6QTM2NmF1dUdR?=
 =?utf-8?B?bmx0N1VjdjUrK3AxWXhwMkdFMW1nQjhNVlhRZmhub0U4ZmpSRm54a2x2MVhK?=
 =?utf-8?B?Y2EvVlpUWG9mRzZZOUFxNzd4WGhWNmxHNjUxV3dQRkk3cDdaYXRLYkQ5UXYw?=
 =?utf-8?B?ZVZFalMvTVRSN0NrTVZxZHVJUjJxMkhwdzI2OHFxSTg0NlRLRllRUzF2SlFK?=
 =?utf-8?B?MHc3RHE4U2FsaTlPN3BlTy8xV0pTVm04UTZhSm96QThJRU9nNG5xcWZmRzlB?=
 =?utf-8?B?ZHFUQWFjUVRvRjFxb1dYcmlNUFpTcVhVZCtJQlBheWNvSFZuZUpES1JUMjQr?=
 =?utf-8?B?K00xUjVyNkN1NThQbGdEb3ZCSkVDRlRaQ3ZXWi9HWnN5OVBGc2xCM1Jua05H?=
 =?utf-8?B?R0NEMkVCNDBHekowbkNLRytrVUZYYkpVbXhJL3dXc2NhSHpRcHoraVNmclBB?=
 =?utf-8?B?N2lIM1lSdnhTNWhndXpNempWSVRiUVQ1aGJ2WFBuN2VIUEZoT0tFWW95OGpn?=
 =?utf-8?B?SzR6ZXplMVVyb0xteWI0OG04VnBwWWxvSmJ0ZGFRN3RBUHlhbVk4NjFzVFVG?=
 =?utf-8?B?RExEQVhIb2hPVWFiOWVMSlh6cExiejd5Rmp0UjZDeGtQaElhQWdNQm5peHNy?=
 =?utf-8?B?VjBsNVFXalEzNzFybHE3ZW9QcGl1L0toQUxOd3ozNGRZUForQ0xjQ1E2bDU3?=
 =?utf-8?B?cXZ1aUNvaGdvTC9qWWY0SkZPVWFDTm9PZFlIc0hERjAyS0RmcEs0a3JZaVJw?=
 =?utf-8?B?alA4OTh6bVhMaWtnRm44ZkZSSVV0SXh4aHQrVXhTbzF4RFY0NGczVytIRTJa?=
 =?utf-8?B?NzRMSHArLzBQZHU1aS9GTWU5RmkzeXFuRklCSGcvODYyY0pDTW9mME1YOTBQ?=
 =?utf-8?B?SHdMclczendiVHZFN1AvL0htK2ZINHl2UlU4VVVpdGRaV1JoK0JEUVhvZHFC?=
 =?utf-8?B?Q3Q0OXhDV0UwS2xVdEpYaWJwVTVYc0hqUU1HWmF3Q2dLbU1QSXRobDZKRVc3?=
 =?utf-8?B?bXRBMXhmYVBueEVwVml3NXdKTmVGalo0WnRJTjIzbGQzLys3YndaRGw4Q0tt?=
 =?utf-8?B?VVdyZG9UTXRITlpDcEk1RDBPeHhIb1NsU0ZYU2d1WjB6Slg4VmovWXZybTFN?=
 =?utf-8?B?S3oreTlQK3dUWk9mcWhWc041cTBpS0NtaWs4dnM2N2NXTlZFK2o3VlQxZHZa?=
 =?utf-8?B?RnVBdmdlSTN3a3E2eVA2Q0lzQmd5bW9wb01qRkFneDJscUx2dFl2S08xOENy?=
 =?utf-8?B?WDhsSUVZei9jZzRncUZHL0xFbGNWUXFEdFFhZ3RCaEtvaFY4SllEZVR1R3d6?=
 =?utf-8?B?Uktad08zTE1VK2pRYjJ4YytINXlETGRnOWRXU1IwVk94ZWFZaE5NbSszUlph?=
 =?utf-8?B?TU5uQjZlQ2xnNG1ZVGVBQ2ZIY0djdVJuelBuZnpTd0ZmTFpSU1FxOEs4WFR5?=
 =?utf-8?B?VnVEcEdLWDN0VWpBSmEwTkdmeU9OYU1zZlV5V2FJb01sSkkrZUpPZzIydGY2?=
 =?utf-8?B?U04xSUp5bzlJa0c1bTVEYnp1Z2U2TTBUQXhpc0hWREs5b3UwMldXTktNcnFS?=
 =?utf-8?B?bkoyclBzeDRpdU13aGs2bFpTMTUweGRYdTl1Q1ZGVHBNekJjTE9nOUlMUnhr?=
 =?utf-8?B?TzhDWXZJamFtWkl1WWFzN3pKVnd3SEJGck5UWnJjZ1BQV052L1VrZk5HQWdv?=
 =?utf-8?B?VlJMWTEzZGQ1cnIxMlM4QkNPS3I3M28wUzh2OURhekZKMVpwU0VCYnlmZXNJ?=
 =?utf-8?B?ZGU2R3NoV3Z4YWl1Rm40K28wQlNaM3ZHcXNZeVZ5SGg0WUlEQmZhRnQrbHg0?=
 =?utf-8?B?RHNITWpYcUNQRUZXQmpLUk1iVVBJVmhEQVRZNlMyT0lpTUdGSnVXY0tUcFYw?=
 =?utf-8?B?UFZvc2IzeFVMdzJWbGFKb2RXRTh5VURMYklNUEZncXFUOVNydnQzc0pNRHRn?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 897c3044-2d5f-4213-19e9-08dd5f2876af
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2025 16:35:55.5015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VRA2ep3HnALf/Vd75bbeHxNXLLwJvvwKJ0tecujM1JyOAe/UPDLiiqr7PsKHRFEDNZxXG9kULjPv8qDQl6FiDjBEpLSLK6ykAO1C0pHsEj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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


On 3/7/2025 7:56 PM, Ville Syrjälä wrote:
> On Thu, Mar 06, 2025 at 06:40:56PM +0530, Ankit Nautiyal wrote:
>> The vrr.guardband/pipeline_full depend on the vrr.vmin. Since we have
>> set vrr.vmin to adjusted_mode->crtc_vtotal, this shouldn't change on the
>> fly. With this we can move vrr.guardband/pipeline_full out from !fastset
>> block.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 322a05648f58..a642496e366c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5393,8 +5393,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_I(vrr.vmin);
>>   		PIPE_CONF_CHECK_I(vrr.vmax);
>>   		PIPE_CONF_CHECK_I(vrr.flipline);
>> -		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>> -		PIPE_CONF_CHECK_I(vrr.guardband);
>>   		PIPE_CONF_CHECK_I(vrr.vsync_start);
>>   		PIPE_CONF_CHECK_I(vrr.vsync_end);
>>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>> @@ -5402,6 +5400,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>>   	}
>>   
>> +	PIPE_CONF_CHECK_I(vrr.pipeline_full);
>> +	PIPE_CONF_CHECK_I(vrr.guardband);
>
> Assuming we can't reprogram the guardband safely live
> I think this would have to become
>
> if (!fastset || always_use_vrr_tg()) {
>          ...
> }
>
> which avoids breaking the LRR fastset on older platforms.
>
> Whether we can still risk the fastboot exception for the new
> platforms I don't know. I guess leave it out for now and
> ponder it further later.
>
> In the future I guess one option to resurrecting the fastsets
> would be to somehow use a more fixed size gurdband instead of
> the full vblank length, but that would need a lot of thought
> and work, so definitely not something we can just do right
> now.


Yes I agree.

Will have the guardband under the new check.

Do we need to let pipeline_full as it is in !fastset since 
always_use_vrr_tg() is anyways false for older platforms? Or we keep it 
along with guardband?


Regards,

Ankit


>
>> +
>>   #undef PIPE_CONF_CHECK_X
>>   #undef PIPE_CONF_CHECK_I
>>   #undef PIPE_CONF_CHECK_LLI
>> -- 
>> 2.45.2
