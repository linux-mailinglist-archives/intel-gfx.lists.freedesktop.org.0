Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAZLDxC5FWrKYQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 17:15:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7605F5D87A2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 17:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C93E10E4D6;
	Tue, 26 May 2026 15:15:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFsthLFm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3640210E20C;
 Tue, 26 May 2026 15:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779808523; x=1811344523;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1uKEws9SSLw6BDux0A9BEnRkASq6Teg2bVf/XTsHAHI=;
 b=gFsthLFmHv1ZbhtMNvLd/1yMIL/WNskv71oIjh69pDyc3fRcqgjKXpC4
 8bCJhcnVmhDZx1E+r22oCzNIEJlVSyj529RSo/FZqdiDLrrpejAsWYlK1
 Qzb0Z3Q0AXFmZFLIbh075g4FwUnYyZHIUt3m4qoErhvy2KTZXOIVSwt7R
 SPkrUd40Fn0X32BfzJ/UTUrkDeh1cBYf4G4RIE2GpcD58cuqkovR4R8YH
 ihWbb+Y9wMJYsC4LgdNoMAdkwAkHuzqUSBf+Rbblpc/8RwNmWaWN9fD9Z
 UwoYQ4xNlJAWyHCBNyIuBBz/RINkH4MxQSnXVF6Gn8QOhEuYapyHiaZJ+ w==;
X-CSE-ConnectionGUID: d59OSPYAQASS/PqFIrGcVA==
X-CSE-MsgGUID: wSKResvcR3675GHNOLj/cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="79770790"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="79770790"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 08:15:23 -0700
X-CSE-ConnectionGUID: vJ49JScAQnOQ+DlT/epFZA==
X-CSE-MsgGUID: LR87sP8DRVOmDiLXy5IH5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="239345016"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 08:15:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 08:15:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 08:15:22 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 08:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SPnWD2bo/qOIRVk+RU++EQ+DD87a7OjKsJ+vnF6dDlJwAnqfWEkZqAKf7OtkeAtLBwdyAl6W/SQsPZvrHMawQn59x7ze4+bOmxsoh3atvflEdd9dJvi9RsFWneizjw/yzRX+pwjucDbaAhVlKPx/nGQxCzze3LdofrNdp5LS96YMsuKBg41F38PP3CVysvkkQ/FNhHchpOCuPBo/h1HwINVjq1PfZWpVpkSWp0ZDt/rPKimHl8aPp9GLq/5lbUHcZBYDtfCaJsxFbUNI9SksSkQr599WMNtPX8yI5FQXur4aabfj5AunbKVSxMS1y68DoPwG5LOy4Dcs/Xccx0g5hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVcR3FwL316fx4otMvPLiMjtgNoR94vCfhrixhTE1qE=;
 b=bOV3anVJg0NAjotfaTB3DlnClHof6bd36yL20htRdGFnt2BfivyfXCqhnOIklpMM0jK98UYev+vCumpvzjlGRzuO+87Pm2pJ9Fh4m0ejuFtC6xEJc4LL2PIqOsdJtkCtEXT+FWAGcbk2N6jzwhEa8NklXB8WCXJWyH7yNh5BhuULTXul8rEyLYZj2GDRhNBKGx8bbVFlWAEV7KyDKrPqxaxCC2+rKTafV4G6fOC4FuJDC4HKH5bKAlW9FDikzSyaPPgxTxpvw3IPzHwwY020rXIi+XcWLBbDdbL+uCvbqAxbsmccEwnbrJgWLW7GJibjsM4aqausAoZaTvIKEILaAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN4PR11MB9941.namprd11.prod.outlook.com (2603:10b6:806:4ff::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Tue, 26 May
 2026 15:15:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0048.019; Tue, 26 May 2026
 15:15:18 +0000
Message-ID: <f041b460-8441-4882-956a-af32d0204015@intel.com>
Date: Tue, 26 May 2026 20:45:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] drm/i915/dp: Enable AS SDP whenever VRR is possible
 or PR !async
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260525052235.560741-11-ankit.k.nautiyal@intel.com>
 <20260526064309.585054-1-ankit.k.nautiyal@intel.com>
 <ahWogS4DDNpXFj4U@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ahWogS4DDNpXFj4U@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0247.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:223::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN4PR11MB9941:EE_
