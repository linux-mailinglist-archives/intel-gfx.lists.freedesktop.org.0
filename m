Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A62A58ADC4C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 05:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3AA10FA06;
	Tue, 23 Apr 2024 03:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XBuJckTy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF1310FA06
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 03:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713843405; x=1745379405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ppxdddoRprvpo8VKxFvtZYRDRqUff+8H7+Hx+vURNw=;
 b=XBuJckTyZjy90oJF7MGo+lf9cwlpZLDRT6joxmjYxdVwpoH6SOzj65pE
 FSyso1QY6zQY7lQ9VYCtMUBOaL9+IrNtZeYpNwUXbBfoD6v5J+l4TFX97
 C7BKyyfvlTQoApD5ZDGDXsp9eSlXrUpj40QzKzqH2bBPmVcb5IelVWlY1
 MsRnQ6motMnir/4kf5niFm1OlBgJgo1TDzRlPo5Q05z/h5nn0ub3eWhiN
 n7nqNLdUzUaPwEFw1LkohJJZkFIO1tA6TZl7oCSm5qqVnE2hLrVqvYOmE
 Y4oOzp1TNoQznjk8G1oc5Sszebx2EbMeMRUvFu+mlnJalpiwGFi6kxydq Q==;
X-CSE-ConnectionGUID: HkSDBJCYTnWs75phUWqfig==
X-CSE-MsgGUID: iq6QJanyRm+0phwWMUN9ow==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9240227"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9240227"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 20:36:43 -0700
X-CSE-ConnectionGUID: GSgEoj4NSHi2x6pKAZ/vEQ==
X-CSE-MsgGUID: oLLkOH+6SUKAF4FBOvBjng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="29023320"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 20:36:44 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 20:36:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 20:36:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 20:36:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V50cvTzU+NSSj94AAiTmA63XjPPemOFUDrdIQXSYqK4rz5nFQNvUr3vtcScCmlzfJJRv6RNjA1V1phgWj/9I/xVzKSh81RAxvpyAKghV1XJ5x3wZQjqcZnXwg8ZbE1DTHkfAOOVA0J1VHBETkPjIjMvT5QIJvP/ZA3lzO4Awj4s/O3rdZW4bwEfChodshE+Ps22S9ipafJ0oSnC0lm8mqgdqOHUV07+0gAHQrkhaVCVwzsoRo9EkOSp0aLZk6zQjihNSeCfrRscUT7JQoHbMSmBzqjS3yWQavrnJc74mJtwzuSnJrQuFrsmtpqgTDhyeQUSOCb53d+irb5OuWH2MpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ppxdddoRprvpo8VKxFvtZYRDRqUff+8H7+Hx+vURNw=;
 b=FmI5Wd1Od2zKsRGit/KZZlgDVOv/lq5+bzdskNUBkDTv8TtHncNKOyJp3dnPnu6QE4N3OhkVNvGYConyvYJhHlFpQDK3Nibg1d/DLvQpCeGwW9lT369cuCHyhNr0Y7GFeIVGNmD3rVgSf0OOO091lAdSvN2I82ZCTBnkxuW76QcLhZbWoqoOCkiwR7V+Vdq/T7D+dWLYZfB4ak0gtwG8Q8iVuBjQtlnUE/zq3EOOpi6N1itSM8TzFNYZvEtR/en35qXwFNhA1n3kUuNVAITNmFRfbO7SfBIfOZtb2BOjuNQvgT2AXqYtLTa2lr+E8zezMGkXAUJTm7L86ttmzrHdmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 03:36:40 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 03:36:40 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async
 flips
Thread-Topic: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async
 flips
