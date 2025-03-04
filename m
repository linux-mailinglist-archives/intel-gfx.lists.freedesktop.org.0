Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08ECA4DEC7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 14:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D067210E5BE;
	Tue,  4 Mar 2025 13:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ep2CxBfg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA8810E5CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 13:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741093767; x=1772629767;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=WpLxZMzj+T4INxtLmxj7na85bVT3HUnMPfQHNg+WB4A=;
 b=Ep2CxBfgeTipz9DyJtcIzxdmrwSJyjRiQMrTp9yF23wVryklw7I8eneV
 550+DQVxoaESX7UGrBDQu4f2GjyQQqzD40/Zu2KSg5+KIZvGTu0XIvksZ
 egnmz/7hjFFwkL5yev2CJjy+9SLlwJNoaRbqAwWa5tGa5nSce0fqfjTa9
 9DJMMuNt79jKDhuoQBUKYSRdRKzG66+qryBATs3IUYpd336TsPcei76sW
 UBGjBdbABLtCa5QXlTctpC6xfE6VtDg3gLk37tuVOCxlR+njdrp6zadcj
 gvWud8k0Fa2NTlYdgzFufQ2LiL9zC3KL9+WEcdcl4+BpStu0Vw3forjyJ w==;
X-CSE-ConnectionGUID: Pja/82FpTtGGp6VMpn248A==
X-CSE-MsgGUID: Vy404tcDRBOefAftqoZexQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42132768"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="42132768"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:09:26 -0800
X-CSE-ConnectionGUID: eyB63ly8SEaaHLfPcYx9tA==
X-CSE-MsgGUID: YXXNx15ZQIKpkP6I8XFlmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="123372359"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:09:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 05:09:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 05:09:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 05:09:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hUGZo0t4rVpx3NBjusgvgQ10U4T8aaX2BpbIfUibfj+Etbz8GOnJszkTtx+7BPdEjRsalv1Zn87ODXHNSEz6LUSLY07EmQS9gwoF5URtP7g+ZXZEK6O/uToARlOfHA9QeO7Nsh0xVYpV39BWQglwEn7ro+Y0AmnPu4YgHTlvrqtXgCF9nQbeSXe/cPr5/48hSE4iCvhYQppVMoZw6M6r3+tXB/F0HrJ8WVrlTcrbjeuIEJwCH2Uo8d9dlsAdi0T5/RIb+ZF1xr9EMkXFUxmoa419pF8nrij35oPNy2iKpOSeqeRmC0vHmUhmQGXlWnxCxDNL2jU3Ey3vpPSwb8UV4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Zgizbuv4aseCfbdtpF81bkB8fUX9To2Nr91xWUgm+I=;
 b=zKsPnrZyGo4DRkTum69z9OJeBKSpaUX3caDZJSs31zDYx1Japmo690rQ/GbJyUkbcCjSwqjhiABViQCERaZHHZ4l16wSabxJh1CAjDrjx7IrxrIN9xrGbkGJIL4O7UqpMNkBQ71S4XK8b4usuRoUXM0XEzDO4RZjX79ixyhM6Jo/X9SRTcUj9yGE6EkxsfpggPHK8XfhEpqPfauFPMsCN515vlx42er1vbJscl4z6YjrFREWrsLwSTg4I7Fvo6zSmuN/NVldfyiV067dBKVPpbd728OBqFyXuQPYwXXMhs09Fkcj8kCFoIggeL1WkJeKWFV8DPOhVz5DaJRSSyqSzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by SA1PR11MB5897.namprd11.prod.outlook.com (2603:10b6:806:228::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Tue, 4 Mar
 2025 13:09:16 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 13:09:16 +0000
Date: Tue, 4 Mar 2025 14:09:07 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, <chris.p.wilson@intel.com>
Subject: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
Message-ID: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR07CA0288.eurprd07.prod.outlook.com
 (2603:10a6:800:130::16) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|SA1PR11MB5897:EE_
X-MS-Office365-Filtering-Correlation-Id: 0281df76-30f5-4e38-a5a4-08dd5b1dc442
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHNlTUtOSThGU2ZMdWpRTUd0eGk3OXQ5bkRVdHp3NXpNbFVtRVgyN25ySm9G?=
 =?utf-8?B?YkE5dWdCbVBLYjNub1UweE1tUUZnTGNWNjFxN0RMOVlETjltanJCMzd1V3NH?=
 =?utf-8?B?bzNUTy9NcUd4d2EvYmpsSHhRN043Y2VnY0FpTDZhdUh0TERzWW5EM2I2dW5W?=
 =?utf-8?B?QnFDcmVWazFRSDRkdjR4SFdwRW1JL2FtTWdpNnl0MkdoMUJSVXpGYlAvejEv?=
 =?utf-8?B?d2NpckExcStkVHBIMEtuN2Q2emF5VEZjTnRKWHRsUVd6STYwRForbHBBTGxB?=
 =?utf-8?B?eExNNFYrSldmVlBaeXF4Szd2ejMzendGZk9GdFhFQmpVOENlWXcrQlBrcDVC?=
 =?utf-8?B?b1l2aU1hRWhXSlNPUEZESmhhQ0c5SFord2dRdGNlTHVIWDNVT0JzOW9qMUhB?=
 =?utf-8?B?clppb2RnTmlqcmU0ZXIwRVJmVkJMNHU2ZUtraEVZenNMdkNpZy9NMG12MHFQ?=
 =?utf-8?B?eERpa0NYMVQwNndObkVKaWtFNjE4M3FqRG5ZZ2l3L2p4d1NzMk1pVTlRelg1?=
 =?utf-8?B?M2dsNm9sNUp2ZU1nblkwYTB6MVk3OWZYekd5Y2t5TFJFU1NHc1ArcTdSQmpK?=
 =?utf-8?B?bktNYUMzblF0WU9kVEZIYVd5UHVkV2dlTjFJVm96M2F5RVhhZEEzdElQMVB5?=
 =?utf-8?B?RUhaNFgxN1BENDEyRW9qQm14Ym9qODJIVzlQYUNKYzI3M2tPbjA1VHlsYzlY?=
 =?utf-8?B?MythNHB4OVNabHVVVE1XVlRsWEMxYlhGUFMwUnBTcy9MZ2tORW1GRjdzTnpk?=
 =?utf-8?B?R05BV3EwSXJqM0ZhOVN0Ri9GYVVaWkFYeFlMdzBQTEFTckg5aEtZOEFMeU1z?=
 =?utf-8?B?V2dSTDg0a1B0YWRhUVJMeURyQjhxbVlXRm40elIzU0lNKy9KQjZ0OG1DaFJW?=
 =?utf-8?B?OFZQWWRIYzI1aUpoc1F1WHo3WWZ1WXFCSk5IcVZtWmlkUmJHNDh4MHAxZE9R?=
 =?utf-8?B?VFlFTUc0YUIrMC9uTG93Qmd2TjBrU2xITFhuczI5Nm9US2haVUVYQnB2Wkda?=
 =?utf-8?B?WVJQM0JMOHFGazFTYkxUWVhRN3NxRHJhc3F5SENtVGdRZGlFTlFaaUxURmVr?=
 =?utf-8?B?dlBUTHpON214V0ZvcTgwelQ0SE9udVB5NEJLVUxYeVJRZTJ5c0dISlpnRG5t?=
 =?utf-8?B?NUlSWUttMGVnbWZIdGpKeVp2L1lDQi92cStTeEl5ekJuRzhhZ1haK3hwM1My?=
 =?utf-8?B?T2R4MkwzaWhkVW4zMTRjeTFhd3hwYmVucGRVcjF5Unc3ZDdIRkxsQ0doTkFN?=
 =?utf-8?B?UmJFdU51bmJDekVyeEptRE05bHVHN2k5WmR0RzZtaUtCZU9nVDNRcjcxbFFo?=
 =?utf-8?B?VG0zS1k5UlQwNmJZaVU0ekdZZlFxZW5ZbjZnam05Z0dzSE54ZURkMEd3Uk1x?=
 =?utf-8?B?RytrS3pyNHNQa1A1clEvODhqeXc5R0tDQ0hlaytRMDVyYUNTNzFaSUYvMUFx?=
 =?utf-8?B?TXNOcEtJeFhtWFFjRnFFOVh6ZHRBd2kwT0ZETjZKTk1ZLys3ZFM0Q3ZBSnFp?=
 =?utf-8?B?MWpBUGQwcHJWdnZvaVZtQzVyWktlZFlKcUpaM0hCN0dxaWNtWVByUHRBMXpX?=
 =?utf-8?B?aUw1WWlXT29qR25obG1PRmpnaUlmVUlsWkVHam0zSHdESldRWk0xcmNEeTh3?=
 =?utf-8?B?cHRhZmprZ2sxVHhUaEg1Z0hNODV3SHlzdUdXRElyQzRKbHpsWXFFVm1NOEln?=
 =?utf-8?B?YUF2a1RMdkoyOTVza293dzg0aklXcXNHTEhISVlDQlNxL1M3a1FBeUZ1UUla?=
 =?utf-8?B?ak0rdWxZRkZ2UllGbHFPTHoydW11c2IzZm5QK2g0VzFyazRpeklCUmdrR2tM?=
 =?utf-8?B?ZGxXY3dBYWtTSkM0TG5wSFpha2kzK2tGRmhqb0RUNnhPWDRqL0VOaVpueUlR?=
 =?utf-8?B?T3lSNWNkTlladHE1U0hsSTV0ZEZxQlJYd29UQjlOc1BOb2hmZWRPK2VWYjBt?=
 =?utf-8?Q?EygBNXyV4Ag=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHBSaWlEckJ0NTIvV2t6blNReW1IUjFYK1FielF4TW1menlrMzZkYjZ0cGhj?=
 =?utf-8?B?QVR0L1BacWVlUFc0T280MithSHdKY0tiSkNBb29VTXNJWXl2V29iMnNFa2ZU?=
 =?utf-8?B?Zno1VlZSVk9jRkJoNlhhQmFaenh5N2dwRkZrOVJ5bXd0eW4wbERBTzJrd2ta?=
 =?utf-8?B?MUFDekh5c1o4eXFFU2xwR1ZOVXQ2VjdEdXBVRmtlczkwTVNnWTFjTXFhK3py?=
 =?utf-8?B?OWI5ajlSWi9HZ214WFh2UTBxSVNDcUp3SlhmQktTL3Z4Q2RmTzI5SmUrVHhQ?=
 =?utf-8?B?OEVoWWp5Rk0wbWJzRjkwdlBGa011bHhacDBaalo2TURFOXlWQ2cvbjg5ZHAw?=
 =?utf-8?B?SEZrV2tjWVB3MUx5ZUtqVDdBdEpPbXRwUU9rY1lVZm5LbTMyOU5rVTl4M3A2?=
 =?utf-8?B?LzJQZjUrUUhDODRFakRNaUZIUG95RlVCdVoxYzM3bStqN1BITWp2SUdBVDRp?=
 =?utf-8?B?dG9jaWFHTmJCZVUrYXY2ZXNxT0xENEZDbUlLVm5zUFJPWnlRNTdaQVRPTG5t?=
 =?utf-8?B?Ym01MzZmbkJGUHFJNURhWmhXODJGQXlXd2RDbEJpVDVlMm9JSzc0bEdhYU85?=
 =?utf-8?B?QzNqcTZlZ0UvR1FEaVlsWVBPYm1EN1B3SFlORFVvSHlkSnFKbnUzZmgrWXY4?=
 =?utf-8?B?M2kwUzE2RXJIRk4vWVlEbkVqNWZKcmx3NjFtT0g0MUNYSDlOQ2RtY1lOWW1H?=
 =?utf-8?B?R0Q0bmhZZnRMZFJ6bDJ6Y056RUdqWVFWM1hPbG9DWWR2cnNreDVvVkMzY2sy?=
 =?utf-8?B?ZWVpTzZ5ZitjZC9RYUpCSkMxU29abHFiVHpDWmtxcC9HNFNBbUlqMHcwZURS?=
 =?utf-8?B?SXRPOTVmRUhxQTNocWVpYjFzTmRaR29uNngrVXZ3dUFhTGhSbGh4V0QyQjV1?=
 =?utf-8?B?d2VNeHkyM3hyRUJoelFsdG9ZU2FhQVNBWGVEbTZEbElMcXl4SGF6WU9vUlVK?=
 =?utf-8?B?ajNVQ3BjV0g5dmFPWWdLSjI3MnhWRGgzWERqZS9FaWZ6RVJJQ0pudE1GSEY4?=
 =?utf-8?B?d3N1ZXhPZWtOUk1MT2FiMmpKTGpCTzBKQzY4T2oyY0NiRVEwL2lKTTNqNEdm?=
 =?utf-8?B?ejRiUTltUlBxMnZreUJHYzJsOXYyMmVpdWZDVEU2OGI0R2dvODVmMnd4OTBH?=
 =?utf-8?B?MTJEZ1U0M2xKZStGNXN0VmR6RmIyQzcxNnZnY3lUMXFaeTVONlNFQWRFZzMz?=
 =?utf-8?B?QmduS3NQZ0gxSm90RkxOeFJSQXVwYWpSTFA1U1VaTUlBYjJQbTh4S3F0L2RF?=
 =?utf-8?B?N1VyMnl3cTZNYzROMFBsb3ptUXY3UFh0dngwSVE4TTNuY001SHU4ZDlHUlRH?=
 =?utf-8?B?RW5xK0I2YWxnQ25KSG5FbklvYS9xS3RmQlNmVnluSktPMVdTY081UEJGY3U4?=
 =?utf-8?B?aEdJUmlLUHJCSmlxalVuR0xGUmNoU3UydTZVcDZsM3BEYzdRTFMzeWNDSDBM?=
 =?utf-8?B?K3U1Y1NHbEVHVzk0bHBjSXJUTUcvbS9FVFRHV1RVRjE3ZTU0bTREMkZQdlYx?=
 =?utf-8?B?QWx4NXBOTTlwSDNzakhDdmZBZGR2aEZUdEZSaEJManBWeSszbTBlQnh2NUZB?=
 =?utf-8?B?M3Qrbi9IQWhSRno4Z1QzSFFDUDVqR3lNODBFaVZja2w2ZFF5VTBVV2tZTjNC?=
 =?utf-8?B?Z0RwNWc1NjYzMWdQUUZ0di9JZ1h6K0dHWkNzbFZ4cHUzaC8xRXpCdWV5ay8v?=
 =?utf-8?B?djRoblNDZUtLTUV3Y2JPZjA5dTFEZ3dCTm45Nnhkcldyb2JPOEh6QXJmclVr?=
 =?utf-8?B?d2o1U3VLUWdkSjRweWQvS281Z3hBMzkreXV4SnVkNlhxQWNpM3FUZzF2Qld4?=
 =?utf-8?B?OVZPNmNkUEFkSXdNeVNXQm1DWXRrSTM5RmFoUm5RajJxQ0lzQkJLem9Lam5Q?=
 =?utf-8?B?Mkxnc3lLUmtoclNyN2hKbnJCVSt6NGxDTG55dXcxSFJFeXRXbTZrVHhwNW83?=
 =?utf-8?B?SjRuZ2hmR3h2UjZIdUEvYlREM2txdnprVTFTZUZPencvRDV4WUFpSSt6WUw1?=
 =?utf-8?B?RGV6UG9WZGpJUWxiUWFBTGF3bVQza3hnZmpqUC9NVmdrZ0l5cWxBV0NzVjc0?=
 =?utf-8?B?cWZQZTk2UW5aOHkzbzlpMXVJMjFvRVc1Vm5FNW5wak5kMnJ3WDQ1ZTNNV3hl?=
 =?utf-8?B?V05jcnZ5WElXQ0tIYUNUNGpPOGFQNTZZaWFYK0RRLzI1QkM2TWJIcnBqNllS?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0281df76-30f5-4e38-a5a4-08dd5b1dc442
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 13:09:16.2610 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eCwY+bUzm2U/KOPxqpJu9Qcn1Zrsr5qq+VuCTEs8/7jrDLQvzmLavDNgM9acVpDuYJKRXVFUNwlAkdzgHxhqTo9wpbvw0ppGfXNf8yZyJz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5897
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

This test exposes bug in tigerlake hardware which prevents it from
succeeding. Since the tested feature is only available on bugged hardware
and we won't support any new hardware, this test is obsolete and
should be removed.

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 215 -------------------------
 1 file changed, 215 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 22e750108c5f..aa9b8af61ba6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -105,32 +105,6 @@ static int emit_semaphore_signal(struct intel_context *ce, void *slot)
 	return 0;
 }
 
