Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7CEA44EAC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 22:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 452A310E7F2;
	Tue, 25 Feb 2025 21:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJ+2K4/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B943A10E7F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 21:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740518409; x=1772054409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=866DyyDz4uHWRcj4M++amblitVyYTs8WQwExFD/Hl0E=;
 b=JJ+2K4/DwzgwC28tntAaYFnp9q4Ymcpe3Y39G0hfS6osyNwbgwmO7WMv
 SfgeXAAfPxXl20kvBc/c00KFzh72E0TeJTYeRORyF45lQMPzbWZ/x4z7Q
 uFkQlMLz5OYhAezrtCW8LoOjgJPBv4esWzr1OB1xh/6gKT1yDhlqGYOdk
 YoPIt0/fYpQ1J0OPyBp67Q4Z5ckYUz4hbvrqNTb4y/y0s0vEveNahYcQr
 JKeKJ69ifB4yGsLSxprk3q56DkC/IIUUB32DkoxnEChTto1XatUEj58uu
 lBGdWNSjBsFo9D1kPqGdVrMmZ0DUfaResaINVdnkgXk1F5kG2Ot69bnjH g==;
X-CSE-ConnectionGUID: P1gCgOF8TYexC0QsXietkQ==
X-CSE-MsgGUID: eUvwTF/iTn6VLfQ/xFUrTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41366502"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41366502"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 13:20:09 -0800
X-CSE-ConnectionGUID: FuLj5vXOSo2OGaRJ16IKGQ==
X-CSE-MsgGUID: pK+VA1JVR2+OcglUZTD5bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121497026"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 13:20:09 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 13:20:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 13:20:08 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 13:20:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I9N/dLn3595uIjjh++hI6va3wgoz4uvK2K5D46xEc2g2unnezL+oKkzc54vF+j5ytRfbAiXVDWRP0gcReRSP5mwe1+icywbsng6lV2uhohD9g20piShTSiWCX5x+EhPyyEt0azSwU7UBodXkIoTi+bclDrm0kLaM7y80qoIJETBJE7l5x8cCxzgfN51SM86TuY48P0YSlu7uttmO0WiRs8TCOZKtVG8BluY1Ajs1enMki4Bw2oE58+oG8aRKSG8G0oCM5tdlgyS+20fa80Owq/BVHznlJOE9ClUjuWm09s/1JsKgdcoo2RtLeJkpJmUJFjHxfmzjThR4iUzpBkNlIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=866DyyDz4uHWRcj4M++amblitVyYTs8WQwExFD/Hl0E=;
 b=CSzYz9TOu57n6wcDGPdBCTPIXv5e/66E0qZ8Wq/YYLdLegcQ6eT6LsgVXhEKTrUe+kf1CrUeg0LtYnD5dRnCL5MeFPp3HYuG3wUvuC3h43CRzKT2fF0v17IhLlC8yxZdF+Ckyyy/09kfRUudwD7ocWoi61M7mePhqwsknE275gxIi6lakwXCbsZuec9yKkUBtrQTINNv/Mvmt1YGOXyK+8yA0nZ5xUelVKVVKVk87Z1+Owtyr+JApcOs3pDGDKbHVadzy1zWG6AtWysgkekbhysxycFbjqpLqVyjECceQuGOre5mUGyoKV9HlP8ZDn/BWpXGM5LdO2fJMmQ1k0mZRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB5886.namprd11.prod.outlook.com (2603:10b6:510:135::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Tue, 25 Feb
 2025 21:19:53 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.018; Tue, 25 Feb 2025
 21:19:52 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH 01/19] drm/i915/cdclk: Do cdclk post plane programming
 later
Thread-Topic: [PATCH 01/19] drm/i915/cdclk: Do cdclk post plane programming
 later
