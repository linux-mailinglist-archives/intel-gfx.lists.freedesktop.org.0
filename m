Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RJxDF3QSI2qWhgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 20:16:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A51CB64A7DF
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 20:16:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gzdwRjAy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1B111AA35;
	Fri,  5 Jun 2026 18:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4384A11AA35;
 Fri,  5 Jun 2026 18:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780683377; x=1812219377;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BP2zxgJO12AFzT7Eje6RyV/alh1t6dCXYA402r5slHg=;
 b=gzdwRjAywh8uCvCrYNS/wMCRV033zSsNAQ08lT+Y3hOnhr95gjyhOjIb
 wJTBiZL2FKLdi0r0ZCymhcwHUNK6efIgi6If8EiLiwO9sdrLMX4AU8ZBT
 rZW4oCXzFFKOgv4IRAbwKHjyVXQoWnrRt3tBQYTL9AB0LUAaYRKmMdego
 FPmv2cJlHjfO+A8DWh26nKQ+bLaoTvWxaTlsUaymlmflLoUy9wreEyJ0w
 GIMX+jOqedteHXVm//+HiDf+DpyL6+YkOITGKZlTyW7DY3pN+dWGKimzb
 3oEddPe/epcZpJ8uxLpS+cqAQ15SNfCgsmbXkte1QZy3J+Kk5KKN6DREu Q==;
X-CSE-ConnectionGUID: aDj9cjycSLKnoMKwlG5P+A==
X-CSE-MsgGUID: s3Z7LPtGQDaNJm/nZdSVnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="85142412"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="85142412"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 11:16:17 -0700
X-CSE-ConnectionGUID: PyFep1/qSJ2RWWcnz5BlAw==
X-CSE-MsgGUID: /Jjvh7AiTxyvSlMdJ7fxdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="249246067"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 11:16:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 11:16:16 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 11:16:16 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 11:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dsPiXKmIu5s20kUHMBqaKleyQtkNnex8eiY8NPsWOmzrPJ1huEmAeYgIzdeuuMOWzxI7hkBma2n1AJuMgBB54a/GmVg8v18pf66mtE4Kz7EK3aUdQzc5fSuFPlnor7M9qNMi+WcsQYv119r98E8ob9glaErhsDXoiSnIP74d0xw2jvk0G9mB2n0eSARNY/xu2mwwe7n2FlYEBRRelbR4i8oRc8OaeTlVFhYFNgT7lXEYa+KnlTKoMwbt0N4LGUuPrW7CGiaS//XruibZ6gUf2L1juURAcb7X11JgRaykC4qUnUEKt96USxfXTBeLy+Tu0DDC+kJXeZDqYRNF1+FQnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W15NPCr/3Z0R+W6NxjkCfP84dgMtu34mL+usw/4FJII=;
 b=AopY6RIuXH8qepkcoqKSmUc15W3yoSXrDekefYtCJ63WD8iXnftmhhC3HeHxEH1U/onna8S112+qTd9GgqAPxhIiubL8ioR/sISvVcuRLkBhsI6iwoIzdwmBFkBsL21cI6LfyWYPcnPA2iB6Sas6fJQHmRa1lhG7om3Z+yer5f0aeRtVRemVFQoh1Q+VV0sVNhqaP5ZzM/rnrqUP7VX47FOY/gfdO+M4tKIml/Y+WlFs36vN2k41CoZlz1nsgsR3hpxylZPi23nkw5KtJ9uWnLmGCeHBtz2Ek6wb9Vxb240+WDo57ZeVon69SvOuWbeCzOlbvnbClsORKZSpcm5mGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by DS0PR11MB7684.namprd11.prod.outlook.com (2603:10b6:8:dd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 18:16:12 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 18:16:12 +0000
Message-ID: <1f0913c7-62f8-4793-b48c-9e1c032a2680@intel.com>
Date: Fri, 5 Jun 2026 20:16:07 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/xe/printk: Add xe_warn_once()
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <saurabhg.gupta@intel.com>, <alex.zuo@intel.com>, <raag.jadav@intel.com>
References: <20260605160444.3833295-1-jonathan.cavitt@intel.com>
 <20260605160444.3833295-2-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260605160444.3833295-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::21) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|DS0PR11MB7684:EE_
