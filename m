Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WPFDH1AUVWr5jgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 18:37:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D8774DA9B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 18:37:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TR9tv3bU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C90E010EA68;
	Mon, 13 Jul 2026 16:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C7B10EA60;
 Mon, 13 Jul 2026 16:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783960652; x=1815496652;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wh3YqN5lto+gyCSFAoW06FAki6qFpppi33qJUwLz0jw=;
 b=TR9tv3bUdgKU4AMQqNKMKSSaUPAk9RPQxBgWvKQ1MG1SL/+sZmmMvuFV
 QhYrk+eJe1ZZufjsvI4tloxBTFCUWb2gyx3DbpDRnvZuPt//P+oVbKGG5
 YJIGpf8sMOzLv2IliMw82N85x+8GvG2Qpro1uKqhGKm548ZSsBkf0XXdq
 RdqjBOePh33MJu2EEfxbPz1eqkzQDBCLcW1Xheqp2acRMJP52zqdxedVS
 glOjXIVDXXI860WKVIEqfXFJz+TQuMyA6Zepw9HvJmwEMgXdITr5pI3J/
 7azdZVeE10E/Dk1vzaUUdEJgeOKzRyUOkIrHzwDhsyaGw5+B2/A4E9bpJ Q==;
X-CSE-ConnectionGUID: C1qyk6YAQ5uUUmUut4q3cA==
X-CSE-MsgGUID: sJ/fqUgATZqL0IYUIfhrWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88253226"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88253226"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 09:37:31 -0700
X-CSE-ConnectionGUID: wcDEjKioRQC9WSc23oL/YA==
X-CSE-MsgGUID: sTVQ62CVS0SZh3QpQrI/Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="251649010"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 09:37:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 09:37:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 09:37:30 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 09:37:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mw3ZbIHTuOLB7USlSHkCk5bFgsCa1AtshoadPZuv5OJOiEMoY37CAqsPf14Y6oBfKE4hkP4DBGe6KvABOJShPbt+gNYBNyRxMOlq/pLsIsrTuD74RWnB0Xv3i7tTtOIbfkd6FWtSuRO3aOG9PsQMzETihTKR9YKD87PHCRuzfuO7yA7/4icfJVi356k9abLF+RyYsEO3EhYLw+nR6n32PLDPunIMA2pgxcb0MlVSRldGTh8wCdW0eEi7PHhdzgl9SVlIlp55stAlanDKKMyUxbdu6Dto01Me4a+VK9p6qiVe2woO4uaPyUJ+RzmCiiBBdvW8QpKhtI7++6ERg3n85Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wh3YqN5lto+gyCSFAoW06FAki6qFpppi33qJUwLz0jw=;
 b=Wyzwp3LS+t3dsB4XkFxReDdJYG/A7VH2w7GmXkJHPQVfwI2KtclrIlT2uycywkqXtAnn5gKn2m00aydV+yIKV1fPIlvPlyd1R95krjp67+4Ak52U9V4dSirSiqDuBgT7ucIk4HU2xJo3dePWIKOiM9zkvPOsw+wHWqoC0crhVk44NtUBu1HkGCJrdFQyWt+HM7CJN9DnFoUSGEKg2uCCpfcPpVQ1wpL26W8qAPSquHWxz6wdI3VLr76F1SJTZmcgHg9KgyYk/8y2QzVUdG2rMY7Gxm6fAqXBisKODkYrcxbdfOXsBcyNyXpkbU/giKggS+IKVtOGxw73YWq5cRsybw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA4PR11MB9058.namprd11.prod.outlook.com (2603:10b6:208:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 16:37:27 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0181.008; Mon, 13 Jul 2026
 16:37:27 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v2 05/11] drm/i915/vrr: Enable/Disable CMRR based on
 enable/disable preconditions
Thread-Topic: [PATCH v2 05/11] drm/i915/vrr: Enable/Disable CMRR based on
 enable/disable preconditions
Thread-Index: AQHc/Z/snbknKdM0TkO3tuDH100ssbZggo6AgAtNgIA=
Date: Mon, 13 Jul 2026 16:37:27 +0000
Message-ID: <IA1PR11MB634866CDEBDAF48BDE537073B2FA2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-6-mitulkumar.ajitkumar.golani@intel.com>
 <c82ce0f5-bb02-4d7e-9857-949a25e05a74@intel.com>
