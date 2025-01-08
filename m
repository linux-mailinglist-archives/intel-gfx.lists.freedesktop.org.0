Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 589A1A05C38
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B0D10E2D1;
	Wed,  8 Jan 2025 12:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNoe+H6A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379B210E11D;
 Wed,  8 Jan 2025 12:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736341022; x=1767877022;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FDVfELB3Q/tUBJvsAWUo9uwZ2UgdP8xurPQcplo7ycs=;
 b=kNoe+H6AOUzNHTVVGZwUxTRgMsc2jhaDeQAmWfKelpAofhVap4IatuI2
 XaliWpX3TD8T1lLXsIvUZfMYLBQmslKVZnixgm8Kkxg0NtsG+im4Mq+20
 CKeh8LmYwXH/3m+8+H9dwXt7LmTCC9N3UmQuuBD+7uX55+RyND0o6TT+9
 Y42hknvOuHwhGoFBICfYrKtWfJfcY+8nWjoQMhEdA5QhQ96++3VLcYac2
 UwqezpfwqQbycuT7jS4kkHImFMna1ubfS/+EeKSh1SkogXBVYIRcMBfSs
 ZHMt4bj5EBnsNKM5fuTNCogYfMlMoozoPvZqR3QP/qSvH3Dtsn8fXobLT g==;
X-CSE-ConnectionGUID: l0MLhBx9SYWWi3KKhk/djQ==
X-CSE-MsgGUID: ANDSNfKASBqGZh8nrYXyOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36785332"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36785332"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:57:01 -0800
X-CSE-ConnectionGUID: dcbB6OyZS9SyQVlfY6sOpA==
X-CSE-MsgGUID: JyroT9InQ0Ck75B5TgrGsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103311407"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 04:57:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 04:56:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 04:56:46 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 04:56:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i/J61mj0i/fg/UFasT0d37QQK5BhyFipS+OAtGdmN8+QXCIOYV0oOu8XPzNccUTgAhdEBc4tkJcWUoswR0nIEhGtnpj9Ntw5I/VP8wzL0+1u+TQs5msvzz/aWXnInfoNE/F7pf7mETbLv/KgwPp5IL+oEP1A/JLKpq/J2UWVrt0Rfob0wXFezFmTR59HRdunhQbk6fZZNeV/iZTjEwQq0XYpXr+xJh5F1uXjMXfwFVhTlf/M/nydhXpUZcYQWYtXPuNk2EWanqL0tS3l1sKQAjDE5TWEkRY2aooyfqvHi9QvPLi+X4pXU1TULTQgpgU/JWqLZ1c6oYIPK43pxr0wXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FDVfELB3Q/tUBJvsAWUo9uwZ2UgdP8xurPQcplo7ycs=;
 b=e+40m8hjxF2v3xO4T7zYJ/Z/4z3PP9f/usnj3Fg5wUh8cMCN32+uN62eZQiymRjRPHdrKtob0YrA61QEefaeIYWnBRg/x9YTqLGojDoDzFK+mzHxnzFierqJZuCzclpSvF++V2PekEELpgYoaOa7F6KWlijAnr6YB/Twwk/l7jbuV+xrG9Jy7JyIDGyU8T1I2MTEQIo/2yvhscmA4JJjrEo8ixCg0ta35S8/3tv+zwnAxO427TuifqM41Y2LrLL6dd8FiFeUM32Y1GA2oXve3KIp/3D4hrAqnUXYzsRhSRpB1s3u8hRyBIX+bRYhOXIQ/EpZk8PaSqbWFEXaGBhTSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5120.namprd11.prod.outlook.com (2603:10b6:a03:2d1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Wed, 8 Jan
 2025 12:56:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8335.010; Wed, 8 Jan 2025
 12:56:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v3 3/6] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v3 3/6] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbX/SSpZ2/1PeeMkqN3SdcMpOHyrMM2Z4A
Date: Wed, 8 Jan 2025 12:56:43 +0000
Message-ID: <94d55f41e02539bb81aca81d2724d779d7d2de55.camel@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
 <20250106041516.924101-4-animesh.manna@intel.com>
