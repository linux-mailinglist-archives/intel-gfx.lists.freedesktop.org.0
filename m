Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C24B37B2E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 09:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5573A10E70F;
	Wed, 27 Aug 2025 07:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ijwd/4cX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 192F410E70D;
 Wed, 27 Aug 2025 07:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756278247; x=1787814247;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=KDGcavgHCR7m/5lFmU/2mlSQgTbm7xMMzfldth3n7Yo=;
 b=ijwd/4cXHS3HmEAdEk2e8cbUm2aXYw8Xxk17a2SLic/j6Qhg4p7c4pcF
 aHv3zWtAX6el8L14JcFznLswz5JA25RWoqeQyiDnEbUVxt3bQKklpSVLf
 ZZAoMnz3J+k+8DGIj7XUzU7ae8WEoFtL7SPHwUVmKFrx6xqzHJy6BoCeb
 nJlgjqIaXKiDlfP41LoswS+T6fy7YzFVkvHKhfdgRYjeR6E2yxhYYbEui
 voUDNHXtpCfgwPXE9H5uRHQcdc0Kh4lce+HsmhH0P5ikCRyrCpCTwel0d
 2CzBCVYOo/Nr43GbdtUQ2xE3XvcToPLlE2lX39TrD2hRKEh+IGg4goR7T w==;
