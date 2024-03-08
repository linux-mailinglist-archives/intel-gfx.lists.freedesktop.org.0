Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F39876765
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 16:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B051125D5;
	Fri,  8 Mar 2024 15:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fxmH23D+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D9C1125D5;
 Fri,  8 Mar 2024 15:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709911824; x=1741447824;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=8CX3P1zqIHXaTLVsvYZq1yxb74NbtDT8ebO92D8hH4c=;
 b=fxmH23D+tiQcVWfgt6ZGUGneOJfQ7qorvRr1CwnuDOvZs3MhDpP9mxhy
 u33Z/xp90pBHyMBt6UVllXVt/nXCcCYpETA4mrLLp7m2jUOjs13blgFyW
 PllsPsBK17DZywRYrwuRC4OY+09UvtZHK9IwnufBPmLMrKUuUNfTPhUfL
 cQoTx41pieXg6A9jcbSgnYK0UrFQIFxDAgTEucs6OClEgOmg5S60TJF6o
 m6WUrQnAbnFIB7QU5+2xmTaRiKR6f3pfgy9T6Sf3brZlnLZlTi/AyOre6
 Yr5rCQsPJDmFdL/d7iUDPfHKJmUD/O20ieC5nn1sC0bhHlrmN+OUtBYAB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15772582"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15772582"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 07:30:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="33634190"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 07:30:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 07:30:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 07:30:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 07:30:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i6BupU11NOjs9ry4pygHujBwRW4kzV5DYMO2k6+MjNZFdq8eOnNYWlb2yrWg+yqHPLNeSjqvMuDvmJQaRF4di77eFWPtQddueOHeAoffzgWA2XKmH5ZUs/UyHGkFxRIKtXwHJrGoQN+2lWwmmUcv4BdmDO7M3seZb2dwhewr1X3zPy7qXF7Y5Gsj8OWwkntPTKOsBfXCQQLUaRIVps7YXAfqZJi9GONJxz1JPR26woOidrvsbiJAm1lEhOvZkzoF+v88hLwj8WmwU3mSWIbu3zSWctTs8TTeryz2gdGjbASDhzCiicpmdyXzSyRAzd5qt2wV6Dr6BD/0Yd/G3PQN+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eunqWmUESjPSjxRqL0VxtYTcEwoTj9cIaFZEnbvG8k4=;
 b=a5zIQnjOINX3E1YUvDlMqTKu2D0WawOad/jBd6BzKMA82sCNTygI2afQ2GNOBCJnRkvttsbiG1ezD6SIZkwLGsQFi1T4yfR5XXqeTEYeBjQjxAvbdwmsHIKohBIRYXmHL72dnbWFfw2kImrdmXHO+Q4EnqQtQmWswCByRqmETgBwzngGvIxi0K0aOnCfuxeoToRVn4scxianaNmsb9SdNvFv15OJ8VGyMKzM4vVyBxOk3N3PAjs2GbEfLHCP5X0lreHdgO9C9cCq85tMblRnLBKRr03qthXvj0EpJNPe/mCO8929FkxtSRd/JGyd6EVW1sHkJXAl5mbU8bdyCz6Rlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7619.namprd11.prod.outlook.com (2603:10b6:a03:4d1::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Fri, 8 Mar
 2024 15:30:15 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09%7]) with mapi id 15.20.7386.009; Fri, 8 Mar 2024
 15:30:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <170964964806.109629.1145499727666932693@gjsousa-mobl2>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-3-gustavo.sousa@intel.com>
 <20240304215834.GW718896@mdroper-desk1.amr.corp.intel.com>
 <170964964806.109629.1145499727666932693@gjsousa-mobl2>
Subject: Re: [PATCH 2/8] drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>,
 <vinod.govindapillai@intel.com>, <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 8 Mar 2024 12:30:10 -0300