X-MS-Office365-Filtering-Correlation-Id: 23a918ee-3b71-41f7-2fdb-08debb3998ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003|4143699003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: 4HuBAYx9OKTDtpQQhn0/YK4j/fYR5ElbqnfA2TDwmlm55dU8x8WeLSEMMrhMXG1nHuQO2j0ftgX8TCrikj0pYhR2DaYo/Jql6+NmOT7R7lOoDxaGJx5ntv/g17kDTKghW4uLmastOh8N9P9DoJQ25NKowljb5zUD6mTHr28lGUwLggPUNEP55OJ9YJMZ5Fih/ZeWzbtIjGpViXCEsoGtR0rsf5WNkubo1j5kIw09xR3158zlyKiCght8IcTlN3c6zflvexT3a8DFbqxvfukTk1a5cioVNn0l2vsut/Q2pA31rmJoSG6ZyTQlg+7t6VFPqILDPRfyuw4++aYOwWMZgwU+I+I2jDTa//W4gXvhbKle02AhuXUKfRaJY0/QxuWlyukEZgH+cWEeKmJPjLoQ5X5KVvvGOcbZe0Y/rqr8l5C4IQY2H0jSB1Msd0OFB4X2YvgYCDViW1Pk3Gq53VY//qesJ1029BasyZbSQyskKJLxfci3MVnMEhQq2JkrFub5Lsv4StXYV39pzOjEnqYukgdir7GBp5K0DxpAcyDNFhdmUhFoehrieiPwXsKEab+USfA/yZV+ki9sheryKrVX83Dm/3Jahfaoa33MY6tWTedUlZoKlXu2ZS5lzeHMUYptHDIlQeeZbDutEL9bAXtJzD9wRjrI2LqutW65ldSVunCDNX/eBRJE+NuUG4iSGMthJk3yRMBdsb6F6zlCEC3NCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2kydTVNMGltYnlsVThiQVk1c3g1Vm4zQXZVV1RXVzJNb3AxU0J3cExCY1Qv?=
 =?utf-8?B?aTN0YXZjSnZ2QkZWUDJSNnE5dHJwZy9kSmNaelcyNkZtbWF5VzJSZjYwRTdU?=
 =?utf-8?B?VDloS29vOVF6YVNTT2NKWWlPWHBvbHdha2dnRmV6c25DSHNyTm5YbXhncUsr?=
 =?utf-8?B?TXZ4YTBCR0l1OUkvM1p6MzRLN2k0WWNxSHJ4b0YrRmtKTkNIVGYrdy9aamVw?=
 =?utf-8?B?cmd6MHBzMG9VbnBNWjRySkVJZ1NCRi82NHFSMXFGUE5JSGdXOVRtM0hLS0hY?=
 =?utf-8?B?OXBsQkhZT3kzRzNnWkhTRGNzTkhaai9hQ2RKZnRRQVQ0d2xHMGJ5ZFBYRTJm?=
 =?utf-8?B?RVU5N00zK1ZVYnc4aElZYmtTTDN6QTYzdHBUSzZsY1h2Z0dwaFdGUm5CK0dI?=
 =?utf-8?B?ODR0ZFM2ZllJZXRKd290WWpIb3AwMm5kbDQzSElHZTh2ZHYwc25EUkFjVWxX?=
 =?utf-8?B?TlI3RE5aTE5ZRERSZXRPdlY3REhSYUQ4Ly9WNldRcGtWbVhZdHZiNyt2dDls?=
 =?utf-8?B?MnQyL3lyWnJNRFN1SytMemlIM1k1RERiRk1OMnJmMGlDczVHd096UWRSQ0hr?=
 =?utf-8?B?YmEvWDdPcjlwVWl0OXd1MmI3dkwzVnZTMm4xWnlNNi9IdlI3d1c2QktzTWwx?=
 =?utf-8?B?SEN0c2FLM2x0RFJPUnlvbmNueEV4MVdtS0MvZWxyR3pCazRJQTg4RlFjczNn?=
 =?utf-8?B?N040L2pvRG1ianc4RFZVSm5iSm5IeXY0dVhwblFHY2l3NTJmcHNNQmIzNkFK?=
 =?utf-8?B?WFpJM1QvdFV0dmdyeWtiZFVrbFBjVlpHWURBM3dmOW53L3VRRytCeXJkWFJ0?=
 =?utf-8?B?am8zb1JnM1d3LzBKNUpYUmh5b0s4N05ycGtDTWdVMGJYUG9vbXo4VDB3d0sz?=
 =?utf-8?B?QzF3OFRzVmhkZ3FSZU9EUm5vSFZUdVZVek5qa0lWTkdiQXNULys5SEVzOHVq?=
 =?utf-8?B?OUZKY0NFY1BQcHFnZ01wOUs5RW1GdWlsSmMvY0FpM1IyakFiSTZoVFIxU3Ar?=
 =?utf-8?B?MEYzNXZiN3JXS2dsa1BpMTRpZDBDVGNrRmdYNjQxb25mbms4dU9RTEMzRzJ2?=
 =?utf-8?B?RDNML2R5NGxobHdCTFBrWnBjcDA2bE95NUdpQXRKNEhBMVYrTFFQbUdISW5L?=
 =?utf-8?B?YnErcUpiQW5GUjNEN1pQeDgwN08rS3JwT2d5QUVhbldxK2VkNTQ3OTArbVB1?=
 =?utf-8?B?dnpsaGZFM09hNDBVTkNTWkJ4LzRwMlcwVzNzbzhZQUJZOHBsbHBPamxmeFpZ?=
 =?utf-8?B?Nk5TeHhmWU8wdFcwV3JVc2tUVUozWml5eXBNWHpBQUY3WnAyVGErWkVqblJp?=
 =?utf-8?B?L1Bqb1JpbXdFNmZKR0NreDVOQUtFMkFGZGphcGRydyt3dEVzVXd1NFQ1cktl?=
 =?utf-8?B?eWxJc0RzM3hZQ0V3UkhNMTRzT0ZLcDZJeXFvZi9udXRDMUdkelh1UU1RUWpj?=
 =?utf-8?B?ZjR1YkxVamxxRFB4TmRlTmZKLzhUMlRYZEg0MmlnRkRVQkZrai9kTUdFZzlz?=
 =?utf-8?B?eEhrWTBDNUo3UHlnRWMzN1M2c1pjUVRRR3pFb3FZeCtiVXdLVGJabG5HRFkr?=
 =?utf-8?B?TFdVUmd1SXFnaUxVQzZ1eDRTdG9OR3BBWHZzbDFydURFQ3B2bXBtYURJQXNs?=
 =?utf-8?B?OGJSZTBrU1QxN2JHSVc2cXl3SzhsSUZBYUEvTmRsYWo1MGRwc2V6VG5wNU9Y?=
 =?utf-8?B?R2FJL0lWUG5XRnpZN1lveTBWZWlPaW5tY05HM2ZyRHRXMk9OZUN3anZ4djJF?=
 =?utf-8?B?VW1aSzBHMnY5K3R3VlFpYXdnR0NBc2hocjR6cHdsNXcrVm00QUdjMEYwSWk2?=
 =?utf-8?B?NzhqNkxRV1J3SVdpeW1ZbU5aUkNhYXF3ZE5OdEpNOUFpMVFRRUJyT0RDMXk3?=
 =?utf-8?B?NW1jcHlxZk5nckF2MWxhdmpZWmhTdnYzdldDRERLcS9Cck82QnEwR0hEd1hz?=
 =?utf-8?B?TjZ2ek0zazVMb3cwNFl4Wjh3L3FteDFCaW5yNk03bDFHMjY2RjB2L1lxVmJN?=
 =?utf-8?B?VGJUQXpsSm5mcWJsaEJmcnh6cHRNcXZFZS9oRkpOWllidEVaUmxZSHJzTURN?=
 =?utf-8?B?OVNlMytXU2drdVhFWFpacllGZUs1RnI1VGJIUDc0SXFJREtLcHVQd1pPUUxl?=
 =?utf-8?B?ZlRjbGcrMTFNVHExZnI0Skx3QkJZRWd2MVZ1dDlEUk5SaGxnV1VIVWs5eGNO?=
 =?utf-8?B?Y0Q1RllPOUxoa1BLYUhpMElPK2UzSmZSdFJZelZwUjZCTXdVMjJ3cDRSeHFy?=
 =?utf-8?B?SXB2Vm11Q2dlaUZZcm9wK2hHbmpWS3l6eGlVcEhFNTZtdEhvRDJoT0pyQXc3?=
 =?utf-8?B?bHZ5cEsyQW1ENDVId0dCRTVGZjR6N2FzMW5BaUd3MkF0Q3oyaVJqS1duQ1pO?=
 =?utf-8?Q?lg/t+gkSl07i7Ucg=3D?=
