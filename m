Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8K7/FU9E02knggcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:27:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BBC3A1963
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BBB110E20C;
	Mon,  6 Apr 2026 05:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYpZXKbN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4FD10E0A9;
 Mon,  6 Apr 2026 05:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775453260; x=1806989260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ukxIoI8SDsDNTgOBX0jgJtxYsPVGr2XkEKFHBiw39TA=;
 b=cYpZXKbNQ8lzRm7wXlBjAGd4VP1Y+ZKSUTIDzSHqIXMwBHRQtmRpxShS
 9Gn3D/O8gvBmcNcOLmt7swjGllqmGisAUtqVT8Kt781IWBALf7rtfl2UR
 WEBsprpnUVVeiFQt0/M/UEB9PApLq67yTW1FndAhjV3MH7OB+L0NcP/0m
 fXYMsRC+qPaqVvWQwXnq4uX0v8hDcrBsu4ILnY+LZRMobgM6ZHUInlqjy
 xPgiAlf+fqBhgIYbIY7D8sL99uHllcAVABVcWApPzGq9iSZuCYIBP9a1R
 EV32HgIEQFLCmXtZnJvyMfxaQD9ZZ2dwICq+tHzQdNfPbkrFL/Tbry8fz Q==;
X-CSE-ConnectionGUID: njMQmhb7Qp2w9YtpTrkLsw==
X-CSE-MsgGUID: JW6hVmEKSZGmJguvuTcRlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="93793320"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="93793320"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:27:39 -0700
X-CSE-ConnectionGUID: vtSbSiqoTHe3r77SRokqLg==
X-CSE-MsgGUID: MhfPvM5wTpuQXwFFYukn7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="224543203"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:27:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:27:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 5 Apr 2026 22:27:38 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VwZgqawJ2XAbdj1SCdXlRq6KKquIW1tcyIM02MKLlH9+cPw9u5SGI7gYNLxiGPIKQmj/aN0d7s7TsHZamFBUJFj/PvlKiKxdHS17XF36MEp+LKOOpanZUm8/pMYAqpGjnxlFvcHCmreo7qQr2bNbtiWarTcBL39dwCT4ZsR462mtlebuJj6gWTLbMemakEV3P5CQUij97cbON/WtO/mD39Ea7v1qb0doRlhQKVT+RPhMXs6wZWSX2qW3kOC7dE5QJPbgDT5LLnwt5ZccxqjmppqGSp84eGNkiDRSwGsyffhEch5+yr9Ib6MUFCvCtkUwSio3eOF0k1PEcFZYBJefuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Axbxs10IkD5yIfYDZORXlmFQYebupdljHrvh00lqJ4k=;
 b=PZ1FXqpC1TUvTMCsGjX0+/tBjXRDRHTMyURKqqxyQsOSM9IQtNF9iirALQDXJoilj3AZbtHyeeqBWYRnvDcyWqvncM3gOqcitj+f/wh2/M83nGMtSVmKzqUL81y76hd9XZryvQJ/Mh6h3Pu1owamrxtWQSn42s4tAF6q+ojwbzmGfG1vjgI+RXgpvhoppj/uaCpUCDarTR0g5mg2FJixAbt6MdsjkGoA3xAcNYtpvkJRiN2Y/7lhtnpbDu5Zh+1/am3dYfhVayQ1csO82o1Hs/yS8rQ7ENVnK8ZgKHDnhz74XMCK2KG+6y0lqzp7HlCi0Yyz75bIlqqL8BV/qTSBvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Mon, 6 Apr
 2026 05:27:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 05:27:29 +0000
