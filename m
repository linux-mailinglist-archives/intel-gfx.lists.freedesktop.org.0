Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAGAMyJ1y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:17:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669EF364F73
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E399E10E872;
	Tue, 31 Mar 2026 07:17:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xe7AFebz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6C810E872;
 Tue, 31 Mar 2026 07:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941472; x=1806477472;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OTqtxr8o02J14+zDzLItoJCajvVH9M1E4KrwpzJcdRk=;
 b=Xe7AFebz8DJfLT3zhJCsMIhuBmY8+O3dlwjvOdS0jgEAI/4anaMFvC66
 CklMEVjj+C0du4EABeho+EiDUcmB3s910/zjHg9sUMg8XFbqvCraKAR96
 75NoAlWQjGr+gOJg2xZKg9elRAwAV1kodbK8TDXlJq66224gTDXzdCHty
 UhcIDN9CsuYWGhUru6XyDomrTlyN9qN8NdwPTxMmWcOC11laTEGU2qxmO
 +eoYatSA9yGC6ftMssNfrQALD0aquzII7erV9rDJyKdn+MGaATQaq2FGl
 Z0U3JypVeLzLL5uPzJxPfzCw43WS6BdKJi0DI1fnr3DHbSxhoU0ExK2eC Q==;
X-CSE-ConnectionGUID: IhdeXhHtQGS1LpmYtq+1gw==
X-CSE-MsgGUID: 82f71KFXQQK/zliFBfOSYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="78537800"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="78537800"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:17:52 -0700
X-CSE-ConnectionGUID: aB+w+sIZTiCPkl4SC9xe5g==
X-CSE-MsgGUID: FYdUPRTgTw2L1Pz0kt9CiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="225453671"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:17:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:17:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:17:51 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:17:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gPHJksFzUMnmVFLr1gItmHXA80vIYA8YBa0VrQSAeqHxJ3sO/6Uwsnq1j3JSwcHDTd/X34tUr4o96GKE+SwZRvBWLFxhy41V1hwryNsL8wcZBqwBfp77kcOYBrIGPqJ+WJAKcE4ukqKakY9U2OZNShetZVXGhI9be/J0kjfj7Zezp+C5CzmW5pqNovRDD6ekWB7hFZyehgWELa/vftNoZ30jxbiMcdf08CcWGSFTXd3hRjo7opOxnZVEaVZ4daZ/e7Q2KnKlE65AONMjg2W2lDPU2XhbNMW104t5ehHhn7V5nAIezjXaMZ+spkpjMuQchJ5L42jtT0OuzmtkuWbB0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDX8zcCaHT+cCLawHKwKSbpxCJu6ZtxqStMM82Keq7Y=;
 b=mI10mMjiAOt3HDsTZFxoW0Odp6UeR5JdOgJkL2xvgL6XjEACp5l65THRYiR21DU61iVTNYsfOYYbjAMBisBAaLGiJUPBmrNd6V5ttoOdFNMKFEO2lAaMy9fsKOYWl5NUpiUgK58vCa0gXvyvh8XI8BZpbeIbBCVB0kD8PKJScbM7VB3IvRz0PGxBRG3DOrK2nuJjwOd6hEw6mhuulrccak4jjC1SNsSqmu9NqgqMROh52GG49f/Wcz6exAiJELW2CSSSegszdELIuB6aoPwyiZRmC6zOifNvW+StpQCGtOaz7bJh+9nTM1J/T3RZKAeM2TKLv6Hp/jjZdn2F9sevgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 07:17:46 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.015; Tue, 31 Mar 2026
 07:17:46 +0000
