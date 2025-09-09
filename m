Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AD5B4A1C8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 08:07:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795CF10E159;
	Tue,  9 Sep 2025 06:07:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UtOtbO1v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202C410E159
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 06:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757398034; x=1788934034;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PjMg5NKQeVyyf+/R/BY8ccfDPWNdgiSRqLIzgml34vU=;
 b=UtOtbO1vagNK6e0Dwc0bVCvgkRC1N08GkUF7OG8qLpOHXHKlpPQYitQJ
 /Y1OnyDVWKC4y8Cx95bcAcOQQUYRaXjMJIOtMTLG35X3PGMebDIYzOW8Z
 S8b15SuICoDG/GAk11M6DWSkvKH3vmIyTjMf0IE+JxE99/WOLMMzytqs+
 Wr67yhpDScDMzhBjK1OB0Hw0QzaeDyA+tpAWDrs+FOf/Cc8HlvpH/Q5B+
 kp7W/UKtOEYpmDpsW7Ot8INqTPIJpGBSQks0/QanEB5OnSbciskLNNLb7
 XgIG3uYAqy01c+iz3DAnMUOHd123QfpSJId+KuuVmyL0qx5SY+Y+EzMkM A==;
X-CSE-ConnectionGUID: csWwfAl4TCOPjkGdAK570Q==
X-CSE-MsgGUID: udBwqQ8vTb+0wttMzMibbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="69926048"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="69926048"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:07:13 -0700
X-CSE-ConnectionGUID: D0scLwbNQu+OHtjBxBdnAw==
X-CSE-MsgGUID: bzqkykCSR+ugYtzkS4+Ttw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="173455911"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 23:07:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:07:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 23:07:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 23:07:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o+37pnqddnh2TV7p1INzPJWANeFHp7uapxFkW7vpLLUqZzARSoA+ljm4PPewf5K1p1/dX23NsnyBs5oxgbjzq/nDRFdPFjvWV5UFSL4IjK3qor4exJpV+UJT8+N7IVfo8oFZp2Yy5hbMJmj+Ydr2mBAwSqGtmkft8KkirBgf0UBRFbP1OIipPhaiZJJxmSI3E7tequ9/pKd9KsQb4R/hzzFGGWW1H7v/y7qsN4VgFXs5HRHR6RuzjH0jWxxgwnUjuunjUhFobpghlPAOYIyQDoVwnjTlEjGN5GgEOHIbAvpUYaoVe4Euc5Euz7ZVDE6BEsNHluvSkdVvWgIhp1qXhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Nr53svHqf+Whff2g1GqfcuSHCWlgOr5GQp5q/dg3Es=;
 b=BcNewFCT2yRvpQ/61CxJMPGLj4gqp84Evumoyxr/YAQ4OQa5lmd43g7lw0lRWCmFYXyiYUp5XBiQ28RXbmz8MUbDRGFbf3DHjnA/pwG7fn+BcvfltaKLSCNRUjSFKW8PrTlZNCsLLqcY29z7g1qNMVaZBU9ndAXUYiqyIh2vxFoeMXxSEpAGNVb/kGv7g2vkj9Q++aw4N1utJexGleL2RRUVxolF17VaEYNSWbXENN7Z5lHO7k+yLu3Jr4Rh4+RnM7nTnFPalrKGcEQ0XDz7ds+J+ejQsy3EQTC4VUmZQ9QnTg/psdEuLdJVmitdp7kN0dOvYVczKrjcAblOmwKOqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS4PPF2A0C3F85C.namprd11.prod.outlook.com (2603:10b6:f:fc02::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 06:07:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 06:07:09 +0000
Date: Tue, 9 Sep 2025 06:07:02 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Simona Vetter <simona.vetter@ffwll.ch>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 6/6] drm: Avoid undefined behavior on u16 multiplication
Message-ID: <c3kyilhkdypjtexsj3ech3xjiyhqrb3z2dtt3x7m4pkfz6askb@m5xnuqva52ys>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <9a7a56a1a958f7aa0389bb5732f4b716bf2be0f6.1756995162.git.krzysztof.karas@intel.com>
 <bc353160d0c3d7f662f66edd8b33ecee2b851b67@intel.com>
 <4a6f41cf353a6ba2ade0af08f8eebf99c82e5cac@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <4a6f41cf353a6ba2ade0af08f8eebf99c82e5cac@intel.com>