Message-ID: <c5d8d614-5c7c-4400-95af-8e69eebdff59@intel.com>
Date: Mon, 6 Apr 2026 10:57:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/i915/hdmi: Restructure the sink/output format
 selection
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260330235339.29479-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0149.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6117:EE_
X-MS-Office365-Filtering-Correlation-Id: 5055361e-f0b8-4221-6c7d-08de939d31db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 9ON6LKAgap8u1v8UVzbTvyqiptN+qzCL/N3DqSMzhQ8WzOheCst/pw+w2vWRRCjMiD7Qow3bGh53BUFGf4jrnzzb1w+eWdY0WGhEvxVY1bFcuKqYg0Uc24GLn8d3odIxuck+ZmJFu01zf6r1GSgewwEv+SfWsCZca7Wh9x0qawddknFJ6egKY5U4zCBccc/Ta75wZg1IpQEAvou4i8dWeJboYIxsb7U8A+Xu7De5pSvvmLc5RLcupZZA2kIFzDdPyBtEU1VNqJAmc1270i3xGMa2G08BQRoTWoSOt6oO48yKivPYNhyxFw0CP3ku+/drCw/ftUR2tK46FxWgnrtStY2kuCn0+zAGtFnLM/IJ7FKaKMQEsDQnGCVsfyR5p6wwRsvwniZbrmZcnr9fO478eADUD8wfcvKCysUh5lYT1LSBfFzs0fxgSVTjvgWAmTTDqo8LrjXk9qdqsjiZHVjN7rVQG66pn7B0o+gmBw6HDJ2P9QZx1fdQrVjuSi4l09y9E+0ySP7N4OuC8emB/lrFuLC2ORrx1c5SPKZz+JumWBYKZWqezklouy6gfAZnfIUcHGDxT3VKVlNAP2W2eer/sZXdPYvPmJCdYlJvI7Gj9Pca5EzWEnU0ewS5+I20ihN7QrtMSka6gOYcOhr5zdZHNoFkXxnimDT3eCo6toVz9nqHjtKWGK0yYlAtg5QD1tOF/cU5IKkEsOZOUDtANVezr8x6qdxjnV6+bkvb1BOeojU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHgvYVBpZWZJREE5enM2Nk92aFFnUFVjcFFDYWNwaHBiVmsrRXJPcXdGcTE4?=
 =?utf-8?B?Zi9sbys5OGcwclhUeS8wU1J2VUIrVG11UUR5NlNYcHVWbHd2RzRHSzJIRXNi?=
 =?utf-8?B?UjZtK3Yvc0JudVZ0QUgyK0pGNUFTNFBXWG1lSEQwelI5RVl0SWhxRDZhQkVw?=
 =?utf-8?B?Njh0NnFhUnA1WTRqcGVFYUN6VXFXZ3FJRDgzNkxWNFNHRURxenJKcXM4bnU2?=
 =?utf-8?B?WW1LZlY5aEpLS1QrS0VGN0VPTGgzbTZwZ0UxU2xodjhKUDFtdDVGMUdjRFVM?=
 =?utf-8?B?MVdjaFNVVDVFemUwSThKYy92UHQ4TUZESDNKQ0RzNmJRMXdlOHh0cGdrcWJ4?=
 =?utf-8?B?czAxSktCRktyVnZtSEV5eDRPQ1FDMFprOER2bDk2S1Nsa2dXWGdwK1MxaG1u?=
 =?utf-8?B?ZFVxdGpGcW1LNlp4T2pUSWxRVFVWWmwwRlpDQzdkdTJabzFVSjBJQU5NQVdW?=
 =?utf-8?B?bmxHbEZ5YTZJbVlYamNpS0p3WjVRVEJsZmlRRFdTRENYR04rNjZKc0tGZGNl?=
 =?utf-8?B?d0tpTlpxNGNWbDVwSlorTThVTklzWjNCa2dWN0tRdzEwVmdlZ3RjWVMxUEVY?=
 =?utf-8?B?MmxsOE1WRURzL2Q2dURuKzF1T2R3V3lBanQ4RGdsdFRpS2lxL0x6THI3Ym5H?=
 =?utf-8?B?T3NGejF0SlpSbDEzeDB6MnJBM2ZEYWhCWTVCd3dNTlBtOVZ1Tkd2cks2RkNB?=
 =?utf-8?B?d2tJVW9vRU5iSUk1Sjh6YldmZmFkazl4K2M5RDRJWHFwVk5DZkVxRSttdm41?=
 =?utf-8?B?ZkZEQ1p5bGdFaDRtK3hhb29tdTROaVIydUs2QlhLZ0RTRnBTSllXdWNtNCt1?=
 =?utf-8?B?aTZyZ0c1YyttQUxTeVVVa3hGbGZtN1Q4ZlV4UFZNUnh0UFJOc1FpeTZPTEdn?=
 =?utf-8?B?KysyblZiLzU2Z0NCTUxFRk1LaGcrT21LRFI5cVU3WFRqTVVrSUxBZDl6YjdF?=
 =?utf-8?B?bzZsMHFmT2VUdmpwRTFTaXJMV3BiOXZDN2NTVUVEY015L0c3dEhYeTQxUTNI?=
 =?utf-8?B?ZnBlcDNKOUUxOTBiZTNzUSttRXVVeGxsSzg2K2gyc1M1blhkREJpTTNzTDZq?=
 =?utf-8?B?a3NvWVE2eW15MENpcXpBaDNMdTJ3QkNRVnlSVU14R0ZYQmo5aWZiTnpTRldl?=
 =?utf-8?B?b1J4ZGNMQWJ4bFpKK1FsVjQwTWZYa2U3TjEwbWNFR0s1eGxON0l0Y3kzbFNJ?=
 =?utf-8?B?aEgzTEtCai9yYW5uVllPd3VsdjlJS0ZTTytMUDh0VCtUdXlwS296TUNGVFhH?=
 =?utf-8?B?dWJkejZiTzJKUGxlZjhtRGNJMzRBa1JDZVdieTF4N2dXdEYyRUphM0txV3dw?=
 =?utf-8?B?S3E0bktZQ0hzZ0Vnd2NCN1VIaHdaNzU5blpSNVFEQ3dXRVA3N1pFazQrU0U0?=
 =?utf-8?B?SHkrYTNtUDlPUVlqT1U2SXc2K1FQQWhoUjFvWHNvcDd6bkoyRGptakVmc2xq?=
 =?utf-8?B?V0c4UjB3ZTM2aS9pRTV1Zi81Q1U5YlhTdUQ1NEYyWDd6ZTZwQzJWRmkvcnYz?=
 =?utf-8?B?TXVXQzJSRFJXVWZOUm1kSGF1LzZiR1E4NG55U3kwcnQvaEhxM2tSWnFGSmwy?=
 =?utf-8?B?QitjMTNocE1WWENQZWhmN2o4S1gxcUtQb2k3NjhabGRkZHR2MWg1Lzd4Ukxh?=
 =?utf-8?B?dWJ3dk1JNWhVK2loRkppS3lQZGM4Zzlndm51WVJzdXF2NHhTVXk2ZmRnWkN0?=
 =?utf-8?B?T2hVc0YwQUdaQW1oU3Ayei9KUDR2N0srcFd5SkdPN1A5QTloUUF2bzArcUVI?=
 =?utf-8?B?cUVJVnRsbVhiZDRHVDZ2QXpFMEd6SFQxdlVlblBkQ0UxemI1Z1VPVEtseURI?=
 =?utf-8?B?dzh5MWIrZ1BWVG1SaUZWWGdYVWhjMWZuRnIvMDZNMi9jUGVYU01SRFpRZWIr?=
 =?utf-8?B?bFh0MklzNjhCeHY2Y2JDSyszK01XV2MzN00xeFQ3akgzUE1xR2p4cTZmNEY0?=
 =?utf-8?B?eFBDRjJLeTM5R0JVUk5QM1F5eG5pSmhHWVBqR2EzencxL3Z4U2NKdWkzYzZP?=
 =?utf-8?B?UXFMcVZsT0h2N3JpK0xjajdYRkZZQU4xY3JtVXpCRTdwMzJPRXR0UnFuQ1Bk?=
 =?utf-8?B?YlRpbS9vd3IzYzFSUGZQS2s1SjNFUHpUU3ZpZjVyR0ZYRnZ6c21vOWNWMUdl?=
 =?utf-8?B?YmNXUnlzanNRajMwUDdJSFlhbnlBZ0M0Mkl3N1pOTDV0ME5LTlh0bnhNb3ds?=
 =?utf-8?B?K3Vjc0ozV0ZteWx3ZnI3eG52TTJGbzdROGZkMHRNaWZjOE1oZTNZZk5QNzZZ?=
 =?utf-8?B?eU1BVXQyWHphTW1vZmd5aGtTMGhzdjEreWhYODQ1ZG5RK2lkMkxRMHFpQ1lO?=
 =?utf-8?B?NjdUR0R1RDZnOGxxaEFUbEgzcWpyYm1tSDJzZ1FKUzlUN0VaRzFZZnIrUElh?=
 =?utf-8?Q?BIYICJjemYlFolIg=3D?=
