Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA68AA5434B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 08:09:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F2710E134;
	Thu,  6 Mar 2025 07:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5nab/AC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3A810E051;
 Thu,  6 Mar 2025 07:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741244990; x=1772780990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+Wd4C6/RzU9xAHnQVBvE1iVJz3vUKiOwdC043rJ1LCI=;
 b=A5nab/ACMcwXulB87kshWhbp1Q5MvaatDIecxEWM3OOmNlyXS8iVW6xm
 53d/YrcIXk+HKeQ9uma1MZm092UZ5FzOlDd5qOmT30GHA/8DeY6uV19HP
 TyONIdfilRCXguV2dqNmbOvU5IhSXMQFgFoxv4QEcve28HQCRIcSt9n/i
 cn33T1aJN8BrgeFf6MAvyr7EiQKMv3RnZFJi1QFPvidd+ZlKp8+hGBnYJ
 6Wi2RDkzgdy3iLzuyRgRaJDX9HYCRtFvC+bbJXc7W8t3D8BUMixo3Wa5X
 74Wb2NHlGNxXYKzvs3XV5QHE8pyuhcrCkzXuxWMhAvkaXPfqUK5XjwD2z A==;
X-CSE-ConnectionGUID: V1tBB5VzTYOfrm3ITDIxpA==
X-CSE-MsgGUID: 82V70/9PQbW/MxwQyGapJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42153986"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="42153986"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 23:09:49 -0800
X-CSE-ConnectionGUID: LR99TN/9Rvud7yPfVPnZgA==
X-CSE-MsgGUID: oTFa6Pa/RySUDyo8bnWXBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="118739852"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 23:09:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 23:09:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 23:09:47 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 23:09:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PKY2Ezc85J72V0ymfVjvDLaZeIokH7Vzwb4i8Zx8fRdXbvw256ma9Rn0RRNJ11NfTrQMYTclqGGvAvtjzVJGuY4DpT8GgDZLtjUeRKRlEAEmWLob5NZAQab86tFpnxD4H5rp712z1SJYyyOQH09GizgICy0x1vExpFcpDoGzToGam9Uv9CPHAyWIQ5hIi753SYhyn28sWIDGFhBbfF0lOOWuthM+TcHwgH6qWtVg7+hOrdpKl/CvB+ZcLcYkF8zfA+M+1MNE5zM8Jq6m7NYrlRhwG+2egIzo9ESxA3AM7RyFhH9UpIHt5VefH7iX0ycZdMNzk6zlPk1it+EjpeOcYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Wd4C6/RzU9xAHnQVBvE1iVJz3vUKiOwdC043rJ1LCI=;
 b=hs84Sha5bjsZw250X4hB/sbsf2BnhBEtNTa1ZGghUyCNTT8LFlCHJK0kpm3lLMIIQyBf4s0Sb8u/j5YDtDkT5YtdUuzSCDd5OheZ8SosXyo6RfXzBzV0iC1vqDBBk7dSfRePZ/d190405WBxLIH6T/Xr5Lyn2wj9J6c1np+pFMLyQ3vhdqq9Vtuva3BqFRHAVCODwIBcTuGrw/HSRFdyfCR9gmdV2jyXWsbXxTl0Ho22NYJWVCThn3L6jT8DM1LGpxZUJNUi7ua3ZXPsy0zUVryBN6YUovNCmkbDtgO+Y4JKo3SgNE8lNBaK2za5gu/gArnHcO2Lt7ipSp7K6W3TNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6894.namprd11.prod.outlook.com (2603:10b6:806:2b1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.18; Thu, 6 Mar
 2025 07:09:41 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%6]) with mapi id 15.20.8511.015; Thu, 6 Mar 2025
 07:09:40 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Subject: RE: [PATCH v2 1/2] drm/xe/compat: refactor compat i915_drv.h
Thread-Topic: [PATCH v2 1/2] drm/xe/compat: refactor compat i915_drv.h
Thread-Index: AQHbje0tQiVDSBpJRUK3seq6PFRRBLNlsWSw
Date: Thu, 6 Mar 2025 07:09:40 +0000
Message-ID: <IA1PR11MB646726CF92026CD998153F89E3CA2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1741192597.git.jani.nikula@intel.com>
 <d6bd95bf52aa37f48ddec3e675b7a3cc66829eef.1741192597.git.jani.nikula@intel.com>