X-MS-Office365-Filtering-Correlation-Id: 8772c720-a523-4c1e-69f2-08dec32e860f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: rhmaxbGcUA8nVFNk2iBtK2nIB0fPa/OPArGP6a/DfrQ+yV1mkrCOn26qPT0CAmjTSUAHeyZmOWOibU1YINHBuDwsgptl/sZH8D3AcNtB7pFWNmh9mL3tSnwecOjvvRWmus6DAhyqTIWWIPWy7sTZeVWkbmpA+1BbL2MoL6E7iNA1zJ8zicduZtfZ5PEkf3il6UZV+oo3I6kaWqltQJjeKUXs1uGTJRVepl+eZnVwGuz2ByH2U1R1yk76HIWkintoEv3hAOmLQ4u+uDtvkz9NSBDPz2EaoTkywj0ZxA9xCLeqbdtJoIOGFhpt03bN9aMERDSxd3l8O8iG6WgiIMDJtMyD0sM68zbbbVcSQzLpjA4oMC6tCyrLIOL2FoFxAfEkk9FmEsh6fWGTe1CvPu15343I9zKMKI+bQS9XGshlBzt3Mgc6N64MN+L6ijhghedE7OQfZX211Z/OLyjrp8J/IqfQ6vBQwrrjtz2kUAOtigOLrZflHBiWQUiiT3b0w2x4UxZVGVg+5SO3f6PNzep0ZLMl+vL1uaY9hzmAIpeRnnvxxz1S+5NUHcTC2R/HLhrc0juIN7rgqtuR2FlcMdCRKVdJQagG1W4in/hDKNm8tn3JYuL0+mG8xtu3iFlTKoSOBYa+4yoEpJZWxhnAviEgsf/v9En4eBlV+bbmDMEt6FwZWDefAamu1GcwC3cY/HQs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amVwRnVpUXZLbUI2SXlySnltdGw0NEZjQnlNZUhyM0FkQ0p1SnVZcERFTVpr?=
 =?utf-8?B?TTIxcmNEN3orclhNMDZkU05jSnkxbzJrK2wwNkhLNTAvbU13NEMyMUJET0tr?=
 =?utf-8?B?S1dvK0tQUWFaMHg2eDdBTENJSzM3K2lTcGE0S0x0cDZKTElvekJqek5PdzVz?=
 =?utf-8?B?RkFPZjFHR3BQVnZkU2JabVduMlpydjZ4NW5iRXBBbVRMNE1QbEU4VU15SEhy?=
 =?utf-8?B?RnVCR3BBd1BXVGdDV1g2Z3FkRG9mWDBrYjF3enZmTlJ5QnYxdHpDN0pMMmVl?=
 =?utf-8?B?dkxnaVNKenA2emFIYzBZbmxJczZIMUx0NHp4b1FJakxOQXRaUmJOK0ZjMGIx?=
 =?utf-8?B?NUcrcGxNbmw0TmZBWWhtK1YxUEcvQlVjclVxNGxuNXJYWEpyTFp4emlpbVpC?=
 =?utf-8?B?dThmMGYzeTdBTmRGWjRSOE1tc2ZOSXZlMVFkYW80RWNNaVpPcHVLRm9kT1Rr?=
 =?utf-8?B?RUNadExBVkNza2NqSnFWZ2VoZWRxcmFUTTZUZTBQSUM2bGpQN29udWEwUFRG?=
 =?utf-8?B?Q3RFQ1FlMWtDZnV2VWdZTE0zbDVkOUZ6UzVIemhCU3NlUmJrR2ZlZ3pxL0li?=
 =?utf-8?B?OG1lcDJHU2hiNDc4L1Y0NXpUc2RkRDRYMXZlak5pck9RVDgxZ3pjb01UYmNK?=
 =?utf-8?B?M2x2NlFsME8xKzJBbFZmQTFySmg0UWt3K0ZLSGhua3NCQ1haR3pNM0Z3RndM?=
 =?utf-8?B?S1Vzc3pMRXJlc2xwZHVneUoyUU9mbmxCSVptWWJIQTBWYzR2RkZ4TUo5dTVG?=
 =?utf-8?B?YUJucjY2WXFtZ3RWam9xRDVybldZdUpvb2EraXBnSURkSXVFcjRwWWd3dDNU?=
 =?utf-8?B?WS9mN1ZQRFFZV1VvNU9Hc3BjeFFPcHVoaldGUmRna21PU3NNdTBVczdoREx6?=
 =?utf-8?B?d3NKaGJEdnVjUkE4azFYYUF4cGJpN2JocmF3M3dFV1lTYkhpeVFocDc0VEdu?=
 =?utf-8?B?VFJsMTY0ak5hcTlHK0dVb1RLZlVCZ3pjZi9XSWtFdjUxQTZCZVluNXhRcHpx?=
 =?utf-8?B?WERVbHpsMkVXeEhpWURVR1BmSHZxRkRXeThLZkQzOFdlbityZHNMMTRoYjdJ?=
 =?utf-8?B?V3JFV09nMUR6d1Z2VUhNTVJueDlmTHFCaTBXcUx4ZFZOM0VGekc2aWhjaEpk?=
 =?utf-8?B?RElGZjkrdmJEREd0Z2VUU2x2dytRc3RWbWVXd2lRR2hpWEt6WHhPUWttVk9P?=
 =?utf-8?B?T1k0VU5uTitRR3EyNms0WVl5OWxva3RBdW9adEJSQVcvQUtFOGsxblFWSTVh?=
 =?utf-8?B?T00xT3p0V2lVbDJ5ODltRFpZcWhLVkVMS3ZwSS9vK1RIRnNkWkpSZlBxTW9u?=
 =?utf-8?B?TFpyZEVYV3RBTUpjemNBdVNLNWVVaVVSTmFuc05DUXV2N1Q2a0tpRnFEZ2pt?=
 =?utf-8?B?dDI5Q1d1UFZ0dHp4Q3o0OXczbkpDQmRpc2FlbEtZUnpRcEtBQXFDY0Q2czRw?=
 =?utf-8?B?TTRGVzNKbzBPcE0yRFJSeGM1Vjd6Nm14YXNvaWZ5RHdJNmNsTERMbTlXU3lz?=
 =?utf-8?B?Tkg3ZGV4bktQcm96OHlkN2FnNkN1NllvRC9FNVdHUGhLdzVMNUhmZnI5Z0pD?=
 =?utf-8?B?enhSaEN4b3RRSEpZSjQrMGlGbThRY2FpanpQOXB6ZUVsOERFczI4UkUzQjFi?=
 =?utf-8?B?eElLaS9GNjczc0wzRDZ1T25UWmFlSWJPTUFRS2crM1JPcnFxNkJjTW9SQU0z?=
 =?utf-8?B?a0hRRTlmTklwYTRmeFU5MUEwSUMrSHNOVWZVYlBjN05TcXNkNFJDK0lhcWVx?=
 =?utf-8?B?OFNVbElCcHNQRnRlc1E1cE52UHcyYjhJaVlVLy9FcXNUcy9yRXRKbDl4anNs?=
 =?utf-8?B?OGtZYk0vWHNQdSszYUdMdCtIZWllNlhTa1laSlVxMUlINExwa0lCbVQ3T1B6?=
 =?utf-8?B?bytUUTlCRjlJajVRZ1RlZWRyYm1yM3E1OEZ0K20zOWt4d25LSlN5MHZYSlJB?=
 =?utf-8?B?YzNmTkE0a09TcWdFazdwN3VWMGRLNXVKUUI1eEpFZzFlM1FDcWpMVzZqQ1Aw?=
 =?utf-8?B?dHh6RlZQWkNOK2FXdzZjbGg4cVVCZXBzNXJMYzIzMy90R21wTzNvbS9IeHRm?=
 =?utf-8?B?cmNhcERWcTJ1UlFVa2hwSjg5R0Uxc1Q3eFlBenFHaGNNcXUvY2lFODVxTnN2?=
 =?utf-8?B?QmppUlhQUDlad0o4NjR5ZmM0QTZmS00wNDZZN0VSMzJGVUc5a2JXUEVZQUF4?=
 =?utf-8?B?bWpNeGVHREJ3amN4Nm5YaVp4cSt0Z3ZOenQ2enc4OW8rcmlER1pZSVp0UE1q?=
 =?utf-8?B?bW0vK0g0RUQ1VmszbzRkaitVaTVRMWc1ZWpmSngrZHVleGptZmZ2Z3BVU05B?=
 =?utf-8?B?U1pNVEliZksxTXZtWU9FdU9RVXFFSkt6V3JXYmZIKzZLZGtpSndPMVY0MzV5?=
 =?utf-8?Q?4TmXXmA9pmTozLpc=3D?=
