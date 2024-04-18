Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C008AA390
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 21:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E40113F87;
	Thu, 18 Apr 2024 19:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hukYeMt6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDB3113F86;
 Thu, 18 Apr 2024 19:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713470358; x=1745006358;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=MBeMGLpAmDVaGMJwmU2RHjmn/uXvdKtvckXctDgFuTA=;
 b=hukYeMt6p/ugMrCJlsp5o/iewoZcQgqeMAvkJ+J2tbyqYzIK0aW6wxkC
 Pp97bte+4YwevRohgLST8Jpp+kRFYv3+pxVlgQkEFvfVVAWXvLKuzjzfE
 YBk52fLvf0ij72oTQCib+DlfhZ3zBRNBfzBk7yi3bjIV/AtRGRdDbN/Nk
 eyeF/T0y1jpyf/t4QdmQXKs/i/phI9vu/+udgslLLoR1e1YlLmZ5aYdnU
 XLKu2kDYi9SvE6Rt3ltBGAp7eiAO/XnzCnIuA+BdrXZ68GWsj080RTKi7
 DgOI5HZCPT4tb47RlMiZy8mVaGxE7hnInywf7DCQohTSCoCG/zEfdvL+d g==;
X-CSE-ConnectionGUID: nmac7ScpSJCKWaOATeOtOw==
X-CSE-MsgGUID: vxBAxfYtR9epAtnRyiv8iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19604984"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19604984"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 12:59:17 -0700
X-CSE-ConnectionGUID: +RwWxtGoSDeVEbscpRzHHA==
X-CSE-MsgGUID: YkAGkBCMR72VgLdjKaFqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27862485"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 12:59:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 12:59:16 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 12:59:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 12:59:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 12:59:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8O8FFn53ZMGmzUdzdaDfjOFAXxXVkPuwOWKoPV0tOejHQFNR9QIm+ol9GbmfmcEswFwX8G38us6tZHvQZG+J4Rb/NWZhJIWAhti9k+zTmG/CqZQUL/4XEe7+O2zAfQYury9rFok/o3/iVn0Zmwo/RRxY2zu7CmJHDElZwN7ZXk5LFR9fcNuBDIw6aPsfk361p7Wp+QDyZf31E/oB4vx7tihjD9+QpvyDc2G54zkagyHgJWzSnpID0qGHhAroI1nef52NbPf72yd0w02xovs2muh+2XB6C8IJ3yQwRPBd4qDHjdT/sFrcYguJyEFGos+peFTCwkWXuesUEsPNt1+Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5YEFB2iqEkznhX3en3nwiTjWLRRDFUW6wXjWmhRENU=;
 b=M4XUWgUj49CJ9gqUm+Xzg4WnE9pZfGdEA2ZLCWux5ljKsroKFCggX7ReDrAuTQdq8El3Gxr2z35KzwxiL5rEb6UaxxshV2m6pmroqYtNuPU20pHWGtXenx/JsnXBeyPGFuBpj7pNIrAGasNYbemd4CDNhXPrD5qElftT1Z+nnt713ey5aoXtKRKpKOAZRofhKltlZ/saOB5m6fko4j7cYTqfOZUHlK0+6yrxoW7Denqdpsi3GRSz2JYzVnDp+IWB5bi6Om7JjJrZMOco/hviZP84en+ZOJ16fNpIKmHTF7vkV17AfBBho5nDzKQAGvW608Lv2gjaYo6LpU60FEWfZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7615.namprd11.prod.outlook.com (2603:10b6:510:26e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Thu, 18 Apr
 2024 19:59:14 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 19:59:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87le5awill.fsf@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <725c3580aae52bf34f32b93275cce6208dfd42b7.1713450693.git.jani.nikula@intel.com>
 <171346501148.2007.15538095166602817029@gjsousa-mobl2>
 <87le5awill.fsf@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/dmc: handle request_firmware() errors
 separately
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 16:59:05 -0300
Message-ID: <171347034508.2007.16898323029258961080@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::40) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7615:EE_
X-MS-Office365-Filtering-Correlation-Id: 5227a7de-4f85-4788-2dd2-08dc5fe20573
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t+nCyGGHlvKIRVdSFRNNlE/fA8lBW4VbXa5twH37+rmGCi2NcGDrq3oAfZK8sx25fXWa29R7w1gqwxsGUMqSQvbFR7bpehgPi6C18/Ny1gkWVs0m+yTGgCqWqOQ77tYLQXl3Yl8pLY7ZtjN/X9sDD/U5H3VDtoRH5gXr79rhksenc/IqCUOpz24kNimRk/EJQAOCPlNr8OQSYlJsZDqqy4p0UyHriR8FTHciPqBhG+pnjhGF4XfpzGikjoxcJ7kVqRRCoShqt2bTpw2XJNhqZMf+zTAKM2HV/U4J2qXEwhAZPwdTp9ETi6sXYQ4aFyR5oquIPGT3QFhg/dUZbUAbbYoxMirRhrjO3jJDVdEcvE4H/sDatYM37Tx7VIZMjejAq2lr8J4HkN4FIGC0Qb4XtVPpnzgrbmOlOCgYlKNesphCgzJeF4qcDyaolPtKZ06QmjazdSipfH3Du+DTcsvLnbGefmhivqgVx/w0YaVoyHzJ60AglmH6+KtPMShXUb76mAU5jNJvPy1uybmBYf0RbunG66Z+NFDHgVETxifHjrckEkVqIDFweeIQ97mf6PokppkEKdRa5Z311Lv2pzQbd8GphIgVQEJMxK3lBTWPR/ADi10WoJggzoY2I0QuE23J+0nyNlinA3M4Iej5fpXqXeqNIKhRmWn52j8Ic/4OPrc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3hzUGxxWFQrbzYvaG5Lb1FVaURoTjBFTTZjLzZvRFQ0S0JXOXdIanMzRTVw?=
 =?utf-8?B?VElHckJ4OGFzakhoY2pHc2poSFBOVXA0MWhZaFAwZnYwWnRVRnRwTk1QYzNX?=
 =?utf-8?B?STJ6VHArdDhqNlA4T3d6b2ZjZkRsYVgySDlsbU11ZXVtTEU4MHF3Vm9wWEdR?=
 =?utf-8?B?WkZHWnhZdi82WG5BMDR1d1dkSHNzV1ducjAzZUNjTytwWHRVcUZJZFVJM1Jq?=
 =?utf-8?B?RWRicERWV0V0WU5yMEVjTjNCS3dxNnVkOTNDNlBjcnpkaTdYaHQ1ekZFeG9k?=
 =?utf-8?B?Z09KVGMyZFQ5Z0NxZVZHUXlWaFRBVDQzSWYzalIzUVpBS05YeEVkUkNhNXpk?=
 =?utf-8?B?ZU5meHNRRW9BOTJ6UHRTblQ0Z2RIU1FsVjVUcm80TlMyRGJFM2VjcnRkcFFM?=
 =?utf-8?B?bXZUbzlFYS9xV2htVm8rdzlIUWM3d2RPR2M0Snc2MVVkcXg2K0tqMTRRMUgy?=
 =?utf-8?B?N3lGSmVwMzVYa0QydXNJeE0zMUh6aE82Ulc0YU4wVFBJaDlJYjZMaCt3dkdm?=
 =?utf-8?B?TWprSGxDYUxVWXhRTkcyTWoxWkxwakxrT2hJWFBCWDBKNEF0RUwyYjdQTGVW?=
 =?utf-8?B?MU8vUnB4YWdVWUd5aEtKTFNPTTczRCtvZ3laRFVNeFFxU2x1b2FGSWtWOHFF?=
 =?utf-8?B?cFBQSytVRDR3MmZoV2FGV0lXMms0TEFYOFZYWXJmUXU1dnpIb2YwaStSK0VK?=
 =?utf-8?B?QkZlb0Q2Z2ppN1VPNlU5UjhvMGRISmZ3TU1QUTQrU00vUmpQaDhpSTdzdlUx?=
 =?utf-8?B?cU45OWFGVVhxWkVYVWV4cU9JdU0yUldFVTUyOTNRenhPVW5LdGcrdWU4N21G?=
 =?utf-8?B?bFVwUitOUmtBdFYyR0ZxVmg1UE5lbGlQNkpRQVVUR3gyV2VCeGt0NWxMbklS?=
 =?utf-8?B?M3FMNlJLMDdpWTZtdS9LaXpZc295aFdad3RFSzhrSXhRSnpOd25oRlgweUZ1?=
 =?utf-8?B?bjRhb0lwejZzSkY0QnNjK2xPWkd0SnpUSytpUngwZFRia1MwZTNKSi9Bd3pt?=
 =?utf-8?B?VmhKcVpiUVUrNkZaNzVuOCt1NS9RMjRIcngzbFZPOE1uSWNCWGxLOEszVzAw?=
 =?utf-8?B?OGc3QXYyNkVUUnZZenlsVm5mQVcweFg2M2RGU0hwWWsrQ0g5MHBDQ1BjTVhm?=
 =?utf-8?B?Mnd4VzJnenJrNGFFUG9Fd3Izd1hJanR5dGpBMkRQSW5CMlR2OFN1ZDR0b0pl?=
 =?utf-8?B?L0ZvRzFKM2k0SGdVMXlvSGRiRHBodS9aL1VJbUlBbFBkZFJZbTFsTHNSTWdP?=
 =?utf-8?B?UzduM0VvdENleTVmVjJuVmhSanBIZ0gxdFFRbm14bFNmZ2taMUVRNGY5QnNY?=
 =?utf-8?B?TUVkNGthd2NyQkRLTlhvbkROOUtVVEQ5am9kUVRNWTNFQ2JxakZNa0N4L2gv?=
 =?utf-8?B?Z1JQYzBiZGt1NzdheW9hZnNyeVYrVzhGeXp6cXZMSHI3bGNFTXpJUnl1dk5F?=
 =?utf-8?B?R1NwWHZyWWROeEZ2Yjc2dlhyMFZmb2Y0aGNQU0U2dTRrY0xJc2d0VE8razN3?=
 =?utf-8?B?b2ZSUnIxZGFSUmVtZS9SRXVDdnRqV0RaSUNMaVVqRFlTTEFJSkU0amhjMDUv?=
 =?utf-8?B?eUZaaWJZazJidnJZQkVWL1VFbXNkeDczcHM1OUsyTU12Um8vZFRCUk04MkdF?=
 =?utf-8?B?UFc2Tkxjc3pBaTZnT0FYcktFbkpYdzFESG5JTFVudTBCeHl1a2ZLalVpVXQ0?=
 =?utf-8?B?dFdrQ0RvaTl1Sm51YWZaWTM3Y3U3c20wSXNyK29NSGJSQUVORVpsOUt4Wkpz?=
 =?utf-8?B?Qk00REVWOC8vSUxRcWMzTHhYNlZONm9ZRnliMlh0MmlMQ09nZkdoMUZ5eFlE?=
 =?utf-8?B?SFVEbnBlTjc5MVRFWEhJbExnRGRCV3ZGZVptVUQyOE04REU4c1N4Zk14M1Q4?=
 =?utf-8?B?dmJZSEhwVEFibE5oL3E1Sm1LK2VKM1VVaGM1WlRuUHZsaEZvZHFWWGsvcVox?=
 =?utf-8?B?K2l6bTljWWh0UzlXOFMyY09ZQ0FWVllhSUkzY0JkNFg3VEVONllvbUpRK0hw?=
 =?utf-8?B?dEwvR04yL2E5S1VPSWNGbzlmeHhSMjhJME51QVcrTHh2dEZQTVVoS3ZiM1B6?=
 =?utf-8?B?aElaSkRONDVBRkIyVXlhRy9YNm50V3BRdzdSMXN2VmdFWm91b0Ria01SbVpw?=
 =?utf-8?B?VXQ0LzJMR3c5a1dvRStGSWttZkpCbStxZUI2bW45bXd2VElibjNWVlpuSXQy?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5227a7de-4f85-4788-2dd2-08dc5fe20573
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:59:13.9488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mhoCMUgbMDu0Hr6y9Dbk76uO/+2BW/Kf4LtIScUC/U2am4arN3m/Zt+pkfXzRrxt2uxZzOjXcZbb03CaYoPEmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7615
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

