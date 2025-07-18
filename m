Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B82B09B19
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 08:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7176F10E112;
	Fri, 18 Jul 2025 06:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YlQQG/VZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB8210E00C;
 Fri, 18 Jul 2025 06:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752818772; x=1784354772;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=DZvL4RKKq0cDAO0nBTzjsjB7mYEP3Osqs8hFMOz1vJU=;
 b=YlQQG/VZNA0HlRVBaHXW6n1iZzxyd+zcMhuZlhfb7wRnoTLkEDCPTZpB
 zAzEdECBrDJWNA9ywnEu28+r89gqYac9X0PwM1n794RPKMjBRkxBL3i4L
 D0dTz1DH7kjyg09V0t8tX4AdLpIRhW6+N6Iha3nY9sAL4GSm2RqfAeXoY
 NQ9I/6MEW9R+IEkqAygdcu4J600Ak+BJyiLoVljOzuw3nA2OvKffD/lVB
 KpAE8zvyXx1/iuZg1+0LQcqBOaA44s/NSI0vhezEzER11mku588nxqZIN
 tl8KBTNlysgVyVFl0CxaaYSUkew7j3+GqjNDSHVT7LfvQB37lGCdysLdg w==;
X-CSE-ConnectionGUID: Ip2/i31USIKihhPz8LGmRg==
X-CSE-MsgGUID: 3e9y7gWcTeaU3khyiUUrAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58886844"
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208";a="58886844"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 23:06:12 -0700
X-CSE-ConnectionGUID: dWDOTpU/Tnak1sNxnutBZg==
X-CSE-MsgGUID: JjO2V7zWT0GDmoLqKWAAVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,320,1744095600"; d="scan'208";a="158546549"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 23:06:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 23:06:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 23:06:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 23:06:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uz2W+K0Ksvdjxrq5n2bFTl0zXDiUuIk4kF/Pu6TBqV0lnFSHvZUJqhx5q73MfsQk1X9euVHMbudFCb66qCynG7gXrTjC3pxhLS9onjA+S89QFa8fWv/NrSELCPkzBcEmhNmfxyu3rcN1L8XvyJv3vmVSzeixZXFS2oorAE/JY8ZQvM3QydzLLyxVAZs8ayGoRWvJkulzUvBn3dhJCrHNH5E/xUYNNy45ROlB8x6kobQZPaVafdHhhKxsVy+h1oyhOvWDL+r99w7lKavwQ+I16fJ8G+GVyCVp1OlS7tlMoHRdYo3w8WyCGzWeQF3+bOeXO1TbViJuHi4JzKYs2Qb/dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZvL4RKKq0cDAO0nBTzjsjB7mYEP3Osqs8hFMOz1vJU=;
 b=U72IvYsgvnBD84Ay01GW19N2TBLPSkiQ9ZS0hSQ5edVU6nD/hSllyoJBUdLD832rwCkDTueOFA3SwA4a5N+ciyJkbCI2GF2qrvdSsllPQYRVX0uMZN3jkKFtU+XQVEpY7+F06LJPl70NJiPK81Ono7+UkK0JXnnZ/Td8jeHnUwbdDCHA6I44mYDFjf3/mzWp3OvwyhVPsmlh6+ZDL0P9E28XZyxzNdLYf/cUlAHgugBEeGAOyiSm6zf2rUD3/qBrGH6stiQ8Aoyn/GAJMEOgdIyCXe/twI8mPiSuF2Djx7983FCBbuymrEZcAEvSHDu82aQVIeoxdTyv80LBCYQvmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7797.namprd11.prod.outlook.com (2603:10b6:930:76::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8922.39; Fri, 18 Jul 2025 06:05:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Fri, 18 Jul 2025
 06:05:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Topic: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Index: AQHb9uSw/8wG7IbC4Emrndc4ZWucjbQ2UHaAgAEVpAA=
Date: Fri, 18 Jul 2025 06:05:24 +0000
Message-ID: <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
 <175275909975.1809.8747168482147911326@intel.com>
In-Reply-To: <175275909975.1809.8747168482147911326@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7797:EE_
x-ms-office365-filtering-correlation-id: 1e292727-0dff-4d39-fb5c-08ddc5c1166b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SXI2ZmpYVzQ0WG9FOURDb1l4QU55NkI4OXY0V0R0cTJLenowTkxUZGFld0hC?=
 =?utf-8?B?ZUVwUXlsUWZjay8zUW5vNk5FQS95bXFVS3BlaHJZOC9jTzIwdmwxV3A1eWND?=
 =?utf-8?B?R091QlEyb0tMeUJIMVFEaDR2NzcvTlBZdUVZajNmRkJhNWpsNGJ4UXJtd3RZ?=
 =?utf-8?B?ZEh3RVdRYld5eld0UC9YUjRNSEFTVkFHWnA5aHZQRHl3bmx6eSs3Y1pQS3dJ?=
 =?utf-8?B?VXB4MTVrMkhwczQ3Z2Q5bklqK3dDdml4RTFOYUp6Q0l6L0pzZ2xKc1Jremsw?=
 =?utf-8?B?M0h5d0FhRkVId0hVbXVXaWJ1WjFxdEhUdkxuZTQyNXdQWThhKzR5Z2drZU5z?=
 =?utf-8?B?RDVMeVZTeGE5OG5zQkx2YS9MU094L1NtcTVZdHRPZzFoc3BLbVdnY21Oa250?=
 =?utf-8?B?TkZNVVltYjJNNVN5L093L2kxVGlyYUVvWmZSeFROREtuWUxYVnVCTS9qTUlr?=
 =?utf-8?B?WHNjSFdBQ2VFSmV0ZksxY044bzhwYTdXTE1HUTVWK09WazR5MTErNjhDbi8v?=
 =?utf-8?B?QjMxT1VmZGFaM0JXeit4ZytyR3duMkhYSjdjcWVGRlM0ditOYzJneDJYUHlN?=
 =?utf-8?B?Z01ITEdDb2dBYnI2d0F2dlova3Rqb3ZlZTFWUDJXMXVoSmdodmkrUkhCdHla?=
 =?utf-8?B?YWpNYUZrZCtoWHc1Z1dkODZkUTlCQ21KSHJyQWhBWWpxSUJxZmg2L0FQUGh3?=
 =?utf-8?B?UkZMSzUxcjlhVkhtSEE4cWwwL0dsMXhHSk5zV3RTdkdkRG9YUlRpRUtqZ252?=
 =?utf-8?B?K1gzTEozQS85dEZSYmVFdFk5NGZvRnZEaDFsRkYzVk1sZmFJVGliN3dGOU1p?=
 =?utf-8?B?UmRFOG94R1plTjZTWkRSbkZueDVsZkV4Zkg3T0dIcUwyb1dhdUpIaGZ5ODlN?=
 =?utf-8?B?VjczeDlxNVVoUkk2WDlKVWRHMVJOU1Q4NE44eFQxbm1MYWhmZFhZbnUzaGFs?=
 =?utf-8?B?dlRoSFlXbldjeVM3QjA2eGttbzVBUFluNkV1dE4xa2dSekh0YUtuZGRjVDZC?=
 =?utf-8?B?U241b1FjSmVqVmVqaXh2TG1INzNaMlN3cFZLZnRhdk84OTRtbnF4T0I4dzg3?=
 =?utf-8?B?eWRXajBBRythMGRwY2FnZmtyUEp5VDY0ckU0bTVtMDhBMmxVajJiWXMxeXNt?=
 =?utf-8?B?eWg1NkNUN1pFa0F3dE1hUWJXL29yRXpsUEQ5VnpZL05VNVloNjVlWWJwWEl4?=
 =?utf-8?B?a2MybGxjeFRXK3h4OTdDUm1EcXJ0YlZ6U1VRR1h5T0JXNFNkdm9wbzg1b1Qr?=
 =?utf-8?B?bER2WkVaUFVoczJHclJvd2Z2VDhnSEc0ZGFwTFVwMG1NZHRBY3Nac2dPZUVk?=
 =?utf-8?B?OFc2YXZuQmx1eVVoczIrSmF2eDVUODNleXluN2w0L3NONDQrNXViT28weVc4?=
 =?utf-8?B?c3lBVkxQa3FKVGticW5Nai9OUmZQTUEwa2xmS3BXK3hWNW8xQUUrMUlPcGF2?=
 =?utf-8?B?MVBSWGIyZUVRRFRucUQyd2FFdXlVVEdvVmFXR0JYSXBMY0VheHlZNlJuQ1Vz?=
 =?utf-8?B?WVpHd085L1d5UHFFZ2JzSnk3VHBRQVIwdCthaXJQM2hLSjI0S0xWUXdIaURu?=
 =?utf-8?B?eE1qVWVKN1JOMGhjNG4zazNJV1d6RVQwYXhJTWJza2RBcENpbTdkMUdEbjVo?=
 =?utf-8?B?SlorbjY1YWJROEE4QzZnMGpEMWJqVk5GdkM2eW1DSWhvZFQvQjhxTHFzVHNK?=
 =?utf-8?B?YkVLREwyMlkzUzJuVDdhTEFiQ3Y1UmplUXYxT0dZb1JjL05GNHlvT2phb091?=
 =?utf-8?B?ZzFBQzNuQzJLNEd4RWFxMjFEbGIyMlNFMThLSm5BeVhZVWYzcVFIUk9CVkE5?=
 =?utf-8?B?SlFwdjE5RzhuMTN6dVRYVmJCL1RMMm5meFpXWU5zcW9pa3o2dE1xTDBtZWlE?=
 =?utf-8?B?dzFiNnJseEZraC9KazRWVHJwM0lXOUgyTDJ1blJhY0h0a1N3c2NtTTZvMjQz?=
 =?utf-8?B?VC8xMzJHUDFha2Z4Z0crNk1vVzFXU0M2MmVGR1VKanNXMW1PN2UxOFppaW12?=
 =?utf-8?B?aVAxTkVCQnpRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnR2MFdSck1WclVybUhKd1lWd3hTek8yVG05MzkwOVVhc01zV2RmQzZUZ3Vy?=
 =?utf-8?B?Zk8vaVNrd1ZOK2FBNEhUTkkvTHFKVEtTcHlseXVqRmNCeFJUd21aUTRQeU45?=
 =?utf-8?B?a1FQSDV3SGhKUTZyTVlpcHZYdGNjUkJ4SzdwaitPVmVlM243SG5FSVlndlZp?=
 =?utf-8?B?ZUhUbnBKTmg4LytzWkd3aDFuU0toNFdtamI5K2JoZkpCajJHTm5VM2kxYnJh?=
 =?utf-8?B?WlRpa3Y4dkYxRHdKTDh6M095aU4xcEtUakhucDFJdzZOeFcrZ2VxTHlWUEMx?=
 =?utf-8?B?VkkvYkRQSWdLUlpTMlJOcGM1djdKY0cxczl3L3I2R3dLczFkaDVDd2xwbVpV?=
 =?utf-8?B?RFI5QldNVU1HYU4yeUNVKzNVMkFjS0QxYVNab3ppb0czNzByNFB5RWl3cWJZ?=
 =?utf-8?B?QzdTRG1rcS9IT09ra1NUL0hFSllub3VJR0VRallTRDhUcWhNRG5TNEhVTnJy?=
 =?utf-8?B?SGEvRmcwNmpMNU9aSGQ4a0ZmTW1iUWlMalFjaXIzMnYrMDlqL3VhTHNNYTRR?=
 =?utf-8?B?NkhkVWhZM09waVJ3Qzc0NzAxc3BvQk1LcFZLVVJ6YWgwM1FVakkwaXR2VGlE?=
 =?utf-8?B?VjJQK3UxdE8vaERLTUZUYk44K3VyU21yVWNHQnZFT2ROdWVnS1BmYkFUVXpP?=
 =?utf-8?B?YVdzUmJURC9haitIUUV5NHRtNWpYcE5OU1ZKejZqMzBhOGFSNlErbWI4RHBl?=
 =?utf-8?B?VGxnMXdYaFFDSk1wU0JoTURnUGVNSU1jMjFNWDFkVUF0YmsrNVhaUmJiTDZo?=
 =?utf-8?B?K3FnR1RXeXZUYmsxUFBVeFJNb2ExZm1BVGJHTjliQmo2Y0J0SlczNE1DbGZU?=
 =?utf-8?B?dm83LzhZaDkzdzZaZWRYdlBqdXROSzQxNEc2bm04M3VVR1VQSFA3Mks2UHE0?=
 =?utf-8?B?a0UvRkVBbFMyNUVocXdENVhQaFVSSmQ5Rk9NVTcxcFAyTGt4UEgyZmVWUUxp?=
 =?utf-8?B?SDhtb0I5MHNJUUpSc29Gc0dqOXVHb2VXM0cwUU5UMEpxSXU2V3F1aGRkUWR3?=
 =?utf-8?B?ZXE1UzVSS0JPL0cwaFBmWEkvU09QSE5yc1p3WnZMeGVSbVpuUlp1SDFRT2po?=
 =?utf-8?B?cmwwMENCVVhyVE1heGYzMDUyOERFd0tPaTJlTHhNcTNia2k2RHg1NkZURDg5?=
 =?utf-8?B?MnJOa2h0ZU5NSTlMd01aV2FRVFRmWm5uUlpjdGdPWE4zZStncDdGV3RZbUkx?=
 =?utf-8?B?TFRjaHdqMUdFRWM5WUIxRkZ4ZjNoWWloYnBPQUIxbWQ5dXNNSkJDUlpqdCt6?=
 =?utf-8?B?cGQweHdpdjloV2pCaUhNRDlTdGpVTmJ1Q1JWVGxLWTJlUHlJNEV3SXY4TDZj?=
 =?utf-8?B?T1krK0Mwc1A2SVc1TWljSTVURVhwdDJ4azhrN0tNM0xWamdMKzU1Y0h1NjZv?=
 =?utf-8?B?YUovRWxWSmhrVitFZG5vbEgvMmU5N1NpN0dWQjZBa2ZTRnZWNk9hVHV0OHVT?=
 =?utf-8?B?c0s4Y3kyVkFWbFNKUVJvcW1YNmY3bFpzZXNOZXBBdHJBTWZXL3ZrbHQ2a1Ro?=
 =?utf-8?B?WjdoSXFzOXVHNVdBdVJLeVJmcHVUdW9QOU1yM1k5Wk5kT0hyYTZvamNBK3pR?=
 =?utf-8?B?Rzh0ZlY4QkdDcHhXRjIwZ0lpSFpYM1dBMy8yLzBwamNQSUhuMVBaRkd0OC8v?=
 =?utf-8?B?cmQ5ZjNLVTRUSjNNZU9EdEFaTEd6K3hCRC9DZmxYSWFzd3VsNmpOZDhpMnU0?=
 =?utf-8?B?NmhkTjc3S21rV2x3OGdVWGdyaVUwZ0F3dmFhcExnTDNzNTk5ZnNIZWx6WEph?=
 =?utf-8?B?YWUxaXpFSWtkTnJ5OUxGemwxSG9IcVJXZEdFdktvTEJ6d1lrOXd3QmRpNkxy?=
 =?utf-8?B?eDY1Q05zeUFPZU05STBvc1N3dkFhaThzRmRxOVgzL0tBN3NCRlp4cWM1d3pm?=
 =?utf-8?B?bHVFbVBKbHprVVczT05wdVkxaXh3ZWVQdkhCeWtvaFhsUkZHN0dRUlFxTkxJ?=
 =?utf-8?B?TkJVZjRtWjVTazFDU3Exd3o4am5POC9PaXNwd0pGVEpHNCtRK2dKUmtTaXQ3?=
 =?utf-8?B?dFpyUGNjWWhDamJ1ZUpzRDJ6V20rUVIxMUVGT29pQXdlVnFpY01yTVBhSFIz?=
 =?utf-8?B?czJMMXhMQVJCazQ3R2FmVHF3ZFBGMGg1UUFDQ08wUW8wby8yM1Q4UDdmVFFW?=
 =?utf-8?B?T0lIV2lob2luVkNGNFRONEVBYWYxcEhuSXZjU1ZmcmxRMDNlTldqV01PcUw3?=
 =?utf-8?B?c2FSbFVTRUNLY3hITk9pcERRNGtTWmV5TmVTZGtQMHBvQ01NbXdrMWVlSGEx?=
 =?utf-8?B?RFVSOUozRDlrSFlLUUNHeldkVXhnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF3ABFACE4BBDB4E96F32155E14D462B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e292727-0dff-4d39-fb5c-08ddc5c1166b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2025 06:05:25.1729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c7SdNmL3bih6KPQ+b7RdTGoCRp/YHm3vjw9wpHzVU0Z1SmcEfmwjoqjV2eovSj1RBAi4tMPicYZUTH+K6+kt6bnO5AqJejbWhd+gnC7LHAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7797
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

T24gVGh1LCAyMDI1LTA3LTE3IGF0IDEwOjMxIC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOgo+
IFF1b3RpbmcgSm91bmkgSMO2Z2FuZGVyICgyMDI1LTA3LTE3IDAzOjMyOjU4LTAzOjAwKQo+ID4g
V2UgYXJlIHNlZWluZyAiZG1lc2ctd2Fybi9hYm9ydCAtICpFUlJPUiogUEhZICogZmFpbGVkIGFm
dGVyIDMKPiA+IHJldHJpZXMiCj4gPiBzaW5jZSB3ZSBzdGFydGVkIGNvbmZpZ3VyaW5nIExGUFMg
c2VuZGluZy4gQWNjb3JkaW5nIHRvIEJzcGVjCj4gPiBDb25maWd1cmluZwo+ID4gTEZQUyBzZW5k
aW5nIGlzIG5lZWRlZCBvbmx5IHdoZW4gdXNpbmcgQVVYTGVzcyBBTFBNLiBUaGlzIHBhdGNoCj4g
PiBhdm9pZHMKPiA+IHRoZXNlIGZhaWx1cmVzIGJ5IGNvbmZpZ3VyaW5nIExGUFMgc2VuZGluZyBv
bmx5IHdoZW4gdXNpbmcgQVVYTGVzcwo+ID4gQUxQTS4KPiAKPiBIbS4uLiBCdXQgdGhlbiB3aXRo
IHRoaXMgcGF0Y2ggd2UgYXJlIG1pc3Npbmcgd3JpdGluZyB6ZXJvIHRvIHRoYXQKPiBiaXQKPiB3
aGVuIG5lY2Vzc2FyeSwgbm8/CgpUaGF0IHNob3VsZG4ndCBiZSBuZWNlc3NhcnkgYXMgMCBpcyB0
aGUgcmVzZXQgdmFsdWUuCgo+IAo+IENvdWxkIHRoZSB0aW1lb3V0cyBiZSBoYXBwZW5pbmcgYmVj
YXVzZSBpbnRlbF9jeDBfcm13KCkgaXMgZ2V0dGluZwo+IGNhbGxlZCB3aXRob3V0IGNhbGxpbmcK
PiBpbnRlbF9jeDBfcGh5X3RyYW5zYWN0aW9uX2JlZ2luKCkvaW50ZWxfY3gwX3BoeV90cmFuc2Fj
dGlvbl9lbmQoKT8KCkkgd2Fzbid0IGF3YXJlIGFib3V0IHRoZXNlLiBJIHdpbGwgdHJ5IHRoZW0u
CgpCUiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAKPiA+IAo+ID4gRml4ZXM6IDlkYzYxOTY4MGRlNCAo
ImRybS9pOTE1L2Rpc3BsYXk6IEFkZCBmdW5jdGlvbiB0byBjb25maWd1cmUKPiA+IExGUFMgc2Vu
ZGluZyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4KPiA+IC0tLQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jeDBfcGh5LmMgfCAxMSArKysrKy0tLS0tLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jCj4gPiBpbmRleCBlZDhlNjQwYjk2YjAuLjljZmMz
MTg3YWVhYiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3gwX3BoeS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYwo+ID4gQEAgLTMyMzksMTQgKzMyMzksMTQgQEAgdm9pZCBpbnRlbF9sbmxfbWFj
X3RyYW5zbWl0X2xmcHMoc3RydWN0Cj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4gKmNydGNfc3RhdGUpCj4gPiB7
Cj4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoZW5jb2Rlcik7Cj4gPiAtwqDCoMKgwqDCoMKgwqAgdTggb3duZWRfbGFuZV9t
YXNrID0KPiA+IGludGVsX2N4MF9nZXRfb3duZWRfbGFuZV9tYXNrKGVuY29kZXIpOwo+ID4gLcKg
wqDCoMKgwqDCoMKgIGJvb2wgZW5hYmxlID0KPiA+IGludGVsX2FscG1faXNfYWxwbV9hdXhfbGVz
cyhlbmNfdG9faW50ZWxfZHAoZW5jb2RlciksCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZSk7Cj4gPiArwqDCoMKgwqDCoMKgwqAgdTggb3du
ZWRfbGFuZV9tYXNrOwo+ID4gwqDCoMKgwqDCoMKgwqAgaW50IGk7Cj4gPiAKPiA+IC3CoMKgwqDC
oMKgwqDCoCBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkKPiA+ICvCoMKgwqDCoMKgwqDC
oCBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCB8fAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgIWludGVsX2FscG1faXNfYWxwbV9hdXhfbGVzcyhlbmNfdG9faW50ZWxfZHAoZW5jb2Rl
ciksCj4gPiBjcnRjX3N0YXRlKSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm47Cj4gPiAKPiA+ICvCoMKgwqDCoMKgwqDCoCBvd25lZF9sYW5lX21hc2sgPSBpbnRlbF9j
eDBfZ2V0X293bmVkX2xhbmVfbWFzayhlbmNvZGVyKTsKPiAKPiBUaGlzIG9wdGltaXphdGlvbiBj
b3VsZCBiZSBvbiBpdCdzIG93biBwYXRjaC4KPiAKPiAtLQo+IEd1c3Rhdm8gU291c2EKPiAKPiA+
IMKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgdHggPSBpICUgMiArIDE7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdTggbGFuZV9tYXNrID0gaSA8IDIgPyBJTlRFTF9DWDBfTEFORTAg
Ogo+ID4gSU5URUxfQ1gwX0xBTkUxOwo+ID4gQEAgLTMyNTYsOCArMzI1Niw3IEBAIHZvaWQgaW50
ZWxfbG5sX21hY190cmFuc21pdF9sZnBzKHN0cnVjdAo+ID4gaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKPiA+IAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2N4MF9ybXco
ZW5jb2RlciwgbGFuZV9tYXNrLAo+ID4gUEhZX0NNTjFfQ09OVFJPTCh0eCwgMCksCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENP
TlRST0wwX01BQ19UUkFOU01JVF9MRlBTLAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5hYmxlID8gQ09OVFJPTDBfTUFDX1RS
QU5TTUlUX0xGUFMKPiA+IDogMCwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1CX1dSSVRFX0NPTU1JVFRFRCk7Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBD
T05UUk9MMF9NQUNfVFJBTlNNSVRfTEZQUywKPiA+IE1CX1dSSVRFX0NPTU1JVFRFRCk7Cj4gPiDC
oMKgwqDCoMKgwqDCoCB9Cj4gPiB9Cj4gPiAKPiA+IC0tIAo+ID4gMi40My4wCj4gPiAKCg==
