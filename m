Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AE3CF40E5
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 15:13:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C773710E122;
	Mon,  5 Jan 2026 14:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UwdTJBnQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F25910E122;
 Mon,  5 Jan 2026 14:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767622429; x=1799158429;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/1bzzF7Poq1OKRd7UO9kyfRbNycyt2AymLqPN+6Xr/I=;
 b=UwdTJBnQRvk3D8TbJjqcEyLNPm1AGnyY0Hf7vW5SNB+1viU/YOrCZTYM
 hbU6j/AhpEqqmHSP/LYx7TjqggXkCqpPXUczxoUy8e8p56/OnhhbXLn7Y
 3XvK3f+YX88Tt2S62gnw9mUm2YXqNIJHBQVN/C6qhCE7jZ30obeU7sQdk
 94UTrsfsKW5GlgsSY5WBOr3mSWISq8GAZ1YYNz/DBYfnsbRbVijQZwfA3
 oYBhA/rbl4VmCjNq6GfIHS2bKw1oy1d5db+yP9gW+ipvT+1L0P7Tlcwad
 O2HPrvdWov7pM6KhI1meGsVjgcX+y4x6LrZMJjr9HhGnhsCxDklN4xptW g==;
X-CSE-ConnectionGUID: seVO/52nSqCsua3U1EaKEQ==
X-CSE-MsgGUID: h39FLwPlTDmKddX1daS5vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69144144"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69144144"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 06:13:49 -0800
X-CSE-ConnectionGUID: CYXJHxEBSWG4GU3urknWDw==
X-CSE-MsgGUID: po3QAitUTWqXmWuooAK2vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="201520839"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 06:13:49 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 06:13:48 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 06:13:48 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 06:13:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xayzzux+XNxB25FuJean0IjvvnLii/okFhxQ21ft2jt9oedwKk+VMtxzbxy4lX3we+MSsq5eFcCVVr8T27Z9q0O1dTF2JwfhD354VvcjV/aTYOWnH4NG2CXr6m4nzZc8xNGxM46ne49mpmrlpoWY2yB5DhEvTPoJRffQ8s5PyrA8n+jqXdMKXGI3dLKLyRx31CNTXRQUm+w6QgqgE+q5zoZe1Q2tDLFbnDV5Y6namxV0hyanIE4iv719svGzbHf4ImL6aWReSykf04ye6NoYdpSJ8U8NRKKcPn4ERaLotCFFtUl9H5haCU02VgPJ1ZUXPNjqYeh4oo+wWjVcqkn4xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4NHWvN7zuO+KFQs/+9M4D5mJuA+R6Kk+SRUoiz8EBD8=;
 b=tusgJ8EHwX5I/bxHOCn3wyX8zpfjXBJWZxS68+4ZTig53sUZIQ6PO3j2oZwOS0DC/y6c6s8ONkSGywbxlvNXYrObydXsOJn0tDsKwsyIIMppuGjjWe+U1xhIqMm50tfKn3We33L6MsSm1GkeFRm85ty07KMO3sfojrN3HJv9fH6jkN5m+a/PGg6axTTxHgNBGwrwAHeH9UigRs/S1BZLG1HMHbFxbbmfMrL87fa9qUn3WIIydqlZnh+t5ypzrsbl7lLOMma50EmOKeitTy7UTSGacJqjAl1XSc5NQ94qpSpD7xuc+lAKL7blKDMdyYwOk4TDp54m1PeS+1S+YD2piQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB5278.namprd11.prod.outlook.com (2603:10b6:5:389::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 14:13:46 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 14:13:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM3PPF208195D8D3196DF977339A8FB7CB2E3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-2-suraj.kandpal@intel.com>
 <176710803722.18661.3929879142196785858@intel.com>
 <DM3PPF208195D8D3196DF977339A8FB7CB2E3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Subject: RE: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in two
 parts
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Mon, 5 Jan 2026 11:13:42 -0300
Message-ID: <176762242212.9480.15194458566987361794@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB5278:EE_
X-MS-Office365-Filtering-Correlation-Id: e1a1b2ce-590f-466f-6bd6-08de4c64a3aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dE5yQ2xOcWc5bW1ZUEQ5U3RQMzdxM2g4by9saXhPWE9aV2V4STljanU1SVJK?=
 =?utf-8?B?UmU4WEFYVUlIRjR2RUg2TzJ6bTUxYmtDSG9KaXd6cFM4Vld6dXhTSDhwWWdi?=
 =?utf-8?B?ckNMN29JNlR6QzJvUUs5M2NPdVB5c0EyYTloRGQ0VG43VGNEbi9HT21sYWVu?=
 =?utf-8?B?eUs5TUgxMld0YThvVis0OVJySXVHbjRidGNPT2Rhc1RvQ25tWjdTaE9acjRl?=
 =?utf-8?B?dUtUeDBqRW8vanpVZSs1eHQ4SDYvd00yZm9sdGh3aCtNcXA4alphYmlDWjV4?=
 =?utf-8?B?R2FxY2JqQzVUSWVZczBKSTdlYmtlTnBscExSUDFqZWQ1LzlZSzJpK25SblJp?=
 =?utf-8?B?ZE9iQktrMjBROTczR0VTdXNnT29RM3NrWk9WTzZ5QUZITTBxZ0NGK1AxKzR4?=
 =?utf-8?B?NzRqVzZtQW9CYWhRTUVwSXA5aEl0NUcvTWdnK0Fsc1hBMjI0K21xeDRIeGxI?=
 =?utf-8?B?WUpHY2MvYmpaVlI4b1JaSWk4dkxYdTRpcHh0bHB5dWN3YlNyR1NnMlB1bVlT?=
 =?utf-8?B?eVpTWUZiU3NtMGZmRmFsWGxCOUIyRkFWUjk4TklubVY4VTdpc0x2dFNDb082?=
 =?utf-8?B?L2k2eG04c3NacTlTOTdjRDM0WGthRzVlblhDT0t2Qy9jQUgwajFmc1ZzNzFs?=
 =?utf-8?B?cVlIazE1ZDNnOU1uR0xUNDNtcFlFUitrOEd5NjM3dldvUGk4bmtNTGY3b2J0?=
 =?utf-8?B?anp3cTdBaTMwcUYySkEwNXlzMjY0clh1SEhZb3h3YnNsZVV3ZmlpZ2tBRzUr?=
 =?utf-8?B?K2xmZXNFY0JIS3ZpaTVseG54dkZHZ2x2SDRxM2FxOWdmTk52MW1LY1Zmeko1?=
 =?utf-8?B?RGhXWmR2Zk5nNUIvajlpQ3o5Z3I4cFdyd3RrOGRKRHdKcnArYXE3VkdTWVBk?=
 =?utf-8?B?aWJFL2NrRXhWRWhNUnBLQ3FsUStMSVJtMnQ3K1QrRU9seWhwc0xsQUNUOG15?=
 =?utf-8?B?bE5jOXlEYkc5T2F4WWs5dGRVNTRMc3p4QmJmN3FxeEJ0bkkwVE84QlR1aGNE?=
 =?utf-8?B?aEduV3Y4ekdjZ2NpMTlMWXZCMm44YXhPRUdFUVJWSW04SW9NNGcwUDgvWjNB?=
 =?utf-8?B?b3hvZGN0TXphTWRma3F5bytDUktIdGVsOVFSL0p2Z0ZxT01lNkdWeWp3SEdN?=
 =?utf-8?B?SDV0V1F3ZnpjVk9oNmR1L2JLWTdnU2xOTjdmMXBsbkFuV0p5OVNUTFl3VGJn?=
 =?utf-8?B?bHlHZHdTc1lycTRBR0pzWEMzZUJ3Ky9zZ2o1MW44TkZsYVk5SSs1Z2lTdFpP?=
 =?utf-8?B?V0E1S1RIdXQ5c0Y5bFprelhlbUVjTTJYb3VQaXdnYzh1TmthVFlTVG9xbllN?=
 =?utf-8?B?eVZNSjk2V0lHWkE2L2FDSWNVWjZCTng4bFlFWmVxR0xMZ2w1TTNjWEM1V0ZU?=
 =?utf-8?B?L21BTnBFNFBXNkU2bVZQcC9XOHg2d3MzSXNNY3k4TXBjY1lpTUtlZmQxK3Y5?=
 =?utf-8?B?a2FSRVNQYnNTSHAvcExNVUc1d0ZFb2w0bkJHUlBZa2pSa2dxU1d1ZUljclBs?=
 =?utf-8?B?MHh2U256RFVsV0I0aXAxQTlHMUpDOGFNNDZpS3lOaVc1QnFOenovSHBVZ21a?=
 =?utf-8?B?Yk5XUEcrMERIYjc1NWVqQkt6Slk1Smw3ZE10Q29pc3FIR0prZlVBUzE3N2xo?=
 =?utf-8?B?S25lK3ZkTlJBL0V2eHdEQlEvaXp5dGlCOU1DTDM3UncxeFl1ZnExNzZsenh4?=
 =?utf-8?B?STJYQ1lEMEpERXRHVUoxSzN0dUVJbmFpOHM1T3ExNlRpaWd6dEo5WmFFTkVY?=
 =?utf-8?B?Z2dPTEhGSTg5S3lzQlgvYjg0WkdUTGZrRjZkS0x0VlRZN2w0UG1KcTd6eGhC?=
 =?utf-8?B?NFd2VEYzQzJDSGVRV1daem5nUnQxNHNzb1puZzVLQlRTZVdWM1gwQk9yNnJ0?=
 =?utf-8?B?dmpDMjBMdTNGMmNCWGpwNmx3anJHZmsreC8xMlh6NHlqTitZejV1blJBcjlU?=
 =?utf-8?Q?IAUsy3Hge2+7Hj2Jhrl/haeSwKudSqAV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anJUZE5GZDEwY2FtNFhySWgvaG5mZWhoUTRDbExDZnY4cStTcTA3TzRqdHRr?=
 =?utf-8?B?NTBTNEFNZVZETTI1ZDd0WmNidzhZTFcvUnh4SU5hTExyWUxDcWZMa3UvZUR1?=
 =?utf-8?B?a0xJWm1SY2o1S2MrRHZ3N2pKWi9ybm1zMVFsU2JpS0ZzWjBFYkZ4ZFJsZ3k0?=
 =?utf-8?B?NlFPVlJzY0VPQ2plYWphQmhzRzY3eTlONXlhblh4WVg0bWtkeVpjMkVKQ2dq?=
 =?utf-8?B?ejQ0d2tkK0o0dkYxVWlsTE1xaVVkbXF4czhvMmlKSjk0bWdUVHhTb0txclBI?=
 =?utf-8?B?N2FWcEFzNkNwa29PVk04OVhPS0hIQS9Cc3dSa2tVQnVWOG9GTTJWRityYk9C?=
 =?utf-8?B?bis2QjJWb2pXMlRTcHVzZXEzMnEwWVlZMWlnTDhRNjNEZnl6MFpja0kyQ1JQ?=
 =?utf-8?B?U1RBdmlmUEZiMFpPbk83M3NhWW4wTTV5cE1Qbmg4MWswbVlxdVVjRi9KblE4?=
 =?utf-8?B?N3p1OG5NYnlDZjFFcDIxY0NtRzI1UlB6QVVxQlRSUUFuTnRJWEVyVER2TFlJ?=
 =?utf-8?B?ZHgrNHNQV1M2T0NVSTlUSlZWTitRZmZPNkptZlFpUDdkbkErR2dNWG40RDd0?=
 =?utf-8?B?VnVCMFBKWVM2enlWZmNRUEtETjRMRldEalhSOVFHWS9YaGNsVWNLaEExUDBk?=
 =?utf-8?B?SWZLNDU2cjFWTGM3WjcwclVtdEpuNnhWb2pzQXhONTdNTDVLckdpVko1TjZD?=
 =?utf-8?B?Y2ZtZTlkc1BuK1Y5L3I5UWNXR3ZPVVFEL24yaFhwMXVFemRIT05iZlBod3dj?=
 =?utf-8?B?M1pKZlJ4M0kzZEhBb2JPcE9FL3ZvdDB2SGF6bHR5M1ZURU1FQWEwSEVnOHZy?=
 =?utf-8?B?YlFoTTVmSmZQd05Td0RpcHNOZ01IeXAzbm1TOFlRdHdzOEkxTmVwNUU5ZlRX?=
 =?utf-8?B?NXZQUjd6d2RDajhGTDdPWG9YZE0vZXA4Q1JiSDNsb0tnbUFEckpRZ0hybmYv?=
 =?utf-8?B?eFBsZkppWUF6QkErdXZ3dFF2TFVmQW5SeWExdkgyS0haNEQvUms1S1E5eHNy?=
 =?utf-8?B?bE5ldUNvcTFLQ1F4ZEtQQlZnZ1hubmxrdityMW51MFNtQm1VdVRmRTNXWHRi?=
 =?utf-8?B?OW4wT3k2Yy9CWXVJUDNxdC9vQ2w2dFNIVG5lSmRsNXo5M1RKbC9tNUZFUDZB?=
 =?utf-8?B?eVVNWVQwb2F5NUhPN2Nob2R6MzY2dkdENDlxRjdINUo4TCtxMG5Nd3o5ZHZh?=
 =?utf-8?B?cS9aWlVkQk8xaGQvUC9XYjhxTVdhZExBcVFmcWNRZzFVaUlQbVV6NTdubm8y?=
 =?utf-8?B?NE9SclBvR0xweWFrOWYrSkE3NnEzYlpYNEMwWXhMMzB0ZmtMRm9EVklvaVZz?=
 =?utf-8?B?TjAzM1lWZ2lWa21vUDhaY2c5S255aFNucUt2UDFjMkRsWnNreHdPTDhjWERP?=
 =?utf-8?B?VWxadHFWZGErU2dNdVp6dElZOUgzV01UcXNNejZDbDVpdkF2MlprNXB0VFo3?=
 =?utf-8?B?SDA2bU5ja0dzZlY4TElWRXF5bitwM3JvMkFreVpCM1huV1dNWEo3WnlxbEZx?=
 =?utf-8?B?R2NvTWRzZkV3RmFXUnA4Q1Q4aitJQ0lFZjFhamJFSGZacEwrL0tUbUlaWXBR?=
 =?utf-8?B?ZWV0UjNoaGg1SmhONGhkSno4UGM1MnQyc004Tk9wMStDcWtFaDNNanc4aEVS?=
 =?utf-8?B?cXFXbUlIVDlYUFU2M1AvVHc0T3VKRlBncGM0MmRVcWRMeWxZZVhyMFhZeHpQ?=
 =?utf-8?B?Rk9hakdCYkRFQkpaRloyd0ZzeHBDY3hYVlVCM2lSL2pHYzVvd1hmd3UwVk1C?=
 =?utf-8?B?My9OY1RySXh3N0FYai9sUVJyd2hONU94L0xIWjFwWTZ5VjhES1MrQmx6NjVp?=
 =?utf-8?B?VjF6cjdRNzlDSlVGc3FJeDBjdjZtRnhIVUUyMS9pUGVXYXlHdDhLL2RYUGZh?=
 =?utf-8?B?SUFiT05pcHN6SG52MWEvK2g3bVU2VGQwWEJpbTdOT3pHR2tKMUdUdCtLK3VG?=
 =?utf-8?B?QzBuek9zQjFyVVJPelBWL2VsSHVuQ3p1WFBOTitCb1FhNFZxTjBsendyZUVQ?=
 =?utf-8?B?OTkwV0hLTFQ4SmVVZ3BZcGNkclhmclh5SmNNdldTcmJQWTFKaEhnN0FHYW9M?=
 =?utf-8?B?azIycHE2SHRDUjJHWG5hcTRXUEU5dVIvRmUwM25RZmQyTDl4OVpxa2lmSzI1?=
 =?utf-8?B?Z3hHUFBuK2gwWEpybDU0ZTJHZUdRN0V3OS9zbVVPZkdvenVGSEF1MEEvRE1t?=
 =?utf-8?B?Y1pkTjl5QmZRV2JhRlUxY0tqSTl0UjVqVUFHc0k1cE1PcCthcW91UGd2OVhJ?=
 =?utf-8?B?Z1hJdVlMcjJ1MGNDRHVaUHZjcFVGMHJwQ1NvaFRuLzVHS2RWcHUyVnBUTXRK?=
 =?utf-8?B?V1ZhcGozTy9CbnhtVTdUMW1RVUdDb08xK05LMzZ3T29uWWoybmlrQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a1b2ce-590f-466f-6bd6-08de4c64a3aa
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 14:13:46.0847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hui9tCIppD3iR3tJ37RGBGDpPKejderkQRDZ80dhemvXyxFdQJTpk0iyC4NVJlYs75kwv2N+ume4IDVlk2tqaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5278
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

Quoting Kandpal, Suraj (2025-12-31 02:07:35-03:00)
>> Subject: Re: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in t=
wo
>> parts
>>=20
>> Quoting Suraj Kandpal (2025-12-30 05:31:40-03:00)
>> >From: Mika Kahola <mika.kahola@intel.com>
>> >
>> >Split PLL enabling/disabling in two parts - one for pll setting pll
>> >dividers and second one to enable/disable pll clock. PLL clock
>> >enabling/disbling happens via encoder->enable_clock/disable_clock
>> >function hook. The reason for doing this is that we need to make sure
>> >the clock enablement happens after PPS ON step to be inline with the
>> >sequences which we end up violating otherwise. As a result of this
>> >violation we end up in a hanged state if machine stays idle for more
>> >that 15 mins.
>>=20
>> So, it appears this started happening when we Cx0 code was integrated in=
to
>> the DPLL framework and then the driver started enabling the PHY PLL/cloc=
k
>> too early, right?
>>=20
>> I am lacking some context/background here due to my unfamiliarity with p=
re-
>> MTL platforms, but why I exactly do we program the PLLs before the modes=
et
>> sequence?  Is it related to the shared nature of PLLs for platforms pre-
>> C10/pre-C20?  If so, do we really need to do the same for
>> C10/C20 PHYs, since we have dedicated PLLs for them?
>>=20
>> (Sorry for asking here and a bit too late.  Probably the better place to=
 ask this
>> was in series that integrated Cx0 into the DPLL framework.)
>
>
>Right it used to be actually because of the shared nature of PLL's. With c=
10 c20 we moved
>to a different framework where we called the the sequence together using h=
ooks like enable_clock
>and disable_clock since there was not a lot of time of time to refactor th=
e dpll_shared_framework to
>a framework with supported individual ones.
>Now that we had time we shifted cx0 back to the previous framework but mis=
sed defer the clock enablement

Then, if we move forward with this, perhaps this patch deserves a
"Fixes:" trailer.

>To later during enable clock time so that we honor the sequence, why we ha=
d to do this is even though its not shared PLL anymore is
>To make sure this framework is backward compatible too.

I see.

If the requirement for programming PLL parameters early was only because
of shared PLLs and we do not have that same requirements for C10/C20, I
would argue that doing the whole programming at once and only during the
"enable clock" phase of the encoder would make the driver more compliant
with the Bspec.

I also noticed that, for the older displays, the "enable clock" thing is
the part that selects the PLL (which is already enabled) as the port's
"clock source".  With C10/C20 we are actually deferring the PLL enabling
to the "enable clock" phase of the port while, I believe, the
expectation of intel_dpll_funcs::enable() is that the PLL would be
enabled when the function returned, which would not be exactly true for
C10/C20 after this patch.

What if, in intel_dpll_mgr, we made the distinction between enabling the
PLL early and enabling it at "intel_ddi_enable_clock()" time?

--
Gustavo Sousa

>Also we had to move cx0 pll framework back to dpll framework because the p=
revious can work well as long as the ports are static hence aren=E2=80=99t
>As future proof , we plan to move LT PHY back here too once this ages well=
.
>
>>=20
>> >
>> >PLL state verification happens now earlier than the clock is enabled
>> >which causes a drm warn to be thrown. Silence this warning by allowing
>> >this check for only earlier platforms than MeteorLake.
>> >
>> >Bspec: 49190
>>=20
>> This Bspec page is not invalid for platforms using C10/C20 PHYs.
>>=20
>> We probably want to use these instead:
>>=20
>> Bspec: 65448, 68849
>>
>
>Sure will replace them.
>
>Regards,
>Suraj Kandpal
>=20
>> --
>> Gustavo Sousa
>>=20
>> >Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> >Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> >---
>> > drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 87 ++++++++++++-------
>> >drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 +--
>> > 2 files changed, 64 insertions(+), 35 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >index 7288065d2461..f3baba264e88 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >@@ -3225,11 +3225,8 @@ static void intel_cx0pll_enable(struct
>> >intel_encoder *encoder,  {
>> >         int port_clock =3D pll_state->use_c10 ? pll_state->c10.clock :=
 pll_state-
>> >c20.clock;
>> >         struct intel_display *display =3D to_intel_display(encoder);
>> >-        enum phy phy =3D intel_encoder_to_phy(encoder);
>> >         struct intel_digital_port *dig_port =3D enc_to_dig_port(encode=
r);
>> >         bool lane_reversal =3D dig_port->lane_reversal;
>> >-        u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>> >-                                          INTEL_CX0_LANE0;
>> >         struct ref_tracker *wakeref =3D
>> >intel_cx0_phy_transaction_begin(encoder);
>> >
>> >         /*
>> >@@ -3284,27 +3281,6 @@ static void intel_cx0pll_enable(struct
>> intel_encoder *encoder,
>> >          */
>> >         intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
>> >port_clock);
>> >
>> >-        /*
>> >-         * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
>> >-         * LN<Lane for maxPCLK> to "1" to enable PLL.
>> >-         */
>> >-        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>> >port),
>> >-                     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LAN=
ES),
>> >-                     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>> >-
>> >-        /* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK=
>
>> =3D=3D "1". */
>> >-        if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display,
>> encoder->port),
>> >-                             intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH=
_LANES),
>> >-                             intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>> >-                             XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
>> >-                drm_warn(display->drm, "Port %c PLL not locked\n",
>> >-                         phy_name(phy));
>> >-
>> >-        /*
>> >-         * 11. Follow the Display Voltage Frequency Switching Sequence=
 After
>> >-         * Frequency Change. We handle this step in bxt_set_cdclk().
>> >-         */
>> >-
>> >         /*
>> >          * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
>> >          *
>> >@@ -3403,6 +3379,42 @@ static int intel_mtl_tbt_clock_select(struct
>> intel_display *display,
>> >         }
>> > }
>> >
>> >+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder) {
>> >+        struct intel_display *display =3D to_intel_display(encoder);
>> >+        enum phy phy =3D intel_encoder_to_phy(encoder);
>> >+        struct intel_digital_port *dig_port =3D enc_to_dig_port(encode=
r);
>> >+        bool lane_reversal =3D dig_port->lane_reversal;
>> >+                                          INTEL_CX0_LANE0;
>> >+        u8 maxpclk_lane =3D lane_reversal ? INTEL_CX0_LANE1 :
>> >+                                        INTEL_CX0_LANE0;
>> >+
>> >+        struct ref_tracker *wakeref =3D
>> >+ intel_cx0_phy_transaction_begin(encoder);
>> >+
>> >+        /*
>> >+         * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
>> >+         * LN<Lane for maxPCLK> to "1" to enable PLL.
>> >+         */
>> >+        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>> >port),
>> >+                     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LAN=
ES),
>> >+                     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>> >+
>> >+        /* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK=
>
>> =3D=3D "1". */
>> >+        if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display,
>> encoder->port),
>> >+                             intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH=
_LANES),
>> >+                             intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>> >+                             XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
>> >+                drm_warn(display->drm, "Port %c PLL not locked\n",
>> >+                         phy_name(phy));
>> >+
>> >+        /*
>> >+         * 11. Follow the Display Voltage Frequency Switching Sequence=
 After
>> >+         * Frequency Change. We handle this step in bxt_set_cdclk().
>> >+         */
>> >+
>> >+        intel_cx0_phy_transaction_end(encoder, wakeref); }
>> >+
>> > void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int
>> >port_clock)  {
>> >         struct intel_display *display =3D to_intel_display(encoder); @=
@
>> >-3472,6 +3484,8 @@ void intel_mtl_pll_enable_clock(struct intel_encoder
>> >*encoder,
>> >
>> >         if (intel_tc_port_in_tbt_alt_mode(dig_port))
>> >                 intel_mtl_tbt_pll_enable_clock(encoder,
>> > crtc_state->port_clock);
>> >+        else
>> >+                intel_cx0pll_enable_clock(encoder);
>> > }
>> >
>> > /*
>> >@@ -3567,12 +3581,6 @@ static void intel_cx0pll_disable(struct
>> intel_encoder *encoder)
>> >          * Frequency Change. We handle this step in bxt_set_cdclk().
>> >          */
>> >
>> >-        /* 7. Program PORT_CLOCK_CTL register to disable and gate cloc=
ks. */
>> >-        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>> >port),
>> >-                     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
>> >-        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>> >port),
>> >-                     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>> >-
>> >         intel_cx0_phy_transaction_end(encoder, wakeref);  }
>> >
>> >@@ -3586,6 +3594,20 @@ static bool intel_cx0_pll_is_enabled(struct
>> intel_encoder *encoder)
>> >                              intel_cx0_get_pclk_pll_request(lane);
>> > }
>> >
>> >+static void intel_cx0pll_disable_clock(struct intel_encoder *encoder)
>> >+{
>> >+        struct intel_display *display =3D to_intel_display(encoder);
>> >+        struct ref_tracker *wakeref =3D
>> >+intel_cx0_phy_transaction_begin(encoder);
>> >+
>> >+        /* 7. Program PORT_CLOCK_CTL register to disable and gate cloc=
ks. */
>> >+        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>> >port),
>> >+                     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
>> >+        intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
>> >port),
>> >+                     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>> >+
>> >+        intel_cx0_phy_transaction_end(encoder, wakeref); }
>> >+
>> > void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)  {
>> >         struct intel_display *display =3D to_intel_display(encoder); @=
@
>> >-3635,6 +3657,9 @@ void intel_mtl_pll_disable_clock(struct
>> >intel_encoder *encoder)
>> >
>> >         if (intel_tc_port_in_tbt_alt_mode(dig_port))
>> >                 intel_mtl_tbt_pll_disable_clock(encoder);
>> >+        else
>> >+                intel_cx0pll_disable_clock(encoder);
>> >+
>> > }
>> >
>> > enum icl_port_dpll_id
>> >@@ -3783,6 +3808,8 @@ void intel_cx0_pll_power_save_wa(struct
>> intel_display *display)
>> >                             encoder->base.base.id,
>> >encoder->base.name);
>> >
>> >                 intel_cx0pll_enable(encoder, &pll_state);
>> >+                intel_cx0pll_enable_clock(encoder);
>> >                 intel_cx0pll_disable(encoder);
>> >+                intel_cx0pll_disable_clock(encoder);
>> >         }
>> > }
>> >diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> >b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> >index 9aa84a430f09..59395076103c 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> >@@ -186,11 +186,13 @@ void assert_dpll(struct intel_display *display,
>> >                      "asserting DPLL %s with no DPLL\n", str_on_off(st=
ate)))
>> >                 return;
>> >
>> >-        cur_state =3D intel_dpll_get_hw_state(display, pll, &hw_state)=
;
>> >-        INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
>> >-                                 "%s assertion failure (expected %s, c=
urrent %s)\n",
>> >-                                 pll->info->name, str_on_off(state),
>> >-                                 str_on_off(cur_state));
>> >+        if (DISPLAY_VER(display) < 14) {
>> >+                cur_state =3D intel_dpll_get_hw_state(display, pll, &h=
w_state);
>> >+                INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state=
,
>> >+                                         "%s assertion failure (expect=
ed %s, current %s)\n",
>> >+                                         pll->info->name, str_on_off(s=
tate),
>> >+                                         str_on_off(cur_state));
>> >+        }
>> > }
>> >
>> > static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
>> >--
>> >2.34.1
>> >
