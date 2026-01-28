Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFPCFqnyeWns1AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 12:27:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD1BA05B5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 12:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F22F10E6A5;
	Wed, 28 Jan 2026 11:27:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="St/nDerl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C272D10E6A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769599654; x=1801135654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SnizYuZC9rma0+tmjqzcb0woTbWYQIyZhu7gS8YKgoc=;
 b=St/nDerlG+xDIG5aWpvjmR5ude0OM1Es5xTzocRb9pKq14UZbFog9LUy
 0jaNcYeqbW96ySuqxLEMai4x9kdpvq/XEP/N9c1DLRQCWXNaAJ4FeuAKO
 YrgzhzbCc0vVvo0V1c6LcLoKuTwVGLLKxdwEK7XczuiIfw9/IQFkw6FXQ
 uFqw5P+8k8V2m0/s3/u8B/va41anamjdPimXp3qKWud9tjFWAJA1Ym/2i
 JAb7ie+ehNOAgP/8phcTWQkuvnFy6YLAUlmJT+OrUSThdU3jUrg33nPBc
 V76nuK0IpiYWOPy+csxcfm3vnpQbSkXxRMH0KCtgZ4cYDCAK15Z8UwYsx w==;
X-CSE-ConnectionGUID: IAEEAGPESWa4IDL+n25yaQ==
X-CSE-MsgGUID: OxQnxfc/SDOjXUNFRI2b2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="73403577"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="73403577"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:27:33 -0800
X-CSE-ConnectionGUID: GBD/kqPATwiRaYw6Z2b6bQ==
X-CSE-MsgGUID: lLzGhK1+TKW7Rn1TsSwDaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208479955"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:27:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 03:27:32 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 03:27:32 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 03:27:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YA6bKvM/Zia3ufOdxiKVfFhPOIM9VxliN+Quh872qVtwZfN2qGcoOTQSoilT90fgu+Zy7v/uTSXDh73QWT596c1WKlfHGN2OUyrZ2Mo/aPnNUJ4hu02rwTeBZSgn2m+IBKmRRFXwnN/UHchn6LwDhjgJ6K8BKrl6K1V6WEuizhBUcDICXYrfGyYbhRgpeA2d4/G5UizaRRWK2funVsxkLrShdZQphuqXnfAJpyidtd244s4BdEHdLnNTl4lwh/IP4+YeTd719dCg94/Dl6qDN8h0I1XHFfrKZ1WsGuXeJG9xTZfbsdQ9aYERLc+sfaskSc4Tezfg2r15ZNMuBbrGLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sIfOPOwWLftNV+iQDVJGealtbwchdhY2Yye7Zl8XZcw=;
 b=Hul9lB0rmK4itKTMWPeIKDzY/dqjI3yZKn6SN49gu/Jsp/+waHZFvTz4k2Lg5QhhA+PW+epauFjvMARwRwo3gTLtQzrJUaRpaV4yNssE1TZiYhwy6I5bokpDO1gYrAt2soHaE5gYcf39fbLmER3PgtTL/SLyjedtQvxd0cYkbyYkEDHcJjoxFuiOVYk5EWyJkg2eCRn0UfPlI4RkcIFZv3fvr9HweYGGwyOG+CaQxk4HHIGYa6NZp69nAU+Pu6uzSnPemrSiahxozM5HbtXjmaKzXBMGXF7lNTGgJ7+Ena96eLJQvBo+OFMS5uOikOFYjK/XwXTZ1tZHh9YihZTQHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 by SJ5PPF7DCFBC32A.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::839) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Wed, 28 Jan
 2026 11:27:25 +0000
Received: from LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5]) by LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5%7]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 11:27:24 +0000
From: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: Prevent  heap overflow in i915_l3_write()
Thread-Topic: [PATCH] drm/i915: Prevent  heap overflow in i915_l3_write()
Thread-Index: AQHckEPsbvwIzMiXL02TRjisFcpnWbVnbe6A
Date: Wed, 28 Jan 2026 11:27:24 +0000
Message-ID: <LV3PR11MB8768CDDC426609842C4AB789F591A@LV3PR11MB8768.namprd11.prod.outlook.com>
References: <20260128051142.3006076-1-kaushlendra.kumar@intel.com>
 <b0435f60602510e61ba04385e378f2caba9ac366@intel.com>