Thread-Index: AQHbgkrNLOMZbKpiUEGIsmbClA6ehrNYkW2A
Date: Tue, 25 Feb 2025 21:19:52 +0000
Message-ID: <5e2698486cfbf56214e285c61c3fcf58c0304f59.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB5886:EE_
x-ms-office365-filtering-correlation-id: cc78936b-960a-4125-0fab-08dd55e2250e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bTJhaWJDclFlSHEwamlZeStNL3ZVdWlKc1BOQWZhK25xWTB1SFgwVnB6V1Zp?=
 =?utf-8?B?MnN2a2Y1dWRvcmZEYVM2NlFDY3JFTjMydEJhSzZ3RXZmdEVyMlhvYnZaSG0y?=
 =?utf-8?B?bGQ2YnZKTjgzaE5HakdDQnk0NFhBSEpUN3NTSy9ZSnd1Q2UvU0szTTJKbCth?=
 =?utf-8?B?eHZLSWpLM1JVN3N4NzVLVFZDWmg2R2IvTkh3SFJYVUVSbzl6QmpkTnh4QkNu?=
 =?utf-8?B?RU5WL25CZStCMEt4UFJRTS9zMitoRXdSbkVWT1FxeDI2ZnBNQzY0RDBuSjVl?=
 =?utf-8?B?M2wyYWtsdHVlcnNhMUxLSEpmWUdWbUdKR0pyTk1nRzZITG5MN0tLMVNPUVpk?=
 =?utf-8?B?TXRIeTZLVVh0Y3lLOHY0SHNhc0IvcjhHazNQSXNUdll2T2RNR2h0WUJ1RmhQ?=
 =?utf-8?B?Zm1xL0p4eUp4MlZNN2oyZ0ZRNDZqYUFNSUNES050b1BRbFJwUjJaVVU3WWZQ?=
 =?utf-8?B?eGs2ZVBEQmNITU9ibFJPK3lXK05PTUFudXJMSVNkTzNuRmcrUllPbHkya1B0?=
 =?utf-8?B?K1FvMlBXbTcyZm9HaHdvMFUwS2lTWGdOckN2OUU1MmR2Z1pDNXVzdjJ0TjhM?=
 =?utf-8?B?a0V1ZXk4MDdVcG03NzRkaFl6eWZrRHZOdW9JZXU2QzEydjY1dnZUSEs4Zmhr?=
 =?utf-8?B?eTlDSUFaZER3Q0FGYitNNjYxYXBaWGVHbWYzU3U2K2dZUk1Td0p4OXBlUlp0?=
 =?utf-8?B?WEpvaDBaY3VPZzNaSGREaGh1UDdoUDRDRk95d1JOckppakZmbmZHQnRsb1Jy?=
 =?utf-8?B?TUZ2S05jTUVtbEdsbTNXVjJ2Wnd0V0lXaFRFZUZHMDc3U2N0cm5NUEtQVHhZ?=
 =?utf-8?B?ZTl5bEtWQnVuRFY2djlpcjNELzRPU3RRVzNjeGNoTGVZZnM1REVXQTQ2NjdY?=
 =?utf-8?B?d2ZEZ2FSdFBuaWFtUDB1TGx5alpJd080OVRkZFFBQmFmaWtWaktLT2NzVklD?=
 =?utf-8?B?bWRidkUvZmFNd3JvR1kxMFkwT0M0SzFKZnlXNDJDc0VxY29ZVWZQSm9ZcHF0?=
 =?utf-8?B?RlpzditRZCtSTGpYL3I5Ymx1UC9XRlZXeVVkYXVDZFQvVEtQK2twWVQ3QnR4?=
 =?utf-8?B?amlMMWNzTmI0VDZLcnNrRW56TWQxTTNsVlNUTmpmZlRWNFhyUExmc2VCN21h?=
 =?utf-8?B?NC9peWpPWnhhVnVMUm1TWm9jM3haKzlZc04rTkIzNzd2d0NpS0ZyOVo0cnV2?=
 =?utf-8?B?ZG5yMjlZeTRjSnhnWCtFTXhXSHZ3ckEwTEZZZDJHY0ZsNlJWc2ZMVmgwK3c2?=
 =?utf-8?B?MnpwRnlNRXZDdE9DVEh0SEJ6NXNjRmRIWFpwMXNoYUtkNnhLNTRrSC9FUkRh?=
 =?utf-8?B?QWl0WUV0M21tM3pVZ0NZaS9RTlI5WVdYZSsweGpZWStzbXM2dnVyaHVTSDdm?=
 =?utf-8?B?UmlpaGp3K3dKbTEyQ0J5alZjVHFtUmI2Q3RWSTY4SFcrOE1rTE9OUG1lU2ZY?=
 =?utf-8?B?Mk9OWGdXNGlDV3FnSWUrS3ZIN0tLUXh3ZTAzWDUyTzJHQ1pGU29SVjNiYWNZ?=
 =?utf-8?B?SVZpMldGRzNzNWhJdHB2Q0xKU2loY0QrRm1FWHJ3blJ6QmRwMk5kWDA3UjZG?=
 =?utf-8?B?T2w3OW5ydkpYWEtyMVVKbjRMaW43V0E4ZUs1bThsU2JkKzQ0ME5PZE5laGVK?=
 =?utf-8?B?bkdESC9sZytEVzVGOHhwUDEvMlQ3bWxzUnBNVXc1Tnd4YklERmkyZ0FFSDNN?=
 =?utf-8?B?N2FjQmE1eHFoWW9kTzlXVmw4ZmNndFB3MkdRYWRWQTlFdHhDLzN3L2Q5TTg3?=
 =?utf-8?B?WUd2bXRYN1FRT0ZvZzBEbnE3VTVZM1NUZkxJNGlqNGtvdHBQVS9FdWo4eFh6?=
 =?utf-8?B?YytNK3pzSTFwbFNIMStxVnAvY1RMc21ma0xreFBwTzkxR0dEc3QrTTRlRXRl?=
 =?utf-8?B?MXNMbHFneitjU2U1ekFhS2pzWTFnNjNUb05wZk1BS1k5Z3dSWTdwb003OWdh?=
 =?utf-8?Q?5aH7wlJU8efyV4VaQelK6NU9dpAlyCYT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTYzL1VhclBWMmtrSGE5MExINDZabUZWWjN2Vi9XZ3ZjY2c3V0F5WExEV01P?=
 =?utf-8?B?ZmtCdWlFdFNMSStNN1lyVW40UXRWbUN0Rk9SOTVXTlBYVnZ5R0JHdm9CRHQr?=
 =?utf-8?B?b2lhemd5ZmxxZFdrOWY0c1E3WUNWMVRYNVRUWEJvSnBSNW1ZZ2hQTk9zUVNj?=
 =?utf-8?B?YkJjZmN1VGNxeVM1a3JlQ2UzNy9aSVlTUnhKY1lrQWx5ZWlXblhpTWhwSXFJ?=
 =?utf-8?B?aCtvYVR1cVZzdnBsdVRPbTlzVUtPdnhPdGJKOG8vZ24xTjdBTGc5S29na0ZI?=
 =?utf-8?B?MUVnd0dDKzB5WGxmcjRQR0NuQzdmRjlJZ0tCVW5tdFE1d05kR0FHUERYS0JZ?=
 =?utf-8?B?dnA3ZDZtcVJwZk00dnpEOHk2dVRvS0taNUNGd1BSeGlUVmdsaFpoOE1PdVRN?=
 =?utf-8?B?b2FFQUpJenM5cUZveTRJNEJ3OS9RQm1Ob2ZpaWtMV0U4QWpXeitBRUVLWkp5?=
 =?utf-8?B?UVdtZ2V2NlM4MDFMeE4yeExBNElxcGVDdzBnMmJUREQwbGx4RTFDdy91Kys1?=
 =?utf-8?B?RzF2cDBSR01jK0ExanBLZVBJYmY1bFJoVnVvbGUxdmVaVVZpRXhrWlB4Vmxj?=
 =?utf-8?B?WFkzM3lxR3QrQ1JxTGN1K2M4NkFsYmxmRXZiMUUxMmZuVlZnQTZKRittUFNi?=
 =?utf-8?B?eGExN1VLYStQYmRwQkFIMjZmcWxEdU9qVlNCVm8zREh5NmFmakk1c3ZYK0hr?=
 =?utf-8?B?ajNDWnRGZGFGWlJ1RmZEa09Ya1E4dVkrdDYrS1QwRkZxRkw3dXZ0L3RnT3l1?=
 =?utf-8?B?VGswU3JtU3FlVnVqcmd2djNlRUd3Yi9RUVp0eWwza2trZThhY25CdXpsNW9q?=
 =?utf-8?B?SlpzbElSSWhGVEFLcnJ1RWlDL1dXNXpLcktYZEZFZHRuakpOU0VOdzFkSmRl?=
 =?utf-8?B?UEFLS2pEaWQ3UXJSam1PcEhTVDJkVzdMQXpLM3loZzdlMnNKNFlrS3RnWkFI?=
 =?utf-8?B?c1RxUnRiRHFwSjVYNDA4cDdmaEF2N3kvcCtQRjdmWUVVT056cEdVVXh3ZkFW?=
 =?utf-8?B?Mlh3U1lSYkdNbTRta3l4c2ZleGk0SDg2VjJuWXVCb3ZTekgrSk1lOTkxems3?=
 =?utf-8?B?RHBGN01aNmhpakptdnN3NFpGVnVRam95bHRQQ2ZHeVIzeGpBaHB6QzhOZjd5?=
 =?utf-8?B?b3pKU2FIVWNQWHU1ZjhEZUxneTdoYkRVckpRLzhwbFgxd2hKN24zd0dVRktK?=
 =?utf-8?B?bkNrZXkxWmNOSmdQZERZTTRNdGFhUXVXK281b3orNlpjZGwxQ29rYkxiSGo5?=
 =?utf-8?B?ZkZ5R1JXNHVLUW1oK3VOcjM5bDgvbHd6eGtscnVBSzgrUFY1YU51cHQrM2F1?=
 =?utf-8?B?Q0hjQlJZdkY0TmQxZldyMGxLV015SHgzbE5zUnllTUxIYjU2NFdqRVFvNGQ4?=
 =?utf-8?B?clhJeWFPQnphSnhLZ1hRNysxMWJsc0ZUalNKdjViT1hlTWxyN2YvRWZFcE4z?=
 =?utf-8?B?WDJKZnhNa0c2MmpoQTJQWURRQ1hXKzZmVVFROVhyTnZHTmZ6UE9Xc3Z1Sngx?=
 =?utf-8?B?QnlDS0I1d0s1Rjk3MVF3L1JwMkhQZklyb1lqQjBmL2twVDViQW5KdGxGUVJ0?=
 =?utf-8?B?S2tqekRXNFMxdUh4a25CSHJLSVVXR1h0L3RKVFFmdzZrNDhGTTdjamF0OEpl?=
 =?utf-8?B?bkZ6VFlORWlCa0JFbzl0UFJxVCszanQ1UWZQYzYxTVpLd1JKZGwrcG90VW11?=
 =?utf-8?B?cTdVRmRsWHQrK253OXk0aUZWeGhJSVpZa0hNMC9iWmNCd3dwK2VxdE5KanZq?=
 =?utf-8?B?N3RqNzB5VzFQcFI1N0QweElMUGpCd1ZnMnpYaUtTeWt0NXVsS1FISHlpdGhB?=
 =?utf-8?B?VitjMUxIWXFhbFNkeXBMUWZJNGlUUFh0a2VQcTRVNXZnd0xMNkp5dGxOM3I2?=
 =?utf-8?B?OGt6TWNFMGQ3dzlIRjZpOXNBZmEzZUkxUUppc2FWam5jZmFkNW9HY0JMN2NP?=
 =?utf-8?B?bHNSMlF3a3l6TlcySlJnZlo5a1VwWlM1R1c2YzdhdDBJSTM2dGRib1c1c3M2?=
 =?utf-8?B?UitCdjdNYml4QUlxejAzVmdHNTZhUXM2RGJrQnBoR2tDcnJGdGszTktEem9n?=
 =?utf-8?B?djhxTVV2UUJabE9lcjUwQ3lvbEdIRXZlREdGU3N0aGtWMFpBSklmZWhLQU8v?=
 =?utf-8?B?UDdZdlRVWkVRanoyV3ZCVGpMViszR2dpbzlxM2JGQjVLeTdXVmJNV3l5TkdL?=
 =?utf-8?Q?POA33TlFQO9rYHf8rDC3zn4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4007BB4BB278D64587608011D0D9D318@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc78936b-960a-4125-0fab-08dd55e2250e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 21:19:52.8963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3RW8NaXWSdvhAkh2/u5PLkYee1S0GAm/5OyI2J1WzDXZbWiz+1MMdYTLjWZOLsgym06LU699LtiNP/unLhsR59A+WMcPp5U945OJMBWWktQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5886
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgY3VycmVudGx5IGNhbGwgaW50ZWxfc2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRl
KCkgZmFyDQo+IHRvbyBlYXJseS4gV2hlbiBwaXBlcyBhcmUgYWN0aXZlIGR1cmluZyB0aGUgcmVw
cm9ncmFtbWluZw0KPiB0aGUgY3VycmVudCBzcG90IG9ubHkgd29ya3MgZm9yIHRoZSBjZDJ4IGRp
dmlkZXIgdXBkYXRlDQo+IGNhc2UsIGFzIHRoYXQgaXMgc3luY2hyb25pemUgdG8gdGhlIHBpcGUn
cyB2YmxhbmsuIFNxdWFzaGluZw0KPiBhbmQgY3Jhd2xpbmcgYXJlIG5vdCBzeW5jaHJvbml6ZWQg
aW4gYW55IHdheSwgc28gZG9pbmcgdGhlDQo+IHByb2dyYW1taW5nIHdoaWxlIHRoZSBwaXBlcy9w
bGFuZXMgYXJlIHBvdGVudGlhbGx5IHN0aWxsIHVzaW5nDQo+IHRoZSBvbGQgaGFyZHdhcmUgc3Rh
dGUgY291bGQgbGVhZCB0byB1bmRlcnJ1bnMuDQo+IA0KPiBNb3ZlIHRoZSBwb3N0IHBsYW5lIHJl
cHJncmFtbWluZyB0byBhIHNwb3Qgd2hlcmUgd2Uga25vdw0KPiB0aGF0IHRoZSBwaXBlcy9wbGFu
ZXMgaGF2ZSBzd2l0Y2hlZCBvdmVyIHRoZSBuZXcgaGFyZHdhcmUNCj4gc3RhdGUuDQo+IA0KPiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDUgKystLS0NCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KDQpSZXZpZXdlZC1ieTog
Vmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gaW5kZXggMDY1ZmRmNmRiYjg4Li5jYjljNmFkM2FhMTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03NTI3LDkgKzc1Mjcs
NiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpDQo+IMKgDQo+IMKgCWludGVsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5j
eShzdGF0ZSk7DQo+IMKgDQo+IC0JaWYgKHN0YXRlLT5tb2Rlc2V0KQ0KPiAtCQlpbnRlbF9zZXRf
Y2RjbGtfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUpOw0KPiAtDQo+IMKgCWludGVsX3dhaXRfZm9y
X3ZibGFua193b3JrZXJzKHN0YXRlKTsNCj4gwqANCj4gwqAJLyogRklYTUU6IFdlIHNob3VsZCBj
YWxsIGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9od19kb25lKCkgaGVyZQ0KPiBAQCAtNzYwNiw2
ICs3NjAzLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiDCoAkJaW50ZWxfdmVyaWZ5X3BsYW5lcyhzdGF0
ZSk7DQo+IMKgDQo+IMKgCWludGVsX3NhZ3ZfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUpOw0KPiAr
CWlmIChzdGF0ZS0+bW9kZXNldCkNCj4gKwkJaW50ZWxfc2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBk
YXRlKHN0YXRlKTsNCj4gwqAJaW50ZWxfcG1kZW1hbmRfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUp
Ow0KPiDCoA0KPiDCoAlkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfaHdfZG9uZSgmc3RhdGUtPmJh
c2UpOw0KDQo=
