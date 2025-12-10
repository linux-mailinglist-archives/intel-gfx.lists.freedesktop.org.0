Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F46CB220F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 07:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444D510E1FB;
	Wed, 10 Dec 2025 06:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bjqi4xyI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD2F10E1FB;
 Wed, 10 Dec 2025 06:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765349879; x=1796885879;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CABVJPHVuCnSqX8xrO9PSRt0zgpDXPL+BlEIBOXiEpM=;
 b=Bjqi4xyI6tsQc/JfgVdjkM3QyNvMLvkEXkCbGzNVQWaoFN1vmYvbc6fg
 mIo9MbY+r1ctG08LA1jREBjHJBEwvFicpg1vf8S1Ilm4r8h3ck50xwtMe
 Am3LDYuRdZUDO0zRDgTJIhDpITDdccPHRMyISyz+/Z20UsSBBvnR5kXrM
 vA95JDifMyWdiPBTo77EQQ67s4lkXXZHmcM40NFq7tis17LiLoYz/tO4h
 1CpYoLTcH97Ogpj45I1apc+9G6QTLqLhulkRhYr7NKqOJVFiGityvwenX
 JG/h832V6LWJJf3y2qpcFKhLhizekcCoDDwHFzPKuwElo4OqCDH/oKNYH Q==;
X-CSE-ConnectionGUID: AXjtnp4mSOOq1Ow6HC+LQA==
X-CSE-MsgGUID: AghNlFIITYua13sOuGgVhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67364225"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="67364225"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:57:58 -0800
X-CSE-ConnectionGUID: KSU4EX3eRvWVah0ObYTMNw==
X-CSE-MsgGUID: 6myhwrSsRta9NKNZyMlTFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="196488989"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:57:57 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 22:57:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 22:57:57 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 22:57:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CXMUqIhQFdJd7v/IjDV2CNf8hdlgdsiZy/LONK7O78fKHbmKtmnpAT4ToQj1X2zFIPqdqYV0RyjQwBUKAJlLd80JJveS8YxB7/VfJoGS+6O15kc4gmVNw4GtklNp6RBt3n0Q2m/GMsx0o5gT8hdsfahNCj1PG6muZZEXHbIlUytWeiigUt2EYB48NjwnynZL5GCsjOlLnuoc3/F5B+YExqtshjBzcir2cFBQVirB66fD/wOusvswE8d5Q+pisTOXT/8eUlZU8nmkQ0ri5TSYP4fPfLwF8GvBm9jEJ2xIbSqghfPR8Jepf/FRHyJydCDSHOG4zcuKoiKNn9B2SEiuUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CABVJPHVuCnSqX8xrO9PSRt0zgpDXPL+BlEIBOXiEpM=;
 b=fapQMTartfVPyqySupqu29pYvW6Zy/zDcCxlJHjIVoEGqFpddndGmQU6NcdnmC//HT06mLx6VqozoICI/2gJdnh7iv94jge2O3ToeTKlIB0uA6WgMxNwAUzAMu/IRljFqs/sEJgvhXKjz/MvRS1LUuJ44cbSerWSmVi8saQi4DzIM22CVGIm/zr5a57IQX/2CX2LF6jaSvLO5J0fBcw3w68hrjsI+ar43vNj+v/L8JGvu06QrvXASazPh2HWMmjD/gDYewtuF/U7gB5tx5Dz+3Ni91qrTclQKr47heidnz8hk7jEEGLFpjiR0Mbi46boHK+/VLGMDE3ODwdecf+vAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7168.namprd11.prod.outlook.com (2603:10b6:510:1e9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 06:57:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 06:57:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Topic: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Index: AQHcZOyz59K73UXkKEW1bp/w1WYWh7UZqM2AgADIXoCAAAU3gIAABFCA
Date: Wed, 10 Dec 2025 06:57:41 +0000
Message-ID: <011a7d32fc6860ae4b3d00d438a79d8ade6f724e.camel@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
 <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
 <aTkWRYBWrWaMNkbC@intel.com>
