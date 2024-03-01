Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F067486E0F2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 13:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12D010ECB6;
	Fri,  1 Mar 2024 12:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bE5pjFeX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4680E10ECB6
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709295513; x=1740831513;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fft6S1oW3CEkA3h69PHyv5hNGuU0pmZ4WQw92FuyZns=;
 b=bE5pjFeXLz07XXaXAIFqkEdOdNjFyhhA0QtPgQceuIecZTO+Jwk4Xz5a
 wZMeZbDV1hD1+NRayJHOLP6CzcydVsRS4kbtEeP+wrrhWC0yxOV3yVckV
 HVqj7v/cwuHlcvhLlkqczyL/ZFnEOhwjDnioXs8f97iwN3ypZ3KPxqadn
 CsZwP+i9vHFsLIr7lPIMsJ9Z2A3zgPdJFoaTtgUrji2E4PbkMhpehiG9U
 I72vMw1ATRqDylgKkzMBd6lV8bv4gZMhRDQVKMDSD7/PtOEtb7wemL9/S
 M0EznJQhe/w+c74/NWOBf0TJo3B2Y9D5M5d07mwqhLMfg3ktjLyBcJ5+s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3718101"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3718101"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 04:18:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="12733635"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 04:18:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 04:18:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 04:18:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 04:18:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ApK88OIj3d9wwwXwQppz3n9y8zzheAm3eyCEIhCS7NUPqPtbhjguUWWqCGyWBOIGMi9rzH7r6JXFW2dUEoin73MD7z2b8cdBp+myHh3sPbyr1tRqarSjjOgDUpBPyMiPB6rIrwXkY3W1Vx4R6iz04FVOP1p1rVcsPgkG43z+8NYbDC3CA3zAk/l3eS1NL8H9lhzFsiaGuAs8Xs/iJ4WYKZOaUP0ChhSz8qbWZKucZ5tTz5j+Mpkl+/z6ephFxFzqY15LEUKRdSPM3VRhqS8GK/f0b6EmfNPIyFOaZKdrvJLrLiBuI4ufNDssUFFWv2oyZkloSKuEfAchFfieQiGwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fft6S1oW3CEkA3h69PHyv5hNGuU0pmZ4WQw92FuyZns=;
 b=JNtJIsuSwfViHn1wrs4QRDbpr3oPZmAhMnEx3qxTJKUmYheutshE/ofnzNppz6PIP6j7I/swxZhckGSTQ2jOy0P3z5A/d7TNGFeVp0pn1ZxaZMQoqmDmd9vQcusDpaRjpNlJ0Er0n3nCqgoSC/E+LMvtVbPq5eJqvrpoPMzI+oKaXoDaDDoBM3tk0BPeHkChPyO8Xgi8SuxZDY+kcoOZuZLvEphTVHZet+jbffpGD1p6UqVRD5trZtmjM3Rg2r6TM7bvjWuemYcAI+PBuH8NUrSDYh4r6MYiYQNIKZ1ldy1neBaTjtKQA8WJAbNB2v9FJmatPPlkK6NEKHbXOmg6Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) by
 IA1PR11MB8246.namprd11.prod.outlook.com (2603:10b6:208:445::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Fri, 1 Mar
 2024 12:18:24 +0000
Received: from DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::a8f5:a774:62a3:dd1e]) by DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::a8f5:a774:62a3:dd1e%7]) with mapi id 15.20.7339.024; Fri, 1 Mar 2024
 12:18:24 +0000