X-CSE-ConnectionGUID: jE9J681MQImQ7thNYLZicA==
X-CSE-MsgGUID: J4FoTcD2TnyeUz5/wuPQJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="76123765"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="76123765"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 00:04:06 -0700
X-CSE-ConnectionGUID: x3kol9ZHTLeGUUxWRPcnqA==
X-CSE-MsgGUID: KU/qscRXTme3MEqWdp8dyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="173936673"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 00:04:06 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 00:04:06 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 00:04:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.41)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 00:04:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHLPqCDWefaXXVAg3/J89FIt+MrHUmk1MIf/+j4+Wuj206JNeiOAbQCc+XPbV+Ob4/azgDk9Q5S5Tk/UABgWph1VizeGjmgAlVC9LV16Wz4id3U+GtHAP6z8A0FEOb+vL9vYvMv+s6U1YGZZtb4BxEwejFKsM5pAisP+d7hiBMBtkJQJFP9oBdOH1KanI58huUYpziaewgoKOFYzK9rncS+luznYmSrFWSR5r2CBps/yaj+AZURKZRjvXHibqQyzvvVKH775pTLqryTD+rml7ropU1P7foHq8pd5ZQwgYIYIoXltmDtWKMS8aC7dTWjIuE8wggGOZDDNcbiL2RXA3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDGcavgHCR7m/5lFmU/2mlSQgTbm7xMMzfldth3n7Yo=;
 b=Eig50FCSGKCauxJzCazfYaOoY14Sl0MhuK4NIaVQlUWCIR9LA/7ZYj+rwIscc9uFYeuWzPAxlu7dmPTCIHoWVCXvUHTzHKfPkEEKL6aaVnDU3QUubdDIuGmqfuSUDUHNGWSAwlSWZC/MvKEnEli40SHth39YIrEGyqNU1YMQ5RoO32uEgqgH0kwv34tRG4tc9kUwHFWXi2/K9IU+ixGRHTLlFLIvl1a1NBZpzI8U5Bo6latZDcZelTHzg8G8weYNaRqJ5slYJSBQCdg+Mrzot30+ep87FzspQG9sLc0+W4q8H9ezeToAwktX6hUGVSedEosDea2Ud31j5QptSni1BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6759.namprd11.prod.outlook.com (2603:10b6:806:25e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Wed, 27 Aug
 2025 07:04:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Wed, 27 Aug 2025
 07:04:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "B,
 Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Check PSR pause counter in
 __psr_wait_for_idle_locked
Thread-Topic: [PATCH] drm/i915/psr: Check PSR pause counter in
 __psr_wait_for_idle_locked
Thread-Index: AQHcFmON7xWp20UosUWSYQoVVTyatrR2FL8A
Date: Wed, 27 Aug 2025 07:04:01 +0000
Message-ID: <7c5c40332f103362d0523383ce977efc54f9ae3b.camel@intel.com>
References: <20250826074457.1992524-1-jouni.hogander@intel.com>
 <DM4PR11MB6312374951C02A1B371F300E9039A@DM4PR11MB6312.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6312374951C02A1B371F300E9039A@DM4PR11MB6312.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6759:EE_
x-ms-office365-filtering-correlation-id: 72e76aa4-2e3b-4705-2e4c-08dde537e6e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SmVxYmVVMnBiUU04KzVVRWhKSHp0YmlBSGpTellxa0p3MGx6OXloWitMaTNI?=
 =?utf-8?B?Z2tSdzB6MU1zYjhBaE5KamNWWis5NzB6T3ZMK2ZnenV4TFlEaFFLNTRFZ2tI?=
 =?utf-8?B?RDI5bThpbXF5VWJOdFZlVnRPUVFpRlNCRWFxSXVyeDVoanlBa2tIRzY4TzFq?=
 =?utf-8?B?WjJGTXhQTmVUeVgwUE9MOFVnZktsdFhlTnZwVFZEU2w1R1JUUlAxaTdFVU1w?=
 =?utf-8?B?b1NCcDU5a2w4MFR2ZzN1NFAySlpTQ0x6SXp5SXZ0emFDMGpXV2pOUkpzQXRj?=
 =?utf-8?B?Unk4Z0xtNSs3NTEwS0dXR2NkbVV3WVoxNlRBaDN2MHBqV0tCb1pGTldwdDU1?=
 =?utf-8?B?d09aUFZqRnJ2RDZNUnQzRXRsWFdKaitQc0dOQk9MRFdtSmRtUkRNOG9qalM2?=
 =?utf-8?B?N0U1SnNkL0NRN1BlTVV4bnBVOUFLUlhHQWxpbVVoYloySnY0YXVGZFdLMmI2?=
 =?utf-8?B?Qnh6TVNJRkw0MnNTYWhUN2szZHlwMElTMTd5R25MRmlvSzdROWtGSTI4TDV2?=
 =?utf-8?B?b3FhTWRzZzJMdjdwSDhraEM4UkNkU0Z0U0lVNlgrVTREL29XUnMyMmg5MGp3?=
 =?utf-8?B?Q1lxMXY1YWx6WmpuSWwzTW1GVUt2TzMwZkNVMEJxdjJIYXB4NllmdHBOazdy?=
 =?utf-8?B?WXY1Y0hWblZ0RVkvQTNLVW1VTEhwM0VKM3YrQjF4M242WTlkMFZMOVpXdldW?=
 =?utf-8?B?N21UQlY3VUlOTlJYL3J2UDNaRUE1ZCsyeG42Vzg0eWorU2lJMVl5Q1M1N1VK?=
 =?utf-8?B?bVQ2RmUzVUp3VnpFVWNnUktmbWNkbDhOdnFFYmoxUGVKazNtNkFZVk1OLyti?=
 =?utf-8?B?S1FGNll5RmFwQUVoSm1DV0Q1MkpYTXdiL1ZJNmJPQlhka3dRRTY5SVB3S2Zi?=
 =?utf-8?B?aHltMkFHRnVaa2lCN1Q4aHgxTVA3R0pYaFdHVXBYYkkzTEJzTlVqZEcwVkJK?=
 =?utf-8?B?TFBQUkEwUm9qNHhjcEoxUm5YU1ptSWFOakVnTWdTdVFXWlpMM0tFMUUwTkhR?=
 =?utf-8?B?ODhMNThGdmRKU0s0Wlo4K0RZTWVzd0dEUkZaSlBPMk9YNktWYjAwejF1MnY4?=
 =?utf-8?B?Q1RTY1kzQWRoSW9PdmZRdUdKazB5T055bzJ1Z2ZjZy95Yk1aa0VkQm9TODVx?=
 =?utf-8?B?dWZkT3RYLzQ2N3NhTVhPN3RaVkl3Z3hVenlNMlhmK25VNFgvM1M0LzdLNXhE?=
 =?utf-8?B?QW12SmVUVlAvcE1QZitxRW9POElNOVBCVTNqb0xRWmdpTHNJS09hbGsvMUxs?=
 =?utf-8?B?K1VoSUhzTHplZ0E0QUo1cEFCMEdHWUJyS1JnQVB2S2tjaFNyK1NJTWgyRG11?=
 =?utf-8?B?NElwTGVFZHVkc05mSEFyRVp3Yi9JQXdEZ24rRVdpUkVGek9wZ01PS3k1R1FI?=
 =?utf-8?B?bEhvdjVHb3l4WS9yN3ljd2M4U1U1RnpYcGV2c2lvcFdocWUyMTgzMVJUZ3Nt?=
 =?utf-8?B?cjBuSFhXWm5OckI0MHcxMGlvT3ZDYkt1SnV2Y0tDUE9Pdy9QTFpIclZMVGE5?=
 =?utf-8?B?U1dqNXhpeVAwZnYyVjJuaFhmMThZSmQrcHN0QmJXaUUwSnJRMkZnNk9nRWdt?=
 =?utf-8?B?cUQvOGR4MXV5VDFzUXZ0NjBWajF3ZU11amF0WUFqZWhQenNrOFpVeXJuMUhp?=
 =?utf-8?B?aTBxWHdXWVd3bDdSYVRUZFFtMktTYkc4dkF6SEh3UVBIWElwREsxNGtOZ3BG?=
 =?utf-8?B?TnU4Tng3bHMxMWJjcjlUTnBuMnNnUlVVRWxpbGhvb0duRDNZRXkza2RGWjZv?=
 =?utf-8?B?MUR0ZWhGM3NtbERkYVIxODZIU3VFQjMzZXB3Q2QyVS9uZC81cm9VY1FGTndY?=
 =?utf-8?B?TDJ0NlB0Q1UyUXQzYjlRSXgveW0ydDE3UFVEZ0hNUlhLRDZkb2RYay9mSEJy?=
 =?utf-8?B?TkZkclNablgwMjlyUE9qaE8wcHQ1Y3pidzZ5MVFBWUludVJDbTg5OWpoYUZI?=
 =?utf-8?B?aFdvTU4vRHFzaGRQclJUQjA0MVFlZE5VWG5TbGFJNWYyL1dVbHFFQ3d3cm02?=
 =?utf-8?Q?W5lnUN9pP37xyWBiP72NTwX2VfRdKE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NURvdk5MTktFWlBmMEtaL3BTYnA5U1NVdzRmb3d3djc0ZFMzY2pGN09zSWty?=
 =?utf-8?B?ZXNSNHgxdU9qNXFIdmRuL3ppZTBWVHF5RUNoL0ZobEN5bXc3S1hMVThvYmF1?=
 =?utf-8?B?T3F2ZnFhdzlBeTJzNXlDcXJSbnlQblZ3NlZJVVZsU05GTEsvWEFYVWtLbUQr?=
 =?utf-8?B?RUR5MkdNMDJVWmtEOXBqNWdTOHVPU0lZZ0o1NXNDUWFTSDRGZlZySjEzc1I2?=
 =?utf-8?B?K3VtTnQ0T1lqeGFabVl2RjVJdjZmdjJ3eEM5dWFzWWx3Y2hUUERvTENFN21N?=
 =?utf-8?B?VUMweEUxcEFONGhnUVZ1L21FMUwxdEhTa2svdThvM0lINk1vcHBacUtsd2sr?=
 =?utf-8?B?WFpMRzhvRzNHN1RlVkVEMWN3aEwwVnc5SjZEbUFWa2pmSDdSSnM1WDdDdFdq?=
 =?utf-8?B?eldVVElqSmE1bFcxZ1QwcXhXR2ZvQklpYVhQUGRNZGhsTG1VRUNJbzVmc3Ja?=
 =?utf-8?B?SzZXZlZ6OGI2bUZvWDRYb1hpVndzYW1UTlQ2b1VjZHc5ak1XY0s4Y290RjZa?=
 =?utf-8?B?VE9CL1NvYytGZnB0aUFtQ09NdmluY0ltaGVVT2h3U1BrWmJ3ejA2R0FteEhL?=
 =?utf-8?B?dDZCTFhyWHUxbmFnbStLS0hXYWhaRk9ldWRhdFNpbTNLTlZSTGlhMjZDN2hZ?=
 =?utf-8?B?Z09uVzc5WE1QTWMzR2hsNFRXSWd0SG0xRnQxUW9VT0MvNEkxUkhnVXgyM1ZV?=
 =?utf-8?B?WXR2M3RPT0ltVWpBOEx3VUZxdmg1VStaUG9aektjd2xDa0pTcXBMdTd5OXQ0?=
 =?utf-8?B?L1huV3RKSk5ZUkZIUTJaeFArQzUxVmlIZUlTU3p1elhXSW1xWTZ3alR1ajFy?=
 =?utf-8?B?Q2hzN0NKOTB4VFZ3cHJ0V2JoZUFIbkxBUGlBbGdpbkxUYmJiRXFkbjQ0YjU1?=
 =?utf-8?B?dVc5NkRPbENMc0ZuenlkbERGOUZWaVpQSDIwT29ENGFoOGJCMTJmWCt6b0F6?=
 =?utf-8?B?R2pJL3daTGt4UmZCam9RWnhaVllENHY2VWQ4V1p3eHQ1bVE3cDFZVGZoajJx?=
 =?utf-8?B?dGcwc1ZFZkFFZ1RuejBzQWJMZHVQUUVEN2drSEVLN0FjZGlBbmlxenZ2MFFC?=
 =?utf-8?B?c1l3YzFtaG1VczBBc25DSGJ4bVN6SVo5WE1Zeko1T2NYdWxBUVptVDZtSWRz?=
 =?utf-8?B?NjRDaHpaNUpNTFJSQWpkNmdNemF3K3hLL1h5SzA5Z2t5Q3I5NS9QWk1lOG0r?=
 =?utf-8?B?LzA1c2pVTXJmeDlDS280bzJ3eWNQcmgvS3NLMHhlOGFOdDNZQ3hFdXFPL0Iy?=
 =?utf-8?B?OE5jYTRBVGZldGNsc0k0bGw2MlJBNmhFcXF1MFlpc2xJL0RTMzhIQUxMdkpt?=
 =?utf-8?B?aGpqRmxxMkxSSml2S0luT2V2SStzREhKcW5ZU2ZmS0gxZmc0dWtxak9ER1ZT?=
 =?utf-8?B?dHNTbmduVGNqU0ZVTDlMUnpDV2tVY1k4SnJKWlJLV1lESnZiWEszOEgrQUwr?=
 =?utf-8?B?UU1WdGN6ODAycTF0QktMZC9sK2xNdEhnMzA5OWIrWmZqWVJudmxRV2d1WVJS?=
 =?utf-8?B?UUtlOUVBazJlYkkweEh1cjBhenJOSnpGSmZxSFA2allSbzlSTVp1ZmdjYjl1?=
 =?utf-8?B?aXFobDFuMVlVTWFURWRnUW5RWUZqYVV1aWlnbEJZd0lDcjF5TlV0ZTlVcytL?=
 =?utf-8?B?ZjI5UVRYV3ZZbGh5R3lwY3ZsenhJbmNmSEpBeVMxalF2N3JrOTlBK1VuRnB2?=
 =?utf-8?B?TGJKa1hsOUZMSHh6TnpvdDlYc1BYOXhXeDlSenRkZ1ZHSzMrVWYzVWlmRHVy?=
 =?utf-8?B?WHAvd0Y2MzNHU1VvbXVtT212aFN4Y2o1TUI0UkxFRVkxcXZBT2xCN3FpMzRh?=
 =?utf-8?B?eFNhUDBXYi82dXNKTEJPc0RIRnAzM2RKR21IcG9vSjZWTXMzamQxZmxUcUdI?=
 =?utf-8?B?UTVIc3JmTXhzQ1I4QTlueUdBSTZJM3dOTG1zV1pkdGMwR21zM3RBYUVFdWsr?=
 =?utf-8?B?bnJUSjE5M21RWStrZ2lUTC9KblFES2ZOVlNCcVNETDVNekFBZkJwTHI3dHZG?=
 =?utf-8?B?c3NXS1I1eGh4VU1meEttWm5PRmQ5OU5zcmp0THByRksyeHlmdTB5UzFnalRS?=
 =?utf-8?B?VUNsMHNZajVzelhLNGowWldySWpRS1E2MFFIMzA5RWpiNkFlenhrNWRiK1B6?=
 =?utf-8?B?QjArb1M5UTlDMlZNSmJvcmlNaHJnQTkzQmw3MGQ3RzZhWDhacHQwRTdkWUxv?=
 =?utf-8?B?NERLVU4xRDVPZFZ6dzBRWmJzL21SRE5abUtadDh4MFZTRDFtNkNmY0F0OERT?=
 =?utf-8?B?dnN3VTUrSkNGaEF1WDRPa21raXhnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF25CDC970D2B14FBB7474B304D881A4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72e76aa4-2e3b-4705-2e4c-08dde537e6e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2025 07:04:01.6185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjkzU0nzTrGJb/yk+llcHXrtP04zZ012MK8Ib43eEZdJF2Ra7Eky4yrzWO34TAU8gM/BGgu12X/4Gl+ICtzpjKUNeGUEQeezLETySAjqKBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6759
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

T24gVHVlLCAyMDI1LTA4LTI2IGF0IDA4OjI5ICswMDAwLCBCLCBKZWV2YW4gd3JvdGU6DQo+IExH
VE0gDQo+IA0KPiBSZXZpZXdlZC1ieTogSmVldmFuIEIgPGplZXZhbi5iQGludGVsLmNvbT4NCg0K
VGhhbmsgeW91IEplZXZhbiBmb3IgeW91ciByZXZpZXcuIFRoaXMgaXMgbm93IHB1c2hlZCB0byBk
cm0taW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91
bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+IE9mIEpvdW5pDQo+ID4g
SMO2Z2FuZGVyDQo+ID4gU2VudDogVHVlc2RheSwgQXVndXN0IDI2LCAyMDI1IDE6MTUgUE0NCj4g
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBDaGVjayBQU1IgcGF1
c2UgY291bnRlciBpbg0KPiA+IF9fcHNyX3dhaXRfZm9yX2lkbGVfbG9ja2VkDQo+ID4gDQo+ID4g
UFNSIHdvcmsgaXMgdXNpbmcgX19wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQgdG8gZW5zdXJlIFBT
UiBleGl0IGlzDQo+ID4gY29tcGxldGVkDQo+ID4gYmVmb3JlIGNvbnRpbnVpbmcgdG8gUFNSIGFj
dGl2YXRpb24uIF9fcHNyX3dhaXRfZm9yX2lkbGVfbG9ja2VkIGlzDQo+ID4gdW5sb2NraW5nDQo+
ID4gUFNSIG11dGV4IHdoaWNoIGFsbG93cyBQU1IgZGlzYWJsZS9lbmFibGUgYW5kIFBTUiBwYXVz
ZS9yZXN1bWUNCj4gPiB3aGlsZSBQU1INCj4gPiBpZGxlIGlzIGJlaW5nIHdhaXQuIFBTUiBlbmFi
bGUgc3RhdHVzIGlzIGFscmVhZHkgY2hlY2tlZCBhZnRlcg0KPiA+IGxvY2tpbmcgYWdhaW4gUFNS
DQo+ID4gbXV0ZXggYnV0IFBTUiBwYXVzZSBjb3VudGVyIGNoZWNrIGlzIG1pc3NpbmcuIER1ZSB0
byB0aGlzIFBTUiB3b3JrDQo+ID4gbWF5DQo+ID4gY29udGludWUgdG8gUFNSIGFjdGl2YXRpb24g
ZXZlbiBQU1IgaXMgcGF1c2VkLg0KPiA+IA0KPiA+IEZpeCB0aGlzIGJ5IGNoZWNraW5nIFBTUiBw
YXVzZSBjb3VudGVyIGluDQo+ID4gX19wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQgYWZ0ZXIgUFNS
DQo+ID4gbXV0ZXggaXMgbG9ja2VkIGFnYWluLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIgKy0NCj4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggZWVj
NGY3ZGMyZDY2Li44YjRjZGY5YjMwZGIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMzA5Miw3ICszMDkyLDcgQEAgc3RhdGljIGJv
b2wgX19wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVs
X2RwKQ0KPiA+IA0KPiA+IMKgCS8qIEFmdGVyIHRoZSB1bmxvY2tlZCB3YWl0LCB2ZXJpZnkgdGhh
dCBQU1IgaXMgc3RpbGwNCj4gPiB3YW50ZWQhICovDQo+ID4gwqAJbXV0ZXhfbG9jaygmaW50ZWxf
ZHAtPnBzci5sb2NrKTsNCj4gPiAtCXJldHVybiBlcnIgPT0gMCAmJiBpbnRlbF9kcC0+cHNyLmVu
YWJsZWQ7DQo+ID4gKwlyZXR1cm4gZXJyID09IDAgJiYgaW50ZWxfZHAtPnBzci5lbmFibGVkICYm
DQo+ID4gKyFpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXI7DQo+ID4gwqB9DQo+ID4gDQo+ID4g
wqBzdGF0aWMgaW50IGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5KQ0KPiA+IC0tDQo+ID4gMi40My4wDQo+IA0KDQo=
