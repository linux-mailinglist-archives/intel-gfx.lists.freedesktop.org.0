Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHWyKLc8qWkd3QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 09:20:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5220D608
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 09:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B84D10EB84;
	Thu,  5 Mar 2026 08:20:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lq0z86YA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3F110E248;
 Thu,  5 Mar 2026 08:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772698804; x=1804234804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3gxrLccqlDDhs3bye1qZ4B22dKF4J3zvbIhbkoUM3Dw=;
 b=Lq0z86YAdiNZ5NPlOnUBOtXZWGlUEKFwG4D5TpSPy961aHQDAcl0xonT
 CTIoETvBuv3oQ33yWbKIVRh4YFPoh+VKNmo2SfsCvSR5vc4owfwCgkGVN
 LQAjvN3cqtSx230eo7B/LmqQsN35sgRxn2nmle+rx59Z8ooCc/QYFznVD
 snBN9RaSLHU/9QGXEF2KgxK3O0PX/rO+5+oxh0d+myGous16aGaOrkFM3
 U1Wu61yH4ShPlulgmM0BwpXg4CN4W1wasZ16YCJF3k9/ipjiIMuEHr4QO
 PiYcpztlfkvrgrXGGaXc/A8Rd+sfoHEEi58pdIAgCNOkniY+2pusYBvhu Q==;
X-CSE-ConnectionGUID: flZtw0DVQd+V1N+GcrcVkg==
X-CSE-MsgGUID: Bu0M0rzBRCCMzf2DaxwfdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="91349197"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="91349197"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 00:20:03 -0800
X-CSE-ConnectionGUID: fSEzgQUdTeGqS2Fq61B9ew==
X-CSE-MsgGUID: Gq8tuiseQMqDfz9ckIHQew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="256492954"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 00:20:03 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 00:20:02 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 00:20:02 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 00:20:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=azF4NvaJACDYyZhBzEV1hS4T3zLwSXYR0kp8ee5Lqzn61zxSHGlHC3nRwSchKgdZjvti/WDrk/iKFFoI7vy7ZBv1/wtOwLdyEOx7Nj5DSVVZjMD00wpn9WMUc4iRO/51JOMW9CgpfeCEpl+o7cQrZru7Az8txRypv1Bq6xNcDem7t/kYoe5KJ83exY1HoYOVR3MTOpeV0rhQYPBIA03V/jw1BB0XFVPSViK3WmsY3HIRV0ANB5qyydli9Qm+rUa3uzYH7ckVFuq/djgyZ2m1jJ7HiccB3gmphguTzootfqBmxUQvviJJnRb0ktcWo6FxcKC1qffsaW7rQMMi6xz2Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3gxrLccqlDDhs3bye1qZ4B22dKF4J3zvbIhbkoUM3Dw=;
 b=HkRqKC/FCK60nQVFVzRI1z9UIHISphB8mV5jnXx6lLqDKmAGouRj9Mbij6+olWwXZmnQeCwo3CLBPSgVCCGQmrfUjtSyHUr2Xb8dHNssZfTrNjg+MuKrfzitcyipfLCsZrF43qEHtf79dOlNAnk1Q/voYtSfyVleEG2O5GkCYai7F9lGg+bybwFIfbaD4b/WSYrWC1MG7d3JtQwfagXCfegPzyE0SiimOHZDYaMlBuCGbq15YfakXLfkQYHPVE7oOFgax7TKMyUgRYCBr7pxh7HrgLhUyknvYwecLR3asecuIov4wQOYF0i6lEgEknfuwHzHpsPgdovXnXSGy3j3Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA3PR11MB8968.namprd11.prod.outlook.com
 (2603:10b6:208:57b::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Thu, 5 Mar
 2026 08:19:59 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Thu, 5 Mar 2026
 08:19:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/24] drm/i915/lt_phy: Refactor LT PHY PLL handling to
 use explicit PLL state
Thread-Topic: [PATCH v2 04/24] drm/i915/lt_phy: Refactor LT PHY PLL handling
 to use explicit PLL state
Thread-Index: AQHcq9je6TOoW9OHSE+QuCHA11+7hbWeZ/OAgAEwnPA=
Date: Thu, 5 Mar 2026 08:19:59 +0000
Message-ID: <DS4PPF69154114F8D527F0650F7DFDD23BBEF7DA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-5-mika.kahola@intel.com>
 <aag77_SX3ItNoSdx@ideak-desk.lan>
