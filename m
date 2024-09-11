Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748F997535B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC27710E04B;
	Wed, 11 Sep 2024 13:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmjUiCu6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA6E810E06C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060478; x=1757596478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sVUb4Vm1s+9iSfamA9A/1ClxqwqowHe56hj61PGrHBE=;
 b=GmjUiCu6ByHtzcBMyFtEGmTFB7krDpkVH5/hPUf0yBd82FJ4QJUG3ljS
 uV0b+8bTT9caQis9G3yE1Jhcm/KFN7RC1fda5fndbfiYPCgCBNs54T6W8
 CKy8DTL4lVpLdKPuVWaoSKANfavQ+TukRUZftewr9ThWk7CiZf9/Pl1cR
 Zpoq+IiAgnKxy3syRhb7Ssz0KT6UogDEkLPObWx/FTB4Oe8eswRqlR0AF
 J04D6tyxV2uTMHBAgwUzP9jXSBCuaxDWxqIwzE3MJ9lLSOyIr63BFzuyI
 tYtSPfmRRTbv6I13NL/Y9R0qmChADcpDObvBiD23Uix2ds6nhKPi5+sPH g==;
X-CSE-ConnectionGUID: VjXoRzkbQ8i3+ja/FP2f3g==
X-CSE-MsgGUID: nfoODCwBRxi3FtvL+ieg2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24994152"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="24994152"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:14:38 -0700
X-CSE-ConnectionGUID: fhlQfgJiRpm4HeHdFRaIGg==
X-CSE-MsgGUID: fmWFZSppSTmKHb6TCdDttQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67428934"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 06:14:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 06:14:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 06:14:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 06:14:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LcgM2N5t3i1TmvAGZ4340RDvHPMXRJHWbqouEGpw28wrtqSmhqbc94UysBRzwIDbsTjYn2jLHGwxEP6CVCJaHHKO0gtg0hjMDtHXhg6DIwrlkaobvTcfQqNK00xhxxrtlS2mkXeF3UPSz/1crCopY36JKFqSUl2dc/ZBsCNL9ckdLb3n7OA72uC5yzL4XuS5VBwV58+N06sZkRF4pHIZpCtjaj4zD/KH0YG14UySqhtWfP4bH/oHiurrX3qrvFvhedwUx65DzmG8n4OS0GvALtacTg8nwcR2LgPlY4A13XhwkM8rOhxcY/HY3o3unL0tFuy2jxkGfUspsbYw+O32WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVUb4Vm1s+9iSfamA9A/1ClxqwqowHe56hj61PGrHBE=;
 b=gNvvT4I5lR+SdJKNss8LpTRIPoOAVvLxubtIB3kNHCUsdbIf5KorOyILutSzHVxaspntwiaEKwOh20uXIUZwULxF8N+aeHrKqzJmp2/WbhOei36czoBeNZXmxrCi+LgdMDjrj+fK4wM72sQDhGlaq1RqQ4fhQnl6ZNmeN7ZzeUU263LAN0KuGtHeFGAYMOwKms9ZyuTqu+CjpZ/mGheWlilnGzSTKx7jd1oIoNocYUQw75Hr9efuWH7n0ltbM9H7Ol7tBVdo0HUEXyTO/HnuPWB4KldA17XGzpD37CRZdrfYCL6z3vil8W39HrVZWXj9b+YrOdEPr2tCOFJ3Dp/0Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5781.namprd11.prod.outlook.com (2603:10b6:510:14a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 11 Sep
 2024 13:14:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 13:14:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled for
 Panel Replay
Thread-Topic: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Thread-Index: AQHbBEfbYU/hO4B0iUGBPYuBSXA2irJSjJgAgAAD7AA=
Date: Wed, 11 Sep 2024 13:14:33 +0000
Message-ID: <8c3320cd5be33a6b9d92231758ae0e0a712d9eb9.camel@intel.com>
References: <20240911124015.1420976-1-jouni.hogander@intel.com>
 <ZuGUbvpnba19oGRo@intel.com>
In-Reply-To: <ZuGUbvpnba19oGRo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5781:EE_
x-ms-office365-filtering-correlation-id: 03bff929-89f0-4f3d-60fb-08dcd263ad53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NGNvQytNc3RRQXpna3V3L2Qyc0daUWxDQmRySkNQNnRPMVBuYUtYalVHZlB6?=
 =?utf-8?B?cnJZblBvclRvdnZ0SWdMS3Z2cU5JYndIWTJIMmlieTErVlFUSVUrNjdtNjN1?=
 =?utf-8?B?SStMMXQ5RlhqMWJxRDNlN0M4b0huZVorUnMydFBCd1FPMlNRRHMrNFF2U0tN?=
 =?utf-8?B?VHRJWFYzRmk0V3RPVnRodE5Zb1pFVVNvd21IaGtoUHcwbUp2UFR4M0VOYWRC?=
 =?utf-8?B?bkRSWHJhSS9XcG80bDVkQ1VVQndOSDF4R1pIaW53SUYvTkJkcHBobGxSQldo?=
 =?utf-8?B?ZVphREF1RmlxMkpyczZ4bnVpbVVQS2NEREpuMzJBaWdDV282eWFQOCtNMGl5?=
 =?utf-8?B?K29wNEVoWmRtNVNMWUdDTkhlVW5ZUTNaSGpYYmh2c2E3S2gvb0oyaG1KZFFj?=
 =?utf-8?B?SEJYaWlWckRZRUhFZFh5dEtjZ0dvZmwwdVNvb3pHeHd3Nzh4UjJWemo1UVVK?=
 =?utf-8?B?VU1Ka1RFUHQvRVZJK0ZLNExNVUJIVU1WVi9aTG9YeUovMXQ5UlJVNmMzYzNj?=
 =?utf-8?B?Y3hRajFGSVpEdWR4U2VaTDU4VElTZVVlb0hreUp6SzNMVWxhOVQwQ2VBY0wr?=
 =?utf-8?B?ZkxSMGY5NERVek52aW1VNnNucjFzaHk3bWZRU1M2ZE1yNTR0UGU3blg0Zm93?=
 =?utf-8?B?c1R0SmdpRWN2M3BwNGlkcmpuSlFLb2E4dlRTL3M5NHorMkRKU0xuSUg5T2NT?=
 =?utf-8?B?QkdlS3dJbTM1NVcwUlEzN1dCelVRZU02Wlc3Znpjb25HQnkxcjBMSjc3ZUx0?=
 =?utf-8?B?NS9Ick1FUi9YdCswdXAxWTRKdHB1eEhPZVg3UnZjZllRR2Vqa3FrQ3Nkb3NZ?=
 =?utf-8?B?eEtaRnhqT3VoUytaUC9YRStOWFdSa3A4aENqYm9CZHBjWHF3cDZxUzZldEhJ?=
 =?utf-8?B?Y1lWSFY2SGtUUjBrZ21ub2xXRjNLeTZEcjFmT3doemhzVUFNaW15aHdLUGxS?=
 =?utf-8?B?aHZjdG1Wd1YwVEhxTzJwZVZjYVhKMlBmSm5KMTBReXhqWkY2VnFyc1lLcXNH?=
 =?utf-8?B?aHlpVWhLRUg0RFZiL1Y0bEFWcjJWeEo5WEluNGMrV25XRm9UZ3A1T3l4OWt4?=
 =?utf-8?B?SGNZbUlOYm1rZEF1NysrUEpDbWIxUnZZNlpNUjBrajV5YmhqU0FORTJZUHhC?=
 =?utf-8?B?YWthWVEySmlKSGdGRGxtR3JVQTI4Yzlpak1EWDltb0d0bnpFdzl5N21QV0Vt?=
 =?utf-8?B?RUZyT2NPcnlWR29ZTDFTZ20vcUd6QlpabGlSenRqRG9uVHdKZWdhODlJcGx4?=
 =?utf-8?B?UndjVW1ZLys1Nm52WElaVmRQbjJwKytsVUN2RVhDd1hOdEJ3WlVvdUdsc1hy?=
 =?utf-8?B?OHJWMWZDK0xIeE9GMEdmd2JqQm52czlaV3NadFdVMGFEN0lLZXZvbnpjS2d0?=
 =?utf-8?B?TzROeFFXS001U0J4Qk1OenVCV2J5MEJkcm5qSjh6NVhqQkxwano5VS8wNlZp?=
 =?utf-8?B?V0N3ZTE2dVVsL0lNQXE4dFFHc1kvdVo1aEw0N3NQWFVPdEgxb0tFMDROSGJE?=
 =?utf-8?B?MnZQSzEyTHArcE0yUm5lY1VJYXo0TVFveEZ5SWZDejU5UkNWTUZ5Nk5kcGdF?=
 =?utf-8?B?L0JzSlkxWjhabitlMEFrTDNwUUl2ZWFoR2Rrd3lJUFp0S2N4ZnFKaE91T2h6?=
 =?utf-8?B?RnpCcHdkTDg4NmNjSEVUSmtSdWl6NWxtYXpSVTErUVpYREc5L2l1MWMvZFhL?=
 =?utf-8?B?NUx0Ky9mTnVGQ2hwdm5HbGxSNXEwaVFUZUxzQ3RZdzZjRDBnbWFKMEJxaStX?=
 =?utf-8?B?M3NaVTVUdjJkQlc2OTZSWmg2YWJjRWdvOGFqNTBQK1JOTkxUMHhGRDdLaFNu?=
 =?utf-8?Q?m8uu5eg9E7uxHoQfKNozToyyK27ZlGqAyt8y8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2M5cHZGK3cycVRuRzEvV3FRMW1lUnN0OW1BUGE5N1BTLzRxTzNuRXBoSW5l?=
 =?utf-8?B?TDVxVTYwY0U3YnJ5TVF1UWhMYmY1QUVRczVraC9IeUxWenRlT2k3UlAwbWZy?=
 =?utf-8?B?QlloZkJOdGMzcjk3UjlTM0Y0ZktacksyOUZRVXRSS29nenlGTlg1Vk03aFpV?=
 =?utf-8?B?Yy9ES2RHNlFmMlRyUG85TXhPQUpnejVDK05QZktJWVVNVjM0bGdTQmh4TjdT?=
 =?utf-8?B?b3AxVEJNTW4wWWNTaDZ6OUhvOWxsMTZDQ0lSRFo3K2ZTYXU5ZHB2RWRiY1dt?=
 =?utf-8?B?SElCVVRPUkEwVzZXZEUwTnUyeGpuVWdQRnI5WDBpY0tjYUNYbmpzVHBtNjhm?=
 =?utf-8?B?NndMbVVNS3NZV2dXYlFMR0RiUms4V25rLy9GU0J0b2ZIcFFybEVZVExNMERV?=
 =?utf-8?B?dzFiVWFEZStwTjJwUkY2N0dtOExkM0RxRGxPQmNkTjJTckdWcE9jRkhOS3lT?=
 =?utf-8?B?ZWVibUlYa2xDTnU3bS9teGlmT2RzemZ2MEt5c3JBbE4ydW1nRmEzZFNRVUxh?=
 =?utf-8?B?Zk85TjJSWmZOT3UvSldEeEJHMXRFd2FXSmtVSnZ2dGQ5aVdrUWNNRDN0WUpF?=
 =?utf-8?B?MldJUUJPSC9XU1EvTE5GeFM3Q2ZyeDFPYm4zL0JSRmFsc1BvbVpYN1A2TURJ?=
 =?utf-8?B?NTJyV3V0UklOVGdvbzh0TXhreEg3MmxWR3hrVzJ1ckV1ditBZjFZL0ZtR2hU?=
 =?utf-8?B?NDVCT0xBeUluNnVDcTN1d3FBU0FGTjJVUlJ1bTltcG1Rb3ZwaldQUHNMQ3Zi?=
 =?utf-8?B?MnBvYmlpelFkWFllTHNuZjNxVFJCYVl2MXFtdGxZQUdkS2ViTW82dk5ZRkdj?=
 =?utf-8?B?T1hYRitSRkZCYkdZOG1JajdiUFczc1JXVkduT0x2YW1nZExqU3NMeHVMVU5T?=
 =?utf-8?B?dy8wMmZGeTZQbWY3eTRBY0xQTjVLN2xTMU9Vb1hlWU16Z0Y2UjhRYzA0SUxC?=
 =?utf-8?B?YXRMWnpmeHJGUytKN2FmZ2xPRjFqMjNmV20vRmdVUVNYS0tJWjhyem9IdWZI?=
 =?utf-8?B?TUQxdnhib2d2Wm1DZklUV05vWEU5TEFodXVMY2t6REk5M3IwYUJDUTR6QzZk?=
 =?utf-8?B?bU1RRDkzUFViZThEV1FPUWgzZStHQjNBU3F0OW5iNllGc29JVU80VkQ3dUdr?=
 =?utf-8?B?MThDdWJOeUZsRGVxbzRoNDN5dFovSFJqam1jSFp5REd5M0ZqT1laUmp0ZEs0?=
 =?utf-8?B?RUZ0cTNpSnpkbG9hUmEwMTRsZTdUTk5STk4xdlh2NjY5a3RUMXZYb2dITC9T?=
 =?utf-8?B?YW55djgxaCttRmlldjBHOCtnbjgrWENtNk1pZlFzVTAzYVlIblAwaUxZR3ZN?=
 =?utf-8?B?ZTJIbkw4c1I0ZjZqQVJCUHRCU2wxS3plNVhTM2JWMjNNVjg4aGt3TWpPUjky?=
 =?utf-8?B?YnVaWlpvc2duNmtJbVdFYzhuenpndndsbWdSUXYrTGoycWtPREF6VXdvYzBy?=
 =?utf-8?B?ZkFEcnVKUzlJY1FTYnJsNXFEa05mcU43b01WZ3RRTXJDQUNVRlFjejA2dXRh?=
 =?utf-8?B?eklPRVZvWHRQYmRpZlc3TG5iOHgzUldxVzVlTDh2TWpGRlB3ZnNtcUNNdlJq?=
 =?utf-8?B?V0dmWlo4b3ZESmtMaDZ1cnZrMGFBRDgvejRxUkxZOGtJRGRSa2p2TUlvREVG?=
 =?utf-8?B?TWc0aGJVL21IVk5SenhtdHVnQ1NESFl4V09XRTJLTkRLVHJQd21YcDVJdWcy?=
 =?utf-8?B?Zks1Z2lZSkJEeUt2aXdtM0NkeWE0c3pGVWhxVkg4eE1YT0tQd3h1cWQxaDBQ?=
 =?utf-8?B?akJNS3lObitEL2p1VUxWR0pwVjNBVVIwaUZ4RnVRNXBPSE13Rk5YbFhXUEtM?=
 =?utf-8?B?bjF5bDNtMTZLQndGQmZkU01zeEY0KzhCYlVmMGZrN0tWczNUV1d5cGl3d294?=
 =?utf-8?B?dStTOXRWb0xnQUZlTS81QlhKWW9JcG5FaHNieDFuRHFnd3cyQ2MwVWNpL1Jj?=
 =?utf-8?B?SmhyV2VYcE56T1l2blpUblJzWXZyU3pkWjlHMXZLMVVlQnFUU1hQdFpicjlB?=
 =?utf-8?B?dHZacXJ6dnNRN2NaMWNXSlJBNDR4SmFHOWxGVmxNbmNwL3RGODRZU3ZDS3RK?=
 =?utf-8?B?RDhZYSs3U0JkRzZBMk9DdE1waGVMN053OGhhVWd5TjhkVWtYYVlxOHJjSUl5?=
 =?utf-8?B?R1Qzc01YREczbDVJU3c2QlRMOGI0SkEvVWdna3dJSHZMc25XUmYwTEZJaEgr?=
 =?utf-8?B?Ync9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7214E12273BD744D9EDCA46661A56470@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03bff929-89f0-4f3d-60fb-08dcd263ad53
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 13:14:33.1225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uGGPl+68+oPBExBZRsNoimkSAv4gncu5/V9Lz7Hcuv+HbAoMT2mmSKPwZS2Z2h++k3NnwduE/NDxUBGFKGjE6sq2MsyIUl7+b6c0IjxGuJc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5781
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

T24gV2VkLCAyMDI0LTA5LTExIGF0IDE2OjAwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgU2VwIDExLCAyMDI0IGF0IDAzOjQwOjE1UE0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBuZWVkIHRvIGJsb2NrIERDNiBlbnRyeSBpbiBjYXNlIG9mIFBh
bmVsIFJlcGxheSBhcyBlbmFibGluZyBWQkkNCj4gPiBkb2Vzbid0DQo+ID4gcHJldmVudCBEQzYg
aW4gY2FzZSBvZiBQYW5lbCBSZXBsYXkuDQo+IA0KPiBUaGlzIGRvZXNuJ3QgbWFrZSBzZW5zZSB0
byBtZS4gSSAqdGhpbmsqIHdlIGFyZSBjdXJyZW50bHkNCj4gc3VwcG9zZWQgdG8gYWx3YXlzIG9w
ZXJhdGUgaW4gdGhlICJtYWluIGxpbmsgb24iIG1vZGUgZm9yIHBhbmVsDQo+IHJlcGxheS4NCg0K
VGhpcyBpcyBub3QgdHJ1ZS4gQ2hlY2sgYnNwZWMgNjg5MjA6DQoNCiJXaGVuIHBlcmZvcm1pbmcg
UFIgb24gYW4gZURQIHBvcnQgdGhlIFNvdXJjZSB3aWxsIGFsbG93IGFkdmFuY2VkIGxpbmsNCnBv
d2VyIG1hbmFnZW1lbnQgKEFMUE0pIHRvIHR1cm4gdGhlIE1haW4gTGluayBPRkYgd2hlbiBub3Qg
c2VuZGluZyBhbg0KU0RQIG9yIHVwZGF0ZSByZWdpb24uIg0KDQpBbmQgaWYgeW91IGNoZWNrIGJs
b2NrX2RjNl9uZWVkZWQgaW4gbXkgcGF0Y2ggdGhhdCBpcyBjaGVja2luZyBlRFAuDQoNCkkgd2Fz
IG9yaWdpbmFsbHkgcGxhbm5pbmcgdG8gaGFuZGxlIHRoaXMgYnkgcHJldmVudGluZyBQUiBlbnRy
eSB3aGVuDQpWQkxBTksgaXMgZW5hYmxlZCwgYnV0IHRoYXQgd291bGQgYmUgbW9yZSBleHBlbnNp
dmUgZnJvbSBwb3dlcg0KbWFuYWdlbWVudHMgcG9pbnQgb2YgdmlldyAtPiBkZWNpZGVkIHRvIGdv
IHdpdGggYmxvY2tpbmcgREM2Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gQnV0IGlm
IHdlIGVudGVyIERDNiB0aGVuIGZvciBzdXJlIHRoZSBtYWluIGxpbmsgd2lsbCBiZSB0dXJuZWQg
b2ZmLg0KPiBBbHNvIERDNiBpcyBhIHN1cGVyc2V0IG9mIERDNSwgc28gaG93IGNhbiB3ZSBlbnRl
ciBEQzYgaWYgd2UgY2FuJ3QNCj4gZXZlbiBlbnRlciBEQzU/DQo+IA0KPiA+IFRoaXMgY2F1c2Vz
IHByb2JsZW1zIGlmIHVzZXItc3BhY2UgaXMNCj4gPiBwb2xsaW5nIGZvciB2YmxhbmsgZXZlbnRz
Lg0KPiA+IA0KPiA+IEZpeCB0aGlzIGJ5IHNldHRpbmcgdGFyZ2V0IERDIHN0YXRlIGFzIERDX1NU
QVRFX0VOX1VQVE9fREM1IHdoZW4NCj4gPiBib3RoDQo+ID4gc291cmNlIGFuZCBzaW5rIGFyZSBz
dXBwb3J0aW5nIGVEUCBQYW5lbCBSZXBsYXkgYW5kIFZCSSBpcyBlbmFibGVkLg0KPiA+IA0KPiA+
IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9p
c3N1ZXMvMjI5Ng0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfY29yZS5oIHzCoCAyICsNCj4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2lycS5jwqAgfCA0OA0KPiA+ICsrKysrKysrKysrKysrKysrKysN
Cj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5o
DQo+ID4gaW5kZXggMGE3MTExMTRmZjJiNC4uMDcwN2JjMjA0NzkzMSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0K
PiA+IEBAIC00NTcsNiArNDU3LDggQEAgc3RydWN0IGludGVsX2Rpc3BsYXkgew0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogRm9yIGk5MTVnbS9pOTQ1Z20gdmJsYW5rIGly
cSB3b3JrYXJvdW5kICovDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1OCB2
YmxhbmtfZW5hYmxlZDsNCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBzdHJ1Y3Qgd29ya19zdHJ1Y3QgdmJsYW5rX3dvcms7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgdTMyIGRlX2lycV9tYXNrW0k5MTVfTUFYX1BJUEVTXTsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUzMiBwaXBlc3RhdF9pcnFfbWFza1tJ
OTE1X01BWF9QSVBFU107DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0gaXJxOw0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiA+
IGluZGV4IDhmMTNmMTQ4YzczZTMuLjk2YWJmYjM1NjM0OWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gQEAg
LTE1LDYgKzE1LDcgQEANCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2lycS5oIg0KPiA+
IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHJhY2UuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRl
bF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9kcC5oIg0KPiA+IMKgI2lu
Y2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2RzYi5oIg0KPiA+
IMKgI2luY2x1ZGUgImludGVsX2ZkaV9yZWdzLmgiDQo+ID4gQEAgLTEzNjEsOSArMTM2Miw0NyBA
QCBzdGF0aWMgYm9vbCBnZW4xMV9kc2lfY29uZmlndXJlX3RlKHN0cnVjdA0KPiA+IGludGVsX2Ny
dGMgKmludGVsX2NydGMsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+IMKg
fQ0KPiA+IMKgDQo+ID4gK3N0YXRpYyB2b2lkIGludGVsX2Rpc3BsYXlfdmJsYW5rX3dvcmsoc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBjb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpkaXNwbGF5KSwNCj4gPiBpcnEudmJsYW5r
X3dvcmspOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShkaXNwbGF5LT5kcm0pOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqAvKg0K
PiA+ICvCoMKgwqDCoMKgwqDCoCAqIE5PVEU6IGludGVsX2Rpc3BsYXlfcG93ZXJfc2V0X3Rhcmdl
dF9kY19zdGF0ZSBpcyB1c2VkDQo+ID4gb25seSBieSBQU1INCj4gPiArwqDCoMKgwqDCoMKgwqAg
KiBjb2RlIGZvciBEQzNDTyBoYW5kbGluZy4gREMzQ08gdGFyZ2V0IHN0YXRlcyBpcw0KPiA+IGN1
cnJlbnRseSBkaXNhYmxlZCBpbg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIFBTUiBjb2RlLiBJZiBE
QzNDTyBpcyB0YWtlbiBpbnRvIHVzZSB3ZSBuZWVkIHRha2UgdGhhdA0KPiA+IGludG8gYWNjb3Vu
dA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGhlcmUgYXMgd2VsbC4NCj4gPiArwqDCoMKgwqDCoMKg
wqAgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRf
ZGNfc3RhdGUoaTkxNSwgZGlzcGxheS0NCj4gPiA+aXJxLnZibGFua19lbmFibGVkID8NCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERDX1NUQVRFX0VOX1VQVE9fREMN
Cj4gPiA1IDogRENfU1RBVEVfRU5fVVBUT19EQzYpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICsvKg0K
PiA+ICsgKiBXZSBuZWVkIHRvIGJsb2NrIERDNiBlbnRyeSBpbiBjYXNlIG9mIFBhbmVsIFJlcGxh
eSBhcyBlbmFibGluZw0KPiA+IFZCSSBkb2Vzbid0DQo+ID4gKyAqIHByZXZlbnQgREM2IGluIGNh
c2Ugb2YgUGFuZWwgUmVwbGF5LiBUaGlzIGNhdXNlcyBwcm9ibGVtcyBpZg0KPiA+IHVzZXItc3Bh
Y2UgaXMNCj4gPiArICogcG9sbGluZyBmb3IgdmJsYW5rIGV2ZW50cy4NCj4gPiArICovDQo+ID4g
K3N0YXRpYyBib29sIGJsb2NrX2RjNl9uZWVkZWQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpDQo+ID4gK3sNCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlcjsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93
aXRoX3BzcihkaXNwbGF5LT5kcm0sIGVuY29kZXIpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9DQo+ID4gZW5jX3RvX2ludGVs
X2RwKGVuY29kZXIpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gKw0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
dHJ1ZTsNCj4gPiArwqDCoMKgwqDCoMKgwqB9DQo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGZh
bHNlOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgaW50IGJkd19lbmFibGVfdmJsYW5rKHN0cnVjdCBk
cm1fY3J0YyAqX2NydGMpDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhfY3J0Yyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOw0K
PiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtDQo+ID4gPmJhc2UuZGV2KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZW51bSBw
aXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBsb25n
IGlycWZsYWdzOw0KPiA+IEBAIC0xMzcxLDYgKzE0MTAsOSBAQCBpbnQgYmR3X2VuYWJsZV92Ymxh
bmsoc3RydWN0IGRybV9jcnRjICpfY3J0YykNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGdlbjEx
X2RzaV9jb25maWd1cmVfdGUoY3J0YywgdHJ1ZSkpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChibG9j
a19kYzZfbmVlZGVkKGRpc3BsYXkpICYmIGRpc3BsYXktDQo+ID4gPmlycS52YmxhbmtfZW5hYmxl
ZCsrID09IDApDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNjaGVkdWxlX3dv
cmsoJmRpc3BsYXktPmlycS52Ymxhbmtfd29yayk7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKg
wqBzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBpcnFmbGFncyk7DQo+ID4g
wqDCoMKgwqDCoMKgwqDCoGJkd19lbmFibGVfcGlwZV9pcnEoZGV2X3ByaXYsIHBpcGUsIEdFTjhf
UElQRV9WQkxBTkspOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsNCj4gPiBAQCAtMTQzNiw2ICsxNDc4LDcg
QEAgdm9pZCBpbGtfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRjDQo+ID4gKmNydGMpDQo+
ID4gwqB2b2lkIGJkd19kaXNhYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjKQ0KPiA+
IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2lu
dGVsX2NydGMoX2NydGMpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLQ0KPiA+ID5i
YXNlLmRldik7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlw
ZTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgbG9uZyBpcnFmbGFnczsNCj4gPiBAQCAt
MTQ0Niw2ICsxNDg5LDkgQEAgdm9pZCBiZHdfZGlzYWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRj
DQo+ID4gKl9jcnRjKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcGluX2xvY2tfaXJxc2F2ZSgmZGV2
X3ByaXYtPmlycV9sb2NrLCBpcnFmbGFncyk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGJkd19kaXNh
YmxlX3BpcGVfaXJxKGRldl9wcml2LCBwaXBlLCBHRU44X1BJUEVfVkJMQU5LKTsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBp
cnFmbGFncyk7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChibG9ja19kYzZfbmVlZGVk
KGRpc3BsYXkpICYmIC0tZGlzcGxheS0NCj4gPiA+aXJxLnZibGFua19lbmFibGVkID09IDApDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNjaGVkdWxlX3dvcmsoJmRpc3BsYXkt
PmlycS52Ymxhbmtfd29yayk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiDCoHZvaWQgdmx2X2Rpc3Bs
YXlfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiBAQCAt
MTg3MSw0ICsxOTE3LDYgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X2lycV9pbml0KHN0cnVjdA0KPiA+
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpOTE1LT5kaXNwbGF5LmlycS5kaXNwbGF5X2lycXNfZW5hYmxlZCA9IGZhbHNlOw0KPiA+
IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2hvdHBsdWdfaXJxX2luaXQoaTkxNSk7DQo+
ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoElOSVRfV09SSygmaTkxNS0+ZGlzcGxheS5pcnEudmJs
YW5rX3dvcmssDQo+ID4gaW50ZWxfZGlzcGxheV92Ymxhbmtfd29yayk7DQo+ID4gwqB9DQo+ID4g
LS0gDQo+ID4gMi4zNC4xDQo+IA0KDQo=
