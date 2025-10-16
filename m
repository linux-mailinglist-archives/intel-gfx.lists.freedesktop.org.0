Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA1BE2F73
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 12:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C75310E9B4;
	Thu, 16 Oct 2025 10:55:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0PcUkpd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219B210E9B4;
 Thu, 16 Oct 2025 10:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760612137; x=1792148137;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZFjpks/mDOmlkZN84hLODf6fQ4RRjPNDrSUG/9Lus4g=;
 b=E0PcUkpdsIZMGMBE8lL+Nfh6scjlNIlFfzbZPY2s9+UHXIYtffixHELv
 I/sbAxdu+GSHUpv1Plh5nNY2wy9uUd881WdM1e50eutJPExIXeiy0FWu5
 meXC0YnKWDgoC9roe6DPA3ncatY48uZAwQqO9UPyakYTnLC3ZD1qKOSZp
 Do86XP+SiXT1wgMfZOl2rAXhJezX90reTuB1HSxzK4VipcZMr5DpURIB7
 Az1ft3M5PNoZ1LpxFy9bTS06MJ2b1LNfLamk5NUL5IH9RQe+jS2nAkKSc
 qvYZxLlbyi58tkLXj/4SGgYcGtRrJEKhrCmm03ROHuuGBzdA2QnI9OIs2 Q==;
