Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0104FC5CC67
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 12:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A02310EA40;
	Fri, 14 Nov 2025 11:11:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UWDSAk4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27F1410EA3F;
 Fri, 14 Nov 2025 11:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763118711; x=1794654711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fr/ktlUYqLzqJTnx00IGhG0nFr4th3+LEx1N0vuJZBQ=;
 b=UWDSAk4mb/halRzLVsnrKZPCKyblFVjnPIoAZd5JPu06F5KnopgUsJci
 X1oY8b8F9H7xIcUWK5jqjECtHhp63wwFstiNJC2zNe2/mTiDmavk20NYX
 IBEa3B/xyLYm/JKUbD9+JyBQfZMgeb73NyAN4AMMmdDOAiAIhne5Yr4Lj
 2zjMA7LYT2iYHud66jTnk/+pZAyv9JF8dYWWkrNPofKwpIBoOO0lZkbzz
 Wvhj+N1uXztmZHybz2P+qiMqP5kdMqfzaB9p4miZR2dgPLEmbOYOFt1gR
 uqCN1DaqRF1HK+Gc+Tn7B03V3FtdbX9iKIqUvfuS1qX3KjoUD7dzddNJy g==;
X-CSE-ConnectionGUID: tLTlAcEjQeuDWUJCIDMVZw==
X-CSE-MsgGUID: RYddNbJTS7el4dO6iph52w==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="68836549"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="68836549"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 03:11:51 -0800
X-CSE-ConnectionGUID: pQLprVxESraIm+AjSS9GwQ==
X-CSE-MsgGUID: /9phf0XGRtST3LshDRkquQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189953598"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 03:11:51 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 03:11:50 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 03:11:50 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 03:11:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uPbn1CwJXmMTgPS39gd/VqIT2nysqnWrBYJ4+ZivHgBT7ha+CByFzgD6radETFdf3FQykdEdIK0jXgGqFZb3d94a2dOFlpgZ7xWBEFR+UsBZutoM7GUlcOsE10ROdZI7ul7DQ57Rxs4h75g7IjkGzH22B9xjQ9qQuXF/STjTPp3vHhdsAkynsIiuytQJs9eFK++PKQ/4AOyM+DP/pElDi1FmtAJ9nNBTB8GBDmPaMaqr0MGtv/1VY3jLACfTLJIu2ZYkP5VoNHCAZppqX84mwLMlhVF+7ow2BuTmAHGR6Jow9rKHIjKxhbfNNHLjGwcI9c5nqdB7rGehjMW1nGUE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fr/ktlUYqLzqJTnx00IGhG0nFr4th3+LEx1N0vuJZBQ=;
 b=rM/JtkTPR4WUqp6ylmD1csH13JkkRAadIls+1ixlfOa9zMPWOferpTomGKaPrzOUTE1SGoZLJns0igG30Ox30T9Ps7YPkaRnWJt4sF7j9hky8ZPMTowmDn2781tcptCaBGqxtO04jWjumkxSHSQOx00Kw54x1MKDcYCVgUtYYCUdDp9MOUliCNl9+PVIU0j2hTAuDIUD0y6YJ2AYfeQ5/HPHSN1Wu2s7n4Z1mLIwpJ14S6MS+85CbEfjxnDs40Z3M4HzagxSqxB+LE6PXHaPtXoKiWAwJdwBk3PwzoBqbIVW9UwZ6oN99R84AO8RmNuATftuqMnlOrzDdZvQ7JnZMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM4PR11MB6501.namprd11.prod.outlook.com
 (2603:10b6:8:88::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 11:11:41 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9320.018; Fri, 14 Nov 2025
 11:11:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Joshi, Kunal1" <kunal1.joshi@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>, 
 "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Thread-Topic: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
Thread-Index: AQHcUwk4ER0O/gp0cEOE2ObmFjN7R7TyCD2w
Date: Fri, 14 Nov 2025 11:11:40 +0000
Message-ID: <DS4PPF69154114F6A219010EF7F227D5E68EFCAA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251111124606.402380-1-vinod.govindapillai@intel.com>
In-Reply-To: <20251111124606.402380-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM4PR11MB6501:EE_
x-ms-office365-filtering-correlation-id: d18cfa81-2dcf-44f8-85cf-08de236e9661
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Uk9VbXQ0VHJXN055QWIweFlIR1JXVDBOMGxUeEtIclRnR1Y2VEhwNUNybHd4?=
 =?utf-8?B?bHBTdHg0K1ZrU2dac0NFWGZaMTdDeVpwbWxVK0tvbytqUnRJM0Y2eVFNQVYw?=
 =?utf-8?B?dmYvNU5zb250MmtjbVlvb2xEaDVvV2NlUURWQjJ1YS9QQmtOUEkxUnY1NStU?=
 =?utf-8?B?b0Rzd0FvMEpsMUR6d1JWb0pDd0w2dWovcStLeEthRkFSOFMySkZFYm1ZTEd4?=
 =?utf-8?B?WG5zaHRpUFQxOUxGeThxclNEbW5tTkRjT3EzOWJ6OWJ6WnVPMTBWVGJLOXp5?=
 =?utf-8?B?NGpGTHltaTZEUmh4YXhyQXFmZTUxWVdHZ0srUnFBendnRHdqS2o1aXdvMTJ0?=
 =?utf-8?B?ZXRON0NXOW1jeUJMOWEwM1BxQnNnVDhLUGZuRVRDWDdFc0ZuSFJtVzVidmph?=
 =?utf-8?B?VnZtRnJmTTNFZWZGaUpCSWRuTEtjTUVTZlJJN010dG5OdHFnZzFRUmxFTFN2?=
 =?utf-8?B?d2F2Y1dqdFJJMm5iWVdjbzB4M0Q5dGRmai9LVnNSR05oeVArWERGd3gvT3Vq?=
 =?utf-8?B?elc2K3pLVEZmbzZxeFV3WGtKZVhFOUoydjZ5NlZVSEp4REFQY21LR3ZYK0hP?=
 =?utf-8?B?aWtwRUdtUHpFdGhZQ0ZFRDNERExHbXFvQjBjaGNBSEY1N21WRy84OCs2OFdw?=
 =?utf-8?B?bzIxdmlxb1dnVC95SktLaHVJQWMzNWhZY2lURFNrYUlqSlZLMUJxRW5ORmVO?=
 =?utf-8?B?UTZ0aXl3NHBiMEhPdXZKREE0MHNQbTZiNkNoemVDRU0wQWk3VmNCeENETnVq?=
 =?utf-8?B?R0MwUnNETFVNWTNBMFh1OUdTaEltSlRvV0pveUI3NkJYSU5yK2RtTGRodk9P?=
 =?utf-8?B?SWJjOE9HYUM0anZUVitxNTV1OENUZFVhT0tzKzIwYnI3ODdzRko1UnhtZFVl?=
 =?utf-8?B?dE1UeGl4bjdxZlUrbXdGQitQUm5tTzk5bFlrVzA1ejh6T2E0UFdpb0RLUEFj?=
 =?utf-8?B?MlRDdXhlN0xGYnF6dW80SFZtVGxoMi83WktLTHFiWTRLK2ZmczRLMnQyTTlV?=
 =?utf-8?B?ZXpNaE9DbjlrUmozWGNiaWVOeHFQTFRmOXRlTlQyc0JzRVVxMmFoaWxaWWZk?=
 =?utf-8?B?R0JKL1l5WEx5Z3E1VDJxZ1FjaldDc2Z1dFRvZFpCRmpEbE9KV21VNVJZN1ZF?=
 =?utf-8?B?ak55dWdRZ0Nua3VFTHdzSnFpWXJOWmtDdCtVK0pNdStBMTJ4RU5Lb2JDNU4w?=
 =?utf-8?B?YnVXYzhEeXdyU1JraUtGSXZ6Q21PVmYvVzNoOWtuT00vKzFyWVdURVhhQ3NR?=
 =?utf-8?B?NTA4WHhEZ1F5WEhYMndTU0p0Vi81QnRHemRVTldqdEkvankxUU9TZit4cWY0?=
 =?utf-8?B?dHMxS2J6Y3g5MGpPc2U2MnRVUGNDWFoxR3RmQnI4MGNXQ29yaXJsWkJFK0RD?=
 =?utf-8?B?bFIwOGgzMHNxVVlRYTYzQWJPUnZ3eTdlVTdIbkdyMEhBNUhTaTc1REtPMHlh?=
 =?utf-8?B?ZUd2YlN2cGhkSm9oQU1vQTFYQTNtWTB0OHJlSlNDYy9Xc0lyZjc2OW1xMFQz?=
 =?utf-8?B?bTV1Nkp2R21uSW1yR2hVR1Q2b0cwaThhMldsejl6eHpIVjhuSEZ0YTQzMEtN?=
 =?utf-8?B?Sjk4di9Pb1dManJFaVAvb2xybXFGeml5eXpQK201c3VXeTJSZnE1emZTNGl5?=
 =?utf-8?B?aEdjdjdPbmIra0VKeHJPQVBZaVBIYlE4WGd0Y3YyWHpYL2xuNXFUdVFZYmNB?=
 =?utf-8?B?aFVpZFgyR0Zwc3JnUm5ITmpFSEhxSmg1NU9zSTA5dDhZK0VPb1hXK2VNVnUz?=
 =?utf-8?B?K2RvNDhDeDNjY1lnTzdydEFkNlFUY1JVWktZMzBTN0xvSVk5VzVwTXI5cTdB?=
 =?utf-8?B?SWh6dXphREtoazIyMVgySTR5aW9UWkdWSTNIUWhKMC8yQVBZa3p4WFJqRE9Y?=
 =?utf-8?B?NUZ3WmhOeGRmSWpObVo4SVdZRWNET0FrRWYwc2E3a29vTkxqRFdLQjR5Tnds?=
 =?utf-8?B?eEhKdHFZcU9oN3I4TmFxQWptUklQR2NiY3JkdFA4VGY0aUFGNHlxVVRXU1Zr?=
 =?utf-8?B?bnN5QzJiUE9GOGc0T2FNREJ0ZzRmeTE0a0ExTFBhaVdkS1RoWXJZMlRNUVRy?=
 =?utf-8?Q?4FBjdE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnZvZVN0U1FENHc4K01hWDFadU9WY052dTUrcDRocnpUYnY4ZXRVOXR4Z2p0?=
 =?utf-8?B?cHBKSjZTUUdaTXhkUFFkNndzeTVtNmZUbUU3eDA3K1dINEZlOFZ1ZG5tVml2?=
 =?utf-8?B?MXpNNEd6TWZoSHZzamFsTWlQUTRNSFhFc1ZlQzFGVVZiWG00Z1psWENQcVAr?=
 =?utf-8?B?M0JVSWZCeVE5a1d0U2FWeWxBd29hUDI0Rk02am1sbDA1SVVZdGlQMWpMdzd3?=
 =?utf-8?B?RTBHWi95MVhpMG4yOGJDVXMydFppU25pT0djWm9tUzlyMk0wUUxqTFRjd2N1?=
 =?utf-8?B?VUZMUzY5VlRhSHl1dnd2SGE5bElIZG9TbmdsS1NjUlE0UEpkd3RJRDhiK2xD?=
 =?utf-8?B?QkZmczc2Z09iN2E0OHFmWEVQNTRHNUNVby9pWW5CQnpYaFVaRGlvSWdSNGVV?=
 =?utf-8?B?SXhPM21LSVRsQi9nQzJwMmo0TzgrYWxBdlVieTRqK2hkdFZhL1QwUUV1aHFw?=
 =?utf-8?B?M0xlM1QxcWxpWXJLMEExZC84MkR3a3ZXRmEveDduV1lLdmZhM1lpcU1ZdUsx?=
 =?utf-8?B?RFFJa1Z3NzlUd0w4ak1UME1TbUZMSVRzRG9pNEVKeW1zdndXcmdNNkxNZWND?=
 =?utf-8?B?NXZCWm1OaGNjNWpvbDh6NGZOSGg3NWlWYXlEYVhKVHFxb2VwT3c4N3lBN0Yw?=
 =?utf-8?B?MGRCREh5R2NjUlQwNW1YRnNpaVlvSnF4dTNJbWY2MmZOWnR2eHpRZEloZ1ps?=
 =?utf-8?B?VVpERjFYc2NEVlVsdVMrRzZBSjBONXo5WUFEakJEdFJOL2ZBK21LVEVzUngx?=
 =?utf-8?B?dGFraHZiaE9jN09mV0dmdjJ3L2oxZ3c0WXVNdUxacmNocWdaMUVYZCswWWQw?=
 =?utf-8?B?bysrSmFaRXdtci9ReHRhSDRiOHpkREhCNkJjSmRXNjhkOHVaTGpRZEE5L1cx?=
 =?utf-8?B?ODlPNG5lalo0clRGNFpwdDB6WW4rYjhxc2tRVktvRHh6RnRZbWpORnFYSGkr?=
 =?utf-8?B?UCtaREx6SXJuQ2tDcFVWbUtBR1gyTXpYS1BmdHc5NGs2d2JwZTdRa1lkRzEr?=
 =?utf-8?B?a2VpMGcvMlJ5dFJacXowdGtWdExUcmU2ZVVLQUdXakZLQWh1VGE1N1lyY1I0?=
 =?utf-8?B?TGlyQW51c0pJcEFra0U3T3FNbVhtSGRHYjA2RHJtb2psQlUzTmpiTkNWVFVR?=
 =?utf-8?B?TVpPZEUvTUFtZCtsdmxJRUlXMHdhVzQvSWxlcDlsRWlQQm5vcmZsQURmUU45?=
 =?utf-8?B?UlFDc2l6ZVRyRkF4YWJKZnlJUExUYkwybkl2dHRKeDMxOWxxa0VuazJVb2Ro?=
 =?utf-8?B?SDg1UVFIcTd5dTNtSmVYcEZER01Pd0lJOHVwNG5zcno3dkI1RWh1cVEwM1p0?=
 =?utf-8?B?bk5MNlZMQXpTNWtVRjFTOFJyWkJxM203Sm5qTXZHYVI2ay8vL3NrYlFrRGg0?=
 =?utf-8?B?Y0x3M3dRY1Q4endzYUNnSE5hbm44R3FBUmhxVUhJbklsWjZmVlU0VVBSYUts?=
 =?utf-8?B?Q3p5RGpWY3JjK0ljUVhRbVZaR3BZZWcxNXFnWklhMnhqU0kzNm4rRFhlLzgz?=
 =?utf-8?B?NGV5S052cVJJOVNpa3B0WjJjZThQaElrd2ZkdVN2NWplc09wZ0ZCT3NnMnhj?=
 =?utf-8?B?RlNMejI4bnBKL3FsWUUwMnQvWk8xc3JlOUVmdEpFRW5tblIrNXFQcHZ2dUp2?=
 =?utf-8?B?UUdqWXNZSFA5aWM5aUUreHBBcjNSTTRKbkF1TG9kb0s1OFh1R1A1NVpmZGdI?=
 =?utf-8?B?cVJrWXZwMno4by9sUkZ2aVZ2bzlyaFVRRFF3aXdFcFhYZGJVdGNMWloza1g1?=
 =?utf-8?B?TmpPcWFqN2MxcXZpN3pFT2hscG83bDJrLzBUM1Jkd0tZTXlIR1IyWCtVcjNR?=
 =?utf-8?B?WmwvSXVVZEpJbVhXZXhPZUR3bVVkNnIwUWtjTjBvWWV6QTM4bHhSeWZOZ3JW?=
 =?utf-8?B?ZDJXSzd0Yks2cmNmQXF3M01LakZvNjVXWHhUdDBhc2taUHZDT214NE9zQUhU?=
 =?utf-8?B?YUxFYkhLU1Y5cDFrZmdLRnUyQmpxZ0Yxd1dSeGJUazM2WENsYnZPeGs1MjBn?=
 =?utf-8?B?a3RKdEZYenhWK0RIMmc4emZjTnZDa0FDdVlJMWJlZG9iV2I3TmZYb0FGYkZo?=
 =?utf-8?B?Njg1VHVFdzRmTVpnZEthMDFreW1DMDZvMU9kVXh2UVBGSUdaZ291YUh4VDJ6?=
 =?utf-8?Q?tEht6FM9jzKShNhsXbyTPRAco?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d18cfa81-2dcf-44f8-85cf-08de236e9661
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 11:11:40.8907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HEQU+YVifxpdMMgHFu2jpKd6qcn/19NveCdmR3t65VtP/xnI4kiy6mA7Ei7cJbS8l/F2ka5RoVjDD3O0L13ZIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6501
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbm9kIEdvdmlu
ZGFwaWxsYWkNCj4gU2VudDogVHVlc2RheSwgMTEgTm92ZW1iZXIgMjAyNSAxNC40Ng0KPiBUbzog
aW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBHb3ZpbmRhcGlsbGFpLCBWaW5vZCA8dmlub2QuZ292aW5kYXBpbGxhaUBp
bnRlbC5jb20+OyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IEpvc2hpLCBL
dW5hbDENCj4gPGt1bmFsMS5qb3NoaUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT47IFJvcGVyLCBNYXR0aGV3DQo+IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCB2Ml0gZHJtL2k5MTUvZmJjOiBBcHBseSB3YV8xNTAxODMyNjUwNg0KPiAN
Cj4gRGlzYWJsZSBGQkMgaW4gYm1nIGFzIHBlciB0aGUgd2EgcmVjb21tZW5kYXRpb24uDQo+IA0K
PiB2MjogdXNlIHRoZSBibWcgcGxhdGZvcm0gaW5zdGVhZCBvZiBhIHNwZWNpZmljIHN0ZXBwaW5n
DQo+IA0KPiBCc3BlYzogNzQyMTINCg0KV0Egd29ya3MgZm9yIGFsbCBzdGVwcGluZ3MuIA0KDQpM
R1RNLA0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxh
aUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3dhLmMgfCAgMiArKyAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3dhLmggfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jICAgICAgICB8IDEwICsrKysrKysrKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTMg
aW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV93YS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3dhLmMNCj4gaW5kZXggZTM4ZTVlODc4NzdjLi5iMmU3MWZhNjFjMGEgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93
YS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93
YS5jDQo+IEBAIC03MCw2ICs3MCw4IEBAIGJvb2wgX19pbnRlbF9kaXNwbGF5X3dhKHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIGludGVsX2Rpc3BsYXlfd2Egd2EsDQo+ICAJCXJl
dHVybiBESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAxMzsNCj4gIAljYXNlIElOVEVMX0RJU1BMQVlf
V0FfMjIwMTQyNjM3ODY6DQo+ICAJCXJldHVybiBJU19ESVNQTEFZX1ZFUngxMDAoZGlzcGxheSwg
MTEwMCwgMTQwMCk7DQo+ICsJY2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE1MDE4MzI2NTA2Og0KPiAr
CQlyZXR1cm4gZGlzcGxheS0+cGxhdGZvcm0uYmF0dGxlbWFnZTsNCj4gIAlkZWZhdWx0Og0KPiAg
CQlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIDEsICJNaXNzaW5nIFdhIG51bWJlcjogJXNcbiIsIG5h
bWUpOw0KPiAgCQlicmVhazsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV93YS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3dhLmgNCj4gaW5kZXggMzY0NGU4ZTJiNzI0Li5mNjQ4YjAwY2I5N2QgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93
YS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93
YS5oDQo+IEBAIC0yNiw2ICsyNiw3IEBAIGVudW0gaW50ZWxfZGlzcGxheV93YSB7DQo+ICAJSU5U
RUxfRElTUExBWV9XQV8xNjAyNTU3MzU3NSwNCj4gIAlJTlRFTF9ESVNQTEFZX1dBXzE0MDExNTAz
MTE3LA0KPiAgCUlOVEVMX0RJU1BMQVlfV0FfMjIwMTQyNjM3ODYsDQo+ICsJSU5URUxfRElTUExB
WV9XQV8xNTAxODMyNjUwNiwNCj4gIH07DQo+IA0KPiAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfd2Eo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gaW50ZWxfZGlzcGxheV93YSB3YSwg
Y29uc3QgY2hhciAqbmFtZSk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYw0KPiBpbmRleCBhMWUzMDgzMDIyZWUuLjE2Y2Q5OWRiMjk3OCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0xNTIxLDYgKzE1MjEsMTYg
QEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCXJldHVybiAwOw0KPiAgCX0NCj4gDQo+ICsJLyoNCj4gKwkgKiB3
YV8xNTAxODMyNjUwNjoNCj4gKwkgKiBGaXhlczogVW5kZXJydW4gZHVyaW5nIG1lZGlhIGRlY29k
ZQ0KPiArCSAqIFdvcmthcm91bmQ6IERvIG5vdCBlbmFibGUgRkJDDQo+ICsJICovDQo+ICsJaWYg
KGludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwgMTUwMTgzMjY1MDYpKSB7DQo+ICsJCXBsYW5lX3N0
YXRlLT5ub19mYmNfcmVhc29uID0gIldhXzE1MDE4MzI2NTA2IjsNCj4gKwkJcmV0dXJuIDA7DQo+
ICsJfQ0KPiArDQo+ICAJLyogV2FGYmNUdXJuT2ZmRmJjV2hlbkh5cGVyVmlzb3JJc1VzZWQ6c2ts
LGJ4dCAqLw0KPiAgCWlmIChpbnRlbF9kaXNwbGF5X3Z0ZF9hY3RpdmUoZGlzcGxheSkgJiYNCj4g
IAkgICAgKGRpc3BsYXktPnBsYXRmb3JtLnNreWxha2UgfHwgZGlzcGxheS0+cGxhdGZvcm0uYnJv
eHRvbikpIHsNCj4gLS0NCj4gMi40My4wDQoNCg==