Message-ID: <170991181066.47565.9347143841983272421@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0086.namprd05.prod.outlook.com
 (2603:10b6:a03:332::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7619:EE_
X-MS-Office365-Filtering-Correlation-Id: e129979e-4682-4ba8-ba2d-08dc3f84a711
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V4N2KZY0FKnPJ7Z//4SxkCHhb1dpHxOjSdUX+8VNVLH2VFWwi29YjIcARNQEi0ffgvMUd3w9a1RW+nJhoNkCyxAQj1x0KWp0zViI4i5yz66mn+ac9Cz02VBAWsRsp7mQfuPiBrNf9r0JpaGTeHfsz1+8Y99+jejgX58JmRO0/5W6ClVXmIeAQxhGUpFv9iJxWorg+KQMaV2PBQPshb7rNBMbUqGJl47q5s3W0QHCXpQyUh0l8ZbvCicUKFBjV0OWQNRJOi4jUUcl3mFJdooino1eyD1FDKwu86hWknTJP2veD4fGUo8eaE0jwX3n3F04dIoMZWI31usWO8qhj2yI8lb1ZY8iaHH78nUg0ehuJqARYpVYyFn5soPIfaNwGC7ydG25wkc7iTamjJoA4I7YtD/6bhrnExvxQX1tJgzSklOMwWMcbEunHrwIudR7rM6lk+nHrTqnToznakVnpxI5bOFrPBqEupG+NjUkHAYlpBsi8AStDywltR+p5HMkQb15gDn+IcXjtEHGLg3cv2USJkZAgXIgHjY7JNvj3KS8QSqZFDUg9r95mWnfke67WfwJmoguSD1wFAsP5alwcqWDrFG32I48ZMF/D8vWhugsKFI4Ak3Qu146B85uzyWHUCnfCpZZgrE6gSCH3SjhoPazC8q1oLzrvI+mkCAj5wgKgTRKCJaphA/doYQsOgKf3XL943h6J0oSNSP+bnfXHRnmuQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(16122699003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THJVZk11SjVVRDFQb3d6VTFORUxFN0ZiK1NsdnhZNVgxaTdia0pTeWFOdFF5?=
 =?utf-8?B?cVNZRGJCSUp2YUFScXNCeGM4ejQxZjBtc0RiejN2bzdpcXdWbDdxeUl6OFE5?=
 =?utf-8?B?QVRoRXBtNFpMVDhGQkViVWp0RU1DRWhGZGJGa1kzcU5XNEdHZ3N3RXVwNFhI?=
 =?utf-8?B?VEIra2RSLzdPMzVLcTVrQUlYY0loeWpuT1h0cWw3dWpyV01xNkc4YTFkMGlM?=
 =?utf-8?B?Rm5kdmhTNDY2Y1l4WE1yQnBBbVh3cVNPenk0V2w3enROVnpjUFdZMVRiZStD?=
 =?utf-8?B?LzVYa1N3R1R1RjMwRVM0QVMxZjBWVzA3YWJ3blB2Yll1NTkyZ3duL0l1Mi9Y?=
 =?utf-8?B?UWdnUXRRTzNlSjZiaFl4Sm1Ea3BNMEE0RmZrWmpNLzdkR3FNUW10cUpiK1Ny?=
 =?utf-8?B?ZUdJNTA0N1dOVzJ5WWRaWFlZVGNJN1ZUNXAxNFBrLzNpWlhwVUZjUFIwbExB?=
 =?utf-8?B?QVYzc1pabERUM2owTmhuaUpOUm0rcE9ybmxQUld0ZFlLYXN4U1hSeG5xejVV?=
 =?utf-8?B?UXdCR2laaUhqWmhrTyt2WWFCYmNnRHRDeW40cXk4UzFESklvVnVCOWEzdHV3?=
 =?utf-8?B?TWFDdjBOM2N6L1k4ZmpyeGM3N1pwQnUxV0g5ZUVuRTlmY054aDJjMlEyQzhB?=
 =?utf-8?B?enNlZ1pKZ0NUTXFFRExLMkRwcEdOQ2ZvdG4vMWJVeFlNUzlhVWtXYjQyYlVv?=
 =?utf-8?B?YVZPc3V3b0FjbFptWDFjT2NITVNmNlBpYnI0RXVjaHRpQWZrVFBOSm0wVGty?=
 =?utf-8?B?eFhlS3VLWlpGTVNMUHNWN3Yrdi84UllXWHJWSVliOGJHdU5DSlp6Wi8xWStt?=
 =?utf-8?B?ZUdWQUpxOG1XaGNXNE5FTlM2Z3J3eWdWd0l1TnNNQ0U2RjFUb3R4YlFEREpi?=
 =?utf-8?B?RHcxZGV4VS9neHNuRkZteVpTaWkrSnl2eXVDRXl2UHd1QW1yNVJ3c0JyRm1r?=
 =?utf-8?B?UEhaNU1Mbk8vMjBLN0xzdGs0OXQyOVJISVBiSk5ZRm9BVGo4Ry93ckJsREdJ?=
 =?utf-8?B?NlkrbnJQcTJYWmo2elZsbU9xSEJ2R2VBNkIwVG9HSnVhSmlkVmJwMnJiZWNu?=
 =?utf-8?B?ZTArSjNBVTNDOGNZVkpxeEkrWVVZTitpYTdUUUJBVnM5c3FlMEVlT0FYbDd4?=
 =?utf-8?B?ckphYXUwT0pjd1p2aDJJa25HaGVZSVVNck1tdE5kS1dtRVFnUFp6b3dnaUx5?=
 =?utf-8?B?Y2ZPUHpoRHVPcHZRSjk0a0RLRGUrUTc2a2lmZHluYXBEdWdHb0ZyaWVESk1R?=
 =?utf-8?B?RzFid1JoREE5bjhRcWJGa3ZwKy9ybXhDQ1NNclVSV0JMODAvVzNTMUErMGZF?=
 =?utf-8?B?clBuVlpDVEFvYmNrT3ZQdEZiUkNOZ09XT2I5REpoTmZrQXl1QnRMbzdWM0NO?=
 =?utf-8?B?NkdBUzY5WnFWeC9sQTlpOUExbWNrRUx1VmdqVGFJa3JQMmpnOENtMlBnZGlZ?=
 =?utf-8?B?REtoMGRCT04zOFU3UDBpN2FyTVhuOEgvM1l0dzA3YlJjcWtyVmJlcXNWeW9a?=
 =?utf-8?B?Z0xkYzIzRTRjU21OVFgwZ2ZUNTZlM2I0Y0cxM3RDUUtRVXdtMHV6QW9aMTlw?=
 =?utf-8?B?L0lNa05uY3Flejh0bGg1MDRPaE1WZXRCelpWWHRvVFRHcUJVMHJnWlQ4MGI2?=
 =?utf-8?B?TzhhRVRPbGVHeitzY0pSZmFUN3lrQjZTbXR2YkZzWGdNNHdUbWF4K2ZYMDQv?=
 =?utf-8?B?NDNNNTJEOWVhbkRJODR0ZGh5V2x2bVpTaFRmVHdGYlFkMjM0di9Kc0NINHZl?=
 =?utf-8?B?Z1U5QWVGZEkwSG5OUXI0SWd5ZmluakhhYmRDNzF1ZXlGTURJMjhGNkR6b0tU?=
 =?utf-8?B?d2FOc0Q4WHpqUW5LYzJYYkpzS2o0dVpDclVaeWRrNmNrRDArZDNNS1J1M2U4?=
 =?utf-8?B?MVpLYXpJNFAydTFWZGdRaGFFb1l6ZkJjRDR6c1ZkQzVBR2p3Q1FTVXdBOHpT?=
 =?utf-8?B?RzdHWXpZY3ZoeS8xdFFTQzVwcC9QajhlZUN2bTBxdWhZWmtRTTlUVHlmQlE5?=
 =?utf-8?B?M2YwNEpaYmsrcUoxeGpidnI3Z0ZMQ3pyMHlyU0YxZGl1eFpuL0trR3V2K3dn?=
 =?utf-8?B?MHE5empnc2x4ME9Kdm5OdzRlUHZNa3ZUeTg5djZVek91UTg0dldjM3Y2amRV?=
 =?utf-8?B?clg3SFJ0Qk9OZzJjT0Y3TEZ3RUR0NXRVcXU4ZExJT1poWnVXWEFsdjQwTEw5?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e129979e-4682-4ba8-ba2d-08dc3f84a711
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 15:30:15.3397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o53vxLQRiodT+J6lDgTeVSTGa7+iuw5PX2sk/l3vYZKp+x7OGQPMWNExgmSWr0SZXqOn2zijb78tu/WG6/dRVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7619
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

Quoting Gustavo Sousa (2024-03-05 11:40:48-03:00)
>Quoting Matt Roper (2024-03-04 18:58:34-03:00)
>>On Mon, Mar 04, 2024 at 03:30:21PM -0300, Gustavo Sousa wrote:
>>> There will be future changes that rely on the source of the MDCLK. Let'=
s
>>> have xe2lpd_mdclk_source_sel() as the function responsible for reportin=
g
>>> that information.
>>>=20
>>> Bspec: 69090
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 17 ++++++++++++++++-
>>>  drivers/gpu/drm/i915/i915_reg.h            |  4 +++-
>>>  2 files changed, 19 insertions(+), 2 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/d=
rm/i915/display/intel_cdclk.c
>>> index 407bd541eb46..bf84bf27213f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> @@ -1876,6 +1876,21 @@ static bool cdclk_pll_is_unknown(unsigned int vc=
o)
>>>          return vco =3D=3D ~0;
>>>  }
>>> =20
>>> +static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
>>> +{
>>> +        if (DISPLAY_VER(i915) >=3D 20)
>>> +                return MDCLK_SOURCE_SEL_CDCLK_PLL;
>>> +
>>> +        /*
>>> +         * Earlier display IPs do not provide means of selecting the
>>> +         * MDCLK source, but MDCLK_SOURCE_SEL_CD2XCLK is a nice defaul=
t,
>>> +         * since it reflects the source used for those and allows
>>> +         * xe2lpd_mdclk_source_sel() to be used in logic that depends =
on
>>> +         * it.
>>> +         */
>>> +        return MDCLK_SOURCE_SEL_CD2XCLK;
>>
>>At the moment this function only gets called on Xe2 and beyond where the
>>register field exists; if that's going to change soon, then wouldn't it
>>be more natural to just use an early exit to highlight that there's
>>nothing we need to OR into the CDCLK_CTL for earlier platforms? =20
>>
>>    /* Not configurable for older platforms; they always use CD2XCLK */
>>    if (DISPLAY_VER(i915) < 20)
>>            return 0;
>>
>>Functionally it's the same, but it feels more intuitive to me.
>>
>>If we aren't expecting to call this from common codepaths that aren't
>>already protected by a display version check, then we could make this a
>>drm_WARN_ON() to assert that we haven't deviated from expected behavior.
>
>Well, the intention here was for this function to serve 2 purposes: (i)
>to give the value of the "MDCLK Source Select" field of CDCLK_CTL and
>also (ii) tell which was the source of the MDCLK for displays pre and
>post (including) Xe2LPD, because we will need that information in
>"drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state".
>
>I was hoping to do that instead of creating a new enum, but maybe it
>will just cause confusion?
>
>Should we have one function to tell us the source and another for
>giving the value of the register field?

Unless there are objections here, I plan on doing something along these
lines for v2.

--
Gustavo Sousa

>
>--
>Gustavo Sousa
>
>>
>>
>>Matt
>>
>>> +}
>>> +
>>>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_pr=
ivate *i915,
>>>                                                      const struct intel=
_cdclk_config *old_cdclk_config,
>>>                                                      const struct intel=
_cdclk_config *new_cdclk_config,
>>> @@ -1980,7 +1995,7 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private =
*i915,
>>>                  val |=3D BXT_CDCLK_SSA_PRECHARGE_ENABLE;
>>> =20
>>>          if (DISPLAY_VER(i915) >=3D 20)
>>> -                val |=3D MDCLK_SOURCE_SEL_CDCLK_PLL;
>>> +                val |=3D xe2lpd_mdclk_source_sel(i915);
>>>          else
>>>                  val |=3D skl_cdclk_decimal(cdclk);
>>> =20
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
>>> index e00557e1a57f..eb953ed1f113 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -5900,7 +5900,9 @@ enum skl_power_gate {
>>>  #define  CDCLK_FREQ_540                REG_FIELD_PREP(CDCLK_FREQ_SEL_M=
ASK, 1)
>>>  #define  CDCLK_FREQ_337_308                REG_FIELD_PREP(CDCLK_FREQ_S=
EL_MASK, 2)
>>>  #define  CDCLK_FREQ_675_617                REG_FIELD_PREP(CDCLK_FREQ_S=
EL_MASK, 3)
>>> -#define  MDCLK_SOURCE_SEL_CDCLK_PLL        REG_BIT(25)
>>> +#define  MDCLK_SOURCE_SEL_MASK                REG_GENMASK(25, 25)
>>> +#define  MDCLK_SOURCE_SEL_CD2XCLK        REG_FIELD_PREP(MDCLK_SOURCE_S=
EL_MASK, 0)
>>> +#define  MDCLK_SOURCE_SEL_CDCLK_PLL        REG_FIELD_PREP(MDCLK_SOURCE=
_SEL_MASK, 1)
>>>  #define  BXT_CDCLK_CD2X_DIV_SEL_MASK        REG_GENMASK(23, 22)
>>>  #define  BXT_CDCLK_CD2X_DIV_SEL_1        REG_FIELD_PREP(BXT_CDCLK_CD2X=
_DIV_SEL_MASK, 0)
>>>  #define  BXT_CDCLK_CD2X_DIV_SEL_1_5        REG_FIELD_PREP(BXT_CDCLK_CD=
2X_DIV_SEL_MASK, 1)
>>> --=20
>>> 2.44.0
>>>=20
>>
>>--=20
>>Matt Roper
>>Graphics Software Engineer
>>Linux GPU Platform Enablement
>>Intel Corporation
