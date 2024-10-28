Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089239B341F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849AA10E4D9;
	Mon, 28 Oct 2024 14:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E4Ct7AKh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B8910E4D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730127420; x=1761663420;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DsbbXviIKmylu4kQSs8HMujNI4JituKhYXunk31+WNk=;
 b=E4Ct7AKhbS/UdeTSbYWYxMB4JzTMOJOXVk7RHzq37RUh5XDkW44tyC9b
 clrXc4idVW38VattDz822N8wY+nYBitXNXxike/tF5vm0fkD42ns8o23r
 xxpznqImBJFWeQQ7mWqOK61Isvkvqbu0eeXcagwFm0vtsyXRwVYNKGwAP
 U5vNZ3joelnxQZbUGLV0OJpl5eDxy0/kgvTYcBqKuS15XMrWyxa/Lbvty
 OfxuSi6JaxJgUZfGnRz4Hmxaid/AO5FY8Q/dJcx0CbROdstWUtNASqGG6
 gLvRhf90mCTi4lC5icT7pgR+okpmASyzKHQeb5UjFwckuRYRk7CL8wUkh Q==;
X-CSE-ConnectionGUID: 6ue/5FcSQh2GE6Oq0CvaBQ==
X-CSE-MsgGUID: 1sM6tVkGQA6GltAXkRWobQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33521729"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33521729"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:57:00 -0700
X-CSE-ConnectionGUID: LrqTBdAOTRy+np8nbnkfFA==
X-CSE-MsgGUID: ucUd7kBEQtKtYsqEquuK0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="112450741"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 07:56:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 07:56:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 07:56:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 07:56:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R7ztGYuOzkwLFTBkvHN2GPBq+2GreM/WGXKSaanLE1lucuKJ2GXzEPPIQC56zKgpoJdb1EfSqdmxwXsJOx65vbi5LZnJwo89X/lPF2b7RGSsL2BYh/DHHhXMbSl33EtoEKynyPQ0froyYwdyyW2NW696kHiHXU1NF/ndMjBVjk/CjpuAHYILDUXx7gukW3gPHDLrrDkfXwRPtBV0/IihuhoYaSGnXQ7msFWimzi1LZB1nv2EDZBpRfNdGr2pcYXZMNdJP4TlCJrT01L5rl9UmASF91QQ2/vNPwEC50+JwovGziRgy+dQSjBagkkB9haXxipnJyhh4LV2U+ShLCXygA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DsbbXviIKmylu4kQSs8HMujNI4JituKhYXunk31+WNk=;
 b=VE9F0pvh53m2gyhmyTRyuKpqNlqLsUWuJbXHuivTC9vSwDRgspoitxEaQ3+nvaJLPxfsk1LlZXuuL9zWdXnTVCcSedykqVGFR9vhBVEvJo4RYasHh+VdeMiCFL41NKF1+Yj2Q7almn+Gl/pmogJARIp/rHDzboxgBEkpxlZ4kYKakg4sq35Pb/JdZFVHZaUdfHtGjzBhOXYOy+NPcOscjpcQ/qTZeMVNdDg3v1hy1GDOQL5lXksdmJaMUmsM3BKV2JcTsxgMSri8FZ5cIssYY+0RIGlVjbFBNqrlRGflVdAIGmT439I8Cr+IpvG7CvFsfGb+XWVq6GunWTprboqOrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB7772.namprd11.prod.outlook.com (2603:10b6:610:120::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.27; Mon, 28 Oct
 2024 14:56:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.018; Mon, 28 Oct 2024
 14:56:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Index: AQHbKTpVTy+cAygmDEKTn3AmE2m0nLKcMXgAgAAFkoCAAAXbAIAAAhfQ
Date: Mon, 28 Oct 2024 14:56:54 +0000
Message-ID: <MW4PR11MB70543253C2949AE6DCC3744DEF4A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241028125835.78639-1-mika.kahola@intel.com>
 <Zx-ZWj-icaHVlmpB@black.fi.intel.com>
 <173012531967.3514.1295181866845484331@gjsousa-mobl2>
 <Zx-i8JelcUnPZ817@black.fi.intel.com>
In-Reply-To: <Zx-i8JelcUnPZ817@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB7772:EE_
x-ms-office365-filtering-correlation-id: 5861b5e7-d61e-4cfa-45c1-08dcf760c34e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dFB2VGRsM0E1WmtuT0MwVUdvSmMvcjFnV2FKZm03RHEvUy85TWdrT0JIWGt0?=
 =?utf-8?B?aE4vdlhEWnVFRGJsMmNtNEplejZEU0wvQXV4c3h3c2RyUWp3aFdWdkhMSEJR?=
 =?utf-8?B?aHp0KzVBYjlNUDhCQUdYeW45MTdpdWtwM2x0dDlwWTRHVHljLy9ycW9MNHBu?=
 =?utf-8?B?azhCekNOMWVDNCtTSlRjVENoZEhzUUg2ODJGd2lWZ0FkUU5JMUtpSXUyYlNy?=
 =?utf-8?B?K3FxU3ZpNGxWSDdIMTBkczRyMUZCcHFQYm5POUdKRElPajJNWU4vQmdtZHgv?=
 =?utf-8?B?aUhmdHRoVHNWWCtGMzF0S09rdHVFWXI3VHJhRjVGZVFqeDBKdDY1T3N0aStj?=
 =?utf-8?B?SnhWTGY2VzEyckZBKzYwWW1nMWxsZHE5Mjc2d0NiTGJHaFFteGJSc1hEZ1ZY?=
 =?utf-8?B?R3V0VkYxUCs0Y0tSYzJqYnpaNkNkTzJJRkdGUENyaExhM3FyV1dkcHhyWFU1?=
 =?utf-8?B?K3dLYlp3T3NUMmtSQUwwcFV2YW5RWVhIWlFHR0hpdnpPM1lNVnA2V3MzcERS?=
 =?utf-8?B?ODk5aU9sVVBUaWR0UnVQRUd2ZnVGaWdVMWRBVi9PUnFYNjFULzFPckFQTUFW?=
 =?utf-8?B?VzB3NDNTYzB5TUZPUlUxR2crUWdEN1J0ZnFXeForS2ttN2ZQQmxZZWdJQU0x?=
 =?utf-8?B?eXRvZ3lkVFRwUlpINVB3ZUJ5RExXTzdWajhMK0hKeWliTEpUWEZDdVhhK3Bq?=
 =?utf-8?B?SnB0U0pOMEFNMEZvakZac1d3dVFTUmMyczhXZkovTkFDR0ladjhvN213KzVj?=
 =?utf-8?B?OFpkbHhHVk1vVWh3Q3FFK3luUEpxUXk1aGFjTDNINUNnSlo0dmdaQ2R4dVlh?=
 =?utf-8?B?RUNmZkllc0E2b3hhSVd4cjdCWjluckVIVFVUSCtBNEYyZEt2elY1cGpkQmlp?=
 =?utf-8?B?QTMxMlFTdHJpOFk2eEhJbmVTQUVtV2k4MjBmZ1dsZHl6MytFVm5yRGdDQVRU?=
 =?utf-8?B?K3VYRUNqOW1OOTZBOVJxWWp0ODlVendSNG9IeWU0ZnYzRys4WjRrVnJlK2J2?=
 =?utf-8?B?UGNzOEdsZUppOXA3cGlIT2laNUxxTDhaaDVFSnM5WHBOTDNPeW1meENNKzht?=
 =?utf-8?B?U01peDJKOS85MFZFT1NneXBGcXVkZ1Q1bzZBcTEzQ1ZEQ3Z4aVlLMUhHZk1q?=
 =?utf-8?B?bmxOWllYcmUzb2E2SVZsRmFlWEZzWGpIQ1NQei9rbmdPdndJUmR1emZUTWVH?=
 =?utf-8?B?bERQNUZaYzZSOVhCWUZBcm5UQkIxQ09iOEx2bFQvQ3UwRktDRWNVZkNDMWpn?=
 =?utf-8?B?dWRKaDZkVnhva002MWsrVTdIcTR6RUxoSitBVTRabzNURHVMN0hnZzNSTC9H?=
 =?utf-8?B?cHRGbjhLemhFWGN6Y0pCR0w4bmIyd1AwTzlwaCtqU1FKNCtVOWVhYkdWS1dl?=
 =?utf-8?B?VDBFY2RKYmx1QnBSejJwYUlJNmI0QWtUZkJrZDFFdFpCYVQ2RnNEbm9sMzQz?=
 =?utf-8?B?OHVmbnlSRUg4aEc3SDFwL00zQnlxK1lTR0s0cGhMVVhkdmRSR3BNR3VyTkx6?=
 =?utf-8?B?TWJ2YVN6bEhWRjdWV0VxM1FDVGVYUmlsQVFqNmdqekVQMStubVJtcUg3UitF?=
 =?utf-8?B?U3lPRHJycWlBbWlLSGVYL2tqMXZwQTdHWTlMaEVFdm9LRjdqRGpHZXZsRnp1?=
 =?utf-8?B?Zy9ucGgyY3I4U2N5bklIdHR1U0VQQ1JjcWU1KzRWbjE2UnY1TE4xSXdTallN?=
 =?utf-8?B?Z1FMT05HUDA0dmRLUTJhOXB5TTJYbzV2ZGhWZFRubkZoYzRHanlZd1BLWmtm?=
 =?utf-8?B?MjArWkc4WGE5b1p0eTlkd2ZTWkZ5VHZUWkNwRjR2emNFc3NaU2lta1hRWU4r?=
 =?utf-8?Q?ln0RJnRrL167QjTriHga5Qt6As0txavxdr51w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dCtFSVQ0bFF1QkNxZ29WTmVDOFVsbHk3a0JqMHRhUW5ScWRLdXlYV2FNTlBa?=
 =?utf-8?B?WG1tSm9oWFRYbnhXb1Awa2hSWWtlNXdmNDBrdVgwb3h6dTFRb3c5aHZUdkIy?=
 =?utf-8?B?Vnh3YVFjaDFiaWpHTTRuZ2tEck9pa0l6K0xuWGZEWGVYY3pEMzNzK01jUzVX?=
 =?utf-8?B?T2I4M1pWWGlPWmIvRmRkSS9hUzVzTWJMMWUzeVhDVUtTR1FtTlF3R2t2UERk?=
 =?utf-8?B?LzNHM2ZiOVQ3b0J1U3lxdS93V2cwSlVXQUdtSzNhMW5LWXBCRjJJUVlqNjRX?=
 =?utf-8?B?Qmg4bHkxakVsdTBRaTF5OXdsVllHOXhuOFpOb213SC85NzdHdFgyNnVjckFz?=
 =?utf-8?B?QzdSaFRDUEtzQy9OTzFaclA1SUtPbjVYc0xPd0EwWnZmQjhxRnQ4cGZoK0h6?=
 =?utf-8?B?dndJMnZhNDB6dTQyUUJSdU9DQ091eSt6L1ZHcWsvVEtEUUhYSC8yUWo0REw3?=
 =?utf-8?B?U2RQTjFqWVZVcG16M1lGaG4xMXlCdE9jc0NLYzE1a1Y4aG10MCtLUFRteFFC?=
 =?utf-8?B?dXkzTFBTM1E1aFZmRGtYWVlMZXN3MkpZNzVDVVkrSFZaRDhON0tOS2ZxbHJS?=
 =?utf-8?B?dDRPR1FoSVlpNTlwLzJvY0cyb2JWcEdvSDFoOU9tOFlhYTEwazJJQjZWalhk?=
 =?utf-8?B?QnM0M0VpZFRuVG5oeDhoWUtaVmRQZEEyVWVTNW1waWJvd1EwWmxoRTFMcjFE?=
 =?utf-8?B?L1FBb1pXK3FWblFRdWFMU3VUZVY1U1R6aWRBdWU0Sm5zandSUFZ2akIvTklY?=
 =?utf-8?B?Zktzc0Zha2NrRS92RFNPRXZIenJRekFvVGhRVGpISlRpUDhtMUdmbEk5N2px?=
 =?utf-8?B?aVBNWitQMWdKSTJrUUVhanM4dmVCc3kwYU0vaUFCanlxZnY1MmE1REJObVZB?=
 =?utf-8?B?K3kwcGtrTHJrUXFNMFpXSHRCdkZwSFY2WFMwSUhQNHZOZWVRMjFXR1Z6M2s2?=
 =?utf-8?B?RmRrbFB5YUZ5S2NuQWwzeExENjBuanZRclhWMVpxakRSUlJsQ2hIeUFsVkhK?=
 =?utf-8?B?a0xkMk14RmdadGxIRjN2M2FtVUY3SVZhTmh0bXFQa0M2K214L21WV1VNZ0wr?=
 =?utf-8?B?cEdkaDVYblpYdUxUbkVFUkJhbW9SM2IwbXZiMUFKdWc0ek5sOFRqWUVVcmpO?=
 =?utf-8?B?S0tBQUpDME1SdVZjMlIzWXNOeXJySHF2QmtSWkRKMU0xdVVZRmQvK3JkVWgv?=
 =?utf-8?B?ZWRaM2kzZ0ZVTFRhdExNSTFuN2xZbTBLWGJmWlFXMXErSkp6VSsycHFiRTY5?=
 =?utf-8?B?Vm1QOGhKT254cDFQaVVJRXlkcndVQW9FMEM0dUN6aUV3ZmlzOUdrZko4bGt6?=
 =?utf-8?B?ZlFGMVBhdWlneDgyL1FnOUdCQ0I3a1ZuZEVoaS9XZ2xaZHRIOTJXOG54RzNM?=
 =?utf-8?B?eTZhWTRWc20wZFl5bmlmK2hka2Z3VGhSUE9lbXhpcHRXKy8xbzN1S0d1TG5n?=
 =?utf-8?B?eUdYbThwWTREL3VZenVNVDBqQllGYTl2bE1PU1NVU1owYzc5SnRYM1JNVWxy?=
 =?utf-8?B?MFNzUm1YQVovVDNiREJiZEpjRlhVUmZVRXFvSmhUdCtsOUY0ek9DTkhaR2ha?=
 =?utf-8?B?bFJhS3piVjRsNWZPVmhqajU1Qi9xTTI5aXgwc3hQLy95R3dVeElHbUdPcnVw?=
 =?utf-8?B?ZVpXTFBSUldndHVQSzRFbURLSXBxWEJxd3pqVWtUcmFRQlBaTDBYUU5tdDFG?=
 =?utf-8?B?Ym1hNzJrM2JLdGpEMDdIN3gzOE1SMmcrNElWVStEQzRpMnBxVm1taWd0TGxG?=
 =?utf-8?B?byt3eVdoN2VISHpzMFllcG41NndGU0kwKytsa2tMdXNYWHRxL2EvVmo2cXFZ?=
 =?utf-8?B?OFFEMGMvZGpHNzFmcWI4ZzRrOEkyZlkrOWRQSjZGWWhxbjhCUFpoRytUT0lO?=
 =?utf-8?B?QXJDZzF6MjdYbkljbVVTTkxyODk0cDVLMk90cEtIdUtWMW9nakVzZjZ5cmEy?=
 =?utf-8?B?bEpPV3lzWHZGVGJhTmJYRkprSXhJWnVZdXkxNFlrSytGNHpjVGEzdWtKeXVs?=
 =?utf-8?B?Q0RZUDErV1JYWUJ0R2VHSzZLVXZSOFRTc1lGN0NHcjRNYjFobjIrenNma2lF?=
 =?utf-8?B?Z1VsdUViaE1XWUZteWtLeUhwRHQ2RTErSFNBS2sxajd5VEU4M1pBVkI4M0tP?=
 =?utf-8?Q?Mu+smAE0z7rN019KQnULSf47i?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5861b5e7-d61e-4cfa-45c1-08dcf760c34e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 14:56:54.5008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AFCQaN9C1UjTBZe9GW6NXGTVxHLV56OXia4vEh6zBhOq154C0Ctyl2aNv8hR6eYRscpqbl7dyy9tln5zk53VHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7772
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFkYXYsIFJhYWcgPHJh
YWcuamFkYXZAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIDI4IE9jdG9iZXIgMjAyNCAxNi40
Mw0KPiBUbzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBDYzog
S2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L3hlM2xwZDogUG93
ZXIgcmVxdWVzdCBhc3NlcnRpbmcvZGVhc3NlcnRpbmcNCj4gDQo+IE9uIE1vbiwgT2N0IDI4LCAy
MDI0IGF0IDExOjIxOjU5QU0gLTAzMDAsIEd1c3Rhdm8gU291c2Egd3JvdGU6DQo+ID4gUXVvdGlu
ZyBSYWFnIEphZGF2ICgyMDI0LTEwLTI4IDExOjAyOjAyLTAzOjAwKQ0KPiA+ID5PbiBNb24sIE9j
dCAyOCwgMjAyNCBhdCAwMjo1ODozNVBNICswMjAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPiA+
DQo+ID4gPi4uLg0KPiA+ID4NCj4gPiA+PiArc3RhdGljIGJvb2wgd2FfdGNzc19wb3dlcl9yZXF1
ZXN0X2Fzc2VydChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBib29sIGVuYWJsZSkgew0KPiA+ID4+
ICsgICAgICAgIC8qDQo+ID4gPj4gKyAgICAgICAgICogTGltaXQgdG8gUFRMIG9ubHkNCj4gPiA+
PiArICAgICAgICAgKiBUT0RPOiBBZGQgY2hlY2sgZm9yIFBJQ0EgSVAgYW5kIHVzZSB0aGF0IGlu
c3RlYWQgbGltaXRpbmcgV0EgZm9yDQo+ID4gPj4gKyAgICAgICAgICogcGxhdGZvcm0NCj4gPiA+
PiArICAgICAgICAgKi8NCj4gPiA+PiArICAgICAgICBpZiAoRElTUExBWV9WRVIoaTkxNSkgIT0g
MzApDQo+ID4gPg0KPiA+ID5Ob3Qgc3VyZSBpZiBoYXJkY29kaW5nIGNvbnN0YW50cyBpcyB0aGUg
YmVzdCBvZiB0aGUgYXBwcm9hY2gsIGJ1dCBJDQo+ID4gPmZvdW5kIHNpbWlsYXIgcGF0dGVybnMg
aW4gb3RoZXIgcGxhY2VzLCBzbyB1cHRvIHlvdS4NCj4gPg0KPiA+IFVzaW5nIHZlcnNpb24gbnVt
YmVyIGRpcmVjdGx5IG1ha2VzIGl0IGVhc2llciB0byBjb25jdXJyZW50bHkgbWVyZ2UNCj4gPiBp
bmRlcGVuZGVudCBwYXRjaGVzIGZvciBzb21lIGRpc3BsYXkgSVAgd2l0aG91dCBoYXZpbmcgdG8g
d2FpdCBzb21lDQo+ID4gI2RlZmluZSB0byBiZWNvbWUgYXZhaWxhYmxlLiBUaGF0IGNvbWVzIHdp
dGggdGhlIGNvc3Qgb2YgaGF2aW5nIHRvDQo+ID4gcmVtZW1iZXIgdGhlIHZlcnNpb24gbnVtYmVy
cyAob3IgY2hlY2tpbmcgc29tZXdoZXJlKSB0aG91Z2guDQo+IA0KPiBBZ3JlZS4gQWx0aG91Z2gg
dXN1YWxseSB3ZSBoYXZlIGNvZGVuYW1lcyBmb3IgdGhpcywgd2hpY2ggaXMgZWFzaWVyIHRvIHRy
YWNrIG9yDQo+IGdyZXAuDQo+IA0KPiA+ID4NCj4gPiA+PiArICAgICAgICAgICAgICAgIHJldHVy
biB0cnVlOw0KPiA+ID4+ICsNCj4gPiA+PiArICAgICAgICAvKiBjaGVjayBpZiBtYWlsYm94IGlz
IHJ1bm5pbmcgYnVzeSAqLw0KPiA+ID4+ICsgICAgICAgIGlmIChpbnRlbF9kZV93YWl0X2Zvcl9j
bGVhcihpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQsDQo+ID4gPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9SVU5fQlVT
WSwgMTApKSB7DQo+ID4gPj4gKyAgICAgICAgICAgICAgICBkcm1fZGJnX2ttcygmaTkxNS0+ZHJt
LA0KPiA+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIlBvd2VyIHJlcXVlc3QgYXNz
ZXJ0IFdBIHRpbWVvdXQNCj4gPiA+PiArIHdhaXRpbmcgZm9yIFRDU1MgbWFpbGJveCBydW4vYnVz
eSBiaXQgdG8gY2xlYXJcbiIpOw0KPiA+ID4NCj4gPiA+SXMgdGltZW91dCBjb25zaWRlcmVkIGEg
ZmFpbHVyZT8gTm90IHN1cmUgX2RiZyBpcyB0aGUgcmlnaHQgaGVscGVyIGlmIGl0Lg0KPiA+DQo+
ID4gSSBiZWxpZXZlIGl0IGlzIG9rYXkgdG8gaGF2ZSBfZGJnIGhlcmUsIGJlY2F1c2UgdGhlIHJl
dHVybmVkIHZhbHVlIGlzDQo+ID4gY2hlY2tlZCBhbmQgYSB3YXJuaW5nIGlzIHJhaXNlZC4NCj4g
DQo+IFdoaWNoIG1ha2VzIHRoZSBsb2dnaW5nIHJlZHVuZGFudC4uLg0KPiANCj4gPiBBbHRob3Vn
aHQgd2UgY291bGQgbWFrZSB0aGlzIG1vcmUNCj4gPiBzZWxmLWNvbnRhaW5lZCBieSBqdW1waW5n
IGFuIGVycm9yIHBhdGggaW5zaWRlIHRoaXMgZnVuY3Rpb24uDQo+IA0KPiAuLi4gYnV0IGlmIHdl
J2Qgc3RpbGwgd2FudCBpdCBJIHRoaW5rIHRoaXMgd2lsbCBiZSBiZXN0Lg0KPiANCj4gPg0KPiA+
ID4NCj4gPiA+PiArICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCj4gPiA+PiArICAgICAg
ICB9DQo+ID4gPj4gKw0KPiA+ID4+ICsgICAgICAgIGlmIChlbmFibGUpDQo+ID4gPj4gKyAgICAg
ICAgICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9EQVRB
LCAxKTsNCj4gPiA+PiArICAgICAgICBlbHNlDQo+ID4gPj4gKyAgICAgICAgICAgICAgICBpbnRl
bF9kZV93cml0ZShpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9EQVRBLA0KPiA+ID4+ICsgMCk7
DQo+ID4gPg0KPiA+ID5TaW5jZSBlbmFibGUgaXQgYWxyZWFkeSBhIGJvb2wsIHRoaXMgY2FuIGJl
DQo+ID4gPg0KPiA+ID4gICAgICAgIGludGVsX2RlX3dyaXRlKGk5MTUsIFRDU1NfRElTUF9NQUlM
Qk9YX0lOX0RBVEEsIGVuYWJsZSk7DQo+ID4gPg0KPiA+ID4+ICsNCj4gPiA+PiArICAgICAgICBp
bnRlbF9kZV93cml0ZShpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQsDQo+ID4gPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIHwN
Cj4gPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURf
REFUQSgweDEpKTsNCj4gPiA+PiArDQo+ID4gPj4gKyAgICAgICAgLyogd2FpdCB0byBjbGVhciBt
YWlsYm94IHJ1bm5pbmcgYnVzeSBiaXQgYmVmb3JlDQo+ID4gPj4gKyBjb250aW51aW5nICovDQo+
ID4gPg0KPiA+ID5Bbnkgc3BlY2lmaWMgcmVhc29uIHRvIGRvIHRoaXMgb24gZXhpdD8NCj4gPiA+
SSdtIGFzc3VtaW5nIGFueW9uZSB0cnlpbmcgdG8gdXNlIHRoZSBtYWlsYm94IGZ1cnRoZXIgZG93
biB3b3VsZCBiZQ0KPiA+ID5kb2luZyB0aGlzIGFueXdheSBzaW5jZSBpdCdzIGEgcHJlcmVxdWlz
aXRlLCByaWdodD8NCj4gPg0KPiA+IFRoaXMgd2FpdCBpcyBwYXJ0IG9mIHRoZSAiREUgdG8gSU9N
IE1haWxib3giIGZsb3cuIEkgYmVsaWV2ZSB0aGlzIGlzDQo+ID4gbmVjZXNzYXJ5IGFuZCB0aGUg
d29ya2Fyb3VuZCBtaWdodCBldmVuIG5vdCBiZSBlZmZlY3RpdmUgd2l0aG91dCBpdC4NCj4gDQo+
IE15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGUgd2FpdCBpcyBmb3IgdGhlIGF2YWlsYWJpbGl0
eSBvZiBtYWlsYm94IHdoaWNoIGlzIG5vdA0KPiBlcXVpdmFsZW50IHRvIGNvbW1hbmQgc3VjY2Vz
cywgYnV0IEkgY291bGQgYmUgd3JvbmcuDQoNCkkgdGhpbmsgdGhlc2UgdHdvIGFyZSByZWxhdGVk
LiBXZSBjb3VsZCBjb25zaWRlciBjb21tYW5kIHRvIGJlIHN1Y2Nlc3NmdWwgaWYgbWFpbGJveCBp
cyBmcmVlIHRvIHVzZSB3aXRoaW4gYSBjZXJ0YWluIHRpbWVmcmFtZS4gT3RoZXJ3aXNlLCBJIHdv
dWxkIGNvbnNpZGVyIHRoYXQgdGhlcmUgbWlnaHQgYmUgc29tZXRoaW5nIHdyb25nIHdpdGggdGhl
IGNvbW11bmljYXRpb24gb3IgY29tbWFuZCBoYXNuJ3QgYmVlbiBzdWNjZXNzZnVsbHkgZXhlY3V0
ZWQuDQoNCi1NaWthLQ0KPiANCj4gUmFhZw0K
