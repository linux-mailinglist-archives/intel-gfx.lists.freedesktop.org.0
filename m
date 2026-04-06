Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIF2OmFF02lrggcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:32:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A33D3A19A1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 07:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C3910E1D6;
	Mon,  6 Apr 2026 05:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ch/12UfE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6928C10E1D6;
 Mon,  6 Apr 2026 05:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775453532; x=1806989532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dY2O2U9kGxF7e7DULZs3PyYhI49DyA5k3Wj6T9YrWqc=;
 b=ch/12UfEEF9QnXXEDHO+Zzmj1e5NYjGTXPhQjKvn3cQYngFJnXQv2nIU
 uGYZyH3Q/+jdnH3m1sHnBh0SurQyfzCj1Z3qQkSWFKfVtMO1DwNZlGArj
 g1KAz5ENq5fl3paJreFARgIfAizNS5OPHRj+hW6nIX/bqynV3lEv6xRN+
 k8AO9IGLolHHH6QvDazmyX2Ix78wvmW8BQE+HKmiCAw1pfu69a3K5b0XB
 eZfPcEOm2xII/bEuvq1352dLpP5HgESuZcn3OGrnUgA7DJRPOhtoqQbRE
 ZEiFrlhl3WrMf5+XEcI9LC1oGcPjiFrXSrHvwltYV1R2b4Y/M5+Np1WKF A==;
X-CSE-ConnectionGUID: I00pU1oVTjSb/6n9WfQtxA==
X-CSE-MsgGUID: TloAyaQ9R9yWvkx7RMciJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11750"; a="76368722"
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="76368722"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:32:12 -0700
X-CSE-ConnectionGUID: Wkd8b/feSMGnXu+E8gYLvQ==
X-CSE-MsgGUID: MIWYZPz4TR6srM+eWH1s6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,163,1770624000"; d="scan'208";a="232193611"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2026 22:32:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:32:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 5 Apr 2026 22:32:12 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 5 Apr 2026 22:32:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Plcf8wIR9iRxmzriD4xUZmyEIGBBq/+BL0qJtc5AKDbi1M1XRa5eAxU+crNt84SkTz58bh8/j/j8+ge0+thpZK6F4NTMyWuAj1TLmoUIzOpGOjr4er+G1wQJEEYrhw/bnH7wx0wr/4/cQ310X2K4I3TfQAjqvhASUp+aDg0ZL/J8qD26pxrMSqQn7TJI/YhRHwq+vj5Reuz5g2cvkIjBRoJu0GtghP0HjNdc6yUqAhFXq49I4wooE3YO6cdGvcDnsHlzZx4lfEi46VibDwJVLmVm/QDYQPHM5ZeVIuRHJ1qSmdYO6ntw43rI0eiY2jhnOHi8xNn7QNY6yzK+cnbd9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wqCrYt6wIgR9E5LP9QOXnYE1cTHqtNNaIyWgM7JcBlo=;
 b=A8e7WK67/oW955mr6ymAbk17+lMrY1+68Sc3g79iWL2ltKu080V3GcG7lP1xBJT/OeFTlsi+iMZzujjg53qBPQS5ikZOsxa6uB4Zkk9ZspWYI2x0HaPlOrwS+nH/IF3rwhZBZfPusFEhWayTBCFFbKye3PxA5W9FLEJm4f0g7fjBq630fOe3AaQ5X0cQF1kV6Y1MOCpzE/cR+fonCaJ653RVStQLY6jZsQuQ9jahwoZfcDBYeCF7pRXSSMqL0AWJamZpLL7qC7/3ObHd/xb/VacgBZDkIKYCN0g39DeoCfc5Cty91PiOdWjdWWkhpbbIlvkPE7Vo2cL7ZedpK2c2SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Mon, 6 Apr
 2026 05:32:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 05:32:10 +0000
