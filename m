Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aC9qHAtPBWrcUgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 06:26:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F6D53DA5E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 06:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014BA10F110;
	Thu, 14 May 2026 04:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ViLCUW0N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1370F10E35F;
 Thu, 14 May 2026 04:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778732807; x=1810268807;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZtxtP3Yd9QtkBMyBBlUTMBKBehLH4aeW1f/WltAFWh4=;
 b=ViLCUW0NOQTIEvjNNCKPe0kidBYlSwSceRj2XKGeP8txud9rFu2Vme2q
 +z9ohPQ/D7u8dXN/Po0J0VNvUkGpvSE+vEthr7nNbrRhLQHhCknQYcn9V
 LlK9Ds65onHTlahq4udV4ewt3Bj8Wbf2qkkd3sPXgrjxjXfHpJpwKn6We
 04OD0uvhhK/ynSvplambtKgv6U7KnexVpUn314G7QkkW/tAStY8dOJlW8
 dLT/NkQ9xitNrMS/6+GpsLqqPlu08+Da205+LxeGC9SE7HkTANQd0WoRF
 7U0VxVY4VLeNTBo+YQc9IMhrwJ6h1YWimmmpbUtLsJSaiY+UpXAZ4fY1r g==;
X-CSE-ConnectionGUID: C2VJimBhRRGNhhhCsnvJWQ==
X-CSE-MsgGUID: VYW3Ci2bQlanCvDGb+v+Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79623526"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79623526"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 21:26:47 -0700
X-CSE-ConnectionGUID: /thQXoiWSnWEH3lnNePKQg==
X-CSE-MsgGUID: OgPfxL6sQqS0sQl6xKtXVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="234001595"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 21:26:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 21:26:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 21:26:45 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 21:26:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ayzOZEXHICm1Lgr6e30Ba0Fc2cMt3tG6GGYpkNf+jGJoA3L76Wes++/tGgngIJwg/CjHkS+Cl9y/UszczfF2vA7PPum+rlUz39wiSKh7xAMI5pWicgy1efaz2XP0+xjTn3Lq1VIg+ueaMyP4lrOPqBn97KPco1XbOyJIdXR7AyM8u4UCU2t8uE5bSyqXKfZdKq9qAg8kL4jaxAEjnqn/E1deP+h99g/Jlp8L/qrBJlXJst0jDqTEFebmSA0aM5AMsVhJchlrAgL33ZJnzXz/YfwtaRPTA7F3pN7wzNvpZutONo9+mv9ZUZs2mVAkJZtwJox0OtgTM24z92WzJdvong==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZtxtP3Yd9QtkBMyBBlUTMBKBehLH4aeW1f/WltAFWh4=;
 b=OkRQAsc+OX/dM+oI7qqCfISWjtaN2eLtdMlef9E8NsbExMy93LnfXxAtypUkYhEeEB6WfJaehRK54Mluiua5v4/TTKDeagkhdcprnjt0ZijJzMuiQmHU4QZ4yy0KDDlNMpOkjT+00lSmWuL4s5xxkRfmqS56ksft6Ew9YlJgLYCeiKaAljDJ0jzBu2L/UHDlIdYQNwiRHS8Q42eOtOulIjKPAv7LI1SN/0cbZLL/5fg/g9xtDX+dT8hrGprvGKb1ACZksQaQLI8YIsSEMW6DyghCLn6dvaCWYN2Vg4XQAEtxblobL38HGacbB14T41D8nBjpW+1454rQkx5OiPsOPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB5018.namprd11.prod.outlook.com
 (2603:10b6:806:11a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 04:26:40 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 04:26:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 3/4] drm/i915/psr: Apply Intel DPCD workaround when SDP on
 prior line used
Thread-Topic: [PATCH 3/4] drm/i915/psr: Apply Intel DPCD workaround when SDP
 on prior line used
Thread-Index: AQHczJpvHUV9B/LZ2kyao+Iuw91eQLYAuQYwgAHrkACACnVVEA==
Date: Thu, 14 May 2026 04:26:40 +0000
Message-ID: <DM3PPF208195D8D41F435F6FED70586AD9EE3072@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-4-jouni.hogander@intel.com>
 <DM3PPF208195D8D312A4D274ECBF86DE84FE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <76f39de9d27f63eec50af48af4cb2bd0691b6eb5.camel@intel.com>
