Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC418CC62E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 20:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCDA510E44A;
	Wed, 22 May 2024 18:15:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zaxn+USc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82C210E402;
 Wed, 22 May 2024 18:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716401718; x=1747937718;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=jof6xz/0OR3Yd8h9L6p88pMqFyQcoUwVWCOZdiP6WRU=;
 b=Zaxn+UScK8licjoVWdysl2qPdS6ypgFQSRzwGLU+whHICSQt4oSXWURB
 8JL225USJ81YIbF2/7tk6lqfdl0T2NQiJHUusFpnxxKYn9GnGQUepi3qz
 kLGLYKS62k9mvFclSkfQJ77jogmO4zbh1AZydgidAGQGRgUzdc6JsYcT2
 hhQFofcoIivASMxzvpdo/fsilWRSSufgcrOg8LrFfmmViMk4WH2vdcqoI
 P1PfhJYbKVKtrRyVviq19IQSE55u3H9Rf2GBL06Ux47NzsWdjIoZ9nbIt
 Eo2kpjRKYpdf6BMMS7nHm2/q6rHzJZ3kvpgaxc8yiifN5OXUgQh+h82XC g==;
X-CSE-ConnectionGUID: DP6R+V8MQ/io7SStOgoHEw==
X-CSE-MsgGUID: MwwRb6VxTo6sHeOIHRsJ5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12793011"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12793011"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:15:17 -0700
X-CSE-ConnectionGUID: 6dL6Jhu9RDKXg/EoHGFQhg==
X-CSE-MsgGUID: n1zmZtzhSGmFDefCT4SCZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="37955759"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 11:15:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 11:15:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 11:15:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 11:15:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 11:15:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SF0seS/4KOPeTpBZMn6Wmm/XnE3nM8qOXnKUdfgL0OL1oYYoUC10erOAH+mI+ZWM7ARs0z/Rtum9dXxtc3NhQRdWP3I2BScYuCd1qQt02zRdmc8mLFG0KuHF1ZoHEtDjdKi+EUrRL6qkZFTlVxeVFlCTs2CiH5Z87hez6tQBUqWChNJ2+uWzQX3xsAXeyNueLfTR6xn8ELMlprStBjKgabwQcXje4757/p0en1m7kICI++SE2lCGSYW8XRTDYcuEfLQ5YfCudbAaSejp+YpKPK8H4zZ78jSAZ8SVmkL4ta0JNofXa2dP+X0rbhI3oTKwzCFcLAg+cE4WF9fIjXjMCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbj8V1JAo4HnFOdCSymIgNXVSXR06obaqFQ+0MlI4NU=;
 b=VleWcH58XVs3uC5EYUphFt2ui7iiAPDdXDaAiE+yX9SC8bGuv8wvhNEl9ehOuH7vUaDlB0RvwpCw6M8a4F+8aOfIuEuzm/5VHgb9QIeWBUTyF1LADDvdF4kFJn5N6k1PLjSWRh8JSpBPZbt7qDE+mxwfbdVNnZylO18Q7GXFfj0EEe0dXlnR4J9KPZZK12B9Rf3cjUc1muQ1G/UXXW5qzI++93x5PjnukG7HHJ2Jyyju0PYcn516r1z+YzLlEx2xU4Wknd2G2yQassgwv4ZzjKop8MFB7e5Mk5MjC8n+jVve93bIVMfAZU2HpiTUyR/2B7I6uGD/rysrD5mw9BaZ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW6PR11MB8309.namprd11.prod.outlook.com (2603:10b6:303:24c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Wed, 22 May
 2024 18:14:54 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7611.016; Wed, 22 May 2024
 18:14:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
Subject: Re: [PATCH 00/10] drm/i915: identify all platforms in display probe
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <rodrigo.vivi@intel.com>,
 <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 22 May 2024 15:14:48 -0300
Message-ID: <171640168863.10417.28066664900974969@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR08CA0028.namprd08.prod.outlook.com
 (2603:10b6:a03:100::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW6PR11MB8309:EE_
X-MS-Office365-Filtering-Correlation-Id: b8c30e92-9970-4ea8-e6f6-08dc7a8b1427
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3lrMmRWMksyL0pVbkZ4aDFrQXY0aEJqUENmOS9WajA0Uk9YQ2VYcHNKSnFs?=
 =?utf-8?B?MW13MHNjN2lGbHBBR2w3Y3lCbUZhR1R3bUsvRHFNS0llTTdHQTZUeEFORHJj?=
 =?utf-8?B?N2VYcENmVWtyZUtuS3RUamlLcVkwUnFYeWljSE1zTm95WVdUTTE0RFVlYXpp?=
 =?utf-8?B?d2FUR2VlalQ4SmppcTJYeGJ4aE5DUy8xRHhtUnJVNXdSRVE2OExSKytNRUxZ?=
 =?utf-8?B?WjRQS3NIcjhoRlpkYWUyOUY4bFJxaWxGd3crV1JWMkV5SU93Y0lyU1VkbTZQ?=
 =?utf-8?B?U3lSZjQ0UWp3VGFNUTJyb1FjdjZzck9RL0p6UmxkUm1NZUI0c0tUeVRYVW5q?=
 =?utf-8?B?L0FldHZxcGtZT3RURm83cTNKVGxVN3VBYTVhNnZSOHhUdmhjWHNiZ1B5a2Vj?=
 =?utf-8?B?RURJZGYzSVNFNENhcElpUW8zSmE5NCsxeTNmb3B6cGc3bWpDYVliVmRlZFNL?=
 =?utf-8?B?elFXRHN0NFlqb0Npb2xPZGhaNkFiWkZoUnpHTFluRVFVeTlyclZUR2wxVE5I?=
 =?utf-8?B?VktyNUxoUDNrc3Q2ZFhKQ3IxczJyYnF6SHNrQ0QzQ3EyL3NnV0xsUlZETXlM?=
 =?utf-8?B?MGNEd1dEVDU0MGZMcUQrdGdTbVFWZm1NcmIxOFcvS0t4WW8ramdiUU84aUIz?=
 =?utf-8?B?QkMvR2pTMFR0RW9pUGJONXlnYnpJK3dPUHNXN1d0VjV1VytEdTJGeWczd3Z4?=
 =?utf-8?B?VmlMbEp4WkxzREpBdEY3M3J4T1M5MThPeVltekk1WXQyY0VsS2ZSRVFQUHk3?=
 =?utf-8?B?Y3c4QURUdG1URGRyN0xtMGUvQ1VaUlM0TlF4ZlNPakxNbUpITEZXUm9CaGt2?=
 =?utf-8?B?d201c1pla0RTN0x6Um1HV3cvbytHelNqOUVPaHp2S1RkZGJmNGRzdzk4ay94?=
 =?utf-8?B?KzNiclBCNGtNUUFyVW4xcGNjMUhlMFhkSVYrQ2d0MHlvZEdydExzb0IyTnZT?=
 =?utf-8?B?bnUveWpGYWdwWGc4bmRBam0zRWs0dlNIR2FuZ1ErLzNNQU5aaEMzN3FtaE1G?=
 =?utf-8?B?R291L21jWUhzTUlPS0VqalhCZzE0akpwaHk0VExhTHdMaC80NjFUZ3dQc0hG?=
 =?utf-8?B?TW9YQy9NNGZwcTZDb082R1pwaTJna0E2QzlhRUx0TTFkOWRlaVpVSklyTld6?=
 =?utf-8?B?S1RhdktHb3FkUStKZ0RpbXdsTDV4UHIzWWVrZjZkYzFvbzNOZ2NRWCtmZmVW?=
 =?utf-8?B?eUdMdVRlVHJZT1l2eUJ5ZXB1TGVya0wxM0pkdjgrWitYT016N0NWZTM4Vzl2?=
 =?utf-8?B?WUNYTnYzc2F2S1REb1dJcG8yMjRBdGdZZWNucUJvYmZLbTZkQUk2OE0yUk9T?=
 =?utf-8?B?cjRIVmIxWEJ1TUprMjk3V3cwcy90bkJ5YnU0ZHNQVWRhOXhjSUFiQTZQWDYz?=
 =?utf-8?B?ckZoMmltTkdrazl5eng4NnRhSmczWjNrNXZNMG5oaTgxZk1iU3JVT3lVdjJo?=
 =?utf-8?B?Syt5L1Qva0UwcFA1SVRHMk52a2YvOE4zaVh4NEIvRUFuTncwb0Y1YkpLNmxD?=
 =?utf-8?B?M1pFenQzS1pWWHNlcVhJbnpDZEFOb2F1dlphbW1WZ2U5YTlSN01WUVo4QkdY?=
 =?utf-8?B?WEtCb1ZDZ0d6eXd6VkJQYlZCYytFMis4WHEzaldJZE04bTdUbHZUNUpCTXg1?=
 =?utf-8?B?RWlkUTFWWC96ZklNb056OEhweGRTQitZemtxOStKdHdSOHNJWkl4NDRuWkxW?=
 =?utf-8?B?ZVpqMnFjYytHL2FSSVY1Z21oeE1CZWxEYU0yN0ZubFBuMUZsWFVsaEpRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjVQYVpRWkZpNGFiZTVHbSswbDBobGdoZ2YzcklwMG4zc1orUU9jcUFoNTN6?=
 =?utf-8?B?dDh0Mm9rWnFNelNTVGxUa0VIaFgwdVZ4N0x4emlJRyt4azZHWW9jWDhwWTND?=
 =?utf-8?B?b3pHZTlnL0VMVyt3V3ZIYTdXNHhmeGU3eStXS0pKSHFTcFB0VFQyT25SUTk4?=
 =?utf-8?B?UlRHY09McWZpcGZtb3FxNVBVV05SWGtRZ1FGSjIyQ25lenYwN1FJMUpPWXBx?=
 =?utf-8?B?c09vOThJbjFIMllwOTEvVUdGTTY5RHAvMEpPREx3R3M1RG9zWmI1aWxpQVNY?=
 =?utf-8?B?RlQ0NGEzNEp0RkpPSVNuMytNNFBEVkNGdktEd1BkbzFIYU5abythNFl0R2VO?=
 =?utf-8?B?VnBXWE1rWFZPTjMxWldndW0vQ2dIQnprcGc4bUNzcmhIWGZvMWxsQllKdFVY?=
 =?utf-8?B?YWNONkVYR0kzNGdPL1VodksybGVQRWpaRnVoYnZERWorSTVFNU5oTEMvZ29Z?=
 =?utf-8?B?N1FURTNUODNCUU1LZytmZzhqUzVHbWJiTThqN0pOaDNkNEVwTXFXdldsaG1m?=
 =?utf-8?B?b0FSbUROUStKUXBNdmR4Rm95cnVGd3k4RmFFUmhHNnM3TEZUNnNvN2V0Wk95?=
 =?utf-8?B?UHJvYVhJQzFjNm5Xb3RkT1NJSTcxOG4wOUs0YkhQU2FGcXlSaDA5OUplRVRO?=
 =?utf-8?B?UHdzRlhzalorTEpLR2lqR3pnUGVGQjFsU3dWK09rSXV6eU14Z1RLYlpOQ2FT?=
 =?utf-8?B?Y3ZZNEVKRUZDeTdkUDZUZXluRFp6KzhXR2I2WEt1UGU5YThXTTZyOW04NDZt?=
 =?utf-8?B?NlVKVXpFMFJmNG03RXBiU0xmN051ZFJCWmtLRXlVVWVkcy8weDRtL0xqZko3?=
 =?utf-8?B?L0k2aE5vbEJyaEt1bjkrS0ROOVFXQVJjM3p3STRjMWhDbHlYY3VQVTNhR2g5?=
 =?utf-8?B?TFMrcXZpbVBEbTFqRHFLcVBKdFdWN28xZ0tYOUd1UUxMZ1N1eFJqc3NHY0hZ?=
 =?utf-8?B?R0xEZ21oamhQNmVoMjlsbzBRWVB6UU42a0pyeW9LaFlrc1VyQWVVdzBUTm9j?=
 =?utf-8?B?ek5BeVVUUHMwbWUwVzBEakFmeVZjdzliR1hVTjE2SHByYkRadng4UHRqYksy?=
 =?utf-8?B?alNqRnB1T2lIMjlob1Jaa1h2UmRrZ3lVOHlpOVlVQ0hTNDdVYTVUeHA4TGg5?=
 =?utf-8?B?WnhpTjJIWXp2QW9melN4bGNYUWY3YnE2T2xxdjk3K0dPZzR3aE5QVkkwUkV3?=
 =?utf-8?B?REtwZ0hvZlJpYmRZUlJ5N1dvOHF4RnBKNldBeFZuUEI0a1EvRHc0K3JSa242?=
 =?utf-8?B?UmVRaDQ0bVo4aSs1VDN4RmJYdnBTOXRocVlrTFZUSXFMSjZwaDVVbXVOUUZH?=
 =?utf-8?B?eURtb2c2SU5JSkgyVnRMSk5JMWsxdlMrMWhnOHJwak5ieWRMRXRwekhWZ0Na?=
 =?utf-8?B?MUtBbFBYdkRoOXptRzF1anBHSHZEYktzRjZML285ODVFVmpGblJLSmJVTFRU?=
 =?utf-8?B?U29vaVJKT2N2cTRNOE9DZXJsQTB1NlRDK2tsS0Y1c1dKcG1HZFNFdkQ0VjlU?=
 =?utf-8?B?SG0rWFdpcWlwTll5bjdSYnVWUXNxT21YUFBNRUR6cXVFdnl0dDdnck54U0VM?=
 =?utf-8?B?cUUzSkgrK3Y3WXpOM0RFTDRVeVZCeFlLRUtNZUFwSCtUc3IwU1NVbENQUjZK?=
 =?utf-8?B?Z1VweTFGTXZyVkpzWmY3eU1BbURZam0rcUJxT2JhWmhiakhFNVRLR0I0V3Nz?=
 =?utf-8?B?Qm85R0ZTZDFMNVp3cUhHbFVMenVaejhKOCswYWVROFR0c2l0TU9MdU05T0gv?=
 =?utf-8?B?Mys1MDZhUGIxU0l0eGtiVFMyWE9qQzJxZzFLQTlYd2JlWTZJa1YzTWJmbll6?=
 =?utf-8?B?a0FrVDNNTGFHTUJUbnpjdWJuckJUc202VC9XZkY4V29MNHk4TWl6WTlybEc3?=
 =?utf-8?B?Yy84ZGFzeXVzWUhockFnOU5MemZWQnNRaFltT2o3TmFPcTRBL2Zra2phRlpv?=
 =?utf-8?B?ZUpIWEJ5QjVxMmtEb2dOdXhhZkJEeWxZYlhyazV4a0haQS9iSzNvQWF1cGJX?=
 =?utf-8?B?VzVKWnErWk94UjdoMkIzRHBZeGVmME5JVXQ5ZUNYVGExbVhmN0ZCRS9Vd0c5?=
 =?utf-8?B?MlB5QUdSSmJNOUNPeDUzUzdla1Z0blYvaXdoaDBLVHdvY3BiSmRhdDY1RDBC?=
 =?utf-8?B?ZWJQQkFBRVFwUzl3RVhjUmVkUzFDUmFsVVpyZmNBdDlobXRzVitOZG9LbnNO?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c30e92-9970-4ea8-e6f6-08dc7a8b1427
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 18:14:53.8253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fuWjzkzEBVpxpPBD8U4M6HyHnC3vOFvQEkQ7LNIQPT+hDS1Ec8IVll0lAiXcMcsIPhh+qVodkjyJA1n1V88Wqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8309
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

Quoting Jani Nikula (2024-05-22 14:33:37-03:00)
>Add independent platform probe in display, in preparation for breaking
>free from i915 and xe code.
>
>Up next would be adding separate IS_<PLATFORM>() style macros to
>display. Not included here, because I couldn't come up with nice names
>yet. IS_DISPLAY_<PLATFORM>() is a bit verbose.

Drive-by comment: At least for recent hardware, we can use
display-specific release names, e.g. IS_XE2LPD() for LNL's display,
since theoretically that display IP could be reused in a different
platform.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>Jani Nikula (10):
>  drm/i915/display: move params copy at probe earlier
>  drm/i915/display: change probe for no display case
>  drm/i915/display: check platforms without display one level higher
>  drm/i915/display: change GMD ID display ip ver propagation at probe
>  drm/i915/display: add platform descriptors
>  drm/i915: add LNL PCI IDs
>  drm/i915/display: change display probe to identify GMD ID based
>    platforms
>  drm/i915/display: identify platforms with enum and name
>  drm/i915/display: add support for subplatforms
>  drm/i915/display: add probe message
>
> .../drm/i915/display/intel_display_device.c   | 920 ++++++++++++------
> .../drm/i915/display/intel_display_device.h   |  86 +-
> include/drm/i915_pciids.h                     |   6 +
> 3 files changed, 731 insertions(+), 281 deletions(-)
>
>--=20
>2.39.2
>