X-CSE-ConnectionGUID: r2MezT5BTFG8WTPiMS3G9g==
X-CSE-MsgGUID: 9namK0NaQye34PUIOmwgdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62010310"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="62010310"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 03:55:37 -0700
X-CSE-ConnectionGUID: fiOi/WMJSAWiAdfuRyGKNA==
X-CSE-MsgGUID: +howVt+uRwa69QxANYa8CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="186438037"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 03:55:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 03:55:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 03:55:35 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 03:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lGzJ8NmrCmMySmbtGnVbWIvefd2spIhpobH0hAmS0ZaM+NdhPzgP6DJQr0QE/1/+xLuiT0+4w3w8aQFwPBivFgJT3WMnm5PueVTqvbwAnoBprSAgS0Gjeje0i3r6/wGr2a9LT35vCuZ8EGIg3IDiamxgOtQJJEzfo9zNyD2dGJSo+tksMWN59hN0UgSUHVbZGPeohzArMFsTy3UQDKKwjIu7ThX1Tn9Xun6vJcaWXOeW6bIcfjcWMnTkKDqL4AlJvs7tJVdQmqXS0LjgvEYJHUeNJPK30LJm2RYwzWTGlA+Pg7Bd+EUCYdihkqFJpHjwqBqCXIXSHuBmhYcqOFrdEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFjpks/mDOmlkZN84hLODf6fQ4RRjPNDrSUG/9Lus4g=;
 b=poDJClMtETC+oqeL0Kz8y6TBKACZ/00dzr9l9St09ntGRfYU9H/OW5/FUSfVaSwDO/6KjjS1/T3xlXqPuaqhUHMN9G/GW48bSBqQdgHEj61fv6fQYkzaRiaaivI8kYK3luI3br3B/dJHYZyCNWaroTjglwcX7MVoEZaohXQrnnp4mPLVeVZs8Wx4Mvh3NUWrIdshAJf/btZCfRUUzbljIv7vgDa9Jrxeib9MKrLVtnrVh+BmS/t/AoxWJ75ZFkgKM8O914Z+wxBHIbUKsqOANbYlgvNFNzKBG/yVVTwO1FxLlHxQRXWgX78TEGivTRAmrrF3vKgIOEOtE6AeSPEzag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY5PR11MB6535.namprd11.prod.outlook.com
 (2603:10b6:930:41::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 10:55:33 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 10:55:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: RE: [PATCH 0/7] drm/i915/display: Fix C20 PHY PLL DP/HDMI mode
 programming
Thread-Topic: [PATCH 0/7] drm/i915/display: Fix C20 PHY PLL DP/HDMI mode
 programming
Thread-Index: AQHcPCh3f58rmTjuPkuIXOOGWFBhWbTEnhWA
Date: Thu, 16 Oct 2025 10:55:33 +0000
Message-ID: <DS4PPF69154114FC448A588DCC95CCD7276EFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
In-Reply-To: <20251013095045.3658871-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY5PR11MB6535:EE_
x-ms-office365-filtering-correlation-id: 1a1067ac-3e9f-4453-d3f6-08de0ca287b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SEo0ZlJMS0ZQaTRyek9lYlZUazMyMmd1S2c0Z2E2RHhaU09Xc2V6ZHhDOGRx?=
 =?utf-8?B?RU9Zb29ZcUpOQThUelFyMjRVV1lVUUZSRkd4MUdBT1gycG1aQzhTNWtJNmps?=
 =?utf-8?B?eEZQK0lpYWRvQVo3UFora1dhR3p6SWxJemkzeTgySDdYTnFIc1NqNWZGdU5B?=
 =?utf-8?B?ZzRqRDNiRlZCbUw3YTg5UlhINEtkNS9JcDk3QkhFKytoTHlsMlh6VXNoVE8v?=
 =?utf-8?B?QmdlaWRXUWJmb1B0WUNrdzd3bTIwZjBveitycGMrQUs4THZOKy9SeDlicWU5?=
 =?utf-8?B?QWh0ZmpRdm1Zd21zL1gxUE41VzBtcGFJeFI0YVRCV1ZvZjFIemtYZDlvR2pi?=
 =?utf-8?B?ekNqSlcyL0xpOG9UaEZkMHlvNENJajRRN2xVOUFISmZ0VkZmUGoyM2lkSXlY?=
 =?utf-8?B?aG83TUd5U0FncEs3NnA2RW5pZExmVnFrS3VtQzhvcENVUE1wTnZSdXYxSGRw?=
 =?utf-8?B?Mm5MTVRPSFlvTkdVMlhXZkF0SzFBcGVSQmpwdU11eStURzROMjBBNnJTK0hs?=
 =?utf-8?B?Ny9lYVdTY3Bid3NCUEluOXpKSk5VNlBKUEI0dS9xeVpGK3F3U2ZVN3dIV0tj?=
 =?utf-8?B?RDNJRU82bUFiSlQ5RFBlcGV2L3h1ODJ1aFBoV2phT0N6MUVTODR2RjIrdXBN?=
 =?utf-8?B?WWhMOXVBM1J3Rm85dmh4V2xXY1g4RnlUUWJvbVhNTExXYkZrSXBrVXU3NU8x?=
 =?utf-8?B?SG90YnA2bFJRM0VGeHhEd2dwNys5QW0yMzZDd2s1UVM0VHVHTSt0YXhxSFJi?=
 =?utf-8?B?Q09QVTVGL0xWa1lZUk1JS0k4Zld6S0lwb3dKOTRVelVDVXJ6Y1grbnlzVWFI?=
 =?utf-8?B?T1dsRGk5aksyVXI2RTdOaTFOWDhNcGtzQXhNWWF2emQyMWE0b0hjVW5Fa0Ir?=
 =?utf-8?B?Q0kzNjBGOTR2cEdxdjRISXlzVXlqZVMvaXowa282a0ZiNUY0ZmZmeDlUT3ho?=
 =?utf-8?B?cDQ4NDg4ZURQQ2tJUjdac0FVem10M0MvdlgwRHowSitCWERxdWpYaDRoY3FE?=
 =?utf-8?B?YkVCNktxUG9vUm1FMXM0cExCTFZTOWczTE5YUDc2aHcrM1NPRTU3V3BJcHhn?=
 =?utf-8?B?cWVXTjVjeEhxZXd3UEpNYjR2VnBvVyt0QnBobzU1QnpqZ1VVdFczMkZaS2wz?=
 =?utf-8?B?YXpBTE1EU2dGbVo3NkwrTjVsa0U5Z09SOTR3TjBGdnBiQ0VGZk5LUmJCYndY?=
 =?utf-8?B?MWM4VnpSRUZGREF4ZGQ3WkNRU1Jmdy9vSTdzNzZ0SkNuSXVHNDhEd3A5dC9a?=
 =?utf-8?B?SkM1alJKQVhmMXB4SFljM3JjMWdJSUk3SWt3K21vMEtrTzdzMXFRSUIrWXFS?=
 =?utf-8?B?ZkRRQUZFcWRqd2RhSDVuT1p5M1lNbzFDQTN0N2dRZVlldFNYOHB1TXlPL295?=
 =?utf-8?B?TU5EcUdWSVVkTmZFdkhYWmRZb0sxcGZ5c1dLb1JYTjVvWVlpNTNaTUNJbTlh?=
 =?utf-8?B?RHBTcHVMbk1yZUc0UkEwWmgyZUd5MmdUY3JKWHFaeHdpeVN1ZERtMEdqMWtk?=
 =?utf-8?B?Nmk4eDJGS3YvNkhtbThOYklKS1NtRUdFZnRkbDE4NCswMUExMitwZC9lcC9y?=
 =?utf-8?B?Y2Z3NnFYMVV6cS8rMHJLSGNzejIxQy9KTTdHS2hZN011TlUvdU9DalUyTWhl?=
 =?utf-8?B?bzNuR0I3Nzc2OUxxajBFWmVtYk0yTERXMDFkWjAvQWxyc3Y0U0lOYU0xODQx?=
 =?utf-8?B?a0NDeHBZVmd6a3NwS0o0WXRWNmJQUm4vVXFoVVJSbGpTQk5BczlKRnpPMWtw?=
 =?utf-8?B?bUFBSktBc1EyQ0dhU0N4Ti9WTUFWTHZLRGZid1kzNE5aUGpnQWJOOEJyWDUy?=
 =?utf-8?B?SDhMU2VJNHc3RkVmT3Rib3paNVdlRTdoTUJuK2ZjT1ZIZTNxMytKSUZmbDUr?=
 =?utf-8?B?K1NESkhxMVNlZm5VWE1za1dseTM5cklQVGhKODJZNVJRa2cwT2hFSnpJQ0lp?=
 =?utf-8?B?enZkaFdxUzFVRWoxZ3dXY3k5eGRFeGhUMTdCTHhEcnBVdkNzazBvVzZiMjRq?=
 =?utf-8?B?aVZ5SURudDJNUHloSFBQbnFoL2haN0xuMUt3MnNyeS9NNUlsTW1SV0NDTW1v?=
 =?utf-8?Q?sbZGoK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzJjUGk3bWlCajA4ems0cStISzVtM2lrSklTaGlpMmZ2c0ZqR2M4UTJaVDcw?=
 =?utf-8?B?ZjYrYmsrZDQ1NGlXT0ZxczVJK1VKcHNXQjd4ZzAvMkJReVhITEdHZDhmeUN3?=
 =?utf-8?B?cGdELzBqSEJybHRheWlCZVJrbEpkRWNoYnBrYUN1SkpUNGZVQ0VZMmhta3R1?=
 =?utf-8?B?Ujg2STZSbGEwbk55dnJXMzBuWS9UNU84Qk96YmE4U2dVYXcwQnMvOG5OWUJl?=
 =?utf-8?B?WlFmSkNIYVZDR3QyN1Q5bExWT29Qa2JhSkxlS1M2V3dZc3gyVU1JNmp6S3o2?=
 =?utf-8?B?a1R6SzBwOEc5dmlyZjlsamJMT29HR0I0Mjhzb0lHZEV1c2pHRm80ajBDNHRn?=
 =?utf-8?B?bHZDNUkyRXc3bXQxdWhMUjlWZVNEUjQzYTRIczE0Ny9mOElTT1Y3V0F6NTZT?=
 =?utf-8?B?OG00SWZUM2xQNTlOQVBTSUwzUjNzZkZnMVIwSCt4VlVYYkt5UFpOcklmSHU2?=
 =?utf-8?B?QXJuenpsc2tLRldLVW44Z1EzNXpWd2ROQkU4NFY3ZzNsRmJGSUQvemc4M2dn?=
 =?utf-8?B?aWNyM2t2MC9VNlI3d3R6OHp6ekRTb3FNQW52c1lBWVY5ZFpIVmVNWGZtczFF?=
 =?utf-8?B?YjhXaC80amdLMUt0Tlh3S2I5QUZFMVlhdmU3WmZGTVE3d28xU1FGU28wSGlY?=
 =?utf-8?B?dldYU3VocEd1RHhSb3F0eXJad0hneVF3TVRINk1IdXA2R2xhUWRhVkRzcW1t?=
 =?utf-8?B?YldlZWhsb0pTSFl5QkJsbHBzOXJTdkJDZEt5a1dHU3FnaGhyVTlEdXhLSW05?=
 =?utf-8?B?WVc2dXViMklFUFNQZVM4Qy8wUXRXRkFlQ25CTzVCQWlDQ2owNkF1L3Bya21X?=
 =?utf-8?B?ZjhlU0JmRENkblduSVhGUXNkb05HK3RtMVVXcFpMNTNteCtlMVRxc00zMCth?=
 =?utf-8?B?VVVXT0Nhck9jYmxSYWgwalFhSlFuclM0OEdKcWZlSUcwNy8rV21SUEtjbUJ5?=
 =?utf-8?B?Ly9ONjlMOFBwZ1R1RUZ3V1dreHpJSlRCTDFEenBlSmpoRlVwbjFyNnVMVGxy?=
 =?utf-8?B?cmlCd29vWS9vS3pkQk8zYUlleGluRXdoa0ZUb3RiSVNFam5aQlFWc3VLY25J?=
 =?utf-8?B?aExueTZEbW9KZGNCWSs5QWIrRS81VldOR25Rd09GbFBHaE9hbVZkL1kwWCtY?=
 =?utf-8?B?NlZZTVBBQTgrbTZyOS9kMkIyZ1VUbE1GQVZMUjBqcEZuRFB5eC85aC9EV1BB?=
 =?utf-8?B?elI1R0hrU0krNndkZE45MXdxOHBMTlhmTThJZTJwWHpRNEJnUmgwa1pqdHpl?=
 =?utf-8?B?L1JyQlhMMG01eFVzMU9ld0ZUWmw0cE5jNzlYdkpSV2V6VW1Kc1A0TmUvRVdR?=
 =?utf-8?B?SkNsOFhKblkrVGpzUUMvcldkZzJUNHhQZUxmZUZNMElwZ0xvQ0VvVzV0aHc3?=
 =?utf-8?B?QlczUjNxUFNGczR1QW0xbFMyNEp5SWRXaUhoVkJKU2lGaVRUL3Rrb0NtYmVH?=
 =?utf-8?B?ck1MVGgycDNHSGJzSDNVMGFjNXR3NDlab1h0RVJxdENKaGtXU2FJN04xUVgy?=
 =?utf-8?B?QlBESTY1cHN5SmVXQU1RUXc5TVJEVHh2dEtEam84Sjlmc1RETjdyc0MzRmdp?=
 =?utf-8?B?TVA0eXlhUC9OaTIwOGRFYTFKNXVDWTJFcUYxVDhiT2JYQjVvaTR6a1FOQkpY?=
 =?utf-8?B?QThnczQwTndzQkhnTXl0R0dNNG11eEc2VTcvb0pMMlc5d0E0eERYUzNwblpm?=
 =?utf-8?B?Z1RoSVcrQWFxd28rdXA5cjBLeU9oZktYSXhicm56cldydVRxdVJZbm1mV3E5?=
 =?utf-8?B?RU95d2xjODJnVjY0ZEsxN1FmMTNuMnVuZ2FRelNPOUhuZXdTaGJVYmZyYkFs?=
 =?utf-8?B?NEtWVG1PZHUvaXF6akM3cTRFOUVyVUpSMkcyTVU5VjFUbkF3NEJ3V3BPdUpy?=
 =?utf-8?B?WTlOL1pjZFljSEZMczFLZUp0NkZKdzh5OC84VWtNQWNaQU1Vek9kQ3Y2UVI2?=
 =?utf-8?B?ZFB2eVM5QzB5UHYwTlJsWHg0YkhidmZvVzFyTmRFei9Rbkg2WE94Q3dYOGo4?=
 =?utf-8?B?RWNmV25wUkRkRS9Eb09xZXBET3lRYnYwYVROZzVBc2N5RGk3bHFrelliZXJh?=
 =?utf-8?B?RDR4QVZSMjh4WGk0QnN2eEtITDRWZjVXT2Zja1RXSkZxUmxjNXcwTzBWSHZE?=
 =?utf-8?Q?yCHFyRbIaKvofij9f8x8xoZ9t?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a1067ac-3e9f-4453-d3f6-08de0ca287b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 10:55:33.3888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XwHxcuOmJ/Oodby/UOhMhj9I8bZfHeU42BPsrIBeDnQr3qDnf6Q6jtBjcQHR9A/p7amm/QU89z32NgNSQanDsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6535
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYWhvbGEsIE1pa2EgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCAxMyBPY3RvYmVyIDIwMjUgMTIuNTEN
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSCAwLzddIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCBDMjAgUEhZIFBM
TCBEUC9IRE1JIG1vZGUgcHJvZ3JhbW1pbmcNCj4gDQo+IFRoaXMgcGF0Y2hzZXQgZml4ZXMgdGhl
IERQL0hETUkgbW9kZSBwcm9ncmFtbWluZyBmb3IgQzIwIFBIWSBQTExzLiBXaGlsZSBhdCBpdCwg
aXQgYWxzbyBhZGRzIHRoZSBtaXNzaW5nIHBvcnQgY2xvY2sgSFcgcmVhZG91dA0KPiBmb3IgQzEw
IFBIWSBQTExzLg0KPiANCj4gDQo+IFRoZXNlIHBhdGNoZXMgd2VyZSBvcmlnaW5hbGx5IHBhcnQg
b2YgdGhlIFJGQyBQTEwgcmV3b3JrIHBhdGNoIHNlcmllcyBbMV0sIG5vdyByZXNlbnQgc2VwYXJh
dGVseSBzaW5jZSB0aGV5IGluY2x1ZGUgYSBmaXgsIHdoaWNoIGFzDQo+IHN1Y2ggc2hvdWxkIGJl
IHRlc3RlZC9tZXJnZWQgc2VwYXJhdGVseS4NCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNTEwMDEwODI4MzkuMjU4NTU1OS0xLW1pa2Eua2Fob2xhQGludGVsLmNvbQ0K
PiANCg0KVGhhbmtzLCBMdWNhLCBmb3IgcmV2aWV3aW5nIHRoZSBzZXJpZXMuIFNlcmllcyBpcyBu
b3cgbWVyZ2VkIHVwc3RyZWFtLg0KDQotTWlrYS0NCg0KPiBJbXJlIERlYWsgKDcpOg0KPiAgIGRy
bS9pOTE1L2Rpc3BsYXk6IFNhbml0aXplIFBIWV9DMjBfVkRSX0NVU1RPTV9TRVJERVNfUkFURS9E
UF9SQVRFDQo+ICAgICBmaWVsZCBtYWNyb3MNCj4gICBkcm0vaTkxNS9kaXNwbGF5OiBTYW5pdGl6
ZSBQSFlfQzIwX1ZEUl9DVVNUT01fU0VSREVTX1JBVEUvSVNfRFAgZmxhZw0KPiAgICAgbWFjcm8N
Cj4gICBkcm0vaTkxNS9kaXNwbGF5OiBTYW5pdGl6ZQ0KPiAgICAgUEhZX0MyMF9WRFJfQ1VTVE9N
X1NFUkRFU19SQVRFL0NPTlRFWFRfVE9HR0xFIGZsYWcgbWFjcm8NCj4gICBkcm0vaTkxNS9kaXNw
bGF5OiBTYW5pdGl6ZSBQSFlfQzIwX1ZEUl9DVVNUT01fU0VSREVTX1JBVEUvSVNfSERNSV9GUkwN
Cj4gICAgIGZsYWcgbWFjcm8NCj4gICBkcm0vaTkxNS9kaXNwbGF5OiBGaXggUEhZX0MyMF9WRFJf
Q1VTVE9NX1NFUkRFU19SQVRFIHByb2dyYW1taW5nDQo+ICAgZHJtL2k5MTUvZGlzcGxheTogRml4
IFBIWV9DMjBfVkRSX0hETUlfUkFURSBwcm9ncmFtbWluZw0KPiAgIGRybS9pOTE1L2Rpc3BsYXk6
IEFkZCBtaXNzaW5nIGNsb2NrIHRvIEMxMCBQSFkgc3RhdGUgY29tcHV0ZS9IVw0KPiAgICAgcmVh
ZG91dA0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
ICB8IDQzICsrKysrKysrKysrKy0tLS0tLS0gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5X3JlZ3MuaCB8IDEwDQo+ICsrKy0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zbnBzX2hkbWlfcGxsLmMgICAgfCAgMiArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDM2IGlu
c2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
