Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pg9JFhpdS2qiQAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:45:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C1F70DBB7
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 09:45:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DB7URemc;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3989310E30D;
	Mon,  6 Jul 2026 07:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1908B10E30D;
 Mon,  6 Jul 2026 07:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783323927; x=1814859927;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=keuvnFhSOeEEtAb0Qq1gFKd20TPtSiPFD/ZN7oRmWf8=;
 b=DB7URemcexjQOC3FOiH+LvAIq2avxxSTf0T1yVhil+J0TCLRsesy06eN
 eCPoxTzqq8cIeVPJ3bL8TBg7DZ2MDL8WugClkz8cWkvIJJgIdt8ck8ZaU
 G9r6escJFpt73ozywvJOdbNUoVt9xqPq+pDutoPqiD2CWrCZje/mtbHju
 bnX+hsxeKX1fWXGbxX37Vv3C6QFtFO/SKfYCPbg99ozf9Jh6FLzjODlsZ
 3vMI+KXVheeNTJaS2YydcQBISaTggaWDBpnaZ0zPJL5/AtF8GaWrcaQFI
 gzxgcvnhrOadvvUXJFH5u4Z8spwpZJpJtrJSQ1EEn0PP+1qlyLUN1fUzc A==;
X-CSE-ConnectionGUID: 9vT9UspKS5GYWTxdWD1pgw==
X-CSE-MsgGUID: JcF+LPLWQNq5GKCATGDXRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="71470309"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="71470309"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:43:28 -0700
X-CSE-ConnectionGUID: 4AzekMU7RDq3H4g2hWfRVQ==
X-CSE-MsgGUID: wKVAht5DQYiIlflfavNb5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="253164957"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 00:43:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:43:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 00:43:27 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 00:43:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u3nq92dqBdZBWsSxXPrRcmk+H8AGiJnLqK+6MBS6UcmjipWD1ZMBesfFN0/4ZfHgInVcY3kOmGuYP/gn+pNeGmm2oTLM/k/dqH8HHYFUuLlc2sD3PMs6YoQoBQtAC//yGpGGnv0JsvDffCaGZioAnTzAC1Q5rew/BN+5jUt12R3JsTelInMWAEvpDLAzMUDBFIHSey6uGewOI617R4ZjyedkVKozBxCpdOHNpGBHS9SfDQoUi4PbQAssjn3hpot4yRDudiOslHyEgk4MXUWSK1aLUXadUApgIF7ch/frPQU+nZvm0oyUFVMJBJ1CJ1qbyU87VInhbY35TAGYIQoPNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lH/athRvk2CdT5UCLP57uYftejalhtixpGgxvbicVcU=;
 b=K5iQ9d0euYtRZzKGAjGL53jv+OR3Gk6crrsPKBFUCvf0ruScy0rI0NpkZHnbxOVqkIaffq3HDqZ/5lZUiX2SLJzWAuLUAku7sUF//whZb16nBF+JnCeBY8LCc81FISfSRS5IUEUpDyv3ptf31/bzf7tlt79SnQlJ5kP5db+IFW4PAVkf3zuXQcUAk3b3hQBt0ew31DSUV5F0Qoe2gs8XkUArBiQ5dLEEZAiSY8DX1hGx47/NdVs/2AKVWxaFju040KkPywlQgUFUxQ3QEy0jWCVCyZjRxA0KQfyzX88mGNsuUh39skH6ipediMk/xdMa6II5es055GWBn+PYpRfnaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 07:43:25 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 07:43:24 +0000
Date: Mon, 6 Jul 2026 07:43:14 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
CC: Robin Murphy <robin.murphy@arm.com>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <iommu@lists.linux.dev>, Andi Shyti
 <andi.shyti@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 3/3] drivers/iommu: Catch scatterlist length overflows
Message-ID: <utb5awup2vypdhtcxk3vlczwrqbl3ypae6ftbwrlrkdqfnk4ft@aurl5kme27ac>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-4-krzysztof.karas@intel.com>
 <20260703162236.GX7525@ziepe.ca>
 <90558ba3-44e6-4d5e-9c72-ed8817d372be@arm.com>
 <20260703203502.GC1978949@ziepe.ca>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260703203502.GC1978949@ziepe.ca>
X-ClientProxiedBy: DU2PR04CA0056.eurprd04.prod.outlook.com
 (2603:10a6:10:234::31) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|MN0PR11MB6088:EE_
