Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDB1D20300
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1F810E62E;
	Wed, 14 Jan 2026 16:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AovMqVdH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD9F10E62B;
 Wed, 14 Jan 2026 16:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407792; x=1799943792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=4JbSyDQ2J0+2u+0yCiKszeQBFFlnEtgGqs738nxF3V8=;
 b=AovMqVdHHhNaAgnSc3VGinsW+MgRaB2wAb30q9g8ZokYAanGtVH/umTh
 M7KjnBO5QhtQjSkvmOChL5nxj5QxVdPRxFbIgXxLJOMcgX8vYk6+h8Uu+
 cJ/RvcnsZ5ZcISvUM8Rw5sA+GM+RPDXg1O3aONlQDKhIpL7gvVaub+7BW
 GXxKpT32uF1ctKS9HpqICm+XUtlZ7PGfA/fuPuBx0yqZcOFn2cCFMrpOl
 Nfp65WEC7UErUdYUCVRkLB3hR/ZeN9O3bNMyLrH9UtYtmPXWF1v9ZTkU4
 pj8llg6oMvvuKagsXlKyVdsaxs6wKtwKSQfkmgLxFV1YqgGobV3qnmLGq w==;
X-CSE-ConnectionGUID: WXi4nS/cSYGh6aTFTxs6OQ==
X-CSE-MsgGUID: aOc7tZE3SWmz+45skXVIwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="81074192"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="81074192"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:12 -0800
X-CSE-ConnectionGUID: U7p4uHgKSWWfjW0cSR2oNg==
X-CSE-MsgGUID: VXe4aLJwRHmb4A62KSPj7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204508205"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:12 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:11 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:11 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xm+wCrwSRSOHqM4tCwTqvCx/zWwwfS8+sv/4NaQ36Hgka6E4tJF+VVwiznyI2ywT7zfm72pVJB34vVxsL8LRlXHcqWFid2AjF884tJKrQ3D0yz1KzInj5LOYOlZ7yLFDcjGRAusu/IuYRVxQ7qt+3KCJ7kHSjTzimjPhGn6jwYGO8yvjCTY/VFIK6w9a0QL/UT0woon2M0BJ4kmaJltQEiDaMABom5/zrMObkRZj8NyrjmeCa2may64z/iBg8XXksTaV6vQpaTgTewsY0xrZ7l70EBjsTbBJ1L0yE7iPhqnmYtBP1ln/wkF4Ep7viw8Ad0sV1FSTLNA4kZu8Pz2AbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mc6xK3g3mFPcPMgRELDAOOB61hjgy1zkrYDyrCWEIqA=;
 b=SHJD1dC9AI6DCtklRzeCiXGZJbU2f+Eb0pzcdT1bJauJf3Z6KwpUOMWPlvY2Wdj8wlTJcCrlGbjSmDeW+wkssJ1Tk8vRUxL5TpAIbx3w4M0n91whv+uQ95QM0B/E+9wrcngGj7ExPUlcrP5hJpDemTbEta6Oj6LbjbHnt5TRKQZK8O9RobR9sgAvcpwwmHklpLkn7Fx66BAgr1uglRJGv5nfmH+hX0ppHAJ9wTmP4d6biELjIShhGoY+yKH16p5oLpqHwTtxuy3jVKMyAVxN+rMxlr2TNeYqPGTtFy7SXqY6iZTYT4VSMIqri6sbCxociUSUx2VcXZjAVOkD8KjgRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 12/15] drm/i915/dsi: Use intel_dsc_get_slice_config()