In-Reply-To: <c82ce0f5-bb02-4d7e-9857-949a25e05a74@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA4PR11MB9058:EE_
x-ms-office365-filtering-correlation-id: fab14328-f5de-4917-d455-08dee0fd067d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|23010399003|18002099003|22082099003|11063799006|5023799004|4143699003|56012099006|38070700021;
x-microsoft-antispam-message-info: WDxmwd2VI6IOpFE7MueynhJ4H3CXcaiVfEbfh2QdzD47jVcq6UVPu1C/Nwq/umWARbS6Ew7EuwtQbV2mzohsBl1N0XvCb93seAZRBYRVMAGlcxqcHDZMdzFNzOiapJKG5aOtLRC4wH/0s7+dTA6fjbD8F/bAkzltGF6UYIPznC0iw2C3SBXYhBXrRacslhQcxz7w3nnYoEAcWN5CBnhoZgRttfja4/LFvP1nuVDIu/AXAF1ucNYQMkgJQSXCc0vEMturfmzBuFVAJ4NZfgKN1qt9dlhe8QrOCDK6wx79BiBeJvz32VeI/idkS/wO2Hiz3gGwCuQXRpASKB1RexczEKi3OtkNzvZiDGpn0PEiCHns7Mm4k3RrW2rfRHuuVugpab6+WaxpLov6OC2eM0ThSqabR3t6Dgq9ktu23HLZcbQQs9h1a8VURQFtea+EkOQ+tr2Bpu4WqRBVQ68JIrXGWdf8EaBCPEebBlWcZmgntXPMU9Za0B+dV++BUrPapTsEAiyilA7+TdLl6NDhTyVQKd2WAe88Wr4dEKlkbXB2VEiPc1OFBqCRjG7LiJcOj03E9xQf0h2Wiv1LmIZLKqmrZX+6Um2XmPZf73USqvdUIlzCfx5N7YMoDoukb4MgO6XweageLn09ZP083so0knjli12HinhsHgSLVRljQ17CR6pCcjVJG4c56oW3sxgUnBSRBNpsjOspJFBmDpmTp5mMhVyZuo9ituJtpUKg97JzecY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(23010399003)(18002099003)(22082099003)(11063799006)(5023799004)(4143699003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlhqdjBEZnJyYjRKdlR4YVhXQlJwakVXd29uWVYvZ3duSU5EVm9CSSt2bVlx?=
 =?utf-8?B?dGUxSy9xa2hTZ0RaNW9ML0JLdVFjalRyOWtJUkZwdmJKejhXVlJWSDNocm5B?=
 =?utf-8?B?MzBDckJjeE02NDNsN3ZURXBIVklFdFl1bFI1YWNudmg4U015TWtZVW1DNVBq?=
 =?utf-8?B?eFZFclQzd2tFOU9tekY3dVpOY0FTaHd0RzlvaXhlMVlHTW9NL0RZaEpDS0Vn?=
 =?utf-8?B?NTdLWGVvSUF0UUNPYjYrcit3WXg1Z3dwWHRtRVRDQW5aMWJ4RkxvVUNHWGlR?=
 =?utf-8?B?UTljNm9BZUtqL3JDRXFPeEsreFJ3bS9qQjJNYWZKTW1PaldwZjlLVVpKSTlO?=
 =?utf-8?B?NXpoMy9qYXUwcjNaaVYvaHV1cVJuMFFZdlEzQWtJcW16dGpsTWovNVZ2MHc2?=
 =?utf-8?B?YWkvd095Z2hIVlVkblNwM2hjenVRZkdtZUlBckcwTFJjYkJPalQ0clVTOG1S?=
 =?utf-8?B?WDI2UzM2WmFqZ1Q5dk9CRi9jVXpOMnN5bGpDVFBSSy9yUkV1R2dnT2ZoSy9q?=
 =?utf-8?B?VDB5Mjd2bllSeVdNbjRucEJLeCtqZXFnejlITVJlT3k0ZWE3RGRUanBsNWNx?=
 =?utf-8?B?V1JXT2ltWk1VUDVQOHNNSUJ0YVAzY0hMd2w5Z3VFMUdsb3NsMlFKem1SeEdi?=
 =?utf-8?B?dzluNi9aTXFiaHBtb1BZNGNFbGhjNWh4dEVtS244ZmJxcTN3b3hjczJaaHlJ?=
 =?utf-8?B?ZFhYK2sza0liejZ0SE9nUW9vbWQ1alVuMklBeU05ekRmZ0huZExITVliODk2?=
 =?utf-8?B?d1cwL1NxWGZGemZIMHBGM0tvbU1wWWRKaGxBUkZaSzVXVlZHM1ArWDR5TEwz?=
 =?utf-8?B?ZS9KZmZCVkJTd1ozMEM2b0JuZTRGTU5SL05Bd1ZZbjlWNEZRWTJSbnBqZSta?=
 =?utf-8?B?NFZBZlU3L1V6cGIwL0xVeXYyamZhVjNBUW5ZTEM3bmMwYnc3VHcwcG9XV0cy?=
 =?utf-8?B?SU13VGI0Mjl0SFg1YWZ5LzlUOXc5LzY5SEtqVlJ4TWV5WFVBUHBtc2VBMyt2?=
 =?utf-8?B?VkhEaDIwbndmT0E5OEwwczBlakY1MmVIMVgzWWh6eW8xVVUwY2VqVzZKMkdZ?=
 =?utf-8?B?R3pFcUN6Z095YlFRSVJjUTFwVnE3OFlUQU9UVXJEVGVTVFVEdTM1eXNlcUsw?=
 =?utf-8?B?Y0VqOUpkdzFndTBxRkp4UEw5WURPSFIrRnJZOU5NOXY2bUxlZWxiaFZOc3l4?=
 =?utf-8?B?c25ySG9xM012amZiK0ttNmFDY0E2V2RDcVJleVVjVnZQbWY4QUJTQ1p0aDBM?=
 =?utf-8?B?KzVrRXpjUFB3bHZUQjd6TkdrRDk3aG83aTBJK0pnMVVkQlkwYXVnZmQxbzFs?=
 =?utf-8?B?OVBqR1RWd29CMW5jUWtXVTBDcXNvYWZnQ0p5UUhSMGhtRTBFWWtnTncwZWYv?=
 =?utf-8?B?VURtdVdxUUV3RjZwaHFpM1gxVjVZSUhKTlduUTBkczFFT2F2N2R2MHRlNmth?=
 =?utf-8?B?ZmxrQzM5Ti9GbTcweGR6M0U1UjVvK3F5bm5SaFAvb3RQdnVEQmV4WlJMc1dM?=
 =?utf-8?B?cVBTQmc2N1piKzZWTDFVbCtkNjJTMHU2cVoza0xxRElRT1RPa2oxUnhaQWUw?=
 =?utf-8?B?SXIwdkdienFnYXV1b0JFdHRDaEZwdEVPZXE2NjU2SkxBRisvWGRpdzNub21P?=
 =?utf-8?B?dmVuYzdVQVhVYXFldmNwVGhxdVJtNHhNd1ZreWdTK2tCaWNqd3BHUGV1YlNu?=
 =?utf-8?B?VzJ4V3RROEtEMDV3RHVWVHBFMktKMVhuTTJ6OTZUYVhHZUJWaGtyVitzMlpw?=
 =?utf-8?B?MExRQXNUZk45M2wrQUNSSjhUVlZGQTNscE9qWjZkMTNFWHN6blFCYys2UUJr?=
 =?utf-8?B?SkI2cnpCMGt4eVBNM1paMXdwd1FUQ0pLUGxOa1RZQ0N6cTR6Zlo1SDE0K3Iy?=
 =?utf-8?B?N1MrVG1wOGg1ZlRMMUVPSFNzSjk2SGpTY051TSt5aEpwdWQwbnRDSGxwaVVZ?=
 =?utf-8?B?aWplM2gyejRxMnZtcDdYRERwbG9acU15d0NBeGxnWlQ2TFJjNXZJeVpjMk81?=
 =?utf-8?B?YXN0aTR5VXZRMk9ySkloRWI5SHQyTGxoMEovUXc1aHh1U2U5ZllzNHlaVHpZ?=
 =?utf-8?B?YnIxREV4cE1WMkZsVm1hbUlFSlFvRzN1blE5d3cwUm5obEMvQnF1NjhSY1lU?=
 =?utf-8?B?NHczTS8zSjczTDFORW9UcDhQZnNLVzdRTk9aell4WW9EelFQVVpjdHkxNUFV?=
 =?utf-8?B?aFJpMEtBZFJuVHBnMzI2cWVXam5TakNkRm1lRlZ5SmNtS1k2WFFaV2duQVlm?=
 =?utf-8?B?TWpJcHNiR1NxMkEzMUFEdm8wVTdTc3RVL1FqZDJuaTQzS0JWVWwyUmdGSStH?=
 =?utf-8?B?VS9CWnU4TmxNWVppRjBUdmMvTXhwTEY2RW1YQ1hXUSt1WTEyL1FKRHJyaVI3?=
 =?utf-8?Q?lt1MTQ/qMA8ZoeV66fzuYrgbnQim4vAXfrnTaRhNWheNN?=
x-ms-exchange-antispam-messagedata-1: cdyYhiiEa82BrKRkI1UTludhfDOMp0tjekqeD6Bk5cokbQF9oY2c1yw9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TTi+7hzK22xc9Jj4tvv6L6QIUs8D41U4W3eTSBvBywvCujpJcN/mO8Y70eD/l3qRG67C/O798YCj0LAtQUIqODN5VciO0tpfqSAg7Wt4NBS3oJNHBKjSo/Veff5OgLTQ6zCkvkW4Ahk/GtfnHl0R0Ba9JsnlBOxlwuXF806aSSEr/S66W+K2LpaTky3QpPRKsuoLs/ryMArM/n7r1cBYmurpKYKxe+a89Oi2/2S/K8DMy3RHVZJWEgHl/a0D2GfBAFfTD76nOCA/ssgOxe5K2mWDmemMMQEy75eqs+Gs59VFa4tqabfQbSX0/AN0+5suFCEOleu8mca7hd/N5rUifg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fab14328-f5de-4917-d455-08dee0fd067d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 16:37:27.3276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lLEDo67nCyFb6ZAqBGfw20nsAJ2RiwpfNsmRndkNLFGtFbFKPIa+ZlYJE9Uw4Ir76TenzkoIuNajlCLiZaHenZHo3SIYrBo79s3TJg+Dd0rpBA4WoeNjoNT0LhkQl6vN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9058
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:dkim,IA1PR11MB6348.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3D8774DA9B

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogMDYgSnVs
eSAyMDI2IDE3OjMwDQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1
bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOYXV0aXlh
bCwgQW5raXQgSw0KPiA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjIgMDUvMTFdIGRybS9pOTE1L3ZycjogRW5hYmxlL0Rpc2FibGUgQ01SUiBiYXNl
ZCBvbg0KPiBlbmFibGUvZGlzYWJsZSBwcmVjb25kaXRpb25zDQo+IA0KPiANCj4gDQo+IE9uIDYv
MTYvMjAyNiA4OjEyIFBNLCBNaXR1bCBHb2xhbmkgd3JvdGU6DQo+ID4gRW5hYmxlIG9yIGRpc2Fi
bGUgQ01SUiBiYXNlZCBvbiBpdCBpcyBiZWluZyBjb21wdXRlZCBhbmQgc2V0IG9mDQo+ID4gcHJl
Y29uZGl0aW9ucy4gU2hvdWxkIGJlIGVuYWJsZWQgd2hlbiBkdWVpbmcgYWRhcHRpdmUgbW9kZSBh
cyB3ZWxsIGFzDQo+ID4gY29uZGl0aW9ucyB3aGljaCBzZXRzIGNtcnIuZW5hYmxlIGdldHMgc2V0
IHNpbWlsYXJseSB0byBkaXNhYmxlIGNhc2UuDQo+ID4gQWxzbyBzZXBhcmF0ZSBvdXQgcmVnaXN0
ZXIgd3JpdGVzIGZvciBib3RoIGVuYWJsZSBhbmQgZGlzYWJsZSBjYXNlLg0KPiA+DQo+IA0KPiBU
aGUgaW50ZW50aW9uIG9mIHRoaXMgcGF0Y2ggaXMgdW5jbGVhciB0byBtZS4NCg0KWW91J3JlIHJp
Z2h0IHRoYXQgdGhlIGludGVudCB3YXMgbXVkZGxlZCwgdGhhbmtzLiBJJ3ZlIHJld29ya2VkIHRo
ZSBwYXRjaCB0byBiZSBtdWNoIHNpbXBsZXIsIHdpbGwgZmxvYXQgd2l0aCBuZXh0IHJldmlzaW9u
Lg0KDQo+IA0KPiA+IFJlbW92ZSBWUlJfQ1RMX0NNUlJfRU5BQkxFIHdyaXRlIGluIHRoZSBjdXJy
ZW50IHBhdGgsIGFkZCB0aGUgc2FtZQ0KPiA+IHdoZW4gYWN0dWFsbHkgQ01SUiBpcyBlbmFibGVk
Lg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWl0dWwgR29sYW5pIDxtaXR1bGt1bWFyLmFqaXRr
dW1hci5nb2xhbmlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuYyB8IDgxICsrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDc2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+IGlu
ZGV4IDU2NzhjM2E4Njc5Ni4uYzk3OTk1MGQzMmNiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gQEAgLTM0LDYgKzM0LDQzIEBADQo+ID4g
ICAjZGVmaW5lIERDQl9DT1JSRUNUSU9OX0FHR1JFU1NJVkVORVNTCTEwMDAgLyogbXMgw5cgMTAw
OyAxMA0KPiBtcyAqLw0KPiA+ICAgI2RlZmluZSBEQ0JfQkxBTktfVEFSR0VUCQk1MA0KPiA+DQo+
ID4gKyNkZWZpbmUgaXNfZW5hYmxpbmcoZmVhdHVyZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRj
X3N0YXRlKSBcDQo+ID4gKwkoKCEob2xkX2NydGNfc3RhdGUpLT5mZWF0dXJlIHx8DQo+IGludGVs
X2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpICYmIFwNCj4gPiArCSAobmV3X2Ny
dGNfc3RhdGUpLT5mZWF0dXJlKQ0KPiA+ICsjZGVmaW5lIGlzX2Rpc2FibGluZyhmZWF0dXJlLCBv
bGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpIFwNCj4gPiArCSgob2xkX2NydGNfc3RhdGUp
LT5mZWF0dXJlICYmIFwNCj4gPiArCSAoIShuZXdfY3J0Y19zdGF0ZSktPmZlYXR1cmUgfHwNCj4g
PiAraW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkpDQo+ID4gKw0KPiA+
ICtzdGF0aWMgYm9vbCBpbnRlbF9jcnRjX2NtcnJfZW5hYmxpbmcoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gKwkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0K
PiA+ICt7DQo+ID4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUgPQ0KPiA+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMp
Ow0KPiA+ICsJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlID0N
Cj4gPiArCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4g
PiArDQo+ID4gKwlpZiAoIW5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ID4gKwkJcmV0dXJu
IGZhbHNlOw0KPiA+ICsNCj4gPiArCXJldHVybiBpc19lbmFibGluZyhjbXJyLmVuYWJsZSwgb2xk
X2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKSB8fA0KPiA+ICsJCShuZXdfY3J0Y19zdGF0ZS0+
Y21yci5lbmFibGUpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgYm9vbCBpbnRlbF9jcnRj
X2NtcnJfZGlzYWJsaW5nKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICsJ
CQkJICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ID4gK3sNCj4gPiArCWNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9DQo+ID4gKwkJaW50ZWxfYXRv
bWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gKwljb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiA+ICsJCWludGVsX2F0b21pY19n
ZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ICsNCj4gPiArCWlmICghbmV3X2Ny
dGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJ
cmV0dXJuIGlzX2Rpc2FibGluZyhjbXJyLmVuYWJsZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRj
X3N0YXRlKSB8fA0KPiA+ICsJCQkob2xkX2NydGNfc3RhdGUtPmNtcnIuZW5hYmxlKTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiAgIGJvb2wgaW50ZWxfdnJyX2lzX2NhcGFibGUoc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOyBAQA0KPiA+IC04MzEsNiAr
ODY4LDM0IEBAIHN0YXRpYyB2b2lkIGludGVsX3Zycl9zZXRfdnJyX3RpbWluZ3MoY29uc3Qgc3Ry
dWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gICAJCSAgICAgICBpbnRl
bF92cnJfaHdfZmxpcGxpbmUoY3J0Y19zdGF0ZSkgLSAxKTsNCj4gPiAgIH0NCj4gPg0KPiA+ICtz
dGF0aWMgdm9pZA0KPiA+ICtpbnRlbF92cnJfZW5hYmxlX2NtcnIoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gPiArCWVudW0gdHJhbnNj
b2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ICsN
Cj4gPiArCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX0NNUlJfTV9ISShkaXNwbGF5LCBj
cHVfdHJhbnNjb2RlciksDQo+ID4gKwkJICAgICAgIHVwcGVyXzMyX2JpdHMoY3J0Y19zdGF0ZS0+
Y21yci5jbXJyX20pKTsNCj4gPiArCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX0NNUlJf
TV9MTyhkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gKwkJICAgICAgIGxvd2VyXzMyX2Jp
dHMoY3J0Y19zdGF0ZS0+Y21yci5jbXJyX20pKTsNCj4gPiArCWludGVsX2RlX3dyaXRlKGRpc3Bs
YXksIFRSQU5TX0NNUlJfTl9ISShkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gKwkJICAg
ICAgIHVwcGVyXzMyX2JpdHMoY3J0Y19zdGF0ZS0+Y21yci5jbXJyX24pKTsNCj4gPiArCWludGVs
X2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX0NNUlJfTl9MTyhkaXNwbGF5LCBjcHVfdHJhbnNjb2Rl
ciksDQo+ID4gKwkJICAgICAgIGxvd2VyXzMyX2JpdHMoY3J0Y19zdGF0ZS0+Y21yci5jbXJyX24p
KTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQNCj4gPiAraW50ZWxfdnJyX2Rpc2Fi
bGVfY21ycihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiA+
ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNf
c3RhdGUpOw0KPiA+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0
ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ID4gKw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwg
VFJBTlNfQ01SUl9NX0hJKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gMCk7DQo+ID4gKwlp
bnRlbF9kZV93cml0ZShkaXNwbGF5LCBUUkFOU19DTVJSX01fTE8oZGlzcGxheSwgY3B1X3RyYW5z
Y29kZXIpLA0KPiAwKTsNCj4gPiArCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX0NNUlJf
Tl9ISShkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+IDApOw0KPiA+ICsJaW50ZWxfZGVfd3Jp
dGUoZGlzcGxheSwgVFJBTlNfQ01SUl9OX0xPKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4g
PiArMCk7IH0NCj4gPiArDQo+ID4gICBzdGF0aWMgdm9pZA0KPiA+ICAgaW50ZWxfdnJyX2VuYWJs
ZV9kY19iYWxhbmNpbmcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
DQo+ID4gICB7DQo+ID4gQEAgLTkzNCw4ICs5OTksNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF92cnJf
dGdfZW5hYmxlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0K
PiA+ICAgCSAqIGV2ZW4gVlJSX0NUTF9DTVJSX0VOQUJMRSBpcyBhcm1lZCBieSBUUkFOU19DTVJS
X05fSEkNCj4gPiAgIAkgKiB3aGVuIGVuYWJsaW5nIENNUlIgKGJ1dCBub3Qgd2hlbiBkaXNhYmxp
bmcgQ01SUj8pLg0KPiA+ICAgCSAqLw0KPiA+IC0JaWYgKGNtcnJfZW5hYmxlKQ0KPiA+IC0JCXZy
cl9jdGwgfD0gVlJSX0NUTF9DTVJSX0VOQUJMRTsNCj4gPg0KPiA+ICAgCWludGVsX2RlX3dyaXRl
KGRpc3BsYXksIFRSQU5TX1ZSUl9DVEwoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLA0KPiA+IHZy
cl9jdGwpOw0KPiA+DQo+ID4gQEAgLTk2MiwxMCArMTAyNSwxNSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF92cnJfdGdfZGlzYWJsZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2Ny
dGNfc3RhdGUpDQo+ID4gICB2b2lkIGludGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gICB7DQo+ID4gICAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+ICsJc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUoY3J0
Y19zdGF0ZS0NCj4gPnVhcGkuc3RhdGUpOw0KPiA+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMg
PSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ID4NCj4gPiAgIAlpZiAo
IWNydGNfc3RhdGUtPnZyci5lbmFibGUpDQo+ID4gICAJCXJldHVybjsNCj4gPg0KPiA+ICsJaWYg
KGludGVsX2NydGNfY21ycl9kaXNhYmxpbmcoc3RhdGUsIGNydGMpKQ0KPiA+ICsJCWludGVsX3Zy
cl9kaXNhYmxlX2NtcnIoY3J0Y19zdGF0ZSk7DQo+ID4gKw0KPiA+ICAgCWludGVsX3Zycl9zZXRf
dnJyX3RpbWluZ3MoY3J0Y19zdGF0ZSk7DQo+ID4gICAJaW50ZWxfdnJyX2VuYWJsZV9kY19iYWxh
bmNpbmcoY3J0Y19zdGF0ZSk7DQo+ID4NCj4gPiBAQCAtOTc2LDYgKzEwNDQsOCBAQCB2b2lkIGlu
dGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUpDQo+ID4gICB2b2lkIGludGVsX3Zycl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSkNCj4gPiAgIHsNCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkob2xkX2NydGNfc3RhdGUpOw0KPiA+ICsJ
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPQ0KPiB0b19pbnRlbF9hdG9taWNfc3Rh
dGUob2xkX2NydGNfc3RhdGUtPnVhcGkuc3RhdGUpOw0KPiA+ICsJc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKG9sZF9jcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiA+DQo+
ID4gICAJaWYgKCFvbGRfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkNCj4gPiAgIAkJcmV0dXJuOw0K
PiA+IEBAIC05ODQsNiArMTA1NCwxMCBAQCB2b2lkIGludGVsX3Zycl9kaXNhYmxlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpvbGRfY3J0Y19zdGF0ZSkNCj4gPiAgIAkJaW50ZWxf
dnJyX3RnX2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOw0KPiA+DQo+ID4gICAJaW50ZWxfdnJyX2Rp
c2FibGVfZGNfYmFsYW5jaW5nKG9sZF9jcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gKwlpZiAoaW50
ZWxfY3J0Y19jbXJyX2VuYWJsaW5nKHN0YXRlLCBjcnRjKSkNCj4gPiArCQlpbnRlbF92cnJfZW5h
YmxlX2NtcnIob2xkX2NydGNfc3RhdGUpOw0KPiA+ICsNCj4gPiAgIAlpbnRlbF92cnJfc2V0X2Zp
eGVkX3JyX3RpbWluZ3Mob2xkX2NydGNfc3RhdGUsIG9sZF9jcnRjX3N0YXRlLQ0KPiA+Y3B1X3Ry
YW5zY29kZXIpOw0KPiA+ICAgfQ0KPiA+DQo+ID4gQEAgLTEwNjYsOSArMTE0MCw2IEBAIHZvaWQg
aW50ZWxfdnJyX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUpDQo+ID4gICAJdHJhbnNfdnJyX2N0bCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwNCj4gPiAg
IAkJCQkgICAgICBUUkFOU19WUlJfQ1RMKGRpc3BsYXksDQo+IGNwdV90cmFuc2NvZGVyKSk7DQo+
ID4NCj4gPiAtCWlmIChIQVNfQ01SUihkaXNwbGF5KSkNCj4gPiAtCQljcnRjX3N0YXRlLT5jbXJy
LmVuYWJsZSA9ICh0cmFuc192cnJfY3RsICYNCj4gVlJSX0NUTF9DTVJSX0VOQUJMRSk7DQo+ID4g
LQ0KPiA+ICAgCWlmIChjcnRjX3N0YXRlLT5jbXJyLmVuYWJsZSkgew0KPiA+ICAgCQljcnRjX3N0
YXRlLT5jbXJyLmNtcnJfbiA9DQo+ID4gICAJCQlpbnRlbF9kZV9yZWFkNjRfMngzMihkaXNwbGF5
LA0KPiBUUkFOU19DTVJSX05fTE8oZGlzcGxheSwNCj4gPiBjcHVfdHJhbnNjb2RlcikpOw0KDQo=