X-MS-Office365-Filtering-Correlation-Id: 44ec0bd8-9965-4e82-7632-08dedb3242a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|22082099003|18002099003|4143699003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: uFzkUfQwzSamOH2YcUJK9FvODt1cx1ZPWi/ieQQKykgO8edhji6Yl7C4erwK6X73WSq5wcRF0XbpWN2O/PnJyjV9jQUHx6+7aSGUIHj7wCoEI5A0wXqXQ6uT36hnBPzVjtaexHewjA3WkqiriA8ghO+0E3qQA1uXr4Izor2+ANrBRT4oEI1pNe0QsTrFmtFTNRlez30Uq0oLC0Pr+2EkhhfvgZeGvvTgLnzzki7RwIdv9NJbVRKEEFDkAn816cOo6bsCewtAaj0ro1IKID9zhQW+uktkDUwhzk4Gak3MtAwzKnkl4gK2w/g+VCWybDDZb9lEfyHmC6pepIDJbVRmh+4C1y639c1maob9ZmcLjuo6FsWJPpBkC6LbBQ/+AjiQD+RCMNcWaSXCZQew+ZFIQ2jEQ2S/YQ/waOd0jFE7Cz5Tn1AI/DE8o/R3Ib3nxyEZiY8jAL5xOeM3e2KmBuq2hzFvZlEqfzBNnsSMl5k4vZDk2jGd2/N78k2XprwQ3B8zKXf1o7nuMD3PJWby+BMYQnbcKn5fPSNfIlG7rsrixLiHZseHyfvQtKsLyoMieZhfCshAO5LbOmy+3ANsgQkChKrIWb5mUhN4DHQ7SdJaF7m0Zjj3fZ7IUBU3p/8Ot6+1HQvzTNw1DXZqDCS53qBDwfFgLRA8/1Nq8D251/cJqmI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(22082099003)(18002099003)(4143699003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnJXYXdET0N2UVFLL0c1REdoYkJyNVpYSWFBTnFMNDJBN2tBZjVJWVNjZC9o?=
 =?utf-8?B?SllRYWhFNFdkRWpKRmRGazZpdnFTelUwS3dSRzFIc2tZT0NBL0tWSUtma1VE?=
 =?utf-8?B?NGx3MkhlUC8vaVpEaXFUQTVaRHNTdENRekcvVnZWUWRtZlQyN0pSbERpNUlH?=
 =?utf-8?B?WFd3VzgzNEk5cDZUQ0hIRk1yNjZSUWhrYWMrTFRyaTF3UzRHcVMreXZGdUU4?=
 =?utf-8?B?djk1SFRZeG5DUW50ODh1MDNwZHZmSXNaeVJEZXc3dUhrU3V2T2gybVpUYW1w?=
 =?utf-8?B?bGVEdVNzT0lSMXhodjlqcEswVmRMckZxaDZjNGRNd0lBam1BSG1UR1NXYSsw?=
 =?utf-8?B?YjNnNDRnbTVCYkU0eXY1bkl6Z21DenNnc0tZWm1UemlsVStVZEJ0Z0M2aGNk?=
 =?utf-8?B?RnBqTXBTVWo2VVRVRmRHN2svNFc1RWhNUHFBaGZYa1M4SlZULzIrVXIwcDJM?=
 =?utf-8?B?LzdKeG5YKzFaRDdvU2lQaW5mMUFmdTZGbkI5S0ZJekpNRFp2M090eVZVS1k3?=
 =?utf-8?B?aG92c1IwZGNycUV0ZUxycjZkRmlKbTJhYWhlTUZ5bmwrM1FmV2VFQzhVQ0w0?=
 =?utf-8?B?WFR4RXVJUCtlbTZYRmhKSnp6c1NiTUMycjM1MTFpQWVsVy9lM3hHZmZTWEJC?=
 =?utf-8?B?RkdyOEQ1WktzeHNYa1pLUEhiMFpvNWkwdFAvRGFaeEV3ei8yRHpmaDNuSzBM?=
 =?utf-8?B?TGY5UFhkVlE5Y2hXMm5QZFgzN3dwekNHR0JXeHdZSS9wSHdrbDJKQkhiQ05y?=
 =?utf-8?B?YUgvUDZidyszbXlGd0pjaUkra3ZYQWMrejNkTmpLTDN1N3V5RS9kUlo0M0lW?=
 =?utf-8?B?TFhFeG5UeTVsMmRqZmhUM2tCVnROWFBOenE4Y1U2aTNteTlYWHhucDFZbGhQ?=
 =?utf-8?B?TnhRS0MwemFpQjdUcVVValY4N2diczV5K1p5TERQV1piREE5M1BwVDRjS1d0?=
 =?utf-8?B?eEJLU0V1Z21mL3M3WG9oNU0wT0tuUHZTenZKaTFNYzdIdk9FY1QyQTlFL2dW?=
 =?utf-8?B?bkV4QWZSSnpIbHBBMHloWlVqRzVJUFVkNHIzTCsvZlUzMHh4Z29WMTFDMDdO?=
 =?utf-8?B?bzA0dGQrY2xSV1VyRWlaUUJVcXMxWGJ2WEFVcnV5VzJodDdKd0VRci9sV1VP?=
 =?utf-8?B?V25NalRWT2gwU1k0K05UVlVEM1NwNkwwU2o1aHdLSERvcWI3UjhwUXlpVkRB?=
 =?utf-8?B?LzB3bEljNm1XdW5yOWZxaVpoQmRmK1RZYy9TcklSeHFyazBhdG1ZaDVESTVR?=
 =?utf-8?B?UnpCcFA1RGlNRC9mU1ozVm5aSy9ocTJGcTV1dVY2dVlyUEVHWGR1aGFxek1G?=
 =?utf-8?B?Vk43dEZsSXh6QWc3TFFPWk9pZjVuTEhJYVZGVGYydi9zS2lrUktIWVgraTlC?=
 =?utf-8?B?M1JZMzJ0am85RDRUZzcwU1hqRkRVd0FUc2VuRGFXWjNSVHd1emZtSWJINlM1?=
 =?utf-8?B?RnVQVm9lMXdJejZSODd4YWFaM1UwclcyRUFENHA4MWFSTm16d1RZbm5hc013?=
 =?utf-8?B?cnRQNzZDYWF5ei9sRWFMMEZVY09jR0t3UjZIOHNPeFRES2VXZk1maVZtT2Yw?=
 =?utf-8?B?dkRPQU00bm9yeTRoWGlvRnRUQ2dMWFVYb3NpZHVlNzRUaGpzRUlCekxuNno3?=
 =?utf-8?B?VlNseVhsSFZWSllycmozbDMrV1IwV1hrazNZZnBYQkd3V0VJcUJDbTVZN1Ev?=
 =?utf-8?B?R09sVUJZOHlEWmxYODNJMDBqWUUwSmpoNUtyLzBacEhYckJJWUJjaXlxL3NV?=
 =?utf-8?B?WVZoTlFUbWh2M2JqVUZBRmVRY2RuYXJLdDV6V1lWcFQ5SmhYMXBhVXVUSXJE?=
 =?utf-8?B?RjFrN1VlVXRBQWRtZmF6TmNXMmxBMWc4QTV0TG1WWFZCMURrdThneEg3SjF3?=
 =?utf-8?B?RHVScGoxYmErdHFHVmMzKzVzNEp6ZENRTzd5V2xTdHJhSkJ1cXg5cGE4ME5I?=
 =?utf-8?B?S0pZTjJiSTVQNnZWSVk5Tm5RRTZpNHRwTFNPTTU3ZzgwUFQ4ZStJbFYyUzFD?=
 =?utf-8?B?YWNwWldTUk1ZU2dUenlQamZrck5Ebkp5S1Fnekk5eDgrRWtURXRjMC8vUGJW?=
 =?utf-8?B?N2cycks1ZXNteG1adHRVM0MvZFU4SkFLQ1JJc01RckNGNW9adFVDY3pOaUNO?=
 =?utf-8?B?M3NMUFpIazdZRlgwWEZTZUdVWXNMb0JES0NyMjhGUVYvaVFSRlFnNWp5dGZP?=
 =?utf-8?B?NWl3a3VuZEdEc3k3Y2tBOG0vUkdPdzBNZTJPRXZDQjI1aHl6bTUvUlp4b3Yx?=
 =?utf-8?B?ZWQwNDZkeVprS1BLRGNXMnQrVUJFbW9zWlBWclMvZWdSRGpOQjg0MzFXUEpL?=
 =?utf-8?B?WVRuK2liM1VOT0hSTGlrc1BDNnUrUmUxNkM3bFc3R1QvZWtZbi9iY1hWWUVw?=
 =?utf-8?Q?R80neWwtp+o+8RQQ=3D?=
X-Exchange-RoutingPolicyChecked: F7gIviuoNGcf/Cqe4zr8GA7A6FPgLeKM0XeVwzSwSK7JKFTU+EXIcDFflfKd0tnWxzNKxhwO3iz6o9FGsFo2QFo59MVBQ/3EkE7z8SBcIIzt+ZZVmnV6GrTt/hfPELzHt8sLATbrnwv+Xgpm4jCRCXY0z03nnvjm7sYrAfuzP1vsVQkTyC05s06oui7M4Bc6phsB2XlF9TF5FyYyOiTyb1zEYtcpxdFPAbS9YESntcnMDbtwN/1s5yO+OaktSfVoZhvDGrlX+AKy1kzNqrgrCQS5XmsDc63T1QoV3knHdOO0wCCbqBLz3zQiYh18FTj9a5GnQEmXP8oz9/aUh/eR7w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 44ec0bd8-9965-4e82-7632-08dedb3242a8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 07:43:24.7988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: adNa4QwQytNgdn+GpLhF3ZZW6DTt1amYqMERaKZqn5X3RfiZKzpaQ3gFnfS6k2e9jgZxI1uRyq+OGeq7nmq0y8kZU1T1M7wLXplHsVu4h1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:dkim,aurl5kme27ac:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6C1F70DBB7

Hi Jason,

On 2026-07-03 at 17:35:02 -0300, Jason Gunthorpe wrote:
> On Fri, Jul 03, 2026 at 07:58:32PM +0100, Robin Murphy wrote:
> > On 03/07/2026 5:22 pm, Jason Gunthorpe wrote:
> > > On Wed, Jul 01, 2026 at 10:44:37AM +0000, Krzysztof Karas wrote:
> > > > It is possible, when a very large mapping uses a single
> > > > scatterlist, that padding overflows scatterlist's length field.
> > > > This results in:
> > > >   1) silently wrapping the value
> > > >   2) smaller than desired mappings produced by iommu_map_sg
> > > >   3) leaving mapped bytes in memory (no iommu_unmap)
> > > > 
> > > > Address this issue by adding overflow detection for previous
> > > > scatterlist length field.
> > > 
> > > Urk, this is unfortunate, it means we cannot map certain kinds of
> > > scatterlists? Meaning there is a condition that makes a scatterlist
> > > ill formed?
> > > 
> > > This seems like something that needs to be more clearly documented and
> > > we need to ensure at least the common scatterlist builders don't hit
> > > it..
> > 
> > Well, it's taken 10 years to be caught by a test which seemingly expects the
> > mapping of a single absurdly giant scatterlist to fail anyway,
> 
> If your server has 0.5TB of ram a 4G IO isn't actually that large.
> Randomly getting a few contiguous 1G hugetlbfs pages is not even that
> unlikely. Something like FSDAX has a very high chance of getting high
> contiguity pages in files.
> 
> So I wouldn't be quite so dismissive that this is not something a real
> user can hit.
> 
> > here, but I suspect this is likely just regular iova_granule rounding
> > overflowing when the segment boundary is the maximum 4GB, since the largest
> > representable segment length is 4GB - 1. 
> 
> It looks like the iommu_dma_map_sg() algorithm only works reliably if
> the scatterlist entry size is less than UINT_MAX/2, otherwise it can
> risk overflowing when it pads.
> 
> API wise I expect any arbitary input to sg_alloc_table_from_pages() to
> result in a scatterlist that iommu_dma_map_sg() will map. This
> patch highlights there are cornere cases where that isn't true, it
> should be fixed..
> 
Thanks for your input!

> I agree we shouldn't overcomplicate iommu_dma_map_sg(), so the
> simplest fix is to introduce a SG_MAX_LENGTH set to UINT_MAX/2,
> justified by the logic in iommu_dma_map_sg(). Fixup the core sg_alloc
> code to respect that. WARN_ON in iommu_dma_map_sg() if a malformed
> scatterlist entry is presented. Add a WARN_ON under DMA debugging
> kconfig as well for the physical path.
So instead of addressing this in iommu, we should focus on
guarding in sg logic to prevent the overflows? Or would you
rather have this as additional, separate fix placed in this
series?

> 
> DRM would then have to generate scatterlists with a max segment size.
> 
> Jason

-- 
Best Regards,
Krzysztof
