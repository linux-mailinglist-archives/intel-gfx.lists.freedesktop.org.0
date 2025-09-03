Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AE5B41AD1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 11:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A86C10E124;
	Wed,  3 Sep 2025 09:57:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTnrrtYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428E310E124;
 Wed,  3 Sep 2025 09:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756893450; x=1788429450;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oMewfowb2CPGWy6hX39EDs7PiNzRx2tUsllyjIA/ujQ=;
 b=NTnrrtYURPZtGwS/jADmyEkmYTxVNq9QkUkVq00pZ0s8Mrm2R6dF7PRy
 iTB9lwI+S7ZbG7dwEP26caVoZilNfiq12q1r00P2xhRadln2MRC6iY8Hx
 ZasvaHeKq51P5oAHTYIiuB2hfAGtQ2knj+Pdh/kj6cEn/2ZZgEYzPBgRU
 yiK6pJ5a2aVH+RYimoFk/DhyGzko8GWJFusWs3MlxwAAwp4nVuMP69lkm
 oRxbX91ip6XDHr1wyFHi7ImFj8NXN2Diy6MpDSJpjWjEzxhdeLHgQOGAV
 drEKextkwwhx6QSeSYYAvYghqji3c+wZH2oOvnyok9vNhqWMXr5c13FRF A==;
X-CSE-ConnectionGUID: lQWzxnQwRcOxpKQDDQzA2g==
X-CSE-MsgGUID: 4lZ0jkEAQVe8INSTeMbjbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="76643669"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="76643669"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:57:29 -0700
X-CSE-ConnectionGUID: 52LM/QziQmWmn81ytoI+Eg==
X-CSE-MsgGUID: hkHTBmXyQymB9NCIVAQRxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171100534"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 02:57:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 02:57:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 02:57:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.72) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 02:57:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cg93LAQc2eB6vIKjbpJdABVbrd367xQacbBFMXbt84s57otWT8xKeVA/8chDhRElSNBPWxzZ4N/sLMKOvyUTF7i18gSxYuZQRxb8H7OZEWkTIVlLq/s5+kevi5UpOetd3CalBPhLcl2bM5Kh6rmdXWpnbAPvzyeTDo5N7XWzarA/T22MLJe5hM2glkrPwZvBlSi+bSvdQfytKa63Nlx2a63608trvdNRzrufMN0W5YQva6vJ+qLVXq+WfxE5UdWx4PMVH1jPDNyEV2wEuCrrtXxssj0gR1K/C6MlIxLZZtjiaWv6kKdnCyi7lb80Lf9jZ4vLI2Hx/3lkc2ul+/PRxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cA593WdLDWrAtMkE3Hzg/PlfNK7SDkqQkD1t6FuqqGY=;
 b=d4dE+tY3wxzoCnMe0D85ynnh0eA0JCVGcP/PRiSHKfHKxBR6h/1xKtgTA7+rC69gRr2XEFuYtGEmhfrRKAdxcRcAFKpgsUDxJK64HoD4Im9xkANhLsyofjWIWpvZw3XYVAnPSnoYCDokAnvpB27CnHJzmseb2JQpl1KwsaGCZvuGLet7tdxkhRMud7gqc5OmEUmvfnVXlg8a6pufZzaRr3GOIkO0n0YSjDdwTROOmVckgur2Mk/d8DUDmr60ZQWmoISgbs6lZEpXTDcDaQsHlpq0mqSDe0TRDtDnFEyfK2u1Kw9SvP7gFrUtHNHl8QenO6YzW0EnEScuf4ggiBUwqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7453.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Wed, 3 Sep
 2025 09:57:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Wed, 3 Sep 2025
 09:57:25 +0000