Message-ID: <49fd2430-8806-4222-99b2-93ebe00c8caf@intel.com>
Date: Fri, 1 Mar 2024 13:18:21 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Add missing doc for drm_i915_reset_stats
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20240229132918.10205-1-nirmoy.das@intel.com>
 <ZeCiq4kVlXFXN9PU@ashyti-mobl2.lan>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <ZeCiq4kVlXFXN9PU@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0065.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::11) To DS0PR11MB6541.namprd11.prod.outlook.com
 (2603:10b6:8:d3::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6541:EE_|IA1PR11MB8246:EE_
X-MS-Office365-Filtering-Correlation-Id: bd41db70-255f-48cd-6abd-08dc39e9b10c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yIognIfKEa2fp9jdjbFz3nphR4bGOb8DkyhRgPOEPFFL1+xntFO+9aisxvO6AnEuBUeFOpdPsJJkkJfPJYX4Y3LvNadKbeDvw/goAQ3w7GPbu2rZVCqlScMJzXXmiQ5cJ3sHJrHYoHJyw+Q0CPj8WO9tm9O/YPxzvC4MD/ktpq9Z2/Ir2A+uRpYdl1ZcnBqKE+02XvTIfCKQByc1IPFF9p8/zTt1/uXhXAy897y5bu2CEiVlHcFD6/AQnWLbx9sljRz2larZG4qg6oxACQ95dq0f/YFLnkXZM/GxZYNQRy10CDMcVCrKQK1biuuR/RoCxGjFECwFvIf42wrQU7WWtiRZ28bmiycrO+KY6htpAlXCqxJrv9v4VQOmBGeorTGqStkMCNTohLeP1G4tjd16BjrSTSzidsoQG9bLzywYQTUSjyptdmIdHagCEYjOfeSf9yXi1WMxyiuSZDFAkTtDJuxRpm1sHcRu53tEIE1pMV2JsSBzMLDFM15ev6xrRFbd1kriTS/At4cSHN26EzsOoq6X5M4poibmqvQAfT2iEOROHm9eXQkheDS86rZTKcZClT4KRWUZfDi47U7MhoKxljCyJ4PBQm/UrpHBpStU9Q0LVcXxjuAv4ujTn2+UOAjeMs9SI8ZE2NVNfdDXPB1a2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6541.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3FVelV3SkVzSWlEVEFGNzZzYmt6N1E3QlJZOVUrcDRhUkpFZHVVbk12WXht?=
 =?utf-8?B?NWhOSHFTcSt6eS92aDE2aTBKNVE5aFQrMjJSOGhPVE9zNWlVNWtnK1F3dUIv?=
 =?utf-8?B?Q2pPd1VpTGI2S2ZaSGNXK1psbmpVbE56eFcvSEtQcGFaYmFueUJ3dWdMSDdy?=
 =?utf-8?B?cGlnVHpORW5IVEVYU2N4TllQaS80bnA2cEhjc1RhTXZCdHFDcWhTeldnNGN0?=
 =?utf-8?B?dGZIN3FLa2FVZ3I4ZUtGTzdTWVp4UkcyaWltTUhGUlVEeTd5MUp0UzkreUxU?=
 =?utf-8?B?clpScXJ6c0hTYkgxNWtmMXdhU2NudkI3ZTZWTE5SRzJLczBGZjBRNWdTaXVv?=
 =?utf-8?B?Znppc0thZG15Q0ZIZFArNkNodXNuZlMyK3lNOXd4dVg1N0hBM2tXSG0wY0ZR?=
 =?utf-8?B?QjlRdjdwbHQ0Mkx1SHVMSkJ0bHZuRUpPQk5VN2RpNnR6b0U4YUovN3IwQlBH?=
 =?utf-8?B?TXVuS1p4M0dZZHVWYjRaK2NNMEIxRHlrdGd6TjEzUGQxM0psbER4UVF6Y0Fu?=
 =?utf-8?B?bWNyQTBDYXFHREpCZU5FNFJvZkhiMm5HbmJ0TCtvdURPSnpuQzVLUTlBc3BM?=
 =?utf-8?B?SkN6SER4czhZMmpnMG1BbnY1ZWlNYURJcFJsY1A0UTczRFFoUkJIcDdXU0ps?=
 =?utf-8?B?ZTNCNVYzdDdzVm1DSytpVVJDUzg2aTk4RWVSdDJCdzhHMFF2V1pudFZpeXBW?=
 =?utf-8?B?MjFUUWEvdmhDdVR1UWF5d3VpVWdxMWNPVGw2Yk5tQVcvcUx4TDY0ZXJxeDBK?=
 =?utf-8?B?Z1BJQ1ViQTdwK3dNemdVV0oyWC9ObGVWcmlISk9JMnlOcTgvWWFQS0loZUZs?=
 =?utf-8?B?K0xsbGpkUnZPVW1tbzVzVzlYRDdiRVA5QUxPeVUyanZNMUJUbnk3UkxDZGNZ?=
 =?utf-8?B?K0ZnNGs2cXhMTms2eVRzMVlwR284cTRFTXhrWVBYQ3BldFJoRjFvbEM2RWlW?=
 =?utf-8?B?MFhMOWZ4ODNSMExFVFltNVBWalJRL2JYZWpwRWl5YXFKMVJlMEEvcVRWem4z?=
 =?utf-8?B?U2FhczQxdytOSVBJeGRNWURvRWozZ3k4VGh6M3pZeWFReTNWU0k1MGYwZ2ts?=
 =?utf-8?B?TU9XNlR3TlRvcFMzM2J0T2JDU0dKVnU3UE00Y0cxcnRmZHdTVUY1UkxsZkZV?=
 =?utf-8?B?SGVSekEwdDhOSDBkZTBEeGowUTNTSWUxSzQwbTdtd2dRTVJJS0N5QXFGR20r?=
 =?utf-8?B?V3pQdmpZTnhpNk4wUmljWGhXQjRzclVKM2NPZkVNOC9wZ1VaNWh2Rmd5S0Zh?=
 =?utf-8?B?KzRzR0RNRzcxYVJwYTZOYUIzZjREVWhXQTVrMk5CdVI5K1dBWnk1Y0NtWjdu?=
 =?utf-8?B?MysvcXhHZHNWUWRuU2lTZjY0eWdhTXRqMDBmM3p3T21naCszNHE5SW82WWtm?=
 =?utf-8?B?OGV2MFNydmpHVkZOOFo3MUdtZjY0ZlJoT2dpZC9RRmtEOXZ5Z3F6dW5hNzNv?=
 =?utf-8?B?WExGTjhLVCtQSC9LMEtOcXFvSmlvNzVkZjc0K0o0cWJFaGxZcVUyd0RLZnJy?=
 =?utf-8?B?R1U0UEU2VjNtSml4dnpkb2JlUTNiV2JVZk5kMXZWK0JlZ0o0cDRKbmVvT3lY?=
 =?utf-8?B?K0lOMkk5UnpEa0dCaGdvUHdJZ2FpbFNmSnNzVHhXbzY2b3hYZHEwZkxrNEJR?=
 =?utf-8?B?dlRqYnJZd3dEOUNVK3pIaEk5aW1YdDVhNklvaU5aUEZGQjRFamhKcFI4TDRP?=
 =?utf-8?B?R3F2c3kwQjVsdVE2cGpxeGlhbE5NczlrOHhMcVJmM2FPSlUrcWptYzJxUHRw?=
 =?utf-8?B?Zy9wZG1kZEFLNUo4clZvdkVyaGgvdFhCSFVNTGpSUStLL3ZtUG9ZOXhVMzJB?=
 =?utf-8?B?Y3ZyZWVBODNvYXBFYVRjY2I1T0MzeWVtdVVhTXdwRjBnQ3RkWjNvL1NHeHdH?=
 =?utf-8?B?WUpOTWZrelZTT0RKa0JEelZEYytEMkRvOHVzOW51OEFLbFo1bWdIeE9ld1Uy?=
 =?utf-8?B?L3dGQ2JHU21YdmJVSHVPOFV4NjZHdVV0MTRsamlCVWEzOXdkTTR4c0ZCQlBs?=
 =?utf-8?B?cHRZUGJ0QkRiU0xWV21BRzhzbE1zRGxudEVmQ2NHdWtQd1ZWb2xlTytnOEd3?=
 =?utf-8?B?V2hYOUVnVWVDbUQyNUx5dnJGOFFBWGNyTklFVEJZQmNVbmtseUJLbE9RTUFy?=
 =?utf-8?Q?fo00ceYFLFoSW3/G1DvK+7gbJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd41db70-255f-48cd-6abd-08dc39e9b10c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6541.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2024 12:18:24.3225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3GjY+xMaVhn6IdB9cQu3CehnOUNjqS9G5Tf0+Pd8nPKVjUOuHEHgU9FB5NXrw9n1l+LU7jV4eeNjlYOD5ehGHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8246
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

Hi Andi,

On 2/29/2024 4:28 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Thu, Feb 29, 2024 at 02:29:18PM +0100, Nirmoy Das wrote:
>> Add missing doc for struct drm_i915_reset_stats.
>>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks, merged to din.

Nirmoy

>
> Thanks,
> Andi
