Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2G1nEVQTnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:56:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E2D1812DE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD7510E48C;
	Tue, 24 Feb 2026 02:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgAdyaFV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA41910E48C;
 Tue, 24 Feb 2026 02:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771901777; x=1803437777;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UrXETcdHP2fvY9/+WQrPMBq/VHACBmSNDLNuEpwj/aM=;
 b=NgAdyaFVQZ5RuKl6/0I9lBuSOKW7CkEiovo6/LeUv5QifeXRCTATyXSH
 f64/sGVaslfKDkePDfrcJKvY0NYtA56c8TbbTWodGLqycsZPkS4WfpNVu
 ym10QE0BuNNtMJcU0ll+cR1eopMO1LumgjkbnhMYEndjdyLwk5+yF6nrC
 MP+p2R+LznQRYbm4BFAjOeKlN3AZSlsQhnmpGWT8u+dcp3WaHrPZ+UAMn
 FzVB2jg10eAJdQDxkqqTg+W0l1VJ2DvakIE/iHYxMyk5ODkieoh5BmXTO
 zXL9xyFbzjXXZUToAOVzMPxoXSQRjEJ7GB3RiOXCJnxSLZdZ+I3P0WdUp g==;
X-CSE-ConnectionGUID: sNgZO81oSNebDSFBqCXL2Q==
X-CSE-MsgGUID: /Nm+W+a8TLeLCxHKujw20A==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90493040"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="90493040"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:56:16 -0800
X-CSE-ConnectionGUID: 5MyJrkfdS8KEz+CfmrxU3Q==
X-CSE-MsgGUID: vyj/h46hRYW4Wtw9ZllC5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214851516"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:56:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:56:15 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:56:15 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:56:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tiqKugTkzk7N16saRkSilX+kuvyAsaU6IPfR9OdSHhzBM8lzsxvmt5w9gNI2e7W+ClE/E+mJyuHnPzOfKOerPnMjJsq8AJBuTdVHxKS0tplvDJEThf8C4Ff0DDXGfHZedkXvqPTgN+Ge8+9FtrZNTd5dJBY+ilJKy8M/pNQ1br9cVopCwHBvIRxgihZh1oQYUe4BfjYXse6JB+bwuPqsvscK8DLgR56e4LByP80nqmLofCuTf9dG8D3Q9JzbtOGg60/SL0bF+zflMficiyv2ucXU35rp+X/XxouAfl4drpeZpTHEGQv2j7tsM+viiUMJHfNm1QtFF7cIcqh7OLF0OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVwqJgoxkA31QzAW7c6cCZJ65aHYTzFPD1eJY9G1RAo=;
 b=bkXBwobhBolxiy2WsHY8kHlT3mUz4L5lMUCFg1huxSJ6qzDLzTHYazmQyp+YlIuzLTMpMbxYzpaZ0O7/afZyO7ZXv9f4UkSp2HIu5+afW0qXJLsJVZPCvT4tplpCJxqA51t82lrzEu0Lu6yUUX1QEg2ByljhBu5eSeC+RR/es1u0OyXMBmUotOD1Pygr5x/qRbNtdNZZXCytho6JXBzy0FP23jgbZbqLrlaxfX2JVKIQQRtoDEttlmcgRZuaNL6wjlGNkadFmr7jp3snrey9ym0oxkJ9T2zsFFIKt7g95OyL9nH1gIXVqzz+pELoOKtNbwH/aE8X9dld26LllAhAXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 02:56:06 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:56:06 +0000
