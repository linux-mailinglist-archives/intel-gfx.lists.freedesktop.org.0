Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E295A9FF1A7
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 20:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9EE10E6A9;
	Tue, 31 Dec 2024 19:56:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZPddaVjm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B4610E6A9;
 Tue, 31 Dec 2024 19:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735674999; x=1767210999;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=9Tg8CYZ/MHIWOHNt+tdBS+pl/6AjqCkFoy8S+vhwqMg=;
 b=ZPddaVjmQ7F6u9HB1jHzWMj1U2+ZWCcn2n1e9Y3IISrRMg+veAWL5Pzb
 iafK7YXY+mZuVHi9uhvVR4FtFiviKTVOXJJCyPkRGzJUHDF4VUzlL3LW5
 w1nFAgRgA15qrR51jo7r4oXCuk0re2Ht3vWyrUSe2OQXgqCTPTRBokNFn
 nuNMFWtPMfO8AnrubO1S/2CF/cxEnuWI8ioyEW8uFN51D3sKFZRN51j7q
 HUKlHD7tuNif1NBkZtu88Os+MpoNW9g8sVu7FjSeL4yI/43Xnxt1h5xO/
 x1TLuwgdY8byNDtlyQYH5J944hEB0dYa0jw6M9sPw6oI0vezj9UzK1jgx A==;