Thread-Index: AQHaeuBdpk5PkFQwCkOQO7wK6ZdAALFvIALggADRx4CABXb0wA==
Date: Tue, 23 Apr 2024 03:36:40 +0000
Message-ID: <IA0PR11MB73073DF6D7EC9D795428CE04BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-2-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307385AC116A560D0E6466FBA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZiKW6YK6mVf9rHIW@intel.com>
In-Reply-To: <ZiKW6YK6mVf9rHIW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA0PR11MB4718:EE_
x-ms-office365-filtering-correlation-id: fa02c8c9-87b3-42fd-0e3a-08dc6346965e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?SzZkRXlVZHpNelVkdjN0U0xsNHZYVFMyNURhRnJQQkhteUVCVk1vT1NGTEQ2?=
 =?utf-8?B?eFZpVkwxYlRzYmJiNk4wVVFySFpvQkUyL1B4aWFobnp1ZUlHNUIzRnpBWkJM?=
 =?utf-8?B?MmZEeDA5cCtKamtxY0tRb3JicUpURDdHTmJqREF6Q21tNWp0dXU0UXNsV2Js?=
 =?utf-8?B?SEJGb0tPYTNiNGxZMVhYSHpZU0NYdUNqSmtqZjRTU2w3dUJ5bnRVOWYwWXly?=
 =?utf-8?B?Q0JyQU9lOVhmRWRac2RUM0ZGdUxhbGhsZDNNeFlFTS8xd0hBaVcvU3h3eGVm?=
 =?utf-8?B?RmpKS1ZnaTdiQlBvdUZZaktlMXJ4NGRsa3NTMXdlUnlTR0Qrb0xmUzY5L2tj?=
 =?utf-8?B?NDlaamxqM0FSMUxOVUYxUUxhZm1vMS9uRHFBc2xGUjYrOU5aZkhJK2hzUHVR?=
 =?utf-8?B?ZFZxaG8vNDBoclBHcU1oQmFUOGlZeEhRQ3hoZFB5aENkelAwYWtMRVVMc3NF?=
 =?utf-8?B?SFljcmorRnh0THZpckxpcVlva3hFQzhPRkJ4WElWS3ZsMFUxZk94Y2pOUmtJ?=
 =?utf-8?B?MVZoSXVnOUtLUnBjMEpkWUM2dm1FazdsR2R1YWc3RUlVVURTaGZqRFIzK1VZ?=
 =?utf-8?B?T3ZUME5aTm1oaTNmdjFOZFZYa3NJRTdXaGxtZHVuY2NLaDJZL1BKN29vT2x6?=
 =?utf-8?B?akZ3Y1NEc2pNc3hpNmdXMHhUUk8wZmJYU21vQW81MTlYOEtkMmdsc1IrMGJZ?=
 =?utf-8?B?N3BrTzlpTEpLSmJTckhXQXF5aERiMkZiMys0RXRLSnhiaTdkTEpZS0M4MjRG?=
 =?utf-8?B?cTc4NVJaa3UyZ2RVS1RVSDZhS0wyaDJDUkl0azRwWTRucW9FemhjZjd6M09E?=
 =?utf-8?B?Y3haWkxqb2NjNWtvN2ROVCtoVUZWRzk2ZmtTeWlUQTZPczhEc3Z0WFJ3SWxT?=
 =?utf-8?B?NVhYQml3QVB6OW5obG9pN0xvakZjQ2pCbGtQendTd0psN1UrS3orbEk2aGFB?=
 =?utf-8?B?bE5KeS9CaU5RaG51UFNza1BXT0hFanY0Qm5aRFdySUQybE1qYlFwTUR0VUFx?=
 =?utf-8?B?cEJKNzExZnpQWG5TbkxKMEVtUUdQUzR0M0M0ZlkySERkYkNMZ1Q3WitnM3hL?=
 =?utf-8?B?MmtLQ1NPUjcxMmpGSnU0SmNQVXZkdU5MWVczR0xJTmlHVHNmYTBFU01tenBO?=
 =?utf-8?B?WldsdUJ1ZHI2NXl5S21MbndxR1Y2endSY0RnVkk5SEM5b05KSE1oc0cxZ05V?=
 =?utf-8?B?SEExbFNINEgvNFF4bFpIL1Zld05XZVFIdFpnaU9CN0FRUUNKVWVFV1hHR1F1?=
 =?utf-8?B?UHBCNXVwT1FzQW1qNTltMU8xaG80ME1peTc0VTJ4aEZDNnpWQUZCRWMrdmV3?=
 =?utf-8?B?MGV3MjAyeFgxaW1Cc1Nxa2Y3NGR0UmVaWVZWeXRYMTdFSjJtYVVxNEF4Ynlj?=
 =?utf-8?B?Q1dJa1pWTTJ1TFpPdjRuanBQVERaTmRQRkNhN2FadkxkdDRpaXA1dDNhZHJR?=
 =?utf-8?B?TTJMbC9yeXZxRjA4ZkNsWk5FdDFoejRpOXJaTVgwTzJlaUt0d1RITjJNVjVV?=
 =?utf-8?B?eGFYRzVHWWFOYmtTTDNQbytBRHd5WXduRkc0MG1YU1NYRDQ5UUpBTUNwZzVj?=
 =?utf-8?B?czlRUWNyOG5XYnpJQ3QwMTNvUGdiNUNtTXY4cXNnTGpkSEVlOUhrOXY0WEJ1?=
 =?utf-8?B?L3ZQaDVkODZlRThyVXNMZXorSVpDZHBMMzA1OS9QUGpqc0UvUjFzR242OVFt?=
 =?utf-8?B?bXkwSHF1VFlvRDM0c0dMV09kZVJjSWx3L0RveDFOQTR4VmU0SEpVekMzSlAw?=
 =?utf-8?B?SkN1Z0tSS3h6YnVwbHllNEo0ZW94WmhvUWVXK0VyK2VpUFRnM0gwYWxmS3pj?=
 =?utf-8?B?WVJYZzYrWGRMRzRXazJ1Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vm01ZHpnVUp2UUErSjRIeCtzcURhdzdEdHdjTWZyNTd2TUMya2JUZ2orOVNn?=
 =?utf-8?B?UEFiN01ZOHI4T1RBbm9va0tkb1JSMG5sTFBkYkFkalE0TWdJN0NJbk1zTEp0?=
 =?utf-8?B?a2dNbDdCOFBlYU9pVlJ4OUpkRGp5ckx0Y0MwRDltRWhGMGJmTC91SGYvanM5?=
 =?utf-8?B?bWJPalpQeG9jRENvZThRRGVQQzdQcThQd3cyQW0wR2hKblByQXpZT2pObmM4?=
 =?utf-8?B?b2Q2a2dqc3JoajRwY2lkNUpDeS9VUlNBUzJJWFZzaUw5L3lFKzdUMDkyTitj?=
 =?utf-8?B?Z1ZuTm12SWtjb3UwUjBQeFAxbXZ0amdZNUNCbjdOUzBiYnVNZ3U0VnBqZk9Q?=
 =?utf-8?B?V1BmZVUxT09LTVJGVmR5VUtzVytVSVpuYVJFaFdUNUcvQU83Wm1pWXN6a3Vo?=
 =?utf-8?B?N0ZoUVVuWmJybTVaNWlNS2s5Zkw3VU5KTFEzUUZ4SmZsOC9zeVppdk9Pd1hx?=
 =?utf-8?B?UlIxbExnSXRFQ3lWZTY3WTNOWjJZYUUrMndkbUEzY0JUeXdJeXVlTTE3bE91?=
 =?utf-8?B?bVNnSEpLVElua0ZFa21sSktEWC9GalNvMTJkWHJhRjlrV1AyYXF1NVFMY1p5?=
 =?utf-8?B?b05aYlNjYXVZb3ovYUxvTDQ5N1BkMHk0SDZnc2JpN05BR1lsRnJyRlREbVRE?=
 =?utf-8?B?bzFnNDQ2NzUvQ3ZMRVp6eXNPTDd6TUQvd21xTEEyLy93S1pIV0d1VVFyVVJG?=
 =?utf-8?B?c09CYW5sQWlkMmUrcXB2bGFOc1pTeHI2UWhoZzdFekNtejFMS3ZSbG93elRB?=
 =?utf-8?B?UjNwMG5vZnJaeEttTW9MbUhFeXRWSEJ0OEJHQSsvbXBZa2RITmNTRGhjRjVO?=
 =?utf-8?B?bm5VblZiL0Y3WXdYVmwvTEhHdkZHUllsTnROcW9PaWY1VVd6UnNoazFHQ0FG?=
 =?utf-8?B?Y1ZEcVB4cWgyZjBrU0xVb3lpaFJWR2lDWWdtRUZBYTJJKzhCOXNoYnZXb1Rl?=
 =?utf-8?B?czFUS1pUd3FFMVN6S0VtdTBVMHNwWjBEaUJJaTk5U3JqSEZCYmF0a2dWaktm?=
 =?utf-8?B?QngyblN3RDRTZ1E2NnZEclVkZmo1eUdFSzU2Ull5UVp6UVVsKzlKdktYbGhx?=
 =?utf-8?B?bXFrQU1xR2EzenBGMDZGZHlmNlZDT0ZMSE44NEZVOVNNWWlNWFcrR1g3Vmpi?=
 =?utf-8?B?WVcwZ0h5aUVUV1JIUFRRaVQ2bzluTkx4a0xIRldBMFNlRURMSWk4SFA3ZHQx?=
 =?utf-8?B?bE0rVlhUcHNoUnVVNm9yTThVbWxha0NDRjlNaGVFdVJmT2VtNU5UMGtVcEx2?=
 =?utf-8?B?OTJXVHBQTW51bjFocUZtcGtiRDQzYWUxRE1ERDd2bUFVYWZUTEJyTjFrZGZL?=
 =?utf-8?B?WDNZWURwQmFuOWtIVzJYNnV3SnlhVUhtajJkZTVBb3hTUTRLSTdZbUF1bkJS?=
 =?utf-8?B?L3Q5ZDNGbnRuOHJ5Y2J1bUUzSXZSVWJOS3RZVFJ1UXVvWjNBVzd5eEU3anZw?=
 =?utf-8?B?bFp5ZWVJZUhPY2Fqck03ZXZmOGdVVnIwaTVtdTNCMVF0N3Bad0xFVERINnpU?=
 =?utf-8?B?VHgrNlpnTFR5cVFXUmpseFZFNzBlTmxSOGZ3QXVjeFVKdEFHZjVCNTVNcFN6?=
 =?utf-8?B?cktjbWR5ekJWdXgyV1ZxNno2RkwvVlFvNFVEczJoRExzb0ozWUZ1NHdEcHhB?=
 =?utf-8?B?V2RFRitnd0haOWVGM2U3elNLV0czUVFHUkRFR1ozMXplaE56N1Fla0RIQjFU?=
 =?utf-8?B?enhnR1ZyeUFXTVl6UFM3K0tQZlVwb04yaWlKTlB4K0lNS0JmN081N2QvbmZP?=
 =?utf-8?B?T0pTWXpwYWNCMlhVbHRRWTk4Yi84WEcvQ0J0YUtzWHhDMUhDOGVDY2J3QmpQ?=
 =?utf-8?B?eUxWSUplazlLRUh6dktmTCtOdWc5cFdYRHpBaVdrMUdDaUhYNTQva2hNakRK?=
 =?utf-8?B?UzdraFFnWHlMaFBHQTh0TkhOZUh6VUppWXArTFZDYnc5MnV4YkxSWjYxRkhS?=
 =?utf-8?B?Vk5aeGdTQUVmNkFFazlVRUxDelVjRk9UTEVTaTI2c2h3cWZ6aWJySWpER2sx?=
 =?utf-8?B?VUoyOW9ZdldvaHp3NkRVekZHbUZ5QjhWc3ZMM2J6SUxNdVdBQTluZEthb1kw?=
 =?utf-8?B?UGJkcmtlSURHUzJHTDNXSWlQTmhaOWVsdXBjemRCdkEwVkViRnlnbGtkSlVM?=
 =?utf-8?Q?LnufYBJ8AkYItxCZ4xuM5Rl1X?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa02c8c9-87b3-42fd-0e3a-08dc6346965e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 03:36:40.0757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WeKEIp3stf4feGyBwGJaJ4USk31OrV6TW5jTfsCj4KE8MxKNqSXN0zGakth4Kf9UdBS3hlvoGSbiDnt0/26N6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgQXByaWwgMTks
