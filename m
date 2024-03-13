Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A1987A773
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 13:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9EE910F2E5;
	Wed, 13 Mar 2024 12:16:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mw1OhOnN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C77110F772;
 Wed, 13 Mar 2024 12:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710332199; x=1741868199;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=yGI318hGryMnCsYO58fbhkjcaIEvzR0e++9ShpOlh5M=;
 b=Mw1OhOnNJFhbDA9+8RvRjUXsik5XAC6t5DlO4j6w67dZuYlieWTKsdkL
 ZMkF4baQikwNeCkWB29Hh+Lewb0Pq/AT1BiN65LbqkHFTnDKJvGAi2+Jp
 Iq3XWg+nUNQOXqhGWsI5em69idNEP1Frm4xgIhACR7+OAT2qDdYq+bvm3
 5SU9ipXwMmLjAOVWbRIOL+sTPqkNOxvRZwnWjtER59/Fi5jnhgkb7ohbD
 3GfmhMh9YTNW9BdLeH23LKnmk2hf1/BSoiCWLpfYVo3OcWqUNvy2KeXaK
 E7nss5GErSlfdKbuuVrmhYClEDV7mvxdmRcDJEU+Le5prpTfxMuOxDdIc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4943436"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="4943436"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 05:16:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="16479973"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 05:16:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:16:25 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:16:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 05:16:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 05:16:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UM+vPxD+I8YJzNUe38116U6QA2XTC+dw49wZER4HbDAVHxJqPmd+QYH/N0mKDbE26jcyB8s+D0iWFFgaccK+NhK+maGDbnRY2y5KhA0+vvs+VJFZfdSmabCix6D1D/SvMmIlgzxyoOCJhvA4dFVIc+vIAzxvO7hXqc4PdfllU/2hE/PwoODjmnKYw6dJ1/1dEjpDRWP5jKhbwe90rvIbSr6z/38vce3PdZyMhs9DfpRb+GsiW7w1C1kwWwFOmtw3ZrTQ5jtPiA0HrKlR9BPqwKyPBY1+m1prrK+UVcAhpy2RAOiSSs37cVCE3RqaYS568xLumLjWpAuKo8Dxrx8qjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xylebxjCh9aWkqGj59KJKN6ZNdvaX8dVBVEZxDCdhM=;
 b=AHZI7bAFRtJV5ju27NMxS8Ka7NRnaFC+PToTKWar6lEYPkVUg6yuU8nTy7hRSh41y2CELzopHJmbI+ztLs0+GqsVDHVxCpUbR7JtoSSgCeZotHqVv6ewFKVWpC8fnLW7Xa51+dz55j81wRbTMgBNKviGCmxak17vF4g4EJsunVpUaNaDrb5ILZnNUIr618HBDZYkCC9xjDKerT9Pm9WTeh4bGt6VUPJRp+X3MhuhHRJni29WV/W8v4fg3BPYgFoBscHE1F2tNtuKAokeqwRyQ+TxJIfgL6zyZ+rJ8E7MSZrCQQaQfQQxIa3OIapVeq9479w8TqUX+zQUYUCaUTFA9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Wed, 13 Mar
 2024 12:16:08 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09%7]) with mapi id 15.20.7386.014; Wed, 13 Mar 2024
 12:16:08 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <171029344637.714563.14357153830044278794@8e613ede5ea5>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
 <171029344637.714563.14357153830044278794@8e613ede5ea5>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.IGT: failure for Enable LNL display (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 13 Mar 2024 09:16:02 -0300
Message-ID: <171033216259.15349.11919128085336907677@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR02CA0012.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8000:EE_
X-MS-Office365-Filtering-Correlation-Id: 31460bbe-d3ff-4744-47a7-08dc43575cb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vzVoz1kASoZFtbno/PhEJywNujcJOKrf9RTQ+8Z5RWv0WqOPsVMInyfxvqGgeWhbVDYv/PxO2r4Zzu8LKtcmyox9PFcTcFV93rYTtB8mcFZkMLE9CRpPinqKatYIvfTeheG5geJFNeeG4DqpSmQF2fZVzMLC/zwyrG6kXmRr1iEO4E8CY612SJ3KfsKd52dPEIWss/StQzvci6jWdAa3ym3RzMyDATbPh92/QPdHE5YYceRimCDyoWbMQ5YVXp5bEjQ6dKFzLDRB2i1LT0zbNatPYxn2dftcIPRWNkga0CAYr8kPedT83Gcm1EB7+tbylL/W+O8GBq2Uy6idEwRuzpx7Vsnr7ZBFZxZym/Gt9QH8i/v7pJ5RuTE+4cpEwbEq1UoM5vidDoBAh0ajAjkdF/KUCUd7tu1eIft2+Pogj1r36I6idjKGCCIO6OLukqOixdZi3S+IzNIfs/Spl8niptDs8KDJ/cwrMuNhhyAiNV4wXdUlXnBcx/QTNBU/NTfCT+frS9StGLV7AKpmbg59fzOryx1I3qTW7Ymog/10eoijGFyLLgUPR6OTK0UJBBMUAq1Zv/DQSb7YMExiRpdd2TWOhchP9MRiCRuWHPhESdE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXN5aFZFNWtnVWQrRmlPTnFWTkxCTndrS0hvV3VBN1BoQUNUK0xVa1kvUmZr?=
 =?utf-8?B?TW9jTEVqbnV4dlhPUkN4VWllTWRHeXk0bndZTnBIR0I4aHZ2aHczMTZlYlRm?=
 =?utf-8?B?b0s4V20wZVYxZGVPdXU5UjBRYjkweFFtZW15RDhvSDB0WTdkS2owQi96cTAx?=
 =?utf-8?B?eFZRdkozUEtvZWxTbkpaWTBpWGZsbkwvNkxTTTBneW1XRU40VlhIR3YwUVFT?=
 =?utf-8?B?SDRYK0lNVXA4SkdMVEFtczJsb0dvM0EzZ3RlUHk1MDZlYmVMTlJYT1RyNEtj?=
 =?utf-8?B?azJqam93SVQ2VXNDc1IwYUNwcEJhQ2JlU3lzb3l1Q0xtZVloWGp3RS96RWoy?=
 =?utf-8?B?Mko2c2pvVTZRM2JvcTlubE1wQ1JCdzlOeWhKQThUZ3VDS3JCTEU0VlFVbUxi?=
 =?utf-8?B?bmN4K1pFVlJOZmZTekFkK3Y5Z25KWEJkSXovK1BKaTdjZUhzWHE4Zmdxc3Vj?=
 =?utf-8?B?cmtqWHBadGhnMVhaNkpkWmdBQmx6aitNSU1CNjIrLzhnbWpKTUZtaWJSV2ZK?=
 =?utf-8?B?MHRZTTNnSjc3ZlhweFpEREpIUys3eVg0WkxrdDRtUmJKZkVzWWZzOUVQTXZn?=
 =?utf-8?B?cmtlbVl4OTduVEhNam9Gakp4VkM4cyt0cGZPazRTZUx3U0ROOTAxeldaWVlW?=
 =?utf-8?B?am95SkIzR2JOWXNuUk1mRXRSUGdNL0RPOWdmeXhpSXppc09yOUkyRmEyVTcz?=
 =?utf-8?B?Q0Q2dzY4d1dicnU3em9UemJPZHlPdE9vYUV2U24rblRDSGZrVldFNEh2SkVL?=
 =?utf-8?B?ZTFYWGY0QythY1ZRazNuMytsUnRRQkZJV2VTQ0hkZk5aeXZKTlZsNUQ0blNj?=
 =?utf-8?B?SWF3U2ptTnpwM2d5NjZ4S0hMVHZnTTRjcHFOQjc2TnBCblJobm1Gd2N5cEda?=
 =?utf-8?B?Z1hGMG9WS21pWVNpWDhqMWM0cnJMSXFqWisxcUdUZTZxNFZCUkxnV1c2Um8r?=
 =?utf-8?B?U3A5UFZ4T0FyeVI1T29rMDZyV2hWajV5Ynd2K0NKT0FVSTEvQUVWOVRRUm5R?=
 =?utf-8?B?RVg0MndLTmd3NUdFWnlmTkl3TVR5YWVxeDhRK3VMMm1wSGczbnpNR09RNnlN?=
 =?utf-8?B?VGUzRnhDSlhRbTdDcXNpMnZSd05LWmpHZitRNWc4SjFYT0tPYXBDUHVza0RX?=
 =?utf-8?B?VkRtcFJUMGRiN3ZkZXhDQ3o5YmJTWGVDMUpFN3lHUTZNTlVBSkVwQVBDWElu?=
 =?utf-8?B?d2ZIb2hWVkNZNTFWQWk3VXd2Kyt1STUyT1IrMXJXT0tHREtZd2gyWHJNd091?=
 =?utf-8?B?L2JhNmlvWlRDQnJFYmRON00vcVBDTkFINUNldVozaXVxLzUycXJHK1o1bmQ4?=
 =?utf-8?B?a2ZZd1o3YWFad2xYTzRhM2hWTVJKOHpFVU15UDdrTkQ2c0ZleUZleE5uMWJx?=
 =?utf-8?B?YkFINldhMS9RWEh3V0sxeGJlTzVGc0w3eE5UVG1nVGovQjdXaHd3Wks2bTNY?=
 =?utf-8?B?aE1IUXJvRVRHZ2dBOXk0L1lVeVd2cEcxS1ptUmNUaElPSXBGUWpLUG12eFpD?=
 =?utf-8?B?NEVmeTN1cU5kYzVaMm5UQThPWXlYNXpwT09JYlVOSVdzTlNaNDhNS3BtdnFq?=
 =?utf-8?B?a0xXcDFhWHhRWFg4Tkt6cU9wMzRJaDBKOW9jaUZ4aCtPYmZCYnVJM2pQekxB?=
 =?utf-8?B?N3hGQTJLYnhwc2JGYkNIYWltM3BuNHM3YmZqM3lDWTFpa2w1eFpVUkM2dWFm?=
 =?utf-8?B?aGZBRmZsbk9wREc4ZnBqSlByYlBtVFgzejR5eUFjWWYvNXZBZUJ2V29VejNt?=
 =?utf-8?B?N0szKzcxZVloUzB0SEhvYXNOSHhTUUxJTSt1MVorcFF6dEZ1SWozdUVFdjRp?=
 =?utf-8?B?bERRTVpmMHcvQy9mQ0RaaG04andNMFhIZXRRWHhKdGIzdWhmLzJKRUJyRDN2?=
 =?utf-8?B?YTZnUFo4aUkrQnBwMW03VlJxbFoyTGVJS1p5K2RNRWszRGtoZHpvV3hzeDZI?=
 =?utf-8?B?ei8vbUxlNElVSFdqL2lsQnJTS0lyMk9NVjdBTm52ZUo2WXA0RG9vY3ppRUlz?=
 =?utf-8?B?QmU2amk1UUJtUmt5cjJmMnlscEtTZ3NuSCtpeDkzclQwc2hQZkdDaWEyQ0ZJ?=
 =?utf-8?B?by9Pb2JvQlZXUHVMRDkxNFJFdERHL25wK2lYQ1hyckZFaWFkWEIrKzZSUnV1?=
 =?utf-8?B?bksvWTE4SDIzbVY5b2IzcnpIYTBHWnFxNXFjR3Q0Q2pYQnZSbGMvRFZkeEdj?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31460bbe-d3ff-4744-47a7-08dc43575cb3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2024 12:16:08.2080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SS60JtC3b3JEHqLwEvPNDGFYM2pqprMk+u7tzTxZ8SlJiMYu2p/q+d4++m2bxrPpHWVfym5H9MibB85vnCRHWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
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

Quoting Patchwork (2024-03-12 22:30:46-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Enable LNL display (rev2)
>URL   : https://patchwork.freedesktop.org/series/130689/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_14421_full -> Patchwork_130689v2_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_130689v2_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_130689v2_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (8 -> 8)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
130689v2_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-tglu:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-tglu-4=
/igt@i915_module_load@reload-with-fault-injection.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
tglu-8/igt@i915_module_load@reload-with-fault-injection.html

Fault injection is not done in sequences for CDCLK or MBus. This
shouldn't be related to this patch.

>
>  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-3:
>    - shard-dg2:          NOTRUN -> [ABORT][3]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
dg2-6/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-hdmi-a-3.html

Not related. This was already happening prior to this patch. See
examples:

https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1519/bat-dg2-8/igt@kms_pipe=
_crc_basic@hang-read-crc@pipe-a-dp-1.html

https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1519/bat-dg2-14/igt@kms_pip=
e_crc_basic@hang-read-crc@pipe-a-hdmi-a-2.html

--
Gustavo Sousa

>
> =20
>New tests
>---------
>
>  New tests have been introduced between CI_DRM_14421_full and Patchwork_1=
30689v2_full:
>
>### New IGT tests (2) ###
>
>  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-d-dp-4:
>    - Statuses : 1 pass(s)
>    - Exec time: [2.70] s
>
>  * igt@kms_cursor_crc@cursor-random-64x64@pipe-d-dp-4:
>    - Statuses : 1 pass(s)
>    - Exec time: [4.40] s
>
> =20
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_130689v2_full that come from kno=
wn issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_bb@crc32:
>    - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#6230])
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
dg1-16/igt@api_intel_bb@crc32.html
>
>  * igt@drm_fdinfo@busy-check-all@bcs0:
>    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8414]) +11 other test=
s skip
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html
>
>  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>    - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#7742])
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-5/=
igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>
>  * igt@drm_fdinfo@virtual-busy-all:
>    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
dg2-8/igt@drm_fdinfo@virtual-busy-all.html
>
>  * igt@gem_busy@semaphore:
>    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#3936])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard-=
dg1-17/igt@gem_busy@semaphore.html
>
>  * igt@gem_ccs@block-multicopy-inplace:
>    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])=
 +1 other test skip
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-15/igt@gem_ccs@block-multicopy-inplace.html
>
>  * igt@gem_ccs@suspend-resume:
>    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#9323])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_ccs@suspend-resume.html
>
>  * igt@gem_ctx_persistence@engines-hostile-preempt:
>    - shard-snb:          NOTRUN -> [SKIP][12] ([i915#1099])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-snb5/igt@gem_ctx_persistence@engines-hostile-preempt.html
>
>  * igt@gem_ctx_sseu@invalid-sseu:
>    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#280])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html
>
>  * igt@gem_eio@kms:
>    - shard-dg1:          NOTRUN -> [FAIL][14] ([i915#5784])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-15/igt@gem_eio@kms.html
>
>  * igt@gem_eio@reset-stress:
>    - shard-dg2:          [PASS][15] -> [FAIL][16] ([i915#5784])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-5=
/igt@gem_eio@reset-stress.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-5/igt@gem_eio@reset-stress.html
>
>  * igt@gem_exec_balancer@bonded-sync:
>    - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#4771])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-12/igt@gem_exec_balancer@bonded-sync.html
>
>  * igt@gem_exec_balancer@bonded-true-hang:
>    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_exec_balancer@bonded-true-hang.html
>
>  * igt@gem_exec_capture@capture-recoverable:
>    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#6344])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_exec_capture@capture-recoverable.html
>
>  * igt@gem_exec_capture@many-4k-incremental:
>    - shard-tglu:         NOTRUN -> [FAIL][20] ([i915#9606])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@gem_exec_capture@many-4k-incremental.html
>
>  * igt@gem_exec_capture@many-4k-zero:
>    - shard-dg1:          NOTRUN -> [FAIL][21] ([i915#9606]) +1 other test=
 fail
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-19/igt@gem_exec_capture@many-4k-zero.html
>    - shard-glk:          NOTRUN -> [FAIL][22] ([i915#9606])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-glk4/igt@gem_exec_capture@many-4k-zero.html
>
>  * igt@gem_exec_fair@basic-deadline:
>    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852])=
 +5 other tests skip
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@gem_exec_fair@basic-deadline.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-tglu:         [PASS][24] -> [FAIL][25] ([i915#2842]) +2 other =
tests fail
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-tglu-=
2/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-10/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-none@bcs0:
>    - shard-rkl:          [PASS][26] -> [FAIL][27] ([i915#2842]) +1 other =
test fail
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-4=
/igt@gem_exec_fair@basic-none@bcs0.html
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#2842])
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-glk4/=
igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_fence@concurrent:
>    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4812])
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_exec_fence@concurrent.html
>
>  * igt@gem_exec_flush@basic-uc-set-default:
>    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#3539])
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-17/igt@gem_exec_flush@basic-uc-set-default.html
>
>  * igt@gem_exec_flush@basic-wb-set-default:
>    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3539] / [i915#4852])
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_exec_flush@basic-wb-set-default.html
>
>  * igt@gem_exec_reloc@basic-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281]) +1 other test=
 skip
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_exec_reloc@basic-gtt.html
>
>  * igt@gem_exec_reloc@basic-wc-cpu-active:
>    - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#3281])
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_exec_reloc@basic-wc-cpu-active.html
>
>  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3281]) +1 other test=
 skip
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
>
>  * igt@gem_exec_schedule@semaphore-power:
>    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_exec_schedule@semaphore-power.html
>
>  * igt@gem_fenced_exec_thrash@no-spare-fences:
>    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4860]) +1 other test=
 skip
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences.html
>
>  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>    - shard-dg2:          [PASS][38] -> [FAIL][39] ([i915#10378])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-5=
/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>
>  * igt@gem_lmem_swapping@parallel-random:
>    - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#4613])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@gem_lmem_swapping@parallel-random.html
>
>  * igt@gem_lmem_swapping@random:
>    - shard-glk:          NOTRUN -> [SKIP][41] ([i915#4613]) +6 other test=
s skip
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-glk8/igt@gem_lmem_swapping@random.html
>
>  * igt@gem_lmem_swapping@verify-ccs:
>    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4613])
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html
>
>  * igt@gem_madvise@dontneed-before-pwrite:
>    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3282]) +3 other test=
s skip
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_madvise@dontneed-before-pwrite.html
>
>  * igt@gem_mmap@bad-offset:
>    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4083]) +5 other test=
s skip
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@gem_mmap@bad-offset.html
>
>  * igt@gem_mmap_gtt@basic-copy:
>    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4077]) +4 other test=
s skip
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_mmap_gtt@basic-copy.html
>
>  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>    - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4083]) +1 other test=
 skip
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
>
>  * igt@gem_partial_pwrite_pread@reads-uncached:
>    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3282])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
>
>  * igt@gem_partial_pwrite_pread@write:
>    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3282]) +1 other test=
 skip
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-12/igt@gem_partial_pwrite_pread@write.html
>
>  * igt@gem_pxp@create-protected-buffer:
>    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4270]) +3 other test=
s skip
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-17/igt@gem_pxp@create-protected-buffer.html
>    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#4270])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@gem_pxp@create-protected-buffer.html
>
>  * igt@gem_pxp@reject-modify-context-protection-off-3:
>    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4270])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
>
>  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4270])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
>
>  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
>    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#8428]) +1 other test=
 skip
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html
>
>  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5190])
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
>
>  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4079])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>
>  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8411])
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>
>  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#4077]) +1 other test=
 skip
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
>
>  * igt@gem_tiled_pread_pwrite:
>    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4079])
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-12/igt@gem_tiled_pread_pwrite.html
>
>  * igt@gem_userptr_blits@access-control:
>    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#3297]) +3 other test=
s skip
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@gem_userptr_blits@access-control.html
>
>  * igt@gem_userptr_blits@coherency-sync:
>    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#3297])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-15/igt@gem_userptr_blits@coherency-sync.html
>
>  * igt@gem_userptr_blits@coherency-unsync:
>    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3297]) +1 other test=
 skip
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gem_userptr_blits@coherency-unsync.html
>
>  * igt@gen9_exec_parse@batch-zero-length:
>    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#2856])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@gen9_exec_parse@batch-zero-length.html
>
>  * igt@gen9_exec_parse@bb-chained:
>    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#2527]) +2 other test=
s skip
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@gen9_exec_parse@bb-chained.html
>
>  * igt@gen9_exec_parse@bb-oversize:
>    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#2527]) +1 other test=
 skip
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@gen9_exec_parse@bb-oversize.html
>
>  * igt@gen9_exec_parse@unaligned-jump:
>    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#2527] / [i915#2856])
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@gen9_exec_parse@unaligned-jump.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-snb:          [PASS][66] -> [INCOMPLETE][67] ([i915#9849])
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-snb1/=
igt@i915_module_load@reload-with-fault-injection.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-snb4/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_pm_freq_mult@media-freq@gt0:
>    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#6590])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-15/igt@i915_pm_freq_mult@media-freq@gt0.html
>
>  * igt@i915_pm_rps@basic-api:
>    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#6621])
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@i915_pm_rps@basic-api.html
>
>  * igt@i915_pm_rps@min-max-config-idle:
>    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#6621])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@i915_pm_rps@min-max-config-idle.html
>
>  * igt@i915_selftest@live@dmabuf:
>    - shard-dg2:          [PASS][71] -> [ABORT][72] ([i915#10366])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-6=
/igt@i915_selftest@live@dmabuf.html
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@i915_selftest@live@dmabuf.html
>
>  * igt@intel_hwmon@hwmon-read:
>    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#7707])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@intel_hwmon@hwmon-read.html
>
>  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4212])
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
>
>  * igt@kms_addfb_basic@basic-y-tiled-legacy:
>    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4215])
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-19/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>  * igt@kms_addfb_basic@clobberred-modifier:
>    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4212])
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-15/igt@kms_addfb_basic@clobberred-modifier.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y=
-rc-ccs:
>    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#8709]) +7 other test=
s skip
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-=
3-y-rc-ccs.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#1769] / [i915#3555])
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>
>  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5286])=
 +4 other tests skip
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#5286])
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip=
:
>    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#5286])
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-fl=
ip.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>    - shard-tglu:         NOTRUN -> [FAIL][82] ([i915#3743])
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-snb:          NOTRUN -> [SKIP][83] +16 other tests skip
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-snb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>
>  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
>    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5190])
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html
>
>  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3638]) +4 other test=
s skip
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>
>  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>    - shard-tglu:         [PASS][86] -> [FAIL][87] ([i915#3743]) +1 other =
test fail
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-tglu-=
5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.ht=
ml
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-fli=
p:
>    - shard-mtlp:         NOTRUN -> [SKIP][88] +6 other tests skip
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-=
flip.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4538]) +4 other test=
s skip
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
>
>  * igt@kms_big_joiner@2x-modeset:
>    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#2705])
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@kms_big_joiner@2x-modeset.html
>
>  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
>    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#10307]) +103 other t=
ests skip
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-11/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.htm=
l
>
>  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#6095]) +15 other tes=
ts skip
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.ht=
ml
>
>  * igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs:
>    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#10278])
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-16/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html
>
>  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#6095]) +15 other tes=
ts skip
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-=
1.html
>
>  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#10278])
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html
>
>  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#6095]) +31 other tes=
ts skip
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-rkl-5/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
>
>  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#6095]) +111 other te=
sts skip
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
>
>  * igt@kms_cdclk@mode-transition:
>    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#3742])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-dg1-19/igt@kms_cdclk@mode-transition.html
>
>  * igt@kms_chamelium_edid@dp-edid-resolution-list:
>    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#7828]) +1 other test=
 skip
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shard=
-tglu-6/igt@kms_chamelium_edid@dp-edid-resolution-list.html
>
>  * igt@kms_chamelium_edid@dp-mode-timings:
>    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#7828]) +1 other tes=
t skip
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_chamelium_edid@dp-mode-timings.html
>
>  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#7828]) +1 other tes=
t skip
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>
>  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#7828]) +9 other tes=
ts skip
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
>
>  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#7828]) +1 other tes=
t skip
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html
>
>  * igt@kms_content_protection@dp-mst-type-0:
>    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3299])
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_content_protection@dp-mst-type-0.html
>
>  * igt@kms_content_protection@legacy:
>    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#7116] / [i915#9424]=
)
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_content_protection@legacy.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-512x170:
>    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#3359])
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-19/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-64x21:
>    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#8814])
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-64x21.html
>
>  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3359])
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#2346])
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-glk8=
/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>
>  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#9067])
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>
>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#9723])
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
>
>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#9723])
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
>
>  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3804])
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>
>  * igt@kms_draw_crc@draw-method-mmap-gtt:
>    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3555] / [i915#8812]=
)
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_draw_crc@draw-method-mmap-gtt.html
>
>  * igt@kms_dsc@dsc-basic:
>    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840]=
)
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_dsc@dsc-basic.html
>
>  * igt@kms_dsc@dsc-with-bpc-formats:
>    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#3555] / [i915#3840]=
)
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_dsc@dsc-with-bpc-formats.html
>
>  * igt@kms_feature_discovery@display-3x:
>    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#1839])
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_feature_discovery@display-3x.html
>
>  * igt@kms_feature_discovery@psr1:
>    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#658])
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_feature_discovery@psr1.html
>    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#658])
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_feature_discovery@psr1.html
>
>  * igt@kms_fence_pin_leak:
>    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4881])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_fence_pin_leak.html
>
>  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3637]) +1 other tes=
t skip
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
>
>  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>    - shard-dg2:          NOTRUN -> [SKIP][123] +6 other tests skip
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank:
>    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3637])
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_flip@2x-flip-vs-expired-vblank.html
>
>  * igt@kms_flip@2x-flip-vs-fences:
>    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#8381])
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_flip@2x-flip-vs-fences.html
>
>  * igt@kms_flip@2x-wf_vblank-ts-check:
>    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#9934]) +2 other tes=
ts skip
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_flip@2x-wf_vblank-ts-check.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscali=
ng@pipe-a-valid-mode:
>    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#2587] / [i915#2672]=
)
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downs=
caling@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pi=
pe-a-valid-mode:
>    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#2672])
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling=
@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscali=
ng@pipe-a-default-mode:
>    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#2672]) +1 other tes=
t skip
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downs=
caling@pipe-a-default-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe=
-a-valid-mode:
>    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#2587] / [i915#2672]=
) +4 other tests skip
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@=
pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pi=
pe-a-valid-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#2672])
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling=
@pipe-a-valid-mode.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#8708]) +2 other tes=
ts skip
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>    - shard-dg2:          [PASS][133] -> [FAIL][134] ([i915#6880]) +2 othe=
r tests fail
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-=
6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.htm=
l
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#8708]) +16 other te=
sts skip
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3023]) +5 other tes=
ts skip
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cp=
u:
>    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#1825]) +6 other tes=
ts skip
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mma=
p-cpu.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
>    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#1825]) +7 other tes=
ts skip
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.ht=
ml
>
>  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#10070])
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3458]) +12 other te=
sts skip
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#8708]) +2 other tes=
ts skip
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-g=
tt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
>    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#5354]) +7 other tes=
ts skip
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.htm=
l
>
>  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#3458]) +5 other tes=
ts skip
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>
>  * igt@kms_hdmi_inject@inject-audio:
>    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#433])
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_hdmi_inject@inject-audio.html
>
>  * igt@kms_hdr@invalid-metadata-sizes:
>    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3555] / [i915#8228]=
) +1 other test skip
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
>
>  * igt@kms_hdr@static-swap:
>    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3555] / [i915#8228]=
) +1 other test skip
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_hdr@static-swap.html
>    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8228]=
)
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_hdr@static-swap.html
>
>  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>    - shard-glk:          NOTRUN -> [FAIL][148] ([i915#7862]) +1 other tes=
t fail
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
>    - shard-dg1:          NOTRUN -> [FAIL][149] ([i915#8292])
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-=
b-hdmi-a-2:
>    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#9423]) +3 other tes=
ts skip
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pi=
pe-b-hdmi-a-2.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a=
-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#9423]) +3 other tes=
ts skip
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pi=
pe-a-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pip=
e-c-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#5176]) +3 other tes=
ts skip
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format=
@pipe-c-edp-1.html
>
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-=
hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#9423]) +15 other te=
sts skip
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-19/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pip=
e-d-hdmi-a-4.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5235]) +1 other tes=
t skip
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1.=
html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-b=
-edp-1:
>    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#5235]) +3 other tes=
ts skip
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pi=
pe-b-edp-1.html
>
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-=
c-dp-4:
>    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5235] / [i915#9423]=
) +11 other tests skip
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@p=
ipe-c-dp-4.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25=
@pipe-d-hdmi-a-3:
>    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#5235]) +15 other te=
sts skip
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-=
0-25@pipe-d-hdmi-a-3.html
>
>  * igt@kms_pm_backlight@bad-brightness:
>    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#5354])
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_pm_backlight@bad-brightness.html
>
>  * igt@kms_pm_backlight@fade-with-dpms:
>    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#5354])
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_pm_backlight@fade-with-dpms.html
>
>  * igt@kms_pm_dc@dc3co-vpb-simulation:
>    - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#9685])
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_pm_dc@dc3co-vpb-simulation.html
>
>  * igt@kms_pm_dc@dc5-psr:
>    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#9685])
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_pm_dc@dc5-psr.html
>
>  * igt@kms_pm_rpm@modeset-lpsp-stress:
>    - shard-rkl:          [PASS][162] -> [SKIP][163] ([i915#9519])
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-=
5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#9519])
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>
>  * igt@kms_pm_rpm@pm-caching:
>    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#4077]) +9 other tes=
ts skip
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_pm_rpm@pm-caching.html
>
>  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>    - shard-dg1:          NOTRUN -> [SKIP][166] +42 other tests skip
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>
>  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
>    - shard-rkl:          NOTRUN -> [SKIP][167] +13 other tests skip
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
>
>  * igt@kms_psr@fbc-pr-cursor-blt:
>    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#9688]) +3 other tes=
ts skip
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_psr@fbc-pr-cursor-blt.html
>
>  * igt@kms_psr@fbc-pr-sprite-blt:
>    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#9732]) +4 other tes=
ts skip
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_psr@fbc-pr-sprite-blt.html
>
>  * igt@kms_psr@fbc-pr-sprite-render:
>    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#9732]) +4 other tes=
ts skip
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_psr@fbc-pr-sprite-render.html
>
>  * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>    - shard-glk:          NOTRUN -> [SKIP][171] +392 other tests skip
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-glk8/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
>
>  * igt@kms_psr@fbc-psr2-primary-blt:
>    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#9732]) +4 other tes=
ts skip
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_psr@fbc-psr2-primary-blt.html
>
>  * igt@kms_psr@psr2-primary-mmap-cpu:
>    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#9732]) +19 other te=
sts skip
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_psr@psr2-primary-mmap-cpu.html
>
>  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>    - shard-rkl:          [PASS][174] -> [INCOMPLETE][175] ([i915#9569])
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-=
5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
>
>  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#5289])
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>
>  * igt@kms_scaling_modes@scaling-mode-center:
>    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#3555]) +7 other tes=
ts skip
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_scaling_modes@scaling-mode-center.html
>
>  * igt@kms_setmode@clone-exclusive-crtc:
>    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3555]) +1 other tes=
t skip
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@kms_setmode@clone-exclusive-crtc.html
>
>  * igt@kms_sysfs_edid_timing:
>    - shard-dg1:          NOTRUN -> [FAIL][179] ([IGT#2] / [i915#6493])
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_sysfs_edid_timing.html
>
>  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#8623])
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#8623])
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>    - shard-mtlp:         [PASS][182] -> [FAIL][183] ([i915#9196])
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-mtlp=
-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
>    - shard-dg1:          [PASS][184] -> [FAIL][185] ([i915#9196])
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
19/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
>
>  * igt@kms_vrr@seamless-rr-switch-vrr:
>    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#9906]) +1 other tes=
t skip
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-12/igt@kms_vrr@seamless-rr-switch-vrr.html
>
>  * igt@kms_writeback@writeback-fb-id:
>    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#2437])
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@kms_writeback@writeback-fb-id.html
>
>  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#2437] / [i915#9412]=
)
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>    - shard-glk:          NOTRUN -> [SKIP][189] ([i915#2437])
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-glk8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>
>  * igt@perf@global-sseu-config:
>    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#7387])
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@perf@global-sseu-config.html
>
>  * igt@perf_pmu@busy-double-start@rcs0:
>    - shard-mtlp:         [PASS][191] -> [FAIL][192] ([i915#4349])
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-mtlp=
-1/igt@perf_pmu@busy-double-start@rcs0.html
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html
>
>  * igt@perf_pmu@rc6-all-gts:
>    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#8516])
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@perf_pmu@rc6-all-gts.html
>    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#8516])
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@perf_pmu@rc6-all-gts.html
>
>  * igt@prime_vgem@basic-fence-flip:
>    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#3708]) +2 other tes=
ts skip
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@prime_vgem@basic-fence-flip.html
>
>  * igt@prime_vgem@fence-write-hang:
>    - shard-tglu:         NOTRUN -> [SKIP][196] +21 other tests skip
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@prime_vgem@fence-write-hang.html
>
>  * igt@sriov_basic@enable-vfs-autoprobe-on:
>    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#9917])
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@sriov_basic@enable-vfs-autoprobe-on.html
>
>  * igt@tools_test@sysfs_l3_parity:
>    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#4818])
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@tools_test@sysfs_l3_parity.html
>
>  * igt@v3d/v3d_create_bo@create-bo-invalid-flags:
>    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2575]) +4 other tes=
ts skip
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@v3d/v3d_create_bo@create-bo-invalid-flags.html
>
>  * igt@v3d/v3d_mmap@mmap-bad-flags:
>    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#2575]) +1 other tes=
t skip
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@v3d/v3d_mmap@mmap-bad-flags.html
>
>  * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
>    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#2575]) +12 other te=
sts skip
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-19/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html
>
>  * igt@v3d/v3d_submit_cl@multiple-job-submission:
>    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#2575]) +4 other tes=
ts skip
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@v3d/v3d_submit_cl@multiple-job-submission.html
>
>  * igt@vc4/vc4_label_bo@set-bad-name:
>    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#7711]) +8 other tes=
ts skip
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@vc4/vc4_label_bo@set-bad-name.html
>
>  * igt@vc4/vc4_perfmon@create-perfmon-exceed:
>    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#7711]) +1 other tes=
t skip
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-8/igt@vc4/vc4_perfmon@create-perfmon-exceed.html
>
>  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
>    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#7711])
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html
>
>  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#7711]) +1 other tes=
t skip
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
>
> =20
>#### Possible fixes ####
>
>  * igt@gem_eio@hibernate:
>    - shard-dg1:          [ABORT][207] ([i915#7975] / [i915#8213]) -> [PAS=
S][208]
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
18/igt@gem_eio@hibernate.html
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-19/igt@gem_eio@hibernate.html
>
>  * igt@gem_exec_endless@dispatch@vcs0:
>    - shard-dg1:          [TIMEOUT][209] ([i915#3778]) -> [PASS][210]
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
17/igt@gem_exec_endless@dispatch@vcs0.html
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@gem_exec_endless@dispatch@vcs0.html
>
>  * igt@gem_exec_fair@basic-none@vcs0:
>    - shard-rkl:          [FAIL][211] ([i915#2842]) -> [PASS][212]
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-=
4/igt@gem_exec_fair@basic-none@vcs0.html
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
>
>  * igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-tglu:         [FAIL][213] ([i915#2842]) -> [PASS][214]
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-tglu=
-3/igt@gem_exec_fair@basic-throttle@rcs0.html
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-5/igt@gem_exec_fair@basic-throttle@rcs0.html
>
>  * igt@gem_lmem_evict@dontneed-evict-race:
>    - shard-dg1:          [DMESG-WARN][215] ([i915#4391] / [i915#4423]) ->=
 [PASS][216]
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
17/igt@gem_lmem_evict@dontneed-evict-race.html
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@gem_lmem_evict@dontneed-evict-race.html
>
>  * igt@gen9_exec_parse@allowed-all:
>    - shard-glk:          [INCOMPLETE][217] ([i915#5566]) -> [PASS][218]
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-glk8=
/igt@gen9_exec_parse@allowed-all.html
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-glk7/igt@gen9_exec_parse@allowed-all.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>    - shard-dg1:          [FAIL][219] ([i915#3591]) -> [PASS][220]
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>
>  * igt@i915_pm_rps@reset:
>    - shard-snb:          [INCOMPLETE][221] ([i915#7790]) -> [PASS][222]
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-snb5=
/igt@i915_pm_rps@reset.html
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-snb5/igt@i915_pm_rps@reset.html
>
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>    - shard-mtlp:         [FAIL][223] ([i915#5138]) -> [PASS][224]
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-mtlp=
-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>    - shard-tglu:         [FAIL][225] ([i915#3743]) -> [PASS][226]
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-tglu=
-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.h=
tml
>
>  * igt@kms_cursor_legacy@torture-bo@pipe-b:
>    - shard-glk:          [DMESG-WARN][227] ([i915#10166] / [i915#1982]) -=
> [PASS][228]
>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-glk7=
/igt@kms_cursor_legacy@torture-bo@pipe-b.html
>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-glk6/igt@kms_cursor_legacy@torture-bo@pipe-b.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
>    - shard-dg1:          [DMESG-WARN][229] ([i915#4423]) -> [PASS][230] +=
1 other test pass
>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render=
.html
>
>  * igt@kms_pm_dc@dc9-dpms:
>    - shard-dg1:          [ABORT][231] -> [PASS][232]
>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
15/igt@kms_pm_dc@dc9-dpms.html
>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-12/igt@kms_pm_dc@dc9-dpms.html
>
>  * igt@kms_pm_rpm@dpms-non-lpsp:
>    - shard-dg2:          [SKIP][233] ([i915#9519]) -> [PASS][234]
>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-=
8/igt@kms_pm_rpm@dpms-non-lpsp.html
>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-11/igt@kms_pm_rpm@dpms-non-lpsp.html
>
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>    - shard-rkl:          [SKIP][235] ([i915#9519]) -> [PASS][236]
>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-=
5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>
>  * igt@kms_sysfs_edid_timing:
>    - shard-dg2:          [FAIL][237] ([IGT#2]) -> [PASS][238]
>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-=
6/igt@kms_sysfs_edid_timing.html
>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-11/igt@kms_sysfs_edid_timing.html
>
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>    - shard-tglu:         [FAIL][239] ([i915#9196]) -> [PASS][240]
>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-tglu=
-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>
> =20
>#### Warnings ####
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-dg1:          [INCOMPLETE][241] ([i915#9820] / [i915#9849]) ->=
 [INCOMPLETE][242] ([i915#9849])
>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
19/igt@i915_module_load@reload-with-fault-injection.html
>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@kms_pm_dc@dc6-dpms:
>    - shard-rkl:          [SKIP][243] ([i915#3361]) -> [FAIL][244] ([i915#=
9295])
>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-rkl-=
1/igt@kms_pm_dc@dc6-dpms.html
>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>
>  * igt@kms_psr@fbc-pr-cursor-plane-onoff:
>    - shard-dg1:          [SKIP][245] ([i915#4423] / [i915#9732]) -> [SKIP=
][246] ([i915#9732])
>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg1-=
17/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg1-17/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
>
>  * igt@kms_psr@fbc-psr-basic:
>    - shard-dg2:          [SKIP][247] ([i915#9673] / [i915#9732]) -> [SKIP=
][248] ([i915#9732]) +4 other tests skip
>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-=
11/igt@kms_psr@fbc-psr-basic.html
>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-10/igt@kms_psr@fbc-psr-basic.html
>
>  * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
>    - shard-dg2:          [SKIP][249] ([i915#9732]) -> [SKIP][250] ([i915#=
9673] / [i915#9732]) +19 other tests skip
>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14421/shard-dg2-=
8/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130689v2/shar=
d-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
>
> =20
>  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
>  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>  [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
>  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
>  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
>  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>  [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>  [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
>  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
>  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
>  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
>  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
>  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_14421 -> Patchwork_130689v2
>
>  CI-20190529: 20190529
>  CI_DRM_14421: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_7756: 7756
>  Patchwork_130689v2: 1dfbf3ced62236dd318c701e3f21f5a33c226d0d @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fr=
eedesktop.org/piglit
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
30689v2/index.html