Message-ID: <8c705395-6400-44b6-b4f4-818a9a4056ea@intel.com>
Date: Mon, 6 Apr 2026 11:02:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] drm/i915/dp: Restructure the sink/output format
 selection
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 <intel-gfx@lists.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-5-ville.syrjala@linux.intel.com>
 <2479715.CQOukoFCf9@workhorse>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <2479715.CQOukoFCf9@workhorse>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0034.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6117:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f1f4104-8c72-489a-2834-08de939dd94c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: xEYZyKmObzHGVv7g6N3z2jAeDSCSEjjOtnqggCaum4A/oxZNgDhamthTwaJrQlIUf/lkzpbU8UCdwvuPYDRaQZKi15CqYZJL9B9lwgGahaQYicqRItqRPmmsNwiOBLyUOrghNNgKS+p7yzAH27Dm/j4H80XPo5h7ZhffRaXdixYN8btARTDnGKdkkzoqfNqUq//6GXzcHJnuz+i5HtaYTWCUdISMmQuNoCKDbBIhLGRsEAJjgVjoVfCDl3Oy+YZJcOKFJpg5IJbFSe9COiautNheHTt7ssEP9v5tKQD1GCIFA6afY3EPvXyP8cEIKITM40o1IZnb9CDy3NNQUbOhl6YifcfrdeSjbNorG2+LJvW1SbaEfkPnSGUz/dTNmiq82z2kplucvjY3v7v0tFlx/8aA7imOwRv3Q5BevkJuVlfQxdEIlBmhRL05ItzbCXI2lptXCqkf8s+yIpkefjGBMZ8WJkHmJ55Jaz1YEXfS5anyY3ZhAlwnHFPiJ7zZtgs+qpd2coT3w1j7X8jBCBbf5JvYfmAu5J/hJWkyXroUqbKboWn3ief1ClWAqenjQNdoO6pLnbO/XbEJncvBPYyxhmP1Czv+MU3CiYvBC7a/tyuJKXOBKK3qf5wxVqY94yud0iGbeePdETNSOUlFS03+Qt3RbQDUn6+EFXZJOrK8mjrSM01tfeKbIrbRMRiiJoIaCkbxWvQgPfRVIbfQsUY+p6YcC9nb8wothQPQMmg+t5I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnVxTUxFdzBkRnlrL0FhdmRNdk1iYVNTSVphM3lzWmNZMjJoNVlraGNkMlBl?=
 =?utf-8?B?WUtRaURMU3NESEJGMXFvRy9XVG9RL3Q1eWMzS3pnRWxaU0pUYW5nT2ZIWEZU?=
 =?utf-8?B?c3hjVmZtMktZZ0JFc1MyT2NBaGxvVllSQWZ4NWJ3M290RU1uMEJ5ZGtsOFUw?=
 =?utf-8?B?UU00SU0ySnIzempjSGpNOUplYnh2Um1kS281RmFzN0N4MDZkTDlvNHFCT2po?=
 =?utf-8?B?bFBHQ2gwWUdMMHBsQnl6TjljVC84c3pjZ3dzN0JQUU93MTY5UXRuQTdqeTYr?=
 =?utf-8?B?d2pzVEhueDNuQ2tnVEFLZm02K1owN0RSMGkwaHJMRERvNkFBYU5vZmdtUlFp?=
 =?utf-8?B?eTBEa0ZUVEd3ZTVBK2R2d1BPTTZ0YWt6Z0JPUWovMXZGMzJXa3o2MkJmK1Iw?=
 =?utf-8?B?TG1JNlozc2JNZ01VcFJZR0JsK1h1d0VneUdvSXd1dUVBVmF2a3MxVGdXYWc2?=
 =?utf-8?B?Qnc5ZVNUQWN6bXZTRmZXVTdNSDJ6K1g3c2lvS2cyMXBUNjBWY1VPVjg1YVo2?=
 =?utf-8?B?cnM5ZTFZVUs0eFZJUUhUanM2VEVnUTI4Ti8xYW9QT2VmRm1ZaGlqVlRHSmtp?=
 =?utf-8?B?ajF1SGdIYzZOOGN4Z0lUYnFkMnVuWUF6K05lY2dVeEVnL0N0Kzh3ZXBaWXcw?=
 =?utf-8?B?bmdRaEs5Y2hLKzQ2UnZmdHQrT1JNcWJGMTZzenhWU1YzVzN2YlJ4NVlUemx4?=
 =?utf-8?B?RWpXK21kekd6REZQWi9OcnNHR2dNRERIb0lRQThNekNCbDEzVmljUjdPYUdx?=
 =?utf-8?B?djBQd2didjd1ZWhxeTJETXB0Ukh4dzdMN1kxdVlvdTdBTm8xUWVqd2JiUlJs?=
 =?utf-8?B?Tkd1L3MvMFA2OENYTmVYVVBZMHAxcWNxR1BVM0RlMDMzUXFHY0ZIOTkwTGt1?=
 =?utf-8?B?cE16OEEraHJOeDAxdXFxTHZnZmlVRWU4NDM1ZmdDZmpxVHNpVTdsRjVYMVhQ?=
 =?utf-8?B?Sjh6SjBkWEVZUnQwVEZGbTVJL0EzTUY4MkRuSGVVVkYzaEE2aDRxVm1FaXdH?=
 =?utf-8?B?eHdyMFo1a0xaM3JXZmhCeFZkeUF4SEY5dzVBb1F1clFQTU5mMnhldzZxNzlU?=
 =?utf-8?B?RFI2eXJPMGZhSXZ1RjNnRngxUTQ4dXRvUHVMZHhMRGtmbUpsMFpHN3VzRVl1?=
 =?utf-8?B?MGE2enJQZWNVeFBWbWJxMUQxamxiSFJCSm5tNzZFc2xkeHpwc0s4ZlNJd3RP?=
 =?utf-8?B?UW5BZTVoWGxZdlgwTHQ5TS9mVlIzV2VUcDd4akp5VHN4VG41VDF2U2duTU1s?=
 =?utf-8?B?QkZDNmdva1ZydVJDY3MyWjJjYndVUWFIbGovWU53WFZ6OTRuOEg2M2ZmdWJJ?=
 =?utf-8?B?a2dEaWhzTTdmZjNNWjJWcTFMM0ZkNlI5MmFrcnplcElSS21xb1VtUDB1Y3o3?=
 =?utf-8?B?NjlEQytVK1VhWUhIelNxYUxZYjZFVkNJeSt4ZDBSbllRdC9SUEwreHZCN2Zv?=
 =?utf-8?B?OTlFbWw2VG4rRGExQUlYbWRueVI0cE56KzhCTlM4bG4vald0NzNGK3ZOd0ti?=
 =?utf-8?B?MzlFS3dUM1o1cXpoL2RmK1JVd1J3eDFOTkVhQ0xJMXNBdGZvaXhEcUFNWmo3?=
 =?utf-8?B?ZDNFM3FVYjdDOGtBNXROSExpSDFsZzNmaGRxRTN4Q0h5Y2NOaVdPazJnN2Vv?=
 =?utf-8?B?K0ZnTHBsVVVGNmZFcCtQSVU4WU5WcmNHT1I2RkZ0N2lTMUFaZWYxWFVEK2dU?=
 =?utf-8?B?a3BlQ2dPbmVxV1lWZGdwL0FHOFhJM0daU0hEWm1JbEkrQ2hFWkptdXlEQnpG?=
 =?utf-8?B?cEI5ZVlqVnpvenRJcGlkUFpveUI0U1JqV1YwZ0plN2xqd3ZINnNlR3I1eEJB?=
 =?utf-8?B?VkhHMEJWU0VJWlNJYTlLY3puQ0x3YnRLUXRsQStESkZjMXRjVTJETExkN3FF?=
 =?utf-8?B?OTYrTnJzdFdSWlZHNUdYdjRNL00vWFlmUXdML2k0cWNlaEZjMUhxZzVuc1dD?=
 =?utf-8?B?UTlaUk8rMDdiSXdhTlFBTlhKdnhWeEFsOEt3WVdvWjc5RkRwbm05NjBwNkVq?=
 =?utf-8?B?QlpFQlRRQWJ5VGJMY0hwT25tYUVDbmNHL2tEdWJvUzY0bml5L09lRkVvQ3Ny?=
 =?utf-8?B?WGRuNWxtL0ZraE5OZCs5NXN1aGEvNFplUjF2SWJKVkpUM005cjRvZTA5SnpL?=
 =?utf-8?B?VzVPZkw2Y200QjBTTW5hZ1JsTjliZTdYRXUzRSs3NloraE9NaUk4VGVibENq?=
 =?utf-8?B?bGMrQmdVajFvaEJlZi9US3ZvVjJVc01iUEpwYVExeTRHdmt0dmcyS1FXbExo?=
 =?utf-8?B?M1M4Y2RIZ0NLSGphWUVlSyttWDBJVGc3ZHZBMDZoa1dPb3VpdWpEWWlUUlF5?=
 =?utf-8?B?S3d3WFF6Z3FEUWM3WnZMbWxxQWc1Y0dYaEVYWE9LcHB4bFZ2anNuSzBHL0wr?=
 =?utf-8?Q?6nHi1eXW8VrP2dpA=3D?=