X-ClientProxiedBy: TLZP290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS4PPF2A0C3F85C:EE_
X-MS-Office365-Filtering-Correlation-Id: 680b2175-0d2f-4937-d72f-08ddef671c7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0QrVnBiY0hJSU9POHRQRkFTSVBkeWlLakh2K1JPVzVoZDczNVRXaVA2a0dF?=
 =?utf-8?B?TnE3WXJnZ1ZkdmxJcmFRZEdQc1k2Y3VPNi9SbTJBRFJ0N0tGRUJyQkxoKzI5?=
 =?utf-8?B?c1lTSkF4dDhEekx4ZE4yMHZnejRlN0hFaGtBT3dUclJEWGR1bTY5SXdFRjln?=
 =?utf-8?B?ZS82L1VhV3lHc0FiWUp2Y0lSM1lma2dPa1lZV1hHUU1kb1NoQTYzWWlVSGov?=
 =?utf-8?B?WGZwcXdPR2tlMnBCUUlZSFQ1M1FNditVVWxBc1piTWFHQktqT1hoamZ0a0kz?=
 =?utf-8?B?TTlBaVZJckcyVjkyR3N0c29FT2c1OUVKb3J2VFJiQmttRklCMENRQzZhRkg2?=
 =?utf-8?B?bFlWNUNaUFpQWVo1RmFkVFI4WGU3UllybnFWdjI4SnNqMWZpQysyNnMvZlBJ?=
 =?utf-8?B?Vk5YK3FFbzkvZmdlV2tDWXV3OFh6RDFJWnZvM3AwYXN1dXJYQzd3Y3lacGlm?=
 =?utf-8?B?WXVkc1AxTmdmczVvc3RtVFk4QlVPL2VneEJpUmh5Y08wVjJkOTlzZmtWZ3NW?=
 =?utf-8?B?RDZBNmsvSmNHT2VrS0pqV0pmaFBjd1N0Mm50U3pnVjJXYlRuNzRqMFZzcW1a?=
 =?utf-8?B?MjlMZXR4TG14a05XT2xuN05vRTdrL3d6QmMwWUo4WENFWXlZcENWdnFXRUFn?=
 =?utf-8?B?L0NTRUV0c1g2eW1TZDNieVVOWHluNXVCak9XU05IeFB3dkwvUGNCOHVFczlC?=
 =?utf-8?B?MUdHNVZoWkdUdjRUbWxScDJHb25GRHdRbHBjNm5uY3pYQUlsa3BzaUJJR1VR?=
 =?utf-8?B?VUhXa3pHWUYwOXVPS1BYeTQyM2tFNGd4d01XdFpWQmMvSFErUUhjUjBva2g3?=
 =?utf-8?B?USs1TC9Fa0Uydml1bkx6b01KdzV0anQ1SWxmOC9WZXNnckZUeU90ekNSSktS?=
 =?utf-8?B?NWxrVCtCVnA3a2JWQkQ2ZGg0NTZMejhLaC9ZNi9YUnlTdWtLYmNkQ0Z0WHE4?=
 =?utf-8?B?RkF4My9ZSVEyTytzcElTSWNLa3c0NWlrZ1pvL2RRZ09XbW1Wc283VjNDSnlC?=
 =?utf-8?B?Y05ra2pUaytIaWxVcUoydU94VS9OajY5eEtNVWRGTFVlWTltYzhjSE9UNHdv?=
 =?utf-8?B?M3d4enBSbWVJbWowK3RKMFdwSWZpL1QvZWV2SUFyY1UzUTBpalY0SVljRUdX?=
 =?utf-8?B?eDVYMjFuUTU0VTFtU0pUT0NKRW5Tb000S0prejFGU1BzcnpCUWJRWlNNdUVX?=
 =?utf-8?B?c1lESURCMis1Mm53UkJZdFp4dkxYV1BQNmlveEpGUFRoVDk5Zm5tZDQ5U3JW?=
 =?utf-8?B?LzVyYTF2ZzNUMDhNWEF4Rkg0UDFGRVZBTWMraCtWV0hJRDdEaG5zUlhDa2Uy?=
 =?utf-8?B?VnJOSnVxSEg0cmEzaXN6SktCOFJvb0dZNDBlUjUvbVZYUlFmM1lWdklFTzNG?=
 =?utf-8?B?Skg3RGVZdDVISzZXWGMxdUtzcS9FRy9BbTFIY2pONEpwOHhoVG1POUs2V3Q1?=
 =?utf-8?B?ZWkwR3lCMHlLN0drTlNxMjY4QzBPVC95N0RDZDZYZGl1WmFxYVg0eVZhaGFY?=
 =?utf-8?B?cmQxdXJvdGIwejVzODdVMGQ2dDdjK1lZakM2VlhRblhLM21KbFJlcU1jM2Jr?=
 =?utf-8?B?ZmtvVTNuMVRXNjUrMElnamFDOUFMd2daZFcvOUxaNjJRQXd0UUdYWWdGQTVN?=
 =?utf-8?B?aElURWVkaVpaVHdyUGkzN01UeUtJMWh5WmJ6Z05PWDEwSkVWMzd2NlJEdjl0?=
 =?utf-8?B?KzZYOEZucUZOM1lUSHQ2T0l0MkxZdVN5NS9USDhvcnNqT2ZSdDZiTFdWaWNX?=
 =?utf-8?B?QnlZZGQzQXZjK2ZEajV5aXE5OWVqRnpRY1B3TFZEakZOazc3eG9VYmhlRmto?=
 =?utf-8?B?cnRSd0YzMHhaOEgxSVI1V09nRzVxL2JlR29zRjRiU3laSlBCbXBHc2VhWGUv?=
 =?utf-8?B?V09XRS8xYkpPV0lkRFg0USt4dFlZbUNSMmpONFFSckFDSW5Xb0xEVGRIaFNM?=
 =?utf-8?Q?zq9fY7TNoaI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWJ1dTBOMFdiQm1oWG0waDhMUCs3aWxMQ2F0OWpEbEJOenRWdkFScnRScGFE?=
 =?utf-8?B?eVUwSk1sNk84b3pUU1l5Y2lSYzEzdnRsZTEwYmlqVy9UMm0wR01CWllhNmFj?=
 =?utf-8?B?ZzZjZldreUZud3VDWVpQMmY2eld6TktiOWVwR0dieTVEdXlkOXRaYlJHc2Ju?=
 =?utf-8?B?N3dFczh2aXcvR3VsYnEyT3g0a1RJZUxGb3FZUXJObDNmOXlJMTMweWpEL3lx?=
 =?utf-8?B?d21aVDRpTitVT05FbnVNeWYvc2NlRHdOMHZDbUZERmNpaDNwTEw5b24yL0pV?=
 =?utf-8?B?VW12cU5nZGpEb1p5SURoQnlMQzRwYUk1R2F6MWEwMTNMb0VzdTI5K3IxTGJa?=
 =?utf-8?B?MHp6aVQ3UkpRcEx3U0RnZDltSGZoY0xQc2t5RlFFeFoyWWNkalBzakdXdERs?=
 =?utf-8?B?TXFDdEN2NmVDOWFleitUaDdZOTFvQ2xiQ0JoOFR0NElxL1laMGVaZllmUlpn?=
 =?utf-8?B?NW1PbXFPWlJTY1Fydy9tWml1MHpGeklMbU1vNWJqdiswbmxjWjh4UHBhN3Zn?=
 =?utf-8?B?TEFGN0VDVlJacGg4YjdvNUtua1BkOEhXYkFsSHUwbzVTdjNvRVJSYTRuOExq?=
 =?utf-8?B?MGxqcFRzWVdQeFVETUJNd3NsNndYeVVYb3FEL04rb1JBVkJuM0hTSkFPL0dw?=
 =?utf-8?B?dFcvZFJZdTkwaHBzQ2NmYU9RTGdhejBBaEQvalIzRkpyVnJGdzc5R1UyR2RP?=
 =?utf-8?B?Mm9pSDFpVEpZL1F5QVcwMjcxeXN6UFRzWVRhRkFPeUZLbUhNQkFhTmNoQlFq?=
 =?utf-8?B?T0ZDZlhpTjYyeUVtQUljVlNpaWZtT2IzZGdiSUc2bDFEWnZMSGYwY05kM01P?=
 =?utf-8?B?NC82QTlXTGgxSEU5YUl3YXpOU1VCMU4wdFFhYW95UTNQcThlaWtkbXBCT3Ey?=
 =?utf-8?B?NVI1VWtIWU4rVlo4MVY4ekZ4aHB6RlZFWWJWQ0JvK3VZcWE1enBPTjBEQW1I?=
 =?utf-8?B?NHhiNWREcGZKWlNieWg5NVg1MUx2aGVHb1JrQlRwOFBOcStDNWdQV1Ftajl5?=
 =?utf-8?B?ZWF1bElzSnl1cUN4MTA2bG9PZno1RXd2ZTNweVM2WENEbXBTVGZ0eEdYM2xi?=
 =?utf-8?B?RWtrZXovbkJBckhOTE56dzJWdlljN09qRzB3eWFzeHhSeFlqVHRiOXJReFVs?=
 =?utf-8?B?QVF1cGpwdlZGalU5UXVHSGovQTcrbi96ZW9LUTZ3d25qcDFOYlA5NWxSbndm?=
 =?utf-8?B?NklBUjYwbWJyWm9uY0ovcXJjcTI4V3A1YTFmckNaTEN2YVg5Q1pqMkRrRnRy?=
 =?utf-8?B?NUJPV1pqakFWMUNmSHBoTU5NYUREbnBHek5PTng5a2xIZ1paZUp5ZDNTL1hr?=
 =?utf-8?B?TVFWYmNyaysyWE04OVdlbU9MSFg4bXFpZ1lSVHVacVM5Z3FoSXhDOHVYaGRa?=
 =?utf-8?B?elAvZ1dZL1c2UkxhZEN5d0QwN21vYVZPbnFwV2drRk5rNlBEc3lmcER0WWpx?=
 =?utf-8?B?NHRzamxUSW9uRG1OVWRQTTBGaXZPY3ZvOXRKcnpxVjE4eDk2RWhraWVyYlVI?=
 =?utf-8?B?MDdqWTF4clhOaENBM3RGaWNWb3A1elR5RnNVT3dQdW1kdFg5ejNVVnU2YUYw?=
 =?utf-8?B?UFJVSG1wbTIyL2hkdmhFWUpaU1l2L3VxbTFuVUxQRFRZZ04yM3RjS3Z2dVAr?=
 =?utf-8?B?VW5LTCtKZ2cvY09WSVFTK01jVGxWdVp3QzhrQVhxMms5MkhEUDZrUjJpL1BP?=
 =?utf-8?B?Qy9OSnNraDVjRHlONnRPU20yMHBQUnN2QmlCeUc3WlU1eXhTcW9LZjZoRDEw?=
 =?utf-8?B?TGh0cXB0K284SXNtZ3puS2lXSW44SjVvTUcvb04vTDdEOUJYQ1N2QTNXOHhN?=
 =?utf-8?B?d2h2SWFKbDBaQlM5YVNvdXhCYy9Wa1NGZ0dISnhRTU1XZHY0WU5zekExSFor?=
 =?utf-8?B?Qm40Sm53cTl1d3IvUzhvbzhrQklDV0lVOWJianhHRHFDRGF0UlhHVWV4TE1i?=
 =?utf-8?B?bHgzcDFxYlIwcWVqdU5pVHhRNVZUODVkVjl1Z2lIODdoYTRnb3FsRHk3ZEJK?=
 =?utf-8?B?ck1NYzYwYWJzemdqZjRZdWM3T3FiMWhBNGFGLzJCbzdsTzZvNFpLNXcza0VY?=
 =?utf-8?B?RStoYVR1SnplSDVYNXV6VVZ0UTFmZmNTN29IdkF0cW8wREJrYU9IK0FHbUhL?=
 =?utf-8?B?cGxORHQ3aEJZN2JOcFA5M3pjZVVqa0FzbllWL2UwTmFsS25mQ1RLOWhrZEdo?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 680b2175-0d2f-4937-d72f-08ddef671c7d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 06:07:09.7910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IGvlN9OA14M+F8/wsQ4dGl6I/LIvhmIBX8GC76/69v5ZKMDFIogVKrauFQOfmpSeoSq5C94p6KdG6N+siAa/fP/bVhczida9McqYDwJCNso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2A0C3F85C
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

Hi Jani,

[...]
> > The multitude of files, Fixes and subsequent Cc: stables with different
> > target kernels is just an indication this should be three separate
> > patches.
> >
I was not sure if it should be a single patch encompassing
multiple fixes or three separate, very similar looking ones,
so I'm glad to know how to handle this in the future.

> > The cause may be the same, but they're still unrelated fixes.
> >
> > Moreover, imagine the consequences of one of these fixes ending up being
> > incorrect, and you have to revert or fix it. It's a logistics PITA.
That is a fair point, I'll split them then.
> 
> Also, depending on things introduced in v5.7 means this can't be
> backported to v5.4 either. Not very important here, but something to
> consider for the future.
Noted, thanks for review!

-- 
Best Regards,
Krzysztof
