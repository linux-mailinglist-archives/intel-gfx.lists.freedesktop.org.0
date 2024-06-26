Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FDA918DEB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 20:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E33B710E095;
	Wed, 26 Jun 2024 18:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0RFcyH9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A181D10E08B;
 Wed, 26 Jun 2024 18:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719425317; x=1750961317;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=UJ7fQghhEeWSwE+ICM16GkR/H9kbZFUgp8Ot+zyNs7Y=;
 b=O0RFcyH9NX69kSNp0bY3dZf6Ox7etTabGPJ3Rf9n4ARqCoe1YXvlpwAp
 QWI0RydlICngKXGfTCiJN6K2h3amfuS2WpJtVehuzhBW6Q6/ozQA9lBpX
 B+h2BA28JCBj7uklVkhj3awFrZHn75vaT2O98WgsxIkRy6oKx4iGozD8N
 8+UOOZdOPDN/x0ZhjcXbWmJRguZcTrg2+qk+zObew4dMt8lq2AQYDYWVj
 0+8B0y3JPn9CUzP45Ks02ZzRKY95l1c4Xou3rsnAFs7w3O5Xzch4COreu
 m4MDG0Nr8mRmJfXh5KamboXszuT0i215sXU/P2pHWtQ8I4dvlgRZAWy8Y w==;