In-Reply-To: <b0435f60602510e61ba04385e378f2caba9ac366@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3PR11MB8768:EE_|SJ5PPF7DCFBC32A:EE_
x-ms-office365-filtering-correlation-id: 939a8bc1-18d1-47a7-760a-08de5e6035b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5CBIJY/wDIim6P1LBoynE4wAMIleKaNCHU+eKE11D5B+gnDU/Hq2/ZTHlgVR?=
 =?us-ascii?Q?bNFtKOsV4QlFucLlwthpLLufPf3Y28eqemlwo+hRIuhgbRA6Tttb1ndTDB9y?=
 =?us-ascii?Q?LnTsWfnOAWq172/AEeXC3tvYD93vibhnggWXt/7rDo8VJaM1dzLRISdt97ug?=
 =?us-ascii?Q?A4pqV9fmR/09ZDzZe2b9BXp/EBeSQNuIKkl9uW2DjYT9aemFyJ3XgBvGjjpc?=
 =?us-ascii?Q?iEyowPkmsYWFZXA0fFlaIi6ckNGEAUQ2l1kozMUaLu3apboxgF/JZfi4zhcu?=
 =?us-ascii?Q?4H+L4BulEEbEE+vylopk0Ucb+k5X0hoCoiKbvkMd+PbzagfhL8L+uxiCF9B7?=
 =?us-ascii?Q?BF37/dDsLEmUPd2Oa14ayjMHp34wJmZoXNlTPoLU4bQj8t1ftTzrJ+/KO+8x?=
 =?us-ascii?Q?RuhlbOJFylhkrmusGL9Ayw/vgEYgl2rdXh1Hy0riLU7S4CmV9SrseQf/OhoI?=
 =?us-ascii?Q?tIIMup4sdDhNc3rLdy/4yLDkxcjjj0dGP9+gErkpsfV2wWkQDuW9w21m/vVc?=
 =?us-ascii?Q?P4lLm19Jgb4bLWnfUiRXUZack0t+E6TMj6K5GfkmyZemY3DDyMHMcnVW1MsK?=
 =?us-ascii?Q?88hCyPbWBYZMG/ooj/BqXwQSi0gSnSOB/+IXvGg49KZ4OyjINOmdG5uK62nq?=
 =?us-ascii?Q?FWlPaJbotmwLIxGjS6xFQGge6UQLYGe1KN9LQ1aNFQ3xV1fGpkqcY2dNzp//?=
 =?us-ascii?Q?Kw23BHm1Wp+DX6DoawfpEgiULb9p6bhsXjzGf/iPJC+Kwa0RjuucWPX0ImkU?=
 =?us-ascii?Q?WzGD9qRuK5JdI9LNuNtl7pye58IWc3k13xUgl2v1hO+wP5ZhGYh4/crvNfD/?=
 =?us-ascii?Q?JNFryJ3/BMp+XI74Z2WAiJPokeoufZO11hbNOWqrHNWX1njMEiGlBlw4y7+j?=
 =?us-ascii?Q?kkm7NWdT6mCXLPPoZpAztGxy6lpYRPfaTCD3YnujZBsbTsbK96TK1R8rcmzu?=
 =?us-ascii?Q?n8I1Tav9RFvrhirouDz+eB4n4yfkMERDVRHjDlVnxTB8dmskqczeT6BouhUC?=
 =?us-ascii?Q?AVq/2Sx3UiID+ToRNAzG3dRMvz8DiwjOau+9DJydfVP1XWGQ6W7ok/aK4bWt?=
 =?us-ascii?Q?ZXL09BdPUDQr+aoEwso5Q4VzKRSHrwHruIQcLEmiRFqmZPu/DxsmwBrUc2mU?=
 =?us-ascii?Q?8bSFFZFbMTfpxIloAnoupqJXvPvdBA2xmKZB83XzYjd+C9lu1Aljz/lxw2qJ?=
 =?us-ascii?Q?w65PwIuDUpBWxQw+dtWTCCZYdhSkBWe4vkKrGVnsN+Nr/PskDtlYiX95lW8E?=
 =?us-ascii?Q?7VqaLwMcdulbYqJhox+6/ng+D02IeioHnI9ahO7EeMFNYJGgjcLRTRTGFt+2?=
 =?us-ascii?Q?i68/u0x8DOVrqVEoLWTbT6ViLdagBHthBttr6JgWGq02Y4HaWjd6LGAk1rHl?=
 =?us-ascii?Q?ojy/h5jPMFXGSYzebC1F0LP+eLZQzjLM0UmA8sekYlqnTJ8rNilKkClnrvcs?=
 =?us-ascii?Q?6HQ0r5uNlBptcksLVFI5xgwohTgghZS8/JleHRXbzBRxPrH4g2PUQhl2NCWl?=
 =?us-ascii?Q?VTeTDy0vFmiTWUpOPfoCuM4Bm0ygoxsQ+m4i6GMGNOpsH3GoQNJgOkoxaCF6?=
 =?us-ascii?Q?sFUojHpoUXb3rp6zP7Iwaw6ugSUjGPsgNoGZXD2DUHxE2V1de4nI6F4Jdsxt?=
 =?us-ascii?Q?oJv5UruZY7Gbg5cZM9tvwf0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hTYyM3gy/IBxT3EKwQQj1VkGKqWtaLiWJApys/sm5xfdg+qlyPjZh9bZgr2V?=
 =?us-ascii?Q?hTjf8949u6IOTx6K0ouDso7kPqlWQw2iJErArk9dyrUihLECw10886uusNqy?=
 =?us-ascii?Q?9xy5n0e4dor5T+V9IrwqaxrZbfqaPr/5MNNcEMHdbSR8o8roX9KC0MtZL6Nd?=
 =?us-ascii?Q?q8Q9yTJ9n7eqbH0hUxWIewxVxfrIfRhy6f7Yz2a2gZX6m3kPyaTO8/Zqz0Lh?=
 =?us-ascii?Q?HANg0JmgT/bg7Jh/cYi1PfAp8sNoQPJbEeCYK6hNx0BU4k5VDrJfphf6oXoh?=
 =?us-ascii?Q?1kfDisKe08ccZrrEMA5Ns4uXDaGtw/AsHz6GuZNtVJrbsa7vIrU3bfb6bsdW?=
 =?us-ascii?Q?UxIgL+EQr8OY/8NKM5C2kIt5hEcJt8jTKCdFEnuRz62FDlqc84E0w3YC4YsR?=
 =?us-ascii?Q?+pU0SyBFHo6dek2qx/yo2Wy78WScTAcztnI7HtMZ2b4HPb9QsmpWZPqGrCMJ?=
 =?us-ascii?Q?7Nyuo/T64kTPF++Zi9uHp4hidjC7zTEllac3iede77eAWUKdIlgvAqhs0CGM?=
 =?us-ascii?Q?mOBHXVR+V5NHki+cBWkl4USRfau5sdfG94ppvWK+sTYUqqAzXaxrelieo/BA?=
 =?us-ascii?Q?aIapReeMAEUGziqhyH2K6SnpxsvxXRFis0d3PVAKoCrOJmb8YXSTsWP9T2HL?=
 =?us-ascii?Q?XEXfDJ/0Rn8hHGPvQ0JTPjQ+vi7KKrX+Lhojq2IDa1PTIT2aIxKkcbaOAS81?=
 =?us-ascii?Q?aLhOpzbN6KdbW2C76Yzpl26N0YDHlBg6WkT5D84Ue2n3uCeYC3iRHX/ZAWnS?=
 =?us-ascii?Q?NLrL3Ep8tKgN16GCJeYdo88HdrS6L5VTqDzoiwfnobEC/3213guTr+a9UNwY?=
 =?us-ascii?Q?bM8ziKQWyHnHQIJ0t2a6DW2kOoj9yfLYv9celWdBMVHxccb7CfVbCkYki0S6?=
 =?us-ascii?Q?3Jl2/Fz1VSFunFcyvMcUg+roQDD/UAP2grPg9Xd4OSkmxAio3RYDSYH0bMaI?=
 =?us-ascii?Q?lxfrknbQEvsOfHGovtcL0VV8O+frOxzXkh4RC2roKt/rsz/7saHsrxU+Z78W?=
 =?us-ascii?Q?bw901q9D9bz+NAujpIJmmAZ4FW15pyYAIGLJV+0JAQszq5HcTdJIlF0tRTPs?=
 =?us-ascii?Q?10GmCbTKvE5BGLobb40n2mIrz3wic3hKdaA96+qES6ksqyF0U4FUCSSAbsiS?=
 =?us-ascii?Q?m3GjkfM4wq+9KAvKBOuEJ+Vuxown15nmJCuM0b35K8CDkrz2EHZTANt66gRh?=
 =?us-ascii?Q?isE34Im/SrpJidhEhccJaJwNMkJJFnLWiXv4DLkWVh3hSwMUNq5k5fOIFmjj?=
 =?us-ascii?Q?dcoco+voK2idbMNRSz/ohQ2Hs8yckSHmxU3z6Jvg8/NnEpu+8iQ5+QhW4qHf?=
 =?us-ascii?Q?5oQJ2q+VHy3W5ZgO2s07np+erCKjzFo6zFxZyM6u0hdIhMvxTIxWCecS8Ibi?=
 =?us-ascii?Q?DKtIcb4gcd2dYtR6S0JSw2evJKkegpjD7hW/FVfo7UMmDfpr1JL02IJ3n/+b?=
 =?us-ascii?Q?txn75to/aEySwecCz/oAEVgsbJyzXEYkRiP9HspNDvIBx02yVEYDPhqbVF/I?=
 =?us-ascii?Q?Wn5Im4Xc6VJxRdJIEGBJwT5kQ7+fr/z3++b+RCbCpzKQiOR9YzSOOvOLVuWo?=
 =?us-ascii?Q?J50moUWTIUpvY3gnpTAANmLRkVwBCFAYPm86w2ubpYJQKx3Fw7QY/4aRwk2y?=
 =?us-ascii?Q?bpUUlIl8e81AzMtPNL9YaRBltgmyWh8SVH7O3NRovBrRr5N+LWGpHDmQa8YX?=
 =?us-ascii?Q?fYTuRtxwM6RS3XxRGkyatr+QtNbrllN5A5cnLDuE+DSVrWNS/qD/HeeXzUYB?=
 =?us-ascii?Q?X+K13YmbUf7LXx4t22m/fyk5UliZO+jYrKwcPP94GPlcitrve7/+CiK73qWy?=
x-ms-exchange-antispam-messagedata-1: mM02WCra1FT9Ew==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 939a8bc1-18d1-47a7-760a-08de5e6035b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 11:27:24.3786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HH8ZS+YvMQHhRWm182SdO18w6PcCfG8nTsN0UMb0dr7GTxGD2k4UPwzFesicXHqZUNE+beJ0fiwQ4fUkb/eRL8EkBbjoExEGNDEGwnNKfZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF7DCFBC32A
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[kaushlendra.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,LV3PR11MB8768.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kaushlendra.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AAD1BA05B5
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 28 Jan 2026, Kaushlendra Kumar <kaushlendra.kumar@intel.com> wrot=
e:
>> +	count =3D min_t(size_t, GEN7_L3LOG_SIZE - offset, count);
>
> This may make count not be a multiple of sizeof(u32) again. Note how=20
> offset is treated below.

Thank you for catching this!

You're absolutely right about the alignment concern. While technically=20
in this specific case (GEN7_L3LOG_SIZE =3D 0x80, and offset is already=20
validated to be u32-aligned by l3_access_valid()), the subtraction=20
(GEN7_L3LOG_SIZE - offset) would always yield a u32-aligned result.

Anything I am missing here?

BR,
Kaushlendra
