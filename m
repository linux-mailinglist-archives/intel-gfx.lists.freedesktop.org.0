Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E18A9F8645
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 21:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F2B10E2A1;
	Thu, 19 Dec 2024 20:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TGD/m3K9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFBA210E2A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 20:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734641391; x=1766177391;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2HpluPE8lyn4nUJ7qAdQgD5+cePAjAbud++LHhx77CA=;
 b=TGD/m3K9fjct+jI0VfZ+xrjDXQjSz7pzCtsv/S3of7jYW+rDLtTUbWR0
 /z2lMMTubEZMKMhAbPyrMJbgbFvWOGidvZfEvwggO70zDKi6zJJuVgmNJ
 /53JU6F+W77zIYeLYBmC2MkEkLM3Yyyi0jA643Aazl3dBZOt+L+dNTsYA
 XBjeBhm+gDJHew68cYhu5kl+Iu9Nwkh7SNHZTaM/bVH57WwUFFKoNNYvg
 Mj8dMEJPQKm7JsmfNRIx++Wrdf75551zOvzY3PYAoEDUQeOl4XexlhCBe
 9qs3KmAa8sQUf424gC1TjxpxklxZab2HhGKK6Xy0pHUPkDAstinZLufFl A==;
X-CSE-ConnectionGUID: MAES7k6zQWuAV1Wgv50mAw==
X-CSE-MsgGUID: L+hjH7oiTrWsGk+lPNM1yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35067271"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35067271"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 12:49:50 -0800
X-CSE-ConnectionGUID: UgyNClnVRMaJ+CJNcpTGzA==
X-CSE-MsgGUID: lYWWfBiSRTyhfyk8WsL6JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="99127995"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 12:49:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 12:49:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 12:49:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 12:49:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bzObOp7XXyBmmRVzhcGRbxCZmwlzQXBBU6eRHAIsHaZR3NUIMzBTF3qxTdcVRNimWX4Ef0wsQI+AoXENLUADvxWArB7U+lPxoqCRC65fEH54KH+p4PGJnxnZ5WZdA+BeCorhOj7MbnkTgxpiMMtFM/iogMDZabr3FT3T3ZpzifgKw46u8zYVYBMFS1CQJE/GIKJ67FZxUOL6EAim5iM3ns0RtAw/ci1lTyGGqtJ/O3N+cNCNFV1MDAr54jotr/YPZiIaYu53bQWc/3lILXdCxzghOMApN5inxQShCl9MWCkCLcgJFkvmAkHlCkaS1M2xSYS6tUGParYKHUpVL8+Npw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ETCX6kYnXas5oTmr8FDOCCftG/2Nv9YhgobfB5g7Hdw=;
 b=tHJXUQnObUkFDOPDwRBe2sAEBkmf8PI1gL3Dco5TWTsoOVYzLfERC1JO02zvYtvZIaeTAY1K5KjVRp6WVsJ5xNk+kDbI9WKA8AyIvU5CkvGBAeuzsPYxoctExGLXRAWtiGFBUuJgaGTywPdSqD3GTPaW+Ie/a2fCDWQf5bany3dFdfiYRYnMvEbvU95wYsznFNFbo/xSCR2GUbPLyYeNN7iNR2GYAe1ldaIsYzrMJI5j4FC3lJOGgcyoQX9Z5CAg/p6xvqZ4GWW580Zwq3E21hhj61KsQFCFo/DUoaANvPvuH9gK7ELi9XHdkSXxgvdwZA4lX/cm60wrH/IyxFeyyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB7473.namprd11.prod.outlook.com (2603:10b6:a03:4d2::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 20:49:47 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Thu, 19 Dec 2024
 20:49:47 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
 <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
Subject: RE: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Taylor, Clinton A" <clinton.a.taylor@intel.com>, 
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, 
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Dec 2024 17:49:40 -0300
Message-ID: <173464138096.12700.16415077210395523496@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0296.namprd03.prod.outlook.com
 (2603:10b6:303:b5::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: 61c7fb10-e80f-4f3f-2968-08dd206eac6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S21EMlpQSGFNenI0ODRjOHorVGxReHhhb1hZY1BQT0Rxa0o2cnM5M01yU1Jh?=
 =?utf-8?B?T1kxSTBUVWtMNTIwamp6WWY3Rm9kMHlYZEp5a2tWUTF1djExWFI1aVVHc1VH?=
 =?utf-8?B?cTR4TStIK01xd1JkdE9VSDIwamN0QloyVG5PUGZOZHkxZ05Vc2FVcDJWRmVH?=
 =?utf-8?B?NEY2OXY2VmxwaHgxU21zZU1KckVJeWpKdko2MTF3K0RaZCtQV1lES29ZNGtm?=
 =?utf-8?B?ZHpWd3pYZU0rQlVlWWM2aU5VWVlzOHVYUGpHOVJzSE83MHVRREJmZmJkSW43?=
 =?utf-8?B?NnRFUCt0MmJOU1hBb2d0Ti9oOEc5anV2azIzQ3UrMEwwTjZGdnR1TCtQZ3Jq?=
 =?utf-8?B?UXpRWGt0bDNNcEE2UUlidE8wRkk0N2lZRS8vbCt0MHBJQk5EZHVPVjRiZDll?=
 =?utf-8?B?bFRTTjdEb2cwdkpxbXQzU1crVGFSY2F5QVM4aUNPZEFBaGVDeE9xVFR2UE94?=
 =?utf-8?B?RGw4S2NSaWgyeUxNeXFhUVAwR29pQyt6QmlaVHVrK0hTbGFKR1VJQS9MNXJ2?=
 =?utf-8?B?WWxRMWFkbWtGWU10enhIS1hmdnhWQWJMd0tqQkM0WUo4WHlnSmdMeTBISEtn?=
 =?utf-8?B?aEl6MmplV1dGV0FtdTMvUjdldmtNSUZjRlA1RDl2MzBUR2kzVXJ3T3BzS2ZE?=
 =?utf-8?B?bFZsU2J6MEsxVExUem1yM3lGMGRYNkgzRVdjOEFMTVdMWnltbjVwZlN0YzlB?=
 =?utf-8?B?Q2I5Zkg2UXlOLzd4TnJEQ2VXRDFHRnBhdmtGS3BqYWI0VU9BOU9Sb2FNMHFD?=
 =?utf-8?B?ZmJSK2NnajFzdzV3WHlUS0FmanNob3JKbHJNeDBBNG1PMlhKRTF6U2V4L2Er?=
 =?utf-8?B?S2ZvTWw3Qk5vYnpMb29zVDJ6U3Nwc05rbklSbkVsbTJJUFpsaTY3bldNV0ww?=
 =?utf-8?B?K1Y0ZkcreUUzL1d5dEh2YzB6MWNUWWRzMG5TMHFTTWppMm9hdHBTMWwwckFQ?=
 =?utf-8?B?SlZHZUUzank3aThxSm1lUS9jOWMwempVRXl6MDRiVGFsS1pEOTRubmJiQ1Bu?=
 =?utf-8?B?SC9FQ09hZkZKUVQzT1cyVGYvK2tWWFZESmFWdEFBb2FnRmlSeDZVNVlpaEJk?=
 =?utf-8?B?R2hVTG15NjRGOGRvdG1rSzJwSTUrbUZhMlU5Q29ySE0vWmdSdlpQNSt3WEdv?=
 =?utf-8?B?OU94WmJlWFhuelBUVzh3WXZQTDJqWEJoNnNadDkzVlVSa215enlmUDJVZjJX?=
 =?utf-8?B?TS9PNDRNOXdQYU53TWhVVVA3T3JzSnpMaUJWMEE1ZWc0STY5YjlzOWJVcU12?=
 =?utf-8?B?SkQvdHdCQnVoUllBTS9LYW5IZlU4b1B4eWthMFhRTURyQWlBSE5sVHdzRWpk?=
 =?utf-8?B?UXBzYjNqalUyWm1uWE5RZjRlcUNnRTh0eGxiOEczdkIrUVZERVl2K1pGUVZ6?=
 =?utf-8?B?NlowVWhpd2FOYm1XR2lGQ0ZTVVpMd0ZuemUwWFV3WFBvU212YWNoS0hmWmlG?=
 =?utf-8?B?ZFZiUVFscjJJRUJIZFVCYnJacUduM2lnSDFMNGhiMVM1cDU4SFRLVE9kUFVu?=
 =?utf-8?B?MUc1Snh4bDQxSUdPdGh3aHJ4OWVmWmk1SHAwSHNRWitwMUJIdFBkWUdITjRV?=
 =?utf-8?B?eGhNTWhjOFpCVWs3M0p0a0g3aXIzbXc5OTVnS1h4MUJmL3pUbkNhaWlGb2lk?=
 =?utf-8?B?S1prdEMvNXJmUlNOYnNtM3VGSzdPRThFNTZpdHpGZWYzaVVjelNtMzF5UkU3?=
 =?utf-8?B?UE5NaFYxN3RtdnYzZ2VRL2JtVkpHT1B1WndEMi9PR3NLMnlPRUgzeDN1S1pX?=
 =?utf-8?B?TEZEODI0QnNpZGcyUG5RTHN5ZmdIVFlTVnZZK2phSU51d2hqWEJkR1ZVYjRl?=
 =?utf-8?B?cGE0dmE0YTdrSkRKZXRTblRDQXpQU2ZNYjQvM3Nzc2NlOUJQdnVGYktKV2lR?=
 =?utf-8?Q?7rrSa1gVYwwqW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1RUSWFMTTh6R2hla0grc2ljZjhTdWxldGZncTlocUVQQWNkWkU1eDN2SjRH?=
 =?utf-8?B?SlNKZDQ2YW1WSFE5RDZITzRKeEp1ejBxcG9meXNyTUJuTzNMdk5oVHNCWVVa?=
 =?utf-8?B?OWxGREFEQWsvYkxXK2I1VUZoVHhyVjB4cjdNZU4wcjlMMDdwMmdQUGRGZW5R?=
 =?utf-8?B?dVFKSzR2MDdmQk9mNlJ6Tjh6ZG9YSkIwd3VJdlYrS3I2aTRZN2lQYm5NSXJk?=
 =?utf-8?B?eHRyV1RobUNtdHBPbkdwMW1FVG91cXdkRjIxK1dMN2JXQk5kZHBseDdjbXpt?=
 =?utf-8?B?ZXhrZnFXWWV2WG94YnZSQkZoZ040UEdsdml4SXdPNlR1YnRpNllqdGE4Znd3?=
 =?utf-8?B?aEZnMFhrRnJ1NEYzMC9lb09pZFU3T0ZFRXJnb2Zxa0lNdEw0NlVHSlRuKys4?=
 =?utf-8?B?MEFieGNWRVlQc1Rvd1hWb2tYOTUyMWFqL29xTndGTUZicDlsWDBVdnZrYyt1?=
 =?utf-8?B?TUhXTEtwbFQySWs2RGtNbDE5QWh4RElSb2xpdUovMVpvUmpJdWoxWlExYVBI?=
 =?utf-8?B?MWtaSzVwTE1SbzZWc01pQXRneDlIbVh5SXdrc3BtQ0JwdCtsQUNpSHMrbWhr?=
 =?utf-8?B?YS9peDdhSUN6MHU0TGZnUWM2aTltc05WaGh2T0dsR1hGZ2JFQzJlc0h4eGNp?=
 =?utf-8?B?L3pXRWFmQ2dFS0hwSHVZUy9yemQrYWNPYk5NNnFNQ3NwaWJVWmhuMXZXMldu?=
 =?utf-8?B?OVdlRUdGQTF2RnQ4NkJidERUWnNSRyt0OWRhMUxMamx6WmNVTUNWbjJLRTFR?=
 =?utf-8?B?NmtmdEFpOVBzSVJGb3lTOWQweE90eXQ2MXkwTDJnRzdidjRPRVhvYjkvaVZ0?=
 =?utf-8?B?MU1yV2Eza2JnL2hoWG95Yi91WDRIQjdXc0RnakRrb0lEemZ4N3kyZmFiaUFv?=
 =?utf-8?B?WDJqN05aM3kyMlluMFluU3FEMG5yS1g2TExzYXZrWVI0Y2tLNDNsMTZVbHNj?=
 =?utf-8?B?YzB5Tmd2ZDJIdEpLTVpFcTc2V0ZyamVnZ09IbTVMUEQwdHJ5QlIrRnhybEUv?=
 =?utf-8?B?U2xPS2hXT3BKWmNYWkt5THhPWFEySm9hMDh4UGRoWHhudUtRdm1mUFJGRHdZ?=
 =?utf-8?B?b0tlMlVvd0ZPakczK0pFbDN5SDBjaDNJOFJtWkxzYitPczZEbWRQME84N1cz?=
 =?utf-8?B?aXAwLytWbDJ1a2NQRGFkNW03Uld0T2MvNElZUnloNk1yaGVhR1JVVUZwSmhl?=
 =?utf-8?B?VzhseTNGQ1BwQ3lFN0JTRnd0MTB4Z0dpQi9FczlUMFlCYVg4T0JJM0ZTUWdD?=
 =?utf-8?B?eTBPZFdRTzlvNUFrbE5PWnZyL0VTUnZUVWZVNSt3WGhheUZrd0hIUlZESGZH?=
 =?utf-8?B?TzJ6YTRCTWp4ZGhoMGRHaUxkS3VpbVdwRDhDckpVOVRmVkVJKzhhL3RMYzBr?=
 =?utf-8?B?L2I0MTkxV0R1OFpOS0RJQW4rM0Y2WW9nVGtsQ09DUFBCSW0xZm80ei9rRXFn?=
 =?utf-8?B?VklBc2h3NmgvZEx6MnBYWTFCN3k5ZmhDR21HWExQYStFV250NGI4V045dG9s?=
 =?utf-8?B?YXNDanYzb0Y2Zk9NMVAzekl6Z3ZmditsU1poQ09peHVSZU5ybkZ5N2R1N1BW?=
 =?utf-8?B?SUlTQVZBOEhtSW8wT21MRWhBUzlaYU9Pb2lVZ3hrVjhMMTdLNitIQ0JqVTRH?=
 =?utf-8?B?YTdUSHAvblM2aUNZQ3daZTc2QUZQemhnYmNqYmxOMGFmKytiZWJmN0VFenhH?=
 =?utf-8?B?RFN0ckhFc3hmQXRWTXNzYm5pNTEwbk5GbDNhdTFsaEpkbjhkdW1Ua3ZheWxt?=
 =?utf-8?B?ODNrNzIyNk5kbkNKekRlaDZnREl1dXRSYlNqWmJkamVjeHNLb283d2NOU25B?=
 =?utf-8?B?djBWS3dHMVpmeXZZZ1ZqeGNsL3ZhNFFPdFZrUnNNaDcrL3FXMWlFeEd0eGt1?=
 =?utf-8?B?eWRIMk5TNVZOOHRBeHhRa2N2K1hkSnpJZkdzTXRwSTRDaWtEeUUrclpzS3dQ?=
 =?utf-8?B?V09wUEJJWHdLVk5JWE9BR2ZES3ZsSzZvY2s5UkhMaWgzR3V5dlJmTTlDNHBh?=
 =?utf-8?B?alpZZndaQkZCNkJHcmlCOFN2dXZyUVdPR3NhSzNDdGFxSGVZdVdtOFFmbE1B?=
 =?utf-8?B?VlhjU2hxdkZydENzU0JZczc3Uys2MndOOHp2RHM2NHN2N0d6NFphNmlWS2Zu?=
 =?utf-8?B?K2pSWE9HUTlNVTBlWXk2MFA3Tk1WOWM0b0JtYmZVNUU5RFhwNnVQblNiTUxG?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c7fb10-e80f-4f3f-2968-08dd206eac6d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 20:49:47.1200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XhkgXDjxCheV3PZIxBCIuT3ETS+pLqjHbb7Kyu3AD/IsM1LS649pTkLBzJylaAd1vpBV5cx5vqZ/pWEVtxAFLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7473
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

Quoting Cavitt, Jonathan (2024-12-19 16:39:07-03:00)
>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rav=
i Kumar Vodapalli
>Sent: Thursday, December 19, 2024 9:37 AM
>To: intel-gfx@lists.freedesktop.org
>Cc: Vivekanandan, Balasubramani <balasubramani.vivekanandan@intel.com>; Ro=
per, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas <lucas.demarch=
i@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; Taylor, Clinton A <=
clinton.a.taylor@intel.com>; Atwood, Matthew S <matthew.s.atwood@intel.com>=
; Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar <=
haridhar.kalvala@intel.com>; Chauhan, Shekhar <shekhar.chauhan@intel.com>
>Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state se=
rvice

Ravi, it would be better if new revisions of the patch have version
specifiers in the subject (you can use git format-patch -v for that) and
the commit message had the change log of what changed across versions of
the patch.

>>=20
>> While display initialization along with MBUS credits programming
>> DBUF_CTL register is also programmed, as a part of it the tracker
>> state service field is also set to 0x8 value when default value is
>> other than 0x8 which are for platforms past display version 13.
>> For remaining platforms the default value is already 0x8 so don't
>> program them.
>
>This could use some rewording.  Perhaps:
>"""
>For platforms past display version 13, during display initialization along
>with MBUS credits and DBUF_CTL register programming, the tracker state
>service field is set to a value of 0x8, which is not the default value for
>these platforms.  All other platforms use 0x8 as the default value and thu=
s
>do not need to be overwritten.
>"""

Note that DBUF_TRACKER_STATE_SERVICE is set only during initialization.
Looking at the git history, we see that it was done for TGL because the
field didn't actually have 0x8 as default value, so the driver had to
take care of it. In that regard, a reference to 359d0eff8409
("drm/i915/display: Program DBUF_CTL tracker state service") could be
made in the commit message to provide this historical context.

According to the BSpec, programming that field is only applicable to
display version 12. The most compeling reason why we should not program
that field for other display versions that is not part of the official
programming sequence in BSpec, and doing so could affect future
platforms if the default is changed for some reason.

The changes look good to me. With the commit message updated to reflect
the two paragraphs above,

    Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>Or maybe:
>"""
>During display initialization and MBUS credits programming, the
>DBUF_CTL register is also programmed.  Specifically, when
>programming DBUF_CTL, the tracker state service field is set to the
>value 0x8.  However, this is already the default value for platforms
>using display versions 13 and prior, so we do not need to program
>the DBUF_CTL register on those platforms.
>"""
>
>>=20
>> Bspec: 49213
>> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index 34465d56def0..98db721cba33 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_=
display *display)
>>  {
>>          enum dbuf_slice slice;
>> =20
>> -        if (display->platform.alderlake_p)
>> -                return;
>> -
>
>I take it we're removing this condition because we no longer expect this c=
ode to run
>on alderlake_p anyways?
>
>>          for_each_dbuf_slice(display, slice)
>>                  intel_de_rmw(display, DBUF_CTL_S(slice),
>>                               DBUF_TRACKER_STATE_SERVICE_MASK,
>> @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_dis=
play *display,
>>          /* 4. Enable CDCLK. */
>>          intel_cdclk_init_hw(display);
>> =20
>> -        if (DISPLAY_VER(display) >=3D 12)
>> +        if (DISPLAY_VER(display) =3D=3D 12)
>
>If I'm understanding the purpose of this patch correctly (which I'm probab=
ly not),
>shouldn't this be "if (DISPLAY_VER(display) > 13)"?
>We only want to overwrite the tracker state service field on platforms aft=
er display version 13,
>and it seems like gen12_dbuf_slices_config overwrites the tracker state se=
rvice field.

It is the opposite: we only want to program DBUF_TRACKER_STATE_SERVICE
for display version 12.

--
Gustavo Sousa