In-Reply-To: <20250106041516.924101-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5120:EE_
x-ms-office365-filtering-correlation-id: 1e3662d1-86d1-414c-8dc6-08dd2fe3e73d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bnhLVE5OYWFVQm94eGRPcEJ3dklrOHNxSWhPMXZOVzg2Q2tSU3dOY1loSDVt?=
 =?utf-8?B?cm1uY2o1K0cwM2dRbFlDSi9lclFWcllCNnRWL1BhbWVMMHEzZ2dPZFR1YXNj?=
 =?utf-8?B?OEZLNGFoY09Pck9rMTRBcVh5ZE5PN24ydG9EWHVPcXdxME85cEE5K2tZSVUr?=
 =?utf-8?B?VkUwQTR4ODRiWGZLTkcyKzlGb3pzYTViUFFoS1ZOd2JDY1BiSE1XM095VWpH?=
 =?utf-8?B?T0tnUnhidE5FZEpLV3FQbEpBaDFIR0FCd3piWkFRUlRVQ1NCL0RsMENpaG4x?=
 =?utf-8?B?T0tlUkZMK2loR25xaUVFVUFmT0w1bmozTVYvNVZOZnBpUG1YbjFiSkIyUmFI?=
 =?utf-8?B?TTdiWEZoa2pXbXNFSnp5S2Z1b2k4aUl5cjZEbDhObUJmTTJZL3h2bUJ0YXdO?=
 =?utf-8?B?bXpPeHBOaDdzUjFSN2RUeFlYd1hrbjRJRmhkaXlKbGNKQko5Z0VkUEIxMUdY?=
 =?utf-8?B?ZVJRL3NSNDJjQ1hDdWNsT0l4eDBqcGpUNEp3R3BHZXpOZEkxL09wV2FmS3FH?=
 =?utf-8?B?UkM1bjBZMXNaUUV3Y2FiMnA4bjFJb3hGMklNUmowVXJ3eEVMQ1Y1ajJ3dlpI?=
 =?utf-8?B?eWZsRTJsWmpkb2RDclM5NWo4Tm4yRHdVL1hwemhTMnpSRGVISEpUWXovOE1k?=
 =?utf-8?B?Q2ZmWW4ybmRnRmpoV0FxZlZYR2g5V0h2YUUzZmRSTWU2S01VTWpLWFczQlEr?=
 =?utf-8?B?bW5ndHd0aXFXSHBXZnhKc09Fc1dLTjZqVVRrTnlxMXFGNndlN1piZEx2UUky?=
 =?utf-8?B?WlpjNXFOS1hBbDZkOUV3bEVpZ3FlRndyaGFXZnRnTVZ1YzNBdGJHN2FEZ2pC?=
 =?utf-8?B?Nk1EYTJncWptMkRwci9jZFdSNzByWWxvVGJYdEJHWVpyYTdIT3ZTTHNBSnVW?=
 =?utf-8?B?aGRUU0FWVmEzZUcvMi8yUUZ3UVhmdENneVVkQWZzVDhSOFdXS1BoYWVlUXE0?=
 =?utf-8?B?eFQ5bEFkNGR6SGxIM0hROCtwYk4wMmRFa2lRQnE0clpoUTB0bmN0RjE5VkVN?=
 =?utf-8?B?TWswV3lDcy9SOTVqcGtZWkxWWERqTVFhRm5yVWxmbmZnaytTWVQ1OFhlK1NT?=
 =?utf-8?B?REx1bW5CYzVvWm40OEthczhoalZXMkhwTk5TWURFQUJSVlVLZmI5SHQ2SWhW?=
 =?utf-8?B?a1p3OEFDTmc0YjBTVVRSU0xscTVJVm45M3pxdGgrQVZPWXBXYnhGaFh1c2NT?=
 =?utf-8?B?Y1lFeGxLbzNvRjNkQVRmM3h1VVVIOW82alhNL28yaVJCd25xbXdPeko1YjEv?=
 =?utf-8?B?QXgzcjdhWVlKVk8xWGdmb3h4SnR3dTVtZjRkR1hoWGpXd2V6YzJHMzFqazRV?=
 =?utf-8?B?UWhRYjlYU3RBb0I5M2lJRUdDNHVOeVBCM0dvS3NGRkV3aHpmYjJHeWpNRWF3?=
 =?utf-8?B?aFRtZ2xzNjhkVE5BMkpuem1ndkZRdzQyZEY4eDRGcVlZS1JENU1nSnJXSUpy?=
 =?utf-8?B?K2hmaUluU3RhbWpDdkxTOHVNNTh1K1dhUnNKdEtDbEJ2TDkxLy9DbVFaa1dV?=
 =?utf-8?B?elhzUmJVN1J4ejAza0w1eGJaVzYwNmc0OXpmMnBmMHNkUHFGSENaQ2dIRUY1?=
 =?utf-8?B?dkJmd0FBZG9RU2ovZ1dDUythaGR5WlZXbC9tQWpVeHlLbC8zbkY1ZmJiWU1y?=
 =?utf-8?B?M1ZJMjBHWUNtWm5wWkh1QXM4Z0NZZHNHeFRHUkU1OFprVVRPTUo0VFd4Z29v?=
 =?utf-8?B?UHJIU1FVTXVMMGJLc1dUV0NMZEZ4cU92N1paeGxSdWVoeHBkcEZBcjVOdUdX?=
 =?utf-8?B?QXFudmRyMy9TU0pTY29vdDd6bVljNng0QnFHSEhpY2c4ZXpEejJuTGJwMC9h?=
 =?utf-8?B?WHJPOUtMazFBRFR3cThzazZObHJCdXBxT1QyOEwvWEJqUDJrUUs0eXdPR1VF?=
 =?utf-8?B?RlBzc1ZCYzVHRElvbTlXMW5zVDNrS1ZBcmxrd0xRYjN2REl2VkZhQlhGS1FF?=
 =?utf-8?Q?vHRVlgUx5hf3SSAaz5u8vEXGAj6kjM+6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHQ2T0JwYm93WmEvNEVLMk5JMGRHSlZXaDF3dHJzeDk0V1QvdEtRU3IzQUhx?=
 =?utf-8?B?TG85YVB3SDR3VXI5THVzbGZKYlliaHZjaWFwSWlWQkxCTWR3aEZIdGQ0OEU4?=
 =?utf-8?B?L3lxQm9YUzZlTk5NTXBkM3cyOVYrUE9Ra2xUcG45TGZGbkU3VVpoMEZMQlAr?=
 =?utf-8?B?WmttclJaTHF6WW5OOTl3L0tVWk1TUy8xZDcyTjlxdkU0dlpZd1YrZzloWHRV?=
 =?utf-8?B?cmpOYU9JaGVoQ3NmWTVsNklUZkZ0NkRvQ2l3UXN6bjk0eHA1d1M5WDJkQ1Rl?=
 =?utf-8?B?MXB1cm1sWEVScktudzFlZ0N4Y3hxdnVyUEFoVVhlM0dnQU1Jb1lpVkRpWFJC?=
 =?utf-8?B?V0tJd1RtQmRlZ0NPbFAvZm0yR0tPSmxaQWdPcmxPaUtsalNkZ1F5K1AvcFFS?=
 =?utf-8?B?bXZjcVlqSFhSY01pWVZPUXl1UlhIZU4vM2wrMGNHTlM2RnRaaE04VkM4dzI5?=
 =?utf-8?B?OURHQ1cvZG8zZGxiY1dxOEdFVHp5ZWhnV28xd1JtZUFDbnJoM0J3MnJEZ1pG?=
 =?utf-8?B?eHF6WGRhTjQ3RHREcXdJNHlyM0l1YkdGd0ZTSElPaENHSmRrYjlpQmk4OXhO?=
 =?utf-8?B?bG5nZGlqMkdQV2dMMXlyN2dFSE9aeWp0ZTl5a1BNQ0JHWnEwRk1GdkpvdTRY?=
 =?utf-8?B?L1h2cUNvSDNBSTNKN0pQUzY3ZFdtdXhiNnlvclBxWW0vM1E1YTcycWt2bmJu?=
 =?utf-8?B?M0hpdkZZYmM3YWZUU2RHYUc5Zk1sQ0JGN1EranExY29qMnk1MUlDYThtOFl1?=
 =?utf-8?B?Nm9XNTlaeU1KSFJneUdCRy96ekFHeTdaQTJMZm9QRlAxQTdhVng0S2ZXZkVi?=
 =?utf-8?B?aEE2RjZDYlBYcmRwUXdGTmRVSHJKVVR3K0tQeTZvdHdnbEZxc2M3OE9CUEtP?=
 =?utf-8?B?cGVOSWlPaEhteGJXc3g0cXQ3UWZhdEtOMjl3RStleVFRQUI3aWJSeEpyT24r?=
 =?utf-8?B?ZEVvUXRPaUR5c1MyUGNGMkFxQVQ3dkNQczBXU2o0c2VRWHJDVFZ5cllaZjFI?=
 =?utf-8?B?eUxpQTNDSytMZkdKdVlDVjdSTUFYNXVVV1l0MmNvYUZZMFo3b0g3ZDlpbEQ5?=
 =?utf-8?B?RXVSeTFpdHhiZmVlbElJM1RhTjYrOW9PWVc3cm9UZXBtbzI1ZU50MHZFTWFB?=
 =?utf-8?B?Vmk4UExERnEwNVR4TUh3MDkxVVlTS0U5aUFJTVZLUVJhRU9ybFgvTkhJYXFK?=
 =?utf-8?B?QTI5VWxVTDR4VkFTWUd1VkppQk4zVHZrZkhCOWtJdGcwNTBHdzNvMStoU1du?=
 =?utf-8?B?amtaRkZTMVEwZzRnTGhqT1BtT0RvQ2kvMHJmK0NkaVZpeG8zWkdXbDJaVElO?=
 =?utf-8?B?WXdSL0F0RHFjYkxLbmFYYzFpRU5LeTVHSlNmdVRDR3l2Y0dUdytGc0ZtY2dI?=
 =?utf-8?B?a3gzVTVlVXgxbC9DOGp5eW9JWllNLzhqR0FsRnNLbWVKaWJXZUhUM3Vuamlv?=
 =?utf-8?B?V25JdWlOQWlxeWFaSlhqaTBGSzRzaEhjeEdLZmJYcmVVQlFyb2c4NkVLZGEr?=
 =?utf-8?B?aHJSVnBDS2V6eEIzRGhuUVhnTUNLNUVSWVFMVXZ1UmhrZGJiTVcyYWxtUVcz?=
 =?utf-8?B?ZnFxTGNNWjJSYVdVSE1QK2NPWFg3RkpZblp1am1RTmZHazhkb0ZUaXFBdmFs?=
 =?utf-8?B?NmsyYVRoNnVVNmtSSnJlRkcxZk1wZGpRK1pXSGdneXBTMDMrK2NsS3VzVkQ5?=
 =?utf-8?B?WUhtTlV2YW9GcFNGWEEyb0VtRjBWYXFCWXQ1UjgzaUcwNUdnK2dNd2h2U0Ex?=
 =?utf-8?B?eExLY3VJZlB5Mm5hMFJtY1JQRjFSK0llc3pjc0dxOTR0Z3ZPa3dKNmR4VVpT?=
 =?utf-8?B?NTYwcHRLYUJwTERtTm5UQ09hbXVzdkFMR050cFVEcEUvRmZEU3grUDRCb3Zz?=
 =?utf-8?B?Ym5Ma1JQZUZQSTRkSVNKNXdpQjVqSlF6M1pzL3lvcGZ4V3ZCcjZZQUNKQkkr?=
 =?utf-8?B?WmpwNUxHVzlCWG9XZldMdGpQRzA2U0JEd1lORlR5QkVTcEhLUmRQSWJxM2hO?=
 =?utf-8?B?Z1BudmtDQTd1Q0I3OGJTeitCV1NudDZIKzIyTXVLc2dBOEE2YVB4VVRmU2E5?=
 =?utf-8?B?UTdXOTBWRmQ1LzBrcjREa3dHdXZ0RGwxc01JSngvV0JHeGpVY1h4WnRoMXY2?=
 =?utf-8?B?N2ZQVXc4T1MrWHF2ZVVZNkpLaklXMFhsbVJZNjZJM2hLaGNIL3dvbGVIbm5H?=
 =?utf-8?B?eS9KbWltckpjTEkrei9KOW5GKzMrbStqQnN1TFp3MVR5NXRYTmtuUXFaWFo5?=
 =?utf-8?B?UkNiZXFLRVZOeVR1R0l3V01tbnVBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B2FA6DAD1CF4740917876DFBC6F08F6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e3662d1-86d1-414c-8dc6-08dd2fe3e73d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 12:56:43.9856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n/ZBlht3ptL7twIR2EwIq67hQliscgNRem5D1xpCq11U3tcYOtIYs1Vs+MykJ38y5cYSa+vtDODwQn8qT1O2hGQ/vx6g/UJR4DPZ36xNBgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5120
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

