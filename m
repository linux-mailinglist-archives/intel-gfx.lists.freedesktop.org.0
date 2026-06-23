Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ltjwEMxUOmom6QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:41:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2986B5E0A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:41:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i4fAQXZn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE9F10EA45;
	Tue, 23 Jun 2026 09:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91AE210E0C2;
 Tue, 23 Jun 2026 09:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782207689; x=1813743689;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7GWpC7MvqBXz8d8u3ybxra3DQBBZ9fvyjgi1AVW+XB8=;
 b=i4fAQXZnQ1oW1XvW7GjuNw10WTV6kI3igQ3Y2YO5oG3XMgYYZtGwsnko
 iWttuEoRklEMOxBdXqfN7rQ3qJMviCQa88V7oJM9gpwRi1IXI5b6NmNS5
 Zr3WlJFVCM/N3cnKapPxzgzDPy6Z7uBhPUhNT7JikJTEoRgqbDIerlfHe
 67pUQzx7zzjvVWR43AMkZVhHTZ1ZUxqkb8JBl+GpNpo78vXFT7XoRr/6D
 fc82sMVP7gSSkLLwEkLFYbqfUlroDST3/70D8ObyW/anw8q5uOZKRZzi0
 rPlJx7pEvZphSqALf37MSdT847eF+zIL7E5SxXq99hR1SzQ+nTq1UtPmM Q==;
X-CSE-ConnectionGUID: 3dmDLQUZRAO9lAjEQLaL7Q==
X-CSE-MsgGUID: BB4FvWE1SY+ssT2FLbNqIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82833180"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82833180"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:41:28 -0700
X-CSE-ConnectionGUID: v4ox58tOSZGY2WqHxiSK2A==
X-CSE-MsgGUID: zCXOd+bnQRqYCqygy+tkNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="287605217"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:41:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:41:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 02:41:27 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:40:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gIGyFgf2pj0a7Rl0fnJE31SdMikJ4XqZwFt/6hdmpvoRni+OcHKDpZNIB+WBk2TkMQGs4dlw6dSmhFViYrP8OF1EnISARfMKdP+AgGpnZTKs6cUlfiyUxcR6btE9ZAiNOB7HJIefVZrrDKdCFHYLZexEX9Ut05ZVf2uQvzVZVlk9drnANVNo9u2GRN+iKbEdEkCnwW//ZdMa/vVKIU4Nql7oU1K/d5pJSfjHraFA3XSJ6YbiVXpX/qzKJpaFzH2i3qT9DMnOlIKj+7X0y1QdahOUyQXW/rx7L3Q08za/CZlZ5uKvMcTd+d+n+hcBwCxUA/0dP2dF7Z19YwPbSd2kQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7GWpC7MvqBXz8d8u3ybxra3DQBBZ9fvyjgi1AVW+XB8=;
 b=QY3uyE/t8WZoMMqOfqvsbaXjslZXLP2Kq6UCREtGV51p6hLP5Kl0T70kQwl+mwXwOodwd6NpH1grWJkcUdvN0Un5QAUZ5WfqEVkaRpmpOFkRds1TW6xoVfC4uDbhM0+dqAYxBYjWnehay4EEP6kIK4UDs1ZW1usnwuwaSxYMulgLG+e8rF6TipuNcmJj5p0/YBneiFdAzvBGU7MlnMGbZc+eslBG8zCAJ0Q3FpltU0ubUFkk0CCqIHw63fcgsvWExgummO1WT1RpDX++cHjpqah8kanATnk786piKOT5PKbN37ty5u0MZqGESyIZRUJz99LcjGvgzK9grZ1kCQKV4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB8480.namprd11.prod.outlook.com
 (2603:10b6:510:2fe::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Tue, 23 Jun
 2026 09:40:30 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 09:40:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 05/28] drm/i915/dp_link_caps: Move forced link param
 helpers to link caps
Thread-Topic: [PATCH v2 05/28] drm/i915/dp_link_caps: Move forced link param
 helpers to link caps