In-Reply-To: <aag77_SX3ItNoSdx@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA3PR11MB8968:EE_
x-ms-office365-filtering-correlation-id: c2e4371f-cfcb-4d9b-8354-08de7a8ffe4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: 0SHBJ+537tcg+0gI1s3rdGkwAhj2aeG6SIvQy+594PjO9Z093K/XvKgpuQlOhblbbL2y0UfBCX83lyn9/H3LZd41/h5BNz+/1ec9WoQ3RjxR6BvaANubXrzKb84EnHiFzhTg0igRyKsHl/Ow9iwds0uXKmZ1Y4rkBzyom0qG+wanJAL8h3HX7Ue0pZzDftllK1UthoTF/qWToajETaCdD5lZXCwsncOBr94NEEmFPuDWTEsrVQLMLvjPTqz1d5UQa8qmfvYp4/T+xbwh4JGpGQEJLa2WR7vGcp2CHh2w1w3S3XNv9s6vphISz+M6005T7MXB+wOcWAfiHZknm4FjZu7VLXDe5B3zuxyIKMcpC976KUHZ0mVhk6zy5JbaNI+qWA7Fqd+Yb5F2NwJ6pNeMBh5TJSEgtYWUR/bdFk/FGfexgaDFhYxyeXcu/G+mdTu6U4HSM0ygBC6b8kU6qCSonee6ekpEJMwizhk9xdYn7a1RwmK0/k3HheETLHzGQf9ZU1SxWI81TqikJOFsL6nThnhD0vnwl1rR3UklNZR+twZzSmB5jukeVnpCEEMobq7SXUnlVVmZvIgO2pb3gpJ0l80fHlxDuZV7PB9RHhd7mRpnt7U5iFxjZVmFCJUusBN3SY+tFcLCqcl2ZDqsH1YdcgXh4R4w3EpRqMvLOupEfajau3sA1EcZ3+9ILdNBoQmu76ZQ8gpwAkYYvjzc106unMILgR9q426RwNAq4sJx3LIOk7tzYLc6cwypH/5jDNAFusj2S/gYQrqRvo42nCJPZq37X4/4iEt5Dn/yh0yyyJY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmhnYUE3aWU0YnBCYWVIcExvRnhiT3lvRXljaWMzKzU3ejVyQ1MwSXFXRjNa?=
 =?utf-8?B?TFZQOE9tY2lGeXplT3M2UmZ2enlvRk5BcmFkSXc3aS9FQUx1VWw5WTNNZnNn?=
 =?utf-8?B?T3k5ZEVWdE5JemU3WFhFaW1FMUlPN0Q5ZEFrZlp4UXI2OFNZVW9lMmE0WEdC?=
 =?utf-8?B?dGh2UDhjVkNOSUlmOUVDRitmclJuUFVRWS9GWVdpYkhFWVlySzEyODRaRk0z?=
 =?utf-8?B?SGw4QnNzNThBcFpEdTkxVXdBajRhMlFLeXJuSkt6MnFZbGdNRTdKelBsdWFz?=
 =?utf-8?B?VGppWWkyYUhXR2htRVBBZnVVM05LMHVzSnNhZGwyTVhCQ241WSs2c2h1S3Z3?=
 =?utf-8?B?VzFIU240WjZ4THBFYUIrMFFENHVPbmdKWC9SYU9tWkszT21VUTJjRkdwd3h4?=
 =?utf-8?B?T3IxZG5oMTc2OEZyRVovSlRQY1JBdlZXY0lWQXcxYmtYb2MrNUQ3UkpjL0VO?=
 =?utf-8?B?RkU3ZllHcTIwRjVHSU1vbDAvbmh2czRmUTlaWFkyKzZ1cnNaUVY5SUlsQ1RS?=
 =?utf-8?B?aEY0YjA1MVRrZWxtcm0vYTFZV1dXZzljRkUyb0diUGM1T2U2NmQvNmdsci8x?=
 =?utf-8?B?TTdvRTVweEh6eTNtRU51QkEzSVgzQ3F0dW15NHJuYTdRTnNoS0h6ZnNrcWxz?=
 =?utf-8?B?WU1HVDN6UVF1Nmo1Z3hEZ1JJOHdCOW5jZlNmcTBYODAraGpIYi8ydmZzVXJz?=
 =?utf-8?B?aU1tVk95Zk1JOEJkWGgxQkU4dG1hSlp0d25yTldIc3FyNlFNUHQzd2dOMXM4?=
 =?utf-8?B?ekRuQVdsaTFjak5jVXRwTzVoYWVXL0xablZZc0VSbEdVZm83aVUvVzUxZTVG?=
 =?utf-8?B?dTAxYnZqQ2tLZ0dqb2N2NkYvT2VPTFlNU01LRVhGSUpMYW9iZUNjdlh6d1hG?=
 =?utf-8?B?NFljOVZPNUt1anFTaWFJWE9yS0pCZnE5WEZRcWs3V291ZW45Q3dSTzJud0cz?=
 =?utf-8?B?VnYxY0ZraStwU25HSEJBazRmQUJmcmRYWGRzb3BFQjVPeFRsYjNjNXZYbVE5?=
 =?utf-8?B?ODBVT25Uc3o3NHd5SGZkSGZaTHBXamcvMVhDd0grMEl6czJJeXRpSm0zUXUx?=
 =?utf-8?B?V05hL29SZ0tKYmQwbzRQeHd0YmlRSDdPTzBwK09uS3QyOHlpbWc3UnNLVnZx?=
 =?utf-8?B?WnY3MFZQRlBXQjJYMnJYQnNIU2hKcFhpZzJ0MGY3RG16ZjUyOUo4Y3ltVklJ?=
 =?utf-8?B?SHhXTGpDS3NHL0lGaE1INC94dXM0eUE4a2dkSGJkd3lGYWlKOWhkWnp2NkZG?=
 =?utf-8?B?Z2dnS2xNNFJsTUJiNlUrSHh5QmNBa2lPT0FlSTJ3WUxoOXMvK0ZRdENBQUdo?=
 =?utf-8?B?aXkyajBLenFPRFdtUEZlNTllY0RYRks1TVF3ZERnMVI4Qi9jVzN4TWUycmlP?=
 =?utf-8?B?MEU3MDdSTGxGUjlpdjkvVlJ5d3IzWCsvS2kwdEhRQzBwMHFWWVh3OGxDaUc5?=
 =?utf-8?B?U0sxMHFLVndwV1dWOVA1L28reXNPRjRhb0NyWXlrQVdoSzdGUmhyUTdCRWZP?=
 =?utf-8?B?Z09tOUN5bGZWV1UzUXJQei83UDBmaWFHYUtudnJyTjI3RUlOUEg5dVhUNERN?=
 =?utf-8?B?UjNQdUtoNGVKb0J0TUJ0azFWd01rTlViNDQwMFNFMHRYWTEvK05hS3RFYTdD?=
 =?utf-8?B?S3JacnRaS0FaOHFybG51Mnp1RElPRFBielk1WnZ5QzdKMjNqeU1BcDVKQmdS?=
 =?utf-8?B?ZDAzaW04RGVUNnRPWGpYQWd4VU5nQlF3c05tWmhORDVKMWZTcFRKa3Bxejlq?=
 =?utf-8?B?T1YrK0d3WU85ZGtQUEVGZlNMVUNCcG9iK2IwL2c5dXhPZTlhVUltM2FuTW5P?=
 =?utf-8?B?OEtoWVNES2NPZVZMNjdBZkJwRHdiRnEwTW9OVzBPZXJlc3FVRkk5SHJ0ZEhT?=
 =?utf-8?B?S1dZYjJSWHZiVDRURk5iWGo3bml2bXozWVFQVnhyaWI4dDN6cnhKZnQ5TWps?=
 =?utf-8?B?VW1lODk1STlnTm9zdVJFRzNodTMvNHJmclV2WGN0MlQ0c0s2NVFPdTVkNUlP?=
 =?utf-8?B?YkFGc0llaHd0bWtQV0g1eWdTMkM0NkVwaGpPZFZ3REJESTZoL0lMN1FNZlBC?=
 =?utf-8?B?c0g3eWRTQWpXVDRUbm5qa1pEbUQwUGl3aVppSXdDdmQ0K3NXU0xaZDAxdTBC?=
 =?utf-8?B?SlNIZmVDWnVid0NmQndhNy9OQ1RIaFlKNEVlRHgwaXVXNE1xWFhrTWRsb2JW?=
 =?utf-8?B?Wks5dmFLdE1iektWbGVSRW1ZeTlhZDhrWVliTUtOaTdKd3dpY3VKdXR5Mmxx?=
 =?utf-8?B?TnhZVUlRZXFKa0NQR25NUFF1OW5ZM0pCSkRpWWp2MVJ5eE40VU94dHNyRlp0?=
 =?utf-8?B?YWk0aE5qNnk1Vmt4Z1dlYVZsMDJYbVloa0tEY1RDZUJsZXdqYXRoUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wUFWLb8UflcEBUvXYLq+zE5P+Doprotp+hpcMWKtgDm54wvNS2Aoa8UeKkDwDDhgCdDm+EY1/FfsbmVD/WqXTGhSRF5j+q6VuyEgD890LsSHqQUvW766UlhUH3z6HPxub8km6tvFYd75wg4c0gt3rtSxYhbZFxlz3DovJmRxva0vB4ENzNja6H//50vtRYIz7DoyPRho7Aapks7xVmjkFflKrF09jb6Hy2zebW2nfJkrPzZkg6a6i2Hvog+pozaQw4Jj/szIXrI2Kat3h550FLXt8bvJyGMmmzVnNi+zXljWNGAFgRs1+4bmHs37mCKjYmHlUhbqRtd66Fact35vTg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2e4371f-cfcb-4d9b-8354-08de7a8ffe4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2026 08:19:59.8036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 973Cz7jfMmU0O2WrDeU8uRTB3/uN0CHMEODyHSuaT4r4KpEOT4YEONyR9HItef2DA6K4PhTVt7YVLP8dpF69Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8968
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
X-Rspamd-Queue-Id: 10F5220D608
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDQgTWFyY2ggMjAyNiAxNi4wNQ0KPiBU
bzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
U3ViamVjdDogUmU6IFtQQVRDSCB2MiAwNC8yNF0gZHJtL2k5MTUvbHRfcGh5OiBSZWZhY3RvciBM
VCBQSFkgUExMIGhhbmRsaW5nIHRvIHVzZSBleHBsaWNpdCBQTEwgc3RhdGUNCj4gDQo+IE9uIFdl
ZCwgTWFyIDA0LCAyMDI2IGF0IDAxOjE0OjAzUE0gKzAwMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0K
PiA+IFRoZSBMVCBQSFkgaW1wbGVtZW50YXRpb24gY3VycmVudGx5IHB1bGxzIFBMTCBhbmQgcG9y
dF9jbG9jaw0KPiA+IGluZm9ybWF0aW9uIGRpcmVjdGx5IGZyb20gdGhlIENSVEMgc3RhdGUuIFRo
aXMgdGllcyB0aGUgUEhZDQo+ID4gcHJvZ3JhbW1pbmcgbG9naWMgdG9vIHRpZ2h0bHkgdG8gdGhl
IENSVEMgc3RhdGUgYW5kIG1ha2VzIGl0IGhhcmRlciB0bw0KPiA+IGNsZWFybHkgZXhwcmVzcyB0
aGUgUEhZ4oCZcyBvd24gUExMIGNvbmZpZ3VyYXRpb24uDQo+ID4NCj4gPiBJbnRyb2R1Y2UgYW4g
ZXhwbGljaXQgInN0cnVjdCBpbnRlbF9sdF9waHlfcGxsX3N0YXRlIiBhcmd1bWVudCBmb3IgdGhl
DQo+ID4gUEhZIGZ1bmN0aW9ucyBhbmQgdXBkYXRlIGNhbGxlcnMgYWNjb3JkaW5nbHkuDQo+ID4N
Cj4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZSBpcyBpbnRlbmRlZCDigJQgdGhpcyBpcyBhIHByZXBh
cmF0b3J5IGNsZWFudXAgZm9yDQo+ID4gdG8gYnJpbmcgTFQgUEhZIFBMTCBoYW5kbGluZyBhcyBw
YXJ0IG9mIFBMTCBmcmFtZXdvcmsuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jIHwgNDgNCj4gPiArKysrKysrKysrKystLS0tLS0t
LS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygt
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbHRfcGh5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRf
cGh5LmMNCj4gPiBpbmRleCA4ZmU2MWNmZGI3MDYuLmViZGNhYjU4ZGY0YSAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IEBAIC0x
MTc4LDcgKzExNzgsOCBAQCBpbnRlbF9sdF9waHlfbGFuZV9yZXNldChzdHJ1Y3QgaW50ZWxfZW5j
b2Rlcg0KPiA+ICplbmNvZGVyLA0KPiA+DQo+ID4gIHN0YXRpYyB2b2lkDQo+ID4gIGludGVsX2x0
X3BoeV9wcm9ncmFtX3BvcnRfY2xvY2tfY3RsKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+IC0JCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LA0KPiA+ICsJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9sdF9waHlfcGxsX3N0YXRlICpsdHBs
bCwNCj4gPiArCQkJCSAgICBpbnQgcG9ydF9jbG9jaywNCj4gPiAgCQkJCSAgICBib29sIGxhbmVf
cmV2ZXJzYWwpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsgQEANCj4gPiAtMTE5NSwxNyArMTE5NiwxNyBAQCBp
bnRlbF9sdF9waHlfcHJvZ3JhbV9wb3J0X2Nsb2NrX2N0bChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gPiAgCSAqIGJ1dCBzaW5jZSB0aGUgcmVnaXN0ZXIgYml0cyBzdGlsbCByZW1h
aW4gdGhlIHNhbWUgd2UgdXNlDQo+ID4gIAkgKiB0aGUgc2FtZSBkZWZpbml0aW9uDQo+ID4gIAkg
Ki8NCj4gPiAtCWlmIChpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBV
VF9IRE1JKSAmJg0KPiA+IC0JICAgIGludGVsX2hkbWlfaXNfZnJsKGNydGNfc3RhdGUtPnBvcnRf
Y2xvY2spKQ0KPiA+ICsJaWYgKGVuY29kZXItPnR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkgJiYN
Cj4gDQo+IFRoaXMgd2FzIGRpc2N1c3NlZCBhbHJlYWR5IGVsc2V3aGVyZTogZW5jb2Rlci0+dHlw
ZSBjYW4ndCBiZSB1c2VkIHRvIGRldGVybWluZSBpZiB0aGUgZW5jb2RlciBpcyBpbiBIRE1JIG9y
IERQIG1vZGUuIEluIGZhY3Qgb24NCj4gTFQgUEhZIHBsYXRmb3JtcyBlbmNvZGVyLT50eXBlIHdp
bGwgYmUgbmV2ZXIgSU5URUxfT1VUUFVUX0hETUksIHJhdGhlciBpdCdzIElOVEVMX09VVFBVVF9E
REksIHdoZXJlIHRoZSBhY3R1YWwgbW9kZSBvZg0KPiB0aGUgRERJIGVuY29kZXIgY291bGQgYmUg
ZWl0aGVyIEhETUkgb3IgRFAuDQo+IA0KPiBUaGUgaWRlYWwgd291bGQgYmUgdG8gZGVkdWN0IHRo
ZSBEUC9IRE1JIG1vZGUgZnJvbSB0aGUgaW50ZWxfbHRfcGh5X3BsbF9zdGF0ZSBpbnN0ZWFkLiBB
RkFJQ1MgbHRwbGwtPmNvbmZpZ1swXSBpcyBleHBsaWNpdGx5IHNldCB0bw0KPiAweDg0IGZvciBi
b3RoIHRoZSBjb21wdXRlZCBhbmQgdGFibGUtc3BlY2lmaWVkIEhETUkgUExMIGNvbmZpZ3VyYXRp
b25zIGFuZCBjb25maWdbMF0gaXMgbm90IDB4ODQgZm9yIGFueSBEUCBQTEwgY29uZmlndXJhdGlv
bnMuDQo+IENvdWxkIGJlIHVzZWQgdGhhdCBpbnN0ZWFkIHRvIGRpc3Rpbmd1aXNoIHRoZSBIRE1J
IGFuZCBEUCBjb25maWdzPw0KDQpSaWdodC4gSSBrZWVwIGZvcmdldHRpbmcgdGhpcyB0aGF0ICJl
bmNvZGVyLT50eXBlIiBjYW4gYmUgYm90aCBEUCBhbmQgSERNSS4gVGhlIG5hbWluZyB0byBtZSBz
ZWVtcyBhIGJpdCBtaXNsZWFkaW5nIGFuZCBoZW5jZSBJIGtlZXAgZm9yZ2V0dGluZyB0aGlzLiBB
bnl3YXksIHRoaXMgYXBwcm9hY2ggY2Fubm90IGJlIHVzZWQgaGVyZSBidXQgSSBtdXN0IGNvbWUg
dXAgd2l0aCBiZXR0ZXIgc29sdXRpb24uDQoNCkkgY291bGQgc3dpdGNoIHRvIHVzZSBjb25maWdb
MF0gdG8gZGlzdGluZ3Vpc2ggSERNSS4NCg0KVGhhbmtzIGZvciBhIHJldmlldyENCg0KLU1pa2Et
DQogDQo+IA0KPiA+ICsJICAgIGludGVsX2hkbWlfaXNfZnJsKHBvcnRfY2xvY2spKQ0KPiA+ICAJ
CXZhbCB8PSBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9QUkVQKGRpc3BsYXksIFhFTFBEUF9ERElf
Q0xPQ0tfU0VMRUNUX0RJVjE4Q0xLKTsNCj4gPiAgCWVsc2UNCj4gPiAgCQl2YWwgfD0gWEVMUERQ
X0RESV9DTE9DS19TRUxFQ1RfUFJFUChkaXNwbGF5LA0KPiA+IFhFTFBEUF9ERElfQ0xPQ0tfU0VM
RUNUX01BWFBDTEspOw0KPiA+DQo+ID4gIAkgLyogRFAyLjAgMTBHIGFuZCAyMEcgcmF0ZXMgZW5h
YmxlIE1QTExBKi8NCj4gPiAtCWlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID09IDEwMDAwMDAg
fHwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9PSAyMDAwMDAwKQ0KPiA+ICsJaWYgKHBvcnRfY2xv
Y2sgPT0gMTAwMDAwMCB8fCBwb3J0X2Nsb2NrID09IDIwMDAwMDApDQo+ID4gIAkJdmFsIHw9IFhF
TFBEUF9TU0NfRU5BQkxFX1BMTEE7DQo+ID4gIAllbHNlDQo+ID4gLQkJdmFsIHw9IGNydGNfc3Rh
dGUtPmRwbGxfaHdfc3RhdGUubHRwbGwuc3NjX2VuYWJsZWQgPyBYRUxQRFBfU1NDX0VOQUJMRV9Q
TExCIDogMDsNCj4gPiArCQl2YWwgfD0gbHRwbGwtPnNzY19lbmFibGVkID8gWEVMUERQX1NTQ19F
TkFCTEVfUExMQiA6IDA7DQo+ID4NCj4gPiAgCWludGVsX2RlX3JtdyhkaXNwbGF5LCBYRUxQRFBf
UE9SVF9DTE9DS19DVEwoZGlzcGxheSwgZW5jb2Rlci0+cG9ydCksDQo+ID4gIAkJICAgICBYRUxQ
RFBfTEFORTFfUEhZX0NMT0NLX1NFTEVDVCB8IFhFTFBEUF9GT1JXQVJEX0NMT0NLX1VOR0FURSB8
DQo+ID4gQEAgLTEyNDgsMTAgKzEyNDksMTIgQEAgc3RhdGljIHUzMiBpbnRlbF9sdF9waHlfZ2V0
X2RwX2Nsb2NrKHU4IHJhdGUpDQo+ID4NCj4gPiAgc3RhdGljIGJvb2wNCj4gPiAgaW50ZWxfbHRf
cGh5X2NvbmZpZ19jaGFuZ2VkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+IC0J
CQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gKwkJ
CSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfbHRfcGh5X3BsbF9zdGF0ZSAqbHRwbGwpDQo+ID4gIHsN
Cj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShl
bmNvZGVyKTsNCj4gPiAgCXU4IHZhbCwgcmF0ZTsNCj4gPiAgCXUzMiBjbG9jazsNCj4gPiArCXUz
MiBwb3J0X2Nsb2NrID0gaW50ZWxfbHRfcGh5X2NhbGNfcG9ydF9jbG9jayhkaXNwbGF5LCBsdHBs
bCk7DQo+ID4NCj4gPiAgCXZhbCA9IGludGVsX2x0X3BoeV9yZWFkKGVuY29kZXIsIElOVEVMX0xU
X1BIWV9MQU5FMCwNCj4gPiAgCQkJCUxUX1BIWV9WRFJfMF9DT05GSUcpOw0KPiA+IEBAIC0xMjYy
LDkgKzEyNjUsMTAgQEAgaW50ZWxfbHRfcGh5X2NvbmZpZ19jaGFuZ2VkKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiA+ICAJICogdXNpbmcgMS42MiBHYnBzIGNsb2NrIHNpbmNlIFBI
WSBQTEwgZGVmYXVsdHMgdG8gdGhhdA0KPiA+ICAJICogb3RoZXJ3aXNlIHdlIGFsd2F5cyBuZWVk
IHRvIHJlY29uZmlndXJlIGl0Lg0KPiA+ICAJICovDQo+ID4gLQlpZiAoaW50ZWxfY3J0Y19oYXNf
ZHBfZW5jb2RlcihjcnRjX3N0YXRlKSkgew0KPiA+ICsJaWYgKGVuY29kZXItPnR5cGUgPT0gSU5U
RUxfT1VUUFVUX0RQIHx8DQo+ID4gKwkgICAgZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRf
RURQKSB7DQo+IA0KPiBTYW1lIGFzIGFib3ZlLCBlbmNvZGVyLT50eXBlIGNhbid0IGJlIHVzZWQg
aGVyZS4NCj4gDQo+ID4gIAkJY2xvY2sgPSBpbnRlbF9sdF9waHlfZ2V0X2RwX2Nsb2NrKHJhdGUp
Ow0KPiA+IC0JCWlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID09IDE2MjAwMDAgJiYgY3J0Y19z
dGF0ZS0+cG9ydF9jbG9jayA9PSBjbG9jaykNCj4gPiArCQlpZiAocG9ydF9jbG9jayA9PSAxNjIw
MDAwICYmIHBvcnRfY2xvY2sgPT0gY2xvY2spDQo+ID4gIAkJCXJldHVybiBmYWxzZTsNCj4gPiAg
CX0NCj4gPg0KPiA+IEBAIC0xNzU5LDQxICsxNzYzLDQxIEBAIGludGVsX2x0X3BoeV9wbGxfY2Fs
Y19zdGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+DQo+
ID4gIHN0YXRpYyB2b2lkDQo+ID4gIGludGVsX2x0X3BoeV9wcm9ncmFtX3BsbChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAtCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICsJCQkgY29uc3Qgc3RydWN0IGludGVsX2x0X3BoeV9wbGxf
c3RhdGUgKmx0cGxsKQ0KPiA+ICB7DQo+ID4gIAl1OCBvd25lZF9sYW5lX21hc2sgPSBpbnRlbF9s
dF9waHlfZ2V0X293bmVkX2xhbmVfbWFzayhlbmNvZGVyKTsNCj4gPiAgCWludCBpLCBqLCBrOw0K
PiA+DQo+ID4gIAlpbnRlbF9sdF9waHlfd3JpdGUoZW5jb2Rlciwgb3duZWRfbGFuZV9tYXNrLCBM
VF9QSFlfVkRSXzBfQ09ORklHLA0KPiA+IC0JCQkgICBjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRl
Lmx0cGxsLmNvbmZpZ1swXSwgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gPiArCQkJICAgbHRwbGwt
PmNvbmZpZ1swXSwgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gPiAgCWludGVsX2x0X3BoeV93cml0
ZShlbmNvZGVyLCBJTlRFTF9MVF9QSFlfTEFORTAsIExUX1BIWV9WRFJfMV9DT05GSUcsDQo+ID4g
LQkJCSAgIGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUubHRwbGwuY29uZmlnWzFdLCBNQl9XUklU
RV9DT01NSVRURUQpOw0KPiA+ICsJCQkgICBsdHBsbC0+Y29uZmlnWzFdLCBNQl9XUklURV9DT01N
SVRURUQpOw0KPiA+ICAJaW50ZWxfbHRfcGh5X3dyaXRlKGVuY29kZXIsIG93bmVkX2xhbmVfbWFz
aywgTFRfUEhZX1ZEUl8yX0NPTkZJRywNCj4gPiAtCQkJICAgY3J0Y19zdGF0ZS0+ZHBsbF9od19z
dGF0ZS5sdHBsbC5jb25maWdbMl0sIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ID4gKwkJCSAgIGx0
cGxsLT5jb25maWdbMl0sIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+ID4NCj4gPiAgCWZvciAoaSA9
IDA7IGkgPD0gMTI7IGkrKykgew0KPiA+ICAJCWludGVsX2x0X3BoeV93cml0ZShlbmNvZGVyLCBJ
TlRFTF9MVF9QSFlfTEFORTAsIExUX1BIWV9WRFJfWF9BRERSX01TQihpKSwNCj4gPiAtCQkJCSAg
IGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUubHRwbGwuYWRkcl9tc2JbaV0sDQo+ID4gKwkJCQkg
ICBsdHBsbC0+YWRkcl9tc2JbaV0sDQo+ID4gIAkJCQkgICBNQl9XUklURV9DT01NSVRURUQpOw0K
PiA+ICAJCWludGVsX2x0X3BoeV93cml0ZShlbmNvZGVyLCBJTlRFTF9MVF9QSFlfTEFORTAsIExU
X1BIWV9WRFJfWF9BRERSX0xTQihpKSwNCj4gPiAtCQkJCSAgIGNydGNfc3RhdGUtPmRwbGxfaHdf
c3RhdGUubHRwbGwuYWRkcl9sc2JbaV0sDQo+ID4gKwkJCQkgICBsdHBsbC0+YWRkcl9sc2JbaV0s
DQo+ID4gIAkJCQkgICBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+DQo+ID4gIAkJZm9yIChqID0g
MywgayA9IDA7IGogPj0gMDsgai0tLCBrKyspDQo+ID4gIAkJCWludGVsX2x0X3BoeV93cml0ZShl
bmNvZGVyLCBJTlRFTF9MVF9QSFlfTEFORTAsDQo+ID4gIAkJCQkJICAgTFRfUEhZX1ZEUl9YX0RB
VEFZKGksIGopLA0KPiA+IC0JCQkJCSAgIGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUubHRwbGwu
ZGF0YVtpXVtrXSwNCj4gPiArCQkJCQkgICBsdHBsbC0+ZGF0YVtpXVtrXSwNCj4gPiAgCQkJCQkg
ICBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+ICAJfQ0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGlj
IHZvaWQNCj4gPiAgaW50ZWxfbHRfcGh5X2VuYWJsZV9kaXNhYmxlX3R4KHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiA+IC0JCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfbHRf
cGh5X3BsbF9zdGF0ZSAqbHRwbGwsDQo+ID4gKwkJCSAgICAgICB1OCBsYW5lX2NvdW50KQ0KPiA+
ICB7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19k
aWdfcG9ydChlbmNvZGVyKTsNCj4gPiAgCWJvb2wgbGFuZV9yZXZlcnNhbCA9IGRpZ19wb3J0LT5s
YW5lX3JldmVyc2FsOw0KPiA+IC0JdTggbGFuZV9jb3VudCA9IGNydGNfc3RhdGUtPmxhbmVfY291
bnQ7DQo+ID4gIAlib29sIGlzX2RwX2FsdCA9DQo+ID4gIAkJaW50ZWxfdGNfcG9ydF9pbl9kcF9h
bHRfbW9kZShkaWdfcG9ydCk7DQo+ID4gIAllbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50IHRj
X3BpbiA9IEBAIC0xODk1LDcgKzE4OTksOCBAQCB2b2lkDQo+ID4gaW50ZWxfbHRfcGh5X3BsbF9l
bmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAlpbnRlbF9sdF9waHlf
bGFuZV9yZXNldChlbmNvZGVyLCBjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsNCj4gPg0KPiA+ICAJ
LyogMi4gUHJvZ3JhbSBQT1JUX0NMT0NLX0NUTCByZWdpc3RlciB0byBjb25maWd1cmUgY2xvY2sg
bXV4ZXMsIGdhdGluZywgYW5kIFNTQy4gKi8NCj4gPiAtCWludGVsX2x0X3BoeV9wcm9ncmFtX3Bv
cnRfY2xvY2tfY3RsKGVuY29kZXIsIGNydGNfc3RhdGUsIGxhbmVfcmV2ZXJzYWwpOw0KPiA+ICsJ
aW50ZWxfbHRfcGh5X3Byb2dyYW1fcG9ydF9jbG9ja19jdGwoZW5jb2RlciwgJmNydGNfc3RhdGUt
PmRwbGxfaHdfc3RhdGUubHRwbGwsDQo+ID4gKwkJCQkJICAgIGNydGNfc3RhdGUtPnBvcnRfY2xv
Y2ssIGxhbmVfcmV2ZXJzYWwpOw0KPiA+DQo+ID4gIAkvKiAzLiBDaGFuZ2Ugb3duZWQgUEhZIGxh
bmVzIHBvd2VyIHRvIFJlYWR5IHN0YXRlLiAqLw0KPiA+ICAJaW50ZWxfbHRfcGh5X3Bvd2VyZG93
bl9jaGFuZ2Vfc2VxdWVuY2UoZW5jb2Rlciwgb3duZWRfbGFuZV9tYXNrLCBAQA0KPiA+IC0xOTA1
LDEyICsxOTEwLDEyIEBAIHZvaWQgaW50ZWxfbHRfcGh5X3BsbF9lbmFibGUoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAkgKiA0LiBSZWFkIHRoZSBQSFkgbWVzc2FnZSBidXMg
VkRSIHJlZ2lzdGVyIFBIWV9WRFJfMF9Db25maWcgY2hlY2sgZW5hYmxlZCBQTEwgdHlwZSwNCj4g
PiAgCSAqIGVuY29kZWQgcmF0ZSBhbmQgZW5jb2RlZCBtb2RlLg0KPiA+ICAJICovDQo+ID4gLQlp
ZiAoaW50ZWxfbHRfcGh5X2NvbmZpZ19jaGFuZ2VkKGVuY29kZXIsIGNydGNfc3RhdGUpKSB7DQo+
ID4gKwlpZiAoaW50ZWxfbHRfcGh5X2NvbmZpZ19jaGFuZ2VkKGVuY29kZXIsDQo+ID4gKyZjcnRj
X3N0YXRlLT5kcGxsX2h3X3N0YXRlLmx0cGxsKSkgew0KPiA+ICAJCS8qDQo+ID4gIAkJICogNS4g
UHJvZ3JhbSB0aGUgUEhZIGludGVybmFsIFBMTCByZWdpc3RlcnMgb3ZlciBQSFkgbWVzc2FnZSBi
dXMgZm9yIHRoZSBkZXNpcmVkDQo+ID4gIAkJICogZnJlcXVlbmN5IGFuZCBwcm90b2NvbCB0eXBl
DQo+ID4gIAkJICovDQo+ID4gLQkJaW50ZWxfbHRfcGh5X3Byb2dyYW1fcGxsKGVuY29kZXIsIGNy
dGNfc3RhdGUpOw0KPiA+ICsJCWludGVsX2x0X3BoeV9wcm9ncmFtX3BsbChlbmNvZGVyLA0KPiA+
ICsmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5sdHBsbCk7DQo+ID4NCj4gPiAgCQkvKiA2LiBV
c2UgdGhlIFAyUCB0cmFuc2FjdGlvbiBmbG93ICovDQo+ID4gIAkJLyoNCj4gPiBAQCAtMjAwMSw3
ICsyMDA2LDggQEAgdm9pZCBpbnRlbF9sdF9waHlfcGxsX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gPiAgCWludGVsX2x0X3BoeV9wb3dlcmRvd25fY2hhbmdlX3NlcXVl
bmNlKGVuY29kZXIsIG93bmVkX2xhbmVfbWFzaywNCj4gPiAgCQkJCQkgICAgICAgWEVMUERQX1Aw
X1NUQVRFX0FDVElWRSk7DQo+ID4NCj4gPiAtCWludGVsX2x0X3BoeV9lbmFibGVfZGlzYWJsZV90
eChlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gPiArCWludGVsX2x0X3BoeV9lbmFibGVfZGlzYWJs
ZV90eChlbmNvZGVyLCAmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5sdHBsbCwNCj4gPiArCQkJ
CSAgICAgICBjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsNCj4gPiAgCWludGVsX2x0X3BoeV90cmFu
c2FjdGlvbl9lbmQoZW5jb2Rlciwgd2FrZXJlZik7ICB9DQo+ID4NCj4gPiAtLQ0KPiA+IDIuNDMu
MA0KPiA+DQo=