Message-ID: <168b4149-b5ee-4c18-bfe7-143b8bc0c2f9@intel.com>
Date: Tue, 24 Feb 2026 08:25:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] drm/i915/backlight: Check luminance_set when
 disabling PWM via AUX VESA backlight
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-5-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0082.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::12) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|IA1PR11MB6265:EE_
X-MS-Office365-Filtering-Correlation-Id: d04038f1-2a32-40af-5dc3-08de73504146
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0lWVTN3SWFsbTdDK2Q5VnB3MHZ5ZUJJSnBDazd6OHpSRTJxdmZ0d09LaUUr?=
 =?utf-8?B?MW8zMzVXczA2b0g2SG8wUFhZeXcrL1RjdUpWUFdPbWJpU2tvamRrRFZVSG1R?=
 =?utf-8?B?a0RTaW93S1FDRFBENW40RHN1YUROY2FOUHJieUpBb0lwNzN4NEQxUHpXQ2c1?=
 =?utf-8?B?RVQ2YVJrMUc1TmNNZnRhNTFtNk9yeUltY3FZNTg0eWF1UENyMmJSQzAwcG5G?=
 =?utf-8?B?WDBqdFhwTVBzMlBOaHBwSkdmbnZiekkzckZtZlVWb1V3TzlRcnFHS3ZSNXJv?=
 =?utf-8?B?eURMVStzS29Na01wRUZFUVJkeWRoWS9YdDR4MVIrZGZsckVPZmo0K2hmOWxL?=
 =?utf-8?B?MTdreGl5WEZockd6WFl6UFdtMDJkZnZ5ZWo4ZFdreHNsL1pWbDhMUFgrMDRV?=
 =?utf-8?B?MDEzTWV3NXIyVUdnTGtLbC81Vm5aM0pLZVVRZUp2VDY1MFdDZW51SUFOclBO?=
 =?utf-8?B?UzVZZE8xUFRvekFSU2w2OVl5N3IwN0NuOVlHRWQrVlhLVDJ0elpxNkZuanE4?=
 =?utf-8?B?Y3JSNkIyM2NTSTNTZit4SHRDMU1xWjBNdkxFLzdicEU3cUYyaXNINjZkUTQ5?=
 =?utf-8?B?ZTlWb3NyTDg3RjhtelNPQmZlenAwa0tpQnl0UndJZEVpZERZNXE2L0ZqR0ht?=
 =?utf-8?B?MTJSUlVpWGFtQ0ZEVE9ka0JUUGxuRnRzS1ltb0l5eGVQRTJWUnI4WmsxemxQ?=
 =?utf-8?B?dzNBTEJINU5UWGx2Q2ZHZWN0b3RPSGVmOG5URVdPL1lRVjVmMWNwNDg2UW0y?=
 =?utf-8?B?eTNvSXdLRHBIRVhPb1JaWTc0WmR2YzJ6L0ZXQmRjUWoyaHo5TnVCalpWZ1lK?=
 =?utf-8?B?cU9mNG1Db3pTUVBzb1M5SzhiN0tpcmFuYU5lWTdKMHpFdG44dVh3ZC9nN25J?=
 =?utf-8?B?QWNuczVRMWVIT0RlV21ycHdROTVWd0QwVGVva3k4WWN1UlNjbE1JQlF5RStN?=
 =?utf-8?B?MjAzTkVleUh2Y3g1dEdaa0l6a3pVMVNzeU56dmV3dk1aay9MWFg5TGpUOXJU?=
 =?utf-8?B?SzdUNmhWR0NQUUU1L0RoU05xRjRzN20xVll4RFQrWHc2Y0FVdVNBdStIc3hs?=
 =?utf-8?B?d2NwLzA2aFpsaTYwOS9tR1pvYmtvMmZ3WVhtQlpIdnJucHFxVUJlc2ZtcWpB?=
 =?utf-8?B?cDJXNWtWSllmZTJ0MWxGL0Nqakk4RFFTYjhQekJvZkxrenJOMVBOT3ZGUmJ2?=
 =?utf-8?B?WnhmNnpZQ0w0NnVBVTRDZG1jZEtqZG5WcWREZmZUakkwZ0RwQWp3dVE1eWpO?=
 =?utf-8?B?S1JvZUM2c1B2NURrNS9DQXdaVXRPQXRTUjlhWjZUd1U2TmlqYTd3U0N6RnV6?=
 =?utf-8?B?MCtDVG5Ldlg3YkFGOHV6c2F2b3hMRmV5WnF3QlB1dzV2L3FMUXIrOFJDR0RU?=
 =?utf-8?B?eHdGRXdpYytDNnlNSHdWdzlOWEVLbWlxc3VRUFFFcVU1N2s0b3A1bDl0QnFS?=
 =?utf-8?B?VjlkSnF6SXRhS3NaMGZ2UENENnVmRmxBNnEwbDlyN2k0ZnkwNHNxdVJ6VVZL?=
 =?utf-8?B?YVFMQTVZeWZQUkJxNGk1a0NYMVV4Y0hTM2JacU5hTkk5VE9FNFJlc3VrbG1z?=
 =?utf-8?B?dDQrVm5lTnBEaXBWTFIyUXFoK2ZqMnp2aEdyWTUzd015VmtvY09XMjNQS2tN?=
 =?utf-8?B?U1lrS0ZnVlVQdkQ2Ukt5V2pZL0ljMnF3YUN3L3FsMFNvVzZnbnpVL0t2Nnpp?=
 =?utf-8?B?MnYxUE1WMTdVVnhWZGFVVVRyS1ZSNndvditrU095aEVLUm4xMjc0MEhKbGhq?=
 =?utf-8?B?ZUVaTkZBVUYwcXhGcFZjdk5NUTlDV09wR1BWVkdIQ2VnWEJBd0NESm15cjFm?=
 =?utf-8?B?My9yRnZsVU5lMmZRajVUWkJ1V1daNFZEV1VUdUJHK0ZaOHBNMTBJTzR5RVhO?=
 =?utf-8?B?WGdvT0l0QmdJenptZ0hEN3pSZlVoQVphR1dBTnNFTzJzNkpOWWtGY1BCL09t?=
 =?utf-8?B?S1JRK2VUUWtESzhtaDQydVA0c1dsNU5QRklWbytsMkxWbzAvMC9PaElRVk9l?=
 =?utf-8?B?Q29tZUNBNjROcmhFTWYwWHN2OFRPc055aHE5eG5DQlVuSjF3bU1XbjdXQkp4?=
 =?utf-8?Q?JG+Doj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3p3azZtLy9vMXY0aEE0Wk55dmVONVRGWmhwRHhScC9xd1Jja3RkTFlYOTZ5?=
 =?utf-8?B?MjU3V25PS2xnSGVIMm9xME5FS2o4QkRpMUt3TklFcHllTXh5UjNIZjkxTHk5?=
 =?utf-8?B?cGljVU9VWElHU0c5Wml5aFN3NWh3Uk44MkVYUWhoNzROTDlLaUhUbzZxMzlT?=
 =?utf-8?B?bFpEZW91L2NHZTA0Y2xWa3hzRFRROFNuY2FpSS91bTd5TmNNWGVaYmlwMmNE?=
 =?utf-8?B?N05HTm16TXVqNWpHOVU5TU9iNjVJVVp1RTFFMWxHTjhUNy9pUTRmZG9tV0ZJ?=
 =?utf-8?B?OGdwWkp6eE5kY25vZ0lRbTVlQ0RCQU0zOVpYU1lTb2doZ3ZmaC82cjFMd2hU?=
 =?utf-8?B?RSt5MlB0Z0ZkUkY1bytPRzJuOEpQODZOVzYvYndoWkJLekJLRlNSWGNmblpB?=
 =?utf-8?B?V0txVHdiKy9hMHdQRUd3VUJjSEt2SEZKU1NUVksrTWVYWUk4NlVlWWFXOVBm?=
 =?utf-8?B?bkRGOCtoT2J6RHpPYmllSG9ZdG11OGpVWHF3VDF6TGQ2VnhEODlhdFZ6c3kw?=
 =?utf-8?B?YkZOaWY1bWhJd1RJZHEzRWVrbGtvSmR3SzJMTTlEOFcxR2dIT00vUUlyZWF5?=
 =?utf-8?B?N1hON2l2WkRJUFVQczF0eUtRTTg0Q2ZGWnR2SmJwZnNxYks5UElOR21CM0U2?=
 =?utf-8?B?UGp3WGlKTWtTS28wOVpMOUZWaTZrN0R5dHMzaWpsemtuTnlDd2xEMmg5cHFI?=
 =?utf-8?B?TUFPdHEycWFkYUx4N1NrN0ZLc3JBemdsSnBacytqV3BoTitWdXozQWQ4VGJj?=
 =?utf-8?B?WkE3V2lnWC9YUGJNT1hBVWJpa1ROWCtmeTJKNEJ1MXl1a2pFS0dYVEV5Y2xO?=
 =?utf-8?B?dGVRYXFKNk95ODN1VnVKYm55bkJNdTZTbm9pYjh5ZEN3SVI0S09MVzFQSG5R?=
 =?utf-8?B?Y1hlNXNPLzR2UW1LWjZIRGExbDJ2Q1RsZnlISHEwQlEvcjI4QkdjTHFQc2gr?=
 =?utf-8?B?Q1VTQ2hrdlpMYndyRmJiWlJTSVZnc2dhdktWQ1QwRi9BdmZEVTdNamtZb2ll?=
 =?utf-8?B?RWN6Rm84QUJZRXJVSU9Mbm04MjdxTE1MWHRnZjMrV0gvaHhwb2xVUlNVTlFx?=
 =?utf-8?B?elhlWGs1WU1jdzAxUlo2OVhmc1ltaTFGSFR3dnZzSGorenFZMmtwaVE4K2VS?=
 =?utf-8?B?ZGdXMXd0dHlXdnMyV3BteHFhMFh0R0l3SWwxc1hBTkZMRkNncnBreVc3bGxq?=
 =?utf-8?B?d1Bzc1FTWUduT2ZqY2xsNHdhYnVSV09SOFd4b1kycGtlcWNoUTlSaDVvVGJM?=
 =?utf-8?B?NjZOQk92ZWpZenpxQ0VIZFFtYkttYkNmeFJ6UmkvbXg2amo3M2o0dzB1M3VC?=
 =?utf-8?B?V2F2Szk1ZVBUSXA4em5ieEZKUGF2THBXV2F5YXdtTDg1bE9nSE84YmpEdTk1?=
 =?utf-8?B?UTNjR3Y5Unp2L1l3akxxQVl3dGQ3NlVsc29TRTRsdDJGaXQ5a3VkNk4wbERn?=
 =?utf-8?B?N0picysvbUFFVmlGLzBQeFVUSkRMSHQrbmRnYTlQcC9QeTJWWGpyOXhNUlc5?=
 =?utf-8?B?cDBCb2U4NzR0VUxkS3BJeXFxenZJOXgwY0EraEJ1NExNZCtkOHc4Q1JwVEpB?=
 =?utf-8?B?d21ja2tEaC9ZT2Rvc0w2eEZ2RnBJTGhjcGtOTTc2K2QzQzNPR1VSYUdFZ21V?=
 =?utf-8?B?QmpnRnp3Sm5xbjZVWUUxY2JSTWZCMUxFaFJDS21LZW5TZUZ4NVdpbXJCdERp?=
 =?utf-8?B?ZjFvSnBFYkh3QXNOcnhGV05kdk9UK1JxWW1Mekh4eVU0VU9ESkljQ0RQa2c2?=
 =?utf-8?B?QW5qSE4wVFp0VUtJYlgyYjhLaENjSzRDZ0dvMDRhTzltLzBBWGhiUDN6QUhs?=
 =?utf-8?B?a0FMeVBONDR2cTNKWnZMYjFUb2JTdEZLL3d3V2ZFY0VnWUdkZU5BRGNIZ3c4?=
 =?utf-8?B?b3gzK0hrc0xkeGxjbjMvYmdUWlJvSkZJZzVFbDl0Z1JBZFFvcmVORllqMGtM?=
 =?utf-8?B?K1ltZG5vUGtVRHNBNDR2REYvYURrWHNteHpuOGZKR0JqYzl5czZBd1E1QjdI?=
 =?utf-8?B?VGpUZi9HMUMrTHg1VUxxRmk5d3BuVlVpYnRCUFBWU01iWnF1emliNmZCNjRt?=
 =?utf-8?B?Wk80ejFydHdBM2liOHJFRmRYREF6NTcwTGR1N1BDYnhwK3NnU3dqdVN4RW5O?=
 =?utf-8?B?NkpYcUp2RG1wRTVCUUUvTG0zNnpkVkk2ekN0L1VPbXJ2NkhoZzlkWk1lMkg3?=
 =?utf-8?B?cmRMK0JjV0FxR3MraTFuS21MT21LQ0JQNkNZMG9rbEZRQ0QvZXRZWnpvSEky?=
 =?utf-8?B?SnYrVC95S05ObHJ2SldiU1pIYklnLzFybUlPcXVOQVZjeXRyZHMrS3Nvbmw0?=
 =?utf-8?B?YWhLbW5MSzFJZDZ2RXZ2bGtJVVMzTGVPYkhqeSsrWEVpYXdleGdLQnNOMEdX?=
 =?utf-8?Q?c2zz3eJlvj9CNAj4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d04038f1-2a32-40af-5dc3-08de73504146
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 02:56:06.6231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5uJDISimR5jYfRAZvmP0IsX0PUsfexKEpu0pf5PwXap1gwI1MIUCTKVujNJowv8qYdXAGPXxbDu+9dA2WHlTyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A3E2D1812DE
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> When deciding what if PWM funcs need to be disabled take into account
> luminance_set too. We do this since it is also used to decide if
> we are enabling PWM backlight funcs or not.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index cb39696491a1..a921bb4ccacf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -511,7 +511,8 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
>   
>   	drm_edp_backlight_disable(&intel_dp->aux, &panel->backlight.edp.vesa.info);
>   
> -	if (!panel->backlight.edp.vesa.info.aux_enable)
> +	if (!(panel->backlight.edp.vesa.info.aux_enable ||
> +	      panel->backlight.edp.vesa.info.luminance_set))
>   		panel->backlight.pwm_funcs->disable(old_conn_state,
>   						    intel_backlight_invert_pwm_level(connector, 0));
>   }