X-Exchange-RoutingPolicyChecked: VczpwVSGp8K7lq01U9mZnfbFXwta8nBwYTbDzQyTgrvOd0nvU4b9Mq0fGnH5uxCULCUoZ74x07s3MOmkCoqePXsXcuWIkGCS6SyEefVPRdkN9/ePLZDTXXEbTxbvY61riTsojAM3rLtWIgfBXLd1rDb2rIc9OTPbyGcJBrWHcxV3M8bo+r6puuUWtBduBXLJuFvGn0vZeoKz659Oke6NJWOICww4bwc+pBfg/xvmMfAWeePnjaIBB/Pf7lNEI8fc5iGtG2EeL/RAProgiTOVw2CfTYslp0KSYQSBx28QJcvRmiObyPGe2EJ51ZbMJ4n6bVxPJMmV++syhroyktAhOQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5055361e-f0b8-4221-6c7d-08de939d31db
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 05:27:29.1985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nR3Y+ZZXpUZuwPpGuC+ugBqAg/+aVeS/2oc/hRx27gslY15ZL751HFFOWcrhA8+79uf/zAygWywRm2elEjdglf82Ujnyf5iDb5uKGIqOClE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B8BBC3A1963
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 5:23 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> intel_hdmi_compute_output_format() is a bit of a mess. Try to
> restructure it into a more readable form.
>
> Right now we basically have two main code paths:
> - YCbCr 4:2:0 only modes
> - everything else including YCbCr 4:2:0 also modes
>
> Those two basically do the same two steps (try 4:2:0 and try 4:4:4)
> but in opposite orders. Let's write that out in a more explicit
> if-else form. And since I'm running out of function names I'll
> rename the function with that high level logic into
> intel_hdmi_compute_formats() and it will call (the new) with

