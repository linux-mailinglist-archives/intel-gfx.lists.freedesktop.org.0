Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93BBBDFA01
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4085410E87F;
	Wed, 15 Oct 2025 16:20:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WhnUQAj4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C9310E87F;
 Wed, 15 Oct 2025 16:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545253; x=1792081253;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mLYVVJQn2xHuKNj1WCg5FDbPWXM+lSq7Dse8M4BApEI=;
 b=WhnUQAj4G0uFFOFH/G4Ugku0dNdW1YL2L1ALWGanYhf1MJHqtHyM4xdq
 RZzU4VNmYaHxHc5KCNjt8iEbBqXfK0/0q1Dvy4YM1paV1tctENFCS20Jc
 ZKezQoNhhvlNUaAJSlNaILQ8XX+qYrWmJYusdjvYCNk29fhXTj54qWjof
 y1vRH0eP20w1oQSeT1UGDuRrO5Jlt2tjvbjCiGuZ33uZSXsk1tjkO/Y8I
 hCiw86o6gAyvei7D8sIdufQnlR+rpphoMzVx43u4bja0bBd9bTanZ4Iig
 n07zje+lrGqHnqQ8PhlTcnMmhyZAwQpeHx4Xr9GHU3gjzotUtM/YxADKa Q==;
X-CSE-ConnectionGUID: R3HCAO9eTvqVaHkBwR44Ow==
X-CSE-MsgGUID: JMyYtI5tRI64NQre4zzAeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837360"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837360"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:53 -0700
X-CSE-ConnectionGUID: jb8OQsGTTZKNlM7bFuESSg==
X-CSE-MsgGUID: V5W7DjOmTXGSt3TUbWutgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344836"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:51 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UNB/sHAZ1DIv3WKYhOLzSVzmneOBBDObkO0n4J/3ds00FCxFRtUX1rRyHKHZBlu4ppAcYd+zsStW4+Jez/wHu6qU7jbdFv63cvH23W2OtIKaOtXkuZ4LBX2YRw+Pe+wwafszjPlGOhbTJhz0L40KZLWRqOQEK73XiHDXbO9EUUFYGKb0MxljNUReW7iUtaRHmqQND1nvXuzBOlTE1X47+Nlvg0Bs/pyhS5+RxTZwprkHHFqQIuCjezV80jb+e4urHsQjwGPAjnyw6llDMzXKLh+DKWQXcd9PqRqkD4Qya0dlCM9ce81cLBU9AG8e9W9M1IHGzkBTc//Lir28ywB0kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5pgL7IIXoeJLEwg8NDD7grT9gACTVN84x7dnrInabEA=;
 b=A1mORs3Dol8wQLQvMFObp4UhP1flWZs7SzHn+tb/1QO+WZIjJOk2KRmPRtYjz0MpGc6lfSgBV3s3EN85+eovsSTQsuiZ4xya4P4kN/Sv8se6AIE1RmuLWtpGmjSdM1AWdhpoUfJLopi+kfMTE+N1RWRA65/mts2qGZNXpyXaqZnfFZQF/DkJdPDWLwoNffvnSozmHT5GZ7NELX9DcEJ0/JbFuqdTMezEMeky6oz5Ws3m9XavRe0/CRHbt7AspfxUU3NSZilWmZkNJje1s3NMAgTHGtmgCv46Sq+py+KFtElVLdXwsxDeGsUqnJI3llNkGKP573RQFRZ2VYaRt1cEBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by MW3PR11MB4521.namprd11.prod.outlook.com
 (2603:10b6:303:55::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:49 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:48 +0000
Date: Wed, 15 Oct 2025 09:20:40 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Ankit
 Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 05/32] drm/i915/dram: Add field ecc_impacting_de
Message-ID: <aO_J2B_1FJ4Y7Quu@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-5-d2d1e26520aa@intel.com>
 <3a8d9b266399ddf75dcd173e86b57d5b1b7635fa@intel.com>
 <176054481318.3168.14888319303121640191@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <176054481318.3168.14888319303121640191@intel.com>