Message-ID: <bdeae305-c155-4a6e-9d6f-32f44d425ebf@intel.com>
Date: Wed, 3 Sep 2025 15:27:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
 <29e10fcd0e9bf9e995739cf53ae8f49544ebb06a@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <29e10fcd0e9bf9e995739cf53ae8f49544ebb06a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0043.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7453:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f0037da-a27a-4771-c19c-08ddead048c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTgxM1JsZ0RGZWtmSU96VDVRakFnU0tXR21DN29tZFFDMXZVZVhuOVdpRktT?=
 =?utf-8?B?VXdpY2QyZTg0VW0ydkc2RTVuRVRkTDVETXJ4bFBhdmQ2dXNDWjQyejhhQVgw?=
 =?utf-8?B?K3hQU3FZS0JvWDNnYU1FZFkxZXUrcjNsbFBzbHUza2JkUitlOWxYQWRFUm51?=
 =?utf-8?B?ekF1SzU5akNjODM2QUxFc0ZBSTlhN3Q2a3dnZFJ2TkpjTjJhamxOcFZObFhJ?=
 =?utf-8?B?UXdkVTk2SkF6bDZrbHVQUjh1eWdUb2dkZFp4OWlTWW92eUN6dEJCbDZpeHFT?=
 =?utf-8?B?MkFoRUxnM0ZXd2NyL21CK3NUSlM0b1dmVW5OMnkvRkJlVWdRRS9wMmFOV0lD?=
 =?utf-8?B?ZFk2SCtsbTFnN3pJY0RzdS9TWStLTDB3TDd4MERXek1TRTEzcWRoNzd5ZS94?=
 =?utf-8?B?cVQwS1ZNTi9VTDJsVE81eWpheityY3lvZy9DNUFBUmt6Wkp5MXYza1ZnU0RM?=
 =?utf-8?B?aHVLY0hPMDdiS3ovVVJRdnM3Wlo4RCs1Rjlkd2xwL1IzRjFjQlJTV0N4SStJ?=
 =?utf-8?B?eDhBdFg5bDdWNkN6M0xlR3Vwazh0K3BPMHdrcUI0OG9NV2QrTENoTWtiT0NG?=
 =?utf-8?B?MldDdTh4bVFPYm12bEJuYjVoZFFPRUpPckplK25OcTJCSVh4MkhCWERZYWNV?=
 =?utf-8?B?NlBpL0dHRTU1U01CMmIzZllRcVF5VzNQSWdiWVdsTDF0Y0pucWNyMmNsUVZR?=
 =?utf-8?B?Y1Jtd1dLcStXZ0k2RmZ5WVhsNXZFcXJjNmtTU251Z3J5dVJYdERjUkJFcEJZ?=
 =?utf-8?B?NTFCMjFCRm9KWEQ4d1kxVmRGRHN2Y2lnbC9RbHZ5TmdyaEwrbmtISGlNcGpI?=
 =?utf-8?B?ODhzTnhmNU0rRWJzOU5XZEYxaHdJMVRwNDBvaW5rR21ZNWVZSVNYOHpJdWJE?=
 =?utf-8?B?VzhVc3kxejZvSE10c2V5OEZXTE1JODNaZnowN1BhK2NMUnJwVFRjdlZSbmlY?=
 =?utf-8?B?aVAreDh4d0EyY0EzcFJJMDMwcjB1SkU2d3gzYmxkWnVLWVBrcTNTWkFBTk04?=
 =?utf-8?B?YUw0WGEvbmo1bndHZ0tSaG9rdnRIYmdaakRkSzlRVkRzT0J0SlJlREZVWHFH?=
 =?utf-8?B?Wmd3NUhrbWxkUVFDbkx3WUJiSzB0Z21rbTRlUHZsNVhyN2hlZm5QM1ZvSEg5?=
 =?utf-8?B?YUJqSENjd2dUOFFRbkdjSVZoWEVLZElncHRIZTdQR2pqS0l5TFpjSjZWR0JW?=
 =?utf-8?B?b2szblVmdXBhb3QzY1VaMm0rUUpXZXJWdVVvTjd4TFhlQXB0NElsS2xONWR2?=
 =?utf-8?B?bHNFT3BLQWRtY0hjR2JkQzJqNm9TTGxNL283TnJqNlRCSFNGTFk4elp1R3dm?=
 =?utf-8?B?WEtSY0U5SEpNOTVTLzI1REpmUXBXTVF4SHg5Y0s4Ry85aVdnQnpzbzBQUjM0?=
 =?utf-8?B?Y2F3MTB3MkZ3ZHZwa2Y3N29lR01VOU93RjJuNnV2MWxPMTZROHVXdC9uWkZO?=
 =?utf-8?B?VGV5ZzJjS3ZjSzdGUDg5TFRHKzhTaFkwNkNVWVVNVnBEUENyZlpXdVpUaENP?=
 =?utf-8?B?akNUV2RzUFd4M0wyRzk2VHV1Vll3T25wOUUwZHZOMTZOOWp6OC9yeFlTWnJ5?=
 =?utf-8?B?MU9tcWJYZUlKQVFRbUh3R2ppLy95ZVJoczNLTU9yWVlNVHpyMGlNWDBsWCtu?=
 =?utf-8?B?VjVPaUdiUTN2OXdZdEhmZzNuRWpQSlF6OUxmMlZDODFqbDFQUEZhT2owL0Vl?=
 =?utf-8?B?aEN1N3Flai8wR0hBTmp4blIyU3pBbFVidFdJNEVvQ0xUM0hCTEdhb1NvMjdk?=
 =?utf-8?B?VXp1ZlhNVkhQYktBZ2ZkN2xncUNhSzM5SzVVa1VDTUlhT0IzYlRuV1NpR1Ur?=
 =?utf-8?B?RjlkclpmZS80R3VSU3I3VldOcnVVR3NEdUpJckNMUWVRbzRvMGc0WnFTMmlQ?=
 =?utf-8?B?S2swVnFHa0JsdzBJMjRrUHRLclp6aXBLejVObUFGS0E2V1NmV3FpU1V3N3lM?=
 =?utf-8?Q?NAqw1wBGA+w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1BYZGVUek9rdjQvazRGSmtyRlJ1cjVUcXVpYjEvaG1oNUhpUU5Xa0dtaUV4?=
 =?utf-8?B?R3poZGRST1NmWnhpdG92eTkyQllyS0pUN3BUTnZHenYxYTNXRkUrNGFoVFhY?=
 =?utf-8?B?UFRCZ3ZUNDlGRXQxUC8yU1M2d0ZSeTZQb0hIZk9BV3ViVHJXQURMUXE4ZXdr?=
 =?utf-8?B?bkFrVll2WjEyNW9MSEZKWWZ0Ynd0eWJEa21pUkthT2dWNXlmdHNMa3NDSC8r?=
 =?utf-8?B?L0NZcHpuYlhHYW9KRSsvSFlsQmlDclpIY2FDSkx0MHNEMmdMUTJBVzMrTGFK?=
 =?utf-8?B?ZVUyUDdEa0NRM0JtMkhRbTJacTRTU2NhTkRSZmhkRytlRzR5WHpNMGo4VmJU?=
 =?utf-8?B?bUJheE5lbWRaNjRFOGxpTjhDUUdtZHBUSk5kSnhwakttMHAwMGRmTnpheDBa?=
 =?utf-8?B?Q3ZUR0l6MjJOWFVlaFpVSVNub1hWQ080NHhIYnVBSlRFcTFHWThrdnJEWXF3?=
 =?utf-8?B?NEVmdFJxSXdIZFVrcmdNS0w2UCtzWXRJYnh3d3RKUEw1Umpwc2o5M1F6ajRJ?=
 =?utf-8?B?RDQrVnRhTzhscVVKRGVobVR4aC9mV0RwaEROM2w0V20xay8wNXUyZW9Md0Nm?=
 =?utf-8?B?NnI3SnRORkV1YUdrc2ZUT1hwamZxc0E5eFhBN3ArbmVSMk9vUkZmQlB3aEg3?=
 =?utf-8?B?aEFjdkh0b2hvZHlvdE56azlIY1oweC90eDhMa3dYWExCNER3T3Z4S3dVTk52?=
 =?utf-8?B?YXJnZWJhTEFtT291WlFvWDV2QkgxSktXbElUMG1ML2RSQ1dlS095RHFlcjBD?=
 =?utf-8?B?cWpBS0p0NVlBNG1iVzVoOGlqK2xjU1V5dDZZM1ZQa2JmZ3VpajExakpVVU9O?=
 =?utf-8?B?UjFmTlpONEdkbWFyaE5SdnZ3ZEcrdnc1bXdKSjY2V3UwWkFIdWNKMmJRa2Ri?=
 =?utf-8?B?VTd3SGNpVW1FRlhNam8xN2lTSkhjSUFtNndCc0hoMkgreWdSMkY2UUJ2Q3o3?=
 =?utf-8?B?V3d0SDBtTDZRVE1JWjI1SWFXOHZQdWRrdXRCOEFQWHAzMHNTWFBNZnlYUzB1?=
 =?utf-8?B?VlRKcGpVVXYyNWZLVE1Wc21mVmZTN2NtR0JKYVNKSFZFRkZTNlRvT3h5Mk1B?=
 =?utf-8?B?azZjSnUrcWFrSnRGUWJ4Z1JBTklEK3NKeTNQbWNSaWhPS05RNEFKTlAvM21C?=
 =?utf-8?B?T1dFUnVOaVJRWWY5VjNDT2J3VVJtR0V3a0hEUWlSWmx0dW1vbG4zQlJKMFRQ?=
 =?utf-8?B?SmcrSEFIeVZzcHBUaFJrZFFpaWRpUEpwdlpja1NYNkwrVjJNTkJNQjI2Tm8w?=
 =?utf-8?B?RjdhRjhWNzBpT3ZBWUExNHN3cVFzZmdBQXZwNW9kM2FqUVJ6NTl5TGdPWGhF?=
 =?utf-8?B?UG1BYW5qWDkwU2RtZHgvc2NMUmJ3cXBaUVQ1Nkd6bUd1cmpadzIxSlQ1eW8z?=
 =?utf-8?B?Y2VYVkwyOUQ4QkswQzI4ZWZ5YzhQa0VVK0RDd2dVMzBvN0FrRHQvNDNFYVhx?=
 =?utf-8?B?OERSTWtWRjdaTlFoVjBEWjkyZVMraEd3K2JLMktNcFJYSjFPMW5NanNEbkRw?=
 =?utf-8?B?SmtVQit2V0kzdjdZWkNLM2dXMjFXSVJveDhyVU91WVBZKzJzWWliSnNpKy9o?=
 =?utf-8?B?d0p2eFhMZGtFdlFHczF2R2kzcVMycVlpNGZEeG5mN2lwdis1eU5UWis2M0d3?=
 =?utf-8?B?NEllVkI4YmtWcXRwZ3FjbW5kTmJNWEIrSjZGZGRwN0ZDVGNvS3lGd2VWelZu?=
 =?utf-8?B?cjhtTUdBSFNVeEUvcGkwaE9qQzl5WlViaUh3SXZLWW84YjgyYmVkay85K3hV?=
 =?utf-8?B?UmdHdUlWa1JOV3RmNUVQdDdqVjVTSEdIVHZ1MUlxUDZodmxCOSt5TUdIeDFU?=
 =?utf-8?B?ekNOUTVwbVFoaXo0VlpDZVEzL2llY2xPL2lCWWxhblF1dlNPOVpHQ3E4M0pp?=
 =?utf-8?B?STZzNTRIZlZtUWNuR0ZGclNEQmVtcUVwY1JXcmhuNmo4MTg2WlpWMVlTSVRj?=
 =?utf-8?B?blNWVC84bXZvVTZuaU5LQXR0aDZOT1FJRFhHOVFzTXRmTjhsbk1kOFhwSDFS?=
 =?utf-8?B?WUwyT1VjOEgrT3c4VVBZdlJ6VmtuVHk5VlNBNWU4NDlPVGlLQVJvcjZNOVFi?=
 =?utf-8?B?Sk9zbmx0T0F1OEwvVU1raURlWXJUMGphRGk3OUV0OXYvNWxIR3JzSVRucUxP?=
 =?utf-8?B?Q0luNXdIK0Foa1pZaHluT1VWRWZLVVRDZTBubUh0SlAvTk9KRzN4ZUVnVGhY?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0037da-a27a-4771-c19c-08ddead048c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 09:57:25.2657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JSJ117n53LyNhlNy3tXr9RF8q8DqMen8gcQr917zDpTPkUB2XAN7QRGOhgOEsd6gJo+p5y/4+Xun0LyKzJTAfmE7DCFiNsxD7PPD0ThZo58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7453
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


