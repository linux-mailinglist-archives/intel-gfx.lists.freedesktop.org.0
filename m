Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB01DC91104
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 08:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FDAD10E00C;
	Fri, 28 Nov 2025 07:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMmFb4Me";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B15D10E00C;
 Fri, 28 Nov 2025 07:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764316014; x=1795852014;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5OBCnqGaLfS+tTYjg1kqbSLAGg+J5wBQYomBB0/OJ90=;
 b=mMmFb4MeNZRebPI7CzWjMWWOvcJXs9GzIfiEmnM/666h5rrtdBA8Qu9F
 3Y8Byrl02MALhkOc2PJ6zToHp71I7fWe+NOh+LGqkxfgx+7Po4K7IatH0
 1CvHbgi+Pkp5+GrAKwsZAOqxkZvI1TwXOJIrxCAhQMQqAGcsn70uwcKp+
 T+EEMIHdNx91VedQVV3toimWLLfImds9ggEg2XOjMf6KskKqFcdMT1EOp
 7U/qX0ZcngwTRnLcAu7KZtAJXZ+Iad/jMZi08EXudpmkaVPKcpXE9lm8n
 XfjAIcITZ3mbEsqHE6U8kzZ/RW+oYs73YtN6oOEP01HVJpEkF8WMqDuZD g==;