X-ClientProxiedBy: SJ0PR05CA0149.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::34) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|MW3PR11MB4521:EE_
X-MS-Office365-Filtering-Correlation-Id: 67586627-aaaf-4601-6f47-08de0c06cd2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmQzQU1kSzg1dHhxa1lGcFM5Z2x0RmNyOERyVlg2eVBWSGdMbWRtVjlTY01r?=
 =?utf-8?B?Sk1qY2ZwSm8wNkdQUXU1cWZZbDd5TXBicDcxZVNuOUJ5QU1IeGQ4VnJwUDRW?=
 =?utf-8?B?VFYzTEpqWENBd3BnRlg0TDlDSDJMSTNlaVdzK09LOFF1UU55NlhMUTcvK2w2?=
 =?utf-8?B?b3NwTjVGdHNRQjkvYm16OGlYN1hTNytTK2dOVVV3THd1SUNwUjhqVXV4UkVK?=
 =?utf-8?B?akswdHloN3BhTEcvN2tvUzh6ZGpHT2NFcXVMeVlhV1FDQWZEQTM1enVHRkt1?=
 =?utf-8?B?YW5GZGdCYjZUa25jREhvT0hTMTNtcFhXQUlKcmZhZk4rbXRjWUU1RE13aGhF?=
 =?utf-8?B?MzQ0aGlPd1NMUHUwRDJHM1F1dGRlc3kwL3dCenp6STJMSDJIQ01GbFFEeWN6?=
 =?utf-8?B?VWZYUVpVZjRzeitsQVljR1pkcENUa09SaFdaM2x6MU5xWmVsYXhCUGowQW5y?=
 =?utf-8?B?Vy8rZWZ6SkN4T3dWOW8rZTgxejl3STlkQkVDbUZsajBqdTBoTmZtclpqZ3VN?=
 =?utf-8?B?SUhhZUVPZEd2d3FUaWVGMEM4aTJJb0p6cmJrU0VjeHRueG4zT0R4MUhqRlZK?=
 =?utf-8?B?Z1NtMmlBTmtaVTUzYlYxZHZvSW1xYzRRL2duMk1rYkNoaWlsUHAwUHpuYUtD?=
 =?utf-8?B?eGlIdmRFMTRuNTlMWmxnUGpMa3BwMUFPZlBjT2R2WjZzSTdDcWs5aUl3Q2JC?=
 =?utf-8?B?d1ZuRncyS1N6V2tLbDhQV2NPYncrU0c4alQxZHd2Kzh4QkZYZWJzcmhMTlho?=
 =?utf-8?B?eEFjdmIrb1E4R1VJenRBYzNsSVFvaVFWYzdkbmVPd1pzdmk4OVl4UW9QWUxY?=
 =?utf-8?B?ZzZMemVpL0pUQ1NrSnZTMk1zWXovdlN6dnloZGNTUFluY29BVXgrMXcxc3Ry?=
 =?utf-8?B?ampGeis5NzhzN0tUNmF0ekZJTmFZc3krYVZxa2FWZFRxV3VuVmxNa1pObm5m?=
 =?utf-8?B?RmxFeGRlRk91ZDcyanExVGJ0M2tzc01xMldZQVMzQU0vU3U4NWNJbFE3d055?=
 =?utf-8?B?RzRRYmtqZy9jVzdQWU1OMWh0ZkNCd2xmQmhQVURRU05lRGdWUnFLNlhuSDdN?=
 =?utf-8?B?c3dVWXlrRmhDUVN1WGFvVmFHck5LcEhBL2U1bEtlVHZpUGVtQUsyamxQTnNN?=
 =?utf-8?B?bmYvN2RmeFdiSXV0cTBxZDlrWDZUanpMckpjNVV4cEFwNlFzUXhOb0kwZjRv?=
 =?utf-8?B?c3RodkJibkhISlJ5RGRoV0R3bkFOVXBCdFI0cFdwVTJUb2dJR2Vqb24yVi82?=
 =?utf-8?B?dnpNNk5LRUE5bE5ualQ1aXM4ak1OZGtFTXNPT0FtSXFrUlJPaGFCdG5Pc01E?=
 =?utf-8?B?QnBHcFFTSnQ5UlA3ZWljbFNObVNWVkFGeWRaemtvb3pxeU1nREMxWFFDVDNj?=
 =?utf-8?B?YnkzOFNrektFNFlSbkZCMmU3dXFtQlFKcFlpcHMrMUVaeFdrZ1NvT1JNank0?=
 =?utf-8?B?SXFEU3RucmU0MkMzWERxdU15cmxyYUVNMGtReVpodmpKTGtTLy9qYnlNT1Y0?=
 =?utf-8?B?UUVpdFJwZEpydW5BSmpUdXdnZmVoTDNhYmFNRjVTU2NlSHAxUUNjYXJmSFhJ?=
 =?utf-8?B?QSs2OVZNVkMrM3dabjJjWk1IbmVJeHlNVWNkYkVZQ0lCYWtZdkRtdTgvT3h1?=
 =?utf-8?B?N3JiVzU2bVpJK3NsWmhUY2kvYWhSR0c4UzIwcnFqQ1hkWXgzRmJIME81VGkz?=
 =?utf-8?B?QUNoNjlNNWNmRG1QY0hjRnFvazJxcW1SVWVxTHlrR0ZhUkFTNnAxRFFaYnBO?=
 =?utf-8?B?V2RwV2FWcGhhcTZGU2VDT0FXdkdYRitvQjcxMGFUUjd2dXNwdGZPeWJ3cG9S?=
 =?utf-8?B?aHVxbk5Kak90S1JWSi8zNWpKK2ViN0YxTGhDMjQ4K3NTcG5nRmIrSlBRQ0R3?=
 =?utf-8?B?VzVOUytTSis4citjUGJiTmZDQXpnbU90bnlwVXB3YU9jZ3lXYmNsZGFBK2NQ?=
 =?utf-8?Q?LroKxSVXp4GqfsYhfic3jA2vI1ea5KXX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N04wckl0OFFpMytlajVKTVRIOURvS0tvSDZHNTM5R0hvN2JvSGtOS0NHVGMv?=
 =?utf-8?B?RnR6MHIxUXFueS9DQkQ0aEtvZDQwNDRWNmIyVmI2elh2WTVib1JmbjdKbUtD?=
 =?utf-8?B?MWdzMFJRc2hUc3AvWXBrZlVyMU9PWHJ6bzNQdmNVcjJybnUxbytGTWtwOTRH?=
 =?utf-8?B?c3RTOWZncFZ6eitYc01mSk5taUU3azlVNzhGeGs3dWphK3FsVFNOVXh4ODlm?=
 =?utf-8?B?QlB6ekVrV2pQWmQ4RmlaSzJONzhWWldIRE56dloyd2lDb1ZJZU1CU3M4aG8r?=
 =?utf-8?B?ZldVVjFtQjh5OUFGL09sTE92em1rZWswL3NTQmxPZ0NvL20yRGQxQmhiSGJW?=
 =?utf-8?B?SnRvSHUzUUoyZzFTaTJqMHpZSHFWbWt3TThIUWFKbDNzNUxhUzhCVk4wWmJG?=
 =?utf-8?B?UGkvMldOcXVyV3NkOVJ5bnlYb3FrNDQ5L1pNREFoemR0dnhBS0ZDck9vL2U4?=
 =?utf-8?B?bHA1T1doc2hpMXlmQVpCMGVMaVpFdmlLaTZRcnhoQ3BYSzhWU0hwOWtiNjVD?=
 =?utf-8?B?UnBHWXh0bXlRWjF2UmZWaWZOcXFqNHA1NlhNcWM1MzZ3WUx4SEhjZ0htcWU1?=
 =?utf-8?B?MjhYQzZpSVpjTUdKaXIwYlhXS0EwdEZ3Y25xWERydWRBTlBBaGJQZXNUMWUx?=
 =?utf-8?B?YzZETUE4UE13bXdiQXNOYlZZOXAwMStxcUdQcUJJdlArSFhrNTdjV3liNkli?=
 =?utf-8?B?RGZZOExidERCRHRKUUNSMk9vczQ2Z0RrWDFrSjN4TVRRU25xYWVCc3hrVjR0?=
 =?utf-8?B?Q2l2djE5SThLNVU3ZjlEdHJNbko4ODd0U2tEaWh5WHlRdXpYVlhmRUFrM2xE?=
 =?utf-8?B?c1hpWHRxWGwxL3I1MzBFdnNLNU10RmF3ak1xa1JUWjdlNEQ0dUxNd0NGcjQ1?=
 =?utf-8?B?NXBxUnJMWjJadGdTblFJc1djSGNPUjhXMnhTdnBDS09zNUJBbVNnaG9DZWhr?=
 =?utf-8?B?N0VLTk1GNFBYSG1uNXd5VitxaDB3aTljSHB3SG9KczZqelZXeWdKRXAzQU5Q?=
 =?utf-8?B?ZXVWb0M3RWtLTWEyREd5MW5CQ3RjL3pMbjRYSWJVV1pVZ05oUFlIYkFlREU5?=
 =?utf-8?B?YVVEQ2VEc2RYVlNkUHkrakV3MG9HUU9xdE5oL0hqUFFXbjdPeUNVY3NodURV?=
 =?utf-8?B?YTFvaGxCbXJGTTlpbmFqRk1sRDdZU1FuTVVhdGZ5MzJkYlU5NUhZTHF1cmRF?=
 =?utf-8?B?VjhLeVJiQmt3S3ROWVUxRks2VU1vVi9tODBnSVdsL3NiekNyU0NCWjdTOEdn?=
 =?utf-8?B?TVlKeC9WYWtyeEdxR1dQbW11LzRSOHlKU2ZEMDR0OHM2SGxEN3BERnpxOXJ0?=
 =?utf-8?B?Z1o3eHFscitVNkJZQ01aNVRmSjBhaDRSc0VzMWlHVGhzdzJkUWlSTzFkOHFT?=
 =?utf-8?B?Y21XUUVSQmJ2bUxzS2F2aFk5KytSWEgyU0RwM1ZuZUg1VkFvVWROUFBJek5H?=
 =?utf-8?B?djBpS1NvL1RXNUpnbHIvWmVqZ1M5QTZIN3VCYWV3RU1CK25MeVFBSHJVUGJk?=
 =?utf-8?B?MkhqR3FrZ2NqSng1NXF4YVB2T0ZpZEtTVUFNNlF4a1VsTDZEbEFiUWdzN01k?=
 =?utf-8?B?c2daSFdQTm5TUGR2WFFQVXVDeFZMNCtKNHZ5NmdNcVdpUEs5RmUyQ3hXRWdY?=
 =?utf-8?B?ZHc1dW83TUo4bzF5czgwOU5sa2FvaGRoQWxCREp5WENmWDhtbisycVRxVG1S?=
 =?utf-8?B?NHFRSUo3aUtsTjRpSjl0QU9yaUZhZnU2Q3V0aGVVM1E5ZjYyR3NZY2dna1N1?=
 =?utf-8?B?N3NkYTNGREdTeUc4ZE9JRU9LS2VmSDFEOFlXYmFCOFlweXphMEVkUitPNG10?=
 =?utf-8?B?Zks1SDVSQjZyVnZyTkJ0YlhZRC9wazB1dDcxMkVMWEk0S211V0xPZHg5dnAy?=
 =?utf-8?B?YTlLeXp2T2RnVHhVTlZibUs0OHFZSy9JQTV5ZnRCNU5CWjdUZWl4NUQ0N0tB?=
 =?utf-8?B?Rm0zRHVrWlN1aFhQQ2xLS3MwN3ZKTXd1anJsRC9yWmlJbVl0a2VvVTlQb3pq?=
 =?utf-8?B?VnE2WVNHQjBsOHVmMUEvZUZoM0FURm9yR2dMRk40NWxHaFQ2Z0ZrT3JxUGcx?=
 =?utf-8?B?K1dQaXIvcTRJemQ5aGx5OEVEOWxISzlrR05DbWovdnpMbWZKTmRMWENxd0o2?=
 =?utf-8?B?OUVxb1JyYy8ybzQ1RE9vN2FZdVpKbVFMSGk2c3dndGNCZWU2L1ZYbWFZTkI3?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67586627-aaaf-4601-6f47-08de0c06cd2a
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:48.8506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fs4csfJSCWC/cgFLZpoQC1ze482yJADb+D+9FuO53/L9nuAQTt8dRKRvi5s+o0Rf4l+GpacK85U6AsUpE8xdIBmaJbU/iFWPGxZX/mF+vKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4521
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

