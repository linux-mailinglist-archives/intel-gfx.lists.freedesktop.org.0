Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC477C3F7AC
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 11:33:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3A210EA73;
	Fri,  7 Nov 2025 10:33:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9wKJPct";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1A710EA6D;
 Fri,  7 Nov 2025 10:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762511593; x=1794047593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bIh+GbfB5BvAuNx+XrTVd6EOBFCIdaPn58B2F1T0p7k=;
 b=P9wKJPctkKwFXpswcTDSMW9QIReSmuVvNBxpaNGL8rtIdu344Tt5EXsJ
 wcKXLL2RW6Y48K6e4P+X1zZfCz3dGEvb+rrSoYBLP2zf5IyJrgUVu1XCT
 PCO/6Xj03vWUmT6EtBy8tokQPVliESIu9RSpGfr0ysd7i/SZPclM6uS7S
 +Tnv1zvvghk57lAXwmwvp/ocLtAZwH4qKoQxPcXf5MelVF7+oLMMFZp6f
 Xqewq4S92GNoisQHfhNExq0ZEQ+1NVhBN9amoqe0uu04H1CfTWmVgtz1e
 cwsv3PEsFi2jg1ph4VZDO+X7qCrsg+MS+jbVR1acY20BQwTZ7xF/gap+V g==;
X-CSE-ConnectionGUID: qgSFX21BRUWo/elWOpoCdg==
X-CSE-MsgGUID: nwXzfh+oSKWCCc/STde0Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64815062"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64815062"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:33:12 -0800
X-CSE-ConnectionGUID: CYG/y1MdRcOgnDHkjo5osg==
X-CSE-MsgGUID: BXkjendaQOecIORF9+U1mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="188272851"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 02:33:12 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 02:33:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 02:33:11 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 02:33:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fe4w9wZepV/o9Ld/U7MH420FAocv+SVzshVhIl9pO624TnnFjeVU5lOAhr2X7Lvto8X6pnwtk7Jb9t+zkW3K5eW+KsmsfiDP27vsU71uSJg+SpuXcpAoeSOaspg+fSFFjejEROSvlfK52Lxyt9+5U9PywH34CcLBXHs3qe4U1tiE4JRkmciIEGcoMX50A/ugXRbqbzVrKx3hNPMmyQ1MDMpqY44kCNDgN88r56mMcJUpplYp8AWABvEKcgrHXyluwU66x2k2iy+GhFevAwGXtsr1mbCqAkFFkdqljRgb/0IPeqhUdW3OS5ie06oJ7gV2riTrcdDGpJ2YJeFw0mU6Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIh+GbfB5BvAuNx+XrTVd6EOBFCIdaPn58B2F1T0p7k=;
 b=ojJby2LU/uQqJZgg/3G13Z+XAOMyUTdJofg89m/pqVFrZgAy4ZxBRD0kcIxPH+uQmqA6Kt/QzK6nOW9rNQ+wHwRyamiJFnUunJBa9Nl7er0KwiEsrfcUyR4nScpxYzZaI621uZPfvX2SsCgONUfjj7HKSs6PY7u0vPxyOJUjSKtPmsMUSadeTR7YVzzy/UgC8+0GZHNCZ+Hn2ovrF+Sm0C18MerDdHFCfHBijHUwP87k7LccEDHDU+SUBMLSeOkuv0P8UT8/D8QQrRX4ijoBEiOd/uplhdPztdo2MArfhn66MKpB/dDKu/8rLuONjaq/IMSrVlXdS4X+9uVwB/mkQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Fri, 7 Nov
 2025 10:33:09 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9298.012; Fri, 7 Nov 2025
 10:33:09 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
Thread-Topic: [PATCH] drm/i915/fbc: Apply wa_15018326506
Thread-Index: AQHcT85ygCxk2/sVgk6fmRjLg1v38rTm/3yAgAAEtoA=
Date: Fri, 7 Nov 2025 10:33:09 +0000
Message-ID: <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
 <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