Date: Wed, 14 Jan 2026 18:22:29 +0200
Message-ID: <20260114162232.92731-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: b764946d-666e-4da4-3dcd-08de5389345b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTNzZDl4RXkranhOWXdmRFpGOUNRZGs2TUx2TzdmN1BuNXowNXhDejc1bGRY?=
 =?utf-8?B?N1FEZk91SWhIVXRzZTZsampMc09KSWs1VnBTZmJZTmpaT0FYUnFOaGdOWmh5?=
 =?utf-8?B?NE9mL1NWUlV0QmJBUDQ5R1VkSGhQdkxBSEI4d1NDSnFCS0N4SVBRa2NSNWdI?=
 =?utf-8?B?V3lwQ3pjbFZvUzBtdW12dXRlZmpRNnppVzEwQVRERnVZM2lSUEZmUzRyV3g3?=
 =?utf-8?B?QjRranVGRWgxeHBWVzVJSHBDdTR0dVl1R0V1cnBqaFZEdG8rdjBWNjQ5eGpq?=
 =?utf-8?B?eXZUR2liTkYwcjRaM3diaHl6UmQ2LzhWMW9oWkZIWFQwbUdsd0ZsaUlYVUti?=
 =?utf-8?B?Z0MvUzczbXF4blNmV2pWZVJrTXVVNFBpVXZWd25wTGkySVoxUXJRTmM5TnVO?=
 =?utf-8?B?cklsRmFrSW9DSjJMSFFocDd4Y3IvSWwvV3B4M2QvU2NKN0FETzRmNnJOWXVH?=
 =?utf-8?B?QlNCWjlKQTY0dnZ4cjBNQ2hpUTZDZ2JSOFBRUHd2cVhyVnFFcENRUXZzclRn?=
 =?utf-8?B?SmlKSmxPUDdwenNMc3dKNEVTYkdIT2JkZXBESmcyNDEzY1RtVVVTak0wanBE?=
 =?utf-8?B?Z2pSZWJMSFV1dEhDeVNwQmFIRVovV2Q4VjJWcTZ5L1BaVGxIV2p3RU5LUnEy?=
 =?utf-8?B?MVgwYS9OSW5SOWxrWCtxNU01cjczWkY2VVI4eWppUWpkNmQ3VkViZm1FdjYy?=
 =?utf-8?B?Ri9HOHN3L1U0c1Z6RlUxQ21SWG1tdnVWQWhtMk9FYjJiT0FHcUVwRjZwMFNm?=
 =?utf-8?B?R05CUnc0WWsyc3hIVzFhMlZ3cW1zMGI3dCtmdlhuZVMzZ1JoT1BKNDBMME5p?=
 =?utf-8?B?c29nTzRMMTk2bk40d0YzQUNUVUhUQXh1UmVpbUMxNlBnY3dMdVpiaGdiaUta?=
 =?utf-8?B?U0tuKzcvQVBOUjIxYUkrNUFwaHB4MWJva2hWVDkraVJxS2FnU1p3TFJBaHU1?=
 =?utf-8?B?NWl0NHA0TGNFSW84ME5obGh4S0U2d2F5RXFhZ3U4YmFyd2JNNVdmeEVLRXlv?=
 =?utf-8?B?VHFsMHpJM1pyNzdHZTZOZnREY3gyTldWdjFTeTZGdEhCOVhxTHVUUU82Ynp6?=
 =?utf-8?B?TmNnMXViVitXRjJFT1k2SzhEa1R1UldyRUp4S2RDZWJaanpiWEVEUXh6eFl3?=
 =?utf-8?B?OTNXTll0RXpXckxWcy9ZWVJNS1FaQXJCYnVpVXUydEdlTzc4UzlEbHNGNGk5?=
 =?utf-8?B?U3d5NStMNXpQdXAvWHViWnhwT2VtbndrTmxQMVdLKzVSYk1aU3VUL292Mksz?=
 =?utf-8?B?b3FtVXhZbzdwRFc1c1BKWVIxNGpuUmhjdGxXSDQ1QUNzdkZEc0dML2hmVnBx?=
 =?utf-8?B?YjZMQ0cwMFo3eEZFMjhaaUp4bUw2a2p6OE92VkR1SXNBeTlEZXk5bHlPdXcv?=
 =?utf-8?B?YVpoNG1UYTJiQi9BMlRzOGVsd25nTEVMUk16NUxHTnk0ZExxZWQzSkkyTmRj?=
 =?utf-8?B?UzhuQ0pPT1V1WUZtQXMvRW1OenErdGJWVHlxaVcxSE50MlV4MlFnbXBkZENj?=
 =?utf-8?B?MWtTZFdpVkV5SGdrNnVKNFMybUlaZll3c2o1NUlVMzBDVGpZdE10d1IvUzBM?=
 =?utf-8?B?TVpjckE5emo2M3R4NnRNY2VWdjRVVlYwQVhsakRTdG1kVTBXcWVBd0p1Uk5Q?=
 =?utf-8?B?U2xnOTZpU3hpNHpXbG1GcysxN1RLeEVpQm1nb1ZoM2ZhZE9LeG9EeEMxNnJi?=
 =?utf-8?B?aXdTMDdKclUvZUdiQ0lFVWc5aFBnQ25kci9LZDNsOTIrb2kvMFl0bi9oMXRV?=
 =?utf-8?B?OWJ5QVNoUnZ0M0h1WlRiT1BXTWRSZFpHTkozdXozakFGaGx3THNDL3g3SCtU?=
 =?utf-8?B?YVBHTTJrOTBQS2NHSXJPMFZGdHB5Z2JmMTJSQjN4cGdzVUpodnEzQ1RuWUpv?=
 =?utf-8?B?bFAzSTkySlltcEZBSVFwdzVsMnhxdTRCdnNJNGlYc0R0TE5ndVZYRDIwNzBZ?=
 =?utf-8?B?aVlhMEc3RG1PSFZvQi9yTVF6eEdwRGs1OVJRenkrT0o3NFc4c0Y4VlhPb2Rt?=
 =?utf-8?B?UnNRVkplTkNNeXhXU25iZkVjQXJDMEZJRHlVczlBTkVFSGs3eEZUTUpPODlz?=
 =?utf-8?B?dFJlcTEzcE0wMzQya2JzY0h3VU5zUCt3Q2pHRm5rNUsvNVJrb3k1UitwaTJH?=
 =?utf-8?Q?xjUo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGxJUkhPSnJYRWg0dWU4dXVvMzczNkFkdTlYV3A5VkgxT1dUeUxIZkRQNmFY?=
 =?utf-8?B?WW5WeEl6ZHRTRkRoSzYxUVZSV01pb0NlU3plUW5aMHB1UzYwV0R3em1icHFS?=
 =?utf-8?B?OFc1dzcxTDFHcDJkb25LODFJdGdFTjF6MGZpYXdTb0RmR2wwalBNWXMzM3lC?=
 =?utf-8?B?SnV1L0tPUVJzRDYwbE5kUDlhMzQ5cGdzVDNZTGFHSzRVN3p2cnZnZFd3TWtr?=
 =?utf-8?B?N01EZ3B0VUQ1azBud3ljZ0c0TGFoa2VlNTJiaGgyLzNaeTZ5QWhjZDhIVlor?=
 =?utf-8?B?VFB6aXh6SkNTUXJ1TkEwR1psS0dWZ216Q2psaGY1Z0M2MUZOUGNYVnNaTEV1?=
 =?utf-8?B?T3MrVCtGMFpmZzE4WGxpZkFhSDNiTzhja0pSOWMxQ2dFRVVKbm80V09OWC9V?=
 =?utf-8?B?QmZHTzl6eis0OFdreHcxVzdmVVRmVnk5aHlwZDRNRVlCTlZwTDlVeTlBL0VQ?=
 =?utf-8?B?VG1oR1pNUmZJdTd0WmJuczRHb3JHekk5TUpDMjFaTnVJMmttd2JWMm5LTmp5?=
 =?utf-8?B?TTRlUUdZU1hpRUhNN2wvcE13WW82WENOYUVqTE1teHZHRnhaS05HUkZsS3hU?=
 =?utf-8?B?U2RpdXMwOHFGZEJqQmRlamFIQXRwS3czQzB6MDlqZ3lEeldHVWs0dzNlZFdq?=
 =?utf-8?B?ejRWVnVodjZQdkg2SERCOWlIdHNkOHVHbnlQbmt1MnpEYnJhZ0JCL0U3K0VD?=
 =?utf-8?B?RXZMYWVWMUI2bTlOT0VGTTRkcEFaRWpOam5lbnY0c2ZkQzdqM0NoZUtabzlJ?=
 =?utf-8?B?NFA3ZTcrZXRVOWhQQXdxVjU0ZEVndGhsNHdlcWdwRFhDcGU5eVZmVUN6ZkZD?=
 =?utf-8?B?cDFSS3NWQVpyTnB2SFlNeG1oZ0Vnbjl4ZC9KRGk3RE1yZHh2ZjZzSU13UEZB?=
 =?utf-8?B?MTRtYnoxREpiVGk3N24zU1hXM2Z6dXdVUDFiZWduaUE5MFBySE11SkhieU13?=
 =?utf-8?B?NjJ6bVErWWJwOHZ1Mjd6ZTQ2d1NNdzdCd1Q1VlhrMWFSUkgzT0R1MmhtY3dU?=
 =?utf-8?B?UmZHSlk3ZWM3QlVTVXIwcmtsTUxlNm9tSERyeGVGbGVmb1gzWFhnbmQ5R3dI?=
 =?utf-8?B?K2g1bkFESjZNK1dZYkhmaTcreU95dkZQTTRNelRVQW1DSkRwRWJHZzFjcGhw?=
 =?utf-8?B?MmtGUis0YWZKTXBDVktDR3NMdG9FbnkxcTV2WXduOWcwTjcvL21MMzhHaHhI?=
 =?utf-8?B?ZjlQdXlPZVN1blFrVmF3eFdWY2tIMnN5dnlMU1VQQzJFRmhmcXh5K1QyYVpo?=
 =?utf-8?B?Mkdna3Jsd3R5Ti96UVhnaURaQzVvR3FyRi9VNkRpc1Y4dVl6U2pWdk5JdWNO?=
 =?utf-8?B?ekRWakYrNVlrMVllODJpRlZNTXZxMU5XOHdWcDhlV1NvNW1ZMkhzYXBJVXVp?=
 =?utf-8?B?ZDVwdll6MFphV2gvZ0xyUnR1ek9hbGR3SU85RVd6Q3ptZzVnQU1GZmdTZzA0?=
 =?utf-8?B?UHhvTFpEQWc0K3ltanQrVHM5U2hkVm1NZVRWMHp2SGVTTzVVdWdEaHBjOHNL?=
 =?utf-8?B?c3VEQ21NZEYwSVNVWU5UMko1dHNvd2FodEc2WFdueWVCS1RxeU5BdlB1NlNX?=
 =?utf-8?B?NWFneXpmUk1nb1BncjlKWFFYeHJGVUl4VzJtbWdsaEcydncvdDlscjVrcUJ1?=
 =?utf-8?B?bitKWk9KOVJDd3JKMUo3eFRNZGgyeERxMnpxWHB3Vy9mdHlnLy9qTVpIYlQz?=
 =?utf-8?B?OEpmKzlSNkEvWWFJZjJVeExOQ3psUG82NW91bmxTbXpSTlE5MFhEdDBpS0Q0?=
 =?utf-8?B?clZhRDhMd3hzTHJESEdFaTNTUC9PWHk1dnFBcnFrRDdkNzlwbDJ3LysvMzhF?=
 =?utf-8?B?d3djczhXNGhiNGdaajVsQk1DdXlBS01kbThVbUVIeGJKdlhhU1hrclFlVDlJ?=
 =?utf-8?B?RVNmT0hOdVFtQm9tYUM3aW1xdGVRSXBqQVdTVjdCY2t3SXZCdFZxR1BmS0xj?=
 =?utf-8?B?WFgycGVyR0pGUjY1cTFRelFyOHpOdXA4TmJuOW5hREZrYnpCZTJFVjduRzJE?=
 =?utf-8?B?ZWY1RFVHZk5JWGlQV2xaZkZKdW5nMGVlUjZJcWt0NVpqMVVsUkt6VlA0a1Nw?=
 =?utf-8?B?bVFMTVhpRjFGREMzaHRCY2dOckczY3B0ejNWWjlLQXIwS3BtWVlxRzA0QStl?=
 =?utf-8?B?QWRIMVN1QTA4bm9YR1ZEd0NMRWNGMis4QzAzamhOM09VL3dMU04wZTE5bnRo?=
 =?utf-8?B?VkJ6NTVxbVYyWHN0RWtSVzN2clcvaFFQRlZyZzQ0QkRlc2lBbFY2Zit1MWY2?=
 =?utf-8?B?WTRsTWpVSzlEMTB0ODVnU3dLUlBKMUE3SW5rTGV4cW5NTk81YVptSWI4QVhm?=
 =?utf-8?B?TWRZUFEvUUl5c2U2QjVFNG5vTllsQzlKMXhDbm1xM2tKSTQ5cGRFeWduSlVW?=
 =?utf-8?Q?hZ1r/b1S3zT4qNVoxnoXD7f01X4GCk+yonBeTOcqjthH1?=