Message-ID: <c0fcda02-2bf6-4ad1-b97e-7a3f7bd58fa0@intel.com>
Date: Tue, 31 Mar 2026 12:47:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 21/26] drm/i915/writeback: Configure WD_SURF register
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-22-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-22-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::6) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 047b7282-763f-4914-0c4b-08de8ef59a36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: /uLPuzDMCdxUHW4VILX0WMjAMqbuFq2353uYVObqUoRXNyp9b26d3RTyHQwMY5WgNUAlOniwTHijANzyH8egXJS3jRgWs4nABlFo49u30S0G1uf0vAlKP0nP8NSNBwye3ndV+FAscZIhJ0U+DnH6w3rShZ5WEjya+Svd8RX4PaF0lS+gUuEk0ACNbaYZ4/CpG37llcM6wXJtmvRBX3+J5mTG/08jrZWPE7iuEmIiIavGTkVNSdssO4pKL93znQrT8I9hsgRdysh1tsqpb97MlBsB4EdTexp5prUgf1vRrwBP8piEGuJBh5anoxK4ZljZTMIRzCBWQUYw1tPNr20XEiQgxhtihsWv4oCsWAUo3Pxc8zvVLG4mYpTqYRQdZ7JIOeW2CKjVTREG8aeWJ31JojyLIlZ73tdq5h4v2EaXkrxFPnXozlSL3aYJdAJ8S9U4m9+aDxf/yLioEpZlVnromvBHr3m7lG1uH1I3+2Wrb2+KLfUILayZR5d18vncej2tAYXc+ti8tJZdEMwDDU0oc3AK6+3Jc3rTJbrWcD4y127nx4FJ+rThs1jHaspsAbBGKR1cyrGp7yRYDGf5J6ModCU34htXP7QIL6fVMjBFRHVsTaAXJ2qwuhdANLj4p6jx8grOjN8Y3gIC6NaOHU8w+FXMA1yS+51Bz3uUzQ6vRIiIeWsuLAwl00nLVXf38/Ux0Q3OIvPrmDl0ckenjkm6E+9k6tlMuxk2FEtjCCkIMQo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEIyYVFtM3hiV1AwVktuK2pJMURucnQ3RGUrZUx2SzE0Zk83aDZxUDVHdzhJ?=
 =?utf-8?B?ZmMwdk56TDNrSjRYN29EbTZkRnBRRUUwUXloeW9UeXFkTVV4bU8xTUxVRkxv?=
 =?utf-8?B?YnBOTS81RmhDNFZMb283aStGSXJEQ3dkaGlXenZMcXQxcklRekd3bjlId1ox?=
 =?utf-8?B?OVhGOXI4dHV0QWZBQ2xZMG82Uy9JRkFSS0FxNmd1d3NUaVBZT28wRTR3dTdP?=
 =?utf-8?B?TGwrU0U5V2w3amVQVjdlV0RCQlpnRTZkZU8vRXVwci9FNHVHdXNweURXOHN3?=
 =?utf-8?B?bUk5MGZMS1BrbzRndG9OMkhMQmtLNk5Sam1GMDE3bTFlMlNVRUpwUzNzWGth?=
 =?utf-8?B?UjhiNUVqVnhVaHkrL2Z0VDh6UUNGbEQ5OGkzWVJaRjhuT0RFNmFtZlNRdk1s?=
 =?utf-8?B?ZERmdGxISDc0OUxZcjNQUUtjUFc4bE9LS3dTRTcxdXVNc2tSUE9PMlExQ2Iz?=
 =?utf-8?B?cjhxUUVpbTk5YzVPa2lsL3BoNFhhczA0MlVxc1hLVldISzlKRHBlNE5Nb3Z5?=
 =?utf-8?B?QS9sVzZjdVBQSVJKcU9DdnR1WUlHVkdnbjE4N2tnbmhoSjhpT0lFUldId1Z2?=
 =?utf-8?B?VSt3czBEcFlzeE0xWHQzZWRpd3E1S0FJR1RGSTB3SGFXZGd6QlNuTVJ0b1M5?=
 =?utf-8?B?WC9ieUxKamxDQm1UMmM5NUdnMmFidExqcnhkKzNVVXljb3A4SHJIazRNMnFZ?=
 =?utf-8?B?TDAvQi8yYnoyOFNRSnQyRk0wMUgxK1hzZmRKV0Mwd0RpVm1abnhXTTJ5d05y?=
 =?utf-8?B?SW5lUC9yRmVkZFpyQnNmOSsxVUFxSEd1a3ZsWlZTME9Sa0Y1TEdpMlkvbjlX?=
 =?utf-8?B?WnJXSG5WYmMwc2Y3Q1dzQzZVOTNubWVkQ05EVHBSaVVhdXJaZ0pJRWJTWTQy?=
 =?utf-8?B?MHdrVXFFeFBNRmh6dEtOcjFGV29haldkRm9uUEoya2JHNGZwSFQ2Q1M4WkVo?=
 =?utf-8?B?bTZHOFJzUngyR2xrV2tRaEVTSTloZHZmUXlOSzdqMmIwSDNGdnh1ZmR0L2Rh?=
 =?utf-8?B?UG5IT0E5UDZiQzkraFU4ZEhvYXA4NE54UEV4cTFGUlFqWTVQaFBVelByOG5Z?=
 =?utf-8?B?QnNpYVlmN1N5N2RNdno0RTdlTUZaWUlzaEkrcE5oK3pWWUdpL2trZHhyZEgr?=
 =?utf-8?B?UUY5cWVTT1hzK28xbE45aFR3eWVtM0htcDdCd1VqMWxDODJRaGlUU2pickJ5?=
 =?utf-8?B?Q1RSb2s2S1dKbUpicml5K1hNWnhod2xIaFFpY2lmWVUyUUQvR2tXWmc3NFJs?=
 =?utf-8?B?Q1dyUUIrVWpSamhxdkdRMllseGV0OTBtc00yd1lTWDRpOEVPNXRqUFpiV2wx?=
 =?utf-8?B?S2RUTUlvU1ErQjVmdVBqM29XcVdKdk01YjJvWGpBMFNEWXBtOEN6eTBHTGVi?=
 =?utf-8?B?U2VLZS9LN2xpaHdETkRjU3gyOHMxdDJkZ3VwbitEclpxbUFMc3djRTBOSDZT?=
 =?utf-8?B?L3kwbHRYN0lKTU9PbmtNWmtOOGc0cFdIUnFia3A2d2llQVBXbWlIQ1ZaNWEy?=
 =?utf-8?B?eC9TYTFaYXhtVFVUOVhka0tXTC82S2ZLYjFPSWhGQUlrV0t2VnJGVEJHUlRk?=
 =?utf-8?B?WDFCSTNvRmlKdEpkVEJHclE1eVEzVUVsT0J5TVVFZlQ4dVRPQWkzaGNSc2t2?=
 =?utf-8?B?VnowWGg5Y2NTdHNtTm8xZHNHWkdNLzBwMGVSRDlvMDk3Z2xwaG5aNnZxbDF6?=
 =?utf-8?B?OHVIQUFkWUVBYW44U20rS25qZ2RNSHZSdzJpYWpxdUlHM3IrK0x5cTF1dW90?=
 =?utf-8?B?dnhvVmJHRTY1S0JtTFNmNHV5eHRnanc3Sm9vNDBqSCsxRTdUN29DOWV5UURL?=
 =?utf-8?B?T3lUQUZFVUhuRjhodGNQRmlhbVFUZjF4NVRIT0xLalJLdUVhMzJ4YVp4TmV2?=
 =?utf-8?B?eDlsaERDN0hnN1ZLUHNMWHFrbytEK1ZMa1hjd29XOXBOVGNUSnI3a2tpc2xx?=
 =?utf-8?B?a2hoNkhhSEVjaWxLMXB3ZS82UDkwcEVicWd2a0ZDZnJITm1FZzJ0YmhaZmhR?=
 =?utf-8?B?SFpmZWs5SEZrNFovT2diTXArU0R0bkZkY1BTZk0xUktnZ3hxS2JYNUlXam13?=
 =?utf-8?B?dy9pWDhNVmZqQzV3WU4vaTB1UzBFbzVVK1Q3N20vVVFLSVl2WlBwL3hCY0hm?=
 =?utf-8?B?UnlUbEh3TTBEYXBBbkR1RjBaV21sQjZkbE5MOWpPY0ROSVhZREVlbWJZYytj?=
 =?utf-8?B?ZGRHRkk2cEtvOHdxbmpoRFpZL29XWFQvZ2d4UGE3anhrQ09PdmRpdUNtclZx?=
 =?utf-8?B?RGJmcFRaUEpwRy9EOXV3SmFXK2RTUlFYNStkc0FyVVlFam9UOUtJYit4SktK?=
 =?utf-8?B?ZWt1RVdzZzFLdVVJUXFBUzJYM2FubVh6WFdsOGpZUzVJZmg3aUFsR3RGbk1o?=
 =?utf-8?Q?yc/Q/R66ySolOQM4bD8UdOsWbmn1Hnm1RR+ac?=
