Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89023C3FF40
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 13:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6669910EAAE;
	Fri,  7 Nov 2025 12:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bUMrARmH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA53188735;
 Fri,  7 Nov 2025 12:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762519327; x=1794055327;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=t6+yT+82qQXL0UERuO1Y8sH90ZQQ0VrhAfPpW4hFSLw=;
 b=bUMrARmHcUJ//36bI9tegKYgL0YvQ+lXRSJVC7TOD6lQ7vHf985sO7fJ
 Jyu9aHeAnhwDMuFpXQATCxWqgu3GBqRdbKJ45Ce3Vj2RcvUDdi6v2pPgt
 UzsxbNZ+YxrC0q3x1dueaaVh1nDLhivEBZg5alBbkSzFuSysNrM4YDiD5
 HwLVrrJghyzqfwIY+efsa5YB47CqVZ/FVNjreR4ZdNT7ZDTj5t5eN4O/w
 RIxwQll9CQ8zS7xtIoZ7SOg8kicr3sAOzaM9I7V+VqsdPjvi84ySg0gzq
 38ZjyreLvAT/EyhXuGctyBM7eFpzGoiukIBhcmUVifjnm5v+XZYSCQ3Xd g==;
X-CSE-ConnectionGUID: G+XDIsVzSMO+6+UvWAKPoQ==
X-CSE-MsgGUID: r2geSOaZRbKzCj/+/2zSyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="75780202"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="75780202"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 04:42:07 -0800
X-CSE-ConnectionGUID: lnfkXXVxTSWej6uC+VDKlg==
X-CSE-MsgGUID: kfiJSUz+ToGZ05RNHNgydQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="192290317"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 04:42:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 04:42:06 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 04:42:06 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.32)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 04:42:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SQIKbfCCTUSkmCpgbzo3blhAOBtsu5g+2Hm1cwIKMmCI1PzWLiLMb02hvC+jx3kM7q/12ux4VoIWQuSUMbZnrp70SRU1qr35Hc9LemKtF3fvPfMnwXC8LPEhDR7EOGS/jvN1dxGZXNdB/mZrzw9DS7NTYFFdp76/EzaTF84DrrstT9tontQp6x/oyJ69fts2RvwiNDmwjCw47djHbImKfKlNc+/oAyG8m57UHvC9fEVtoFbvloRUx3Zm1uxjSMyPke90PeNRVQn8GNU3rwpV6TjLZmIHPsWciXfLKw29GfC6AonYC9z/FaW23S8rg2W/r9JBOEIjsKjyOXmc4naecg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1YLph1f9lVTv2q97KH1/9KQYCb+2YWfIsr2Q5r2X7WY=;
 b=iqnxkof3qkt0CRtBxEKmtZ6iu98Rkxyzk6cPK52Yi0Bw978RtgyowTmNrS2Gg2gMiOw6ahQRxXfYMvb7M91SWeRFbDaOl/S6o8iH7v4tDtNYsPkkLNSZoqqzjYpzkUbAg3pzGzPzD+cvXp0Y0IYbZ5x8ieWw6kL9R/ceib+uLmCbQzpsoAJbgcCvWCJnlM6UBVJ+VXmAvIR4wbEsApOwBa/1UosEVlmd4KOB0EVN6iT2niQxaC2zqT4QagLcwz7Kx+pwYDSbglemunKq/yfh8emF9Q6y6nySKyFgDpmQqMSjBgmMS5z4J/vjWLG9t6qqMFXhm9/uBrnUgOcaBpM2Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Fri, 7 Nov
 2025 12:42:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Fri, 7 Nov 2025
 12:42:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>, "Animesh
 Manna" <animesh.manna@intel.com>, <stable@vger.kernel.org>
