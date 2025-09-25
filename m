Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40316BA09E5
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 18:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2493610E981;
	Thu, 25 Sep 2025 16:31:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNp9pcJG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C31B10E981;
 Thu, 25 Sep 2025 16:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758817912; x=1790353912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+5xIAfRMQROnj7bdP859dT1x3nuKEUKYz6b2Od6ZJZY=;
 b=cNp9pcJG3vsNHYI1wZhOAqLl0NAhLx6EnEMHWyX8NGtynuFZIXpepVW5
 eoU/Up0zmkGH5fitUXkemHDKwiC6eCVEHZYbKga3tUVTW3Zp1Tr23+tu6
 VHkfL4EVLbLOeiMLQZzHcyU8agmHsYdFSEt7AVBgHfBHc6I3/VXRcTVaL
 NNg4vTflAWSQynRkmHajuJ5FJ5VHtllRPgk6SmJ6i7oeJPD50UAYEuWpg
 xAKyrk/LVGE2otOSq3k0DHUJBT+4uj7/tmqhp4HVInnWXhnJgX8ULfT9u
 hZvUhZRsdet0jGWK5dD23BYf2Td8WdOc6MvVXGEQ1dwY28F/yRHuKAZbA w==;
X-CSE-ConnectionGUID: AOkT2zksRvCAIfh/uyMJJA==
X-CSE-MsgGUID: inE11HwTRw20yQ4I7S/few==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="64778189"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="64778189"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 09:31:51 -0700
X-CSE-ConnectionGUID: aAnZEhLZTnqBifNr8QZdnQ==
X-CSE-MsgGUID: kw+zxe1DTC6hpzXpidAaJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="181675117"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 09:31:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 09:31:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 09:31:49 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 09:31:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J2NAnZdhcLF2i+9CxGU7rNbNHw2BqI3/IB8bXSTcrNtCjwSTJAhWoWOh7tZWT75DQkjCNG8fotFRjLU2cdnGkAzwAIZ08prYmIUBC+3+C1SCzO0rzPHYBflji49H4RqT1XMK+NYnHpAxZWJbdxxgPVVK1Z2OR2D0OBlfts6724Pim/fVEgzDEdKGtP2fbjyyUROKDhjOcKi4rPJXNlERyPYuDMzl1+BF7XPhP9Wtx/JpIQdl55dO/MasVMIROVSObbfiQeIVyXay3bihxzVhSIPgi+uzq/MGPq9qBYSGUUhE2u0ERAJuMNmXdgsYxvja3YfOkauwaXYlAaZeDPS9cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+5xIAfRMQROnj7bdP859dT1x3nuKEUKYz6b2Od6ZJZY=;
 b=sViLtffwPyC7Li06dv0dLsp5IdgOG4WFJBSvxH91QL32zpfRIyqtCUJEVhMJ8a5UJzl3Vhq3FXAWLqcwMS5HsOU5AZ9Bh2WfDL+dD0PLSedZDIUwQN/36Ga8MXuuP0pCAmTMRpilpZvZGysUff+cInoUfBdq2hIJqZGdogzecvZEWmSBiDmyVK/53PhWq0iVgwUGXNhJG2ihgTUmIZEtPHgW+JKxXyScor8jK+6EYjbosQ5d1/+yatDSYH7D59w+6DBZoGj0kVYvfKgKJ9t66PbplkGCAJb1nY0cjYiIGwJivYzu7jhfyxShr4ggIID06TzSv3efOS4TmZUelNuiUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BL3PR11MB6364.namprd11.prod.outlook.com (2603:10b6:208:3b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Thu, 25 Sep
 2025 16:31:13 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 16:31:13 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Joshi, 
 Kunal1" <kunal1.joshi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Topic: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Index: AQHcLTp6zKEFOPWWuE6SiB5/DJ1A97SiziCAgAFLBoA=
Date: Thu, 25 Sep 2025 16:31:13 +0000
Message-ID: <aa9009ee225ea08072aa0c8881fdb8ca7667c169.camel@intel.com>
References: <20250924100308.346808-1-vinod.govindapillai@intel.com>
 <6dvl2tpadc43l26tuzf5mieqkeynj54vxrq4f5qscn2zn7cb53@6nopcpcsqnra>
In-Reply-To: <6dvl2tpadc43l26tuzf5mieqkeynj54vxrq4f5qscn2zn7cb53@6nopcpcsqnra>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BL3PR11MB6364:EE_
x-ms-office365-filtering-correlation-id: 9b3ef5d4-8520-4a6e-dab9-08ddfc50f145
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bk44WXJCc3N6bmxpelU0Ujg4azRpdUpVcHExZm9oOHU0d0FqMjFVZW1aTStr?=
 =?utf-8?B?L1JhdGhTQ1VoYmF4TWNqb1M0MGdxeEpFSnVLRWNxUHg5a2FMSmNxRkFBcEI0?=
 =?utf-8?B?aGxyeEprYU5nRWVFZHN6UkF0TjFhRFJ0L0h1eGZYVmVzMG9Oa0RKMGtRKzIy?=
 =?utf-8?B?Zjl5N01ySUdUZXpNVkVGeDJSbVA1VEdCYm9JRERMUjRadUpSYWoyVkFlYWVG?=
 =?utf-8?B?ZEhOZUpSZ3pzNVAwY2ZVcXNNZmtXY3JIR2ZEdWlZVDZub1NKZ3ZZd1h4citV?=
 =?utf-8?B?TFFpOUlYdkNjT0d2YUkxWjRrRWU2d01YcEtpN1NhZ0NqSkdjZjJQODQwQjEy?=
 =?utf-8?B?ZGE5SDdiei9zdU5BU3ZxRGxiam5DMWNpMEtrdzZQcUp5L1RBUjRjMGlMY1pa?=
 =?utf-8?B?UDZQQ3p1am5JTGtiUkpGdGowWkova04vMS96ZGVYdS9mWG5adXZ0WHNMUUV3?=
 =?utf-8?B?UmM5VHBrV0xzQTF0dzg2bDhuWnlpK3h1R2FUdHVtMk1EUlB6d0dnLzNoWm1Y?=
 =?utf-8?B?ci9nZnY1ZEVUREJNeE9hTnpQK3pyUlZKeXRhZUllRXJMVUVSQ3JLdElReTly?=
 =?utf-8?B?bW93Qk54eXpTV2h6cksxWWViR0xuNldkbjBSWVJyV25HekpFb2pYcUgxNUdM?=
 =?utf-8?B?cWUwSUU5L3I5d0FQSzF0NTI0QlZ3WmliTUNaaHZOQlhYTGw1bCt3c3pSQmZO?=
 =?utf-8?B?TUlQeVhkYkgyY3M3Tm9qdTBiOGpvVlNKcVkrNDFqbEV6ZmhIWit2ZEEwYnJh?=
 =?utf-8?B?NWYrTWErb0xlRFdxcW9PSlQ0d0dCT0lmODZDQS9BYnNJMlBOUUdzOGF6N3Ez?=
 =?utf-8?B?c1hvbkxlVE1GVnY0UUFyaEh0MU5XM1ZJOGZwLy9QOHdpSGpwbkpZcWFoaWVm?=
 =?utf-8?B?cCtqRDZNc1Qxa05haTc1cURrMWJyVzhrTlRzTDg4MVh5cUVzZE1TMzM3dkU4?=
 =?utf-8?B?eCtOM3N0R1ErV0Jzemlnd2FJRy9FSkxFd2R5ZmwrRnZOSHlQL0d4aGF0QkEw?=
 =?utf-8?B?TnNxckk3WVN2aGJSUEpzVWp3VXN6a0l3RENOandKV1hubldCYk1WOFg1K25a?=
 =?utf-8?B?cTUwRWFOUWc2V3lWSkdWcXJiKzdOL3E5dUdYcWxLK2RBWHVlQzl1L2Y1MWdO?=
 =?utf-8?B?Znh5VTh5b0NnTDNOSnErbHdNSG40Nm5KSGZ6UWJBYWtIaUJad042TUpFdDcx?=
 =?utf-8?B?SmtWQnlFY0dyYkpHZU9xbmpXQm1PeDlLUWlwWFdaR0g0L3ZIaTlRdndrWElO?=
 =?utf-8?B?MmxJaFUreGprbjhYcEQ2UklxL2VFTTRJdzdGdVFWZWFZMWtIN0tUSUYzRW1m?=
 =?utf-8?B?ekZUaUY0anlmSVFsTjdqWXhXMkNRVHE2Ykc1dlFtSmR3ZEhwY3NQSW05M1dj?=
 =?utf-8?B?NzlPcFF2bXNiS3lJR0NXWnBzNktzWXlQZlNKUWFBV1FIc1ZJdkgrU294eTJ1?=
 =?utf-8?B?ODdUdXhheUpoQzZrb3JhSkJieDBiV040MUQwbnVCaGwyTmtrQzNSUllxUGdD?=
 =?utf-8?B?YXNyOVZEM2tKcDBHSE5yOFlpZU5YaGY4WXlSbHhjL3lvKys1M2xzSGpBdGxQ?=
 =?utf-8?B?dEoxekxOMGpKL1BNOWFXNFVJWjJ6elJteWFGbVZBWm9MOFZycFM5VytDY3FO?=
 =?utf-8?B?VThKMjM0aEdxc0MyTlJJZzNMRlB5WjFzUVIvSnRUb0VFNnhhYlhZTnVCZHR3?=
 =?utf-8?B?NHJaeGtLSCtReW1zSGcxaGlHL1VSaWpYNzBuZ1FLaVViYnVzaWhKbXc2MTVM?=
 =?utf-8?B?QzZsNkdlcnEzZFJLaUJpTDh5TkFLTmpjVUdRQm9iL1ZDKzlNZlRXd1BvOS85?=
 =?utf-8?B?dkZEVFBaTm15V00xZHFXcEdGTE1sejlHODF0R3p5ZTFiUTROTnRaTTBMaW5J?=
 =?utf-8?B?dldyRm95cnFLZmFZaTc3anFGMG9WUzAzQUJoV2pweUxjRG1Ga0k3UVJvY2Fx?=
 =?utf-8?B?amhYb3NYOWhMMEVwcnhBUmVBNC9yUTU0ZjcyK1FXRnFveFFFQlk4eEZPUEE4?=
 =?utf-8?Q?GD3ff4iIaEB4y6WOj7FPXi99A0JwQ0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXZoekd3dHRDK3VrMW10RTB1ckxJYm04elF3M050d3VvOUh0UzRJNTlXZUFx?=
 =?utf-8?B?aURaKzA1ZnhBNWZwV09WVGxMejh5M2xaK2g1b0NNd1dzdm9xVm1uRktqMlpT?=
 =?utf-8?B?cld4SmNDVUZKUmNLNXMzQ0JpYi9oU3JKTHJveXA2c3RzZDIrb09LM3lqVkwz?=
 =?utf-8?B?Qjl6SFVnNFBDSUFCYThGdW1UN0xUS2dqUlNWZnRGRGNWUk5nN3BrSGNNVGI5?=
 =?utf-8?B?WDkyYmFheHY0VXB5MnJGaGhXTGNYV1FYUEx2ODI4SHhBUmp5QWpKMCthV3Q0?=
 =?utf-8?B?YkJzbDBVTkpqNFlMdGNHOGpCcjdEaUo4b1hJaVZLS1BoTEh3WG84dGNaSHhl?=
 =?utf-8?B?SUozWFpvc0dUZkR0cGxFLytuWk9Ndmxrd3Y3T0VMa0l1VFQxU3VTdE8wd01S?=
 =?utf-8?B?bStCU0NkTUVFaituT241WGJtWk4ydm83MUNtQlBpdW9Oc1VCOW56dzErZTI2?=
 =?utf-8?B?NjRUcU1qN3I2d0x0T1pnUkhXR1ZtS2g2MFoxWHZDa2NldjdBc21MdEZhcE5U?=
 =?utf-8?B?eE9uOCtmY0JBQTBrbGFlRHNPR1JlbDdlYjRXcVNRMkpFSFozSUNta1FnNDJ1?=
 =?utf-8?B?dll6U3dZMmNDOWRBcXZVMlRlOUhDQ2JuNlI1MUkwRkV2MkIrNWk1bWtSNXMx?=
 =?utf-8?B?d2JMVkV0YVVSVWFQWEpqdWN3dEVROVJMUUdOSWloRFBLcDlFeFVsMnZINEtR?=
 =?utf-8?B?L1AzNnE1NVdzdUhxa25LSzNmS1pkWExsY3VzNVg3UjBOSW83bWtwVGpxNTBT?=
 =?utf-8?B?TVFwQzhub2pFc1NWd1ZEUzVHOHQ2cFNOd3VMN3htejZBZ1VVaG0ybWM0bTZ6?=
 =?utf-8?B?Zi94T2FyVHF3WmR0Mml4ZVUvUmY3c0RYeEZmdXFXeHZra21CdUR1NEZMMW5F?=
 =?utf-8?B?YmMrUkViekJwODVxN3F2bThPcTd0bDZ1dFhNdnJGc2hNNWVjcUwvMTRhQVl3?=
 =?utf-8?B?VGhzeDh4QXV2Z2ZHaTcvalJ1aDVYYUdRNDY5ZzlveUpTZzY0SDdIRk5ERndC?=
 =?utf-8?B?YWVldlByRXFSQnE2QjYrTUZQNzJaaVhhKzlHYjFtdFRhYVRWZTNoMjJETkt6?=
 =?utf-8?B?VFVJVDUzeGZDZWsyUDhiOUVGbmNGMGRhZlUyaTQ1aXpIM3R3YkJGemtJeFNG?=
 =?utf-8?B?czh4bnVFTS9ReHNBWEU2elVZbjZBMWl2QjZLUG5EUktXWmxiNytLaFRjK01B?=
 =?utf-8?B?T0RnZ01GenpXalk3Z011L1dlejExenlnK3hVeHlybFlnTzhtSFJqd3ZqRERX?=
 =?utf-8?B?OWNvbnozclJPSHp2U0NPWEUvTXhwa0EyemtOalZ4VnBkZ0JKdVNFYW5McGdU?=
 =?utf-8?B?d1VvWk9jUjRBVGZ0d292VWtzMUR6ajU2ZjN0OGQzb0ZZamNvREVuUVppTVgv?=
 =?utf-8?B?VkNFbmdWTWI4RVdLOHdUSXpPM0NRVktkaUE4MWlBdVdnbDJGR1JvMjlpSGNp?=
 =?utf-8?B?T1VVdWM2MGsvYldIcVlUbmFXWTByMjFydGFPZnlnbnBpVDBrWDJLV3JxeXBn?=
 =?utf-8?B?OVo4TGpPS1VoZGhMNFJxQmJLTE5wb0VMcUd0NnEvdDcvNndUWDRYOE1ldStz?=
 =?utf-8?B?UUhZdGhCNDRvcVZEMWcyOG9ZdXdRVDd6RWNJYXJoMElZd2VDd3l6eVhFMTlq?=
 =?utf-8?B?S0JRQ0MvRFJPdDQvMFJkZUdudGhrSzBvclIrOUNzR2VRcCtYRnlmVWxjVTlF?=
 =?utf-8?B?NHNKRXZqMU1yQjNJdXJieHozZGcraFBYOHNiMi9TOWFJSlkySkc2b1IrTjFU?=
 =?utf-8?B?S05CYWVuZmlkRXJsUnltVlN1M2RVV0cxcVB5cUE2ZlM3Z1hYQ0k1VU93NXpM?=
 =?utf-8?B?OWFFOFE3Y3hORE9Wd2F4Mlhxbm1wWFRxYjYzZzBLSVY4SnNnc2hIMkhra0RX?=
 =?utf-8?B?WWx2dzV1MWRnbkY1RWZsQzE5VEtEend3cytFRVVTYlBwb1JlUDh6aVpjUURi?=
 =?utf-8?B?Q2U2Qk9oN3JDVEVEWjQzWXRJa3kyU1A5bjJZNUZNWHpSTUNnVGFyeWg4d1Yy?=
 =?utf-8?B?OTVueTFjZmNtU3NvQWhNQWo2Mit3Y3Y3ei82aTNBZkZDUFpJcWU2a2RyYmlD?=
 =?utf-8?B?ZytLS1BoTmpRaXJmRlpkZHZSQm1TNTVXTnZVbUlrWXozM1JlN3pyanVvbnJH?=
 =?utf-8?B?QTdUMFVTMDZuR0ZLTC9qM1YvQU5yYitEaEp1VWdKTCt3UEUxNytuZGxOQkx1?=
 =?utf-8?Q?z/BpVyZYpvWpL0o02PrfJNM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <81CFF9138398584492D9454E9CADECEB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b3ef5d4-8520-4a6e-dab9-08ddfc50f145
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2025 16:31:13.1687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hDAzd/7y/tPIu8z5zbQIHnEaqtOPB2BL1S1NvB4AG6c/sE8jJ/7zU25cEPqiAko0QlBNBre1QXxmyGVX2PY1CNDLg7uiezN+YUzW6iqqCFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6364
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

T24gV2VkLCAyMDI1LTA5LTI0IGF0IDE1OjQ2IC0wNTAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDI0LCAyMDI1IGF0IDAxOjAzOjA4UE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gd2FfMjIwMTQyNjM3ODYgaXMgbm90IGFwcGxpY2FibGUgdG8g
dGhlIEJNRyBhbmQgaGVuY2UgZXhjbHVkZSBpdA0KPiA+IGZyb20gdGhlIHdhLg0KPiA+IA0KPiA+
IEJzcGVjOiA3NDIxMiwgNjY2MjQNCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGls
bGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMyArKy0NCj4gPiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggMGQzODBjODI1NzkxLi4y
OTM4ZWU0YjY0ZDggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gPiBAQCAtOTM0LDcgKzkzNCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19w
cm9ncmFtX3dvcmthcm91bmRzKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gPiAJCQnCoMKgwqDC
oCAwLCBEUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTCk7DQo+ID4gDQo+ID4gCS8qIFdhXzIy
MDE0MjYzNzg2OmljbCxqc2wsdGdsLGRnMSxya2wsYWRscyxhZGxwLG10bCAqLw0KPiANCj4gYXQg
dGhpcyBwb2ludCBpdCdzIHByZXR0eSBzYWZlIHRvIGRyb3AgdGhlc2UgY29tbWVudHMgYXMgdGhl
eSBhcmUgbm90DQo+IGJlaW5nIHVwZGF0ZWQNCj4gDQo+ID4gLQlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPj0gMTEgJiYgIWRpc3BsYXktPnBsYXRmb3JtLmRnMikNCj4gPiArCWlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA+PSAxMSAmJiAhZGlzcGxheS0+cGxhdGZvcm0uZGcyICYmDQo+ID4gKwnC
oMKgwqAgIWRpc3BsYXktPnBsYXRmb3JtLmJhdHRsZW1hZ2UpDQo+IA0KPiBpcyB0aGUgcGxhbiBy
ZWFsbHkgdG8ga2VlcCBhZGRpbmcgZXhjZXB0aW9ucz8gVGhhdCBkb2Vzbid0IHNlZW0gdG8NCj4g
c2NhbGUuDQo+IA0KPiBBY2NvcmRpbmcgdG8gV0EgZGF0YWJhc2UsIGRnMiBzaG91bGQgKipub3Qq
KiBiZSBhbiBleGNlcHRpb24uIENvbW1pdA0KPiAxZDc0MjY5NDU3MTYgKCJkcm0vaTkxNS9kaXNw
bGF5L2ZiYzogRG8gbm90IGFwcGx5IFdBIDIyMDE0MjYzNzg2IHRvDQo+IERHMiIpIGFkZGVkIHRo
YXQgZXhjZXB0aW9uIHdpdGhvdXQgcHJvcGVyIGZvbGxvdyB1cCB0byB1cGRhdGUgdGhlDQo+IHNw
ZWMvZGIuDQo+IA0KPiBBbmQgYmVzaWRlcyBCTUcsIGl0IGxvb2tzIGxpa2UgTE5MIGlzIGFsc28g
bm90IGFmZmVjdGVkLg0KDQpPa2F5LiBJIG1pc2ludGVycHJldGVkIHRoZSAiUHJvamVjdCIgY29s
dW1uIGluIGJzcGVjIDY2NjI0LiBUaGF0J3MgdGhlIHJlYXNvbiBJIGRlY2lkZWQgdG8gYWRkIGJt
Zw0KYXMgYW4gZXhjZXB0aW9uIHRvIHRoZSBsaXN0ISBJIHdpbGwgZml4IHRoYXQhDQoNCj4gDQo+
IFdoaWxlIGF0IGl0LCBwbGVhc2UgbWlncmF0ZSB0aGVzZSB0byB1c2UNCj4gaW50ZWxfZGlzcGxh
eV93YShkaXNwbGF5LCAyMjAxNDI2Mzc4NikpLiBUaGVuIHlvdSBjYW4gcHJvYmFibHkganVzdA0K
PiBjaGVjayBieSBJUCB2ZXJzaW9uwqAgYDExMDAgPD0gZGlzcGxheV92ZXIgPCAxNDAxYCBzZWVt
cyB0byBjb3Zlcg0KPiBldmVyeXRoaW5nLCBidXQgREcyIHNpdHVhdGlvbiB3aWxsIG5lZWQgdG8g
YmUgZmlndXJlZCBvdXQuDQoNCk9rYXkgaSB3aWxsIHVzZSB0aGUgaW50ZWxfZGlzcGxheV93YSgp
IGFuZCBhYm91dCB0aGUgREcyIG1heSBiZSBJIHdpbGwgcHV0IHRoYXQgYXMgIlRvZG86IGFzc2Vz
cyBERzINCm5lZWQgdGhpcyB3YSIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdD8NCg0KQlINClZpbm9k
DQoNCj4gDQo+IEx1Y2FzIERlIE1hcmNoaQ0KPiANCj4gPiAJCWludGVsX2RlX3JtdyhkaXNwbGF5
LCBJTEtfRFBGQ19DSElDS0VOKGZiYy0+aWQpLA0KPiA+IAkJCcKgwqDCoMKgIDAsIERQRkNfQ0hJ
Q0tFTl9GT1JDRV9TTEJfSU5WQUxJREFUSU9OKTsNCj4gPiANCj4gPiAtLSANCj4gPiAyLjQzLjAN
Cj4gPiANCg0K