X-CSE-ConnectionGUID: xQssLNBjTgyIobgmjAK+2g==
X-CSE-MsgGUID: KQFS40F3Qpmazg6djWktrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66309826"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66309826"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 23:46:54 -0800
X-CSE-ConnectionGUID: VuM+tKn5TrCLXjJlkhHeuw==
X-CSE-MsgGUID: 1u9SiQgDQx2tfOppFlm4Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193502754"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 23:46:54 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 23:46:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 23:46:53 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 23:46:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=okgB/XoJCO+9nXDjCAMJe75YjvwA2BSZgzkUjwkDPZfoJaMMOul7IFIVXAR4q5xIEXNE940v29QzNsOFhbfKlNYCpEZJ+8dLuCgf4xxI8QVT+0sReEwITBrha3u4rHUJ2lspxyRbf0M7iYkxU3HF6OSQhP9RHmCFQ64twPPYokz3ajr4/sHq5gcW4ME9UWl7ebsjFfiMMCqfvrZtWyD8B7iWYx0xrr8QcZAtOvEUOxc2mXZsCkeZa6Bmmmr7h+JEps/3w9RuFXlBDF7LRIN8bRz1MS2UlXI43CPc6cSEmWhGqlqltsoVnTRBl/3o7UIjPuzZcxSIQEf9h+fX4LSdpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4FNXsZcRxVAk8UHliqJS/ZrQD3IHKGAgNHa8O+/YtM=;
 b=lcBqxqZOTUaqB6u2lnBFwvAXG+Pz/w739Kn6wZxmeRjrSqrppUwIC3lLn1R1myCMkSxBr+KKF5Ka2wkOEa3dxyTK0thbyzMopybBSNdXjrTGlyufOvvNxGG1b3KRHwF6OCtF2OrKyUbJxeCeFzkeI2NtidREKLWsuFubJNb8y8S1FBBoVNjnfx16mIRbnDPZRXkj6p6tzvw8YiuEjemMu6oNqovZUyDBoM8Ri3XgDekU2M935moIpfVskKRgynISiKjEwrObk7LJDls/f6YZGjJhadZ7fmv2eEGzIQKMlNmXm2UWNlm9l/E61FLOwbgKbCggdIUVLk6tVKLBNMdv0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS4PPF382351574.namprd11.prod.outlook.com (2603:10b6:f:fc02::1d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Fri, 28 Nov
 2025 07:46:51 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 07:46:51 +0000
Message-ID: <860117f0-d8b1-4f4b-8448-d8fd83634c4f@intel.com>
Date: Fri, 28 Nov 2025 13:16:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on drm-tip
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <brauner@kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Saarinen, Jani" <jani.saarinen@intel.com>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
References: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
 <aSjY8et1QDyvFq9x@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <aSjY8et1QDyvFq9x@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::34) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DS4PPF382351574:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d8cc274-7d01-4b31-de95-08de2e524b00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y295cXpFYmZwbTdscC81UUZZUzlneW1CWDZLNmFubzIxVWxqbnZKbUpSYm1V?=
 =?utf-8?B?NVg3b3A3a21XNVpwUUJ0MFlJMmFHWlpFTFJaR2ZIUmRTTGdpcEw4L0hEcmpV?=
 =?utf-8?B?Nkx0VW16TVg4dlROVHJJelN5bVFiZkZnZTBGNS9jZHVLcEI0YmpucUVyWHcr?=
 =?utf-8?B?RXB4U0tJdVNyeiswWGNGRVo5alpRaGEyUDBIdGd0eGVmV3BmTUJ1TENGS1ha?=
 =?utf-8?B?R0xNZWFOcERpQytMQzRSTVl4OE1vNmpZU1JLYTMza29nbkJybTAwcWhRcUpo?=
 =?utf-8?B?RjZ0YzlmRjlXQTZLOHBOR2RKNGVYNWM0eWZMdjJoQSs2N2UxYVhZa2s4bnpF?=
 =?utf-8?B?Q3pYSW5oKzhVZ2lMWFpZRDBUempaT3NZaHBuaUNDU1Y2eExxYXZCU2F0bFNy?=
 =?utf-8?B?UGFzQmdGZ1pBcDI5QitiRlArOFNoMnZucVkzUmhwSngzMjM2bFhVSDFRMk5J?=
 =?utf-8?B?V3Vod0Z2K2RaT3ZFd1B5a1d6RTBTeUEySUlCVXNRTExtNHlpRmM2d2RQbGhV?=
 =?utf-8?B?OTZaU2VjOURnaTJsZ1EyS3RqQzZydzFNNmFLNWEzSENoeVF2SUZJeVh2R1Y2?=
 =?utf-8?B?SDZ6K3FndjRVd1habTV5VmZ2RE9kYlpzdVFFWnhvdjdBa3d6UzZFanNSU0RX?=
 =?utf-8?B?NUJITExuTUxINVhrTUl5cGZ0T0hCSFJpTmJ0dzFLd3ZZUEhFT0ltdjRYUWtB?=
 =?utf-8?B?ZmJWT05jMVZHek1UckNhZHhBUTIvUWM3YUVYZ1hmNE9tbkdEcHBBQms1ZXhJ?=
 =?utf-8?B?MitMZnFscjBrV2hWUWNTY0Z6bk5ZRTVJMTlwK0JINGRVRDVTRkdBV29TRXVZ?=
 =?utf-8?B?b21XanhhUk4zOTl5UGN4cTNpRWlzVG85b3hyNWdYQUxpNmNvZTJiaFZ5SmpU?=
 =?utf-8?B?UjdlQlRXSzRUQU5sVnlKTThLVGxuUlBjYXNhWnRIWjdVTVhkOVVwOGVJMStJ?=
 =?utf-8?B?QjdqckdsVjY1bnpNK1hWMWk1WDF4d21IekluZUdlOTJ4eGtSZGduRnNWVUE1?=
 =?utf-8?B?VnY4K3lSTmVzZ3AxVFRWTlQwZy93aENKb0FxMCtPb2lRQy9EMWphQkh6SU1Z?=
 =?utf-8?B?K2J1N0owdjhMVitnQVAreHlRM2szSUgwMXVuOU9CaVNLbWRscE1OdHcrTGJG?=
 =?utf-8?B?WE5mdWhteDZ3M1NLTlRsQUlrQTl3eXN6RSt6OFdoWGw0ZDFiVmxRVkgvQ1hB?=
 =?utf-8?B?MFdjRWZ2ZzZOdGtMRE1hN3dabjEvV044UzFmM2hteXRqOVJaUEhFUGF6UDk5?=
 =?utf-8?B?QVgrdVZ6VnNxcjdtK2hzVHI0WG9iVjI0VExic1NuRzQ4aWVuU01BTXVIdTVY?=
 =?utf-8?B?bWFvTEZ3cGpIWi9SOGxSSHpod0ZYS2UzZEZtZ045cGswdDA3R2JsSk1ma2xx?=
 =?utf-8?B?SS9IZStVSGh1bndEM09MQXdjQ2JXb2RaZm9WZW9IaEJFSUtSVW5FVUhDMHZW?=
 =?utf-8?B?U0xBR2tPSTJBd2todHV6a0xlN3Jxc2xsMDc3YmRiL01RTWZMSXlNRXEycWlo?=
 =?utf-8?B?eVlMOVdTdy81UnM0c1JBQmRRbHpucHhibFBrVG1PMUR1V0wzRUxJSUoyRW9B?=
 =?utf-8?B?aTd6a3pJK0ZYVzJ5RktVTDBBS0ViclhmZ2hFOVpPWk0zRTFzanY4TUJwYk5I?=
 =?utf-8?B?R1UwNGtwMzVtR2RKRlVjSjdIejdHNWlxWWx1N29VVVdzZ0F1a0p6dU5TeWpo?=
 =?utf-8?B?bnVxYTN3U05XZkI0K1NrSEdBMTlEL1MzcWNsYVhHSUxBbmp5QUhnaXhab0gz?=
 =?utf-8?B?dHA0NmVaZDFlVTg1cUgwTERQYytHQm5WZjRWVC9MNG5KL3ZxTzJCM0xndjBh?=
 =?utf-8?B?bHllTm0yL0k4TnVRQ3pTbUxiWkNyeTN3T1F4UXNIUGczNXpiUkpCL24yVHVT?=
 =?utf-8?B?QzQ1cngxWFBSVnc5Y0F4dDg3alRadXZETVdyZ3dDL29tZHNkcE5PWkhRQUlm?=
 =?utf-8?Q?SLVewkqyx5HLg8DHDft7tC7WdGqSLKNs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2NFNDJZRW40RXZYU3k4aGxubGlxT2ROV2xUd09oSnJuNzFrYWhyK25nZkx1?=
 =?utf-8?B?cndFNGlmdGdqYTg4czB4WjFWd1EzQ21FbkhJN0VIc3BBRmcrMHF2ZXBrMFd6?=
 =?utf-8?B?ajlLa0gzY1hxbHpnbE9URXU1ckRsd2U3cW5sbEErTmtneDRkbjVLZC9qdnF6?=
 =?utf-8?B?MTRaVGR2aGJKYm5nNmp1eVp0eWxjcWszQkFiMWRJVU5RWmVwUkd5eFJWdFk4?=
 =?utf-8?B?REx3YW9KMzRDTHhuZUdMY0U4ZmNyUVNSTGFYT3hOS2JoR2FzT0tYQWJ4WFp2?=
 =?utf-8?B?eXRnM2pmdnpYOXlkTFJIWjc3dzNyMGswdTRoeFlpVUlHUUZkeG1PR2w1VTJM?=
 =?utf-8?B?dWtXcWJSaVlRcmNYR3Q2NWgrSlhzWG1wY2J0V1dPNEhCbWJ5ejFiUE1TakFj?=
 =?utf-8?B?RUtRdyttQTBxTkdnSVF6WWVVY0VqVTBzeDZYd1VJK3ZSd0NSUk5IRVBzMWtG?=
 =?utf-8?B?eHVRUVlTRUVBc2Z3WW9Vc2N2VW9lSWk4bTk3cTl4VUZEYVhkdnQvUFNoaDRj?=
 =?utf-8?B?THpVUzhaK3Bvc21KTUoycnFTdE1SY280OXYzSG00dmx5QVpmQXVWdENrcHJ3?=
 =?utf-8?B?SWRzV2xLSkNBMmd0WWZEVEpTankvVmwva2lHR3Z4dll3LzdBM21JVzJqcndo?=
 =?utf-8?B?UVdCd1F4QkUrWE1DcTZybFhINC9keVRwNE5hcjV2eUNoN2EyYnRTajRXTG5S?=
 =?utf-8?B?SUFsV3ZqckVvSEt2U1VOSkR6SG1xU1VpSUV2SHZBWXh4U0FONU5WamkrbFcr?=
 =?utf-8?B?ZTNabGpaSllkVWg2WnpSV1hESVc4NTVBUFExNC96MUZkcWRuWVVSZUZCNFBa?=
 =?utf-8?B?THhZN3Y4YnNubkppMm9JRGl2dGt6NWxWN3ZZai9UclQ1cHlhK25SU2Naa1c1?=
 =?utf-8?B?TUtKeHFON2pXczE0aCtYNE5tbWJ6WTZ2ZllSWFlwM2FSa0Zhbk5yVDM0d254?=
 =?utf-8?B?N0M5dDhweU9VanpnbVpJajl1L3Bnd2JJR25lUUNqUlV5QU1qYjZmbVVKNVN5?=
 =?utf-8?B?L0pyVUdiNWw1d0ZsSzg2TXdvaVZZandZUzljY3Y0MG9VNUtvNERMR09uTXUr?=
 =?utf-8?B?dGtCNFdobWtQRnVVT25FQkMwcHNCQm9SUkh4OURxM0VRRk40THluWGpJU2Yy?=
 =?utf-8?B?MlJMUmNyenQvaW5WUjZWc21RbGRMN1JYQWo3dndxZldYRnEvbU5PTGxiSkxw?=
 =?utf-8?B?anVZdUF4cDBGS2dBaGxmc05DQ2JYUWpuVTFEZXlQbUJlSERSa3kwbXNBVnl0?=
 =?utf-8?B?Mmo2RXphNkdwZGU4YnRlNGhiUDRJODhQOXhTeGJGWENmbVpiczJGaWtqZWhz?=
 =?utf-8?B?eGJhSTN5b3ZYcWF5Nlh1czhsVGM3ZWFtTUt0RkFxcTdMN1Jmd010dUhMRG85?=
 =?utf-8?B?VkdFY2x3ZkJIZFZKMm1qNGFwR1liNHB1NnowaHdjeVYvK09Sa0FHOUtFcG9G?=
 =?utf-8?B?SGk4TUh1NUR1V1Rad3gxV09MbmRhcGNETXNzZzdKY1U1VHl4aGZ5QWRNUkhN?=
 =?utf-8?B?ZEJwVFpJSGMvQlRvT3hCSWpHSGw4Y1VNNVFZbnZIaG1jQ0dqbWhxSnNLZXMr?=
 =?utf-8?B?SytvZHFRV0VLblRKdmx3YWk4QnRDZDdVTUZFQkppLzIxQjUwVmMrUElaYWh0?=
 =?utf-8?B?dUtCNlJ5alpoY09pUWNVdVpLR2Y0LzlnNW8yQm9zYWtIOGNHZzJOTzhDellM?=
 =?utf-8?B?M1BtdGlTTWxKTDhmaFpOanV2bnFKb0tzVUdkdis3WGFzTDdtdmFhb1ZicHdn?=
 =?utf-8?B?NzFsamtMOThJRjhLQ1dpKzhyUEdNTldRVGl5ODZvcFUrc1pHNkVqVWI5TVNa?=
 =?utf-8?B?b2lnODlqZjdXWjh5VXVtNUJYcmw3ZnB4S012UXNIcVNBS0Ixc2t4eGNLWnND?=
 =?utf-8?B?UWRWT3ZkUTNCMzliR2h2TmJVOXJhRGlmZ0k0cmo1Z2N0QnBmemxDb1dLV0wz?=
 =?utf-8?B?TWxNelZrOTh3VHdpRS95dlkrRlBkREdDOExxYWF5RmlLdDdMWStwRFZkNzJM?=
 =?utf-8?B?dDd0V2tJVW9sd3plSVVTUjI0SkloUEk5aFNlQXpGeHduNWxvaElqZGVaSDFX?=
 =?utf-8?B?dlNhVmEwT0JxaDRZU0lqb1VqcGJFbXRtUDM4OWcwZXRjNG84K01XNVBrK2xF?=
 =?utf-8?B?cVNESEJJSFdaYjN5THVrVHBmcC9oVEhoU01MU3BOaDlldTNHaDhmL0x3Y1Nq?=
 =?utf-8?Q?0VagJoFTIlvxi6SdQQmJX1o=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d8cc274-7d01-4b31-de95-08de2e524b00
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 07:46:51.6917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SlseHu/2DfZQYljRHoYbgLic0RwQ4ZZSILyFNGwyPSpVvfL6QLDAiSC0QHGPZ+4pUt9odGSMH9q3Oq+aqx6NvEhO/s1jMqQQTvAohnCM0C8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF382351574
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



On 11/28/2025 4:34 AM, Ville Syrjälä wrote:
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>> commit a3f8f8662771285511ae26c4c8d3ba1cd22159b9
>> Author: Christian Brauner<brauner@kernel.org>
>> Date:   Wed Nov 5 14:39:45 2025 +0100
>>
>>       power: always freeze efivarfs
> -       if (freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
> +	if (!freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
> 
> ?

This change helps.
@Christian do you plan to send out a fix for it?

Thank you Ville for pointing it out.

Regards
Chaitanya