X-Exchange-RoutingPolicyChecked: cURLK2k1sduxKHF6hi66Nuhgb4DgnqUqFl7etCXlS33exzKT5rGB+Q0ChAYIvf+Va+qUSUsnwCZWccGR3FY+tTaEGyRsZKBupALae3KMHFYwkjyswaaQxcUeqcSj/K/y5vwbUpI3O2RskGn8o/A1Wp8bvLUwGRODWf3zEyHeHFvEJFTGdEdZ+qz7B36fNeS0ZCI4kSqPz4lnz/gakJSUZn+A8dAGasfOhWdqqKSGT3h9lu2E6zCYvvueVa0uXZ6VKU+xmG7fwlcgsbAiouW/bmDi52Jr8ze/Q+oZJPvVs4zel6p4ctJllBftU+mMIvkFgS7e4g1i11KhfzLUpcua2Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8772c720-a523-4c1e-69f2-08dec32e860f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 18:16:12.4042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f6E7kZlhw/grke5x+AQnQ6Wvc9Bj8df4WPNTEfJlB5wSEm9A3hnLasKL5bDXLukAR7bf9CPs8v1nEUe/axF22s2hFLsTCkGsUHKztbv1Q1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7684
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A51CB64A7DF



On 6/5/2026 6:04 PM, Jonathan Cavitt wrote:
> Create a wrapper function xe_warn_once() that calls drm_warn_once().
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_printk.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_printk.h b/drivers/gpu/drm/xe/xe_printk.h
> index c5be2385aa95..afa787fcdeb6 100644
> --- a/drivers/gpu/drm/xe/xe_printk.h
> +++ b/drivers/gpu/drm/xe/xe_printk.h
> @@ -27,6 +27,9 @@
>  #define xe_warn(_xe, _fmt, ...) \
>  	xe_printk((_xe), warn, _fmt, ##__VA_ARGS__)
>  
> +#define xe_warn_once(_xe, _fmt, ...) \
> +	xe_printk((_xe), warn_once, _fmt, ##__VA_ARGS__)
> +
>  #define xe_notice(_xe, _fmt, ...) \
>  	xe_printk((_xe), notice, _fmt, ##__VA_ARGS__)
>  