Thread-Index: AQHc/cwYePrEvuiavEKyz2NghDS0a7ZL7P1g
Date: Tue, 23 Jun 2026 09:40:30 +0000
Message-ID: <DS4PPF69154114FC23E9FF19CF1C5D0AD55EFEE2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-6-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB8480:EE_
x-ms-office365-filtering-correlation-id: c9274472-3224-4ec7-7d20-08ded10b7726
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|11063799006|6133799003|56012099006|4143699003|22082099003|18002099003|3023799007|38070700021;
x-microsoft-antispam-message-info: Gx6OkkCt15DJghBa5dRSC7KQAt3MyNQprAK/tmfw9QVz2ZEAunjT3xzCu6F5PBAIib/XGNtusNyYyOtH8ruO7aYPPcGAdDUvmgFPInn8IPKkBLDganvC8MQF+McIomSZslcGJk6iIqAOSlud3uuTFd2Grv4hArN+JuMb/Vh+spdUVaHRLEe/XIMj7+o7iT3+CUECu/EbZPtfxdXurbvh5l9IxYT5QL19nNZZg5b7RXN1MfcuvhlcePYfdTAHgWkjp2AxUhFYM9Ea00m3zyFobje9uBHfNgDZu31tsKsOQKyd9789rXD0D4dK6L/UCgEH2zzp611VZOubOPCzYLClCNFl8IaRo3luqWTIuqDpAr1gRS2PxoBwqh3Aw1Y1DTGXoG1CkpcpLBaKyC0uC6r5rNnIF8XpldDGUc6CL0LEvQx5XXSM/LAbj2z7sbwOxdhUxFq1crWgr7r5L67JfphheXrse1EtPSAuv7MFyZoB2Ke99B9FHcUk87ciU7+e+SJNvJ8PmTLncSeJNxIiTBGYAtneeKW7w+gdMCNxVDm4FgMC2524V6dpR4nSGAOy6cAZqaoFRM5/8Lhgh7wb73mDY3faKjirXKt+CfAFQMYWX8vu/6fnZ/zq0/ST9XWJq8L3dnXfxZ4kQDMD/J3Q6lgXaIk6g+O4q8d3T+TXtuehfoxaTvpTG4uPxP3hQJgFrXZM6FWcvaoOfWvmwVt1Mg5nMP9/nyM2ggFd1MuVDs4syis=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(11063799006)(6133799003)(56012099006)(4143699003)(22082099003)(18002099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXErMlJHVkZtcmI2bmRJWkdRVzZYZHVLQmJndmRuaHdQQm83dVQxVVJscXhh?=
 =?utf-8?B?eUVscm5namJEN3BMZkk4ZE4wSUUrNVAyeEdTK2VsMXBqOC8rNURRSHQ3OUhl?=
 =?utf-8?B?VmttZ3A0ck5iTEN5ZEFubkhQNGdjWTZRcUF4S21rdTdxMi82SkNIc3hFZjJV?=
 =?utf-8?B?MWtrdDhBb1JRTWFSSHUzSjhGSFdTbHZrWkZOaHNWaDZ1UUlVaU1wampPYmsr?=
 =?utf-8?B?VG5BaHVkeWZRT2NRZDlQa0pCcHM1VVJuY1hYWUNkRVBHWnM0SnduVC9id0Nn?=
 =?utf-8?B?T0NQMmlqSDBreG5rc0JjRTU5QlBoa1pwUCtXbjlwNG9nNGpvY2praEJyaTQz?=
 =?utf-8?B?cFZaVk5mbUxWYm51TVZhTFR3ZHBiYzl4cXpUMVNUK3l1NjA5Y2dBbjgrNE1M?=
 =?utf-8?B?VmNndHUwM3M5aVVsRGxxRm9nNjB0OHhPT3Y5ckVTcXJrcUdyVzU4K0xwd2t3?=
 =?utf-8?B?MEZibWgwY0RzMWFBNDhzYlRRd2sxMzRSNUxsQk03Q0FlanRpa0ZnSFdYWng2?=
 =?utf-8?B?UWVWS1o5TTBOZ0lmVllvcDArRGdIaytETk4zbzlXZFlUMFJZRVBibWJxUVhm?=
 =?utf-8?B?dmR6cExCSWVkbzQ3K3hNSi9LSExsYmFzblIrbGxXT3pod2dsWFZNSW1tci9C?=
 =?utf-8?B?Z1d2NzhwVmdVQmFmVnkyWW5QZjNaT095cnpGWXhIR1pJcnZrNWl0SEVSVzl2?=
 =?utf-8?B?U05iL21xNnJINTgzNWsyclRYU2dsS0NXVzZxTGRCeVBOd0hSRjZPUUpWMThO?=
 =?utf-8?B?dlJTSlM0djRucEZFenUzR28zcXBxUGpzU2lOdjBxWW5ZRDhKVHdQSnJyNitq?=
 =?utf-8?B?RndYY1M4aFJrcnBsU1hHaWhhOHU2SENuaFI2WGRiUUJiNWplbTlzVjFuN2Jp?=
 =?utf-8?B?ekdVaDJ2MmdTRG1TSi9pSW5vdElGeDdKbndnWEhtWXZTeGg4bnVSS0J5UE1q?=
 =?utf-8?B?Z0p1TzNBbVIxbEM2bUdkbVNpcFVjOXZhYTN5RGdKcnRabE5QVUpuT3BMNXpt?=
 =?utf-8?B?MmIwTlM3WjlPbTdlWGE5elk4akh2SC8wejdHQmVzMTdpU3R1bjN2QnU2NzZW?=
 =?utf-8?B?RnpCV1kyMy9EaDdsTExvSWVhSnNkQUdwdlpWVHc4NTVESVFIQlRRZGpMdVVh?=
 =?utf-8?B?eFN6OGxvSGo5L3NmUllabE84OHlPcTZ1MzZjaHNtZ1JxenREMVlkZWtrOGl6?=
 =?utf-8?B?RXc2Z1hiVE9xZ05hd3BINmJsNHREc1Rtc0E1MElZbFM5bjFkb3VBaFJWZG8w?=
 =?utf-8?B?UEp4TlphVkRTdUp0NDQ3c3JVMWlrbGR1QUVWUG9uSEFoQms5VlJZRFFFSGlq?=
 =?utf-8?B?eUQ3cmdvNlY3ZVQ4b0VwVFYrODkxUVFxTzB2bnpGU2tLMFNpVGFpb3luRjlq?=
 =?utf-8?B?LzE4SDM0TDhjcWtNVzJFK3dEamFPalhZcHR5MUFnaUYyZ3YyZi9CUmtxcHJp?=
 =?utf-8?B?UmVHTUNHV20vWFdCVHhzb2pGMjNzb2FCbGx1VmIwcXIyZElsSFRwVXh1YXZz?=
 =?utf-8?B?Ti8rQmZFRE44TjdVU2srSWRBcjlEVEpWT3FNSjBBQUlLNjd1bUoyR2JPSS8v?=
 =?utf-8?B?MW1sbERpMmV4V08wSDJQL042Z1pzdk9YSVQvWGtZcGhJSG9EZ3ZqWU1IdjBQ?=
 =?utf-8?B?bFhWYUtUUnF4ZTdtT3Z3eW9VK1lRdmJUVzhWNlZSZjdwTG5BMytjU2NSTTh4?=
 =?utf-8?B?b2YvUjByUDZaTjh6OU5ZSkpHdStMeGpMQWJMNERYTTdjK1lhTGgwUUJ2WmUy?=
 =?utf-8?B?NGQwVklTZ3R3R05BWUEyaUZyY2duOU5SNkxmd2IzU21xSmwxU0p0ZFgvV00y?=
 =?utf-8?B?R2dkbGZLTVlQSHNuUmhYdU50NXhScmd4S3RRTXZsUWFya3VHcm1zVWpDSlpB?=
 =?utf-8?B?SUpmNWE1eGhVTlBKeXRuWFljQkhJbUFuVThEa05jVGJSSlMxdUZmdVFRZUtR?=
 =?utf-8?B?SFJVSmZlUng2TXJZU1JnOSt0Z2tJSGRNZzJEMGhpZTJzUEZkVTQvUXNmK3Iv?=
 =?utf-8?B?T01mZGE0a3d6TFhRL1hRK09DeXZETllNTW1rNUdYU3FyQmtrclJqSWljZHlm?=
 =?utf-8?B?UWVuNUNHUmxsMVdBVHNzL1ZFaWhFQVhXdUQ1NDhMNmxiVTEwaUtEd2FuVTE1?=
 =?utf-8?B?ekRTY1FMSm9BZWtOUWdkb3VEbmprY09SRHpET2c1MTRnK2R2dWVSUDFkY2Ur?=
 =?utf-8?B?VkF4MjhsSndyNXd3dkR3K2ZvT2lwaGRRU3VEOGFkRHQ1VHJMM2g0N3N0cnZz?=
 =?utf-8?B?RDZRRFE0emVSQWcraEowQjRzTTREVE9hWklZNWVoQTB4dkw4cS9iczRzK3Iz?=
 =?utf-8?B?N010MGgxUmJuYktjK29jaS9Nai80czNMellwWEtMSzhCZ29YWjR6dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OHNXcI4qXMVJoKz37F1XTgpvQf63n1rhOQeFDqAJRi09rCPfVpP36lemmv3Ajn/Cf4MVo/Hoavj5yHkZcuuYu6nVI4wr02M7RRZYQnX/rqR9eHD8al8ntVp8oElS0Xwrk2Mz/6/zVOGhH3p2+s4ehiMeRxnNKDPz5gf1rL44Df85ozgKUudNBhd0K6WtDM90cPXp+splwwMGVc9+gRdtl1Qh9dj7rW+idJxGDMRaOzpw1mdZXKe80zYv392GWzMmsp3Mzw51pvVdLCkJ7+eFqNOd00ZvxmK3Hkqyfiu8kEusRfGJ/xUWFggLOF3+NQxz1WZSSS86Yo0Ncmn+rtqyZA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9274472-3224-4ec7-7d20-08ded10b7726
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 09:40:30.6954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7l7iUFFJkQoX47CUQlnkiMLVMsSoenigkDHHVjncoSEKlnaAyUMaLmjD8iVEXQ8iNnN7iK84fo0DOR4kIl5shw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8480
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F2986B5E0A

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDA1LzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IE1vdmUgZm9yY2VkIGxp
bmsgcGFyYW0gaGVscGVycyB0byBsaW5rIGNhcHMNCj4gDQo+IE1vdmUgdGhlIGhlbHBlcnMgaGFu
ZGxpbmcgZm9yY2VkIGxpbmsgcGFyYW1ldGVycyB0byBpbnRlbF9kcF9saW5rX2NhcHMuYy4NCj4g
VGhlaXIgZnVuY3Rpb25hbGl0eSBpcyBwYXJ0IG9mIHRoZSBsaW5rIGNhcGFiaWxpdHkgbG9naWMg
YW5kIHdpbGwgYmUNCj4gdXBkYXRlZCB0byB1c2UgdGhlIGxpbmsgY2FwYWJpbGl0eSBzdGF0ZSBp
biBmb2xsb3ctdXAgY2hhbmdlcy4NCj4gDQo+IFJldHVybiB0aGUgZm9yY2VkIGxpbmsgcmF0ZSBh
bmQgbGFuZSBjb3VudCB0aHJvdWdoIGENCj4gc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnLCB3
aGljaCBpcyB0aGUgY2Fub25pY2FsIHdheSB0aGUgcmVzdCBvZiB0aGUNCj4gbGluayBjYXBhYmls
aXR5IEFQSSB3aWxsIGFsc28gYWNjZXB0IGFuZCByZXR1cm4gbGluayBjb25maWd1cmF0aW9ucy4N
Cj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAzOSAr
KysrKysrKysrLS0tLS0tLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua19jYXBzLmMgfCAyMiArKysrKysrKysrKw0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfY2Fwcy5oIHwgIDUgKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQ3IGlu
c2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBhMzRkMzcwNGE1NjY3Li43NjQzZmUwNzllMTViIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0zNjQs
MTcgKzM2NCwxNiBAQCBpbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2NvdW50KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJcmV0dXJuIGludGVsX2RwLT5tYXhfY29tbW9uX2xhbmVf
Y291bnQ7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGludCBmb3JjZWRfbGFuZV9jb3VudChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQ0KPiAtew0KPiAtCXJldHVybiBjbGFtcChpbnRlbF9kcC0+bGlu
ay5mb3JjZV9sYW5lX2NvdW50LCAxLCBpbnRlbF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50
ZWxfZHApKTsNCj4gLX0NCj4gLQ0KPiAgaW50IGludGVsX2RwX21heF9sYW5lX2NvdW50KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICsJc3RydWN0IGludGVsX2RwX2xpbmtfY2Fw
cyAqbGlua19jYXBzID0gaW50ZWxfZHAtPmxpbmsuY2FwczsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBf
bGlua19jb25maWcgZm9yY2VkX3BhcmFtczsNCj4gIAlpbnQgbGFuZV9jb3VudDsNCj4gDQo+ICsJ
aW50ZWxfZHBfbGlua19jYXBzX2dldF9mb3JjZWRfcGFyYW1zKGxpbmtfY2FwcywgJmZvcmNlZF9w
YXJhbXMpOw0KPiArDQo+ICAJaWYgKGludGVsX2RwLT5saW5rLmZvcmNlX2xhbmVfY291bnQpDQo+
IC0JCWxhbmVfY291bnQgPSBmb3JjZWRfbGFuZV9jb3VudChpbnRlbF9kcCk7DQo+ICsJCWxhbmVf
Y291bnQgPSBmb3JjZWRfcGFyYW1zLmxhbmVfY291bnQ7DQo+ICAJZWxzZQ0KPiAgCQlsYW5lX2Nv
dW50ID0gaW50ZWxfZHAtPmxpbmsubWF4X2xhbmVfY291bnQ7DQo+IA0KPiBAQCAtMzkxLDggKzM5
MCwxMiBAQCBpbnQgaW50ZWxfZHBfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkNCj4gDQo+ICBzdGF0aWMgaW50IGludGVsX2RwX21pbl9sYW5lX2NvdW50KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICsJc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmln
IGZvcmNlZF9wYXJhbXM7DQo+ICsNCj4gKwlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X2ZvcmNlZF9w
YXJhbXMoaW50ZWxfZHAtPmxpbmsuY2FwcywgJmZvcmNlZF9wYXJhbXMpOw0KPiArDQo+ICAJaWYg
KGludGVsX2RwLT5saW5rLmZvcmNlX2xhbmVfY291bnQpDQo+IC0JCXJldHVybiBmb3JjZWRfbGFu
ZV9jb3VudChpbnRlbF9kcCk7DQo+ICsJCXJldHVybiBmb3JjZWRfcGFyYW1zLmxhbmVfY291bnQ7
DQo+IA0KPiAgCXJldHVybiAxOw0KPiAgfQ0KPiBAQCAtMTY1NSwyMyArMTY1OCwxNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9kcF9wcmludF9yYXRlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiAgCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgImNvbW1vbiByYXRlczogJXNcbiIsIHNlcV9i
dWZfc3RyKCZzKSk7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGludCBmb3JjZWRfbGlua19yYXRlKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IC17DQo+IC0JaW50IGxlbiA9IGludGVsX2RwX2Nv
bW1vbl9sZW5fcmF0ZV9saW1pdChpbnRlbF9kcCwgaW50ZWxfZHAtPmxpbmsuZm9yY2VfcmF0ZSk7
DQo+IC0NCj4gLQlpZiAobGVuID09IDApDQo+IC0JCXJldHVybiBpbnRlbF9kcF9jb21tb25fcmF0
ZShpbnRlbF9kcCwgMCk7DQo+IC0NCj4gLQlyZXR1cm4gaW50ZWxfZHBfY29tbW9uX3JhdGUoaW50
ZWxfZHAsIGxlbiAtIDEpOw0KPiAtfQ0KPiAtDQo+ICBpbnQNCj4gIGludGVsX2RwX21heF9saW5r
X3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIHsNCj4gKwlzdHJ1Y3QgaW50ZWxf
ZHBfbGlua19jYXBzICpsaW5rX2NhcHMgPSBpbnRlbF9kcC0+bGluay5jYXBzOw0KPiArCXN0cnVj
dCBpbnRlbF9kcF9saW5rX2NvbmZpZyBmb3JjZWRfcGFyYW1zOw0KPiAgCWludCBsZW47DQo+IA0K
PiArCWludGVsX2RwX2xpbmtfY2Fwc19nZXRfZm9yY2VkX3BhcmFtcyhsaW5rX2NhcHMsICZmb3Jj
ZWRfcGFyYW1zKTsNCj4gKw0KPiAgCWlmIChpbnRlbF9kcC0+bGluay5mb3JjZV9yYXRlKQ0KPiAt
CQlyZXR1cm4gZm9yY2VkX2xpbmtfcmF0ZShpbnRlbF9kcCk7DQo+ICsJCXJldHVybiBmb3JjZWRf
cGFyYW1zLnJhdGU7DQo+IA0KPiAgCWxlbiA9IGludGVsX2RwX2NvbW1vbl9sZW5fcmF0ZV9saW1p
dChpbnRlbF9kcCwgaW50ZWxfZHAtPmxpbmsubWF4X3JhdGUpOw0KPiANCj4gQEAgLTE2ODEsOCAr
MTY3OCwxMiBAQCBpbnRlbF9kcF9tYXhfbGlua19yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+ICBzdGF0aWMgaW50DQo+ICBpbnRlbF9kcF9taW5fbGlua19yYXRlKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICsJc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnIGZv
cmNlZF9wYXJhbXM7DQo+ICsNCj4gKwlpbnRlbF9kcF9saW5rX2NhcHNfZ2V0X2ZvcmNlZF9wYXJh
bXMoaW50ZWxfZHAtPmxpbmsuY2FwcywgJmZvcmNlZF9wYXJhbXMpOw0KPiArDQo+ICAJaWYgKGlu
dGVsX2RwLT5saW5rLmZvcmNlX3JhdGUpDQo+IC0JCXJldHVybiBmb3JjZWRfbGlua19yYXRlKGlu
dGVsX2RwKTsNCj4gKwkJcmV0dXJuIGZvcmNlZF9wYXJhbXMucmF0ZTsNCj4gDQo+ICAJcmV0dXJu
IGludGVsX2RwX2NvbW1vbl9yYXRlKGludGVsX2RwLCAwKTsNCj4gIH0NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+IGluZGV4IDM3
ZmZkNzE0YzZhNDIuLjFkM2EzZmYwMDdhMDMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBAQCAtNDEsNiArNDEsMjgg
QEAgaW50IGludGVsX2RwX21heF9jb21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQ0KPiAgCXJldHVybiBpbnRlbF9kcF9jb21tb25fcmF0ZShpbnRlbF9kcCwgaW50ZWxfZHAtPm51
bV9jb21tb25fcmF0ZXMgLSAxKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgaW50IGZvcmNlZF9sYW5l
X2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICt7DQo+ICsJcmV0dXJuIGNsYW1w
KGludGVsX2RwLT5saW5rLmZvcmNlX2xhbmVfY291bnQsIDEsIGludGVsX2RwX21heF9jb21tb25f
bGFuZV9jb3VudChpbnRlbF9kcCkpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGZvcmNlZF9s
aW5rX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlpbnQgbGVuID0g
aW50ZWxfZHBfY29tbW9uX2xlbl9yYXRlX2xpbWl0KGludGVsX2RwLCBpbnRlbF9kcC0+bGluay5m
b3JjZV9yYXRlKTsNCj4gKw0KPiArCWlmIChsZW4gPT0gMCkNCj4gKwkJcmV0dXJuIGludGVsX2Rw
X2NvbW1vbl9yYXRlKGludGVsX2RwLCAwKTsNCj4gKw0KPiArCXJldHVybiBpbnRlbF9kcF9jb21t
b25fcmF0ZShpbnRlbF9kcCwgbGVuIC0gMSk7DQo+ICt9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfZHBf
bGlua19jYXBzX2dldF9mb3JjZWRfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxp
bmtfY2FwcywNCj4gKwkJCQkJICBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWcgKmZvcmNlZF9w
YXJhbXMpDQo+ICt7DQo+ICsJZm9yY2VkX3BhcmFtcy0+cmF0ZSA9IGZvcmNlZF9saW5rX3JhdGUo
bGlua19jYXBzLT5kcCk7DQo+ICsJZm9yY2VkX3BhcmFtcy0+bGFuZV9jb3VudCA9IGZvcmNlZF9s
YW5lX2NvdW50KGxpbmtfY2Fwcy0+ZHApOw0KPiArfQ0KPiArDQo+ICBzdHJ1Y3QgaW50ZWxfZHBf
bGlua19jYXBzICppbnRlbF9kcF9saW5rX2NhcHNfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwczsNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19j
YXBzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5o
DQo+IGluZGV4IDMyNDg3NzdkMTI4N2YuLjYxZGJjZTg2ZWUzZDAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBAQCAt
NSwxMiArNSwxNyBAQA0KPiAgI2RlZmluZSBfX0lOVEVMX0RQX0xJTktfQ0FQU19IX18NCj4gDQo+
ICBzdHJ1Y3QgaW50ZWxfZHA7DQo+ICtzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzOw0KPiArc3Ry
dWN0IGludGVsX2RwX2xpbmtfY29uZmlnOw0KPiANCj4gIGludCBpbnRlbF9kcF9jb21tb25fbGVu
X3JhdGVfbGltaXQoY29uc3Qgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgICBp
bnQgbWF4X3JhdGUpOw0KPiAgaW50IGludGVsX2RwX2NvbW1vbl9yYXRlKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsIGludCBpbmRleCk7DQo+ICBpbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9yYXRl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiANCj4gK3ZvaWQgaW50ZWxfZHBfbGlua19j
YXBzX2dldF9mb3JjZWRfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2Fw
cywNCj4gKwkJCQkJICBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWcgKmZvcmNlZF9wYXJhbXMp
Ow0KPiArDQo+ICBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICppbnRlbF9kcF9saW5rX2NhcHNf
aW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gIHZvaWQgaW50ZWxfZHBfbGlua19j
YXBzX2NsZWFudXAoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzKTsNCj4gDQo+
IC0tDQo+IDIuNDkuMQ0KDQo=