Subject: [PATCH] drm/i915/dp_mst: Disable Panel Replay
Date: Fri, 7 Nov 2025 14:41:41 +0200
Message-ID: <20251107124141.911895-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO0P123CA0013.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:354::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5069:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a9136d5-1b43-4cd6-e8c4-08de1dfb0da2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L0c4cktmeld4dTdBc3dtWWZHTTI3Nzd1Sk9GTnR6eFN3R1QvYXp2WWM1SHNK?=
 =?utf-8?B?Q25TQ09jd0Fib1VnOWVQTmM0Zlo3R3BNV25NODAzQkwyb1VPWisrQ1ViYldh?=
 =?utf-8?B?VkFzU1ZGRHdQN2EyTE42UnJBRGxiNnVQNjgvRGNkZXF5T052Uy91QVBTU0hL?=
 =?utf-8?B?Y3pVVnZoRVBmdnRiZXY3TDZQM0I2VmsvWjJ2STFkem5yWkppM2h5YStXZC9j?=
 =?utf-8?B?ZzY2dGMybEZaaFF5OW9lT29MRS9ObTFKZjlkTlRSKytTMWxub04zYVpab3hZ?=
 =?utf-8?B?WERpNXRKOFlqaDJWWDY5aWVMejYwc3piVnMvNVdCTEZFWmpYY0xTK1pUclEy?=
 =?utf-8?B?Ym5mWDg3cmtkZDI5MUVBUTFrTDVGWXdYcFRJcFlIWDlUMnlXTFVyMUh5UXkw?=
 =?utf-8?B?YzZoUU1nV1dOOXp4SytGcmNCaFlWSk00Y1lUMzZseGxHUXZuOFBuRmxJMWRQ?=
 =?utf-8?B?UHF4YUdKTjg2R2pmcGUrYkN3RXZCM012d2RVbnVlOFNyVE9Cb0ppWjhDdVJF?=
 =?utf-8?B?NVdUZGdpQ0MxcUhWajAxdTdiOEQwd05zMnNlalRQTzc4L2RHTDhIdkxDaWZv?=
 =?utf-8?B?YThReDgxeWQzZ1dsQVFtNEVxRklEcVhmb1R1OGNSbzU5UW1oY2dheXMxV3pR?=
 =?utf-8?B?ZjhwV1VHa2pqRzlVeU1jYUxObmk4L1Z3bmtaM2ErV0Y2eWNsZ3dIQ0lrV2pi?=
 =?utf-8?B?TWplR1RGZ0UvTmFvR09DRktxU283aGZPVnV6aTVwRS9hMm0vNXpGZ3l0QTFG?=
 =?utf-8?B?T2svbmgxdnZpV2VkVW9OcFNZU3pseWkzdGhDWkV0V2FJV3B3TFFsS05xUzhw?=
 =?utf-8?B?RlNMOXo5bFhncWlHdU4xMDVRSmlORkN3TXdiMFRzZXNNOG85Tk4zVlJHRzZr?=
 =?utf-8?B?RDRCMlJoUlhFbEpzb0RMa1dacFdSZXpTTnRCY081VXdybUhwaXE4akRSVkRH?=
 =?utf-8?B?WFlDNkZHUFZkTVp5UVordFNmSzZjR3p1aVFsSldpdkhZL0pYUllUSDJEa1ly?=
 =?utf-8?B?a1dCZ01MQ01RS0paNXRJamNQdUc1M1ZpRlVkWlNvWkt3SzdWZ0lxODJYbXUx?=
 =?utf-8?B?VmtNdWhCT2JRemprYlNzVEdENjN0RDNxdGxBNitSbVYyQmliOC8xMDhDZjBo?=
 =?utf-8?B?MnhEZkJLZ2dlc0Nwd3BObkpRbUR1N2VTRnJzTlg0Q3p2MFczdkNKUTNBd0pI?=
 =?utf-8?B?YnN0cDU5QjhlRVhWemF0Rmd2TStZVGV2YWNtM2tPZWFhbmU5dUJidFduWFB5?=
 =?utf-8?B?djZ0N2xFZTdjelMzOUZyRWtyUmxRMXg2Z096WjhmM2IwRmdGWXdpb05mWW4y?=
 =?utf-8?B?VWtlMVVud0ZuS2dlank4aGtwa2ZOeUlRQ2xmWXdJV2dHcWNlUzRjMithYkpU?=
 =?utf-8?B?eG0rcG1oV25ZbUV1S2RYTlhxa21ueThTR09KSEdFM2hyNGVQQ0c0V3lGMmZq?=
 =?utf-8?B?RzZ3YjNDZjUyVkxCb005cWVQTFBhcXRabkFxUDlkREFUWjQ3N3Y5MUNRanhk?=
 =?utf-8?B?NkdQWnFMRWpadUlRb3lNRjIybUJ1dTBPdXlVbTN3NHNvc2lZaFFQQ2ZNeGVl?=
 =?utf-8?B?Rmd1a0xtZHRjMG5LRDNMMWtHQjB6TTROaFV2UTQvdmZYUGRqSmpZajY3VjBR?=
 =?utf-8?B?Sy9jNjhtdjZCTzdWVSsxOFB1VnRzSGdaRnF5TUgzUzYrbXBwcEluemtnOEll?=
 =?utf-8?B?eml6NlNnczJuWldubm43UlJERGFlTkxKVEIyUjRpS1BLS0dDNkRkamcySG9B?=
 =?utf-8?B?WHUxVnI0ZTIxZ1QrOTUyVWVUUUNBbGVZRC8zTGNzMGp6K2xPZlNpYm9EcGl6?=
 =?utf-8?B?anZGeGVwb1REdW4rRU9pdEREYldvbDBnaFd6cFNJMHJUdS8vUjhuQVNsaTVL?=
 =?utf-8?B?c1kvdUFOMHhMMjZSeWpnK2JmeC9ZaXppa2s3OVUrd3kvTVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z21YV1FDLzhKdzA2Q0t5a2o4R2FNeC9uM2EvNTFFaTEwWUp0SW0waGU4V0JN?=
 =?utf-8?B?N0JrTWw3TDJqVjB1bitjRHRaTEFuQTlUc25DU3lXNStPR3BwRGpoUjFPSERz?=
 =?utf-8?B?cGlwWk5KN04xdEV1ZzJ5TkZZc3ZFWkhOdkNUMXQvak5odkJBVnRBY1dFQjJ1?=
 =?utf-8?B?UUJiMWVob1A4bkpjb0gzbWI5dWUyOFJ3T0ZyQjZmTmhMNzl1MU1CL2ZYOGV3?=
 =?utf-8?B?ZWtGcG1LbkRJOG56K3ZkVHlUcUdjb2VEbXh0WGxKTjM1TExHTmdySXNqUXVk?=
 =?utf-8?B?QktHL2twVU5XblNOZG5LS1g4bnZSTEVlWW1kMzJDbDNlQWl0MDVTbDR5SVVo?=
 =?utf-8?B?OHBOSGlVTkNVeGppT25Td0hZZU4ySlBSYmRnaGxKMWdvTVNCYS9tVXh2c29S?=
 =?utf-8?B?RzY1Q1N6OHNoS2QwSmZrV2p5bDE5TUljWEdZMDNOOEdocUNqS1A3eWpQVFVo?=
 =?utf-8?B?eGR6TVV1NktEWGgyRmU3MU5KWW1LZ0pzRDRzRXhGbWZxS2lnRHBxL2NWRU91?=
 =?utf-8?B?UWEzZGlZNUFJOW9ldXBVZE1zdS8xV0RIVE01SG56RFNrNldZTkx1VWY0Qllt?=
 =?utf-8?B?dHNJelkwZ0pHbkZaTlkvdFYvOTVPOHovMXh4YURaMCtnclVjaFlyeGxYZXpQ?=
 =?utf-8?B?cWZ5eE9GRy9PRjFGVkVSdDVlN0wraWZzTGRxY2VqaFdmTjFtZi9wQmo5d09i?=
 =?utf-8?B?bkxNWmhBQ0YrajVIc2NZcG1MOXd1cjFReU5Rdjd4MXVtVHNBZWs4QWdVQm5G?=
 =?utf-8?B?YzJkeWFyT1hRMU5iNVRrbDc4M3Brc0NFSWJkTVR1bG5Pa08yeEZMTFYwU0w3?=
 =?utf-8?B?aVBoL05zOUR6Mnp3Vk9XK29JdXlFa2VSSlZFSzJjb0NPL1FjZG1RMUh4Znl6?=
 =?utf-8?B?NVNYNThxT3ZteWE0azZ5K0hrcHdobHFtK3dpT0pidzdiVHRrR0xUcy9CUWN1?=
 =?utf-8?B?cUtVb1VtSUtCM3Voc2Fmb28rU09UNUhqdVRETXhTTVhFaWtuZTd0dnJQWnB0?=
 =?utf-8?B?ckNTMDg0YTJXN0ZMcitGZVJMemxJamRsa0lPT2NwVHVqMFM3ZnY2Zk1PRHhR?=
 =?utf-8?B?aGxwN2RCZGtqUFlxVDhDcXRzclJSTG94aTI3dmVTMTJGMXJrbm5aUVVYRHln?=
 =?utf-8?B?TEQ3QlhkbWFvY0VTZFJHcERnZ09UUmJBYmQ4MUtWLzNCa1k4eEUvc2dlNW9V?=
 =?utf-8?B?c1RGT1lrMUZ1ZmtFZk5TRk1PL1FoZVAzY2J4RnB2aCswM0JEN05JbVQyNC84?=
 =?utf-8?B?TU1tbjhHengrcGNhYk1SZ3VMcFZZUitxdjdxNmVzNTNOWlRvYU50Y1A2V1JU?=
 =?utf-8?B?dkx3VzVBN3Z3dFQvL2RiKzlUM3NzQnBPbE9zZVczYUliWkF2a2NCYXA5SDIy?=
 =?utf-8?B?MUFjczZDQk0zYk56UUhINTZqcitiakNoNkFLYlNCRFhuN2psMm1PTlRXYnpO?=
 =?utf-8?B?Rld2VGtCTnhaWHRXWE14dVpYMyszYzhxUlBBNURFWXZYckx0WDZkRk5yZlRk?=
 =?utf-8?B?Tjgzd1oweGc2WVRHak1yMXRCa0hPMzZwMkFUWlVrM0ZWcnlBY2U1UXRXcVJW?=
 =?utf-8?B?YXplU1M1MnN3V2hnSjN4OTZES1ZCZ2pCQWFKY1E4OW9lbWtHSHhQZGdnVW9C?=
 =?utf-8?B?dVJZcWIyQmhSa0VaOFR6d1NZbXJCQ1NPYUJqb244ckZxNXhsN0w4WURkbDNJ?=
 =?utf-8?B?ekFWWDdGMGQvWHF4eWRLNjZlYkt3VEQ1RFdNdXI1NGduQmw1ZGNFUWliQkJr?=
 =?utf-8?B?WkM3YXFYT3JoVWU1eFVWNXhuSXpFdUVhdExZbXpiaDN5NXRYWGJNODJ5U3Bu?=
 =?utf-8?B?S1ZKanVVRkh1Zy92NlFxSHhGam9MQVl1L2lBdklPcHpsVms5OXJObjBmdUIy?=
 =?utf-8?B?eVV5eWNWMEFmVGlSaE51YTZQRkVFeW1IdkRjU1Z2Z291UUpHVmgzSnlvWis1?=
 =?utf-8?B?elI1L0VGWFNkcHJoejRQelpLWll3RlkvRldBMllISzFWQU4rNWtqNStzbEJ0?=
 =?utf-8?B?UGR6RDhadWZVOHFEQit3ZUdrUXVvOFhXcUw0N0lSQmcwS0k3NUlWelhqM2ZG?=
 =?utf-8?B?ZTZRRTZ3YWxRK1NiSVN0b3BYay9EVVZvL1JaRU5nMndtWkRwM3UxekFhQ0hh?=
 =?utf-8?B?V2RqOVQ1b0FoNnMvbWlkeDBrWER1WVlHUkNWRGhVejNYdjhWbnB6TS9wN2p0?=
 =?utf-8?Q?fzDJL231gd8iHTd9nM3G7nTj4XRhN7EByXpHRfpyY6u3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9136d5-1b43-4cd6-e8c4-08de1dfb0da2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 12:42:03.9113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C93oYikkkiXdHvPejPkXUz4Rjn0Q4IYGlNyfUxQZEGMFDKdeToO/od6GeFjzS77RlBheICtIL5SOMZh61sjMcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
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

Disable Panel Replay on MST links until it's properly implemented. For
instance the required VSC SDP is not programmed on MST and FEC is not
enabled if Panel Replay is enabled.

Fixes: 3257e55d3ea7 ("drm/i915/panelreplay: enable/disable panel replay")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15174
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: stable@vger.kernel.org # v6.8+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 05014ffe3ce1d..54fc30cfad84c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -626,6 +626,10 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
 
+	/* TODO: Enable Panel Replay on MST once it's properly implemented. */
+	if (intel_dp->mst_detect == DRM_DP_MST)
+		return;
+
 	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
 				    &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
 	if (ret < 0)
-- 
2.49.1