In-Reply-To: <d6bd95bf52aa37f48ddec3e675b7a3cc66829eef.1741192597.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6894:EE_
x-ms-office365-filtering-correlation-id: c8af9774-6b78-4c05-2fcf-08dd5c7ddd45
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ZW5Wc1JOUHBsUldsSHF2NE52RkYvRFcySlJpbjZEK2pXNzBTbzBVMmJHQWkv?=
 =?utf-8?B?dUdNSi92NVVhQlhrdkpxV3FVVW1QcEVBYmFtLzZHTXFBWEc5RllVVDFUN05w?=
 =?utf-8?B?M3J5TzV1QStTQTZiL0d1azlUaFJHTWljT1ZQbjJlVTZ2YitQTjRnRFpmeVVs?=
 =?utf-8?B?SXN4OUUyRkRJNXNYOHBPYUVEb3VkVHB1MmNnZTlkeWZrbWlwNzdxSXduMDU1?=
 =?utf-8?B?NVFZeWpZZEZzNFlZMVd0N2JIN0FNRktmdDV1NU5SYnQ1ZFBDTUNsNFczUFho?=
 =?utf-8?B?M2pCS3VIVTdPMTJ3ejBLS0YxTWUrcjRpbWtDU3FQemgyYjdjdElneFNXSTN3?=
 =?utf-8?B?cE9YQWtZOGIwcmIxTWl2SjdMYVlabUpaakVKYTRhR1FzOG83SUNUemZrUThh?=
 =?utf-8?B?ODhta0Mxa2xSTy95T2lDU0M2c1Zhc1I5VTNGYm9yWUlKSUJaS2hhNi9WRFFO?=
 =?utf-8?B?dyt4WUt0a3VFVFNmRlNmRGhtV3hYNGdvcEx2YWp5S0lTbFlJUnNqUDlINk1I?=
 =?utf-8?B?SVhTdHc2bWpBWGxkN0NvdE5vbkhMZXA4MHIyNitBU0NGTU5FK0VVbWxVNCtv?=
 =?utf-8?B?SlhnSnlVbHp3YjVDZFBkTDI4WmFsdG1EeldyQzJ4aDN5cTlyY01QT0VLTjdp?=
 =?utf-8?B?dWF3WmFJdjlVU29sZVVLdEVZU25UZkp6NTFydGVWaGZCbUpKZldXL1BTN0lU?=
 =?utf-8?B?RHozZFlCdlcwT1RoY0dpQ0t5ajV6OS93Q0ZwOHRsRFY0ckxDMklRS285Mnc4?=
 =?utf-8?B?QzNQM1dQUWh2V3JpRHhSK0szN3A4VmpKVURrdVY2N1lROWRkNlBMamlLVzdT?=
 =?utf-8?B?eWd6cGdubW9IcHZGb3RBQlVmV1VJRFNKeEczd2hod25qVUloSnlhTnJWK0Ez?=
 =?utf-8?B?WjJ0bWtkUThqTDdQczkxVU1NaVBaM2pwRkRvT1dHU2xNL2RtTnJoNXRjT1d1?=
 =?utf-8?B?RzAxK1lmbVRBVkFoc3EvVVlwaG5STGxlNlJ0N0FqbnM5T0JpNVNZeE1WZ1ND?=
 =?utf-8?B?RFlwOGhrc1hFTDNoZzRwdDhLQytHN0pIS09NTHVwM1VmL045aFhJSVM1N3JJ?=
 =?utf-8?B?ZFppZnNtZHNMM2dadkdEaVZUOWtOZEN6L09wNHN5QUVlR1daTGNHTVVNdngx?=
 =?utf-8?B?c1cwczJzTGNhRlNnT3dzYXdRbHBDcTI4a25SMjAxclU0cjdrOTQrN0tFKzA0?=
 =?utf-8?B?T1NoQSs5MXlLQWNJaHZRVmRiV3BrZWtqNUZUbTBBZmFtcmtLRnBmUy84bjEr?=
 =?utf-8?B?TlFsUEpCQ1YwclJKbVJZbUg0RUxWRm5zOXNQcXQ1Z3ZuVXhWSGhMV1VuczEw?=
 =?utf-8?B?cFBjdzVEelFXWkZnOW9yODhRZmJJVVRTUnU2bnRyQXR5YjFRaUczTGJUcUlP?=
 =?utf-8?B?WnBvaGN5Myt6REoyK2JMdmZ3WGpiTTBJd1lQTXNXKzlQbmRNZUhNTjBKTS9D?=
 =?utf-8?B?eDlCbjZZL0lFZkpuQzFNeHZoenI5UUM5clFKSk5UUVVGWXFITEZIVDMyVGpn?=
 =?utf-8?B?VERBMThYekV6bEdPTVh1UTZQT1VHZnhMYk5vNGNlbTFQaCtPeXJJTFJxNlpm?=
 =?utf-8?B?NG0wYTBmU0JIT3hESTl2Yis1OE1xMG5hTi9DUmJBQi9nbFlIU2Y1akppSExh?=
 =?utf-8?B?enhUcGs2aitZSTBXWHY0NG16YnNhZmx3UVVQWTNpTkozUnJwWXFlcEcvek1W?=
 =?utf-8?B?ZnFBd25HVEZTTnBqcmROTFF4emZlT0hwYkQzTW93b1hYZlVTMXUxVG5rUEFu?=
 =?utf-8?B?VGRaVHlKeW1vYlVOMkt2WjdUT096V0t2TFovcVJVc0srUTBQZlp3UFdMYXFG?=
 =?utf-8?B?bDBKN3ErajVRTXZjSkVOaTVYZHF5QTNkZFUzL2Q2eDVYRGFvWkFkV0x4d0Q5?=
 =?utf-8?B?bG0wNFdrMXNScmRYNHZ0dGd4bTlYUU1wSzdKVXhUU0IxemhSaTZxdGpuVUEx?=
 =?utf-8?Q?oicjeNxJtiqwGPFzfY8Ss5tpfykW88aM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWlOUFY1dlo1NnUzenBFWGRzN1grUTJXbmFUdWVCVjJSRkN0dEFqV2hhZjJV?=
 =?utf-8?B?QVQ0eVlIMmcrTFFJTm00SEJNeEphTjJUMStjVmE5MVJTbDNHd0lwbnVhRWVk?=
 =?utf-8?B?dDl5YUwvMmh0QzF2SllLM1puMjZUa21uWFozRmgvUktraFloa0ZhbVpJNUNn?=
 =?utf-8?B?cGhlb2pDV3dtaEJqb28xSndEaTQ2UXFWbzE2cm00NzhUUk1nampwdE9ibFR1?=
 =?utf-8?B?bTRYQytNREhxUFIyQ2YvUytSbCt6UWdQZ3FDMEdNaGo3MGQ0ZVc3KzVQZ1Bu?=
 =?utf-8?B?NnQ1TE1QcXl0Tmt1azJURWxOeGgxaUNYeERTUUFvMHdTOXJsNTY4MDU2cVpy?=
 =?utf-8?B?QTg5dytaY2gyL0s1NjdBbWNqVzZjQkhLZzN6QTlBWmllaUdmdmpSNndHQnRq?=
 =?utf-8?B?L09xR3AvQ0JVMCtUQ2lkc0R2QURzT2M1SHVLeWc1TmtRb1BNbXp5RWFTaU91?=
 =?utf-8?B?OEE2SFhYNDNBS3kzak5ZNzQ5NVd2V1p0TWlObHE5V2VNbXM1U3FVTW8xWmFQ?=
 =?utf-8?B?TUR1RGVMbDd5Z1RjbHI4TlpDU1lGZ0VmZzRZNk1uSmhINllBb2t6MHQ1Y3F4?=
 =?utf-8?B?ZmExbjRONnpzR0gvMmR3ZllGeXpOSUg0cWtPNkp5NG15M0VIeWlqYll6WnNY?=
 =?utf-8?B?REM5dEVwVHhhcS80WVVqTGJjL1JZelN5NmNIMW0rSHJaalJsSmJ3bUx3eHJ6?=
 =?utf-8?B?bmwrSnhFK01leFhhdmpsYTlxRHo2S2x6cndLZFB3NzZWd1lYZWJOaDN1M0hG?=
 =?utf-8?B?ZlZKWWFKTllUSVZNOTkwY0gzemJUaWRoemM1eVJwVFl0dnFNa2krbmpLRnRq?=
 =?utf-8?B?eHdjZ2t4a0hjTmxSQzJPdUI4a0xPZS9GTXJYOEZhS1Z6b2RIYTl3M2Q0a3hr?=
 =?utf-8?B?L3RTaWtoVGdpcVJESk5XTncrTjlGTjgya0Z1cGxGUDJRTDlYdXRyMEJUSUgx?=
 =?utf-8?B?c0crMzZiU3g5TTF6eWxSZkJtMlIrY0E0R2xpT0hhMWFJd3l5TElVK2tGdGRI?=
 =?utf-8?B?SWlZSGhVT1lQT2RNNFhNQndyMVphOXNOOTZCazg0bjBLVU90a2xFcjBmWVFI?=
 =?utf-8?B?em5qMEEzOWhhbW1vc2lyZ3FJM1BxNHpKcmdjamtnRFkwWEdUQlFMMHgrOHlP?=
 =?utf-8?B?aTZkS213U2VkYkdWYnNkbDVYRWpmK3VENkRMdVA0UTJCWlhOMzY0aUhrYUk0?=
 =?utf-8?B?eG14N1pSYlZuUG1uTzEwTWZGRURPeTVka2prOHkxLys3WE4vVUVwZUNhdFp5?=
 =?utf-8?B?OHlYdWxibmdhTFJrdWlySE85S2ExS3JTM2xSQUlHRHA0V1cwZUhYbDBpMFFQ?=
 =?utf-8?B?SnVBM01WVTdLQ1RsRU1qcVJSTXFTVmpJWklNVklDa3dMbHYxRFdYamowNWNU?=
 =?utf-8?B?RGZxWmwwQk5vbmZFL0xkMGlPN2Q4SmIzRGhhUU1MYWRITlpLQk4xM2JHVUNS?=
 =?utf-8?B?ZStmZGw0TVIzNnhmcTBuMGN1VW9hRTluc1cwalA1QnVrY2k0NmFYVVpoMXpB?=
 =?utf-8?B?S1J2eDFVQktmQkhFb2ZWZnFUcmFkc0o0ZHJZNUFkaGFtRmdyUURHY3l4NWNy?=
 =?utf-8?B?Zyt2NVB3aHlSa0JmQVpGUUJBNkoxa2dBb01NWnBkSTlEZXFWbTBqQURrL1lU?=
 =?utf-8?B?MlhYQ0s5eDB5Uk5wUWJqMk1LTVZocGhYYWdOanVGU1VjN0dmSUd4WjFNam5p?=
 =?utf-8?B?MUk0dHJVc1cyRmNPRjVMbEIrSXZHbzFEelpDbjRMTG5LRVVybVVpZEdRdmov?=
 =?utf-8?B?ZFU2MDc5QU0xY0I3NmJKL2tKMGkrUWpXYTgxaDNrQXZqdUM1L2praHFlbThl?=
 =?utf-8?B?L2RIU0VFNXZhakNxQkJ5UTdCY2F4dURqelBBeExjRlNRWEJvVm9wVENkd1dh?=
 =?utf-8?B?MW83blJXdG81NEprM2FzU2dRaCtKNnZWcEp0NDM3UnNxOWkyaXF5Mkx2Kzlm?=
 =?utf-8?B?VS9XN2RMajRWMmQ4TDZLSVpmZzlTUU4xY3I5ODNXU25idW1NbVNSL2grQnRB?=
 =?utf-8?B?ZmFnWkhOb1EybTRjSyt0dXFxK29maE5lL3JhSTBmdnRpRHMrTTlheGEyZnQr?=
 =?utf-8?B?Tng2T3E5MkprUGQ2ZU9QQzYzdVh1L0NhZDdzYkhRR3Q3MHJiTmxpQkFreSta?=
 =?utf-8?Q?YJpuCvKGUwku1fF0J5JL/8t51?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8af9774-6b78-4c05-2fcf-08dd5c7ddd45
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2025 07:09:40.8973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y9g5aZ2EGwpG5miCtGlDtl+2q7h2WgUl0Fh+e3e0oyXsETm3qj6RPPnPTcAgCbVElwdTiaKHZBhGl0Qj33BZPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6894
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pDQo+
IE5pa3VsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDUsIDIwMjUgMTA6MDggUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBWaXZp
LA0KPiBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0gg
djIgMS8yXSBkcm0veGUvY29tcGF0OiByZWZhY3RvciBjb21wYXQgaTkxNV9kcnYuaA0KPiANCj4g
VGhlIGNvbXBhdCBpOTE1X2Rydi5oIGNvbnRhaW5zIHRoaW5ncyB0aGF0IGFyZW4ndCB0aGVyZSBp
biB0aGUgb3JpZ2luYWwNCj4gaTkxNV9kcnYuaC4gU3BsaXQgb3V0IGdlbS9pOTE1X2dlbV9vYmpl
Y3QuaCBhbmQgaTkxNV9zY2hlZHVsZXJfdHlwZXMuaCwNCj4gbW92aW5nIHRoZSBjb3JyZXNwb25k
aW5nIHBpZWNlcyBvdXQsIGluY2x1ZGluZyBGT1JDRVdBS0VfQUxMIHRvDQo+IGludGVsX3VuY29y
ZS5oLg0KPiANCj4gVGVjaG5pY2FsbHkgSTkxNV9QUklPUklUWV9ESVNQTEFZIHNob3VsZCBiZSBp
biBpOTE1X3ByaW9saXN0X3R5cGVzLmgsIGJ1dCBpdCdzDQo+IGEgYml0IG92ZXJraWxsIHRvIHNw
bGl0IG91dCBhbm90aGVyIGZpbGUganVzdCBmb3IgdGhhdC4gaTkxNV9zY2hlZHVsZXJfdHlwZXMu
aA0KPiBzaGFsbCBkby4NCj4gDQo+IFdpdGggdGhpcywgdGhlIGNvbXBhdCBpOTE1X2Rydi5oIGJl
Y29tZXMgYSBzdHJpY3Qgc3Vic2V0IG9mIHRoZSBvcmlnaW5hbC4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8ICAyICsrICAuLi4v
eGUvY29tcGF0LQ0KPiBpOTE1LWhlYWRlcnMvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICB8IDE1ICsr
KysrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9p
OTE1X2Rydi5oIHwgIDggLS0tLS0tLS0NCj4gLi4uL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaTkx
NV9zY2hlZHVsZXJfdHlwZXMuaCB8IDEzICsrKysrKysrKysrKysNCj4gLi4uL2dwdS9kcm0veGUv
Y29tcGF0LWk5MTUtaGVhZGVycy9pbnRlbF91bmNvcmUuaCB8ICAyICsrDQo+ICA1IGZpbGVzIGNo
YW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pICBjcmVhdGUgbW9kZSAxMDA2
NDQNCj4gZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5oDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBh
dC1pOTE1LQ0KPiBoZWFkZXJzL2k5MTVfc2NoZWR1bGVyX3R5cGVzLmgNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiBp
bmRleCBhMjZiNTQxODVkNWIuLmQ4OTljMzdkODBjNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IEBAIC00MSw4ICs0
MSwxMCBAQA0KPiAgI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+DQo+ICAjaW5jbHVkZSA8ZHJtL2Ry
bV9nZW1fYXRvbWljX2hlbHBlci5oPg0KPiANCj4gKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fb2Jq
ZWN0LmgiDQo+ICAjaW5jbHVkZSAiaTkxNV9jb25maWcuaCINCj4gICNpbmNsdWRlICJpOTE1X2Ry
di5oIg0KPiArI2luY2x1ZGUgImk5MTVfc2NoZWR1bGVyX3R5cGVzLmgiDQo+ICAjaW5jbHVkZSAi
aTkxNV92bWEuaCINCj4gICNpbmNsdWRlICJpOXh4X3BsYW5lX3JlZ3MuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF9hdG9taWNfcGxhbmUuaCINCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94
ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2dlbS9pOTE1X2dlbV9vYmplY3QuaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2dlbS9pOTE1X2dlbV9vYmplY3QuaA0KPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjAzZjM1ZGNlN2I5Mw0K
PiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1o
ZWFkZXJzL2dlbS9pOTE1X2dlbV9vYmplY3QuaA0KPiBAQCAtMCwwICsxLDE1IEBADQo+ICsvKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+ICsvKiBDb3B5cmlnaHQgwqkgMjAyNSBJ
bnRlbCBDb3Jwb3JhdGlvbiAqLw0KPiArDQo+ICsjaWZuZGVmIF9fSTkxNV9HRU1fT0JKRUNUX0hf
Xw0KPiArI2RlZmluZSBfX2k5MTVfR0VNX09CSkVDVF9IX18NCj4gKw0KPiArc3RydWN0IGRtYV9m
ZW5jZTsNCj4gK3N0cnVjdCBpOTE1X3NjaGVkX2F0dHI7DQo+ICsNCj4gK3N0YXRpYyBpbmxpbmUg
dm9pZCBpOTE1X2dlbV9mZW5jZV93YWl0X3ByaW9yaXR5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LA0KPiArCQkJCQkJY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0cg0KPiAqYXR0cikgeyB9DQo+
ICsNCj4gKyNlbmRpZg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1p
OTE1LWhlYWRlcnMvaTkxNV9kcnYuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkx
NS1oZWFkZXJzL2k5MTVfZHJ2LmgNCj4gaW5kZXggODRiMDk5MWIzNWIzLi5kZmVjNTEwOGQyYzMg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5
MTVfZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMv
aTkxNV9kcnYuaA0KPiBAQCAtOTUsMTQgKzk1LDYgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqdG9faTkxNShjb25zdA0KPiBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQ0K
PiANCj4gICNkZWZpbmUgSEFTXzEyOF9CWVRFX1lfVElMSU5HKHhlKSAoeGUgfHwgMSkNCj4gDQo+
IC0jZGVmaW5lIEk5MTVfUFJJT1JJVFlfRElTUExBWSAwDQo+IC1zdHJ1Y3QgaTkxNV9zY2hlZF9h
dHRyIHsNCj4gLQlpbnQgcHJpb3JpdHk7DQo+IC19Ow0KPiAtI2RlZmluZSBpOTE1X2dlbV9mZW5j
ZV93YWl0X3ByaW9yaXR5KGZlbmNlLCBhdHRyKSBkbyB7ICh2b2lkKSBhdHRyOyB9IHdoaWxlICgw
KQ0KPiAtDQo+IC0jZGVmaW5lIEZPUkNFV0FLRV9BTEwgWEVfRk9SQ0VXQUtFX0FMTA0KPiAtDQo+
ICAjaWZkZWYgQ09ORklHX0FSTTY0DQo+ICAvKg0KPiAgICogYXJtNjQgaW5kaXJlY3RseSBpbmNs
dWRlcyBsaW51eC9ydGMuaCwgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21w
YXQtaTkxNS1oZWFkZXJzL2k5MTVfc2NoZWR1bGVyX3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9k
cm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pOTE1X3NjaGVkdWxlcl90eXBlcy5oDQo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYzExMTMwNDQwZDMxDQo+IC0t
LSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRl
cnMvaTkxNV9zY2hlZHVsZXJfdHlwZXMuaA0KPiBAQCAtMCwwICsxLDEzIEBADQo+ICsvKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+ICsvKiBDb3B5cmlnaHQgwqkgMjAyNSBJbnRl
bCBDb3Jwb3JhdGlvbiAqLw0KPiArDQo+ICsjaWZuZGVmIF9fSTkxNV9TQ0hFRFVMRVJfVFlQRVNf
SF9fDQo+ICsjZGVmaW5lIF9fSTkxNV9TQ0hFRFVMRVJfVFlQRVNfSF9fDQo+ICsNCj4gKyNkZWZp
bmUgSTkxNV9QUklPUklUWV9ESVNQTEFZIDANCj4gKw0KPiArc3RydWN0IGk5MTVfc2NoZWRfYXR0
ciB7DQo+ICsJaW50IHByaW9yaXR5Ow0KPiArfTsNCj4gKw0KPiArI2VuZGlmDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pbnRlbF91bmNvcmUu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2ludGVsX3VuY29y
ZS5oDQo+IGluZGV4IDRmYzNlNTM1ZGU5MS4uMGMxZTg4ZTM2YTFlIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pbnRlbF91bmNvcmUuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pbnRlbF91bmNvcmUu
aA0KPiBAQCAtMTAsNiArMTAsOCBAQA0KPiAgI2luY2x1ZGUgInhlX2RldmljZV90eXBlcy5oIg0K
PiAgI2luY2x1ZGUgInhlX21taW8uaCINCj4gDQo+ICsjZGVmaW5lIEZPUkNFV0FLRV9BTEwgWEVf
Rk9SQ0VXQUtFX0FMTA0KPiArDQo+ICBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF91bmNvcmUg
KnRvX2ludGVsX3VuY29yZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKSAgew0KPiAgCXJldHVybiAm
dG9feGVfZGV2aWNlKGRybSktPnVuY29yZTsNCj4gLS0NCkxHVE0sDQpSZXZpZXdlZC1ieTogTmVt
ZXNhIEdhcmcgPG5lbWVzYS5nYXJnQGludGVsLmNvbT4NCj4gMi4zOS41DQoNCg==
