Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QkjAOnx9V2rJSQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:30:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CD775E260
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:30:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iNqr6dGM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C6B10F037;
	Wed, 15 Jul 2026 12:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0495089AC3;
 Wed, 15 Jul 2026 12:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784118645; x=1815654645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NVucjyYetEAkyjT4RE49LSf3c5Iqc48IZi7vLgDXwzM=;
 b=iNqr6dGMjkWDMI7W6iA7ManUI3xEIMh+Htc2TUGJnnHinGpYWIF8PW+n
 7JC0du5KPXZ1FXaWF4JGo1UplkPULvWy3/RN7DwkXCy3byGVGsPWEB5vT
 70cbe8h1VRERS1XtUlWcrxQ5MoX38xu80ZANuA22S8hd940321jxU3vDn
 M3homptYpfLEkXvEQ78LsXF+Y0rl/T2Fa3lWpzEI8Tdj3BepkGzZtDCJu
 mCsePtASODiXJLzMzGcuut48U8aH4qrDwrDo+lXxTGNottba8cNqeeTdm
 sJgi71TzVVsoZwRHfyHORKkC+PSZxmC0l8F0Ud/OKA0m1tnuY7Ww/40Bw Q==;
X-CSE-ConnectionGUID: 8lonOfh0RTmweBd3Bbb7aw==
X-CSE-MsgGUID: IvYT82P3RHGRXErTMcAzgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84779795"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="84779795"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:30:45 -0700
X-CSE-ConnectionGUID: B45TQb63RP+lB5E2QS/NTA==
X-CSE-MsgGUID: 3C+/4wlLTJW4Lx2tTPSKDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="261076050"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:30:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 05:30:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 05:30:43 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 05:30:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FidrH4tYiI+eDxzIrykqj+XnhjWAv691maNE5HUY1uREQNoXUCzpIirLqXPZ3lMu5RnNXzeGFP712bz2ZSy0hgts7L5quuQ503SE7W3ID1jRAPh35BFaBhxiHUFGZlJHSyOxh1cxtBTX7TC5ZjGtfRBaEFSM0qkXr9hwj0h25/FZ1ZlvKyDCP/AyRBlodY80DrE/+hRLgYBY/NjLRwfQE4dC2v84OXLQckV4tQSFBhCnIvsp2DZ6AMfszo+gGLIxhaJExEetndU+vwSBUHJAASkHWCfb7n9zMvSynAnIjH3u/apJygsI7OCVe3C3QpXzonU5lh15qyoXtLnCEMIMYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NVucjyYetEAkyjT4RE49LSf3c5Iqc48IZi7vLgDXwzM=;
 b=xvhCivc1Y+gESTO5x0T6fFlSedQ9EBHjcD4TCFTjXeirh6VrS/Va/U/hBU6uE05bZaieYj62a6YwEWXDlcUMCZpam50nP7CIIUq9qY6Xe23V/hDafNZP1DoMNC+GMDEGlTfXpnI9upDxAZ9orzmg9/9x06XzP58UIQbwzqDudkxuZaCDjmDrra+KchJqB3qsOEqeBrnB9i89Ugj5a7hV9/YiZUBQiWSa3JWqT9t8o97XAWKe01v+hr/IT2mJkQKQ8g4R1VhftVhFr3yb4VrIqtzp6rcveZZxsfFePTAg6x0gFM5LQKsJodML3FoiRZ/4jBfWlcNiYwMwaIb5oG/HMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SN7PR11MB8110.namprd11.prod.outlook.com (2603:10b6:806:2e1::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.12; Wed, 15 Jul
 2026 12:30:39 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 12:30:39 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: Re: [v2 2/2] drm/i915/dram: Interpret 0xF populated-channel count as
 16
Thread-Topic: [v2 2/2] drm/i915/dram: Interpret 0xF populated-channel count as
 16
Thread-Index: AQHdFEPYi8kKR6+yL0mZBXBCDPyMDLZugvMA
Date: Wed, 15 Jul 2026 12:30:39 +0000
Message-ID: <49c83175f7cdc97e7bae75782bd2d4e2862640eb.camel@intel.com>
References: <20260715104119.4128662-1-uma.shankar@intel.com>
 <20260715104119.4128662-3-uma.shankar@intel.com>
In-Reply-To: <20260715104119.4128662-3-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SN7PR11MB8110:EE_
x-ms-office365-filtering-correlation-id: 5b022ecd-29e5-4643-6623-08dee26ce145
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|10070799003|1800799024|38070700021|22082099003|18002099003|10067099003|6133799003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: 3sEPEuMZFmmGcBpNc3BOVCGefCfYGAkv889FKYxugB2lRKeHJmS3M5FMXeEya1GR/VO5wTJh6eY8iWwaoNsx3AmCjtbHLk2lf2UQrtb1RLfp1r21dLM4f6m0M08qc6qkZiivi3w3DL2Ck3PYiqEEbxqilvOGfF7eX+bgAni946Hu+bNh6fZbzD+lShn/VAm8+TMb982mu57XdZnzufjAesnzhiwmwSp3RKUGNfNLpazQW+x7OWhe8CABQKMgktfMjWc1pmhMagzTHKY+PYN3vGqGUJ401qrWopMMeqB0xcFP7n4+KpGyttJ0vcPX6LGqEaulAUPDPvzFl3EHvQt9PVsj1X0qz53I6UbUNBYXXhTDjkpZNEkN7orab9gROCvkcJjdCN+Tx23uwGqHCaHC+JoeZJM1yyh8OrNUrL25op/ZBv8b+jzk6ECDfxHgmmLK70R8cxuu5EZ810CTix3RZYLJvHrNIbXBCLwvMQQ32vekr12Rk+krX0nNR2vUMR0Wmrm0r//9xZT+ZjPRhaQerD8AsCaF5KAhQoLUY7XuyiYc1kGfvhKDkxKqIsEGNDqZ/sh4bmWqNMobXWn7K89BSViobRe3TVCO6abvDmU9erkcH74bc9v1sgbg6+KqSjWdhJbohEmZwz5aW5FN8FQROVXAV5phkoqiXKADxOu5ajPiwCFa8MOyIShEUeWeDioiFv62ClEGuscgJ9tDjWynaDhXKMhxYQzWWgBFED6UZW8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(10070799003)(1800799024)(38070700021)(22082099003)(18002099003)(10067099003)(6133799003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHlBS3pyNDlaay9KTnlWdFplVFUrc0orRE9aQS82RjFKRlVaVUZjSVZtRE1q?=
 =?utf-8?B?cEdBdlc2cHlNM1dhd0EwK3VobEZJQnh4eFQweURDR3crV3ZCUGlBMm4xVXF1?=
 =?utf-8?B?TjRKVkMvb2ZIVXgrcWEyTzUrcVNFcFI0Q1VKcURFOWhPOGZxazgvN1RISTR5?=
 =?utf-8?B?UU1USmdWL1pDUnFma3lIMm1mQmhZb01RV09WcThkdkJrQTBVeG05UlRVNGlG?=
 =?utf-8?B?QjdlNWRMTXBOYnNndlVZa2w0YnZmQlpYRXNnV2w2ZkFSNVB5N0piY2pWdDBL?=
 =?utf-8?B?NC9WNUlYQllhbXRnditLeVRFckxIcTg2T2crRVN3S3RUQU9oUUhidGpuZ0t6?=
 =?utf-8?B?Z0toNDFNOHExdlZBNEJydzgzS1dPZ3BMM3FyeU1MVi9zeDAwWHVPdzFTMEZR?=
 =?utf-8?B?eDdmNGFCSnJGUko0aGpORFFpdGJ6MDVNOThZU0pCbmx4WXNDTU5qekU0dm1q?=
 =?utf-8?B?bjQ4ZUtVMnNsVUZRYTZ0OGc2eUZRaG4vVmxzRTVlTlJQRXlWbmczb0hGemp1?=
 =?utf-8?B?ZWZzNHNwb01yZlo2QTY1eHZ3Y1ljcTEyOGZSSHZXaHJUTldQVktqMWZHcTdI?=
 =?utf-8?B?aEVjT3NycktOR3JuaklYKzNXcjg4M2NIS3pndXdqVWNFRmkxRWxTNmNzS3do?=
 =?utf-8?B?VlBZTmttL2xreHhLNktQaWdsbFZwbWN6L1Bydzd0RmJJME1zWktsMUdxcUdE?=
 =?utf-8?B?bWs3dWE2NjRMNXgrKy92UWs4TVhqY0x5eGN6VndtQzFkNXdEQzhXNFF1Ryto?=
 =?utf-8?B?V0dGRy92RjRsOXFhOVBZNHFNaUFYWGZiamNtUG82Vll3MEFBTUhoMHIveVZr?=
 =?utf-8?B?WnM0NGx3UXNvTkFSZTV0b0FtT0ZEZnRRRXJ4ZElTeGMvajNWekVKMTJTZmJm?=
 =?utf-8?B?Z0JsVzZPRHNIdUNiODY2ZEZNM0ppTjdvQVdhaExraloyQzVpd0lQMmkyRFFL?=
 =?utf-8?B?UFltVHpQa0xROXlMaDZnbUhRS0tZOUFaR0RDaWptQ1YwNlNlNjhjd01TcVE3?=
 =?utf-8?B?QmR6VVlOVjNGdnFTWld6aEszTnN1bXQvKzJxandPMXNjYjhXSlNkUElPWmRJ?=
 =?utf-8?B?RGtSSGZSRWt5bjRIR3lzM2k0Rm1IRTlwK3hRRUs3Vk9SSmYxdmlGb1gxYkVG?=
 =?utf-8?B?dXVGQmVBMFNxSzV6dWc0RFRZL1J5clB6U1g3bkh4S3E2M0lQTWxDSXhVM25R?=
 =?utf-8?B?OEQyNjFlbGU4QUZORGJzLzRlRUN3MUlDdVpJNGsyYnQ1Z0JTbnVZRG85QzUx?=
 =?utf-8?B?a29RRUpSSUs0VWdhVkNrWWFuWHp3c25zdHduY1dRbXU0c0cwdmRiOVF6ZHVN?=
 =?utf-8?B?Q0QzYkt5aGFzOUR0THQzUnBscVMwNVNxMVZjWE1YVWRaOTdBYmpQb2xTZWwz?=
 =?utf-8?B?VG9TMXJKaU80emdLQWNjM1Y1b2tBUVMzc2lqZ1NTeWFpcVJ4dWFnM000Q2xI?=
 =?utf-8?B?NStCMVJkdlpha1ZQM1d4MFRaek5CcDk1UEZHdzZmNDdpWllsZHlTTDl0S0k5?=
 =?utf-8?B?WTMveE1CU3dBVlFYYyt1SUgyS3F3dzZRY0lFYXJuOTRuVnBpRk9adVY3aUlp?=
 =?utf-8?B?SHlIemtiNXdoT0JTZ05SVlF2V2I5RytENUZqRXJPK0FETCtVMDVscWZQcXFK?=
 =?utf-8?B?T0pVMnRvMno1UCs0OFFqRkFTeTNqdTBBTEFjQ2xlSnE4dUJUckl5c2lOYlhR?=
 =?utf-8?B?YzdZWDFsQTBweDdlQlplMGtoRVZYdnJubXk5aDRyZVk4OUtuaGRFblpkOXAw?=
 =?utf-8?B?NEVlTk9zK0NCTkVNRkZRZ1U3WHpNdUovOGFGek9RL2ViSHUxcWJ5ODVQVnM3?=
 =?utf-8?B?VFRwMm1Nd0I0SlFUWXFNeHZTVEFSajdHSnhzVFR6ZDJKQ054Rk9GRGJuWG5N?=
 =?utf-8?B?MTJrZ293amRLaEJJaG1YaHd1Qit1OXdhN2ZnMGlBRld1VkdPVkw5YUNhRmJU?=
 =?utf-8?B?UFhUcExiUjBRWXlycnQvRkpxd2t6NVY5L1dIUDlIS1JONlZKNXJnNnl0M1hE?=
 =?utf-8?B?QkZsRHBiM0trQzRJTEJUa01pdTcvdVFnaTdqWG1OTkN0Y1M2N25qQVFjcTcy?=
 =?utf-8?B?c3lHSVhHL1JSSGxJblRmcGVaT3BCVjFFMzJuc0pIdGc3OHJra2JJMkpwemRH?=
 =?utf-8?B?QU5mWTRGWitmMXBxbElGMjFkU3hNYVF6aXV2TURNZDlsN3RjdldDRSt4N2dJ?=
 =?utf-8?B?c3kwSDVWM2xLaFlGMGQ1ZXdnakhLMjh5Z0Zvem04dGdjMEhqalBhZzlZV0JX?=
 =?utf-8?B?TDVkKytQK3JKSFZ0Z3FmZ2dtYTRTelhUZmhFb3grY0dITmNQRkE3VFRhYkpt?=
 =?utf-8?B?em5FOWlJMm8xWUptZUFqRUF2dXJITXIzYXQwUHRrd1dqaHk3OTE5SC9sanMy?=
 =?utf-8?Q?rm04An2qNM6ShKShd1p8V8gbTwj9j7Pa91tNroA9vlmm8?=
x-ms-exchange-antispam-messagedata-1: Qrr6FAaDl+YYOs4jGGT9O/bo8VRm4oyCzsngWwMqhPR3er+XFcgdIOZR
Content-Type: text/plain; charset="utf-8"
Content-ID: <E382FA5AEC9C904D856331AD1473E543@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cy/6pVxKRTEJAsIpOzOy4I4SLZmTHR3eA7p23LFclsBJ3phVQtYlxzDSGTYIgUd5EddCCBSW0Wd6T74OqR9CjnDdEt2bfjWO7/18BtzK/1034w1UOmmlt4ShA2Yw8F4mRrByHF4i87Rgg2MJBuoIz6iMqHymeFwn9cCPGSxOioh8jO/IL98sBGhsfwSjO3ObDXhlYIqastQRHV0BQREpn8uq67yaniKOWCwPp/bdfp33vU/HIBE0sMcEK8Q00VaA5RlzL+GO8XzQOn9XzBX8hQN3aKb5eOQohd+4FgPdsgVdz8hUTym6syxI8lQK7/DF/uUk9xd8pJk5GN6aE8BFqg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b022ecd-29e5-4643-6623-08dee26ce145
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 12:30:39.6594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jLGBLt3ENSvMQrf5SRxow/XlPD6/jdgvNFcp8OEOrS8UTSlBMkl5US8iKihwXPYTzryDYceLTdXPN1Pfz9kZvDQx0KmMF1Mml2KfFupwvYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8110
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42CD775E260
X-Rspamd-Action: no action

SGkgVW1hLA0KDQpPbiBXZWQsIDIwMjYtMDctMTUgYXQgMTY6MTEgKzA1MzAsIFVtYSBTaGFua2Fy
IHdyb3RlOg0KPiBUaGUgcmVnaXN0ZXIgTUVNX1NTX0lORk9fR0xPQkFMIFtOdW1iZXIgb2YgcG9w
dWxhdGVkIGNoYW5uZWxzXSBmaWVsZA0KPiBkZWZpbml0aW9uIGlzIHVwZGF0ZWQgd2l0aCBhbiBl
bmNvZGluZyBmb3IgMTYgY2hhbm5lbHMuDQo+IA0KPiBGb3IgMTYtY2hhbm5lbCBjb25maWd1cmF0
aW9uLCBwcm9ncmFtIDExMTFiLiBBIHByb2dyYW1tZWQgdmFsdWUgb2YNCj4gMTExMWINCj4gbXVz
dCBiZSBpbnRlcnByZXRlZCBhcyAxNiBjaGFubmVscyBmb3IgbWVtb3J5IGJhbmR3aWR0aCBjYWxj
dWxhdGlvbnMuDQo+IA0KPiBUaGUgTUVNX1NTX0lORk9fR0xPQkFMIHBvcHVsYXRlZC1jaGFubmVs
IGZpZWxkIGlzIG9ubHkgNCBiaXRzIGFuZA0KPiBjYW5ub3QNCj4gZW5jb2RlIDE2LCBzbyBvbiBY
ZTNwIHRoZSBCSU9TIHByb2dyYW1zIHRoZSBzYXR1cmF0ZWQgZmllbGQgdmFsdWUNCj4gKDB4ZikN
Cj4gdG8gaW5kaWNhdGUgdGhlIGZ1bGx5LXBvcHVsYXRlZCAxNi1jaGFubmVsIGNvbmZpZyAoNCBt
ZW1vcnkNCj4gY29udHJvbGxlcnMNCj4geCA0IGNoYW5uZWxzKS4gSW50ZXJwcmV0IGl0IGFzIDE2
IGFuZCBsZXQgdGhlIGJhbmR3aWR0aCBtYXRoIGhhbmRsZQ0KPiB0aGUNCj4gbGFyZ2VyIGNoYW5u
ZWwgY291bnQuDQo+IA0KPiBHYXRlIHRoZSBiZWhhdmlvdXIgdGhyb3VnaA0KPiBpbnRlbF9kaXNw
bGF5X3dhKElOVEVMX0RJU1BMQVlfV0FfMTYwMzA4NjIxNTcpDQo+IGluc3RlYWQgb2YgYW4gb3Bl
bi1jb2RlZCBESVNQTEFZX1ZFUigpIGNoZWNrLg0KPiANCj4gdjI6IFN3aXRjaGVkIHRvIGludGVs
X2Rpc3BsYXlfd2EuYyBmcmFtZXdvcmsgKFN1cmFqKQ0KPiANCj4gV0E6IDE2MDMwODYyMTU3DQo+
IEJzcGVjOiA2OTEzMSwgNjg4NTkNCj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy00
LTgNCj4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jwqDCoCB8
IDIwICsrKysrKysrKysrKysrKysrLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcmFtLmMgfCAxMiArKysrKysrKysrKysNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDI5
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGluZGV4IDQxNTM5ZmRmZWFjNS4uYWFhMDM1MGRjYTc4
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC0x
NCw2ICsxNCw3IEBADQo+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcmVncy5oIg0KPiDCoCNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2Rpc3Bs
YXlfdXRpbHMuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3dhLmgiDQo+IMKgI2luY2x1
ZGUgImludGVsX2RyYW0uaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfbWNoYmFyLmgiDQo+IMKgI2lu
Y2x1ZGUgImludGVsX3BhcmVudC5oIg0KPiBAQCAtMjcyLDcgKzI3MywxNCBAQCBzdGF0aWMgaW50
IGljbF9nZXRfcWd2X3BvaW50cyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4g
wqAJCWNhc2UgSU5URUxfRFJBTV9MUEREUjQ6DQo+IMKgCQljYXNlIElOVEVMX0RSQU1fTFBERFI1
Og0KPiDCoAkJCXFpLT50X2JsID0gMTY7DQo+IC0JCQlxaS0+bWF4X251bWNoYW5uZWxzID0gODsN
Cj4gKwkJCS8qDQo+ICsJCQkgKiBXYV8xNjAzMDg2MjE1Nw0KPiArCQkJICogWGUzcCBzdXBwb3J0
cyBhIGZ1bGx5LXBvcHVsYXRlZCAxNi0NCj4gY2hhbm5lbCBMUEREUg0KPiArCQkJICogY29uZmln
ICg0IG1lbW9yeSBjb250cm9sbGVycyB4IDQNCj4gY2hhbm5lbHMpOyBlYXJsaWVyDQo+ICsJCQkg
KiBEMTQrIHBsYXRmb3JtcyB0b3Agb3V0IGF0IDguDQo+ICsJCQkgKi8NCj4gKwkJCXFpLT5tYXhf
bnVtY2hhbm5lbHMgPQ0KPiArCQkJCWludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwNCj4gSU5URUxf
RElTUExBWV9XQV8xNjAzMDg2MjE1NykgPyAxNiA6IDg7DQoNCkFzIHBlciB0aGUgYnNwZWMgNjg4
NTksIG1heCBjaGFubmVsIG9mIDE2IHYuIDggaXMgYmFzZWQgb24gYSBzcGVjaWZpYw0Kc2t1LsKg
RG8gd2UgaGF2ZSBhbnkgZnVydGhlciBpbmZvIG9uIHRoYXQgaG93IHRvIHZhcmlhdGUgdGhhdD8N
Cg0KQnV0IHRoZSBJTlRFTF9ESVNQTEFZX1dBXzE2MDMwODYyMTU3IGFwcGxpZXMgdG8gZGlzcGxh
eSB2ZXJzaW9ucyA+PSAzNSANCg0KSW4gdGdsX2dldF9id19pbmZvKCksIHdlIGhhdmUgdGhpcyBh
ZGp1c3RtZW50IHRvIHRoZSBkZWludGVybGVhdmUNCg0KCWlmIChudW1fY2hhbm5lbHMgPCBxaS5t
YXhfbnVtY2hhbm5lbHMgJiYgRElTUExBWV9WRVIoZGlzcGxheSkNCj49IDEyKQ0KCQlxaS5kZWlu
dGVybGVhdmUgPSBtYXgocWkuZGVpbnRlcmxlYXZlIC8gMiwgMSk7DQoNClNvIHdpdGggdGhlIGFi
b3ZlIGNoYW5nZSB3ZSB3aWxsIGFsd2F5cyBlbmQgdXAgaW4gdGhpcyBsb29wIGFuZCBhZGp1c3QN
CnRoZSBxaS5kZWludGVybGVhdmUgZm9yIGFsbCB2ZXJzaW9ucyA+PSAzNSBub3QganVzdCB0aGUg
c3BlY2lmaWMgInNrdSINCndoaWNoIEkgdGhpbmsgaXMgbm90IGNvcnJlY3QuIE1heSBiZSBuZWVk
IHRvIGNoZWNrIGZyb20gdGhlIElQIHRlYW0gb3INCmNsYXJpZnkvdXBkYXRlIHRoZSBic3BlYz8N
Cg0KQW5kIGFub3RoZXIgc3VnZ2VzdGlvbiBmb3IgeW91ciBjb25zaWRlcmF0aW9uIGlzOg0KDQpJ
IGRpZG50IGZpbmQgdGhpcyAxNjAzODYyMTU3IGFzIHBhcnQgb2Ygd2EgZGF0YWJhc2UuIElzIHRo
ZXJlIGFueSB3YQ0KYnNwZWM/IFNvIGRvIHdlIG5lZWQgdG8gIGltcGxlbWVudCB0aGlzIGFzIGEg
d2E/DQoNCklmIHRoaXMgaXMgY29uc2lkZXJlZCBhcyBhIHdhOg0KDQpJZiBJIHVuZGVyc3RhbmQg
dGhpcyBjb3JyZWN0bHksIHdhIGlzIG1haW5seSBhYm91dCBwYXJ0IHdoZXJlIGJpb3MNCnBvcHVs
YXRlIHRoZSBNVExfTl9PRl9QT1BVTEFURURfQ0hfTUFTSyBmaWVsZHMgYXMgMHhmIGluIGNhc2Vk
IG9mDQpjaGFubmVscyAxNiBhbmQgd2UgaW50ZXJwcmV0IHRoYXQgYXMgY2hhbm5lbHMgPSAxNiBp
bnN0ZWFkIG9mIDE1LiAgDQoNCklNTywgaWRlYWxseSBpdCBpcyBiZXR0ZXIgdG8gc3BsaXQgdGhp
cyBpbnRvIHR3byBwYXJ0cyzCoA0KDQoxLiB3YSBkZWZpbml0aW9ucyBpbiB0aGUgZXhpc3Rpbmcg
ZHJpdmVyIHdhIGZyYW1ld29yayArIGNoYW5nZXMgaW4NCnhlbHBkcF9nZXRfZHJhbV9pbmZvKCkg
cmVsYXRlZCB0byB0aGlzIHdhIGFzIGEgc2luZ2xlIHBhdGNoIGxpa2Ugb3RoZXINCndhIGltcGxl
bWVudGF0aW9ucyBpbiB0aGUgZHJpdmVyIHNvIGZhci4NCg0KMi4gVXBkYXRlIHRoZSBidyBpbmZv
IGNoYW5nZXMgdG8gYWRkIHN1cHBvcnQgZm9yIG1heF9udW1iZXIgb2YgY2hhbm5lbHMNCnRvIDE2
IGluIGNhc2Ugb2YgYSBzcGVjaWZpYyBTS1UgYW5kIHRoZSB1cGRhdGUgdG8gdGhlDQpjOV9jbHBl
cmNocGVyYmxvY2sgY2FsY3VsYXRpb24gcGFydC4NCg0KQlINClZpbm9kDQoNCg0KPiDCoAkJCXFp
LT5jaGFubmVsX3dpZHRoID0gMTY7DQo+IMKgCQkJcWktPmRlaW50ZXJsZWF2ZSA9IDQ7DQo+IMKg
CQkJYnJlYWs7DQo+IEBAIC02MjQsMTAgKzYzMiwxNiBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndf
aW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqANCj4gwqAJaXBxZGVw
dGggPSBtaW4oaXBxZGVwdGhwY2gsIGRpc3BsYXlfYndfcGFyYW1zLT5kaXNwbGF5cnRpZHMNCj4g
LyBudW1fY2hhbm5lbHMpOw0KPiDCoAkvKg0KPiArCSAqIFdhXzE2MDMwODYyMTU3DQo+IMKgCSAq
IGNscGVyY2hncm91cCA9IDRrcGFnZXNwZXJtZW1wYWdlICogY2xwZXJjaHBlcmJsb2NrLA0KPiAt
CSAqIGNscGVyY2hwZXJibG9jayA9IDggLyBudW1fY2hhbm5lbHMgKiBpbnRlcmxlYXZlDQo+ICsJ
ICogY2xwZXJjaHBlcmJsb2NrID0gbWF4KDggLyBudW1fY2hhbm5lbHMsIDEpICogaW50ZXJsZWF2
ZQ0KPiArCSAqDQo+ICsJICogVGhlIDggLyBudW1fY2hhbm5lbHMgdHJ1bmNhdGluZyBkaXZpZGUg
Y29sbGFwc2VzIHRvIDAgZm9yDQo+ICsJICogPjgtY2hhbm5lbCBjb25maWdzICgxNi1jaGFubmVs
OiA4IC8gMTYgPSAwKTsgdGhlIG1heCguLi4sDQo+IDEpIGZsb29yDQo+ICsJICoga2VlcHMgY2xw
ZXJjaHBlcmJsb2NrID49IDEgdGhlcmUgd2hpbGUgcHJlc2VydmluZyB0aGUNCj4gbGl0ZXJhbA0K
PiArCSAqIHRydW5jYXRpbmcgZGl2aWRlIGZvciA8PTgtY2hhbm5lbCBjb25maWdzLg0KPiDCoAkg
Ki8NCj4gLQljbHBlcmNoZ3JvdXAgPSA0ICogKDggLyBudW1fY2hhbm5lbHMpICogcWkuZGVpbnRl
cmxlYXZlOw0KPiArCWNscGVyY2hncm91cCA9IDQgKiBtYXgoOCAvIG51bV9jaGFubmVscywgMSkg
Kg0KPiBxaS5kZWludGVybGVhdmU7DQo+IMKgDQo+IMKgCWRpc3BsYXktPmJ3Lm51bV9xZ3ZfcG9p
bnRzID0gcWkubnVtX3Fndl9wb2ludHM7DQo+IMKgCWRpc3BsYXktPmJ3Lm51bV9wc2ZfZ3ZfcG9p
bnRzID0gcWkubnVtX3BzZl9wb2ludHM7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RyYW0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHJhbS5jDQo+IGluZGV4IGYxMDNmN2NiYTAxOC4uN2UyZmMyNGUyNDBjIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RyYW0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RyYW0uYw0KPiBAQCAtMTMs
NiArMTMsNyBAQA0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2NvcmUuaCINCj4gwqAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV91dGlscy5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5
X3JlZ3MuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3dhLmgiDQo+IMKgI2luY2x1ZGUg
ImludGVsX2RyYW0uaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfbWNoYmFyLmgiDQo+IMKgI2luY2x1
ZGUgImludGVsX3BhcmVudC5oIg0KPiBAQCAtNzk2LDYgKzc5NywxNyBAQCBzdGF0aWMgaW50IHhl
bHBkcF9nZXRfZHJhbV9pbmZvKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBzdHJ1
Y3QgZHJhbV9pbmZvDQo+IMKgCWRyYW1faW5mby0+bnVtX3Fndl9wb2ludHMgPQ0KPiBSRUdfRklF
TERfR0VUKE1UTF9OX09GX0VOQUJMRURfUUdWX1BPSU5UU19NQVNLLCB2YWwpOw0KPiDCoAkvKiBQ
U0YgR1YgcG9pbnRzIG5vdCBzdXBwb3J0ZWQgaW4gRDE0KyAqLw0KPiDCoA0KPiArCS8qDQo+ICsJ
ICogV2FfMTYwMzA4NjIxNTcNCj4gKwkgKiBNRU1fU1NfSU5GT19HTE9CQUwgcG9wdWxhdGVkLWNo
YW5uZWwgZmllbGQgaXMgb25seSA0IGJpdHMNCj4gYW5kDQo+ICsJICogY2Fubm90IGVuY29kZSAx
Niwgc28gb24gWGUzcCB0aGUgQklPUyBwcm9ncmFtcyB0aGUNCj4gc2F0dXJhdGVkIGZpZWxkDQo+
ICsJICogdmFsdWUgKDB4ZikgdG8gaW5kaWNhdGUgdGhlIGZ1bGx5LXBvcHVsYXRlZCAxNi1jaGFu
bmVsDQo+IGNvbmZpZyAoNA0KPiArCSAqIG1lbW9yeSBjb250cm9sbGVycyB4IDQgY2hhbm5lbHMp
LiBJbnRlcnByZXQgaXQgYXMgMTYuDQo+ICsJICovDQo+ICsJaWYgKGludGVsX2Rpc3BsYXlfd2Eo
ZGlzcGxheSwgSU5URUxfRElTUExBWV9XQV8xNjAzMDg2MjE1NykNCj4gJiYNCj4gKwnCoMKgwqAg
ZHJhbV9pbmZvLT5udW1fY2hhbm5lbHMgPT0NCj4gUkVHX0ZJRUxEX01BWChNVExfTl9PRl9QT1BV
TEFURURfQ0hfTUFTSykpDQo+ICsJCWRyYW1faW5mby0+bnVtX2NoYW5uZWxzID0gMTY7DQo+ICsN
Cj4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDM1KQ0KPiDCoAkJZHJhbV9pbmZvLT5l
Y2NfaW1wYWN0aW5nX2RlX2J3ID0NCj4gUkVHX0ZJRUxEX0dFVChYRTNQX0VDQ19JTVBBQ1RJTkdf
REUsIHZhbCk7DQo+IMKgDQoNCg==