X-Exchange-RoutingPolicyChecked: GqXXoe7JmkDybqS3PPQx+rqHLlKicoL66hofgCbWmiY9A3Uo3MNxBX0zaMw2AdvNN6szJ9Eyzmnsd9m5UBY8kHUGpvuGjqpFJWyYACNfNzErik1fuPCuyjeD6UIY7AsI7WhKLJlO3OsBlO9Ph+9cXJD0zWK4+OAgZ1n5bfE+y5hBXliTtmOII4dGFYIsQpK7KV4WuBMlgWR10A8qLiu/PU54wC0wpFBPwOfGXJwfhGAyPCuNoDz7k1ghxMtPyR9B8KvWupBlOs1SpbxaQffDSQpHaZ0cAKqUcQfhW30IzmxnY903vRirrGa8GtUFww+5tWDY68WmiRxewIN/FrPAow==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f1f4104-8c72-489a-2834-08de939dd94c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2026 05:32:10.5742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oO+0itGU/r57q5cjdBRRN+teVsBgkHN3JFQD03sfp/WJcF/oUyNiVwzA1REQwXunUQaqQqeyUAGk48UxrSjMCKiQYRA4oTyV72NLCgXcv4Y=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 4A33D3A19A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/31/2026 7:05 PM, Nicolas Frattaroli wrote:
> On Tuesday, 31 March 2026 01:53:34 Central European Summer Time Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> Restructure intel_dp_compute_output_format() to resemble the new
>> intel_hdmi_compute_output_formats().
>>
>> Again, we basically have two main code paths:
>> - YCbCr 4:2:0 only modes
>> - everything else including YCbCr 4:2:0 also modes
>>
>> Take the exact same approach with the DP code, making the
>> format selection much less convoluted.
>>
>> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 98 +++++++++++++++++--------
>>   1 file changed, 69 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4955bd8b11d7..230b45acde29 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1371,6 +1371,28 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>>   	return MODE_OK;
>>   }
>>   
>> +static enum drm_mode_status
>> +intel_dp_sink_format_valid(struct intel_connector *connector,
>> +			   const struct drm_display_mode *mode,
>> +			   enum intel_output_format sink_format)
>> +{
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +
>> +	switch (sink_format) {
>> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
>> +		if (!connector->base.ycbcr_420_allowed ||
>> +		    !drm_mode_is_420(info, mode))
>> +			return MODE_NO_420;
>> +
>> +		return MODE_OK;
>> +	case INTEL_OUTPUT_FORMAT_RGB:
>> +		return MODE_OK;
>> +	default:
>> +		MISSING_CASE(sink_format);
>> +		return MODE_BAD;
>> +	}
>> +}
>> +
> I think here we'll want another
> ---
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e23162fc3f8b..a1dc089c54f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1373,6 +1373,11 @@ intel_dp_sink_format_valid(struct intel_connector *connector,
>   
>                  return MODE_OK;
>          case INTEL_OUTPUT_FORMAT_RGB:
> +               return MODE_OK;
> +       case INTEL_OUTPUT_FORMAT_YCBCR444:
> +               if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444)))
> +                       return MODE_BAD;
> +
>                  return MODE_OK;
>          default:
>                  MISSING_CASE(sink_format);
> ---
>
> though this time, no bpc related changes. With that fixed, I get
> YCbCr444 at 10bpc as well as 8bpc. Can't test 4:2:0 for what appears
> to be unrelated userspace reasons, though the KMS property's enum
> value is exposed properly.


