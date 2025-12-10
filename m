Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E96DACB30D2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 14:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C4810E6C6;
	Wed, 10 Dec 2025 13:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUpSgkwX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1181A10E099;
 Wed, 10 Dec 2025 13:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765374090; x=1796910090;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CIhR8NuTEKFpamHgpH1DijjEDbp020FKbxKqmq00flc=;
 b=DUpSgkwX+X8JUuQBBJwlUuRnHhbx8ZQtPbqXaXDZwahYZywzjHglVG2K
 5gEKLLiIM4ORKBuS9L0v8kBUJj/cC1Jt1Kyb9okJoD4kDviqnSG8nuOcv
 V8tA19FsEz3+7WmduVIrCPI9ZAKIt9m/ifQ8ihG0sAxWpBwtckezt29gJ
 FQ2q5uSkiF2CkxDhEdykTxzJyFK76Gb5Rp5Pt6M0NeN+v4A93ky2lJzS6
 LRgOpIGqAyboCKrMtNE9iZUUyGIlWOlsZoe81f9YUqBWskPIeetmJbNHc
 i5zmDJ2RmiSx22v6K+t1J1caKGi4uiZp5eFvE15P9lZqhLGDyvUZjRFUM g==;
X-CSE-ConnectionGUID: EZ9Y6rxvTzaWytS6hfeHsQ==
X-CSE-MsgGUID: 4zkpkXMERSOYSW7k90XCSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="78706169"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="78706169"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 05:41:30 -0800
X-CSE-ConnectionGUID: sFhdpgd5TR+UjpOeHZT+JA==
X-CSE-MsgGUID: VjGh9fy9TDe1SNwRyw/lHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="201437075"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 05:41:30 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 05:41:29 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 05:41:29 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.49)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 05:41:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N5Rufbx/XGDemKnATk8/uyu3v3y8bf2tffSq2tffGtQCMVXxWYlD+ou7P6iOhCGbkS+/GVzgLw8mMtun6nZ3eyXIz/fJECtzeqos8lw+ntABIcxpW0NN5TdmDHAT9gcQymFpqpWRZ7sVc9wsM7sUWUf5DhmwEwcaM2IVD2AbxW2NjlU4trMt1MfgeUZswAYnuxdaotqURF9I6OrTLa4wLwztn9IMYzpxG/InTDjcPGHckzcf0fwJg2zNiBnaCPNY+YuhxpBakb16j5m8tHsqRE6JKPopcVjuMan4VYQYK270HAWSmdYGJmsBUlmxYLYv4vBe6cOx7dWXkup+bl4Bow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CIhR8NuTEKFpamHgpH1DijjEDbp020FKbxKqmq00flc=;
 b=c7FiUbQPHwWRGeeSEKZLQPTGTOSZivL1HJqEIolf/fyg8+tuv/Ca3jigG+11wijsfb8+5cfkHv+viZUW1cGY2H13UbrrqpT6yPLxhMcxEkkotyEJ0p2u8J50V3dNAR7B+r12OeaEq6ta6GHzxxqsUUv7xVGd/x07sPYRbH+9IMWcUhoWjU4/qA/I5E/LOpNcn9DPpp3QQDOfDEKYCip/sDiwLkaLbGtMFE2wPUxa9vDWd3KjyXfD+r+Y4uxiNxAZuK2d2CnSx9eLrRmM9ojolSSGUnEOo1x7ilNu9wrPdZdMjZFqPSU0gWinYn4uDtMlwlEEHwbAyGy61Ys4lNJvkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8504.namprd11.prod.outlook.com (2603:10b6:510:2fe::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 13:41:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 13:41:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Topic: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Index: AQHcZOyz59K73UXkKEW1bp/w1WYWh7UZqM2AgAFCr4A=
Date: Wed, 10 Dec 2025 13:41:22 +0000
Message-ID: <a0ce98bb3588bf3df6f357afe87f09e63b514b8e.camel@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
In-Reply-To: <aThp0YZOjgWyA9DW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8504:EE_
x-ms-office365-filtering-correlation-id: e3260cbd-1437-4e87-41d7-08de37f1ceb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UXFaODg3QXZUWEx2cllaSTFoMGl2bGZHUis5cmdJOUxtUllLdzUrbkZKTDZX?=
 =?utf-8?B?bGdrY0ExblN4b0wxeUVDRWlaV0xxM2hPWFNud3V3VzZxVDZEZ2pTTzJYYUFF?=
 =?utf-8?B?anBNVTNQemM0Rk14Qi9IMVgxQWp2cVdnZUphOVhaMmVtV1VPMytIWEpabGlZ?=
 =?utf-8?B?ektFVG02WjNmd3dYTTJGQWVVSFI3QXdlUTRnaEZZdmV3TmwwVEdQTHRXTkpC?=
 =?utf-8?B?amluVWhURFFhck9LZGZsQXFmMjlOYU1SUnZMQkpUS1B2NWZ1VjNUaUgxNUJl?=
 =?utf-8?B?dGtjN0JLMjhRMytBRElPb3R6V20zL3dWSjlOVTFpZjBqWHRLL2hQNGlseERr?=
 =?utf-8?B?R0dTK09oWjR4Y1VYTXJicGkwd0JjVWdrbE9qbXZuT2ZDYi9sVkpwY0dHWEUy?=
 =?utf-8?B?SFJEUzNSSHJVM3VBM28zSDVhVTFITW1TbjVhdjBLVnlBR2g4bVBZOUpTclMz?=
 =?utf-8?B?NnVyMFZ2OGUwQlB6QUhIWFhYdnJuUFFGb21kNUVBTjgyRmhiMEZvLzVBeUZt?=
 =?utf-8?B?dXpsRjZZZW5iTWEzblN0Q0lHamp3ZmdBTW85UlVTWFhJZWxUaUMwUFA0K3lj?=
 =?utf-8?B?akFiN2NXcnR2bGtzOFFRTDAxbDZHT05SZStaMWdEekJpR1ljS21wZzhTR3hZ?=
 =?utf-8?B?cHM1RWs1UWhNRngzNmlTWTdWNDUzUVhnaG9IVGtUTnVHZGV1RlZDaDFwMTZx?=
 =?utf-8?B?WFMweHFIVnhrN3dTOFNkYTBUSEtSSkpiTVpKeFllSG42UWowM1NSTEtaWDVa?=
 =?utf-8?B?cXlqZjF6VTZYdlBhOE5pUzJHMWdLN2JBYmJmbE0rZUxYK2NlQnJEbVJPajZh?=
 =?utf-8?B?QzRUc2lRKzVEZHNEczJCaHJvNUdpOWVQQ3ZHMnhGYjBJMlRpZ213SmdyR3M0?=
 =?utf-8?B?SXdyVXhPamk3L2ZGT21NckkyNjhWOXhGRzdTQllkUnNoakZsQmxGZnRCa2la?=
 =?utf-8?B?QXI0Qk1NcWtQZEtRSnlHZUlZSkQyWUlaSEkrazEreGYybTNWZnZCdXlaOXh3?=
 =?utf-8?B?emdaU3B4aUFUOXpCRS9BN3JYYmRYaGIzU2N4SEN3Um1Ra3U2T1RNSjY5aFVI?=
 =?utf-8?B?SlpYVXZxaTZPdGl3R2g0dXdBSjNJa1ovaHFaNzJvWG5DSkhzQlVEU0dPTnc0?=
 =?utf-8?B?NTgzdG5mcVBGN2Jwa01XcUZlMkNCQTJ6YkQ5N1pqOGZVU21tVkk4cEdBcXRr?=
 =?utf-8?B?OExZYXNtRTZwRzRLOUJVNk8ydG1wTDVUSm5PZTF5QTA4L3AvUVRjNTI5eE1U?=
 =?utf-8?B?Y0NOTWVOZlVaWG15YUpCM0FQWnJqckhLdzEyVmZpajRFV0V3K01mVHY2SWZs?=
 =?utf-8?B?cWhqM1VpdGRPMVJodk5yQ2haaHFNdG9IckVZL0RpUVo2TG9hUG1waFZlSmlx?=
 =?utf-8?B?R0VGN3c0TUo0a3lHTitwQ2hBMlNPQnc1UnkzMklZOGZaUG1WMGFXRUREeFVB?=
 =?utf-8?B?a1l3WDM5SG5VcVovVVdUKzV0M0Z5MFpzaXFyTlpxdlQyc0tkQUI0NmpzSFp1?=
 =?utf-8?B?dXY3cEQrckIrdnkwWXV4dk1pb1BXNGxRdjZMcnY2UVJuMUd2RExYNHplY2RM?=
 =?utf-8?B?Yi9CbWRvS1VRUHplTDh2OThpdTNQWjM0VFhvWDlxRXdwZlIxUjRHUWR2NGpX?=
 =?utf-8?B?V21hQXdsMVY3M0hyaEQ3TUVHTnEyUllWRlV0OW40QWZYb3NsMTVyN0hqSzNJ?=
 =?utf-8?B?Qzl6MlArSzZVK3RBTHB0cUtYZlphcmNLSnFiVWMxUXpYWHdDTGRrdTdjYWFK?=
 =?utf-8?B?SHdQdkFjUFVFM1hJenZqZWZGd1RWZWF6S1FaSWpuUlBCV1Q1S2JJRWFoOFVF?=
 =?utf-8?B?UnpkZDV5OTY2TFRmUVM3eXUvQ1UxMkdRaCs2bTRGVllrakJyR1VTSkhoMEY3?=
 =?utf-8?B?ei9pdVQ2bENoZmtZMXJZRVo2U1Z1Uk9pdWtHcG5TTFU0a2hRYXlnNVJVMGhp?=
 =?utf-8?B?S3E0L0pHTVI1MGQ2TEZrRTh1czJvTGorMFIyVXloM3FLRnd0TDlXN1NGcDln?=
 =?utf-8?B?bnRZM0RrOTdiM1lqRE1CUEpidEl5dGoxN0VzRWtwOGhKQ0Mxa2VxbzlTL25B?=
 =?utf-8?Q?JtrGAj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ejJjNVZEVXQzcFp5bCt4enJ5NStWRmNsckZiK2xWZzV1NzVQeVU2OG9yVFNR?=
 =?utf-8?B?Mys0dEVJTERleVlGQWF3RmN1QWdzMWxvNU5FRDlNTnlFS1pCMnFXb1lNQmZU?=
 =?utf-8?B?cnpvZTNRNkxJbDhhS1dXSTNxdFM5NFdCdTZYdEZHUjNOVVZvL3g2MXZLc1A5?=
 =?utf-8?B?YUhqUTVVQmRGY3A4cVcyTm9QdzlBcFZOZVIrdGEvUU9icHVySldtZUxkWkVw?=
 =?utf-8?B?c1VxUjdNL3dlbzFrcDBLQmpTOVppcVZmS0tQN0l5a1NDUk9jV0VVb2pUaWpx?=
 =?utf-8?B?WG1lM0orSmNUeHNSY0xCVHVIY3p0Z3ZHUWxvS3VsVjZMeE5GdWg5TjVuQi9D?=
 =?utf-8?B?N3d5NDFscDZzM0FueExkZDN1RU9wSkVUS3VVSmQ4WXRQbktJeTB2VlNKenk1?=
 =?utf-8?B?Qy9QMzlkanNxdTRYYXBJdk1XVU5nWDROUWd5OU5aMUpmelZuV1d2UXRvZG4x?=
 =?utf-8?B?eElSY1lMVWIyaFVNaXk4bHdENHpEZU1XQnJxcDVMbXp6WSs0MmExWVE2Mjgy?=
 =?utf-8?B?SnkwVDNIeFBTK0ZGVnBwaEJ2NzI3T3JYNmZFNUtrWXlNbGFkSHlpdzZJaDBP?=
 =?utf-8?B?QndkaXZkTk1yWDV2TEpTdS8wQUN5MlBaRWZYWlAyWlNJd1dQKzBrdDRVNHJO?=
 =?utf-8?B?SkVHSVJUWXlZNFBUb2VZQ3U2V0U2TTFXV1lvRW1pVWM1ZmhrenNldktnR0FM?=
 =?utf-8?B?NGxPT2ZBQVZWTmxMMzltN2RwdmFvelZ5QTUrWXQ1MEJSYmN4UnlEdDNRUHFB?=
 =?utf-8?B?RW5Gek9NWDZjRXFYUFo2VEV2ZmwzUG5KMlF2aFJMR0t2eWNlMC9nRFY2VHdM?=
 =?utf-8?B?NzZpTjcwaksyL2c5WUlpRjY4VVhlSEEvT2dSSHphVWpHbGs4R3NCQVhoblJ0?=
 =?utf-8?B?UmV5eXBKY0h3STJ0d2Zncy94elFNTVlQVmQ1eis2VkJnL2tIYy94Qm91V2Rz?=
 =?utf-8?B?WVp4Y242VzJJYlFoK3YyTm5aNHc5YmhFUUlqNS9yZVlJZmtnV0RoblA1TldF?=
 =?utf-8?B?Y1dFUS80K2pWaW5LWEhJSEttUVFJWEF5TUFmN081YUVadXVLb25BSUdiN0Ri?=
 =?utf-8?B?RE1lZGhOTWs2Z2hhUE1ZbDBOTXZLdVEvNmtnOWZITDk1a1gyUG9lWDdyVy9N?=
 =?utf-8?B?K1IzdGs3RGk2aHpPZVN5SHZXSVk5QkpIbFJVNGxGYzFPZ0dkZ3FIWlhoMUZD?=
 =?utf-8?B?UmlrNkRNa3Z5ZHVUdjZBSSs4NUJJTm5DajJOK3BWUVNFZVdtYUI2RU1CVDNp?=
 =?utf-8?B?RWdCMFdCb2RCakZLMmdJeHYrTHA2eXFBUDZXOG1DbXJIWlZEekVwMzNQQ1ZU?=
 =?utf-8?B?OW14UnJ4V3ZKdDdiWi9BMmhZcjJ2eDRNbEpNWHM5WmhnOThZRHhBM1FGajNn?=
 =?utf-8?B?UmV3V0I4ekQrMS95MWtaNjJwUEZVOTZZNE1RcEhCMkRTYnhOS3JxT09UT3oy?=
 =?utf-8?B?MFZpSmg4dFc5eDJkWERjZXM4YjZFU3JSUTdHcUhaMTRaRlJGdFVueVpVb25E?=
 =?utf-8?B?OThPSHhHc2FCNW1KWCtOYmpRQy9aVmN3Wk1KQTRFUXZOYXJPeEt1OURKMEEr?=
 =?utf-8?B?bnNKMGxDcURVOGgydTZFWCtoS2d6UHR3TFdYck1pQVR2V1pFQ1RMTDZsWjlP?=
 =?utf-8?B?YWFSU3FTVlY4dGtIOVpiYURrcWpSQ1hXVzIwam9FTStTSGRyQ3RRSk5xa2VV?=
 =?utf-8?B?WjQreEZIK09HYmZMNWxpSmFkbzlzU0RXWXMzUUZRb1E5Q295MXRpd2ZzZE92?=
 =?utf-8?B?UFJZWDhKTWE1cjRwY0lKZmZvRzhqYmhFSU9IMEdFTjZwWlFnWllVbjlVNms2?=
 =?utf-8?B?UVRHVGhzeHl1Q21DUHlPeTZaemdFQnI0ZWFJZzlHS0dpMitDMHFtRFhrTGd5?=
 =?utf-8?B?N1YrOWpPVGxER0x2ZHIwRDQ1MytSbXVaUVgrbUtlSzVXOG5SajA5eDZhdW1B?=
 =?utf-8?B?dXVKalhTeGk1dUhsRzJNS2lSZHlYbGdWRklCN2U5d21UYXVXWEhzNjhnQW9z?=
 =?utf-8?B?T3BZaUU4SDlLVFI4NFhxYnRXY2hJQ2xWdW9TM3JJeEh3Ry9BaHpkYWJsRG9j?=
 =?utf-8?B?RmZQclEzQkZ6bnRZSmZpTlp0VlpwamJmcWdsZEREY1pFUU9KL3hqS3d3Vi9s?=
 =?utf-8?B?MGJnYmhEYmJ4TGpOUXBXTHZwVWJMSEJ2a0VhWDJGQ1Q2NWs2dnNQOVFFT1R4?=
 =?utf-8?B?dkRDUDFodzFjWE1XaWNHZG5mQlRkQXVsWWFKWE9MS3Z2dSs4dm45YlJEOTZQ?=
 =?utf-8?B?d1I3RXpoMFN6NndIQUVvSnNyTWZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <90FE3F8A575C4F45A84D18A32A588296@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3260cbd-1437-4e87-41d7-08de37f1ceb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 13:41:22.7679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TcLzclddftKRMGgF5t75Gmca3+XxlWL56royfyT9za8ntp3D3egQKUKqH58axFGP10kiqTF+R4NSbH2/WTMBEBtUPQyBW5+Y/XK/W50Mrv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8504
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

T24gVHVlLCAyMDI1LTEyLTA5IGF0IDIwOjI2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRGVjIDA0LCAyMDI1IGF0IDA5OjA3OjE1QU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBUaGlzIHBhdGNoIHNldCBjb250YWlucyBmaXhlcyBmb3IgU2VsZWN0
aXZlIEZldGNoIGFzeW5jIGZsaXANCj4gPiBzZXF1ZW5jZXMuIE9uIGFzeW5jIGZsaXAgc2VsZWN0
aXZlIGZldGNoIGlzIGNob29zaW5nIGZ1bGwgZnJhbWUNCj4gPiB1cGRhdGUuIEFsc28gc3Vic2Vx
dWVudCBmbGlwL3VwZGF0ZSBpcyBzdGlsbCB1c2luZyBmdWxsIGZyYW1lDQo+ID4gdXBkYXRlDQo+
ID4gdG8gZW5zdXJlIHBsYW5lIHdpdGggcGVuZGluZyBhc3luYyBmbGlwIGlzIG5vdCB0YWtlbiBp
biB0bw0KPiA+IHNlbGVjdGl2ZQ0KPiA+IGZldGNoL3VwZGF0ZS4NCj4gPiANCj4gPiB2NDoNCj4g
PiDCoCAtIHJld29yayBpZi1lbHNlIGlmIHRvIGlmLWlmDQo+ID4gwqAgLSBhZGRlZCBjb21tZW50
IHVwZGF0ZWQNCj4gPiDCoCAtIGNoZWNrIGNydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzIGlu
DQo+ID4gwqDCoMKgIHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkDQo+ID4gdjM6
DQo+ID4gwqAgLSByZWJhc2UNCj4gPiDCoCAtIGZpeCBvbGRfY3J0Y19zdGF0ZS0+cGlwZV9zcmNz
el9lYXJseV90cHQNCj4gPiDCoCAtIGZpeCB1c2luZyBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRj
X3N0YXRlDQo+ID4gdjI6DQo+ID4gwqAgLSBjaGVjayBhbHNvIGNydGNfc3RhdGUtPmFzeW5jX2Zs
aXBfcGxhbmVzIGluDQo+ID4gwqDCoMKgIHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBv
cnRlZA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlciAoMyk6DQo+ID4gwqAgZHJtL2k5MTUvcHNy
OiBTZXQgcGxhbmUgaWQgYml0IGluIGNydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzDQo+ID4g
Zm9yDQo+ID4gwqDCoMKgIFBTUg0KPiA+IMKgIGRybS9pOTE1L3BzcjogUGVyZm9ybSBmdWxsIGZy
YW1lIHVwZGF0ZSBvbiBhc3luYyBmbGlwDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBBbGxvdyBhc3lu
YyBmbGlwIHdoZW4gU2VsZWN0aXZlIEZldGNoIGVuYWJsZWQNCj4gDQo+IFNlcmllcyBpcw0KPiBS
ZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCg0KVGhhbmsgeW91IFZpbGxlIGZvciB5b3VyIHJldmlldy4gVGhpcyBzZXQgaXMgbm93IHB1
c2hlZCB0byBkcm0taW50ZWwtDQpuZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
DQo+IFdoZW4gdGVzdGluZyB0aGlzIEkgc2F3IHRoYXQgd2UgZ2V0IHN0dWNrIGludG8gZnVsbCBm
cmFtZSBtb2RlDQo+IGFsbCB0aGUgdGltZS4gQnV0IHRoYXQgc2VlbXMgdG8gYmUgYSBwcmUtZXhp
c3RpbmcgaXNzdWVzIGNhdXNlZA0KPiBieSB0aGUgYnJva2VuIHNlbGVjdGl2ZSBmZXRjaCBhcmVh
IGNhbGN1bGF0aW9uIGNvZGUuIEkgc3VwcG9zZQ0KPiBub3cgdGhhdCBJIGhhdmUgYSBsYXB0b3Ag
d2l0aCBhIFBTUjIgcGFuZWwgSSBtaWdodCBoYXZlIHRvIGRpZyBvdXQNCj4gdGhhdCBicmFuY2gg
b2YgbWluZSB3aGVyZSBJIGF0dGVtcHRlZCB0byByZXdyaXRlIHRoZSB3aG9pbGUgdGhpbmcNCj4g
YW5kIGZpZ3VyZSBvdXQgd2hhdCB3YXMgd3Jvbmcgd2l0aCBpdC4uLg0KPiANCj4gPiANCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHzCoCA4IC0tLS0t
LS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmPCoMKg
IHwgMTAgKysrKysrLS0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuY8KgwqDCoMKgIHzCoCAzICsrLQ0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IC0tIA0KPiA+IDIuNDMuMA0KPiAN
Cg0K