Nitpick : Extra 'with'.

Apart from above, the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

> intel_hdmi_compute_output_format() with an explicit sink_format
> as needed.
>
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 112 ++++++++++++++--------
>   1 file changed, 70 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 072b0554cc24..16873fc7bcb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2021,6 +2021,30 @@ intel_hdmi_mode_clock_valid(struct drm_connector *_connector, int clock,
>   	return status;
>   }
>   
> +static enum drm_mode_status
> +intel_hdmi_sink_format_valid(struct intel_connector *connector,
> +			     const struct drm_display_mode *mode,
> +			     bool has_hdmi_sink,
> +			     enum intel_output_format sink_format)
> +{
> +	const struct drm_display_info *info = &connector->base.display_info;
> +
> +	switch (sink_format) {
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		if (!has_hdmi_sink ||
> +		    !connector->base.ycbcr_420_allowed ||
> +		    !drm_mode_is_420(info, mode))
> +			return MODE_NO_420;
> +
> +		return MODE_OK;
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +		return MODE_OK;
> +	default:
> +		MISSING_CASE(sink_format);
> +		return MODE_BAD;
> +	}
> +}
> +
>   static enum drm_mode_status
>   intel_hdmi_mode_valid(struct drm_connector *_connector,
>   		      const struct drm_display_mode *mode)
> @@ -2246,20 +2270,6 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>   }
>   
> -static enum intel_output_format
> -intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
> -		       struct intel_connector *connector,
> -		       bool ycbcr_420_output)
> -{
> -	if (!crtc_state->has_hdmi_sink)
> -		return INTEL_OUTPUT_FORMAT_RGB;
> -
> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
> -	else
> -		return INTEL_OUTPUT_FORMAT_RGB;
> -}
> -
>   static enum intel_output_format
>   intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2268,37 +2278,55 @@ intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
>   
>   static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
>   					    struct intel_crtc_state *crtc_state,
> -					    const struct drm_connector_state *conn_state,
> -					    bool respect_downstream_limits)
> +					    struct intel_connector *connector,
> +					    bool respect_downstream_limits,
> +					    enum intel_output_format sink_format)
>   {
> -	struct intel_display *display = to_intel_display(encoder);
> -	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	const struct drm_display_info *info = &connector->base.display_info;
> -	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
> -	int ret;
>   
> -	crtc_state->sink_format =
> -		intel_hdmi_sink_format(crtc_state, connector, ycbcr_420_only);
> -
> -	if (ycbcr_420_only && crtc_state->sink_format != INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		drm_dbg_kms(display->drm,
> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> -	}
> +	if (intel_hdmi_sink_format_valid(connector, adjusted_mode,
> +					 crtc_state->has_hdmi_sink, sink_format) != MODE_OK)
> +		return -EINVAL;
>   
> +	crtc_state->sink_format = sink_format;
>   	crtc_state->output_format = intel_hdmi_output_format(crtc_state);
> -	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
> -	if (ret) {
> -		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		    !crtc_state->has_hdmi_sink ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(info, adjusted_mode))
> -			return ret;
> -
> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -		crtc_state->output_format = intel_hdmi_output_format(crtc_state);
> -		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
> +
> +	return intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
> +}
> +
> +static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
> +				      struct intel_crtc_state *crtc_state,
> +				      const struct drm_connector_state *conn_state,
> +				      bool respect_downstream_limits)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	const struct drm_display_info *info = &connector->base.display_info;
> +	int ret;
> +
> +	if (drm_mode_is_420_only(info, adjusted_mode)) {
> +		ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
> +						       respect_downstream_limits,
> +						       INTEL_OUTPUT_FORMAT_YCBCR420);
> +
> +		if (ret) {
> +			drm_dbg_kms(display->drm,
> +				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
> +
> +			ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
> +							       respect_downstream_limits,
> +							       INTEL_OUTPUT_FORMAT_RGB);
> +		}
> +	} else {
> +		ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
> +						       respect_downstream_limits,
> +						       INTEL_OUTPUT_FORMAT_RGB);
> +
> +		if (ret && drm_mode_is_420_also(info, adjusted_mode))
> +			ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
> +							       respect_downstream_limits,
> +							       INTEL_OUTPUT_FORMAT_YCBCR420);
>   	}
>   
>   	return ret;
> @@ -2375,9 +2403,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>   	 * Try to respect downstream TMDS clock limits first, if
>   	 * that fails assume the user might know something we don't.
>   	 */
> -	ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, true);
> +	ret = intel_hdmi_compute_formats(encoder, pipe_config, conn_state, true);
>   	if (ret)
> -		ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, false);
> +		ret = intel_hdmi_compute_formats(encoder, pipe_config, conn_state, false);
>   	if (ret) {
>   		drm_dbg_kms(display->drm,
>   			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