X-Exchange-RoutingPolicyChecked: gYcVuJgpiMTNBF5ig+B9a8Qku/7DM1+WeXnnL1qia3a5tDUgSd8sB3EuSjcFXIob+GOz++xOUpDOVnABLhMc279PYeMGwSyXDEz+USmOqCAbCOkObVs2UZgFb5ylpxU+mf2hcR+diJtYdwrscIHe0S4AAvZkS+8fSYiB9C0u414bf3HCXycSbEXGN8Y2RCFhSTuuoidWYwR7jZbXk11BVmgOPyXUTOthH/C0LsoCztsLkfOnCohzIejoRq03H//UrOP6RHvPxES/oSR+KUSfkA+sjamB0xiD5BJwSPin+qSUnuVvAX+ekvvZAYRuS0tWtOuunh0yZ2/OkCHHHm/F7Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 047b7282-763f-4914-0c4b-08de8ef59a36
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:17:45.8609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 88xuy9nm38PrGmx4uYipV50aAkDllThDMOPAlpasFOv9/GJB7Qb4S/oxXalqTdIACLiIboEVNtPQOykC/GzdzRtjcsMODKWLQsNZOU5DjoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 669EF364F73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Get the ggtt_offset of the drm_framebuffer which needs to be
> written to the surface base address bits of WD_SURF register.
> 