Quoting Jani Nikula (2024-04-18 16:56:06-03:00)
>On Thu, 18 Apr 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2024-04-18 11:39:50-03:00)
>>>Clarify request_firmware() error handling. Don't proceed to trying to
>>>parse non-existent firmware or check for payload when request_firmware()
>>>failed to begin with. There's no reason to release_firmware() either
>>>when request_firmware() failed.
>>>
>>>Also move the message about DMC firmware homepage here, as in other
>>>cases the user probably has some firmware, although its parsing fails
>>>for some reason.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_dmc.c | 11 +++++++++--
>>> 1 file changed, 9 insertions(+), 2 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>>>index a34ff3383fd3..65880dea9c15 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>@@ -942,6 +942,15 @@ static void dmc_load_work_fn(struct work_struct *wo=
rk)
>>>                 }
>>>         }
>>>=20
>>>+        if (err) {
>>>+                drm_notice(&i915->drm,
>>>+                           "Failed to load DMC firmware %s (%pe). Disab=
ling runtime power management.\n",
>>>+                           dmc->fw_path, ERR_PTR(err));
>>>+                drm_notice(&i915->drm, "DMC firmware homepage: %s",
>>>+                           INTEL_DMC_FIRMWARE_URL);
>>
>> This could also be:
>>
>>     drm_notice(&i915->drm, "DMC firmware homepage: " INTEL_DMC_FIRMWARE_=
URL)
>
>Although it currently doesn't, a URL could contain printf format
>characters.

Good point.

>
>>
>>>+                return;
>>>+        }
>>>+
>>>         parse_dmc_fw(dmc, fw);
>>
>> Maybe also remove the now unnecessary NULL check for fw in
>> parse_dmc_fw()?
>
>Yeah, was ambivalent about it, could go either way.
>
>>
>>>=20
>>>         if (intel_dmc_has_payload(i915)) {
>>>@@ -956,8 +965,6 @@ static void dmc_load_work_fn(struct work_struct *wor=
k)
>>>                            "Failed to load DMC firmware %s."
>>
>> Should we tweak the message to differentiate from the previous one? At
>> this point, we know the blob file exists, but there is a problem with
>> its content.
>
>That's done in the next patch. :)

Yeah, realized that later on. :-)

--
Gustavo Sousa

>
>>
>> I think the patch looks good and to me all of the above suggestions are
>> just that :-)  So, with or without them:
>>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Thanks!
>
>BR,
>Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>>                            " Disabling runtime power management.\n",
>>>                            dmc->fw_path);
>>>-                drm_notice(&i915->drm, "DMC firmware homepage: %s",
>>>-                           INTEL_DMC_FIRMWARE_URL);
>>>         }
>>>=20
>>>         release_firmware(fw);
>>>--=20
>>>2.39.2
>>>
>
>--=20
>Jani Nikula, Intel