T24gTW9uLCAyMDI1LTAxLTA2IGF0IDA5OjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBGb3IgZXZlcnkgY29tbWl0IHRoZSBkZXBlbmRlbnQgY29uZGl0aW9uIGZvciBMT0JGIGlzIGNo
ZWNrZWQNCj4gYW5kIGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNoIHdpbGwg
YmUgdXNlZA0KPiB0byB1cGRhdGUgdGhlIEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMgfCAxNiArKysrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmggfMKgIDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmPCoCB8wqAgMiArKw0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMN
Cj4gaW5kZXggZjMxZjk0YTljOTlhLi4xOTdjNjczNjNmMGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0zMTIsNiArMzEyLDIyIEBAIHZv
aWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+IMKgCQkoZmlyc3Rfc2RwX3Bvc2l0aW9uICsgd2FrZXRpbWVfaW5fbGluZXMpOw0K
PiDCoH0NCj4gwqANCj4gK3ZvaWQgaW50ZWxfYWxwbV9sb2JmX3VwZGF0ZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICsJ
ZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29k
ZXI7DQo+ICsJdTMyIGFscG1fY3RsOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
IDwgMjApDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWFscG1fY3RsID0gaW50ZWxfZGVfcmVhZChk
aXNwbGF5LCBBTFBNX0NUTChkaXNwbGF5LA0KPiBjcHVfdHJhbnNjb2RlcikpOw0KPiArCWlmIChh
bHBtX2N0bCAmIEFMUE1fQ1RMX0xPQkZfRU5BQkxFICYmICFjcnRjX3N0YXRlLQ0KPiA+aGFzX2xv
YmYpIHsNCj4gKwkJYWxwbV9jdGwgJj0gfkFMUE1fQ1RMX0xPQkZfRU5BQkxFOw0KPiArCQlpbnRl
bF9kZV93cml0ZShkaXNwbGF5LCBBTFBNX0NUTChkaXNwbGF5LA0KPiBjcHVfdHJhbnNjb2Rlciks
IGFscG1fY3RsKTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMgdm9pZCBsbmxfYWxwbV9j
b25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCQnCoMKgwqDCoMKgwqAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+IMKgew0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBpbmRleCAyZjg2
MmIwNDc2YTguLjQ4NWU1MTE2MjlmYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmgNCj4gQEAgLTIzLDYgKzIzLDcgQEAgdm9pZCBpbnRlbF9hbHBtX2xv
YmZfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJCQkJ
wqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpjb25uX3N0YXRlKTsNCj4gwqB2
b2lkIGludGVsX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKg
CQkJwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiAr
dm9pZCBpbnRlbF9hbHBtX2xvYmZfdXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
DQo+ICpjcnRjX3N0YXRlKTsNCj4gwqB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKgCQkJCcKgIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKTsNCj4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggMzZhYWE4MmY0NTM2Li5jZmRiZTgwMTNkYjYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAt
MzUsNiArMzUsNyBAQA0KPiDCoCNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiDCoCNpbmNsdWRlICJp
Y2xfZHNpLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2F1ZGlvLmgiDQo+ICsjaW5jbHVkZSAiaW50
ZWxfYWxwbS5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9hdWRpb19yZWdzLmgiDQo+IMKgI2luY2x1
ZGUgImludGVsX2JhY2tsaWdodC5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9jb21ib19waHkuaCIN
Cj4gQEAgLTM1NDMsNiArMzU0NCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV91cGRhdGVfcGlw
ZV9kcChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJaW50ZWxfZGRp
X3NldF9kcF9tc2EoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7DQo+IMKgDQo+IMKgCWludGVsX2Rw
X3NldF9pbmZvZnJhbWVzKGVuY29kZXIsIHRydWUsIGNydGNfc3RhdGUsDQo+IGNvbm5fc3RhdGUp
Ow0KPiArCWludGVsX2FscG1fbG9iZl91cGRhdGUoY3J0Y19zdGF0ZSk7DQoNCkkgdGhpbmsgaW50
ZWxfYWxwbV9jb25maWd1cmUgc2hvdWxkIHRha2UgY2FyZSBvZiBzZXR0aW5nIExPQkYgZW5hYmxl
DQpiaXQgYmFzZWQgb24gY3J0Y19zdGF0ZS4gVGhlbiByZW1vdmUgY2FsbCB0byBpbnRlbF9hbHBt
X2NvbmZpZ3VyZSBmcm9tDQppbnRlbF9wc3IuYzo6aW50ZWxfcHNyX2VuYWJsZV9zb3VyY2UgYW5k
IHBsYWNlIGl0IHN1Y2ggdGhhdCBpdCBnZXQncw0KY2FsbGVkIGJlZm9yZSBQU1IvUFIgZ2V0cyBl
bmFibGVkIGFuZCBhbHNvIGZvciBMT0JGIHVzYWdlLg0KaW50ZWxfcHNyLmM6OmludGVsX3Bzcl9k
aXNhYmxlX2xvY2tlZCBzaG91bGQgc3RvcCB0b3VjaGluZyAqQUxQTV9DVExfKg0KcmVnaXN0ZXJz
LiBXb3VsZCB0aGlzIHdvcmsgZm9yIHlvdT8NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiDC
oA0KPiDCoAlpbnRlbF9iYWNrbGlnaHRfdXBkYXRlKHN0YXRlLCBlbmNvZGVyLCBjcnRjX3N0YXRl
LA0KPiBjb25uX3N0YXRlKTsNCj4gwqAJZHJtX2Nvbm5lY3Rvcl91cGRhdGVfcHJpdmFjeV9zY3Jl
ZW4oY29ubl9zdGF0ZSk7DQoNCg==
