Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C060B57E28
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 15:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDDF10E2DB;
	Mon, 15 Sep 2025 13:57:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ir2O8KjA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FC610E2DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 13:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757944649; x=1789480649;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=IgTppCCsG+Jh6PdtY1X+2NRIWvBA7kC93bnPk4gsYeM=;
 b=Ir2O8KjATCqEW4I7lnZ/2mQeWmOcwqhgZQOvl/xbNoypbUAk6uhxhpCR
 czoMhRGpBSW55fY9FoRvdHciiCdIx0k9NZp1lwhr5VO2M/ztmXSGR9yhZ
 Vdw1hNMgsv154xI6ivIxy9ugNlfOG8ilrWo/nkcZOEj0Ew5l2SzegZtUX
 AIpdTn/nxStb2bB1VBhiTbcMIHuVd1W2KHj4fPbQzggsdMwKfJUtrkR2a
 N5RLKazJPQ4lPE4cdvZk0pjoNkZiMtAdrmerMsc8QSj8Iz45vpKWXD3gQ
 F888F5BBnyQlKcgMVawC4XeT/tQjhpw3bMUBNtnXQaB1BWWcL1CeypAJF Q==;
X-CSE-ConnectionGUID: T78HJ0JSTzCOjDCFQ3CkTg==
X-CSE-MsgGUID: Tn95wzddQwSo0ePwcFz9dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="85633980"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="85633980"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:57:28 -0700
X-CSE-ConnectionGUID: nZCd+U8vRTa0LLN8hrcd/Q==
X-CSE-MsgGUID: O5E8dLvnS1OWWmtvOlsSUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174464894"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 06:57:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:57:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 06:57:26 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 06:57:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nk4JtfN6AOK0eXT8pcncrx55LzniF+so4LVTbXQ6a7z0hNmZT7JzmOkLv2WUmp4WQhFepa2mQz/BdgXkvMNSWbJaYkivHEgSlnaMj1OHuVOyR3fe/gBIx6WtmweF+3H3VV9tORVXWnzXSoRztwP4ZXIIEMUZEbbYyFv3GxXkLadEvuC3aT1fCqqvb3M0JaoljohUv5IdGZiY5+Z/fdRcbhHuqVBzSdANwt4K4pwhyOfRXamsmrTxudTWUTYLyHJ//TlLsyy0Rkq6bk5zvPeHR5GzoJ0E153Ncm5vhPRAc9uQi4MDP0LkTrX8yABj1Y+ZS8TRIjhF5ebgA3vGhXDu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T22G1aAifdSi32oAYGTKK/cJLGmrSy8+2gkXcv06cSM=;
 b=CXeG6uNK7R1anNtp+9zAOPiQ0eFSl1FLvpeKWveHHmxyo1QhuLLrVRozRxAm/BDPDtHskTOrpAjYm5gL1xrzauS6Ayraak/8iBk9Oe1gQ0TJzTDsvzEptTAzp2sDhoiXhGW3P95VewYhEUcvhER5ALdAYVELPT6YthxdXGYBS1Z359mbXDwWXV6H+oNa4MFrSiwfIBXrk8qiIZekPTszcNzpwRoFkZTSCdG+C0Z/vUGtlGRFbM1ZtCc+1rTKc3eIIvlHK861dizmTa+mZ0vz4AzIwKgygeKTCd4khUWOBy6IzJLcwL3VDpnx3YQ9jU3FkhY89dbunEDlZkLNu2AE0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV4PR11MB9489.namprd11.prod.outlook.com (2603:10b6:408:2e4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Mon, 15 Sep
 2025 13:57:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 13:57:19 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f292d091e4be602b3a43ff974ac9c588cd6e8611@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <20250911205543.388402-2-dnyaneshwar.bhadane@intel.com>
 <175794320783.1613.3172112236499856318@intel.com>
 <f292d091e4be602b3a43ff974ac9c588cd6e8611@intel.com>
Subject: Re: [PATCH 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <matthew.s.atwood@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 15 Sep 2025 10:57:15 -0300
Message-ID: <175794463580.1613.13102099526315551551@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0137.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV4PR11MB9489:EE_
X-MS-Office365-Filtering-Correlation-Id: c0f70b3a-1b66-4d5f-57c7-08ddf45fc998
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2tFOGtzcDZScVh4a1A3dVppR2wxRzFnUGwvMnFnanFmbWh3cGo0VERYbjNI?=
 =?utf-8?B?NGU3N281Si9zZHN1Qm5ZTVZvTktvc0RzN3BVVkR3STg4VzM0WHdJdVFhaGZh?=
 =?utf-8?B?VkJLUCtrLzNpNmo5cFAvbE16RmhsZnQzTEtheDFYNzlHTXhlcTJ3ZGZsdkdk?=
 =?utf-8?B?U1dkblpXMFVKOEdtVS85a0FXVm5wM21sUXRSd2dvV2JjV29FRTlPOHkvZWNQ?=
 =?utf-8?B?TCs2dG9aa3Z2em8rSkNYWjNKVThobXNhOU5aaml3UGl0a3owN2RsWHJXa2Iv?=
 =?utf-8?B?K0tyZTRMZXMwT2hUMVpxRmpWTk5OOHNDZDJUOWRaT0M0WUZUc1pRZ1pwc2l4?=
 =?utf-8?B?QjBNakk5TEFDR2ZTSWlBeHpoNUpaSkFxWUkyMWN3dVJKTWxtRnN4cWxSZ1VD?=
 =?utf-8?B?VFkrSlg0VlFtTlgyTUlrWlcwYkFhZXlaWVROQ3pkcThkTEYrYlcrckpGSEJw?=
 =?utf-8?B?WStKUDJaeUVZNncxTGI0VENZbE5SUjZCdWIzWVVzSVNVd0RxNVJUdFJZT1pw?=
 =?utf-8?B?YTlVZnBKSUFWb0pLWTErTVArRi92S25DOWxUWWhPREdxOVEvdkxZdXU1ZGN1?=
 =?utf-8?B?TFBneTM2Tkp3WFdoZUp5K01hUFFtcTRiOEs0RGhxK1VTc3NuU1ZMQytIeFlu?=
 =?utf-8?B?VWtpclhoTkx3U2tzV1FGSFUrY2gyYUlmelRrUXJZMVdlS0k0eGlIQnRqNTJI?=
 =?utf-8?B?Rkl4VGpybkZGVHBxaTAxSFBvM20yeFhMSGNHL3lWWGNlL2xIejZWbGVuekJG?=
 =?utf-8?B?Yk5iYm5LQ2RmYkFha251VTdjWUxiN1RPcHY1TWpwa01kM2lNNmo3UDQ4cklV?=
 =?utf-8?B?aWVHVk5XYVdvZFB5cFVFako4WnFRVHUwdHZyeXQrM0pLaHp0cVhMQzhDVTk2?=
 =?utf-8?B?WFA3QTM0WHpOekFFN0tscmtlSGVOdFIrSzBNUWZvdUxqZUdtVEtKWjdJM201?=
 =?utf-8?B?aVJrWXlmeG9oYmEyQmNVZFZ6L1k3dFJWUHVBMW9vRUFFNk5uU0J0UlAxbnpo?=
 =?utf-8?B?SjNmeVBDaW9RRExybGhTRmtwOGVWVWxObkdSS0F6NytUOVRVQTJHR0dQSTRa?=
 =?utf-8?B?djdmcnc0WnAzbzJINEFoSDduajBDTEt1TFV1cCtLMjhFWlREK0FJWjlYMm5P?=
 =?utf-8?B?QW1YWWw2NitCaWpJY01WUWFRMSs3WHhzZ2hNalFXWG5VQ2ZZUE9PbnVucW9H?=
 =?utf-8?B?YjhESENaREUvQUU5YlJLd29QNWhKcGFsYkRQZFptYUZYSndGYmFlZzVFZE0w?=
 =?utf-8?B?Qmd6NDBlTGk1ci9TMnRTYkNCRjdtVGgwR1p3UWxKOVFLcVRjRzVaWVZIeThQ?=
 =?utf-8?B?QlNEU3VET0YrRTRqVk1YSXRnRWYyKy9YRHV4TkZTSFVaTTJHSktpQmpjbGxN?=
 =?utf-8?B?TDI1QUZNZ05MU0JEZ1l5emtKSVFEenF3TGtlUC9RSTd3MFJCK0IwL1hDRktB?=
 =?utf-8?B?aGUzVWNOMTlwT3dyTWkzUjV0MXF6eFo1WGpVWk5HMVlnSEZ0ZkFodHN3aWhZ?=
 =?utf-8?B?UGxjbHBYTzJWc2ZlWXpuRWxUNzJZV28yTjVRamlQbHo1M0E0ekRldGRtTkNh?=
 =?utf-8?B?ejA5WkZGYnNQK0daNEQwNlBXdVdiOHZhUnd0TWtnSzc5bTRYVng3RzJtd1h0?=
 =?utf-8?B?ZVpJQTlmUE5TOGRMOVBKMkpTVVFmamtmSHlXcmplOG1lem93c3lPaGgrR3Rm?=
 =?utf-8?B?OE5zV1pLdmR4dytwL3JwYSt3VU9rRWVyQ01mclA0WlpsMXE5enFCa1phY0VH?=
 =?utf-8?B?UkZHREFvL1paV1pQaUVmRkFCT0llSm8xU0hFejZ1c1QvYWVLbWJYZEVaSSs5?=
 =?utf-8?B?alZxK3dJTklLVk9HRWRnOFRsemRUTlpYRmxzTkZCSlhxOEYwdlA3K3VFNyti?=
 =?utf-8?Q?+lWBgLrMXYvYf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHVsNnB1VmhEdXkxUEVIR2Q3ZnJIazFBb29ueDlxOFlHYm5GR0JRS3F2NGRB?=
 =?utf-8?B?bmp1NVJuQlpSZFdWWmNwWU5RdUxzaWNRL1Mray9nQSt3M0Zsd2xjNHA0Sk1m?=
 =?utf-8?B?RWpQQlU5aG40YXRQT0Z6VWtMd2F2NnEvYkhmaFNqTngyVWJvMzVLZ1hqVUcr?=
 =?utf-8?B?NUwvVUFCVHZaM2daZit1SGVRWW1YOFlDeSthczNhczhEaTd6aXQ5Nm5wZktv?=
 =?utf-8?B?OUw3K0x2TUw4MVo0Z3NGR29aN2l3R09QZUNqMmZmVmlHWDNLWTBoVXc5QUM3?=
 =?utf-8?B?MjdkbzVJVzNVZ3p4VjFqQ2dwbkFSTjRPWTkzV3VIMmRUWElNanJNUTJrdFlS?=
 =?utf-8?B?OWlQRHRYZStKSDhKUytIZmtqQzVlaVVMZUNSam0yeHF0NjJyU3RJRG5WY080?=
 =?utf-8?B?VFEwa2todEt3UUM5RjNiWmtybjJlMktwY3BNODNuVUJyZTNvSkowSk9wb1VJ?=
 =?utf-8?B?eGd4RGJKZG9CUGFHQ09PL2p4QjN3a250TlMxNGoxOHJJMU1KQmJTNC9mTHc4?=
 =?utf-8?B?YS9YTVp3NVZSbW5DTklpN2JXYjFhVW9pZVRYUVYwYlExMUd2TDNQbDdOL1Rt?=
 =?utf-8?B?RzVRR2kzaEdSSWhxQlRuOG44QnRvclNILzkwSnpBRHFMY3pLa1J5M0UwMzlV?=
 =?utf-8?B?YTlsaGV5NTdIRXlRSkpsb1NLZXBuSXY2Sk90Yk8vVjBzQWppd1VEVlpsYmRV?=
 =?utf-8?B?RWZQM1J6dFB5dXlFVmlYMU5taERUSXlTS280NnNoWFIyZlZZcDgwOWY1V3Zj?=
 =?utf-8?B?NllmRXcwMmZMcUxXR0srUVdITk1lZDMzREZkOENoWFA2Q0NjSTFmWkNkRmd5?=
 =?utf-8?B?dkd0OTRmSnZETzhUV25YeDR1dGUyWFQzbjJ4WG0yN1hyUlhoY0dwZm95TlJW?=
 =?utf-8?B?cGRnelU1VHZLNXRETVhnZ2JiVmdaYUtOT2FDWXFGaFB5TGttQ2txZTVaWVJ6?=
 =?utf-8?B?MkFQM2JWbjhUNEUvT0pkc0p3WU4xWnhhNk5jMC9xTFVOZ3k0dVRObnZmRXly?=
 =?utf-8?B?aGVMemhoYWowdzB5REpDYTlMZzU1elRMMUtBbDdkcXRLcTQyeS9GL09uaEpY?=
 =?utf-8?B?KzJGUnpMMzNQVXg2VHhmM2owUnNZbzNTVjArME5oSEdLZVhGeGNGNFlrM0VW?=
 =?utf-8?B?cmZIblEwWHRrenVVbHlyV1RXN2gwTnd6aXRoR3lOZG8zTklaMWhOMDZIaE0x?=
 =?utf-8?B?WlZ0OGpKdEtpYU8zL3NvOHVycHYzZmVLZmEzdmt1TDY5ZGozVEdSUlBzQVpK?=
 =?utf-8?B?THN3UXI4Y0NEdkErWGRwYXRWV0tzaUtTQWZWUmhKMFhrMkZtVVdEVmFBSVhp?=
 =?utf-8?B?eWNjeVdSL3RWV0o2SHMvektyZzU1bVQ5dTJBdmJMUDY4Y29HbjlkVjI1VTR5?=
 =?utf-8?B?M0FscVZoT0RzbFdRZkwxZTF4cTdBS1l3dTVIaXNJTnpwVnZGSi8vQko1LzIr?=
 =?utf-8?B?SFhwa0xhNEsyQmRPNk03ZXhxemkwb1o0SFA1dkZJZDRzZHFNSjdXL3lzU2NS?=
 =?utf-8?B?cGhtU1c4VWVpV0p5bFFaOFpaQkRFaktUSklKclJQUmZyUGgza0dGMTV1T3Yz?=
 =?utf-8?B?bCt2SWFJOGdrck9kQzRramJabi9HRFEwaUVLK00yT3lqUXcyOW5IZ3ZsUmNa?=
 =?utf-8?B?ZFNTK0pNdTI3ZU9DYjVOS1dZTEdYSWhZSCt3Y2x4NVlDUkRPQmEwWFFqT2pO?=
 =?utf-8?B?cS9OcnR6NUMyR2g1N2E0cmd4RTJEdndLeFpSUVlEdHhYd0tjQ01LVUJ5ek9u?=
 =?utf-8?B?cWNyYW9zSXErQkpNSHYrVHFWUnladERiV2N1MURMYTQzK09NTUd2c1plbnBI?=
 =?utf-8?B?ckhJaUlDZnhYMkIyOWFiaUtZWWtOaTdjM0p0a3VIQjhGVVBiZy9KUUZNcWJu?=
 =?utf-8?B?Y2pPR3VVaHFtRisxTXV2eTArUis0ZlhNRUovNnp3Vk05TXFSUUJMRXpDaUQv?=
 =?utf-8?B?SVJGR1FRRWRRVGs4M01MZmtDMEVtSjRxeVl2UndDZkZEZG5tYjJWdzM1TzBH?=
 =?utf-8?B?SGtidlh1QWhKS1VwRXBZcW9mMkwxdGd1WHhubEJDck1SU2J2M0M5RFl0S0tJ?=
 =?utf-8?B?cmxoSk9wd05DUVlyY0p6Qk14a2t6TXpteW4xNkhnU3RNeUljM21QNG8vbXN5?=
 =?utf-8?B?ZHJPYUtLQzBIUkd6Qm1hZUNVVThJSktuWkNuL01JZGpyQjhla0ppOW02YjZx?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f70b3a-1b66-4d5f-57c7-08ddf45fc998
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 13:57:19.9017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: djCSDObVD7M+zYtPFYYKlHQrCgzkusFSapNBwy6Ea26ZU99gbQ86dtgdm6eSFy+07OOgUIC1LEGCSMFpQODHoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9489
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

Quoting Jani Nikula (2025-09-15 10:51:55-03:00)
>On Mon, 15 Sep 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Dnyaneshwar Bhadane (2025-09-11 17:55:40-03:00)
>>>To form the WCL platform as a subplatform of PTL in definition,
>>>WCL pci ids are splited into saparate group from PTL.
>>>So update the pciidlist struct to cover all the pci ids.
>>>
>>>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>>---
>>> drivers/gpu/drm/xe/xe_pci.c | 1 +
>>> include/drm/intel/pciids.h  | 4 +++-
>>> 2 files changed, 4 insertions(+), 1 deletion(-)
>>>
>>>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>>>index 701ba9baa9d7..fc2ea9132804 100644
>>>--- a/drivers/gpu/drm/xe/xe_pci.c
>>>+++ b/drivers/gpu/drm/xe/xe_pci.c
>>>@@ -375,6 +375,7 @@ static const struct pci_device_id pciidlist[] =3D {
>>>         INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
>>>         INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>>>         INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>>+        INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>>         { }
>>> };
>>> MODULE_DEVICE_TABLE(pci, pciidlist);
>>>diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
>>>index da6301a6fcea..9d378c65be4b 100644
>>>--- a/include/drm/intel/pciids.h
>>>+++ b/include/drm/intel/pciids.h
>>>@@ -877,7 +877,9 @@
>>>         MACRO__(0xB08F, ## __VA_ARGS__), \
>>>         MACRO__(0xB090, ## __VA_ARGS__), \
>>>         MACRO__(0xB0A0, ## __VA_ARGS__), \
>>>-        MACRO__(0xB0B0, ## __VA_ARGS__), \
>>>+        MACRO__(0xB0B0, ## __VA_ARGS__)
>>>+
>>>+#define INTEL_WCL_IDS(MACRO__, ...) \
>>>         MACRO__(0xFD80, ## __VA_ARGS__), \
>>>         MACRO__(0xFD81, ## __VA_ARGS__)
>>
>> This patch, at its current state, will break the display part, because
>> WCL will not be detected until the next patch. We should either:
>>
>>  - bring the line "INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc)" from
>>    path #2 into this one.
>
>This. I've already replied to a newer version of this series to this
>effect [1][2].
>
>[1] https://lore.kernel.org/r/70fc412b47d9972ad2d1b6eca13bbdd9da992552@int=
el.com
>[2] https://lore.kernel.org/r/84fc10ec3b82b3436b521811589067ad0850eacd@int=
el.com
>
>>  - squash this and patch #2 together.
>
>IMO cleaner with separate patches.
>
>> That said, since we are defining WCL as a subplatform, I think we
>> probably should make INTEL_WCL_IDS() be called from INTEL_PTL_IDS().
>
>No. Please don't do that.
>
>There are various consumers for the PCI ID macros, and they should be
>kept independent. It's easier to deal with the platform/subplatform
>relationships at the consumer side, instead of forcing it in the PCI ID
>macros.
>
>Just consider having to promote WCL to an independent platform later. It
>would mean shuffling the macros again.

Alright. Thanks!

--
Gustavo Sousa

>
>> Either that or make both separate platforms from the display point of
>> view.
>>
>> Also, I'm not sure how having a prelimiary patch affects backporting
>> fixes. So, I'm wondering if we should tag this patch somehow or if
>> something else should be made here to make the backporting easier.
>
>It's easy enough to ask for deps to be backported.
>
>BR,
>Jani.
>
>
>--=20
>Jani Nikula, Intel