IDIwMjQgOTozOCBQTQ0KPiBUbzogTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIDEvNl0gZHJtL2k5MTU6IEFsaWduIFBMQU5FX1NVUkYgdG8gMTZrIG9uIEFETCBm
b3IgYXN5bmMNCj4gZmxpcHMNCj4gDQo+IE9uIEZyaSwgQXByIDE5LCAyMDI0IGF0IDA0OjIwOjQw
QU0gKzAwMDAsIE11cnRoeSwgQXJ1biBSIHdyb3RlOg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0Bs
aXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+ID4gT2YgVmlsbGUgU3lyamFsYQ0K
PiA+ID4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCAyMCwgMjAyNCA5OjM0IFBNDQo+ID4gPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gU3ViamVjdDogW1BBVENIIDEv
Nl0gZHJtL2k5MTU6IEFsaWduIFBMQU5FX1NVUkYgdG8gMTZrIG9uIEFETCBmb3INCj4gPiA+IGFz
eW5jIGZsaXBzDQo+ID4gPg0KPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+DQo+ID4gPiBPbiBBREwgYXN5bmMgZmxpcHMgYXBw
YXJlbnRseSBnZW5lcmF0ZSBETUFSIGFuZCBHR1RUIGZhdWx0cyAod2l0aA0KPiA+ID4gYWNjb21w
YW55aW5nIHZpc3VhbCBnbGl0Y2hlcykgdW5sZXNzIFBMQU5FX1NVUkYgaXMgYWxpZ25lZCB0byBh
dCBsZWFzdCAxNmsuDQo+ID4gPiBCdW1wIHVwIHRoZSBhbGlnbm1lbnQgdG8gMTZrLg0KPiA+DQo+
ID4gSSBkb27igJl0IGZpbmQgYW55IHN1Y2ggcmVzdHJpY3Rpb24gaW4gdGhlIHNwZWMuIENhbiB5
b3UgcGxlYXNlIGFkZCBsaW5rIHRvIHRoZQ0KPiBzcGVjPw0KPiANCj4gSSBkb24ndCB0aGluayBp
dCdzIGRvY3VtZW50ZWQsIGhlbmNlIHRoZSBGSVhNRS4NCj4gDQpPayENCg0KUmV2aWV3ZWQtYnk6
IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQpUaGFua3MgYW5kIFJl
Z2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+DQo+ID4gVGhh
bmtzIGFuZCBSZWdhcmRzLA0KPiA+IEFydW4gUiBNdXJ0aHkNCj4gPiAtLS0tLS0tLS0tLS0tLS0t
LS0tDQo+ID4gPg0KPiA+ID4gVE9ETzogYW5hbHl6ZSB0aGluZ3MgYmV0dGVyIHRvIGZpZ3VyZSBv
dXQgd2hhdCBpcyByZWFsbHkNCj4gPiA+ICAgICAgIGdvaW5nIG9uIGhlcmUNCj4gPiA+DQo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcHQuYyAgICB8ICA3ICsrKystLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwdC5oICAgIHwgIDMgKystDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYi5jICAgICB8IDE3ICsrKysrKysrKysrKysrKystDQo+ID4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYl9waW4uYyB8IDEwICsrKysrLS0t
LS0NCj4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwdC5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHB0LmMNCj4gPiA+IGluZGV4IGIyOWJjZWZmNzNmMi4uNzg2ZDNmMmU5NGM3IDEwMDY0NA0K
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuYw0KPiA+ID4g
QEAgLTEyMSw3ICsxMjEsOCBAQCBzdGF0aWMgdm9pZCBkcHRfY2xlYW51cChzdHJ1Y3QNCj4gPiA+
IGk5MTVfYWRkcmVzc19zcGFjZQ0KPiA+ID4gKnZtKQ0KPiA+ID4gIAlpOTE1X2dlbV9vYmplY3Rf
cHV0KGRwdC0+b2JqKTsNCj4gPiA+ICB9DQo+ID4gPg0KPiA+ID4gLXN0cnVjdCBpOTE1X3ZtYSAq
aW50ZWxfZHB0X3BpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkNCj4gPiA+ICtzdHJ1
Y3QgaTkxNV92bWEgKmludGVsX2RwdF9waW4oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
DQo+ID4gPiArCQkJICAgICAgIHVuc2lnbmVkIGludCBhbGlnbm1lbnQpDQo+ID4gPiAgew0KPiA+
ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHZtLT5pOTE1Ow0KPiA+ID4gIAlz
dHJ1Y3QgaTkxNV9kcHQgKmRwdCA9IGk5MTVfdm1fdG9fZHB0KHZtKTsgQEAgLTE0Myw4ICsxNDQs
OCBAQA0KPiA+ID4gc3RydWN0IGk5MTVfdm1hICppbnRlbF9kcHRfcGluKHN0cnVjdCBpOTE1X2Fk
ZHJlc3Nfc3BhY2UgKnZtKQ0KPiA+ID4gIAkJaWYgKGVycikNCj4gPiA+ICAJCQljb250aW51ZTsN
Cj4gPiA+DQo+ID4gPiAtCQl2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW5fd3coZHB0LT5v
YmosICZ3dywgTlVMTCwgMCwNCj4gPiA+IDQwOTYsDQo+ID4gPiAtCQkJCQkJICBwaW5fZmxhZ3Mp
Ow0KPiA+ID4gKwkJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluX3d3KGRwdC0+b2JqLCAm
d3csIE5VTEwsIDAsDQo+ID4gPiArCQkJCQkJICBhbGlnbm1lbnQsIHBpbl9mbGFncyk7DQo+ID4g
PiAgCQlpZiAoSVNfRVJSKHZtYSkpIHsNCj4gPiA+ICAJCQllcnIgPSBQVFJfRVJSKHZtYSk7DQo+
ID4gPiAgCQkJY29udGludWU7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcHQuaA0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwdC5oDQo+ID4gPiBpbmRleCBlMThhOWY3NjdiMTEuLmY0Njc1NzhhNDk1MCAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0
LmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmgN
Cj4gPiA+IEBAIC0xMyw3ICsxMyw4IEBAIHN0cnVjdCBpOTE1X3ZtYTsNCj4gPiA+ICBzdHJ1Y3Qg
aW50ZWxfZnJhbWVidWZmZXI7DQo+ID4gPg0KPiA+ID4gIHZvaWQgaW50ZWxfZHB0X2Rlc3Ryb3ko
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pOyAtc3RydWN0DQo+ID4gPiBpOTE1X3ZtYSAq
aW50ZWxfZHB0X3BpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSk7DQo+ID4gPiArc3Ry
dWN0IGk5MTVfdm1hICppbnRlbF9kcHRfcGluKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
LA0KPiA+ID4gKwkJCSAgICAgICB1bnNpZ25lZCBpbnQgYWxpZ25tZW50KTsNCj4gPiA+ICB2b2lk
IGludGVsX2RwdF91bnBpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSk7ICB2b2lkDQo+
ID4gPiBpbnRlbF9kcHRfc3VzcGVuZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7ICB2
b2lkDQo+ID4gPiBpbnRlbF9kcHRfcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KTsgZGlmZiAtLWdpdA0KPiA+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+
ID4gPiBpbmRleCAzZWE2NDcwZDZkOTIuLjU4ZWFkMDVmYmE2ZiAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYw0KPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+ID4gPiBAQCAtODA1LDggKzgw
NSwyMyBAQCB1bnNpZ25lZCBpbnQgaW50ZWxfc3VyZl9hbGlnbm1lbnQoY29uc3Qgc3RydWN0DQo+
ID4gPiBkcm1fZnJhbWVidWZmZXIgKmZiLCAgew0KPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGZiLT5kZXYpOw0KPiA+ID4NCj4gPiA+IC0JaWYgKGlu
dGVsX2ZiX3VzZXNfZHB0KGZiKSkNCj4gPiA+ICsJaWYgKGludGVsX2ZiX3VzZXNfZHB0KGZiKSkg
ew0KPiA+ID4gKwkJLyogQVVYX0RJU1QgbmVlZHMgb25seSA0SyBhbGlnbm1lbnQgKi8NCj4gPiA+
ICsJCWlmIChpbnRlbF9mYl9pc19jY3NfYXV4X3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpDQo+ID4g
PiArCQkJcmV0dXJuIDUxMiAqIDQwOTY7DQo+ID4gPiArDQo+ID4gPiArCQkvKg0KPiA+ID4gKwkJ
ICogRklYTUUgQURMIHNlZXMgR0dUVC9ETUFSIGZhdWx0cyB3aXRoIGFzeW5jDQo+ID4gPiArCQkg
KiBmbGlwcyB1bmxlc3Mgd2UgYWxpZ24gdG8gMTZrIGF0IGxlYXN0Lg0KPiA+ID4gKwkJICogRmln
dXJlIG91dCB3aGF0J3MgZ29pbmcgb24gaGVyZS4uLg0KPiA+ID4gKwkJICovDQo+ID4gPiArCQlp
ZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpICYmDQo+ID4gPiArCQkgICAgIWludGVsX2ZiX2lz
X2Njc19tb2RpZmllcihmYi0+bW9kaWZpZXIpICYmDQo+ID4gPiArCQkgICAgSEFTX0FTWU5DX0ZM
SVBTKGRldl9wcml2KSkNCj4gPiA+ICsJCQlyZXR1cm4gNTEyICogMTYgKiAxMDI0Ow0KPiA+ID4g
Kw0KPiA+ID4gIAkJcmV0dXJuIDUxMiAqIDQwOTY7DQo+ID4gPiArCX0NCj4gPiA+DQo+ID4gPiAg
CS8qIEFVWF9ESVNUIG5lZWRzIG9ubHkgNEsgYWxpZ25tZW50ICovDQo+ID4gPiAgCWlmIChpbnRl
bF9mYl9pc19jY3NfYXV4X3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpIGRpZmYgLS1naXQNCj4gPiA+
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYl9waW4uYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiX3Bpbi5jDQo+ID4gPiBpbmRleCA3
YjQyYWVmMzdkMmYuLmMyOGFlOTllYmU2YSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJfcGluLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJfcGluLmMNCj4gPiA+IEBAIC0xOSw2ICsxOSw3IEBA
DQo+ID4gPiAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqDQo+ID4gPiAgaW50ZWxfcGluX2ZiX29i
al9kcHQoc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsDQo+ID4gPiAgCQkgICAgIGNvbnN0IHN0
cnVjdCBpOTE1X2d0dF92aWV3ICp2aWV3LA0KPiA+ID4gKwkJICAgICB1bnNpZ25lZCBpbnQgYWxp
Z25tZW50LA0KPiA+ID4gIAkJICAgICBib29sIHVzZXNfZmVuY2UsDQo+ID4gPiAgCQkgICAgIHVu
c2lnbmVkIGxvbmcgKm91dF9mbGFncywNCj4gPiA+ICAJCSAgICAgc3RydWN0IGk5MTVfYWRkcmVz
c19zcGFjZSAqdm0pIEBAIC0yOCw3ICsyOSw2IEBADQo+ID4gPiBpbnRlbF9waW5fZmJfb2JqX2Rw
dChzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwNCj4gPiA+ICAJc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiA9IGludGVsX2ZiX29iaihmYik7DQo+ID4gPiAgCXN0cnVjdCBpOTE1X2dl
bV93d19jdHggd3c7DQo+ID4gPiAgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOw0KPiA+ID4gLQl1MzIg
YWxpZ25tZW50Ow0KPiA+ID4gIAlpbnQgcmV0Ow0KPiA+ID4NCj4gPiA+ICAJLyoNCj4gPiA+IEBA
IC00MSw4ICs0MSw2IEBAIGludGVsX3Bpbl9mYl9vYmpfZHB0KHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiLA0KPiA+ID4gIAlpZiAoV0FSTl9PTighaTkxNV9nZW1fb2JqZWN0X2lzX2ZyYW1lYnVm
ZmVyKG9iaikpKQ0KPiA+ID4gIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gPg0KPiA+
ID4gLQlhbGlnbm1lbnQgPSA0MDk2ICogNTEyOw0KPiA+ID4gLQ0KPiA+ID4gIAlhdG9taWNfaW5j
KCZkZXZfcHJpdi0+Z3B1X2Vycm9yLnBlbmRpbmdfZmJfcGluKTsNCj4gPiA+DQo+ID4gPiAgCWZv
cl9pOTE1X2dlbV93dygmd3csIHJldCwgdHJ1ZSkgew0KPiA+ID4gQEAgLTI1NywxNCArMjU1LDE2
IEBAIGludCBpbnRlbF9wbGFuZV9waW5fZmIoc3RydWN0DQo+ID4gPiBpbnRlbF9wbGFuZV9zdGF0
ZQ0KPiA+ID4gKnBsYW5lX3N0YXRlKQ0KPiA+ID4gIAkJcGxhbmVfc3RhdGUtPmdndHRfdm1hID0g
dm1hOw0KPiA+ID4gIAl9IGVsc2Ugew0KPiA+ID4gIAkJc3RydWN0IGludGVsX2ZyYW1lYnVmZmVy
ICppbnRlbF9mYiA9IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGZiKTsNCj4gPiA+ICsJCXVuc2lnbmVk
IGludCBhbGlnbm1lbnQgPSBpbnRlbF9zdXJmX2FsaWdubWVudChmYiwgMCk7DQo+ID4gPg0KPiA+
ID4gLQkJdm1hID0gaW50ZWxfZHB0X3BpbihpbnRlbF9mYi0+ZHB0X3ZtKTsNCj4gPiA+ICsJCXZt
YSA9IGludGVsX2RwdF9waW4oaW50ZWxfZmItPmRwdF92bSwgYWxpZ25tZW50IC8gNTEyKTsNCj4g
PiA+ICAJCWlmIChJU19FUlIodm1hKSkNCj4gPiA+ICAJCQlyZXR1cm4gUFRSX0VSUih2bWEpOw0K
PiA+ID4NCj4gPiA+ICAJCXBsYW5lX3N0YXRlLT5nZ3R0X3ZtYSA9IHZtYTsNCj4gPiA+DQo+ID4g
PiAtCQl2bWEgPSBpbnRlbF9waW5fZmJfb2JqX2RwdChmYiwgJnBsYW5lX3N0YXRlLT52aWV3Lmd0
dCwgZmFsc2UsDQo+ID4gPiArCQl2bWEgPSBpbnRlbF9waW5fZmJfb2JqX2RwdChmYiwgJnBsYW5l
X3N0YXRlLT52aWV3Lmd0dCwNCj4gPiA+ICsJCQkJCSAgIGFsaWdubWVudCwgZmFsc2UsDQo+ID4g
PiAgCQkJCQkgICAmcGxhbmVfc3RhdGUtPmZsYWdzLCBpbnRlbF9mYi0NCj4gPiA+ID5kcHRfdm0p
Ow0KPiA+ID4gIAkJaWYgKElTX0VSUih2bWEpKSB7DQo+ID4gPiAgCQkJaW50ZWxfZHB0X3VucGlu
KGludGVsX2ZiLT5kcHRfdm0pOw0KPiA+ID4gLS0NCj4gPiA+IDIuNDMuMg0KPiA+DQo+IA0KPiAt
LQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg==