Why not do all the setup work first and add both WD_SURF/WD_STRIDE 
programming along with the introduction of intel_writeback_capture()?

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_writeback.c     | 4 ++++
>   drivers/gpu/drm/i915/display/intel_writeback_reg.h | 2 ++
>   2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index e2f7c46015d2..54e74450e080 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -267,6 +267,7 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   	struct drm_writeback_job *wb_job = conn_state->writeback_job;
> +	struct intel_writeback_job *job = conn_state->writeback_job->priv;
>   	enum transcoder trans = wb_conn->trans;
>   	u32 val = 0;
>   	int bpp;
> @@ -275,6 +276,9 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
>   	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
>   	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
>   
> +	val = intel_get_ggtt_addr(job->vma);
> +	intel_de_write(display, WD_SURF(trans), val);
> +
>   	val = 0;
>   	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
>   	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> index f526af0f9aff..403f9b64015b 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> @@ -81,6 +81,8 @@
>   #define WD_SURF(tc)			_MMIO_WD(tc,\
>   					_WD_SURF_0,\
>   					_WD_SURF_1)
> +#define  WD_SURF_ADDR_MASK		REG_GENMASK(31, 12)
> +#define  WD_SURF_ADDR(val)		REG_FIELD_PREP(WD_SURF_ADDR_MASK, val)

Unused and perhaps not needed. I guess direct assignment of val works 
because addresses need to be 4KB aligned.

>   
>   #define _WD_IMR_0			0x6e560
>   #define _WD_IMR_1			0x6ed60