X-Exchange-RoutingPolicyChecked: EOflwAVDzjQIGLk7a10OzyFeoe7H3psqPHnUCAS8Hdm0vCZJ0GY/Cw5jRydxmSRzA81oQGT2KWFBFjFZHL+/6zevBBBtE8d4TtmQe0YJmRebxMV5GeZbsdN/BDVDCKsm+9Manb6tVDaJrGvRJJHqiKAICDlnZlaXJ7mMwxGm6/+YkudkqH+7+FWnyjWZsPl8D519pcYik8l5wfyXuu23NUS/fZpVGHXs3Q4jvXynIqhXjNecICpoOFUxOw9QXUrocga3rftyuIPPs48N5qWd6L73wJEB+QpUwKpAxFu4zdXkMCNqGMm6zCiylZZAnGNWques7l+jeE+9178el4y2nQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a918ee-3b71-41f7-2fdb-08debb3998ca
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2026 15:15:18.8230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZtfYVwfVbyypkN1pYKbinPh2e8QYD8BLC5VIu+/jDCsSzHVYA+m2S4f5yvEHa0aNPM6dN1W4tZdzzVxNsmHDIIFm2twQr3rgaBjc9GIqe9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR11MB9941
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
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7605F5D87A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/26/2026 7:34 PM, Ville Syrjälä wrote:
> On Tue, May 26, 2026 at 12:13:09PM +0530, Ankit Nautiyal wrote:
>> Currently AS SDP is only configured when VRR is enabled.
>> With optimized guardband, we also need to account for wakeup time and other
>> relevant details that depend on the AS SDP position whenever AS SDP is
>> enabled. If a feature enabling AS SDP gets turned on later (after modeset),
>> the guardband might not be sufficient and may need to increase, triggering
>> a full modeset.
>>
>> Additionally, for Panel Replay with Aux-less ALPM where the sink does
>> not support asynchronous video timing in PR active, the source must
>> keep transmitting Adaptive-Sync SDPs while PR is active.
>>
>> So, always send AS SDP whenever there is a possibility to use it for VRR
>> OR for Panel Replay for synchronization.
>>
>> v2: Check if AS SDP can be used for synchronization for VRR or PR. (Ville)
>> v3: Use intel_psr_needs_alpm_aux_less() instead of
>>      intel_alpm_is_alpm_aux_less() to avoid including the LOBF case. (Ville)
>>      Modify the commit message and subject.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index a3aa0dadf0e1..87d7857fbafa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3181,7 +3181,11 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>>   	if (drm_dp_is_branch(intel_dp->dpcd))
>>   		return false;
>>   
>> -	return crtc_state->vrr.enable;
>> +	if (intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
> That depends on stuff computed by intel_psr_compute_config() but
> currently that is called after intel_dp_compute_as_sdp() (which
> is where intel_dp_needs_as_sdp() gets called). I can't immediately
> see any other dependencies between those two functions so looks
> like we could just reorder the calls.

Ohh yes, I had the patch for this, somehow got missed :

https://lore.kernel.org/intel-gfx/20260223134431.1639308-8-ankit.k.nautiyal@intel.com/

I will re-order and send again.

Thanks for catching this.


Regards,

Ankit

>
>> +	    !intel_psr_pr_async_video_timing_supported(intel_dp))
>> +		return true;
>> +
>> +	return intel_vrr_possible(crtc_state);
>>   }
>>   
>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