-static int context_flush(struct intel_context *ce, long timeout)
-{
-	struct i915_request *rq;
-	struct dma_fence *fence;
-	int err = 0;
-
-	rq = intel_engine_create_kernel_request(ce->engine);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	fence = i915_active_fence_get(&ce->timeline->last_request);
-	if (fence) {
-		i915_request_await_dma_fence(rq, fence);
-		dma_fence_put(fence);
-	}
-
-	rq = i915_request_get(rq);
-	i915_request_add(rq);
-	if (i915_request_wait(rq, 0, timeout) < 0)
-		err = -ETIME;
-	i915_request_put(rq);
-
-	rmb(); /* We know the request is written, make sure all state is too! */
-	return err;
-}
-
 static int get_lri_mask(struct intel_engine_cs *engine, u32 lri)
 {
 	if ((lri & MI_LRI_LRM_CS_MMIO) == 0)
@@ -733,194 +707,6 @@ static int live_lrc_gpr(void *arg)
 	return err;
 }
 
-static struct i915_request *
-create_timestamp(struct intel_context *ce, void *slot, int idx)
-{
-	const u32 offset =
-		i915_ggtt_offset(ce->engine->status_page.vma) +
-		offset_in_page(slot);
-	struct i915_request *rq;
-	u32 *cs;
-	int err;
-
-	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq))
-		return rq;
-
-	cs = intel_ring_begin(rq, 10);
-	if (IS_ERR(cs)) {
-		err = PTR_ERR(cs);
-		goto err;
-	}
-
-	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
-	*cs++ = MI_NOOP;
-
-	*cs++ = MI_SEMAPHORE_WAIT |
-		MI_SEMAPHORE_GLOBAL_GTT |
-		MI_SEMAPHORE_POLL |
-		MI_SEMAPHORE_SAD_NEQ_SDD;
-	*cs++ = 0;
-	*cs++ = offset;
-	*cs++ = 0;
-
-	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
-	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(rq->engine->mmio_base));
-	*cs++ = offset + idx * sizeof(u32);
-	*cs++ = 0;
-
-	intel_ring_advance(rq, cs);
-
-	err = 0;
-err:
-	i915_request_get(rq);
-	i915_request_add(rq);
-	if (err) {
-		i915_request_put(rq);
-		return ERR_PTR(err);
-	}
-
-	return rq;
-}
-
-struct lrc_timestamp {
-	struct intel_engine_cs *engine;
-	struct intel_context *ce[2];
-	u32 poison;
-};
-
-static bool timestamp_advanced(u32 start, u32 end)
-{
-	return (s32)(end - start) > 0;
-}
-
-static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
-{
-	u32 *slot = memset32(arg->engine->status_page.addr + 1000, 0, 4);
-	struct i915_request *rq;
-	u32 timestamp;
-	int err = 0;
-
-	arg->ce[0]->lrc_reg_state[CTX_TIMESTAMP] = arg->poison;
-	rq = create_timestamp(arg->ce[0], slot, 1);
-	if (IS_ERR(rq))
-		return PTR_ERR(rq);
-
-	err = wait_for_submit(rq->engine, rq, HZ / 2);
-	if (err)
-		goto err;
-
-	if (preempt) {
-		arg->ce[1]->lrc_reg_state[CTX_TIMESTAMP] = 0xdeadbeef;
-		err = emit_semaphore_signal(arg->ce[1], slot);
-		if (err)
-			goto err;
-	} else {
-		slot[0] = 1;
-		wmb();
-	}
-
-	/* And wait for switch to kernel (to save our context to memory) */
-	err = context_flush(arg->ce[0], HZ / 2);
-	if (err)
-		goto err;
-
-	if (!timestamp_advanced(arg->poison, slot[1])) {
-		pr_err("%s(%s): invalid timestamp on restore, context:%x, request:%x\n",
-		       arg->engine->name, preempt ? "preempt" : "simple",
-		       arg->poison, slot[1]);
-		err = -EINVAL;
-	}
-
-	timestamp = READ_ONCE(arg->ce[0]->lrc_reg_state[CTX_TIMESTAMP]);
-	if (!timestamp_advanced(slot[1], timestamp)) {
-		pr_err("%s(%s): invalid timestamp on save, request:%x, context:%x\n",
-		       arg->engine->name, preempt ? "preempt" : "simple",
-		       slot[1], timestamp);
-		err = -EINVAL;
-	}
-
-err:
-	memset32(slot, -1, 4);
-	i915_request_put(rq);
-	return err;
-}
-
-static int live_lrc_timestamp(void *arg)
-{
-	struct lrc_timestamp data = {};
-	struct intel_gt *gt = arg;
-	enum intel_engine_id id;
-	const u32 poison[] = {
-		0,
-		S32_MAX,
-		(u32)S32_MAX + 1,
-		U32_MAX,
-	};
-
-	/*
-	 * We want to verify that the timestamp is saved and restore across
-	 * context switches and is monotonic.
-	 *
-	 * So we do this with a little bit of LRC poisoning to check various
-	 * boundary conditions, and see what happens if we preempt the context
-	 * with a second request (carrying more poison into the timestamp).
-	 */
-
-	for_each_engine(data.engine, gt, id) {
-		int i, err = 0;
-
-		st_engine_heartbeat_disable(data.engine);
-
-		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
-			struct intel_context *tmp;
-
-			tmp = intel_context_create(data.engine);
-			if (IS_ERR(tmp)) {
-				err = PTR_ERR(tmp);
-				goto err;
-			}
-
-			err = intel_context_pin(tmp);
-			if (err) {
-				intel_context_put(tmp);
-				goto err;
-			}
-
-			data.ce[i] = tmp;
-		}
-
-		for (i = 0; i < ARRAY_SIZE(poison); i++) {
-			data.poison = poison[i];
-
-			err = __lrc_timestamp(&data, false);
-			if (err)
-				break;
-
-			err = __lrc_timestamp(&data, true);
-			if (err)
-				break;
-		}
-
-err:
-		st_engine_heartbeat_enable(data.engine);
-		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
-			if (!data.ce[i])
-				break;
-
-			intel_context_unpin(data.ce[i]);
-			intel_context_put(data.ce[i]);
-		}
-
-		if (igt_flush_test(gt->i915))
-			err = -EIO;
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
 static struct i915_vma *
 create_user_vma(struct i915_address_space *vm, unsigned long size)
 {
@@ -1971,7 +1757,6 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_state),
 		SUBTEST(live_lrc_gpr),
 		SUBTEST(live_lrc_isolation),
-		SUBTEST(live_lrc_timestamp),
 		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
 		SUBTEST(live_lrc_indirect_ctx_bb),
-- 
2.43.0