X-CSE-ConnectionGUID: 8wpYC95OSk6damVF/V05Zw==
X-CSE-MsgGUID: ppuH+ZAJShKZ/JMcIJSsgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="53354520"
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="53354520"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 11:56:38 -0800
X-CSE-ConnectionGUID: bgG9lf53SUWop7Bq8ZnvQw==
X-CSE-MsgGUID: +8YKC2q3ROWXtaPs7JWjTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100938092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 11:56:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 11:56:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 11:56:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 11:56:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vvlUEnRFBjWLPP1TiC7NeUfH54XAB4TIAPKmaFR+1O2sO9EXRCAzQzgg1NfF5uatoxrBmqUwIwzy5wCQyhpDdzqRxpzTPnyAu5K1v4yKZ+cwVnu4CMjFDcl+RRBWUbO/Z/gTsV5F2UvWlza2x9MEJSVHJMg2EgEr3/UFLA/KIEG3XUT4a1NowMqFq5S8l6gs28DBeKYCEo/GQKgPVxuptAXZ2SFBkHhW3x2/H2wGD1nF7/uPUf1zyw6SzD3IDfxjnoNGZbNX7i6W6zJdpKDRqvd3nOV4cM3Sns+tDqrn19j8pb4PcejsK1OAVfpfo7glDe/S69tMTiAHBsgfDg+U6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VyXiq+lXBb/8RdHoAMaVQRGPEHQgbCGsDgYiu2N7ldA=;
 b=nvyzMTV23qAMcC2J89WwI+e+4UAVxtzJ8QboFjA57buyvSEOMB5H3BewT9VyeZjDZaOXPz+oZ0AiCiTLo4OmSThWFC6LbCBKurcsnIKz2DqoCA0GPGWPRnsgnOplvyOykKqfBEddf8AFe+kmi7NUcCeiuk2w4eBWFnk47z3MlcCjsWA5TgW5btrV3AilB30kwpQGp19EUzP+VcoYwaZjEhiP0zawul8INE3sJoj063hZH8GTbK+qCg8PX6+Jt3FA16h9a1FpcNNnpPxZ2knEe6viErbDM3DIXc+J9U+o4O195tj7W7oQbjczTYcFflmcqBACaCk9A5k3cVNb9H4Zhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8695.namprd11.prod.outlook.com (2603:10b6:408:211::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Tue, 31 Dec
 2024 19:55:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 19:55:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2b5e743b285a86a59ee87085727847c758c8d552.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
 <2b5e743b285a86a59ee87085727847c758c8d552.1735662324.git.jani.nikula@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/display: convert global state to struct
 intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 16:55:47 -0300
Message-ID: <173567494745.6883.6080635222182353504@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0204.namprd04.prod.outlook.com
 (2603:10b6:303:86::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8695:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b818192-e58d-4524-02da-08dd29d520db
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2pSREtWZXlKNTc0UGlvYkV5cHdyK2tRQlgxaGp0WFhyYUNIS2IwTWlvbHlJ?=
 =?utf-8?B?RTdxQWx1NnRmdVRTcEpYaXVyV1VnV2s1ZFltV0E4VkM5aHRLeEIvdXE4a0FZ?=
 =?utf-8?B?akl0V1BNK2lnUGtFcFZmcFBDcUZDL2w5eW5YZC9YUmE1SDIrSFJPV3RQekFT?=
 =?utf-8?B?UFgxRDRTZ0tZWnQraTdLbjRCRXFnWDFHaytjZWJ2VUl3REJDK09sZDBUcUQ1?=
 =?utf-8?B?S3hjakl1bFN4NHlCWTFiUlRVRHJONGoxbGRMdU5YQ1plMk9zQXNtUGJvcFN6?=
 =?utf-8?B?R2VnTXdKOGkvZFdsdXNDUS9lbEFsaUU5dFluS1AzVFI0VWZYdzU2d3lEcG5V?=
 =?utf-8?B?RzFySHRKaDhaR25zcVdxTkRDMk5mbjZGTUhQUWFrZVRLVkdjZXplVlpPUmNz?=
 =?utf-8?B?RXlocVhBcEFZV3dmVDBLSDlpbDhpRzBSQnFBaCt1VGQrSXdsRS9DTUlFTFgy?=
 =?utf-8?B?N0lZTmduZEdLdkVOek0wMUxYV0liS1pXNlArYlN3aHg5ZktHTURwQlFvSkEz?=
 =?utf-8?B?OHg4K2l5a21lb0pBTUt1cnAzWktVRlVXMkJEZ0lFU2VQNjQ4WTVXLzZtUGkw?=
 =?utf-8?B?ckZyQ1o0UjJydkcvaUFWZ0dKRXdOckc4cHhicm1FQXpvN1dSL05Ua1djWEpJ?=
 =?utf-8?B?Z1JCdk1IdmxENlhrR1FnU1lOSmtoalUxS1pCL2tNY3QxcmlZdUlBYnpRYmJ5?=
 =?utf-8?B?WU1OUUo0Tkp1dlhqYk1jODJvTEJHdlYzUjJ5UVh3Vy9IWkZ0a0l6NmtEeXRh?=
 =?utf-8?B?TVE0czFDQzFvdEl1a3RNeWxGbGw3enJVZGdhZ3BsSHJnOHd0aytBMUtTY3Qx?=
 =?utf-8?B?amJLLzdiVjlKMExUbUZScXZqUGoxNFpubHNmOExZZ0JzaktVVVdQQmNpbitY?=
 =?utf-8?B?NWRqV2JGT2pPQWt1dXM2Rk9ra1B0NFFOMXYvNysyOWZvQ2VXZlFNckl4VTht?=
 =?utf-8?B?MTJpcTdoL041Q21TMU5xUHUrTy85NFE2QzdmamQ0QWVJclM1SzlMMndxZ0xu?=
 =?utf-8?B?eG5mQ0JYcE5LbXhUNWo4YmJ2UU1NQjFReFowU2pFN2F2b3A5RVhacVhZWWVm?=
 =?utf-8?B?SHFWZFo5ZVRrQ0lhT1UzU0VTUlJRbER5S3JubUQ3TGpCMVNVSngrRUdUb29l?=
 =?utf-8?B?M3dSWGZKOWNDMmNjSElmOU93STZVZFZLY1pmOFlNQWNiWENPTUs5bG05Zzdt?=
 =?utf-8?B?amdSWTB3WFQxcUxyayt6TEhUVEpRQS93bTBhL0pUNkI0YnpnOVFmZlZKeXg5?=
 =?utf-8?B?N0RUd1VJZE8wSnVjRklIL3VmMDVqNGhSUGVSVFJrK2Y0MVNvUHFHYnRGWGdr?=
 =?utf-8?B?ZDNTWStSbE9kdkRsUW9YQ25nZHZXQ2UzY3Vtc1dpMmJ3NFRNMUc2MXJuOHlN?=
 =?utf-8?B?YjF5Nk51eEdnK2Q5WWxkTnNpVUNkR0xYSzJ4U3VpMjNURlFLKzJUNElra2xB?=
 =?utf-8?B?c0JhZnE0SXBGNHc4a0hTb2VIT3RYRTloWXkvSVJ1Sm1jTmZqSEd5V2RHR1JT?=
 =?utf-8?B?dDR0OWtiZ281Y08vTUpQWmVWeFU2NnloK0RYYmlVeGF3Ymp6MElPVy9pWEFz?=
 =?utf-8?B?Ri8xTVNid0hRL1MvN2VMTnA3MzJCYjNteUJmR1FvTmczakZnRmEwNzMyQklX?=
 =?utf-8?B?aW8wKzNoS25QYi9LZGFPdnRZTEtYeEdWMnpGa0xLSExSODJOeTBKQ2Q5Q09V?=
 =?utf-8?B?OVhjSjZWYllyRnJxaDE1MkpncnZHM0JacSswY3NiR1E2TUJsak43QmJ5YUE2?=
 =?utf-8?B?TzkxRHhpaXNsc0NCaWlPOFNUU3FrSkxJUFllcnF3TEJwdmllMEpJa3h0bnVt?=
 =?utf-8?B?amhiYlExenBCVFpOczdwSFRRNm92YllFQ3J4bEZzSStJWlN6eVYveFo5T09N?=
 =?utf-8?Q?Qynytsywfeknz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czlzSlBWNTIraUQ5M3ZVMlZaK3QxallOejFKeUgwUjVmaU1kbTBLSW91dzls?=
 =?utf-8?B?NzFUNTlMMUZjY09Pd3lYYW9jMFQ4d2FBVmc2NzRWZWtoRzU5blVnWTUxQUg0?=
 =?utf-8?B?M3dXV3JidU5qdGt1U2w1dUdyYjNmc1p4S2c0cTV3R1QxZjZkUkhmclM4RUV3?=
 =?utf-8?B?OHdYNHg4MG5qVFVyanY4dkdpVVhnL2tTbXhoMnNxTDJUVDl3WWJWN2hLd1Fu?=
 =?utf-8?B?WTVsQmcva3F2OG52ZWtpa0k3OUo1SE5oN1c5WnB6U0VkVUV6SXAvKzR0K29D?=
 =?utf-8?B?bDlsSTlFWDJzUFU3RDBlKy91dlRGb3RoRlUxTDhacWhyME9BTVNZVENZNEts?=
 =?utf-8?B?U2pVNU1XQk9hYmFZQ1M3cUJKMklFdUtpb3dCMXdPZTdxU2ZOYzVrM05keGxD?=
 =?utf-8?B?YzhVL1M2cnRzS1lqV0JTUDF4SWVnbWpCT3pUVUlmMzd5bXBEV2VhYWwrWUh1?=
 =?utf-8?B?K3N5V21pUTVhT3ZEektlVFBNL3JGVkpTcWJkUlV3NHkzNGpGN1JkdXU0QkFT?=
 =?utf-8?B?ZUtuOFBFdzM4cDFRcTZUUXUydDRmdVg4a1VxUk9hOEVMQWttcHRVeTA3TkM2?=
 =?utf-8?B?MzgxSTNna3p6c3l5c0FIV2d5RFUrTld3WCsxSFl5bUprNS9GUFFuNWlOUENi?=
 =?utf-8?B?SDZ0VHNoNkpsNlo0eVNpNDdhOVhYNWVzOHN6dThSaGJUYWF1cTFGb24vc28v?=
 =?utf-8?B?QWY3UW96VURJZzNSTGhlVFJqZGx6dksyMmJOZTR1Q3JPdXdQSEs4cFdkVEN2?=
 =?utf-8?B?UDRlN3J5RjFTZ1J3cnoxbXJCMWhLU0MzOGhHcGlhYUJLdGRsR1I5c2VZMHhk?=
 =?utf-8?B?MzIxMkh5MFdRVnZLYVptbDRTZmtRR2lDeTU5eFYwZDY0UWx1WnY1MEFyejVI?=
 =?utf-8?B?S0h2REV1RWkvR1ZMNXVuUWlpV1JOdFE3NVdieEg1Uk5ncWFSMVl0VTh2dG1Q?=
 =?utf-8?B?eUM4Z3JBV29yNngwVC9hMys5cDZCV3BIUzFwdlJvbUg4R0N1b0NRTnB3RW02?=
 =?utf-8?B?ZEExWWMvL0tsYkFIRHlaZWpmOUtKSlVFbTZpNWk1OThKa1RBMy9mRWtCZzJN?=
 =?utf-8?B?MDdmU2FNWCtHeVpuc2NYbS96WWFUaXhMWHJEaEdDRGZDY04zK2JlRlI4d0tl?=
 =?utf-8?B?QkQwNFBSeGpLMGpMZmdBMkp4UzhaTUhSeHpmUyszRSsyM2ljY3YwYndnR3kz?=
 =?utf-8?B?M3NpZUQxNjlBUVV2bGhVUmcwd1lzc2VZRStRQkJLbnRoNUtqRWtaTzQ5ekU5?=
 =?utf-8?B?TlZlbnUvWHg4MGh3SG1jVnNENUxJZ3l3YzNMZm9wYTRPTjdzVkhVYTJNZ3l6?=
 =?utf-8?B?VGNzaHY0cDY2U3hYVm0weWFDdUlaYnhFRFRpdXI0Sjh1cWZEa0FuTDc4NVN4?=
 =?utf-8?B?SXM2NmNDL3haRGgybjhoaTJ4cVhSYmY1UkJJa1c2SzlFTHFaR1ltOUxXdjAx?=
 =?utf-8?B?TVJYTm1aeDQydS9RTTlPWllxZkIxZEcwVjlQQkl1THhzSE40NFlZSTh4NjlI?=
 =?utf-8?B?SHU1d3hXY2RRL3c2WVJ5dlhoT2YvYUR0cjBGbEI0bVdBRzJKSVNzWm0rRUdv?=
 =?utf-8?B?b1h2NGJyRU5YSXByMllvK2NuU1NBYTBZM0FOaTQvRm9XMHhURDYvcERWVnJZ?=
 =?utf-8?B?MDVpZ1lteFNVNENLY251aHZBRitQMlZ2L25zaDFUWlRoUisrb2EvaytjbktK?=
 =?utf-8?B?VHJqWHlmSFJKNG5qekRjanJHeENKdzYybkRxWUdlVEhxT0tNVWl0bWVWQStk?=
 =?utf-8?B?T09yNGdMSkR2S09CZ2hOUHFWemZtTVZkRUdCRGNKUGpSU2JpYVUwVXJpMVUr?=
 =?utf-8?B?ZGgvdDY3cUVTRnJZN2lwVEM1Q2hhVWtKTkNqUVVZMm43UGplTVQ5cko3UkNS?=
 =?utf-8?B?ODdzOGlMckljUmZPMlBmbjB0bTZxQlJXVFpyUU1VdTBrOVZER2R6Y2hNd2xE?=
 =?utf-8?B?MG5WK2NFY2dNa1ZrQjNQWTUwZmtsUWFZSTgycjM4cXROY0JyYlFuaWpDWWRJ?=
 =?utf-8?B?cmE4dUVvdW9JcStZVmtKTmJrbjlYczl5c2VGZnROc2VQbHNTY003Q3BsV0Nm?=
 =?utf-8?B?R3kvaDNINEtCRlBFR3ZEOElrTkdZMDZRQWJCck0rWEZwcVNud2JwRGZXRDBt?=
 =?utf-8?B?ZGdON1RKRzUrY0ZVVVB2QUZESnFaTCtRNktoU0pGUnI0UmJybTk1bTFCc1Ni?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b818192-e58d-4524-02da-08dd29d520db
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 19:55:51.5638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8spXYLAeBqw6DwJy/PVFCu6MERr4E9m8P5AtpylzkjaV3aaBNbLPVH/3xD0yRnkvBlwFfO8MFcVjcPuqPmdzYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8695
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

Quoting Jani Nikula (2024-12-31 13:27:40-03:00)
>Going forward, struct intel_display is the main display device
>structure. Convert intel_global_state.[ch] to it.
>
>This allows us to make intel_pmdemand.c completely independent of
>i915_drv.h.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

with git show -W --word-diff and trust in the compiler.

>---
> drivers/gpu/drm/i915/display/intel_bw.c       |  3 +-
> drivers/gpu/drm/i915/display/intel_cdclk.c    |  3 +-
> .../drm/i915/display/intel_display_driver.c   |  4 +-
> .../gpu/drm/i915/display/intel_global_state.c | 42 +++++++++----------
> .../gpu/drm/i915/display/intel_global_state.h |  6 +--
> drivers/gpu/drm/i915/display/intel_pmdemand.c |  6 +--
> drivers/gpu/drm/i915/display/skl_watermark.c  |  3 +-
> 7 files changed, 33 insertions(+), 34 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index 08e8a67ca74c..23edc81741de 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -1447,13 +1447,14 @@ static const struct intel_global_state_funcs intel=
_bw_funcs =3D {
>=20
> int intel_bw_init(struct drm_i915_private *i915)
> {
>+        struct intel_display *display =3D &i915->display;
>         struct intel_bw_state *state;
>=20
>         state =3D kzalloc(sizeof(*state), GFP_KERNEL);
>         if (!state)
>                 return -ENOMEM;
>=20
>-        intel_atomic_global_obj_init(i915, &i915->display.bw.obj,
>+        intel_atomic_global_obj_init(display, &display->bw.obj,
>                                      &state->base, &intel_bw_funcs);
>=20
>         /*
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 3506e576bf6b..c7a603589412 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -3217,14 +3217,13 @@ int intel_cdclk_state_set_joined_mbus(struct intel=
_atomic_state *state, bool joi
>=20
> int intel_cdclk_init(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_cdclk_state *cdclk_state;
>=20
>         cdclk_state =3D kzalloc(sizeof(*cdclk_state), GFP_KERNEL);
>         if (!cdclk_state)
>                 return -ENOMEM;
>=20
>-        intel_atomic_global_obj_init(dev_priv, &display->cdclk.obj,
>+        intel_atomic_global_obj_init(display, &display->cdclk.obj,
>                                      &cdclk_state->base, &intel_cdclk_fun=
cs);
>=20
>         return 0;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index c4cfb0406fa2..1aa0b298c278 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -163,9 +163,7 @@ static void intel_mode_config_init(struct intel_displa=
y *display)
>=20
> static void intel_mode_config_cleanup(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        intel_atomic_global_obj_cleanup(i915);
>+        intel_atomic_global_obj_cleanup(display);
>         drm_mode_config_cleanup(display->drm);
> }
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/g=
pu/drm/i915/display/intel_global_state.c
>index cbcd1e91b7be..8a49e2bb37fa 100644
>--- a/drivers/gpu/drm/i915/display/intel_global_state.c
>+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
>@@ -75,7 +75,7 @@ intel_atomic_global_state_get(struct intel_global_state =
*obj_state)
>         return obj_state;
> }
>=20
>-void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
>+void intel_atomic_global_obj_init(struct intel_display *display,
>                                   struct intel_global_obj *obj,
>                                   struct intel_global_state *state,
>                                   const struct intel_global_state_funcs *=
funcs)
>@@ -88,26 +88,26 @@ void intel_atomic_global_obj_init(struct drm_i915_priv=
ate *dev_priv,
>=20
>         obj->state =3D state;
>         obj->funcs =3D funcs;
>-        list_add_tail(&obj->head, &dev_priv->display.global.obj_list);
>+        list_add_tail(&obj->head, &display->global.obj_list);
> }
>=20
>-void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv)
>+void intel_atomic_global_obj_cleanup(struct intel_display *display)
> {
>         struct intel_global_obj *obj, *next;
>=20
>-        list_for_each_entry_safe(obj, next, &dev_priv->display.global.obj=
_list, head) {
>+        list_for_each_entry_safe(obj, next, &display->global.obj_list, he=
ad) {
>                 list_del(&obj->head);
>=20
>-                drm_WARN_ON(&dev_priv->drm, kref_read(&obj->state->ref) !=
=3D 1);
>+                drm_WARN_ON(display->drm, kref_read(&obj->state->ref) !=
=3D 1);
>                 intel_atomic_global_state_put(obj->state);
>         }
> }
>=20
>-static void assert_global_state_write_locked(struct drm_i915_private *dev=
_priv)
>+static void assert_global_state_write_locked(struct intel_display *displa=
y)
> {
>         struct intel_crtc *crtc;
>=20
>-        for_each_intel_crtc(&dev_priv->drm, crtc)
>+        for_each_intel_crtc(display->drm, crtc)
>                 drm_modeset_lock_assert_held(&crtc->base.mutex);
> }
>=20
>@@ -126,23 +126,23 @@ static bool modeset_lock_is_held(struct drm_modeset_=
acquire_ctx *ctx,
>=20
> static void assert_global_state_read_locked(struct intel_atomic_state *st=
ate)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         struct drm_modeset_acquire_ctx *ctx =3D state->base.acquire_ctx;
>-        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>         struct intel_crtc *crtc;
>=20
>-        for_each_intel_crtc(&dev_priv->drm, crtc) {
>+        for_each_intel_crtc(display->drm, crtc) {
>                 if (modeset_lock_is_held(ctx, &crtc->base.mutex))
>                         return;
>         }
>=20
>-        drm_WARN(&dev_priv->drm, 1, "Global state not read locked\n");
>+        drm_WARN(display->drm, 1, "Global state not read locked\n");
> }
>=20
> struct intel_global_state *
> intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
>                                   struct intel_global_obj *obj)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         int index, num_objs, i;
>         size_t size;
>         struct __intel_global_objs_state *arr;
>@@ -184,7 +184,7 @@ intel_atomic_get_global_obj_state(struct intel_atomic_=
state *state,
>=20
>         state->num_global_objs =3D num_objs;
>=20
>-        drm_dbg_atomic(&i915->drm, "Added new global object %p state %p t=
o %p\n",
>+        drm_dbg_atomic(display->drm, "Added new global object %p state %p=
 to %p\n",
>                        obj, obj_state, state);
>=20
>         return obj_state;
>@@ -218,14 +218,14 @@ intel_atomic_get_new_global_obj_state(struct intel_a=
tomic_state *state,
>=20
> void intel_atomic_swap_global_state(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct intel_global_state *old_obj_state, *new_obj_state;
>         struct intel_global_obj *obj;
>         int i;
>=20
>         for_each_oldnew_global_obj_in_state(state, obj, old_obj_state,
>                                             new_obj_state, i) {
>-                drm_WARN_ON(&dev_priv->drm, obj->state !=3D old_obj_state=
);
>+                drm_WARN_ON(display->drm, obj->state !=3D old_obj_state);
>=20
>                 /*
>                  * If the new state wasn't modified (and properly
>@@ -234,7 +234,7 @@ void intel_atomic_swap_global_state(struct intel_atomi=
c_state *state)
>                 if (!new_obj_state->changed)
>                         continue;
>=20
>-                assert_global_state_write_locked(dev_priv);
>+                assert_global_state_write_locked(display);
>=20
>                 old_obj_state->state =3D state;
>                 new_obj_state->state =3D NULL;
>@@ -265,10 +265,10 @@ void intel_atomic_clear_global_state(struct intel_at=
omic_state *state)
> int intel_atomic_lock_global_state(struct intel_global_state *obj_state)
> {
>         struct intel_atomic_state *state =3D obj_state->state;
>-        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct intel_crtc *crtc;
>=20
>-        for_each_intel_crtc(&dev_priv->drm, crtc) {
>+        for_each_intel_crtc(display->drm, crtc) {
>                 int ret;
>=20
>                 ret =3D drm_modeset_lock(&crtc->base.mutex,
>@@ -298,10 +298,10 @@ int intel_atomic_serialize_global_state(struct intel=
_global_state *obj_state)
> bool
> intel_atomic_global_state_is_serialized(struct intel_atomic_state *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         struct intel_crtc *crtc;
>=20
>-        for_each_intel_crtc(&i915->drm, crtc)
>+        for_each_intel_crtc(display->drm, crtc)
>                 if (!intel_atomic_get_new_crtc_state(state, crtc))
>                         return false;
>         return true;
>@@ -344,7 +344,7 @@ intel_atomic_global_state_setup_commit(struct intel_at=
omic_state *state)
> int
> intel_atomic_global_state_wait_for_dependencies(struct intel_atomic_state=
 *state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_global_state *old_obj_state;
>         struct intel_global_obj *obj;
>         int i;
>@@ -358,7 +358,7 @@ intel_atomic_global_state_wait_for_dependencies(struct=
 intel_atomic_state *state
>=20
>                 ret =3D wait_for_completion_timeout(&commit->done, 10 * H=
Z);
>                 if (ret =3D=3D 0) {
>-                        drm_err(&i915->drm, "global state timed out\n");
>+                        drm_err(display->drm, "global state timed out\n")=
;
>                         return -ETIMEDOUT;
>                 }
>         }
>diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/g=
pu/drm/i915/display/intel_global_state.h
>index 6506a8e32972..d42fb2547ee9 100644
>--- a/drivers/gpu/drm/i915/display/intel_global_state.h
>+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
>@@ -9,8 +9,8 @@
> #include <linux/kref.h>
> #include <linux/list.h>
>=20
>-struct drm_i915_private;
> struct intel_atomic_state;
>+struct intel_display;
> struct intel_global_obj;
> struct intel_global_state;
>=20
>@@ -69,11 +69,11 @@ struct __intel_global_objs_state {
>         struct intel_global_state *state, *old_state, *new_state;
> };
>=20
>-void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
>+void intel_atomic_global_obj_init(struct intel_display *display,
>                                   struct intel_global_obj *obj,
>                                   struct intel_global_state *state,
>                                   const struct intel_global_state_funcs *=
funcs);
>-void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv);
>+void intel_atomic_global_obj_cleanup(struct intel_display *display);
>=20
> struct intel_global_state *
> intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index 9373cf2885ab..975520322136 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -5,14 +5,15 @@
>=20
> #include <linux/bitops.h>
>=20
>-#include "i915_drv.h"
> #include "i915_reg.h"
>+#include "i915_utils.h"
> #include "intel_atomic.h"
> #include "intel_bw.h"
> #include "intel_cdclk.h"
> #include "intel_de.h"
> #include "intel_display_trace.h"
> #include "intel_pmdemand.h"
>+#include "intel_step.h"
> #include "skl_watermark.h"
>=20
> struct pmdemand_params {
>@@ -115,14 +116,13 @@ intel_atomic_get_new_pmdemand_state(struct intel_ato=
mic_state *state)
>=20
> int intel_pmdemand_init(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_pmdemand_state *pmdemand_state;
>=20
>         pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>         if (!pmdemand_state)
>                 return -ENOMEM;
>=20
>-        intel_atomic_global_obj_init(i915, &display->pmdemand.obj,
>+        intel_atomic_global_obj_init(display, &display->pmdemand.obj,
>                                      &pmdemand_state->base,
>                                      &intel_pmdemand_funcs);
>=20
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index 29e8ea91c858..5e6f2afe3cfe 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3326,13 +3326,14 @@ intel_atomic_get_dbuf_state(struct intel_atomic_st=
ate *state)
>=20
> int intel_dbuf_init(struct drm_i915_private *i915)
> {
>+        struct intel_display *display =3D &i915->display;
>         struct intel_dbuf_state *dbuf_state;
>=20
>         dbuf_state =3D kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
>         if (!dbuf_state)
>                 return -ENOMEM;
>=20
>-        intel_atomic_global_obj_init(i915, &i915->display.dbuf.obj,
>+        intel_atomic_global_obj_init(display, &display->dbuf.obj,
>                                      &dbuf_state->base, &intel_dbuf_funcs=
);
>=20
>         return 0;
>--=20
>2.39.5
>
