Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44801A1A304
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 12:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9EF610E7E3;
	Thu, 23 Jan 2025 11:33:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htb2Gz1T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 995EE10E7E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 11:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737631994; x=1769167994;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Ht162+L7cSX9JmAsjBtzR9QZ67xtPrQPjM69E4mzoYY=;
 b=htb2Gz1TlUB1N2QhMzxJl99L+3Tgaxr5V+JYfo/jYhfZOWzcksPocALr
 jLS11dkotmbAqhoTzVKopVKHymAo6vVtR491vKxZRFAMnZRRx5kfw809l
 xbl7nMVuymfth3F/2X9VUyCx7TPi+8tQCaXXtjd8AThaBxXXM92YNhnE3
 QOG3ktJnNytBD10RQGW0ZS3zagFU2GuSonK7mp4NKCF0gj08bZJKXjbhH
 FG2bYzBo5ovBNMJ8pHw5Ny79UL8cT8oiyUvzU60Zrj4CU1VBRLj3iJ+tf
 L8q/Zx3w17E0svXM4qsnC0UJ4xqknGtdB45fACJxwlUZdLkPBToN4lnN5 Q==;
X-CSE-ConnectionGUID: QnHum/ZUSGmY95IoIsGqOg==
X-CSE-MsgGUID: AIdKnhE0TVKD4bn5HF/J8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48714829"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="48714829"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 03:33:14 -0800
X-CSE-ConnectionGUID: ZiVvsiLUQL+RTz6Fzh4hwA==
X-CSE-MsgGUID: r1nyNqPxRB+2r41H78GmJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="138302871"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 03:33:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 03:33:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 03:33:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 03:33:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wm6yhT82/1/bQQnaoRptFHrsri2Xzn2DjgSzd5PhUiV7SMS+wxdVxP76xaiYqFJKR79cpR0Z9yuqn12ZkmTbMVw61ytT52vuoBFeji7GQCzFSzV7kQAEwisuqSoe58FT4kJAuUteX+e7EM3673quT/P4UjKNXaCg02JC75FL6NIM+rhwfyd7JCth290D/1cjAIRll2K9yJeUfWmy423Zt3mhw1sWUTlclrZYSfJn73l3FB6mHGjO9c8m7G+B2AtmF6vDGBsebODIjA7rCK3fJLoPkMZtpHimWzX/990P/IIe6Y3k2Vx1BcP+vPyFhVLYHD/PkawmnvxRXVeAbmClwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJw9ZMA5g+5JXDPFFiDpMPhxvWHMjNID38L//yffleU=;
 b=D3U4NkqTuNX1uSL4G0s90CfvGFmVp72wX6ElO/Z3abtqj51fQAKZaZB+nvqyaM8YqMHwBztKOnqz29vh0OnhSgFNBstHfLoUnIKh1w8f1+akmfAgR5WBTznvFfKbfi+z/51WWcgyYDSYnl/aaC66AEhScDdqHZKa4FYl3/GNG6xeX9u4G1D+bZiFz92gsJWAtBbNKc6mh+/4nBivPX8qgAa+LK+xCabdPcgWE0JW7NrgdelE+DNoniXgRzbUuD6rITdrJOyXiMu3g04cJSV6LVyS2/kDnMMIN1VGe5l1daTuLnd+gLBp/dlDea2pjJ9/qbLAgMEytWIrQc75Wv1GZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DM4PR11MB8202.namprd11.prod.outlook.com (2603:10b6:8:18b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Thu, 23 Jan
 2025 11:33:11 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 11:33:10 +0000
Date: Thu, 23 Jan 2025 11:33:00 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <chris.p.wilson@intel.com>, <krzysztof.niemiec@intel.com>,
 <krzysztof.karas@intel.com>
Subject: [PATCH] Revert "drm/i915/gt: Log reason for setting TAINT_WARN at
 reset"
Message-ID: <yawjxnu62q6obpz6yy2ksrrwfprafdq5b23lktvcu2oiydbmgt@oag7ts74jxu4>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DUZPR01CA0064.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c2::17) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DM4PR11MB8202:EE_
X-MS-Office365-Filtering-Correlation-Id: 14a807ce-ff38-429f-c075-08dd3ba1b72d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Umx0aVVWWjkvVHZLamtzeHFFRHowSkc5UFg2Tjc4SDQ1OFJKdDBzSTk4V3dP?=
 =?utf-8?B?RUhWZGdkRzArdUUyMEZNWXhRa0RZRXdlQ2tLSUE5K0hCUjMzbkhvckRmMTN4?=
 =?utf-8?B?SXZhMXF2VTNWYWxVbzNBOVgxMlN0MnU2YlRob2JCMHY4ZzNIYWhhUWI3SFR1?=
 =?utf-8?B?N1FZcm5adEtwL3dqTEE2N2x5d05uL1R5TlhjWmtCNEhaTFpWc0c4VzljRGFU?=
 =?utf-8?B?QTdLWW5JT1lZVnB5S1ZWc0NtQ2lEZDFmTU02Z1hrN2dUMnV2U1hvQ2g3NkdD?=
 =?utf-8?B?QjFWWGRwdWdvQkE3RUN3RWNzUGU3M01JR2hEdXNkNENBa2pkVFBNUzQwTjhG?=
 =?utf-8?B?QktCdWNxL0hpQXI0OWxxcmJlQlQ2NVEwY1VaL1RJUVRuZDduSUc5NzFtbFg0?=
 =?utf-8?B?azdWcWVySmVqTk14WmVDaElmNmpSKzJnTlJDaDV5UXFkZ2ptSFJ3Mlpjd3Rv?=
 =?utf-8?B?OGo2MWdoY3ZoVDJuaDJUYXdaMXEzVmpRWXpTaCtSaHVvVWVQbTg0V0M5RVlV?=
 =?utf-8?B?b2FBWXFFMnZUS0d6M3Z2R3F6R3Rpakk0aWVmOHo1S05Ob3AyRVRLOVNlVUs4?=
 =?utf-8?B?MWR6VlkxOHlhdDJHWWFxSEowUDJlaHFyc2lLMFpmdWkvUTgyY1B6clNJZStL?=
 =?utf-8?B?Y1JRYko0M1hQS0VZY3p1WERzeHhHMjhlcGNhbDJLbytDby9zU1U0OWszVnha?=
 =?utf-8?B?WndhOGFJQmZsY0dUbGpBS0dtR0M3QlhkTVhsOXdhUFJYUUJ6R3FzRnRWbnh2?=
 =?utf-8?B?K1g1bkNwa0R1akhIa0RNa2RXc2ZCVStaSDRSazZyOFZvTnJnamdSdHNFbnBB?=
 =?utf-8?B?MUR4ZVBRaTNxcEhqRXVoZ0JDNS9MQ0FkT3BBMTNWUFg5aU5mQlFHS2U4aU9Z?=
 =?utf-8?B?UFQyaWdGZzNzNHgrQ2MrYkg5M1Bxa1pacC9lL0YzTk03NTlZQ0ZLOGJqWDB1?=
 =?utf-8?B?U2ZHQ0prdTlHb0pmNElub2c2eDl1S3ZOVUgzZndQMnFvZXk5SlVIS3lLSW1k?=
 =?utf-8?B?QXFTeTRMcjdqaEJoSFNLWFNaZm1udGMyWGRpQnFEMHgwZmhZTWt4VnQ0bUhJ?=
 =?utf-8?B?RUEvaDgrOGlDYTB1TnNaV0NqVFc5WmlyMHo3ZWhYaXRrNTFqdGZrZjJ5aUdu?=
 =?utf-8?B?RGlaRlFSOUNWVUxpMmRQMGV1TmQ1aDdCUVdsQUhVZGlUY1dMc0lRSGhMTkVT?=
 =?utf-8?B?MXZPM3JsTkN3NHNLdDcyZmxtaWRodnR4UGdmN1VDMG9sVVhVZlNLRWF1VCtE?=
 =?utf-8?B?V2xPSVhqelFrZ1BPTExpOFpoMTkxNDFDcXlWRzV2anFWYjRiaEladDBuRFVS?=
 =?utf-8?B?UDRHbGdGSzdsSWpjWGtsTFNEdEZNUHVjZFlSdVlYNTEvd0pIYXNmZUVURFJE?=
 =?utf-8?B?cmVTc1Y1U3p5MW82V1VVWVpPT2dVNUVsOFZ1VWpma0tBTnlsYU1ZVDNhWFhj?=
 =?utf-8?B?R3dPL0t6bVV1cllJYUxlY2czcnB5aGhDMUFpSnU5SFVwWFcwd080M1FlNExu?=
 =?utf-8?B?VUtOUCsvNmxndG55UldhdDdlMGUzS3JsSFJGUzQwamhVaUdOQUlOc0tFcE51?=
 =?utf-8?B?Z3lQOFk4OXh5cG41ZnZQQmxmT0Z6ck9pa3MyeFhoaCthcjYrUmkzVzVxdkIr?=
 =?utf-8?B?RG1vQXV3cFdIR0EvNHpTbVhyZW9mWkpZTkFJMGlZdlM3K2hxZWhQSVR4L1dt?=
 =?utf-8?B?Yk03UTFNRkRmVzB3aDlDMFlsbzJzbktINi9pMFVWY3MyWmJaY3dMeW53dlBy?=
 =?utf-8?B?YjlubThidWdCOUpQbjdlR3BMOFYybSs3WXBURVpNbVptRnBtbU5GOExXNmRP?=
 =?utf-8?B?SHVBb2NuYU9XOThpejZMcXFaOUsyc0J6cU0rNHNZL09TRzBUVXRxOGxlK0RQ?=
 =?utf-8?Q?hEGpjH3v17aTX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1p2K2ZlOW80Z05wRGNoU2R2bEM1UGJMZ0VpYjlwY0gwVzd4SUpWQ2owMitI?=
 =?utf-8?B?ME1EdVpCZ0ZvdGpTeGN4aU9ya0NNQ1orZ2g4dmlMdk05czFvTFh0OWpCalUx?=
 =?utf-8?B?cjJzN0k2aDlxeTg4THViTnN4MlBkZkFOZktDTDhqaXlZcUJrRlVRaFFreFJ4?=
 =?utf-8?B?UFdnN0hoUng5TUMyMnFhS2dIZDBnalc2STRVWm5KWm5VckVGQzdqTHdpc3ZD?=
 =?utf-8?B?L0RIVG5Vcno4eFZmVS9qSlRXRWV0aGZwVkE5T2FTRGcwNWtrdmlIZGdadlZk?=
 =?utf-8?B?OXJLVndJZWp3Q0MrKzNCaVFZb0RCUjU3dzBLT1VmNUlIWjFpNXY0N1ZZV0xl?=
 =?utf-8?B?aDd2UzFibFp1OHBhTTJvY013NTYrUXlBek1pd25GQ3BhRzgzMEZmYXF5Ym92?=
 =?utf-8?B?RVB4SmprcTRnRXd2TjlkbmVxM3VaNG9ySWJoK3R4NkRvczNhS1MzYzZJK05X?=
 =?utf-8?B?WWhlcmZWSmRQR2hSRUpCWER4R3hNaVp4QVdFMzgxSnhEVWpJNGxrYWlUWklE?=
 =?utf-8?B?Z3V5MldGQWNmWXZFU1grVlZjK1ZMSGI0U2tIK1BLTGRBNXBwRzNLbUR3S0ox?=
 =?utf-8?B?TTdZY09UaTBXZ3JsVHZ0cVR2SUxrVFViTzRYcVpxeUx0MEV4bnJxc0g5TTlx?=
 =?utf-8?B?MUJ5ekxwbEZ5SXo5WlpPWmpSSGpCcFNNQ3lHc2l6eER4WFFCZ3cwVVo5cVZL?=
 =?utf-8?B?QjlvVzBNb3pnckNjTFFUa0pMbkMyTEk4d3FMWjZvWGt2bWxER3dscldlaWE1?=
 =?utf-8?B?NDlZem55UFdMU3F5MXZXaEJuQ2JXcWJtRWpIalZFQlNEejROT213OVhRZmd3?=
 =?utf-8?B?Nks3cEd0V080cGZZay9HRWsvTVRzajdLY3QxVkM3aURXOUdSOTJpOTBXUk1U?=
 =?utf-8?B?M1VvRWVLQWgwTnBOb1RmSzljRkRwU1FNUGpjRUVjVUwwLzczMUQ0SVlmOUZK?=
 =?utf-8?B?WXJuNzFCTjBkWHRudVRMbDhBL3c1dStWMmtvL2ZxcnZRZC9BNEtocjlJSkVs?=
 =?utf-8?B?L2QxRGJ3SGVaM2JXbkN0dGFYbkRqWTloenYwK2M0cnVEYW51cmRwcUFaYVJZ?=
 =?utf-8?B?S29iZWRvcU1oYkd2RWtvT2hzTmkxaXZYa0p2ZVBML0Njd09nQnN4cWRuMlN2?=
 =?utf-8?B?MURCV05tOGJMZnNlbi9xNllEY0tYODREM3pUbDV5T3dCRFcydjVEL3E5bjlh?=
 =?utf-8?B?N055SnE2NFREdWoyY3pQNmtROUJhQmpieUhZRk9nRXl1S092WHloZW1XWWdW?=
 =?utf-8?B?dFlOOWk3UUI5elhkQURWb3FFSUp5TGtwajVwNHRVUkxuNHpPcmRpT3hFdkh0?=
 =?utf-8?B?cXBMMDVLRmNuTktvSjErbVVHczE0eWd2eHhDenZaVVVBWDhPVjRUYlQxSXVu?=
 =?utf-8?B?bUpob25sT2w0enBHeElXSlUzUUM1MGtLNkcxYVR1RnVDSnRCVlBlajRlNStW?=
 =?utf-8?B?QXRoeXVIMUdnd2UzSVlKaW1uSWpFYTdobFE0a3NUcytMY25SbjJST08rNGNR?=
 =?utf-8?B?YjJVSXJ4ZHdXQkxjNkhSb2l2L1BWNWk3NTZxcmFIQjRLc051RzY4T1NhZEQ2?=
 =?utf-8?B?MUFXV25oc1E3V200WEp1Z0puaHBBSWNXMXRLeFJFY0ZCcWJNYTN5Wk9UdXFK?=
 =?utf-8?B?cUlTUHlUR2hTZExYdlEwTlJNZUk2K25PKzFmeGlZVDloam5aKzBoaW1oaXR0?=
 =?utf-8?B?M2FUWkd2QkRSTUVJaU9JREQ5TFhGb05ac0tvcW0rV1EyVTQyRkR2RHBSS01x?=
 =?utf-8?B?ZS9COWJLa3JMM2lpNnpyYTJTbDJWOThrano2M1ZCMHNVWjNKQkcwNFZaT1c4?=
 =?utf-8?B?UldEeUg5cUtTSEdRS3l4dVZ1U3cxUmVIbURkb3RhN0pmZEV2UmlJZkFRQVVv?=
 =?utf-8?B?UVV3d2VHS1FCRTN6VnFIRmFqRUMvUFVVdFVjWTJvN3pEOHhLeXk4NXF1MTBS?=
 =?utf-8?B?amlhU2xHMlpFbTB4UXJzbWROQjUyRktLM0RqUGlhZXdvRkIyMzZlTGtzQzVV?=
 =?utf-8?B?T1pFVXRLTGppRG41NUtPclltdmhJTU1lVURIdU5DVUxhejBuenptOU1WVFBO?=
 =?utf-8?B?OTRoMlFjWHY2ZHhjR3g5UktJMmFOOGkwa3Vpc0c4dCtIMzc4S2N4aDhIR012?=
 =?utf-8?B?TCtwRDJ0eGt2VnFRMjYrdmZkYlFIQVhzUitQWDRQUDJ1QUxqRHJPSENEQ2cv?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a807ce-ff38-429f-c075-08dd3ba1b72d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 11:33:10.7895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l4DexzU39NYyw9fffM5j02Y8ighlCi/o9kuHj4KNb5UUIjxOGJxAuqFZWqD7dzbC62WNo7TxsiIvAcqElIXeX/YLfsl1BLqSzMGw+3OVn78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8202
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

This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.

Kernel taint information is present in dmesg already, and in
the case of an unrecoverable error, the CI restarts the device
accordingly. Raising an error causes intentional error injection
to report an undesired error notification.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index aae5a081cb53..c2fe3fc78e76 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1113,7 +1113,6 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 		 * Warn CI about the unrecoverable wedged condition.
 		 * Time for a reboot.
 		 */
-		gt_err(gt, "Unrecoverable wedged condition\n");
 		add_taint_for_CI(gt->i915, TAINT_WARN);
 		return false;
 	}
@@ -1265,10 +1264,8 @@ void intel_gt_reset(struct intel_gt *gt,
 	}
 
 	ret = resume(gt);
-	if (ret) {
-		gt_err(gt, "Failed to resume (%d)\n", ret);
+	if (ret)
 		goto taint;
-	}
 
 finish:
 	reset_finish(gt, awake);
@@ -1611,7 +1608,6 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
 	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
 
 	/* Wedged on init is non-recoverable */
-	gt_err(gt, "Non-recoverable wedged on init\n");
 	add_taint_for_CI(gt->i915, TAINT_WARN);
 }
 
-- 
2.34.1