In-Reply-To: <76f39de9d27f63eec50af48af4cb2bd0691b6eb5.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB5018:EE_
x-ms-office365-filtering-correlation-id: 5a9aa7c5-af61-4a2c-8f47-08deb170fed7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|4143699003|38070700021|18002099003|22082099003|56012099003|11063799003;
x-microsoft-antispam-message-info: nhpTiHkjCw8dESm1fIng6q2GFZmUE0Ah/DsQOkQ9rjocYp6NA6eixfKUN5gkIxDFAn1wgZkv6xDCtWDIgbqaky01dtadJLNcvuY4JcmbZ0sWT0V/hpWOH8YqeZ5s8sbMKJ/yppuDSDZw5XvpcpgGu7r/pEiRkd+oifj2a0yxpbVHDoKbwGXrIQ2gQE6MTxsskRzerSqYkdo6EEJmFfEzpL4x6uYcv7+sSOb+IyV8w8hQGoyd2760ZLni3eoFfcMqvDmD3AJbBZhd1dt8tpdlr7Ku+I49AJfpVF3t3PhnJkdNf8jkbe6VCzbtlwKHQiHWrb6Y+c6KmaqKXJbeDY1W6BNPDe67t+ihpAMNwCo8klYNQ/Z/1ta/4x7kZpaMQwtPHC4pigaM2SjfSS4VnlWJbcyWhHfd3mXQ7qUbvhGgzj1EN839xAu+Tej9dlM3mo6dwlucBLfFT/ZjiswwBKqaqbdBUYsjdNFzucaXXJuMoKC/vrMt46uAWtutAWM9noLvsrXOpmpbbcVcv7KJLgdE4JXdLhbyui9zjTOmRqyZrk0oENFBFvAlJ0o4ea0GWz06tJAfYufMoDD/+ILKSt/RcKZNM5Nd6rzIz2JfxcmVtWnJDplQC+12nERvVoL0mpn6SbyQRIhq0a9n1XpzUYTv9iA9r/ye6UelQimdSOXDFUdERdp5KlgH72ruk9kXGcovVzccECTqaaoddwrLzt/0jki/NabrFF/WDw+abDa+9VaaQzRm7GjDEQdX/d2roObL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(4143699003)(38070700021)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnBDQ0pibEdlUk9HZVNrVEdDK1lDdUljS2Vqb0JJbDFTSjN0RGhEZmFtZS9q?=
 =?utf-8?B?VERlQ21Ka0NrZ3MyNjUwU2NpOG1La29LR0hUWU1YeEpYeWFYSFZmVWx6S0x6?=
 =?utf-8?B?YW1ZaklMSkR1MTVDQnlMNEFMcmhXaC9sTWtOS1ZDSkh3RmxpM1pndkdWQUZP?=
 =?utf-8?B?WnU3MUlLbzc2WFprZmxnZ1pEdHJKQkJJdWhVN1QrSWlpZThNNkJEVnNJK0Np?=
 =?utf-8?B?SzZGa1luelpSNnZzSFRFSDhCNGQ4bG84Y1VHaEs2SWxTdHNNbnVLMG5lU25z?=
 =?utf-8?B?TzdhYXQ0ZXVRTURkRE1ZdzlhYWNaN3BJWmpnMmYva05HVDYwN01rTFlxUExt?=
 =?utf-8?B?MWdRak1HajlpM1pQN0VsVWxWb2ZENGxKb1BSbS8zd05mSEhta1lSajNEZW16?=
 =?utf-8?B?WEdZY1lUTWdqNmRKL3dCOVIxOE9pS0x5RHY5cUFmd09OOE9EWmxTcEtQZU8y?=
 =?utf-8?B?dlZHVDVIZUJJSm52amJ3cGE1VllWWUNKUnBVRkNJM1VGY05LeTg5TWJtYTFG?=
 =?utf-8?B?bEt1bkp3dEg1aXV4aFZPRFdyN0djZW1aVDJDU0duUkRqSm1vWk82OWxNcnp6?=
 =?utf-8?B?dS9uYnRrbjZwdlU0dGE3T2E3eHgyaFVqZVk2bXo0ZnFnb2RzTE0xSzVGZUFn?=
 =?utf-8?B?b3VJaEsxQ252SGxmZ3ZqUnhVK3RIeHR6bVdXRHp5N3hPdFowZGdnOFNGV3JV?=
 =?utf-8?B?eWlhbjd6OGMvcXBwb0IwdUl2ZWFyNVh5UHpUaDJNT1FPRDBTNXRyS01SWGFK?=
 =?utf-8?B?bmVSSGVLQ2FkVzZwRXJqeVFkdjhkNXdDMUZzV00zbmJHb2VPdHpGNGZ0NXkx?=
 =?utf-8?B?Z2dyb2FtejhvNXpjaW9qdmg3VFRPQndvYXR3VzZ5WEJXSnIxWG04K1VKUnli?=
 =?utf-8?B?NUpEeEQyR253UWYxQWtPcTI1NzREYmpTRzhNSTIvZm5XVzRFRllVU3AybWFs?=
 =?utf-8?B?c0d1ZlJZTElRS1V1QnN0NWl4anNid0hGclliaC9QdHdJbXVVb0ZwejhrMyt4?=
 =?utf-8?B?ZTVrSWFYVWpURXAxK3ExcFJjcDVxRnZ6bGVUYzZBaDF2eDUxSXMyeXpmVVRO?=
 =?utf-8?B?V3RkUk1DdTNsbkdidG4zZUd5YVEzTVo1M3ZJMktyU25lQ2tTclVnMC9nU1o2?=
 =?utf-8?B?WXlFemVNWkhsKy9NUlk4Q3V5Y29qSlMzRkF2QjZFMlVHdWFMVkE0ck9XVzUz?=
 =?utf-8?B?RUI1cGlUTWI3YXdOR1VuMVVJSE94S1dzVnp2R29ySnp2MVNyRzVQV2V6VWt0?=
 =?utf-8?B?VnBjMGhSWlJWYlF6d3BnaGthbGV5dmNUSi9EaytVOXd1alZ2NmpmSmhKZEFJ?=
 =?utf-8?B?TUhWUTFTLzVCcmRaNFBiTEM1OE5qaHJLY2xjSitPRVdQc21xdXVhNzRJaFI2?=
 =?utf-8?B?ZVN5L1JkSlJ4Zjl1T0xzTUVrcXdkZzF0anRyKzdhY2tIVUcvQ2x4S2VETFJ3?=
 =?utf-8?B?QTdnRlNkMTZYSVpEL0x3Z1NUbkZuZ0lycGp4N3FEcmdIMmE0ZWJrZk9iOVhw?=
 =?utf-8?B?Vk1ybWZHc29tM0ZRRkNoMGEyRTRERGV4T3NNWEtIdFZXa0pTVmczZUlHbFZj?=
 =?utf-8?B?UGNHVW1JcnNiWkRWTlhuNjkyemt3Y3hZMHRiZExVeHRiTVA2dGdUQ0dNSGNS?=
 =?utf-8?B?QzdGdjNHOXhMdmVaZ29jK0R3aldNdGIveUJ4amR3QTZaSE9zdElMRG1BY2NF?=
 =?utf-8?B?azZhVjJoYnhGbm9qUkNlUzhLM2o1aUhURXNoZ25wOFJtcEtQeGxRSVFUMmVN?=
 =?utf-8?B?TFF6Z0N0WDNmQ0N2RnU4b0ZvbGxwVjlHczQzaGZ5QWtIaWhzc0Zadis2TUZQ?=
 =?utf-8?B?andSc2lDb3dKQjl1cThJWllqQnBRQS85MDdmRXRvNkRUZ3RJVHNVSUd6NWdv?=
 =?utf-8?B?VUg3WlpoNDhmVWhrZC9PTUtqczgwT2RPT091OHNyV0xlUW9jcFkrdkYzV1hE?=
 =?utf-8?B?N0luK2ZTQ3VrNTZSamdCUXFEWElpUWpPaC8rbjdVc01Rd25LWXQxQlBXNVhh?=
 =?utf-8?B?akFjL3c0dWY4TmhVZGZhTE9EbjBvVjNjbndVV0FFSnpiZ1pzaXpGWE1sWW9N?=
 =?utf-8?B?dEJEdzBkZ2dUQXlkaWE4UERIMmxCVkczR3lldDNMdEwzSXI1aXpQWWNaS0hi?=
 =?utf-8?B?OVNzbGx0ZExCY05GN0ExWXpkWkRueWtXTW4raHlYbnZTOHo4d1FMRHhzY2Fz?=
 =?utf-8?B?ZWVBMUdKOHNIZldKOEdTUHdYM1VoMFRWZEZ6bUFpT1Z3b3J1ZkIvMjFTaUww?=
 =?utf-8?B?eEtFM0tiWWNWdFQrakZvQUVCV1k2UlE3VVVCV005cXltaExCMUxtemlvNEdv?=
 =?utf-8?B?R3BKKzNMY0FvSVg3R0oxbi9lblcxY3NCY1JwaUVmYnJDN3VjekQzQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iG1e6BK7zobqLiFVkC4gsl8JpXc8+Vb4riCW5+JgyWYOwZOJtkozWlnyd+TyV1QiWQTIipcNp3HOUETAkuBnEWUr/DkdM+ISiGZRSu+IlCy6gpGRMCOdAohFMKo7rFVog+HFBF+TN6hHMfTxb29YmZZoBQm2CcpWjWlANsUzKvUpI0VeJWf681poPZBCFLRXQXIXXsi56Nwz5NbuX6Gqrkmh0lYgWye88q1OK5E+ANm95iT3VZ+rCwWpjVHCVxfRA9b4g2G3tyOOuY2bZkJNp2X1kFsoZ7UF76BxkqkZf7nhV2eNFVqdQt9Vp2Dc1b6/x6HmdCZjxi1MwpZpKOCLKg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a9aa7c5-af61-4a2c-8f47-08deb170fed7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 04:26:40.2679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1ZKJY6fRtTXn04tSFZrWw6cYrzeSkvzadsxhTrTf7GtRtjw9Vuwoc/T0WNgltI9MTQzcqyY/gual332QJAvufg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5018
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
X-Rspamd-Queue-Id: C8F6D53DA5E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBSZTogW1BBVENIIDMvNF0gZHJtL2k5MTUvcHNyOiBBcHBseSBJbnRlbCBEUENE
IHdvcmthcm91bmQgd2hlbiBTRFANCj4gb24gcHJpb3IgbGluZSB1c2VkDQo+IA0KPiBPbiBXZWQs
IDIwMjYtMDUtMDYgYXQgMDc6MjQgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+ID4g
U3ViamVjdDogW1BBVENIIDMvNF0gZHJtL2k5MTUvcHNyOiBBcHBseSBJbnRlbCBEUENEIHdvcmth
cm91bmQgd2hlbg0KPiA+ID4gU0RQIG9uIHByaW9yIGxpbmUgdXNlZA0KPiA+ID4NCj4gPiA+IFRo
ZXJlIGlzIEludGVsIHNwZWNpZmljIHdvcmthcm91bmQgRFBDRCBhZGRyZXNzIGNvbnRhaW5pbmcN
Cj4gPiA+IHdvcmthcm91bmQgZm9yIGNhc2Ugd2hlcmUgU0RQIGlzIG9uIHByaW9yIGxpbmUuIEFw
cGx5IHRoaXMNCj4gPiA+IHdvcmthcm91bmQgYWNjb3JkaW5nIHRvIHZhbHVlcyBpbiB0aGUgb2Zm
c2V0Lg0KPiA+ID4NCj4gPiA+IEZpeGVzOiA2MWU4ODczMjllMzMgKCJkcm0vaTkxNS94ZWxwZDog
SGFuZGxlIFBTUjIgU0RQIGluZGljYXRpb24gaW4NCj4gPiA+IHRoZSBwcmlvcg0KPiA+ID4gc2Nh
bmxpbmUiKQ0KPiA+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjE1Kw0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDM2DQo+ID4gPiArKysrKysrKysrKysrKysrKysrKystLS0NCj4gPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
aW5kZXggMWYzZjBkMzVkNTJhLi4zNDExODY2MjJlZDQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtMTM4NSw5ICsxMzg1
LDM2IEBAIHN0YXRpYyBib29sIHBzcjJfZ3JhbnVsYXJpdHlfY2hlY2soc3RydWN0DQo+ID4gPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4gwqAJcmV0dXJuIHRydWU7DQo+ID4g
PiDCoH0NCj4gPiA+DQo+ID4gPiAtc3RhdGljIGJvb2wgX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jf
c2NhbmxpbmVfaW5kaWNhdGlvbihzdHJ1Y3QNCj4gPiA+IGludGVsX2RwDQo+ID4gPiAqaW50ZWxf
ZHAsDQo+ID4gPiAtCQkJCQkJCXN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4g
KmNydGNfc3RhdGUpDQo+ID4gPiArc3RhdGljIGJvb2wgYXBwbHlfc2NhbmxpbmVfaW5kaWNhdGlv
bl93YShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiAr
CQkJCQkgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiA+ID4gKmNvbm5lY3RvcikNCj4gPg0KPiA+
IFNob3VsZCB0aGUgbmFtZSBiZSBhcHBseV9zY2FubGluZV9pbmRpY2F0ZSwgc2luY2UgeW91IGFy
ZSBub3QgYXBwbHlpbmcNCj4gPiB0aGUgd2EgaGVyZSBqdXN0IHNvcnQgb2YgY2hlY2tpbmcgaWYg
aXQgbmVlZHMgdG8gYmUgZG9uZQ0KPiANCj4gSXQgaXMgYWN0dWFsbHkgYXBweWluZyBXQS4gSS5l
LiBkaXNhYmxpbmcgcmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lIGlmIHBhbmVsIGlzDQo+IG5v
dCBpbmxpbmUgd2l0aCB0aGUgZURQMS40YiBTRFAgb24gcHJpb3Igc2NhbmxpbmUgaW1wbGVtZW50
YXRpb24gaW4gaW50ZWwgSFcuDQo+IFdoYXQgZG8geW91IHRoaW5rPw0KDQpIbW0gdG8gbWUgaXQg
bG9va3MgbGlrZSB3aGVuIGEgY29ycmVzcG9uZGluZyBhY3Rpb24gd2lsbCBiZSB0YWtlbiBhZnRl
ciBjaGVja2luZyB0aGUgY3J0YyBzdGF0ZSB2YXJpYWJsZSB0aGF0IHdlIGNoYW5nZSBpcyB3aGVu
IHRoZQ0KV2UgYWN0dWFsbHkgYXBwbHkgdGhlIFdBLg0KQnV0IG5vdCBhIHJlYWwgYmxvY2tlciB0
byBob2xkIHRoaXMgc2VyaWVzLiBPa2F5IGVpdGhlciB3YXkuDQpMR1RNLA0KUmV2aWV3ZWQtYnk6
IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IA0KPiBCUiwNCj4g
Sm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBTdXJhaiBLYW5kcGFs
DQo+ID4NCj4gPiA+IMKgew0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gaW50
ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9yKTsNCj4gPiA+ICsJdTggZWFybHlfc2NhbmxpbmVfc3Vw
cG9ydCA9IGNvbm5lY3Rvci0NCj4gPiA+ID5kcC5wc3JfY2Fwcy5pbnRlbF93YV9kcGNkICYNCj4g
PiA+ICsNCj4gPiA+IAlJTlRFTF9XQV9SRUdJU1RFUl9DQVBTX1BTUjJfRUFSTFlTQ0FOTElORV9T
RFBfU1VQUE9SVF9NQQ0KPiA+ID4gU0s7DQo+ID4gPiArDQo+ID4gPiArCWlmIChpbnRlbF9kcC0+
ZWRwX2RwY2RbMF0gPj0gRFBfRURQXzE1KQ0KPiA+ID4gKwkJcmV0dXJuIHRydWU7DQo+ID4gPiAr
DQo+ID4gPiArCXN3aXRjaChlYXJseV9zY2FubGluZV9zdXBwb3J0KQ0KPiA+ID4gKwl7DQo+ID4g
PiArCWNhc2UgSU5URUxfV0FfUkVHSVNURVJfQ0FQU19GQUxMX0JBQ0tfVE9fUFNSMToNCj4gPiA+
ICsJCWNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSA9IGZhbHNlOw0KPiA+
ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gKwljYXNlIElOVEVMX1dBX1JFR0lTVEVSX0NBUFNf
UFNSMl9XSVRIX0VBUkxZX1NDQU5MSU5FOg0KPiA+ID4gKwkJcmV0dXJuIHRydWU7DQo+ID4gPiAr
CWNhc2UgSU5URUxfV0FfUkVHSVNURVJfQ0FQU19QU1IyX1dJVEhPVVRfRUFSTFlfU0NBTkxJTkU6
DQo+ID4gPiArCQljcnRjX3N0YXRlLT5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgPSBmYWxz
ZTsNCj4gPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ID4gKwlkZWZhdWx0Og0KPiA+ID4gKwkJTUlT
U0lOR19DQVNFKGVhcmx5X3NjYW5saW5lX3N1cHBvcnQpOw0KPiA+ID4gKwkJcmV0dXJuIGZhbHNl
Ow0KPiA+ID4gKwl9DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBib29sIF9jb21w
dXRlX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lX2luZGljYXRpb24oc3RydWN0DQo+ID4gPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ID4gKwkJCQkJCQlzdHJ1Y3QNCj4gPiA+IGlu
dGVsX2Nvbm5lY3Rvcg0KPiA+ID4gKmNvbm5lY3Rvcikgew0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9yKTsNCj4gPiA+IMKgCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50
ZWxfZHApOw0KPiA+ID4gwqAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVk
X21vZGUgPQ0KPiA+ID4gJmNydGNfc3RhdGUtDQo+ID4gPiA+IHVhcGkuYWRqdXN0ZWRfbW9kZTsN
Cj4gPiA+IMKgCXUzMiBoYmxhbmtfdG90YWwsIGhibGFua19ucywgcmVxX25zOyBAQCAtMTQwNiw3
ICsxNDMzLDggQEAgc3RhdGljDQo+ID4gPiBib29sIF9jb21wdXRlX3BzcjJfc2RwX3ByaW9yX3Nj
YW5saW5lX2luZGljYXRpb24oc3RydWN0IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZA0KPiA+ID4g
wqAJCXJldHVybiBmYWxzZTsNCj4gPiA+DQo+ID4gPiDCoAljcnRjX3N0YXRlLT5yZXFfcHNyMl9z
ZHBfcHJpb3Jfc2NhbmxpbmUgPSB0cnVlOw0KPiA+ID4gLQlyZXR1cm4gdHJ1ZTsNCj4gPiA+ICsN
Cj4gPiA+ICsJcmV0dXJuIGFwcGx5X3NjYW5saW5lX2luZGljYXRpb25fd2EoY3J0Y19zdGF0ZSwN
Cj4gPiA+IGNvbm5lY3Rvcik7DQo+ID4gPiDCoH0NCj4gPiA+DQo+ID4gPiDCoHN0YXRpYyBpbnQg
aW50ZWxfcHNyX2VudHJ5X3NldHVwX2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ID4gQEAgLTE2ODcsNw0KPiA+ID4gKzE3MTUsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9zZWxf
dXBkYXRlX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiA+
ICpjcnRjX3N0YXRlLA0KPiA+ID4NCj4gPiA+IGNvbm5fc3RhdGUpKQ0KPiA+ID4gwqAJCWdvdG8g
dW5zdXBwb3J0ZWQ7DQo+ID4gPg0KPiA+ID4gLQlpZiAoIV9jb21wdXRlX3BzcjJfc2RwX3ByaW9y
X3NjYW5saW5lX2luZGljYXRpb24oaW50ZWxfZHAsDQo+ID4gPiBjcnRjX3N0YXRlKSkgew0KPiA+
ID4gKwlpZg0KPiA+ID4gKCFfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0
aW9uKGNydGNfc3RhdGUsDQo+ID4gPiArY29ubmVjdG9yKSkgew0KPiA+ID4gwqAJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwNCj4gPiA+IMKgCQkJwqDCoMKgICJTZWxlY3RpdmUgdXBkYXRlIG5v
dCBlbmFibGVkLCBTRFAgaW5kaWNhdGlvbiBkbyBub3QNCj4gZml0IGluDQo+ID4gPiBoYmxhbmtc
biIpOw0KPiA+ID4gwqAJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+ID4gPiAtLQ0KPiA+ID4gMi40My4w
DQo+ID4NCg0K