In-Reply-To: <aTkWRYBWrWaMNkbC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7168:EE_
x-ms-office365-filtering-correlation-id: e24efef0-93ae-49b8-2f58-08de37b96973
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cWsydm54eEhyWTc4b0RrY0tMU1lBWjNZZ1dEeXBBSFVJenhOeGJoWFdnR0Z1?=
 =?utf-8?B?d095UG8ram5ETE5XSU83dVBUQWpaQW40a0JiZDJScnJCY1ErYitNVzNPYVQ3?=
 =?utf-8?B?ZUV2blJVVHZNelNmdktHdmpvZTgzK3MyNXN5ODQvbWE3STZjbmtjbHhqMElC?=
 =?utf-8?B?WnhLS2RMb2V4ZndJay9Ya2hnbXl5NHNFTHc5Ry9jNEt5enFvY3pmWWVmb1Rh?=
 =?utf-8?B?ZW03dmZWdGM0aUJNSU5qYm5NWVVBemd2QjYvYWZ2ckhUb0gzcXRWN2hReTEz?=
 =?utf-8?B?MncrUUN0Qk1reEtjL3JsK1NaelFNcytROGdlMHduS0ZseFhDaHRXWi9lWTly?=
 =?utf-8?B?Ui9CSmxyWXVHTTNaK05VUTJXNGtKTGZWMXkzd0JLYXE4cGFXbmw0bExWcjhC?=
 =?utf-8?B?NEM2eG1laFFwQUp0VW1hNjMvUytPVnFSM0lpK1h1ekwwUXNWQnpGa2NBbGha?=
 =?utf-8?B?UDk2QlA4dWxSNnFKZVBTTndYYVhOVEtTUWNJV213aWxKcHlpQ3N2THRzWG1V?=
 =?utf-8?B?S1Z5aVRhSlZ3UGRlYzVYc1hGS25nM0cvdDZFeU1LZU4xeEZ2dG4wK1BJWjJJ?=
 =?utf-8?B?NlVRNmg2M0VyQ2JZQzFDNzRQNmhjdEJtK1hYV09GZEp3NEkvbElKdlFsRjB0?=
 =?utf-8?B?cERBaTJNSEcvbHdidXBrZ0Z5MnFORWt6WHVqU0hTQnVjdzg5ZGQ5WUx0Q0E0?=
 =?utf-8?B?RnhBN2NBNDNwT2prdkIrZGNJb1kwZEVHYk5tR3JnK1RlVFhySmJOYTNiMysz?=
 =?utf-8?B?Nk02K3Z4WUZkUVNqVWRtdmhNbXAxVDlaSHRiSjNJczd0U00ycCtOZTNJRlNC?=
 =?utf-8?B?UURjS1VSZWxFdlUySnhNOWQwbVoxTEFITjJFME9yYXdvV05xa2xpRmRPYW1j?=
 =?utf-8?B?MEQxcnRQQnNsKytOT0N6WVBnRXlCVm55Qkl3MFpuc0hydUtrOGQyTkRIY3ly?=
 =?utf-8?B?WEY3K0JnTWF6YTFPUS81cUlwdnRVUXRxTStCR2FJMkVLZEFpb0dCRjVmMjZw?=
 =?utf-8?B?WXNoYlREejV6WkpyZklKdGVyMHhMdFkrS0duSTNTRmJUSDlDZG4yaWhkUDBi?=
 =?utf-8?B?c2pEY3RzakFQMG8yTXplRkdMSjJHYWFiWkxvOFpva2VQV3BCcXJEbHdNUFpT?=
 =?utf-8?B?VXl4Rk12ZlZvRFhLVWEwRDVUOEhZMTczV0RRSklkcHBGMU5vc2dKTTNGYmZo?=
 =?utf-8?B?VFN5UHZ1MkwwTjgrbW1nS2lvdlAza3RnNUYzNkNwcWpENlVGOU5tUHV3cDRO?=
 =?utf-8?B?a2tUenF6NUl2d05kSkQwdUlsMW9zbVY3cVFFeW0xTXFtRUREOFQyZ0M0ZWRN?=
 =?utf-8?B?RUdYQ3FVR2czSDdrVStrWGRMU1JOZjkrdU4vZnY2RHQ1dVRuYkZsSmIwaklY?=
 =?utf-8?B?SlZQMmdxL3ZCRFB4R1BzQnBRNWFxbVZVeUFoM3JpNFJTbXlINUtNSFlEVnNU?=
 =?utf-8?B?Yi90ZEhrM09yRjRrNDFTOUZYSDRVa2ZWdWY3bXNubDMvZ2VZNWZCMmRJNTNq?=
 =?utf-8?B?VEZNQWRlSERIc1NmNy9SRVBaeWNOeFdodFdJZnFNdExCK2ExQUVsZldITmJ6?=
 =?utf-8?B?c1BJOW85WlZrWjgrSEc2ZmpCMWlwcVBQNUlhUTVwV3luN0MvY3RKNGtkV0pt?=
 =?utf-8?B?T3ZTVmM0U2hnQng1cnZHNW1rT0QwZCtFMXJrRnVpY2dwQURqM0U2RFZCOGdo?=
 =?utf-8?B?YnZtZmVldUl2MkxvdWVLMHlLQ0JUdzV4bHc5OThMbExiSHQzUTA3OWIxT0o5?=
 =?utf-8?B?bWU1RlNQY1pVL3pmcnBta3ZsaG1UbTBzdnVacFZzcHNWN0JHN3JFM29tcXlV?=
 =?utf-8?B?TTE5N3B2cm1Hak5ydjFrWlY3OWx1ZjhibkNoRVN6aHZ1ZTByclZZSUJXbWZC?=
 =?utf-8?B?VlJscE9PUkZWWmtubHBqcE1FTEhPUlpCd0NBcmFrUHozclY5clVIWWR2Sys4?=
 =?utf-8?B?a1cyQi9FVnJNVHVtUkluajRFZDRHMXg0cXhtb1VRSWY1WGhlbFR1TkY1Smly?=
 =?utf-8?B?L3pkN1NSUzZvakdTWGhHemdhL2l4cGw1MU5JcmEwMnF2UzJIRk5WZU8vZkNa?=
 =?utf-8?Q?P3QVOe?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2laK3dZUk1QeVpUN3QzSUkrZ1RlQzJuQkduYmppaWNCMXZ6Q3JvZ0Evc2RH?=
 =?utf-8?B?K2ZrdWl1bDg0K2Q1a1hRTDA5Vm1ldUZMaWswWlZOYnZpbVlCbmZNbkJVWlcx?=
 =?utf-8?B?Mjd4T3FvUFQ0ZG8zdFRCek9zaUdmdzJ3M0kyWlNLRGw3aCtpckRNRWp5d3dQ?=
 =?utf-8?B?SitvWVVUUld6QjZMS05SclIrLzRpT0p3ZTQwejlvbW45TzFSMjEzOTFWM0lF?=
 =?utf-8?B?MjNkYm53SjJ6eVY5SkdrTzdtS09iRXhDbHhCUmNRTkJRdmRUNm1lU0ErWmZP?=
 =?utf-8?B?eVhOV2VLTElMMGp0eGJ1bGZDOXdwSHdtVm8yZy9DMDVOK0hoaDZNZ3hBMFU1?=
 =?utf-8?B?b3JMSkh0TCtKQjF5b2JiU2lKeTNxMXlvZ2FOZmppbW9OVTdQNjJVUTVQbWtm?=
 =?utf-8?B?TVlINFk0VFFYZ0cxOHBFRDVXcFJmSStCNks4VFhNQ2ovQm1WVEVtU3h1Y2Nw?=
 =?utf-8?B?THR2Z2JlTS91eEs5Rm1SbVFadVdBWjR4T1dkWE5sY3h2ay9VTnJwaVpqa3Q5?=
 =?utf-8?B?YVZxM3IyOFRMRHNXL2RuRGJYcGY1djk3MVN2SVR6bjl3QVBkZ0FWNUFqK0s3?=
 =?utf-8?B?R0E4UitYK0k2c3hrVXFUZlRZUHVWNldabnJDUFBuS21Vc0xDcG5vMHUzalgv?=
 =?utf-8?B?ZzFRRE5peW8rWFFpTXF5NGx3a085VHc0ZEFnS1dqMStNRjBLOE4wR2lmSkU0?=
 =?utf-8?B?RCt6WUUrNWllMDlMRnY2SHBGTlFGS3NVcXpaaUVKV3BsZ21tMGJybDdkazU0?=
 =?utf-8?B?MDBhNW5TQlJoUTVRZFdPU0NlN3lHZkpiWGprSzljMkg2a01tTW81M05OYTFF?=
 =?utf-8?B?MEhQOHk3Nzg2clZOTkJqNmJrUko1SXVjK1BNbU9qRXgwTzI3VDk4N0wzNks5?=
 =?utf-8?B?bnRlWWhWT3VxeUtld251WlFDc2lSclVwSXd1dGQ5TEhUMjZiajNqRCszZVVy?=
 =?utf-8?B?OTBNTWsvR3FJTXZNV2RYdlhRdlFRWVRkWmo5SS9hTHluSXZoU2RhSWdrM0Mr?=
 =?utf-8?B?TndMbXBqL1VPVUdNMWtDMHFkUkpzbXIyVFBpbUFseFh6d3VxNnU4UmxJZ1A5?=
 =?utf-8?B?ZHRuRGVMeldHTHNrOEh4RGF5dmRtZ2V5azhCcUc3anNTcG5JQUlJZjF2MXY2?=
 =?utf-8?B?SDkzQkNHSmVqay9xRkRUM2RzbStyQW9ZK29sTDMrQ08rMDQ4aU5UUy9VS0w3?=
 =?utf-8?B?d21YOXBYT2liMUxWdVFId2xQR1htdmcvZ0ZUZFRlTWZTMjAvYTdDcHV0K0Jp?=
 =?utf-8?B?eTVEb0tmQTYvMTRXbjJONjhBOE81RHQ2NFVLdDc4a1d1Rlc0L0N2RHduMU9H?=
 =?utf-8?B?Mmd1VE10SGRRTE1za1NxdjJ2SDRmcHBjWlA1eWc3T1V1N21TUUFYK1Y1Q05R?=
 =?utf-8?B?U0tpZ3RMUCtSc0FZWjFyRGlKamxoYkdDbk9WR2FNMjZNcGc0UHE2MURnR244?=
 =?utf-8?B?a0p5WmpzVFJVbE9ta1d2RnBPL3JlSjRwRElGZEE2OFVNSmV1d3dpTHd4RzdB?=
 =?utf-8?B?blhKSFU5UVo4bXpsSGEzOHFzVUlFS08zeTZOclpkVklzeStrc1NtZkVodWNp?=
 =?utf-8?B?UVY5d0JyUlRwWXkxc2s4N05MaElaYjVKTy9vZ0dvc2NsSmRmWGpWU2l0Ym5r?=
 =?utf-8?B?OXR2bTNkQk5jNjAzMndRbDVuVlZZeGpuWmhpbC9vbW9EcVVPYVRualpwUGtk?=
 =?utf-8?B?UzJnOFVmZWcrL1BpYzdzTHQvM3RzUHlWWktvaDE3dmI4bGFXSFhLSGxFZHpW?=
 =?utf-8?B?UkNmVmxFUG5YMGl0UXgwbUtlTzc0M3NpUVdPU1RBZkFPLzdqcTBmbkRBUFp4?=
 =?utf-8?B?QXpSMWNIUFN4RFNpUHAxUjI1MUhiWG5ac2cva2FrODBVb3ZLOTJrZWFvOU1Z?=
 =?utf-8?B?NjFQVUdhQXJlSk15UEdnc3d0aEJac25CbXpEdVVuV1M0elFSaFdDNXc2RUh0?=
 =?utf-8?B?MWswVjBxSXV5bnJMeko3eTRBQktoYktjZ0RveUZBd1pmWWV1cmp6aGxXMGdO?=
 =?utf-8?B?a0VSYUg1Qi9ycHJYM0hERk5vVk1WQTVDZ3VvWWI4aFFBZ0xPNXI3L01IZ2g0?=
 =?utf-8?B?YjJ3Wk1GMWo3TmVXUnlVczQ4TERJRXVIbTlxSFhsNmVMdUpwU0J4Q0x6blBl?=
 =?utf-8?B?dzAyUWQ4d2FrNlFhaG43RXFJUnVCaVFwTjUxc3JiYjVnZkpKdklyNXNidVBy?=
 =?utf-8?B?aWxSZGZjaWh6VE5oUVJCc3MxNTVnTDc5eTBTb1JJUjk0LzE3NHMyS2hCMjNz?=
 =?utf-8?B?MzJ5SG1wRThZLzZkQ3UydVk3cmZRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <132DDC47B337E6449451CA220F1EB195@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e24efef0-93ae-49b8-2f58-08de37b96973
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 06:57:41.0307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: whDdP/ap5tAOIhrnT71gL6nAsSZfygx8OmGQpYF683IQJTYCoPQWygxI0vAI3f4P0t5HUa0NQ9lXvYTuQ7wbUQhA6OB/kak4xl4mUbKQyvg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7168
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

