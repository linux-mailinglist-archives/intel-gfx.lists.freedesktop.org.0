Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D8ACDF79
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 15:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F4910E795;
	Wed,  4 Jun 2025 13:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwcbU89+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE0110E768;
 Wed,  4 Jun 2025 13:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749044506; x=1780580506;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TvJCZD7rcq1cYrGz/2B+MNmhU5ZrK8taKqwrX2yhzR0=;
 b=OwcbU89+D1gq0H7KyUgEn7bHWeId7AbCZh51xvrtPMxUhgcQY+rOCAHa
 h+y5hPT/vYQPft704dCLMu6TFr6MBrf5kE78SQq5YoAGNcTQHy6iCoHRi
 apqkj6Sw568NccXSKICUZyFylvNahku6/6EXE0GOJr5fdsOewYZiJLqMS
 UXjoO6rOz7cz6h/e3lB7YExbzFLlEW+2WunUspPbfQ5oJJgJCWly9tfDj
 +cxbIJPwk/neIi01CCcjClPgx1XvflVnhxtLoWrEo99R9h+GBpEBfBgCs
 cmJrTjcIwPvAMRiS38kSKRyWHnkJGlSnMMvOtR8L67ImNzwbqpQv7Y7c/ g==;
X-CSE-ConnectionGUID: 93QYTwb5Qr6Jjyfxyu9P4A==
X-CSE-MsgGUID: i5qG4I+wTaqNOlww/ZgtnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="61392376"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="61392376"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:41:39 -0700
X-CSE-ConnectionGUID: 6Mt5ajIgRAyrPomye42Qbw==
X-CSE-MsgGUID: YfCl79Z0TpyDYS42h+7Dng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="150469229"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:41:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 06:41:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 06:41:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.45)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 06:41:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FXGHxGfgN0cApmc8OoqmzXPlwpnQDq1b8WvYQiuVcvVRa+Gf5PlDjCrM8vII//0UiL8Z4KnUo4qEsu398cYECHDg2pRLS+9PH8g5yIdm9c7vaFt3rEXHHvF7XPFSwmEVRyHfy2QbvMSyBYED59xS6uuknK949ut1fO+cfeBKu15BH6V+/6EqTEtXSjV9NiYZR3hZEENa+hkxwOa872PACmuW5T8+xA1Ftan9KfPb+sQlnLf82wwzTbs27CRg1Y6+d/IGhxOcskXXLvR8BosssXT7N3p6Kg9cUhr4szg42kPgEF5wYPY5H5zQMnjVH6qzSYeP/+5XkpO+A/cpvsnr/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TvJCZD7rcq1cYrGz/2B+MNmhU5ZrK8taKqwrX2yhzR0=;
 b=J1k6OU8E54rGBnMqX8VkmiIU+PRrznMIq6akD0FYdFAl+tqllDRpl4dzVupC5G+lvf7JZx7UqkLeeoi6frht6us077Mjz89vhOw7Lw5FsJ4vI/4FGtSfM7qDXvAj2ivCauwMXWpLCg1W0J6j5ZX4WKt6wYBBWa0Qg1Fq8Q1+AnxnIqOOhlQB/An47+aEbSr2Zx3MhJTLV+khazBD0vNYyRHtzw82ejr44op92DAkj+5m9FtuRfWJCOaiSnJhypaPiH/TGyO6Hz3HUoM7yeayARvsCAmymUHdt45BFLOm7N1RTlZCUCGorQ3H/LBsRuLLiMHJBKVbHCBdY6+sWjRcNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW4PR11MB7008.namprd11.prod.outlook.com (2603:10b6:303:227::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Wed, 4 Jun
 2025 13:41:30 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 13:41:29 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
Thread-Topic: [RESEND 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
Thread-Index: AQHbzulalG6lzFNYH0qvnHlMwEra/rPzDJwAgAACTwA=
Date: Wed, 4 Jun 2025 13:41:29 +0000
Message-ID: <28748dec5b299345bd19304339e48cdd4c7bc06f.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <a866641bff364dcfcaaabaa1d53c4a8cfa94ff3f.1748337870.git.jani.nikula@intel.com>
 <c8088aeeee1a64fd66c02eb1e3116b02b39daced.camel@intel.com>
In-Reply-To: <c8088aeeee1a64fd66c02eb1e3116b02b39daced.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW4PR11MB7008:EE_
x-ms-office365-filtering-correlation-id: e7cb43e9-bd03-4dc5-7d04-08dda36d82d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dlE4ZmtzeU9UaDBQYVFrZVRscGJEb1BxcnczSVRFRWxXcVJjY0hYeGdnQUFL?=
 =?utf-8?B?KzRjcXpnNjd3L1Q0QVhVcVBYZkpJTnJvS0tHNFFnNWVGdEprRWZpdFBnekxC?=
 =?utf-8?B?SUxCTExWK1hKU0pMcEg1ejc3OE9qVEhBQk9SZHpqNXMzS0VodG4wOStqQng0?=
 =?utf-8?B?NWl4ZDZkM09tUWZZSDk0MHZLR29SdlF4RDNoWTBQLzVHbnBOdjUrVFZrRVha?=
 =?utf-8?B?emZNSHZmaHh3WHRjbFlyd1dWcWpyU2VkQUE2eGVxYmE1cU51am5GVmtTcUVX?=
 =?utf-8?B?VW5ibVdUbWFjVWlNaS8rU2hQd0M4MWlVRmlJNkREcTZBY1ROc204d1NWTkM5?=
 =?utf-8?B?cVJDc25ZTWZKVjhRb3FFRExGbEQrUzhDRForQXk0ampBd2g0NnJweHdWK1J3?=
 =?utf-8?B?ZXhGOHgreDZoS21NVmNHb2IxZFkzbER2dWVtaG5kRk5ockNnbys0Wm5XMW1B?=
 =?utf-8?B?N2JTMHdVYzREaXVPRlRuR200KzBMMnp5cVE1MU9vdVBYeWVkTXFqZlY1RkRn?=
 =?utf-8?B?L04rNnc5blZMUkt0SytVRUM0NFZqN2YyMURaRWFqeU0vUGlMMkY3c0EyRng5?=
 =?utf-8?B?U3U5TlZ0K241bXVWV0xsU2x3WCtKYzEvczJJekVEbmllTHptSlMrRGtQMTJZ?=
 =?utf-8?B?WHBzUm1SSHYwQWVYektwMGl1YjB6WGJTNUZtSlJzT0wwTUszMU8yWnpIeGhD?=
 =?utf-8?B?bUFRTnBHQ3pLM3paOU5hbGQvdTRIRHF3RlhuQ2NHdmZ0YWtZejRPUTFXZ3ZG?=
 =?utf-8?B?aTlLZnpFVFBaWSt3dDBaS2pVS0ZXSFI3L1lnazVnQXRTODlyNUxUdHdmeE03?=
 =?utf-8?B?cnY1Um1ZSSsxOWw4RUF1TmkrdjVzb3ozL3hRYnRWVVFXRW5vdGYrREE1VnFp?=
 =?utf-8?B?RXFmWUxHTE52MFdRbmVnbEZrS3dxb0Ztb0hnTU00MGVKUnBHRDY5bytrcElu?=
 =?utf-8?B?NU8ydnhIbGVpT3BvT051UmJBZVJVdDhocXRBVTI4MDlBbll2ei90YmZCTUlh?=
 =?utf-8?B?Qm4yQ3FoZUI1YnVpenpTVHgrWXU1MnBaeFUrb0VROTFLRlpvdVk0THg3dFBt?=
 =?utf-8?B?ZnI1MXJNTW93ajVqZTlwZTh0cGhiYUt5bEsyMUtXZUZSZTRjVm81NmVsNFdp?=
 =?utf-8?B?MzBiYnRmMG5lTTIwbCtzNkhBRS9BTEh0bmFSdUhmUklCVkhGOWRlSFdMWnFs?=
 =?utf-8?B?aFJLb0M5VC9OK2QvUHYxeFpPeW5KZmlwSE1XdkhBc2VnKzNkSk1VS3FwUmRy?=
 =?utf-8?B?TU13QjZXQ3FJbHZFQzRYTFZ4VlRXc1lMYklNNG1tR2JUZWV0ZmVFQlhmbk41?=
 =?utf-8?B?Z2d0Y2pqQlRjTmxWdlpFTW1xL0NEZ0VIMG9BMDZnWnUvZlJXNnRjeVUzc0Ro?=
 =?utf-8?B?eUQ2NVRpOVErbVBIcUR4WnZhSnhuV0E2S2gwQWRjU2YyVm1LVTU0bHRFWXZX?=
 =?utf-8?B?K05QcHFCaG5vUkREcmNGSVBBZVRpUUxJSVVGVlNQSDhnam8xcks2MG4rUEN3?=
 =?utf-8?B?cW0rZGhIVlNqZ2pNclRCTUlDc3ZKV094bXNkdHJuRnB1RGdjdlhJd0FzUDBY?=
 =?utf-8?B?ejdFeTFpUEFRZlBONWprSW91cUtKVGZ1M3ZrK1BzYlh0TVFrQ1liTzNlVHlT?=
 =?utf-8?B?QWIxUnMvY2JrWUJyYWJaalZsamsyRCs5MFlCRjhSSStNMmhJaHQ0SjhRZEMy?=
 =?utf-8?B?MFA4anduWTA3c0dwdmRDVDNFN1FVTjVjVzJGcExORVl5cXQyZERjKzR3dmFE?=
 =?utf-8?B?cUJCL1dtZWxuY0EvcG9BclQ4RjM5RURTYTZ5bWRYME1GMkpYbjhSemdnUlUz?=
 =?utf-8?B?cEhQbGNuZS8xZmFKRVdpWnY5eUNhS1ZZa3prRmJvbWJUUmF5NkFPeWl5TXY0?=
 =?utf-8?B?cWZ6U0Q1MU9iTVlabFdsaFV4c2cxSjQ5SkRVTVljc0k3dklGWUE0NjF2TVhE?=
 =?utf-8?B?ak5jSHhCNGJDeFZXME5WbHJRbHA0bjZHV1pGVFZlb2tsNjQ3MmlHOGhUVTZs?=
 =?utf-8?Q?yRb2/o5rtsKtHhYpIRQyCfq8OHonCg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDFka1Z5RXppM3I2MlBoTlI1VlFWUkdhbnRocFdIdXJrdld1Y1lvWTNZSGxE?=
 =?utf-8?B?TndzRVh4UllaWk5lQ3pKS1JkSFUycEYvYkcybk1JSEVMTnRhREphc2I1MTVs?=
 =?utf-8?B?Zm40T3JRMUxhTjErbTZBZ2tPd2RlQVNQSENPbjdJV2dHb3lhN1M2c1o2ZUtS?=
 =?utf-8?B?NkxMYnNrMFdFUmc4QUw0cHl5TkNaYzMvckhpL1MzejgxUjVtdWNNcnBvL2xy?=
 =?utf-8?B?UE91cHRtVFBkSUMyL0VYWWNualQ2QzljdHZFYnVTZFNna1JXVitGZ2ZQNnBG?=
 =?utf-8?B?aUlBOGR6MFdlRm04dTFWbGp6M3g4V2JERkZ2SUFQV0RnUmZRS21wNVZoNFpp?=
 =?utf-8?B?N3hXQWJmSUE5S3pKU1hKbmtNQnpYZkpzVktjcUxaUk9KalZEejUyNjhrY3h0?=
 =?utf-8?B?TVJxaVh4VFMzSmJSRS9RR2FCdWF0VGVadEE0bFJla2s5Nk01aUJNdHE5dFR6?=
 =?utf-8?B?K0xqZE1VZXhNZzdaLzB1R1ZmM3UyK0hwZGluSTBQQWR4K1c3VkFyUDE4SHAw?=
 =?utf-8?B?YyttSVZqQ0c5STdFeWVaZ3FpcEpDeWE2Wi9BNzMzTVFHTkJpeW5kSEpYaEw2?=
 =?utf-8?B?TkkwY3ZxNGo5Wkhjdk9CSUJBd1d6N3QzTUlnY0QxcEhldzlZc2kyakQ0dFNh?=
 =?utf-8?B?MXUxV3k0TTlvWTJoaDNwLy9aUU5mQ201Y2Z4czRKQU5xV3ZzaCtQWkdJT1cy?=
 =?utf-8?B?dnp5M2JGS3hyVFRITmpjZk9EVDFzMW01SjZPUzZ5VGFJZlVhc0MvaHRYUFdl?=
 =?utf-8?B?RFRvMkZ4dXJPeVFuL1JCWWFXVHloeXlqN1BwWDNDRjNzdmdTc0ZpaGlDYkZX?=
 =?utf-8?B?Z0s2V1JadENwamlLNXB0U0M1Qmxwd1hYR0hwOTVPZUErZjFEWXBNODNaR2pR?=
 =?utf-8?B?d0NTU0UrYjBuNmdheTlybW9VWUxJcktvVDc1T2Rob203OXRDQUdBb29YMmVs?=
 =?utf-8?B?Tzk1TzdKWW5zS1J3Y3lJSk1KTmRKRUs1MFc1MytqZVp0NXJETFRGaU5IVEMz?=
 =?utf-8?B?U1F5SnVJRlNPY3h2aEEzWHJuampiLzRQdUNob2ZqcVdTQUpFMktWekxncWhV?=
 =?utf-8?B?bEFWQWtCNlhuSHdoRmF5RVBldDIzZXNpU1V2TW84U2dhbGVoZm01MlB0czVo?=
 =?utf-8?B?bFNnWTJIS2E5THZMK3hlenRkVDZuSlF5ckF2Nm1sVCtFY3lsUjQzZmJFQ1dF?=
 =?utf-8?B?L1FTeXgzdUJNb3pheHBSR1hjTG8rSnNscEFpbStIeEkvWk1sLzF4SGRWZCtU?=
 =?utf-8?B?N2VVWmFLZ29YRysyM292c3I2TGszUU01amFGWk5HeHQrNVkwRmU5blBsRS8w?=
 =?utf-8?B?V0hQWHlCcFA2U3A2aEM3QlpEMmdhSTMvdTAyaXFtT29QSEM5S3JJRUR4SnZB?=
 =?utf-8?B?eTNxMFFDTG5pbWRVbkZYYjV5VTFDdjYzd2JwWUZoZUlqSy9OVWtuVUJOU0RC?=
 =?utf-8?B?b05pRGhhZ0R1aGdTMUxnbVJiM2lreFg2N1IwMHlpYkFscEJ3a2w2d005T3Nx?=
 =?utf-8?B?V292akFtR1B3NktUeTc4eTZMeFpvWFVGdU9qRm9ZZHYzU1VTUnRKM1hqbHVM?=
 =?utf-8?B?T1piM05JejRPTHVIVlpTcWUwU0M0cG02VjdtdVpHbGFjSHlhbjAwbTg1dDU0?=
 =?utf-8?B?T0RnOW16ekUrQ2MreHZkL1pHNFBhL0ttclVicUg3cSswby9VUzlHVjh6UGlL?=
 =?utf-8?B?Y2g0UndpRTlodkw5bkRBWEI5QUVuMGQvbU1Oc3U0RWx6NlA3VzZhQk1xaXd0?=
 =?utf-8?B?WkxQa2NjeW9JRFNMM05ZK0dlUmllWUxtYzFrUDNtTkJTOVA4NVlpcTdTa21v?=
 =?utf-8?B?S2piUVRRTkRXbXQ5eUVKRVVLOU1FTEY3eDFMTzR4dXgvL2VUK3hGVjZZU1h4?=
 =?utf-8?B?R2NNTFdzdGFFVmp2ZEFlNXE2NXRkbXVPeFdXWXlqWExUZTBTcU5keXMrblhB?=
 =?utf-8?B?NlJpSHcwUStFQXVyNTZDTldFekpWYlAyZk52TEt0TjdjTmJXeEI5Y2tBOFIv?=
 =?utf-8?B?MUVUT2ZOaXdDZUk2TzNkejZWTjBjVkFtQ1RneDN6ZkhOaTFCMWEwcVE5TEJE?=
 =?utf-8?B?RGFUOWphTFh1a01uVGFlWW01ZitnTmYrMEx6NXdjMVBGdzZ2a2JqYk53SGhn?=
 =?utf-8?B?dmhFaFhoRnBybFJYcTRSQ0g4aVk4Q0RmUk0zUmVKbU5yNUZ4NnYvdHpUdC8x?=
 =?utf-8?Q?4mf7Ge7VUZqpTemxMB3Kx2w=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF8DC8E6E12C6040830CC1C56C384835@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7cb43e9-bd03-4dc5-7d04-08dda36d82d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 13:41:29.8053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NOxgkClueg37GKTC1wdzPOz0gOQ1A6WpMya+Dmb6YJ5oUTsAUzRBPGDKM/enEbrzOa9C9z0S4A5HrT5CnHEO68DVYJxUFtrWOLHmm9ZVob8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7008
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

T24gV2VkLCAyMDI1LTA2LTA0IGF0IDE2OjMzICswMzAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3
cm90ZToNCj4gPiBUaGVyZSdzIG5vIGRyYW0gaW5mbyBvbiBERzIgdGhhdCB3ZSBjb3VsZCB1c2Uu
IFRoZSBzdHJ1Y3QgZHJhbV9pbmZvIGlzDQo+ID4gYWxsIHplcm8gb24gaXQsIGJ1dCBiZSBleHBs
aWNpdCBhYm91dCB0aGlzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDIgKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiBpbmRleCBmNTYwMGY0Yjc3
NzIuLjgxNzkzOWY2ZDRkZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ID4gQEAgLTMyNTEsNyArMzI1MSw3IEBAIGFkanVzdF93
bV9sYXRlbmN5KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+IMKgCSAqIGFueSB1
bmRlcnJ1bi4gSWYgbm90IGFibGUgdG8gZ2V0IERpbW0gaW5mbyBhc3N1bWUgMTZHQiBkaW1tDQo+
ID4gwqAJICogdG8gYXZvaWQgYW55IHVuZGVycnVuLg0KPiA+IMKgCSAqLw0KPiA+IC0JaWYgKGRy
YW1faW5mby0+d21fbHZfMF9hZGp1c3RfbmVlZGVkKQ0KPiA+ICsJaWYgKCFkaXNwbGF5LT5wbGF0
Zm9ybS5kZzIgJiYgZHJhbV9pbmZvLT53bV9sdl8wX2FkanVzdF9uZWVkZWQpDQo+IA0KPiBGb3Ig
RGlzcCB2ZXJzaW9uID49IDEyLCB3bV9sdl8wX2FkanVzdF9uZWVkZWQgaXMgaGFyZCBjb2RlZCB0
byBmYWxzZS4gU28gSSBkb24ndCB0aGluayB0aGlzDQo+IGV4cGxpY2l0DQo+IERHMiBjaGVjayBp
cyBuZWVkZWQgaGVyZS4uIA0KPiANCj4gd2l0aCB0aGF0LA0KPiANCj4gUmV2aWV3ZWQtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQpNeSBi
YWQhIFBscyBpZ25vcmUgdGhlIGFib3ZlIGNvbW1lbnRzISBSQi1lZCBhbnl3YXkuDQoNCkJSDQpW
aW5vZA0KDQo+IA0KPiANCj4gDQo+ID4gwqAJCXdtWzBdICs9IDE7DQo+ID4gwqB9DQo+ID4gwqAN
Cj4gDQoNCg==