Hmm... this alone should not be sufficient till we actually have code to 
try with YCBCR444 in intel_dp_compute_formats().


>
>>   int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>>   {
>>   	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
>> @@ -3330,41 +3352,59 @@ static int
>>   intel_dp_compute_output_format(struct intel_encoder *encoder,
>>   			       struct intel_crtc_state *crtc_state,
>>   			       struct drm_connector_state *conn_state,
>> -			       bool respect_downstream_limits)
>> +			       bool respect_downstream_limits,
>> +			       enum intel_output_format sink_format)
>>   {
>> -	struct intel_display *display = to_intel_display(encoder);
>>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>> -	const struct drm_display_info *info = &connector->base.display_info;
>>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> -	bool ycbcr_420_only;
>> -	int ret;
>>   
>> -	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>> -
>> -	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>> -		drm_dbg_kms(display->drm,
>> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> -	} else {
>> -		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
>> -	}
>> +	if (intel_dp_sink_format_valid(connector, adjusted_mode,
>> +				       sink_format) != MODE_OK)
>> +		return -EINVAL;
>>   
>> +	crtc_state->sink_format = sink_format;
>>   	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
>>   
>> -	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>> -					   respect_downstream_limits);
>> -	if (ret) {
>> -		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>> -		    !connector->base.ycbcr_420_allowed ||
>> -		    !drm_mode_is_420_also(info, adjusted_mode))
>> -			return ret;
>> -
>> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> -		crtc_state->output_format = intel_dp_output_format(connector,
>> -								   crtc_state->sink_format);
>> -		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>> -						   respect_downstream_limits);
>> +	return intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>> +					    respect_downstream_limits);
> With the removal of intel_dp_sink_format in this function, I wonder
> if we can get rid of it entirely now. It's only called in
> intel_dp_mode_min_link_bpp_x16, which seems to be used for bandwidth
> limitation calculations (where YCbCr444 vs RGB444 doesn't matter, so
> we're fine in that regard).

I agree we can remove intel_dp_sink_format() but IMO it should be after 
patch#7 where we are validating sink format for mode valid.

I guess, with that change, intel_dp_mode_min_link_bpp_x16() can be 
passed the sink_format directly since we have already validated that.


Regards,

Ankit


>
> Judging by the "min" in the function name, I assume it should be
> using INTEL_OUTPUT_FORMAT_YCBCR420 in drm_mode_is_420_also cases,
> whereas right now it only gets this from intel_dp_sink_format if
> the mode is drm_mode_is_420_only. So I think removing
> intel_dp_sink_format entirely as a follow-up, and folding a
> corrected minimum bandwidth computation that uses 420 if
> drm_mode_is_420 into intel_dp_mode_min_link_bpp_x16 would make
> sense, unless I'm totally misunderstanding the code here.
>
>> +}
>> +
>> +static int
>> +intel_dp_compute_formats(struct intel_encoder *encoder,
>> +			 struct intel_crtc_state *crtc_state,
>> +			 struct drm_connector_state *conn_state,
>> +			 bool respect_downstream_limits)
>> +{
>> +	struct intel_display *display = to_intel_display(encoder);
>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> +	struct intel_connector *connector = intel_dp->attached_connector;
>> +	const struct drm_display_info *info = &connector->base.display_info;
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int ret;
>> +
>> +	if (drm_mode_is_420_only(info, adjusted_mode)) {
>> +		ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
>> +						     respect_downstream_limits,
>> +						     INTEL_OUTPUT_FORMAT_YCBCR420);
>> +
>> +		if (ret) {
>> +			drm_dbg_kms(display->drm,
>> +				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>> +
>> +			ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
>> +							     respect_downstream_limits,
>> +							     INTEL_OUTPUT_FORMAT_RGB);
>> +		}
>> +	} else {
>> +		ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
>> +						     respect_downstream_limits,
>> +						     INTEL_OUTPUT_FORMAT_RGB);
>> +
>> +		if (ret && drm_mode_is_420_also(info, adjusted_mode))
>> +			ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
>> +							     respect_downstream_limits,
>> +							     INTEL_OUTPUT_FORMAT_YCBCR420);
>>   	}
>>   
>>   	return ret;
>> @@ -3539,9 +3579,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   	 * Try to respect downstream TMDS clock limits first, if
>>   	 * that fails assume the user might know something we don't.
>>   	 */
>> -	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
>> +	ret = intel_dp_compute_formats(encoder, pipe_config, conn_state, true);
>>   	if (ret)
>> -		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
>> +		ret = intel_dp_compute_formats(encoder, pipe_config, conn_state, false);
>>   	if (ret)
>>   		return ret;
>>   
>>
>
>
>