On 9/3/2025 1:07 PM, Jani Nikula wrote:
> On Wed, 03 Sep 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The helper intel_encoder_to_tc() can potentially return TC_PORT_NONE
>> (-1) and cause overflow while computing ddc pins in
>> icl_encoder_to_ddc_pin().
>>
>> Check for TC_PORT_NONE before deriving the ddc pins for TC port.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 12 +++++++++---
>>   1 file changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index cbee628eb26b..85f70cedc40c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2791,10 +2791,16 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
>>   	struct intel_display *display = to_intel_display(encoder);
>>   	enum port port = encoder->port;
>>   
>> -	if (intel_encoder_is_combo(encoder))
>> +	if (intel_encoder_is_combo(encoder)) {
>>   		return GMBUS_PIN_1_BXT + port;
>> -	else if (intel_encoder_is_tc(encoder))
>> -		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
>> +	} else if (intel_encoder_is_tc(encoder)) {
>> +		enum tc_port tc_port = intel_encoder_to_tc(encoder);
> intel_encoder_to_tc() can only return TC_PORT_NONE if intel_phy_is_tc()
> == false. But intel_encoder_is_tc() just above means intel_phy_is_tc()
> == true.
>
> This case can't happen, it's a static analyzer being overzealous.

Agreed, in this case tc_port is valid, I can see that now.


>
> Adding checks like this to please a static analyzer leads to misery,
> because it adds unnecessary code to maintain, and it will never be run.
>
> I think it would be more interesting to make intel_port_to_tc() WARN on
> !intel_phy_is_tc(), return a bogus >= 0 port, and ensure all callers
> only call it on TC ports.

Hmm.. I can try this out. Can change intel_port_to_tc() as suggested and 
ensure the callers call intel_phy_is_tc(),

before calling intel_port_to_tc()/intel_encoder_to_tc().

There are few places where the callers of intel_port_to_tc() and 
intel_encoder_to_tc() specifically check for TC_PORT_NONE,

so those places need to be changed as well.


Thanks for the suggestions and comments. I will drop this patch, and 
will prepare for the suggested changes.

Regards,

Ankit

>
> This obviously leads to issues if it happens, but hey, it shouldn't
> happen, and intel_encoder_to_tc() returning TC_PORT_NONE is *already*
> such a case. Just move it to lower levels.
>
> If we start checking for every impossible situation, and propagating
> errors for them, our codebase will be 90% error handling.
>
>
> BR,
> Jani.
>
>
>> +
>> +		if (tc_port != TC_PORT_NONE)
>> +			return GMBUS_PIN_9_TC1_ICP + tc_port;
>> +
>> +		drm_WARN(display->drm, 1, "Invalid TC port\n");
>> +	}
>>   
>>   	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
>>   	return GMBUS_PIN_2_BXT;
