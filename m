Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B195EC33ED0
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C411C10E279;
	Wed,  5 Nov 2025 04:24:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TxZ8iaqO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D93210E6BE;
 Wed,  5 Nov 2025 04:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762316670; x=1793852670;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uCLrJ3obzoGa5AzVBucvY56W7dZglBJfl7+J3fb2c4c=;
 b=TxZ8iaqOstV3DG3Sy6xcKiYUQMr/xOyP0RphAfm9ud52nGs8HaXLeKsm
 Bl6C9a/B5+rNhYZpnToFW/bHMtdM5l1tlJBWXtris3GIkNCifBTU5u4KU
 r/ecqOE87IKbPiuik8BKfEUYMnWmbgdb8oY0f1i0bDSRbrZ7lkP/aZXBH
 5qYBXkwuQSujZ5MGt7eukaSuDxB6q6zA2ET+4nz1MKq9tyVTh4arSTDOT
 c1oJ8Xpix441Qa5PSU0jcQeeal3/OGKEj0Yv8pYOntIbN0TiC9ffS4BaH
 53k+Vas9FIrn77EBSuHn33hSYyN+c4U1+yt0LbyHlT9VwFrEdzBk7LPQi A==;
X-CSE-ConnectionGUID: undslyc4TFO2aAApESr1og==
X-CSE-MsgGUID: w8zVAze+RemHYRruIZaduw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="81827707"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="81827707"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:24:29 -0800
X-CSE-ConnectionGUID: jVFM+LunR1eBme00pvReNQ==
X-CSE-MsgGUID: p4Pmr8wRQ2S9IrbLtIBvwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="187032716"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:24:28 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:24:27 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:24:27 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:24:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y4eEyefbhhPOXV9vZhPB1EBzYfD7vvNlaO7E9KinhcStLK1P+s2FlkHofunlfVMpNnDs9uhi1EwWWkKm3oCFEdsFjKn/pSa9f+YeyE0WOW8eZvGka8xXIiDQO39Ws63kE8AG0YL2a+chkT5KpVJNUmvKc0SNsSQqiGbyQqz1e/nHGyq77xspKb0nryX2NP3PNM3cnQtgG+EvClEvt8omPgrWiTadkPPM2j4lqjLsLCOM+Mf0cMl7vK56L+V3+5KN3BcAV/FmJdgG0XNS5Llicy6Aljm8ZDiEarr+O8Io+ly3Zg+GYfvDWOnylOfm3Mf6GGmHaWF50vxTf6HEoVndBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dcrfw/Z+8dTHtGv9tDy4VyZlk9zS8DlOWRGh9u0i0M=;
 b=UM87cQyoV1dBJTNYcjsXJhpbkUCP3Gf/0Qc/LGLu4U4kMHdjubh4TLHmjBB3dDhK89qrxbj3coLDVrSj+k9WH//v/ucYNpLgQ46dMHCGTdIzeF/7gTDo0avMv+xzibvRzii2uZzXJtSC6d2ssvVFYMEYCeBI1Th8A0avNKC9Uagji3mMyrzKgRy3MpqfnjI8z9LbaqkyiDTiMDhe9FXHB9WC5MjB7QIfFSiF+v9U/vYAzKN/6DhIQ0PLKjIQWfC4uANHssPBoK3ChnxB39bNnx04pOmM+xxBPv2nkE3fyUVKrpMlJIFXVIOJxavuhZPxSTbntmhSIyDY/Vtw9uuM6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 04:24:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:24:24 +0000