On Wed, Oct 15, 2025 at 01:13:33PM -0300, Gustavo Sousa wrote:
> Quoting Jani Nikula (2025-10-15 11:46:52-03:00)
> >On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
> >> that indicates whether the memory has enabled ECC that limits display
> >> bandwidth.  Add the field ecc_impacting_de to struct dram_info to
> >> contain that information and set it appropriately when probing for
> >> memory info.  We will use that field when updating bandwidth parameters
> >> for Xe3p_LPD.
> >
> >Could the field name be more accurate than "ecc impacting de"? It sounds
> >quite handwavy to me.
> 
> Well, perhaps the innacurate part would be the generic "de" instead of
> something that refers to the bandwidth?
> 
> If so, would you be fine with ecc_impacting_bandwidth?
If we're going to elaborate I'd prefer it to be ecc_impacting_de_bw
1. It matches the name in the first part
2. The additional context talks about what changes

MattA
> 
> --
> Gustavo Sousa
> 
> >
> >BR,
> >Jani.
> >
> >>
> >> Bspec: 69131
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_reg.h       | 1 +
> >>  drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++++
> >>  drivers/gpu/drm/i915/soc/intel_dram.h | 1 +
> >>  3 files changed, 6 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> >> index 354ef75ef6a5..5bf3b4ab2baa 100644
> >> --- a/drivers/gpu/drm/i915/i915_reg.h
> >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> @@ -1233,6 +1233,7 @@
> >>  #define   OROM_OFFSET_MASK                        REG_GENMASK(20, 16)
> >>  
> >>  #define MTL_MEM_SS_INFO_GLOBAL                        _MMIO(0x45700)
> >> +#define   XE3P_ECC_IMPACTING_DE                        REG_BIT(12)
> >>  #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK        REG_GENMASK(11, 8)
> >>  #define   MTL_N_OF_POPULATED_CH_MASK                REG_GENMASK(7, 4)
> >>  #define   MTL_DDR_TYPE_MASK                        REG_GENMASK(3, 0)
> >> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> >> index 8841cfe1cac8..bf9f8e38d6ba 100644
> >> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> >> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> >> @@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
> >>  
> >>  static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> >>  {
> >> +        struct intel_display *display = i915->display;
> >>          u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
> >>  
> >>          switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
> >> @@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
> >>          dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
> >>          /* PSF GV points not supported in D14+ */
> >>  
> >> +        if (DISPLAY_VER(display) >= 35)
> >> +                dram_info->ecc_impacting_de = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
> >> +
> >>          return 0;
> >>  }
> >>  
> >> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> >> index 03a973f1c941..ac77f1ab409f 100644
> >> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> >> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> >> @@ -30,6 +30,7 @@ struct dram_info {
> >>          u8 num_channels;
> >>          u8 num_qgv_points;
> >>          u8 num_psf_gv_points;
> >> +        bool ecc_impacting_de; /* Only valid from Xe3p_LPD onward. */
> >>          bool symmetric_memory;
> >>          bool has_16gb_dimms;
> >>  };
> >
> >-- 
> >Jani Nikula, Intel