X-CSE-ConnectionGUID: SKemUGiTTgqyf/pAGET0cw==
X-CSE-MsgGUID: PnxqNdX1RPiWd78blLB7Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="27140096"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="27140096"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 11:08:32 -0700
X-CSE-ConnectionGUID: G7fqvNKfTt24ZgN0bI0RQQ==
X-CSE-MsgGUID: GC3HSatxQdKrR3SF8XWnLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="81633001"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 11:08:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 11:08:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 11:08:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 11:08:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 11:08:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aNYqJih0cQGZmFnuqaNVral6QbGzfmbPrRdRGKMoLQnjrjmH8lw2/0oxtdmb+K08bVdERQD8ZLYBi3zDjhQDvts6R76oaHvC1sI1Vb3uY7I0gBRJsQV7AQc8JXFnT4S14RlstDX3XEDZSdejw0YU6NCJFGmWFPG+6KCE+Bu7nZGDi0gbVE4ff1kgQTZmgzG1nCLoaOfuYFCAX1A06HnXJH+DMcDFP4fDSMoFCjOFIRbREiocBZtMo/qEo4xhS525qFB7ZMy94GbXWQAEvCJwjXTBiab8DfBN8Wk64ZE4QTzzzWa/oWxLDOS1AKMWnO99LPkhj+Csm7WWBiQ9TDN59Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2XZE9nd7EaCRxVlsGYkBcJ6OO51W0jUrOzum+FpS228=;
 b=EJckhKGYw6frrWpilqIfiCWgtE0EtHjVh70652me0Y3mVX4paSV2rhn4qhV1JDe3apGOC7tzRLnHexza9081RNz0ZxGPY22aGN/8qI4rTgcPPurjD2vIh7qPHxrKsTSUcDa8Mcz/oVM1s3C1SUsdMcV3Wp0bGLiryBSPi3p+B5S0NoXCR7pHTiFqGy2CjrxcOWTltFK0D813qIg7SLukZVGh6MVUNZkI4cEEI85iPh3AC0wjy7GoqKSdeZ543bgcEM7hYwTIpyoaPdXGuQRf5rucG2ZpMnD4eViACmUxAU3TSHa0twToXX3VzzLmoVwxgMkmNznnB9k64iHHMdn+xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB7061.namprd11.prod.outlook.com (2603:10b6:806:2ba::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 18:08:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 18:08:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240626175758.GA2906448@mdroper-desk1.amr.corp.intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
 <20240626175758.GA2906448@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 26 Jun 2024 15:08:18 -0300
Message-ID: <171942529871.2026.14637377908557268138@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR10CA0006.namprd10.prod.outlook.com
 (2603:10b6:a03:255::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB7061:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ef05a63-4a0b-4e2b-730d-08dc960af7d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTAvbmJQcjk1K2JhN3RCTWYxUjJjbmQySmR1V2JWMmd2RWo2TU5xc3JjUGs4?=
 =?utf-8?B?dTRPSG40Q0J4VVdGYWtWcmsya21YKzVWUTlGZHhDeFZ5Rk5VSXlNcjVLRHp5?=
 =?utf-8?B?TUNyOU9iWXIvWk1EMTMyRkFIVTJ4L0xaMkNlNXE3QTUrTGNuUW9tOVlSK0Nt?=
 =?utf-8?B?ZnJuNlk5MG1KRk9ndFpOdmYrekNOV3lESjdpdVNNZW8rSUZoODZYUVhXS1Qv?=
 =?utf-8?B?QnpnblNNWU8zZjF4UFNqdTdzY3hKS0JMMVVEeStaTXEwYXN1R0hRR0ZrVEQ5?=
 =?utf-8?B?ZXF0eTBSZVFhUUR1bVBYd0hFUFY2QUx2MlFGNWdnZ2d4RzBwT1pCMmdoTEdw?=
 =?utf-8?B?bklrS281U2JuaFFqV2dFc0dFSkxlY2Y1MDFYY1FnVFhOeTd3WDk1VWdSbWhn?=
 =?utf-8?B?NUZHSmJSWFh2UDlzNEFtUnRjVEtrMlM5YU1meVZYSUw4QS9Nb2RFakpqT0t4?=
 =?utf-8?B?b1hhM2FnTmM3Z29YRVQrN0JZL3lQTnVjVFVxNHZ4MGU1Y1hlR2RqS0U1eG5n?=
 =?utf-8?B?cGxuUjYvTzczTDA4TlJMMDh6UGdTNzFLSmZUaHJTT0N0L3djR2xZaklFYS9N?=
 =?utf-8?B?RlNwSG1EM1E2d3QvcE41dVpzNG1rdVVCTUdObmtubXRtLzlEVi9pZGlaVHZS?=
 =?utf-8?B?dGpQOThZRWxLQVEwUGo3UXE0WmYxc2QyZzg3aElUcTlBMTlBbmJKdEtOelcw?=
 =?utf-8?B?MHpmaHFQNTdQV2pXSGtTei8wbWx4bVVvcnowS2dadFY2ZGVrYmIvVkpsMm90?=
 =?utf-8?B?ZVoxNWY5K3EwZ3NjTEJSTXdWYUx6UUx6akVWamo0TUkzUjZQYW8xc0N2NGtw?=
 =?utf-8?B?OFVOSFEvMmNSVzgyWlQ1eXNiY0l5UUlmRHZraG1GS0sxODdERUdkY3IzdE4v?=
 =?utf-8?B?OEpkTllwNWNrTXl0dENzWUJMSis5K0Z5aU1tYlBlQ0twa1pnaUtER1Y0RGxX?=
 =?utf-8?B?SElkN283TE44cUpVRGg1RURjYWhNcmtHS1ZDRVE5SHRiclMybHpNOC9xd1Z3?=
 =?utf-8?B?NDdIa2haMXE0YlhVcmttYTljRmY2eTAyMkl2MHg1ZVBTUGRqdHdEZDdIVmhE?=
 =?utf-8?B?ajFIcUUxSk41blpFNlMyK3cydHE4ZllpYmpFcEZIY0hZdjdhZzROeERmWEE1?=
 =?utf-8?B?TGFRREVmU0JZN2diOFMxcjNIUTVkMjdYQ0NmOU04MTlSMnVhMzc5NVIvR2U3?=
 =?utf-8?B?MmtZaSs2QVN5NWdvbm44Qi80MDdLc291dGpabDFGcXlvaUltZ1FtVGRWWUJ0?=
 =?utf-8?B?WDk2RGlISi8xdUtmSmhhNlN2aEZsWXhRUFlVVjBmaXVlRTVUdWpqOEJkblhj?=
 =?utf-8?B?dzIvMStNSVFUM0hiMWhMR0VDRUFZZUR3TVpLMnBHeEg0VjM3N2RwSGlVNFJO?=
 =?utf-8?B?QTB3L0FrREp6ek5nTldlcEFpNWZBbEtEWHY1emo1SlFNbzJYZWxRME81U1hS?=
 =?utf-8?B?VzdPSG96bWlzR0FXdWViQXFoS2pYY1hVcFZEdjViL0JxOVpqUE12b3lEamZQ?=
 =?utf-8?B?aGxmdUJBNUZNVTJ0WlVhTXlTdzdKTzlSNGpGYzk2WEI3ekVQRk9ZT1BjMDZ1?=
 =?utf-8?B?eFlBMnNYbkJ2Rjk3bEduSEw4czdqTlBwN0ZabE14WjhZOWNMb0hjaUVKZVlZ?=
 =?utf-8?B?N2MvVGxtR0paY1RPZU5rdWE5UUcxd1pyOEhqaThEZ0g1aWo2R1lVbmNmQkFI?=
 =?utf-8?B?d1l5WjJua01UekFhR1J2Y3dxRUN2ekFETDN1aVR0emNHRWdJc2EwSE9LK0pJ?=
 =?utf-8?B?cXB5dTdiYUJkYWxPMm01WDVpRnJrZWgvNm0rckxRLzM4dHV4cUVpanpBTTlU?=
 =?utf-8?B?WW41NmhYQldSMGpBK2JyQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1diMTZFZmRnMWxETTd3WERBL0ZVeUJiRWpVeHBaN3pVQm5HZ0YrZU40QVNn?=
 =?utf-8?B?cEpPNllhMjRDL2R1bkhscWJWL0ZYRlkyRC8yRS81NVpCOFRzZTlPVjRkcURp?=
 =?utf-8?B?czI5U3BOUFdHZlhzNFRyQzRsVU10RWIyWU5hRW5DVVp1dmhady80cW1YRHQy?=
 =?utf-8?B?UFc2RTRpRUxyRWZZZGxRcWRLTVh0MmpadnlGZ1pVcUFwKzFrRUlWaktscWRP?=
 =?utf-8?B?TUhwaWM4Q1V4elVIaDhiMUFiSlpDYzJDZDVTLzNZRHNYUE5yZTY5aE5HOUht?=
 =?utf-8?B?NUFRVkY3bDEwWkRaNEJvalg0d1VLeVg1RnBqaStCbWhkcE1KaStNTzFEZkl5?=
 =?utf-8?B?THl2K1VxNUdMRnRIU2pPaHA4WDRsSHpndXpwTXhuTUJVU1FNVDd1VjVkZDBN?=
 =?utf-8?B?UG9yR0pVTkRwdDFhR0l2dHBUSmpJUVdPbnUxdVg3Wk5oQ3IwRlY4bG9GVWNF?=
 =?utf-8?B?bWZ2K2VPZnc3U3g0eklDdHArRFAvNFdLWWJmZGhjTE1DZVpFMk9VZ2ZXQWFr?=
 =?utf-8?B?dnFKTnZ1c2hzRzJOcnAyRk0rWEhIaUlXdi82N2NjV251NWVtUXlPdld0bXRm?=
 =?utf-8?B?WXBFV0hvcVpkVFZmNlFzc050ektYb3ppVU1CMmhvbS9sb2FmWTdUU1ZiKzZk?=
 =?utf-8?B?OU56cTBmT0FLbjZMVGFBNmpSMlJtRHVoTGNoQjJjdGFkR25jQmhpd05McGFw?=
 =?utf-8?B?M2dWTjJ6QUw2TkppOUpaby85YVhTVHF1QkxicHNPTzFubldzL1R3SC9nZk9W?=
 =?utf-8?B?WkdlcG9wSU1DZDdHQnp2bnRnTGE4Ri95ZXdCTWx1d2lXSUxvS3dra3FqQlBk?=
 =?utf-8?B?Nm93eFlRSkIrbytFUnB1MTRNMXl4UnRnZU9FYlZob09ycWE3bnRxazUraCto?=
 =?utf-8?B?QXhRS3lmNGRkeVJVOFoxRFhNYi9JVGNiMUZtK3ZUR0lYS3NXUFk5VXN1aWRK?=
 =?utf-8?B?TmRBRE4yYXZUcEllRmJzZC9qbW92T3NlK09iWDk2MjNWazlVZXZXZ2ROQ2Ro?=
 =?utf-8?B?YTRremNGYmlVdVMrdmVPWG42dGx0UU5pVGV5YXdwWENRLzJmdU1ROVFna2lB?=
 =?utf-8?B?eEk1bWlVczlrT1RoUGhSbjc4a1NDZkd6K0t3NEU1NkJFSUtHdWc5ZTBjQnZR?=
 =?utf-8?B?OWU0UUVub0UrYU9rclpnM1ZVMTA5aUdidW9jSGJTL2JocDUyZkgzK3pyS3Ar?=
 =?utf-8?B?dkJZNHVoQmFqeS9EdHc3emRYd0R3UUtSeUFuNFZ0Sk1tclJNTE1hWStVZmU4?=
 =?utf-8?B?OGZvQXJLbHVpRWdYa3BVNllrNUExK1NNTTR1Wlh4aTJaMnlVaVpKQlhLTU5a?=
 =?utf-8?B?dW1ibTNYQVlOSCs2eXJ2amhjNUhzSHBCQ29iSzYxWFlBcHB4c2YvZ254aldY?=
 =?utf-8?B?SU5hVmpVRVRrRmk5YXV0L1JNcW44cUplMTcwVlZDMFNCK0VXMXhteUtFRGR4?=
 =?utf-8?B?UFk0dkhSbU0xbmRQZTN3ZFExNUplZUp6WFlOVFZNd2dYV3diY2NQVVJEa3Q3?=
 =?utf-8?B?dm9aMVR5SmtObXBiK2RWM2tqSERIWk04NnVNTmw2RXk3cU9objBpOGw1T1ls?=
 =?utf-8?B?d1lsVUE5MTR5WUEzajEvTW5sMEtIMUpwVG5mVDU1MTBGWFRTODJaQ096Q1ky?=
 =?utf-8?B?QUxiZWlxSlpCckI1ci9VaXZhcjB4d2dUUGdQSmhLUHdUcjd6anQ0RjAyTzBS?=
 =?utf-8?B?ZHFHSldvcWpwRDhabEg4T1pvS2Y1RHQvV0RSN3J6cmRMb0JXV0dsRHVsK3Ax?=
 =?utf-8?B?ZithVmc2dFRTMXFCSVBHa1ltZEJIa2VSTTg1b1VGSmdWOTJDajhzQUJteEc1?=
 =?utf-8?B?VTFGdXBwRUF6V0pjL1hwSmtzTVdYVGV0YUNwNDZ2SDJLekU0OGdidU5vSnRQ?=
 =?utf-8?B?bDhSeElGVjQ1S0JnN3JOQ05YZUdoWnVPWE12NHIzNU9OVFJWaWRxaFVnbzZJ?=
 =?utf-8?B?ek45b0U5cldBTkRieGI0ckE2elFGZDB0N0F0blAvZW5FNU1JQndjbUYrQ0JK?=
 =?utf-8?B?SlYxR3VUZ0x0VGRhSEpTaGIvM1ZxZGJ0eDRDZjNXUC9TYyt3Ni9wNjVhbXg5?=
 =?utf-8?B?NGFXVjZxWm80Z00rMmdacDltbmN1b0hYem5aZW45Ti9RM0liRGZaemhnYlpW?=
 =?utf-8?B?MWc0RkZGWlNHNG1takZsc1RTS0hUUFo3OTVTOXlxeVdGdjkzZlhrMS92WTZ5?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ef05a63-4a0b-4e2b-730d-08dc960af7d7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 18:08:23.3033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SvVfG9AAHObRR4N3X/G37GEcQaqAvPSFOql8uW2ajmnVTmQ+QNlJaXWuovVWZ2aqxulg+u9qy2A+Hwj6xx+JzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7061
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

Quoting Matt Roper (2024-06-26 14:57:58-03:00)
>On Tue, Jun 25, 2024 at 05:26:52PM -0300, Gustavo Sousa wrote:
>> Starting with Xe_LPDP, support for Type-C connections is provided by
>
>Drive-by nitpick:  In human-readable text like comments and commit
>messages, the official name of the IP is "Xe_LPD+."  We only need to
>replace the "+" with a "P" in code identifiers where a symbol wouldn't
>be legal.

Yeah... I was unsure between the two forms and was afraid that the "+"
in "Xe_LPD+" could somehow be misinterpreted as "and higher", so I ended
up going with the other one.

I'll update to use the official name while applying. Thanks!

--
Gustavo Sousa

>
>
>Matt
>
>> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
>> anymore. Those registers don't even exist in recent display IPs. As
>> such, skip programming them.
>>=20
>> Bspec: 65750, 65448
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i=
915/display/intel_tc.c
>> index 9887967b2ca5..6f2ee7dbc43b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_d=
igital_port *dig_port,
>>          bool lane_reversal =3D dig_port->saved_port_bits & DDI_BUF_PORT=
_REVERSAL;
>>          u32 val;
>> =20
>> +        if (DISPLAY_VER(i915) >=3D 14)
>> +                return;
>> +
>>          drm_WARN_ON(&i915->drm,
>>                      lane_reversal && tc->mode !=3D TC_PORT_LEGACY);
>> =20
>> --=20
>> 2.45.2
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