Message-ID: <f9948308-a2ee-457e-b425-2c8e14aba1fd@intel.com>
Date: Wed, 5 Nov 2025 09:54:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 05/22] drm/i915/vrr: Add DC Balance params to crtc_state
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0197.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7556:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cc43c32-ad9a-49af-327d-08de1c233327
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bForZzhYNjFSSVFaWjFVZVgzeUU0N3JUdzdvcGYzWVdlNUYxRVRBSnVpeE5W?=
 =?utf-8?B?T3Q2SlVNK1IycVpKeTgwUjVSaTJYK1M4VGF3VUM1OWJlVVAxdGhWdkV3MUgz?=
 =?utf-8?B?c2hvWU8zSitVNWUxQ0lFZGd3SE03YkIzd1N2RFV5cWxwTGtCcXEzMUcrQlZ5?=
 =?utf-8?B?aEtmUGFKYXdrSGhqOXFjOWxNOG1JL2VTVkhvd29IemJ4MGc3OElIYUJaaGFh?=
 =?utf-8?B?SCtnREVGWmkrSzk4WUZrd21JYkhxM0JiMTRJTlczQUg4bk5vckR6eS9NVGVM?=
 =?utf-8?B?emtOMHFLamdVcWN5NkdxZFpJdGtBSXl4TmJMSDZWSDlrR1VUdnRBVkZWcVhK?=
 =?utf-8?B?SzNBVGRFaWd1M1d3OUlGZXlMbXNja2tYbWc0MDdweHN3YlRseDhlbVhnSkRT?=
 =?utf-8?B?ZzZIcTZDQmdscTFlcXJldjhmcEk4aVZ2R2dRYTQvYTdJYTdWZFVvUExERGhn?=
 =?utf-8?B?RkxLUDlXeTFHVlZ2L1VodzVDMXF4UnJHeGNyMVlIQktpOWt6Q0NZRkc0Y3Fs?=
 =?utf-8?B?S2ZFS2xpR1dkaGlLSTVSTHg4alZ1a0ZnbzhERCs5ZG9KMEdCdEF5ZHkyaWRl?=
 =?utf-8?B?Z0d3dzM3VGlRNXRqLzVodHFpaXZoSGpteENKenNab1Z6ZFBma1pzd0RkckNz?=
 =?utf-8?B?WllGbStpRnMrSlFWTTNPUzNBcjNmRXRuaHZ6RC9LUGhXcEV6UkRBN3ArMWIz?=
 =?utf-8?B?U3hLWmxwSTdET3FvemlHamJGQUZOTE1hUTF6QmtHWThCeVMrTjh3ZHdQNzkv?=
 =?utf-8?B?ZjlpYnRuZ3k3UE93aHBJZHRMRkI1dzVhZVQvcWJYWU9OT0ZzT0tUSVJka2FP?=
 =?utf-8?B?UGo2WHZzUUkrRGtPQlFTOXlqTnpreW5qNmZzcnZnbXBxaUQ0L0t3WENpV1JY?=
 =?utf-8?B?QklRcXBkNkdyQU1XRHBQcUw2TGd3SEVBVklyc1RWSnNZc2hzMVQrRlo5ZlY3?=
 =?utf-8?B?ZmQ2ZkZFWkNiUk5IUUxtSEdwVktnQitjaCtIeE9ZU0NibGdmWkJLYjVFVzNM?=
 =?utf-8?B?TnRUSjhiZ25YalFneHRUUk9hV25QVmpWQjNxTWJmMlJLdGVxZHdISUlRK2Mz?=
 =?utf-8?B?Q3VJdk9YZlE0dktDUm1EMnJ6MmJzQ0RLektWSW9iNllzdUErMEtMK2hMK2VC?=
 =?utf-8?B?aUcwQ0lzaUwrbVZxcFd0VzdaUk1YWS9aZE11QXYvLytYUTRXWG9maHE4K3BG?=
 =?utf-8?B?QldEb3hsSzBQUHB3ZE1DOCs0NExFRFRjdmNhcW15WWRDbGhLaHZ4dUdhNTVm?=
 =?utf-8?B?Vm9PYXNtTnVvUEVRSXVqeFVwNkJQY3pROE0zLzdnRFpUTUk5VFdsanVpdkl1?=
 =?utf-8?B?eWg4QzBHWHZ6QnVyRE4wUWwwREUvYy9uRHJLNjdwaFpEbnNOQ3JoUU9UZ3RN?=
 =?utf-8?B?ZHBOaDBDbDhmRWxlUXlXRXJIdDNIMXYxRnl3b1pNTHV6S28vNWNnYU11N1Mx?=
 =?utf-8?B?SEpKUFZZazRLV0NXRStXTFBtWXJONzRwekZlT3d4K1lmTVJoWlNTelpMd1hw?=
 =?utf-8?B?eFduNkluL3JsZkQ0NEJNaWZBem96NDJHRElsMWJVaVVvdmlHNEpRcG0xQmgr?=
 =?utf-8?B?ckk3RFVvUXJZOTU2SDlPNU9QeFNUQmxLaGhwckozMGlsc0xBMGxDMTVrcWsr?=
 =?utf-8?B?RFpSVmswVnBqYzBSZE9OemhOcEF4RTVveURIVUhVZ2V3akdzYjlCblc2T0cv?=
 =?utf-8?B?bzNobUNWUWZSN3VQMmt1YVdDQWExMm9CazlWUHJHclZPRjBKVnllOVZTTE05?=
 =?utf-8?B?WDUzb29IQnJjRHN5U3pLMVBPVXA3YlZzajc0NnBpSmJOMVNlQ0dHa3grTlNB?=
 =?utf-8?B?RThUQUxoa3Q5L3Z2VjJXUUw4bExKTHlEQWtiaWNLZHlJb01TdDVEWGR3TTgr?=
 =?utf-8?B?M1N0WnAvY2ZZS0FSeFlBUTY0bDBGQkpaeXlRb1FJTEtpd2NpVjh3UGhFT1Rv?=
 =?utf-8?Q?2ZwfH/BVjoeL5H3wctRmdhqd8k9cN/P3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlIwd29NVW5ueFUvYTU5QTkvNEI0T2hWeXd0WnF1KzhubmNyaHBrMDhhK2J5?=
 =?utf-8?B?LzZQamNEaEtFdTlNOUp6cnpRNGd1Sk5wdE92WEpvZ0dBUkxuOTR1cjJyNHN2?=
 =?utf-8?B?R0ZZbFQvREZCZjRrNU92SGxFUk1odGtDSGFVT0VWMjdINWNMNmZzRHc5aXZT?=
 =?utf-8?B?Z1ROK1B4NWFjTUxVTkJicU9WeXZPbHdOZ2MxbzVnVlRmS0pmTzk0SVRDOWVZ?=
 =?utf-8?B?L1BweDJpbmp6Nm1KVW5GanZjcFNjTktxYWw2MXNyak4vUERSTG5aV0t0Z005?=
 =?utf-8?B?ZWgyS3AyS25CWkxiUTMzdjF2ZHdrQmh1NVdaNE5pSzZOaXphWEVQVWVmck16?=
 =?utf-8?B?b0k4alVxbitXb05sSlhneEtFM01ST3pwSXJSdnBwYWVlWVIycVVSbzJQRTN5?=
 =?utf-8?B?eWRmVGFTTk8vcmJXM3dJUWo4RDZjbUxUSmh0K3p1djAxS0VRQ3JkNmVwTHVW?=
 =?utf-8?B?UnNjeXZWajE5ck1DZzJUVVIzUVl5R0J1dG90K1oyTlF6SzN2UTNyeWgzVFpr?=
 =?utf-8?B?ZjIyWW1HY2pqdkI3Qm5QMVByZ3pLV2srZGp6OTRFaFZFeTdOREVMcTRSOVB4?=
 =?utf-8?B?VFVIMGcyM1JMRnhEblhPWEVFbEV4MUh4RGxNak5BK0dJcmRETG01NlFDc0tk?=
 =?utf-8?B?NnpDOHAzVENCMmFabm83dWxTNFhQbGFRUlFoSG15SHl2K3ZLSmlXeUg5eGd4?=
 =?utf-8?B?Q2FiaHpIaTFxUHJRdmNJZ3gySVZLUXl5K1MwdEN2ZlBlYVNoV1VudDl1UU4r?=
 =?utf-8?B?TGt6eGx1ZldPcjhqVy80QmJaUkpiNlk4UEEwcDIyUktBcWJOdlF0cnhVMFVv?=
 =?utf-8?B?azArci96ci93Mm5wQnNIWVBQRGlsa0JQTDF4ZXdNakJLUE1rUTYrVnZmN0lY?=
 =?utf-8?B?cEJ2SWphZ0l5ZEdEK2JJbFFzYSs4b3VvbUJsMzRVODY0Z2hmeGxROEY1b1Bo?=
 =?utf-8?B?N0hEdXU1Um5URG9UL2dDUjNBalU5cGhzZzJoTlZHK2VoS1dRYVhVL2xyMGdo?=
 =?utf-8?B?ZkxuS21rWnNvOVFoRlFkQldjV2JFRGh0M2VYQVcrOUNtQVY0dnlGZ2xtMGNt?=
 =?utf-8?B?dUdFUEtHOTRaTjNyeWJxSGg4MHhsN29OUE5RdU5oUGhpUGxUYzNzUm40TFFP?=
 =?utf-8?B?U1YxWk9EQk1zallDTVBreW9rV0dxVFNDTVM0U0NYTW1aZ2hET2dKYTlOOFdB?=
 =?utf-8?B?V3RxZzFINEdHbllNaTNyQXdzZ2R4VFJPalZjcmRRN1hzcm9MOVlOZjJYWUV2?=
 =?utf-8?B?aHBnMktqVWJNUUNRS2hTL01RMzlSdWhZd043Wk42dmdFL0JFakJGZEovT1d0?=
 =?utf-8?B?K2FETElnZEdBOXN5ZlF2dFNnSWVWdkM1NjVjcVBEWXdPVFRQN0hOMDh0b3VR?=
 =?utf-8?B?M2tIcERkUUJEV3JGazF3WGZCWFExNEEzYTVSQkdjbHM1Z2xzSXlOWXVGOFBk?=
 =?utf-8?B?SjRRK1MwK3RRSkNwZGRZYVV3dnM3OGpHdUowVjFrdllGZk1PVG4vL2hjK2dX?=
 =?utf-8?B?YjVudU50MERuTWsyMDN0emdLQ0VSL3JETUpCS0plZGh3WVFFRGNINytCVmZS?=
 =?utf-8?B?bVcvZzhCM2krYldINWVvLzJqZUNCNk1aU1lXY3NTb2pyZG1nMXJFdjhlRnp4?=
 =?utf-8?B?cDdDOEF0R3RrdW1IMGVnakoyRmxWV0p4MEFQSm1MTm9CbS9sQlEyeTBDU1RV?=
 =?utf-8?B?UUhhcjBhTFZMZ09QVzRXbDgzY3ZYcCt4b2VhandDbnN0QjE2ZDdRU2lUeXUy?=
 =?utf-8?B?WmxrQWx4WmtPcmZDSVpSandKK0ZSVmNCdHpIeUJQM1BzRE42UGhjc0ZaKzAr?=
 =?utf-8?B?ckhwTWl6RjU0WnVSQlpmOXh2Wm9YK2lQeFlSOVIzaEEzWFNlMkN4RXgrdG1E?=
 =?utf-8?B?aGNLcmswdDFtcXhtMUdmbnRacGNLT2c1VHg4eTNQWFBHM0Q4N1EvN3Z4R3J5?=
 =?utf-8?B?QVFCYndic2VPWG5mN3dPOEkxVUZTMUdJVG52aEpJZFloblFwTzMzWEMyYUJW?=
 =?utf-8?B?WnY5dkYxblFhSXdnVkNoY0dRMUdEbmsyc0FsM3hKdTNMdDJjWnNNWWwvOHNt?=
 =?utf-8?B?Uk5aZjVhNkhQY0QvWmdURzRZYWdYVTRYaE5ZYmJFQmcxTlgrazZ3UXNTU1Qr?=
 =?utf-8?B?KzVIekcza29NZ0EvK3RNVDFqNlNXcjlXd0JCZWk3aFpDcnRoYjdTSm5nTHho?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cc43c32-ad9a-49af-327d-08de1c233327
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:24:24.4548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XoQKqlmZqS+fcqyxAG8NfJnbs4SRQ7YNmsC9jDhuc1+bzO1KF6y8jxiwpD3fuNC1k/oTFQLWX6ebHb5wGgyUSUSVtecdWbM7IVJsn6yUogg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Add DC Balance params to crtc_state, also add state checker
> params for related properties.
>
> --v3:
> - Seggregate crtc_state params with this patch. (Ankit)
>
> --v4:
> - Update commit message and header. (Ankit)
> - Add +1 to VMIN and VMAX only when it is non-zero. (Ankit)
>
> --v5:
> - Add headers in sorted order. (Jani Nikula)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  7 ++++++
>   .../drm/i915/display/intel_display_types.h    |  7 ++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 22 +++++++++++++++++++
>   3 files changed, 36 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 42ec78798666..a00625f882e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5470,6 +5470,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>   	}
>   
>   	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 00600134bda0..33fb70716110 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1358,6 +1358,13 @@ struct intel_crtc_state {
>   		u8 pipeline_full;
>   		u16 flipline, vmin, vmax, guardband;
>   		u32 vsync_end, vsync_start;
> +		struct {
> +			bool enable;
> +			u16 vmin, vmax;
> +			u16 guardband, slope;
> +			u16 max_increase, max_decrease;
> +			u16 vblank_target;
> +		} dc_balance;
>   	} vrr;
>   
>   	/* Content Match Refresh Rate state */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 68dde96583c0..3c30c8d3e206 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -9,6 +9,7 @@
>   #include "intel_de.h"
>   #include "intel_display_regs.h"
>   #include "intel_display_types.h"
> +#include "intel_dmc_regs.h"
>   #include "intel_dp.h"
>   #include "intel_psr.h"
>   #include "intel_vrr.h"
> @@ -789,6 +790,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
>   	u32 trans_vrr_ctl, trans_vrr_vsync;
>   	bool vrr_enable;
>   
> @@ -866,6 +869,25 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	else
>   		crtc_state->vrr.enable = vrr_enable;
>   
> +	if (HAS_VRR_DC_BALANCE(display)) {
> +		crtc_state->vrr.dc_balance.vmin =
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) ?
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) + 1 : 0;

Instead of reading it twice, can we just use a temp variable:

reg = intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) ;
crtc_state->vrr.dc_balance.vmin = reg ? reg + 1 :0;

reg = intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) ;
crtc_state->vrr.dc_balance.vmax = reg ? reg + 1 :0;


Regards,

Ankit

> +		crtc_state->vrr.dc_balance.vmax =
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) ?
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) + 1 : 0;
> +		crtc_state->vrr.dc_balance.guardband =
> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(pipe));
> +		crtc_state->vrr.dc_balance.max_increase =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(pipe));
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(pipe));
> +		crtc_state->vrr.dc_balance.slope =
> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(pipe));
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(pipe));
> +	}
> +
>   	/*
>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>   	 * Since CMRR is currently disabled, set this flag for VRR for now.