In-Reply-To: <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB7386:EE_
x-ms-office365-filtering-correlation-id: 6fe9b803-2b93-4c01-4363-08de1de90bc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eVlPM3FuWWd1YXpHcVdZeXdQZU14ZndOcTFWdzlGSXZ3OU90RkIwYjdoS2Ux?=
 =?utf-8?B?dzdUeXRKdFp4TGdDTU94dTJOcExZOW8xOURXME8wQXRJQnhCcnhXS3EwSTZB?=
 =?utf-8?B?a085SG1OQlRVK3NCTmhZR25NVWJabjkxa3pONE9xenVZN1ovcFZuZ2JLeGt2?=
 =?utf-8?B?MGFwZVNocWJoclhZTUVFL2dqY1dsdUhOaFgyVW80cHNrcnJ2US9uTjNzK2hz?=
 =?utf-8?B?K20vSnFkV2lCc0dDUEpxc3UzemtYTzNiNUpnSFFlVnczc0NWeGNYaXp6N2t5?=
 =?utf-8?B?ZUp4RVVQUVdHRVRlY0pTcmJTaVcxNzFFaEM1WXYvT0p1aW1lUGlEODlqK0VG?=
 =?utf-8?B?TjhxTDFjcXdQLzJUcXd0c0tOTjdNZm9NeTQ0RWtScm5PWEJUZlNmZUN4SHg4?=
 =?utf-8?B?RXh4ek9hdUdpNnVXNjRRSEtORkVLZDVBSzhNREFYR0lBdHEyL3k0TUZsN2lp?=
 =?utf-8?B?dng0TE9OTVhXaVhrdXVwS29iUnEvTmRXaXE1K3hCV28zMjFuUEFKQVFIenY2?=
 =?utf-8?B?NERqRnBkVUMram5CdHpOd0hMVGJHMW1Xa2Y2UnJlK21kVkIxemVMWE9uYW5Q?=
 =?utf-8?B?a1dkaFVveHFYRk5OR251cmJUSjI2Ky96SzZCWWFTWG9zNW92WjNEcktGL3Zk?=
 =?utf-8?B?cGwxZ2h2d21yMTVJcUJBSmlNLy9lRm0rdERMc05GcXNPdFVyZU5sMDhUaFE3?=
 =?utf-8?B?Rm5kekt5ZzN0OGpaa20yeHo1K3c2elltaVpyV2ZIcEdtVmlRUFVHMFM3VkFs?=
 =?utf-8?B?bko3M3hKWlFWWW1Ua1gxQkJmYk43RWhSTnkzbVFha1VtNHNLQWlxNlZQMjZk?=
 =?utf-8?B?azdUSWwrcFhPanluQ2ZyTmhHWWJRaWZNVG1RMlJNL1pVT3ArL3MxdEhOREM5?=
 =?utf-8?B?bUxjWWMzYnZnYUlGUkFxdTdBOWtxQW1BR1JkU0N2WFAweTVHOGVoYldaOXZ0?=
 =?utf-8?B?aE5iUnc2Q1RaT2F6c2ZtZEJkUWJldHJBN2ZocG9rdS9wRk1YQ0VkSHVGS1J4?=
 =?utf-8?B?WEQ1ZWQySzkzQ3lkcFd1L1dEdXVYT2w4RVJ6azlsU2tjblVjeEhpbERyQndk?=
 =?utf-8?B?eGtkV20rK2x6VTNRSjdOODVETGVxMEhic0dnM0xzN0hCdzh3MU9rVnI4RWFZ?=
 =?utf-8?B?YkhyelVLTHJVWU84YjhQMXFiVkNtV0NIOWJ0bU9QdEF6QVZzcjB4bmRrYlVP?=
 =?utf-8?B?SURlQ1hvYzJiK01IQVpCUEhQSmJkNlIzVmFtakl0Ym8rL3JXVDNqMFh2aENY?=
 =?utf-8?B?MlkwYXNwVzBGRnFrU0F4THBzYUVaRlFIQW5LRDVBQkw5ZU9ScC9CbmxHdzY3?=
 =?utf-8?B?NEhHVjhlMi8rTHFQa2diU2ZYT0F6WG5STnpHL1FkOEdtWmVDMEFDTTEweHRk?=
 =?utf-8?B?N3l4U2hNSGVEVStQQWZaUDF0cUlkT0tnVEhLeVorN2VBY0pqdzJ6SmdFRFZz?=
 =?utf-8?B?VlBJU3V3L0NkWjU1Wk1SVEZ1R1FEL2JCOEEwMlVSOTRNN0RxSDVDZWtFenBQ?=
 =?utf-8?B?M2M2RHc3MC8vdDNRNEVRaVNrVUNwVUVvSXdJK0pwcHhrNXpYN3JRelhuVUcy?=
 =?utf-8?B?YytEYW1yNnBkckpnS1hXZVR4OXVZUkczVXVPbk0rbDkyc0hSRkljSzUxMlJu?=
 =?utf-8?B?TlNjZTZKZ0czd0hFK3k2RFg5c0pKb3g1ZmFGUkNqVFZDZVVxQVpReEdlM2tT?=
 =?utf-8?B?OTE1dFYxOE9oVGcwMlcyN2FTeHd2Y1loL2hpV1ZSNEl6K2JkRTV5V3pWU1NN?=
 =?utf-8?B?dDVDYnMvMkxwQVNUOXNvZEpPbGRCYVNTeXlTYnJDL2ZpZkk5WEE2MStsbzdZ?=
 =?utf-8?B?VjJLUk1yaFNjMkFFVW1JUHovazdmZnRpcGJtYVdWUU1mbmNUVGpveTNoa3FS?=
 =?utf-8?B?VWUrQ0xYNlJkbHd6N1h6S2pkZVdvUUpWa1FWc0k5d0w0U0FGSTBGbCs2Y2Zo?=
 =?utf-8?B?c254c3VzUU9XcUR5cmtNdU1JWjJSR2NESVpZL0NuTDhYSmQ1OEVLcFBFK2pM?=
 =?utf-8?B?TlpLdlpmLzZoN2NVbEx3S1hNNUxHcDYxby9UOU85b0NIbFhOcm1mSSt1RUVZ?=
 =?utf-8?Q?Ufr8UH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3I5TXE4SXpFYi9QbElvczg4SDI4TzEydStyODQxVkFTT2ZFM1VnS3FhY01K?=
 =?utf-8?B?bUU0cEFRbmh4WTdYNmVDOVorcXRSTnF5U2lEdEZJMDllenZ3ZWRha0sxN0xO?=
 =?utf-8?B?cElBZVB4UlIyajVYVEw0R0pTaVVibE15aytWQnNRdDgzamhsdmZ0NUJsd3JV?=
 =?utf-8?B?UGg1ZXUzYzhjamxtYlB2UjF2clJXSGIwTEFKamJzcEtId0tIZ0ZacHJncm1I?=
 =?utf-8?B?VGdoOUJtUzloQ1ZvOU1WTmNodlh5Q1U2WWU4bDdkZ1ozNFMzazFmRGo1TmV1?=
 =?utf-8?B?L3Zka21iQzg2NHByOTI4K2ZSMFk3TFgxeityN1BNRlBoa0VDT1llNlVQbDlB?=
 =?utf-8?B?N1hTcXJpNHh5NWZmSUdHdWxJWjlRNjYxK1VHcDkvUnUwaUhHYkZuMVk2TmF5?=
 =?utf-8?B?Q0V1UUpBMlVZQ1cyQWQzb0g0RFRneExSbE5wc2VSbXlicUp5M203RzZ2Qmp4?=
 =?utf-8?B?NXdZa3lwbXU1RnRwSEdLb0V5cWhzdEtTTW1VV2dJV1FMd2ZxWjczVXAyY0Ju?=
 =?utf-8?B?anl1Rlpvd29OZGxTNHN6dWNkSXk4UmRndTk5WFZCcWJiMDNUTk13ZVFsR0tU?=
 =?utf-8?B?N3VNYkxsT3g0V25YcGFCRmQ2NG1CdDZuakVSalB3d3d6OHN3OEw3Z3JXUE1n?=
 =?utf-8?B?eUd5NUd0S29JTnlFSEgzbWRlUUg1S2t3TEs0U01UMzkramxoRllKY2VNeFNx?=
 =?utf-8?B?MVZld2FJdTlkbWNMNVAydU9IR08zWSsyTEMyVUtvM2M5bXI3OXlLSWdIU1FE?=
 =?utf-8?B?OFF4S1lGTmVNQ1JjSkNEVnlkK0tUeWpKWGJHZGhqbnhqaWVtZU5jUTJ3blhH?=
 =?utf-8?B?VW1RVGZROFRPTTdHVWVpVnJGbXptblJxZTlkU3g0VjdWdnNZU1RiYlBGb05M?=
 =?utf-8?B?aGZxWkZLSVhkUXNDQzJDOGJZNHpvMzg1NngwVkJPT0c2YkdNcFNJamlDbmp6?=
 =?utf-8?B?cnk2Z0hyeWJWUlJvOU1hRjNYZ2FCU1dWUzY0eTc4RmlJdUhlVCt0djlTZFph?=
 =?utf-8?B?bkt2cThIVzk4Uk1ReFJFeEdNTmFxckg0YkdQNXdtQXpJdTV6dTdEOUVWQlMr?=
 =?utf-8?B?OHBkQUd4a3FXSjlEaWZZekRTeTJWQ3hpR1RQak04WXJ1T085L3BUa1c2ckVE?=
 =?utf-8?B?eFRHYUFJemZBb1RRcERVWHJoaDlxVWl5L21ybXBSQjYxdCtPaDRmb2Y5SWRl?=
 =?utf-8?B?Kzh6YTB3MklMQndXbk5XMG1UbUhaVEQ1N0RrY3BhZTZtQkV6TVZ0bEZ0bG9v?=
 =?utf-8?B?TGo1RExnL2dpMmNSMjF4Nk9kOFlKWC9KZzFNMXBJajdrbU0xUUJKYzUrUzVO?=
 =?utf-8?B?dnlwNElqaG1ZR1lnbTJsaHV6SG4rZlUvc0ZEamU3YS8wZCttazZhWkVETUZ3?=
 =?utf-8?B?OFdzQlVFUnZ2WFJWYThOVDFVMVFZNEltSnZVWGV0ZW0zTEQ5em5uWWxpWkw4?=
 =?utf-8?B?cmNwUlpDb0NlZWphVS9pNXJYS1AxbTB3d1NpNEZqMGFFcUF1QUtGWUJpNzZh?=
 =?utf-8?B?VFdkVTBDWmtqRW1mOXhjU2xiN2lDNnpsTFNhMGNPbHJnK1pUWnowaDZ5cERk?=
 =?utf-8?B?c2xGeWNDTVkvcXoxS2x3SVIrQnhoYmVoV0VDQUIzL1ozQlpwSGxXVVlxdUlH?=
 =?utf-8?B?cDRyaGtHNUdSVElWdmxXaDZoSUlGMW4raUxZbnVzV2t0bTE3U0JEd1ZTQ2Vi?=
 =?utf-8?B?OUJwVEd2ajllQjFLbHg0Wmk5bGhUWHk2ejgxQ0lZZWthc0wreE8xN1o3emVV?=
 =?utf-8?B?NDZVc0xaOFFEU0ljNEJ1OFM2ZTh4cmo2SzhXNnJ4SWxVckhOa2hpVlJYazdU?=
 =?utf-8?B?OG51SFBhYTlyWEl4bHhlVzVVdW1FbkY1ci9nb2QzRFBEWXJpaTh4VE1rdm0w?=
 =?utf-8?B?UEx6L1YxeWRpM2tyTDVTWStpd0gxNjRMdFFyVndjOFRtcUhMbU42TTAyZEJ1?=
 =?utf-8?B?TjBZd1VZVzlXQmUweG9hNTh1Y1Nrb2hjaTNQQ2ZpNm01UTF1TUd5RmlOd1Fh?=
 =?utf-8?B?aCs4SzRVMFoyT2FWTG4wQ1dBZnU5VlVZbXc2Mm1pcGNndXBmcnFId01qalcw?=
 =?utf-8?B?UWQxZDdyWExtRFlBdHN1WFVlQkcwc1RpTllZdDkrazc5dCtVN0tOQUdiM0oz?=
 =?utf-8?B?cGlMQVJ4eC9IR0lrWDZORmZzeUR5RlUwUGJZK1hqSFU1WWVobFVRNVJDSFJS?=
 =?utf-8?B?L0tkem1FT0luUWxHUDdsQ2xrdWduTlhzdXRLVlhMYTJQQmw4WUdQbnJDUDRV?=
 =?utf-8?Q?7yzHcG+9I2oT9EHn75BDDcfVn51kyxvK2paZFwfpUA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D8A750156700254A918B51DA38EA5807@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe9b803-2b93-4c01-4363-08de1de90bc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 10:33:09.4888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YLP7gRulKwCftbzA5VvEHAGl5uNZZyxD1ouHDDK1r4wIH7ai42rrwoNeJs82hKVfb86+ks7luxls4BgobBR5XD6gPfT7ieYCoxzWAlzATz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
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