X-MS-Exchange-AntiSpam-MessageData-1: HhKM9OTo8KsSAg==
X-MS-Exchange-CrossTenant-Network-Message-Id: b764946d-666e-4da4-3dcd-08de5389345b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:08.8325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mgPpqbixCuNeFRWvTDs6xmAkp2JZZuWcjkmAGdQ5IK2Z5LQupxgQyWKRam3yBG/MunWlWZ2ZCo5pAvsl27eS1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Use intel_dsc_get_slice_config() for DSI to compute the slice
configuration based on the slices-per-line sink capability, instead of
open-coding the same.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 25 ++++++++++++-----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a007fcf6e1a8e..2afc99a39429c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3545,12 +3545,13 @@ bool intel_bios_is_dsi_present(struct intel_display *display,
 	return false;
 }
 
-static void fill_dsc(struct intel_crtc_state *crtc_state,
+static bool fill_dsc(struct intel_crtc_state *crtc_state,
 		     struct dsc_compression_parameters_entry *dsc,
 		     int dsc_max_bpc)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	int slices_per_line;
 	int bpc = 8;
 
 	vdsc_cfg->dsc_version_major = dsc->version_major;
@@ -3579,24 +3580,24 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	 *
 	 * FIXME: split only when necessary
 	 */
-	crtc_state->dsc.slice_config.pipes_per_line = 1;
-
 	if (dsc->slices_per_line & BIT(2)) {
-		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_config.slices_per_stream = 2;
+		slices_per_line = 4;
 	} else if (dsc->slices_per_line & BIT(1)) {
-		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_config.slices_per_stream = 1;
+		slices_per_line = 2;
 	} else {
 		/* FIXME */
 		if (!(dsc->slices_per_line & BIT(0)))
 			drm_dbg_kms(display->drm,
 				    "VBT: Unsupported DSC slice count for DSI\n");
 
-		crtc_state->dsc.slice_config.streams_per_pipe = 1;
-		crtc_state->dsc.slice_config.slices_per_stream = 1;
+		slices_per_line = 1;
 	}
 
+	if (drm_WARN_ON(display->drm,
+			!intel_dsc_get_slice_config(display, 1, slices_per_line,
+						    &crtc_state->dsc.slice_config)))
+		return false;
+
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
 	    intel_dsc_line_slice_count(&crtc_state->dsc.slice_config) != 0)
 		drm_dbg_kms(display->drm,
@@ -3617,6 +3618,8 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	vdsc_cfg->block_pred_enable = dsc->block_prediction_enable;
 
 	vdsc_cfg->slice_height = dsc->slice_height;
+
+	return true;
 }
 
 /* FIXME: initially DSI specific */
@@ -3637,9 +3640,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			if (!devdata->dsc)
 				return false;
 
-			fill_dsc(crtc_state, devdata->dsc, dsc_max_bpc);
-
-			return true;
+			return fill_dsc(crtc_state, devdata->dsc, dsc_max_bpc);
 		}
 	}
 
-- 
2.49.1

