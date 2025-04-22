Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B95A97106
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 17:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2C810E2C7;
	Tue, 22 Apr 2025 15:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzrG1VJY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB00010E2C7;
 Tue, 22 Apr 2025 15:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745335982; x=1776871982;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Li4GRwLTAhArQvVOD12E+b/iBTbwgp29oi4gFQDGLQg=;
 b=WzrG1VJYGxgmD1/74z5BYowGIhz3wl3uT23GE4itis9Af/426kGUjelG
 env9EuPe2WnzS+xRoowpMq8i1uMzp1KbEB4o3b31S7QHIITQl+cO+ZFl9
 Bwj05q5WA7aPmmb+2RdO+1xPPpr27QN4hSf1RLN1BjCmgvpRdx706L4+u
 7EWecD06bMg/OythR5el+LikXQ8Aj93dY1OZ54J4Jm+Qg1h0y58VHW+ct
 A5xOvKVekf12zXpQb2KknquAXklfT5vZwomRgicgshtZcNlB0YdNCyfUD
 rqkXOmEZjaG8/B9Ei8zPCKr6QXqA7f4nNNLZ6Oh5YrT45ETIO+OQGl/Zc w==;
X-CSE-ConnectionGUID: DBE119pISjK7sZzuQ7e/3g==
X-CSE-MsgGUID: YJsoaobkTt+WZO3hiLWC3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="49565317"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="49565317"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:33:00 -0700
X-CSE-ConnectionGUID: nGDSYdxIRDycnTe0IEtuaA==
X-CSE-MsgGUID: E8k7W7X3QXKmmYmtXZFExw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="137201442"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 08:33:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 08:32:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 08:32:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 08:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DUoazS5YJoKyk9mrXNWzT0kVvLM45rr9CYgmRiGDh7/n3hvmcqlDLPcy2UcffoZjDYCKzzdYy11aZZmxieLDbsGlf2IBXfEepIWub3zs/tpyHHGkw4y40Xu+OaZyBHAMSi6fRSjytajO5JwpMkRELgrP3RWcLJ+vgGqX3v4wbyk2XfJs5w/MOE4BEyHTP+mj0R9TmptZ7HALRHQFSHJHtSXsG4pAnLp5ljtUx1Mpw4LaCKJxuvLmoAKHfmiBzglr4UbORkRfRKpHT0npAzVoVOqYQs8iP357UlbmFSlsJcDwseCF5Zz49irro7Sd7wpdTy1EipE3DTXtzltdYuCeWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Li4GRwLTAhArQvVOD12E+b/iBTbwgp29oi4gFQDGLQg=;
 b=glleApzFqlF6U67tbbw49VhNBt/N21hlXhmCzGl6LKSgJDDpZLpHOPy8/ghfuIVfG70LWJW1/ZKyYtg0BlpP5JX34VJISLHE0LNRl5PI+05+24Y7y/LUYNTb9uLBy/51zq9/6glK6dKL3hl0/OsU5RU1lizcE+0L3A2r5+cugg4pDKH+Nie13RjanC4MhwUFqcRoDu1G0qu1wI/qrhJKBTNgezNF839fodpRcRUY8Z3/PQjhTgMNWJyqoXzLTeYsF40NrCB3PjnJ7WkId/1yR0gys1LohIVxYDlIXh54F9J2QwyXh5+Wa3/s14MGEdBX88qI909EvlBqpGbYfIw2UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB8428.namprd11.prod.outlook.com (2603:10b6:806:38b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 15:32:57 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 15:32:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: Implement wa_14024400148
Thread-Topic: [PATCH v2] drm/i915/display: Implement wa_14024400148
Thread-Index: AQHbruPb5raTbGMKmUeba0RB4te6s7Ov2LOQ
Date: Tue, 22 Apr 2025 15:32:56 +0000
Message-ID: <MW4PR11MB70543F96650ADFB9AF628FFCEFBB2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250416152044.2668249-1-nemesa.garg@intel.com>
In-Reply-To: <20250416152044.2668249-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB8428:EE_
x-ms-office365-filtering-correlation-id: 03afb0a3-00f3-4962-051f-08dd81b2f4e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?eUx5MjNnTUsyT2dtbFFpU1UvKzg0enZENjhtUW9YakpDK0lDWldDbmJYRFNt?=
 =?utf-8?B?ZFpiN2swZ2VzRXZuQmQrdjduTkZrTEVveENwTm51S2N6WEpuUWZaVC90TW1D?=
 =?utf-8?B?dnIzVnFOcXNOUkFzc0gxVDFQK1g0WXBxcXU0cXl6Q0tRZW1BM1F5cUxBeHox?=
 =?utf-8?B?Rk9pdGRBS3VhMUxHeTVHWEZZTnpLUWtMejNPNkdQMjFHanZqc1EzaUJTcUM5?=
 =?utf-8?B?NmVveWRPSFVQOWJpR3kybU9EL2FDeVNpS0pEeEx2SzhTUGpQM2hCMGNLVCs3?=
 =?utf-8?B?ZnN4c3hUQUdxY1FPdEFmZVpmRllBZzAydy8rM3kvRUJDM0JEUGo3SmppSlQz?=
 =?utf-8?B?WXRYbFF5NHIzeXU2QXFjR2xuVUs2N0FSV2xjekJyckd6Z3MwVUtCbjFxWWd0?=
 =?utf-8?B?Z0Qxa3laRE5wdGg1RC9PK2M0ZWxCZUoxbW8rNmxkZUY0NDBQV3E1d2hZRExs?=
 =?utf-8?B?NVBsR0xSK1NzNVhRVXZpVC9FaGpJV1p6YVBwY1lzaHJyYzFPNlBadi9lNnJU?=
 =?utf-8?B?dTlTT1NBMVdmL1cwbThJUVkxQzhOYzA5QlVTenROZGxHelh2UlpvRlVnazFi?=
 =?utf-8?B?MnQ5ZkxIY0QzeFpqKzNwWThpYUEyNXl3a0tCL0FCcTdmYnB5UXoxK1RhUjRP?=
 =?utf-8?B?b0dMREM4V1NpcDRsMSs3Q1VjKzlCWEx2VVhEMkgreVhhRVhPUDNrdGltaFMz?=
 =?utf-8?B?a2c3ZGVDK2pJTnNJakNRdDlrWjBOOUFRYm5iUmtqTFJKZm52U0d0d0tMdTI0?=
 =?utf-8?B?ZWEveUtqTno1NFVUMC9FU0hpVVdGKy9VK1JUM0N2MHArdXd2MTNXUVhsb1Az?=
 =?utf-8?B?Zk1DQnFsSkcxblVxQnM2VFBoSVo4d0JHYks3dnZ1Zi9jSHc1NXVvb1I2dS8r?=
 =?utf-8?B?VDBiSUpacDZwN3dpMG9PTnZ6cWNkdVg5RGtmRC82dUk1SmpsU1hGRVNneTFZ?=
 =?utf-8?B?UHlpbE4waWhsZjYyWUxsZ2VJR3JMT1NTYzRPM2QxWEo4ektHMXk5cU8zT2Y1?=
 =?utf-8?B?Z1ZoZ1FQRmNHNkZXR1RRdjdlWXRadGoxMVl2Q21mQnRON25SS0Z1RDBrYkZ5?=
 =?utf-8?B?NmZLSTV1RnNDUEtmK1hveGI5c1hGSUxwT3Q0K0tySjdCSlFhUThFYWZrK1M4?=
 =?utf-8?B?TWNpclVnc3VLM0d4VUFmcWpZL1pTNEw3TEFqZ29vNGFQd3B1Sm9SZ3F4aU9i?=
 =?utf-8?B?Zmh1cGV5enFGVS9BQ3RKMDdNTnFqNktXaG01YVA5TXZMbFFBalJicUJtaXdE?=
 =?utf-8?B?YzBTSUNiT2VHcmwzTjhNOWEyeHNqblNzTVJhVUs0VkxscDhiKzNWOVFkMnpM?=
 =?utf-8?B?Y3A1akx0eERKajM0WHJsY2ZJeTduVkFubTV0WUVCSEZWeVR1Zkh1dFF0Z00z?=
 =?utf-8?B?bWFTbCtyTWJSeFJRUk9EQjJuSWUzR2srZWE5di9lSzNUellwSkZrL0lnaFBJ?=
 =?utf-8?B?ZEhNVVRJdmh0dmIzcXVMNGdVdGtrZVQxeWpWYkw1RGRUaEVQRElXVHdJNDJo?=
 =?utf-8?B?dnlyS3JucGhUYUswTzlzdkdMWUI3WHloSkd0eGRFSS9qM2g4SFBqMjR4VUc4?=
 =?utf-8?B?ZENPdVdDVVBZajhxRytCb1hCbnB3N2ZrS1F2akZDNGFkNVh4OHpoREVKYTlS?=
 =?utf-8?B?RDB0SGpXdUZGVHZFWHl5eDNrdEZoUkNQZGdsalV6OGNQeXN3R285UTJtaGlt?=
 =?utf-8?B?ak05Ri9QT1ZNdkNKVkdsejhmRzN3V2ExWkVjbEtJaWgwODVxQmJiRWw3SDlG?=
 =?utf-8?B?eGhadEdVRDhrQmQvWFByaDlqWXpwdlQvS0lZUkN5ZHlWNXFNd2FWQWEwYzlK?=
 =?utf-8?B?Z3oyTi9PU3drZXNjcVM2TE1ndFdUQlByeFJZbTBrajk5MklxZGhYTkpQMkNG?=
 =?utf-8?B?T0dCZTlhSGhjWHhvY1JQQVRoekN1VHNuaTVJb0Z1TkVnbE1CTFdiQW1pM1Zn?=
 =?utf-8?B?OWcrYTdDaTNJcjZjRnRqYUZwZmlKd0d1R1BvTlBlU1pSY1h3ZHYyTzAreFBM?=
 =?utf-8?B?NllzZ3Y0TFJnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eS9yNlNseHJDK1pITmJNN1RJL09jem9BS0pPSEdjaDk5WUlET2JXbFZjYmYw?=
 =?utf-8?B?eGNVdXNDNEozWjlacWVpbkQyL2tOYlJsdjN1bGExd013Tzh2LzE3SnFQN2xI?=
 =?utf-8?B?ZHlNWDEzL2R5SGxROXZPbzRpSG1FQW9CakowYlROczFhdVNhN2orM25CRzVX?=
 =?utf-8?B?TlNLeGlPdGZLaHpDWjU3aVh0dUJSVjJNTFgxMFJIT0x2Ri9iODl6b0VzMmx5?=
 =?utf-8?B?cFRGQitMUzNqUTVwdGQzUEJhQUhnU09hZDkvTGJHRFgzSHF3azM3cFpudGxw?=
 =?utf-8?B?OEdIR3JHb0ZpYWFsR0d4dS9UdkV3UWY1MFFveDd4YU03Z3hhM25Ec3JJSTVw?=
 =?utf-8?B?S3pNMy9LRkNWbzNpRHFUa1YreHExbThiaWttTHVQSWxCVmQ4SWZxeDZsY0Rx?=
 =?utf-8?B?anZNVGQ2MktVcUYwT0Y5aW5sWFdqOFFmY0xVY2V4WkFFbHRMalNkdldaOVpY?=
 =?utf-8?B?dEpoVVBDTFgvbVd5K1g0bCtNNXlMQkJZdVFyZTRXWjByL2JDQ2N3MzdPWisz?=
 =?utf-8?B?V3FRTEh3QzhSNjVkUGR1OFJnV1BvZlE4OUZrZ3U4VHlNY0RzSXdiMUo5a3hE?=
 =?utf-8?B?eDB1QVBPY3ZpaUZaVDBUbWsxNDUyUVdFZjhPeDQ2aFcrbUx6ZHRVK3FNQkdK?=
 =?utf-8?B?bkJQM2c0Wm5DM1RlTHZCQjNkTWRrbFFnVkVEbUlXMWc1U1JrRWExbHE2OHBK?=
 =?utf-8?B?dzJPUFNqdVNVVGJKU3RmM2xPNnZkZXlHUnV5bjAxYTQyaVZzcFZ1eDhoRktu?=
 =?utf-8?B?disvRnNtTTZ3U2VQMCtMRCtnY2dNdW1oVG8yeFFHWE5tc1dySHpzYW96a0xn?=
 =?utf-8?B?TUxmS1krRDQ2aVR4R25ZQ0pUblU5M0lzUmFpWk0zR1BDcGZwRjJ5VVBna1pJ?=
 =?utf-8?B?Z1Z2aktoRWNKTk5TL1o2TEgyVFFGeUN6ZHRoSi9RRWhTOVpLNTRBU3RIN0Z6?=
 =?utf-8?B?dzh1RlJlRlg1L0dQSzJ4em1MVHZydlNoWEFDL1RCMTRibkFMZjFGTHg0U1Ra?=
 =?utf-8?B?end0bnFTNXZNbTEwWVFiSzBxOGJDcmg4UGRaODN4c2ZlV1BFV3RDSUZUSXdw?=
 =?utf-8?B?eEZsNDQwVUdjWmtSdHBHbCtVaU54N2d4UU91RUFxTmx6bnVJc0JVN0p0amt5?=
 =?utf-8?B?OU4rY1VKMkNtOFpMK0xCSHIxZ1o3aXFRQTkwamxIVnAyRWhMOVFvNWxkdDNZ?=
 =?utf-8?B?OWtrR0xEN1Q0ZER6azVkR29ILzQwQlk2cjBMWjBiUVp2cE15b21UUzBSOXlO?=
 =?utf-8?B?OWk5L1Q0YU1wZ0JxeDM5SlBheUprYlZGUnVjeXJacTNpRUp1aVdzVnk1QVIz?=
 =?utf-8?B?N1d0K0F1ZEY3MmNZUnQwRktybG5BSXdHK0RybUxXakxqb1JZLzZBTTVseG42?=
 =?utf-8?B?UzdtOVZkNVJGdlNaY0NpWmwwMnFCdW1yRUhNTWlHNWd5YUczQlpSaHNXbURH?=
 =?utf-8?B?aDBGNU1uUHhCb25VZG9BS2Y5eDBkZkVENy9TRzJYQ0RFcjh3N2dxc20zR3hy?=
 =?utf-8?B?SkZ4Q2pSQlkwbUhiK2tCRnBXbXVIeTFZNFZodjFPZHpmQ1lSWmU4YWpnWHV5?=
 =?utf-8?B?dzFyVmJqUFo2a3krM1hDWTFiaFNIellaZk1xQXN1ZG5Ob2NiSGxkYmluYVd6?=
 =?utf-8?B?blM0b2NCRFZMK0g2WldUNkRBZ2F5RDFSL1BQSDA0WEVTeFFlNjNkZmFzYnJR?=
 =?utf-8?B?RzlmcFVtZXVLeXpMYlhOYWtEbG9HUGt5SHJuVXhqWUxNbWFoYUx2WUdVK1po?=
 =?utf-8?B?Z3lCNUoxbHRnQ0E0MGFDNGtDaDFhTEZWcmdMRkdkMTVBcTV0bEhQa3ZWZ1NM?=
 =?utf-8?B?RlZkZWlMeHlCbVJKRW9aU3FNT2dVb3NUV1ViUHg0c3FNeGZCZFgyWEhnVmRK?=
 =?utf-8?B?dzJCVkR2UVBmRDcweUpScE9mdnZzVzkyOEo3MnE2QjFBNWkxUDlwODRPOUFk?=
 =?utf-8?B?VjluL2ZKZ1g5YXVsa0NkaFpjNVFJWjFXbGh3QzgzQ0Q2YVVaNzh0YUpPZWIz?=
 =?utf-8?B?V1pxODBMTmNzU25VTGYyVHdBMVVoV2FpRFpOZWhRWVdqekV5NVFiVmEzOVp2?=
 =?utf-8?B?UUtMcWIrdHhOb1h0VUNTc3dJdnNNRlVqZHJXUFloS1Y3RzJmdkNWYlVWTjF3?=
 =?utf-8?Q?uyI9q7AWbki27DiwtYF8gH8La?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03afb0a3-00f3-4962-051f-08dd81b2f4e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 15:32:56.9036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UPLDgwWz7SV6jzJ1aR0L1tx2BIBmUGFvuN9XVx1xI4rTp2DuPgRrX9+tQhf8s0hDu39Td5HTroCC76AFj4H6hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8428
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHYXJnLCBOZW1lc2EgPG5lbWVz
YS5nYXJnQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCAxNiBBcHJpbCAyMDI1IDE4LjIx
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmc7IEthaG9sYSwgTWlrYQ0KPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
PiBDYzogR2FyZywgTmVtZXNhIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQ
QVRDSCB2Ml0gZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IHdhXzE0MDI0NDAwMTQ4DQo+IA0K
PiBXb3JrYXJvdW5kIHJlY29tbWVuZCB1c2UgcG9sbGluZyBtZXRob2QNCj4gZm9yIHBtX2RlbWFu
ZCB0byBmaW5pc2ggYXMgdG8gYXZvaWQgdGltZW91dC4NCj4gDQo+IHYyOiBBZGQgcG9sbGluZyBt
ZXRob2Qgd2l0aGluIHBtZGVtYW5kX3dhaXQuDQo+ICAgICBVcGRhdGUgZXJyb3IgbWVzc2FnZVtK
YW5pXQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTmVtZXNhIEdhcmcgPG5lbWVzYS5nYXJnQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BtZGVt
YW5kLmMgfCAzMSArKysrKysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BtZGVtYW5kLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BtZGVtYW5kLmMNCj4gaW5kZXggZDIyYjU0Njk2NzJkLi4xMjUz
Mzc2Yzc2NTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcG1kZW1hbmQuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3BtZGVtYW5kLmMNCj4gQEAgLTQ3OCwxMyArNDc4LDM0IEBAIHN0YXRpYyBib29sIGludGVsX3Bt
ZGVtYW5kX3JlcV9jb21wbGV0ZShzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4g
IAkJIFhFTFBEUF9QTURFTUFORF9SRVFfRU5BQkxFKTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgdm9p
ZCBpbnRlbF9wbWRlbWFuZF93YWl0KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAr
c3RhdGljIHZvaWQgaW50ZWxfcG1kZW1hbmRfcG9sbChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSkNCj4gIHsNCj4gLQlpZiAoIXdhaXRfZXZlbnRfdGltZW91dChkaXNwbGF5LT5wbWRlbWFu
ZC53YWl0cXVldWUsDQo+IC0JCQkJaW50ZWxfcG1kZW1hbmRfcmVxX2NvbXBsZXRlKGRpc3BsYXkp
LA0KPiAtCQkJCW1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCgxMCkpKQ0KPiArCWNvbnN0IHVuc2ln
bmVkIGludCB0aW1lb3V0X21zID0gMTA7DQo+ICsJdTMyIHN0YXR1czsNCj4gKwlpbnQgcmV0Ow0K
PiArDQo+ICsJcmV0ID0gaW50ZWxfZGVfd2FpdF9jdXN0b20oZGlzcGxheSwNCj4gWEVMUERQX0lO
SVRJQVRFX1BNREVNQU5EX1JFUVVFU1QoMSksDQo+ICsJCQkJICAgWEVMUERQX1BNREVNQU5EX1JF
UV9FTkFCTEUsIDAsDQo+ICsJCQkJICAgNTAsIHRpbWVvdXRfbXMsICZzdGF0dXMpOw0KPiArDQo+
ICsJaWYgKHJldCA9PSAtRVRJTUVET1VUKQ0KPiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwNCj4g
LQkJCSJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgUHVuaXQgUE0gRGVtYW5kIFJlc3BvbnNlXG4iKTsN
Cj4gKwkJCSJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgUHVuaXQgUE0gRGVtYW5kIFJlc3BvbnNlDQo+
IHdpdGhpbiAldW1zIChzdGF0dXMgMHglMDh4KVxuIiwNCj4gKwkJCXRpbWVvdXRfbXMsIHN0YXR1
cyk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGludGVsX3BtZGVtYW5kX3dhaXQoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIHsNCj4gKwkvKiBXYV8xNDAyNDQwMDE0OCBGb3IgbG5s
IHVzZSBwb2xsaW5nIG1ldGhvZCAqLw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAy
MCkgew0KPiArCQlpbnRlbF9wbWRlbWFuZF9wb2xsKGRpc3BsYXkpOw0KPiArCX0gZWxzZSB7DQoN
Ck1heWJlIHRoaXMgZWxzZSBicmFuY2ggY291bGQgYmUgd3JpdHRlbiBhcyBpdHMgb3duIGZ1bmN0
aW9uIGFzIHdpdGggaWYgYnJhbmNoLiBBbnl3YXksIHRoaXMgbWlnaHQgYmUgYSB0b3BpYyBmb3Ig
Zm9sbG93IHVwIHBhdGNoLg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiArCQlpZiAoIXdhaXRfZXZlbnRfdGltZW91dChkaXNwbGF5LT5wbWRl
bWFuZC53YWl0cXVldWUsDQo+ICsNCj4gCWludGVsX3BtZGVtYW5kX3JlcV9jb21wbGV0ZShkaXNw
bGF5KSwNCj4gKwkJCQkJbXNlY3NfdG9famlmZmllc190aW1lb3V0KDEwKSkpDQo+ICsJCQlkcm1f
ZXJyKGRpc3BsYXktPmRybSwNCj4gKwkJCQkidGltZWQgb3V0IHdhaXRpbmcgZm9yIFB1bml0IFBN
IERlbWFuZA0KPiBSZXNwb25zZVxuIik7DQo+ICsJfQ0KPiAgfQ0KPiANCj4gIC8qIFJlcXVpcmVk
IHRvIGJlIHByb2dyYW1tZWQgZHVyaW5nIERpc3BsYXkgSW5pdCBTZXF1ZW5jZXMuICovDQo+IC0t
DQo+IDIuMjUuMQ0KDQo=