T24gRnJpLCAyMDI1LTExLTA3IGF0IDEyOjE2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAwNyBOb3YgMjAyNSwgVmlub2QgR292aW5kYXBpbGxhaQ0KPiA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IERpc2FibGUgRkJDIGFzIHBhcnQgZm9yIHRo
ZSB3YSBmb3IgdGhlIGJtZyB2YXJpYW50DQo+ID4gDQo+ID4gQnNwZWM6IDc0MjEyDQo+ID4gU2ln
bmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfd2EuYyB8wqAgNCArKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfd2EuaCB8wqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jwqDCoMKgwqDCoMKgwqAgfCAxMCArKysrKysrKysrDQo+ID4g
wqAzIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gaW5k
ZXggYzUyOGFhYTY3OWNhLi5iYTIyNzJkODVhMDQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+IEBAIC0xMCw2ICsx
MCw3IEBADQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9jb3JlLmgiDQo+ID4gwqAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV9yZWdzLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV93YS5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfc3RlcC5oIg0KPiA+IMKgDQo+ID4gwqBzdGF0
aWMgdm9pZCBnZW4xMV9kaXNwbGF5X3dhX2FwcGx5KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KQ0KPiA+IMKgew0KPiA+IEBAIC02OSw2ICs3MCw5IEBAIGJvb2wgX19pbnRlbF9kaXNwbGF5
X3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gKmRpc3BsYXksIGVudW0gaW50ZWxfZGlzcGxh
eV93YSB3YSwNCj4gPiDCoAkJcmV0dXJuIERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDEzOw0KPiA+
IMKgCWNhc2UgSU5URUxfRElTUExBWV9XQV8yMjAxNDI2Mzc4NjoNCj4gPiDCoAkJcmV0dXJuIElT
X0RJU1BMQVlfVkVSeDEwMChkaXNwbGF5LCAxMTAwLCAxNDAwKTsNCj4gPiArCWNhc2UgSU5URUxf
RElTUExBWV9XQV8xNTAxODMyNjUwNjoNCj4gPiArCQlyZXR1cm4gRElTUExBWV9WRVJ4MTAwKGRp
c3BsYXkpID09IDE0MDEgJiYNCj4gPiArCQnCoMKgwqDCoMKgwqAgSU5URUxfRElTUExBWV9TVEVQ
KGRpc3BsYXkpID09IFNURVBfQzA7DQo+IA0KPiBJU19ESVNQTEFZX1ZFUngxMDBfU1RFUCgpLg0K
DQpJIHdhcyBsb29raW5nIGludG8gdGhlIGNvbW1lbnRzIGZvciB0aGF0IG1hY3JvISBUaGlzIHdh
IGFwcGx5IG9ubHkgZm9yDQpzdGVwIGMwIChhcyBvZiBub3cpISBJIHdhc24ndCBzdXJlIHdoYXQg
dGhlICJ1bnRpbCIgcGFydCBjb3VsZCBiZSBpbg0KdGhhdCBtYWNybyEgU28gd2hhdCBkbyB5b3Ug
c3VnZ2VzdCBmb3IgdGhlICJ1bnRpbCIgIFNURVBfRDAgb3INClNURVBfRk9SRVZFUiBpbiBzdWNo
IGNhc2VzIQ0KDQpCUg0KVmlub2QNCg0KDQo+IA0KPiA+IMKgCWRlZmF1bHQ6DQo+ID4gwqAJCWRy
bV9XQVJOKGRpc3BsYXktPmRybSwgMSwgIk1pc3NpbmcgV2EgbnVtYmVyOg0KPiA+ICVzXG4iLCBu
YW1lKTsNCj4gPiDCoAkJYnJlYWs7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+IGluZGV4IDM2NDRlOGUyYjcyNC4uZjY0
OGIwMGNiOTdkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV93YS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiBAQCAtMjYsNiArMjYsNyBAQCBlbnVtIGludGVsX2Rp
c3BsYXlfd2Egew0KPiA+IMKgCUlOVEVMX0RJU1BMQVlfV0FfMTYwMjU1NzM1NzUsDQo+ID4gwqAJ
SU5URUxfRElTUExBWV9XQV8xNDAxMTUwMzExNywNCj4gPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzIy
MDE0MjYzNzg2LA0KPiA+ICsJSU5URUxfRElTUExBWV9XQV8xNTAxODMyNjUwNiwNCj4gPiDCoH07
DQo+ID4gwqANCj4gPiDCoGJvb2wgX19pbnRlbF9kaXNwbGF5X3dhKHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5LCBlbnVtDQo+ID4gaW50ZWxfZGlzcGxheV93YSB3YSwgY29uc3QgY2hhciAq
bmFtZSk7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMN
Cj4gPiBpbmRleCBhMWUzMDgzMDIyZWUuLjE2Y2Q5OWRiMjk3OCAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IEBAIC0xNTIxLDYgKzE1MjEs
MTYgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3RydWN0DQo+ID4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJcmV0dXJuIDA7DQo+ID4gwqAJfQ0KPiA+IMKg
DQo+ID4gKwkvKg0KPiA+ICsJICogd2FfMTUwMTgzMjY1MDY6DQo+ID4gKwkgKiBGaXhlczogVW5k
ZXJydW4gZHVyaW5nIG1lZGlhIGRlY29kZQ0KPiA+ICsJICogV29ya2Fyb3VuZDogRG8gbm90IGVu
YWJsZSBGQkMNCj4gPiArCSAqLw0KPiA+ICsJaWYgKGludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwg
MTUwMTgzMjY1MDYpKSB7DQo+ID4gKwkJcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiV2Ff
MTUwMTgzMjY1MDYiOw0KPiA+ICsJCXJldHVybiAwOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiDCoAkv
KiBXYUZiY1R1cm5PZmZGYmNXaGVuSHlwZXJWaXNvcklzVXNlZDpza2wsYnh0ICovDQo+ID4gwqAJ
aWYgKGludGVsX2Rpc3BsYXlfdnRkX2FjdGl2ZShkaXNwbGF5KSAmJg0KPiA+IMKgCcKgwqDCoCAo
ZGlzcGxheS0+cGxhdGZvcm0uc2t5bGFrZSB8fCBkaXNwbGF5LQ0KPiA+ID5wbGF0Zm9ybS5icm94
dG9uKSkgew0KPiANCg0K