T24gV2VkLCAyMDI1LTEyLTEwIGF0IDA4OjQyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDEwLCAyMDI1IGF0IDA2OjIzOjM0QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjUtMTItMDkgYXQgMjA6MjYgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFRodSwgRGVjIDA0LCAyMDI1IGF0IDA5OjA3OjE1
QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gVGhpcyBwYXRjaCBzZXQg
Y29udGFpbnMgZml4ZXMgZm9yIFNlbGVjdGl2ZSBGZXRjaCBhc3luYyBmbGlwDQo+ID4gPiA+IHNl
cXVlbmNlcy4gT24gYXN5bmMgZmxpcCBzZWxlY3RpdmUgZmV0Y2ggaXMgY2hvb3NpbmcgZnVsbCBm
cmFtZQ0KPiA+ID4gPiB1cGRhdGUuIEFsc28gc3Vic2VxdWVudCBmbGlwL3VwZGF0ZSBpcyBzdGls
bCB1c2luZyBmdWxsIGZyYW1lDQo+ID4gPiA+IHVwZGF0ZQ0KPiA+ID4gPiB0byBlbnN1cmUgcGxh
bmUgd2l0aCBwZW5kaW5nIGFzeW5jIGZsaXAgaXMgbm90IHRha2VuIGluIHRvDQo+ID4gPiA+IHNl
bGVjdGl2ZQ0KPiA+ID4gPiBmZXRjaC91cGRhdGUuDQo+ID4gPiA+IA0KPiA+ID4gPiB2NDoNCj4g
PiA+ID4gwqAgLSByZXdvcmsgaWYtZWxzZSBpZiB0byBpZi1pZg0KPiA+ID4gPiDCoCAtIGFkZGVk
IGNvbW1lbnQgdXBkYXRlZA0KPiA+ID4gPiDCoCAtIGNoZWNrIGNydGNfc3RhdGUtPmFzeW5jX2Zs
aXBfcGxhbmVzIGluDQo+ID4gPiA+IMKgwqDCoCBwc3IyX3NlbF9mZXRjaF9waXBlX3N0YXRlX3N1
cHBvcnRlZA0KPiA+ID4gPiB2MzoNCj4gPiA+ID4gwqAgLSByZWJhc2UNCj4gPiA+ID4gwqAgLSBm
aXggb2xkX2NydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0DQo+ID4gPiA+IMKgIC0gZml4
IHVzaW5nIGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUNCj4gPiA+ID4gdjI6DQo+ID4g
PiA+IMKgIC0gY2hlY2sgYWxzbyBjcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyBpbg0KPiA+
ID4gPiDCoMKgwqAgcHNyMl9zZWxfZmV0Y2hfcGxhbmVfc3RhdGVfc3VwcG9ydGVkDQo+ID4gPiA+
IA0KPiA+ID4gPiBKb3VuaSBIw7ZnYW5kZXIgKDMpOg0KPiA+ID4gPiDCoCBkcm0vaTkxNS9wc3I6
IFNldCBwbGFuZSBpZCBiaXQgaW4gY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPmFzeW5jX2ZsaXBfcGxh
bmVzDQo+ID4gPiA+IGZvcg0KPiA+ID4gPiDCoMKgwqAgUFNSDQo+ID4gPiA+IMKgIGRybS9pOTE1
L3BzcjogUGVyZm9ybSBmdWxsIGZyYW1lIHVwZGF0ZSBvbiBhc3luYyBmbGlwDQo+ID4gPiA+IMKg
IGRybS9pOTE1L3BzcjogQWxsb3cgYXN5bmMgZmxpcCB3aGVuIFNlbGVjdGl2ZSBGZXRjaCBlbmFi
bGVkDQo+ID4gPiANCj4gPiA+IFNlcmllcyBpcw0KPiA+ID4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFdo
ZW4gdGVzdGluZyB0aGlzIEkgc2F3IHRoYXQgd2UgZ2V0IHN0dWNrIGludG8gZnVsbCBmcmFtZSBt
b2RlDQo+ID4gPiBhbGwgdGhlIHRpbWUuIEJ1dCB0aGF0IHNlZW1zIHRvIGJlIGEgcHJlLWV4aXN0
aW5nIGlzc3VlcyBjYXVzZWQNCj4gPiA+IGJ5IHRoZSBicm9rZW4gc2VsZWN0aXZlIGZldGNoIGFy
ZWEgY2FsY3VsYXRpb24gY29kZS4gSSBzdXBwb3NlDQo+ID4gPiBub3cgdGhhdCBJIGhhdmUgYSBs
YXB0b3Agd2l0aCBhIFBTUjIgcGFuZWwgSSBtaWdodCBoYXZlIHRvIGRpZw0KPiA+ID4gb3V0DQo+
ID4gPiB0aGF0IGJyYW5jaCBvZiBtaW5lIHdoZXJlIEkgYXR0ZW1wdGVkIHRvIHJld3JpdGUgdGhl
IHdob2lsZSB0aGluZw0KPiA+ID4gYW5kIGZpZ3VyZSBvdXQgd2hhdCB3YXMgd3Jvbmcgd2l0aCBp
dC4uLg0KPiA+ID4gDQo+ID4gDQo+ID4gV2hhdCBpcyB0aGUgU1cgc2V0dXAgeW91IGFyZSB1c2lu
ZyBhbmQgd2hhdCBraW5kIG9mIHRlc3RpbmcgeW91IGFyZQ0KPiA+IGRvaW5nPyBDb3VsZCBpdCBi
ZSByZWxhdGVkIHRvIGZyb250YnVmZmVyIHRyYWNraW5nPw0KPiANCj4gSSBqdXN0IGhhdmUgWG9y
ZyBydW5uaW5nIHcvbyBhIGNvbXBvc2l0b3IgYW5kIHRoZW4gcnVubmluZw0KPiAndmJsYW5rX21v
ZGU9MCBnbHhnZWFycyAtZnVsbHNjcmVlbicuIFRoZSBsYXN0IHRlc3RzIHdlcmUgZG9uZQ0KPiB1
c2luZyBtYXRlL21hcmNvIGFzIHRoZSB3aW5kb3cgbWFuYWdlciwgYnV0IEkgc3VwcG9zZSBpdCBt
aWdodCBiZQ0KPiByZXByb2R1Y2libGUgdy9vIGFueSB3aW5kb3cgbWFuYWdlciBhcyB3ZWxsLg0K
PiANCj4gSSB3YXMgbW9uaXRvcmluZyB0aGUgZnVsbCB2cy4gcGFydGlhbCB1cGRhdGUgc3RhdGUg
YnkganVzdCBwb2xsaW5nDQo+IHRoZSBQU1JfTUFOX1RSQUNLX0NUTCAob3Igd2hhdGV2ZXIgaXQn
cyBjYWxsZWQpIHJlZ2lzdGVyLiBNaWdodA0KPiBhY3R1YWxseSBiZSBhIGRlY2VudCBpZGVhIHRv
IGFkZCBzb21ldGhpbmcgaW50byB0aGUgZGVidWZzIHN0YXR1cw0KPiBmaWxlIGZvciB0aGF0LCBn
aXZlbiB0aGF0IHRoZSByZWdpc3RlciBsYXlvdXQgaXMgcmF0aGVyIHBsYXRmb3JtDQo+IHNwZWNp
ZmljLg0KPiANCj4gSSBzcHJpbmtsZWQgYSBmZXcgZGVidWdzIGluIHRoZSBkcml2ZXIgYW5kIGl0
IGdlbmVyYWxseSBzZWVtZWQgdG8gZW5kDQo+IHVwIGluIHRoZSAnaWYgKGNydGNfc3RhdGUtPnBz
cjJfc3VfYXJlYS55MSA9PSAtMSkgLT4gZnVsbF91cGRhdGUnDQo+IGNhc2UsIHdoaWNoIGRvZXNu
J3QgcmVhbGx5IHN1cnByaXNlIGdpdmVuIHRoYXQgdGhlIGNvZGUgaXMgdmVyeQ0KPiBjb25mdXNl
ZCBhYm91dCBjb29yZGluYXRlIHNwYWNlcy4NCg0KVGhhbmsgeW91IGZvciB0aGUgZGVzY3JpcHRp
b24uIEkgd2lsbCB0cnkgdG8gcmVwcm9kdWNlLiBXaGF0IGRvZXMgdGhhdA0KdmJsYW5rX21vZGU9
MD8NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo=
