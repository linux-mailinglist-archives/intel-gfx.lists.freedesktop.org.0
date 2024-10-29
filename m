Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAAB9B42D0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 08:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25AD110E5B2;
	Tue, 29 Oct 2024 07:07:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hF35mmzT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6435F10E5B2;
 Tue, 29 Oct 2024 07:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730185676; x=1761721676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SavUfAvYDut4GM/J39LjiU3ORj5f88++gWxfRtW0E9Y=;
 b=hF35mmzTmv31tfgDdHL1geq3zi+orykZTz6h//7u7hmTOjpDascTXpL1
 /v1wzL6eO0ib1351h9Ob+gJDLVLASOxRaxvmnUO3wH/M/hJrqF/cqHmw3
 ZY9NP/GmmcjwA3yXLCfyrLg636GFiFe0QGHejmAL1QRPbAGSerWObmeur
 26O2ct7DBfdx99oMN1ZsAd1CEI61PsiPofNYdouy5Golyy2N90+9TuMZo
 m81b0nXTU8PD6BSkKNl4BidX60bFksj57ggH2UJaT7E9zaU6tpmenAhYz
 s7u/qnJMLSvAT1xBaVMRqE+LOgyKwNUSCAawRL1V7w3VHDaNZos81w3RC Q==;
X-CSE-ConnectionGUID: 7uTRJ1gqT+CFg0NwM7LoJQ==
X-CSE-MsgGUID: L/JqQ8pQR821I/+9ExuYJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29667419"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29667419"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 00:07:56 -0700
X-CSE-ConnectionGUID: W1/X4yb4TpqDZJVFejkK1A==
X-CSE-MsgGUID: f2EI7Dh5TbmsEFOaVI+rgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="87000230"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 00:07:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 00:07:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 00:07:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 00:07:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SjIU+NBOnYtwVMUT07+3DWeS7CAGIA54KelhA5y7AhJ+/BXqcKg+j4t32ckUisULnGTnMgLRPSTjOp3kicKVjHn7tMvlN3pjfS5iBJPVPUG3f1ZCgwSe7bppvupzrM0AWcOH7NVdKF7La54VzzaPyh+1EXqR/glUH94BgKLNDuOIaaOXpGEwrho0NBbRQAWlZ72X1fjkhjh19iGQVKuzxtC6ezpPn3v0+5yNP9Mu5ZfcXCCfvM5JvjUVf4xY25pWfR7i7jwCmICTfTie47deYs+XJGIBnmWgh6wdEW9HVWKXM4VIO7cL31m2A3nul5gxJnrRWzuD/B5u7GSSv08OKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SavUfAvYDut4GM/J39LjiU3ORj5f88++gWxfRtW0E9Y=;
 b=AR5Bqnk1ogCaHSHzzCWLIaSNBHPKlr/gk1PI9fREa5nV+oc3aCWN+cIAKtD8rxJjcgmWU4N4xph+KhoKIbjHCT04oa4jHUhcuggJGKBujUD23TxE1lXDNndmnohkqAzx86dDuBBAgiZk6HFVZahLfEfkon7sDev7gbxzYLq0GKaRL22kfitN99+HvTrDIkekNfirBgDHPBEcmBuc/ioPwXzSRZKNfgS06ehZ6IAIc6JUwVwVB2SoLmGv6mxydwxc/zTaDezkHaIicSJNqWhdnZumoLNehwhk+U6NhdxI9ZRALuYKQcDgA3qzGPiAUSh5aNKIOex6EyqLy6Iv8AJ9ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6268.namprd11.prod.outlook.com (2603:10b6:208:3e4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.25; Tue, 29 Oct 2024 07:07:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.023; Tue, 29 Oct 2024
 07:07:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: WA for panels stating bad link status after
 PSR is enabled
Thread-Topic: [PATCH] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
Thread-Index: AQHbKQ2YceuAC/LbEEuFYJdoPX73V7KcLCMAgAEkRYA=
Date: Tue, 29 Oct 2024 07:07:48 +0000
Message-ID: <ca799532d872fea26f8c964b4d1f44a61fd1eb32.camel@intel.com>
References: <20241028074642.804895-1-jouni.hogander@intel.com>
 <Zx-UljQCRUST_RSl@ideak-desk.fi.intel.com>
In-Reply-To: <Zx-UljQCRUST_RSl@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6268:EE_
x-ms-office365-filtering-correlation-id: 70397deb-1de2-4b5f-0781-08dcf7e8658a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?c3A2eEdBMjRZM2dBQ05lblRKTFFsUnAyZ01NRU1ienorSjVpaHhPcnVleFVL?=
 =?utf-8?B?R3VzdG9EeW5CN2R1aFBMY0hmUlgxRTZYZlJIUjZoVHQxTjN5WVNhUkZabjhX?=
 =?utf-8?B?VTNCdnp2ZDBlQ3V5VlBlMjBPM1NmYjVkdkZ6V0Mwakk2Q3NrMEcvVUkwV3A2?=
 =?utf-8?B?R3hNalFBaFdtMmxmRC9waWxucThvWC8wVEJBSUJXNFlITE5wQnpDQmtndTUv?=
 =?utf-8?B?ak51ZE9uM0dVOVU0TVZFb281M01MUVdqTjUvRStBSi9vU1MxTy9iSThWUmx2?=
 =?utf-8?B?NVBOTC9acG8xSG5VNXduWEZ6bHQzT2pocDF0Q3BOeVVseGFFaEtRNndIRnpv?=
 =?utf-8?B?S1lzcnVaQnpUN2RjUHYxU3o0R1VEZW5sajJxV2lEN0sxQTB3TkVpcEZkMjFs?=
 =?utf-8?B?bzdxTi9GeVVHd0FvZzJMRmFuRkNsR1FHZDN2Wk41bHJJYlgxa1lIc3F2REl3?=
 =?utf-8?B?aHoxdWdFOXR4dzIyeTlzZVpVdWN4T3ltOEFSUlhTVGlLL0tPem9IRTR5WEZu?=
 =?utf-8?B?SG9VUE15cGVRZXJ0SXV0aTV5bXlYeHkwSEcwQ1dxWVJoVi94U3ZjQWF3dk1k?=
 =?utf-8?B?VDJzaG50WEsyUEJSa3RVMnk0MkRUS0hQdi9ldlErbWhNNTMwaUZGSkNDZm5w?=
 =?utf-8?B?TFdkUTlWQjR5bGhvTU8yVHZ1amI5Nmd2SENyVWNRV200Q01Fak9waGJjSXI3?=
 =?utf-8?B?eWQyZmpEOFJrSWdBSmI3eFl1L24rbWpFZmFGa282c3U1MzlFM05Yb24yOGZV?=
 =?utf-8?B?dmM5anpSTVphSE9OeHFYZjd3NllJWCtZbDdFU282azJ0YnFPNE5OdU0yV2VT?=
 =?utf-8?B?UHV3aUVDbTBGLzNIcGNUWk14ZVhRVFZlYjlodTc0ek9RMnljSk1vOWw4Vzd3?=
 =?utf-8?B?WWJtTVFtNzkxYkptbmc5bGF6cDM3OCtmMGN3WllJaW12UmlTekpRMVRIZHcv?=
 =?utf-8?B?MW1GaXdqcTBMYmE3MkdlVThacjdDamhTT0RBRjN0L1crMFpjdzJ3RThQZXlO?=
 =?utf-8?B?cTd0NzlQRlRnazB0cm5oZU13R1NndnFCcEptcjFhejlZaXdoV21rdWcxVjBJ?=
 =?utf-8?B?MEtXb2s4dmNtQVVMdHQwSEhJaHBaeDZFc3lUdE0yaHRYazhUMVc5Q1pLUDJi?=
 =?utf-8?B?TUdXSzN1czl1ckVBRGJZZjJYMHFYcXhDN1RKVTAyQm85MmlrSi92bjJhblBa?=
 =?utf-8?B?MEM0K1RyTEFiTFdMWXdPTHlNTlJIamtyaEVHRGp4cjVZQ3ZnUjNoTTlUR2dv?=
 =?utf-8?B?dUg4MjJKT1N5emt4TWFKZkJIVEhUQVVHc0VHRWc4Z3FkdTdJYU9TRlZydFpL?=
 =?utf-8?B?azdrYUZIc0o2Wlo1UzJTRytVRXU0N2U4OFJCRWxHc3YwZExhdlQvNExHSFly?=
 =?utf-8?B?UFl3MkxwdDFBVUxRWXZhbHlaclZFaXlZeTRQWTVUOWFXOVlqNXl6dXFaQWhk?=
 =?utf-8?B?REh5aW1CcGZYMGdadTVDSmVRN1FWYlJERnpFbFgvYVNRZzJoc3JXZi9KaXM5?=
 =?utf-8?B?YkNwNGdZbUhBaU5qWnluTkwrS09kS211Q3FsV0VJM0pJN29tSU5taklQKzlx?=
 =?utf-8?B?dkVaeXZjTzdoYXdWNmpFcVhMNlpzUzZQU0t4Z3IzR3cwTTBCRE5maE5WTm1Z?=
 =?utf-8?B?cTFXTHhLcjAzVCtHczR4UDFXNCthdGpWQVBKWHBjbXZDMU9COGErdlRXOVY4?=
 =?utf-8?B?ZEJvbmNPNXpNdXhzWGQ5SFBoNDRkcVpaN0drTURkN21MY3QvSnM3WUZoNmJM?=
 =?utf-8?B?eFEzeS9OeDBPWTVhYWRxMDJhK1Vock9SRlZBc3Fscm5PcWp4bTFKNkMyZG1y?=
 =?utf-8?Q?DyMqh5KUoiqZduFfN/Tr/w7AH95WMCGM+GA4o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1lSb3RVaDBDRDV0K05rbVhJNnRVczdOS2Naam95Z0RacmpXbFkzdmxFQ3VJ?=
 =?utf-8?B?U2FpZFJPUzR3dXFNdXlDYXd5V2V6Zm52bjVoTHpnN1lWb1N0VUJ3ZlROTS9K?=
 =?utf-8?B?N2t2R210NUE4bVQxSjJsUVZ3dXZKbXVEMEp2YTFiYlc5WWhuMGdsdG5ZcUto?=
 =?utf-8?B?ZU1NcEc5Ylc2cyswWlJTUXUyZEJEbE9PMks1ejJRcnJxZVhCcUVFaVE1YjVN?=
 =?utf-8?B?aDhQN2FsUCswZ2RMNWI4Qno3S09yNmtCZTRMYWxYZ1g4SG11aG5lb1o4ZUp1?=
 =?utf-8?B?RHlBMWNhVDk2UkhTTHE0Q3VTNGRqZ2U2cmZ6Zm5rZUVMNzFQaVY4SXZKM3lq?=
 =?utf-8?B?ZUNwN1ROWU43S002ZlZQYis5emhNbk05OW9GbUQ5eFJ0L1M1MXJ0N1pJRGpw?=
 =?utf-8?B?b3NweEYxZngzcU5LSXR2aDlGdEpqdDZFcUE5cW40OWxNc3JneFlwbUpBeGhC?=
 =?utf-8?B?NXhqNHVTdUJHNjhzR284RUo2dG91Zm1zZC8vdHJjNTRWaHpsZmwwZnZNWUpG?=
 =?utf-8?B?b1NPYkZ5M3ZXYVFCN1kyQ0hHczhHUWpOaWxKak5TcWZEWGR1cHV3VUVQU2s0?=
 =?utf-8?B?RXdLSkdsdEh2VG00R1IvR29MQ1BtQjVyTmtWc3lwb2diemlFdWRBMUkrWHlF?=
 =?utf-8?B?SEc4TjZJZmgrMEk0UjFpa1ZmYzdTNkFBUG1UVUo3YUxVRkdYVkYxaGhJV25l?=
 =?utf-8?B?RDBuaG9rTmFLUVZmOEluNWR3UXlMYlFjaFpEMU83M3ZIYy9RU1Q1RXpaR0JL?=
 =?utf-8?B?ekRuWGxiTGRWZTQ3aG9sa2ZmcmFxaW9ZRE9oa3pxUkZWamw5ZGlhb3pMckFG?=
 =?utf-8?B?MWkxYUxKK2UybUwzRmNBZGt6amJnMCtVMGxXbUx4RmhNMGNkREpLWktveUU3?=
 =?utf-8?B?amR4QVZybDhMakYyWnE0U0w3aUJvRFdoRGk0REdhYi9LZklOckQ2TlFIU2lo?=
 =?utf-8?B?ekxFUW9jYXZhQSs3RytOZUdheWpueDBZeFdrZ2RVdXdnMVVWMFREWlJlQ1FF?=
 =?utf-8?B?eDhTSnFYOGdKYXlRM3MwS2JTdG1YUC82ZElxY3I0K25JWkgwb3ZtMDF6U2lh?=
 =?utf-8?B?b2RRSGFJbG4wTTIyZ0dDdThELy81blI0c083T2FsQkhSTlo3ZWpBbXRHb1Nk?=
 =?utf-8?B?Z29WTFdmbUp3ci9TR1Qvbkl3d3E5R0kwMUJZUFhmbjJEZ2JvVFhEZTIvY0pB?=
 =?utf-8?B?alBIdmJSU1hkMTd3eVpPY0lTazMyNzRtU2xvdEtPUVB6QTFFK1pueUc3MU9Z?=
 =?utf-8?B?Z3hiMitXM2ViV1A1amZQK3BZZ09ycmlGbkk0L0JCamlwTDdsbUdYek84T2xL?=
 =?utf-8?B?L1pBNHNIYVZXWnExeTMxOHQybVBLN1hhcXdkQVBlTloyWUkrK1VyT1FNbloz?=
 =?utf-8?B?MFFFMXAzOVUyWCtGSDM0S0xsOW1PMmR0b1ExZmhhK1BqOFpOY3ZJU0luSFNT?=
 =?utf-8?B?N0lvdHdpbnpqaGdpYS8rb1JmeEtQanhacks1RFlYUDMrSDFXbGUrdS9wdXJr?=
 =?utf-8?B?L0xTZFkxQzRBUVpsY2FHNWtmeXhpaUk5ZHR3RjM5czl6T3FzcWRMU0M4dFFL?=
 =?utf-8?B?TndUTE4weG1HSU9ha1lOVUtrQWF3QVZkOFBoNGZuWUJDd2pjSVdEK3Jzbk5G?=
 =?utf-8?B?SE9OT3FzUXlDS1FEK3VHVThTSExTSVAvYm41endzb0Z4K2V6MEZPNlVZSS9x?=
 =?utf-8?B?Mnp1cko4cVhEYmt5aEJsZm4yYnVWSGRQV1RDTGhmTnlGVk5LT2xIY3F6SmhK?=
 =?utf-8?B?T0xMTk51dHN1ZXMyRWdiVWkzTjN4Z2pselVJcDQ1dkRBSnRwcWlhOU5uRk82?=
 =?utf-8?B?bFliWS9NWHovTzBVWEpQMlNDaVdNcXZGZGgzYkhDZlNaRFFFSUlNaXNtVGdH?=
 =?utf-8?B?ejJuclp6L21xLysvNEtTMlp1elYxNmFaUndYcUhoWXh6cGxHbzhnMXVkaE54?=
 =?utf-8?B?N256YW56bHAxVk5WNVhQYjZoVlpOcXRMVlREbDNUaGZUYmtrSU9LVk1mSUN5?=
 =?utf-8?B?anJmK1hkcGtkcnRKUStMOGpIQ0pNZ2dSN2VGc1lKUEU3U090QmtocmZHQlpj?=
 =?utf-8?B?clJCM2JRRjBqUXpwZUI3eDNwN1ZyTGhBb2xDL3p6T3k1ekpJWHl3Z0dCT3Z4?=
 =?utf-8?B?SGZPSG8wOGpWbVl4bWd5U3J0dmg0ZityMFhWTVZyV3hGSk1UdCtiZmN2RlZU?=
 =?utf-8?B?U1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1685A26B14C8AA4BB914C1810061BE00@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70397deb-1de2-4b5f-0781-08dcf7e8658a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 07:07:48.7260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LRmFwYyywU0gXfPXvhP4K+dJQC2uDm0SZrY4mSqVxpgqodZE/oSTvE8Khlo3IhF+dbIutjHUraSTtJOWoABJWX8y1GtlL+TQciX3nx9XsGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6268
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDE1OjQxICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IE1vbiwgT2N0IDI4LCAyMDI0IGF0IDA5OjQ2OjQyQU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3
cm90ZToNCj4gPiBXZSBhcmUgY3VycmVudGx5IHNlZWluZyB1bmV4cGVjdGVkIGxpbmsgdHJhaW5p
bmdzIHdpdGggc2V2ZXJhbA0KPiA+IGRpZmZlcmVudA0KPiA+IGVEUCBwYW5lbHMuIFRoZXNlIGFy
ZSBjYXVzZWQgYnkgdGhlc2UgcGFuZWxzIHN0YXRpbmcgYmFkIGxpbmsNCj4gPiBzdGF0dXMgaW4N
Cj4gPiB0aGVpciBkcGNkIHJlZ2lzdGVycy4gVGhpcyBjYW4gYmUgb2JzZXJ2ZWQgYnkgZG9pbmcg
Zm9sbG93aW5nIHRlc3Q6DQo+ID4gDQo+ID4gMS4gQm9vdCB1cCB3aXRob3V0IFhlIG1vZHVsZSBs
b2FkZWQNCj4gPiANCj4gPiAyLiBMb2FkIFhlIG1vZHVsZSB3aXRoIFBTUiBkaXNhYmxlZDoNCj4g
PiDCoMKgwqAgJCBtb2Rwcm9iZSB4ZcKgIGVuYWJsZV9wc3I9MA0KPiA+IA0KPiA+IDMuIFJlYWQg
cGFuZWwgbGluayBzdGF0dXMgcmVnaXN0ZXINCj4gPiDCoMKgwqAgJCBkcGNkX3JlZyByZWFkIC0t
b2Zmc2V0IDB4MjAwZSAtLWNvdW50PTENCj4gPiDCoMKgwqAgMHgyMDBlOsKgIDAwDQo+ID4gDQo+
ID4gNC4gRW5hYmxlIFBTUiwgc2xlZXAgZm9yIDIgc2Vjb25kcyBhbmQgZGlzYWJsZSBQU1IgYWdh
aW46DQo+ID4gDQo+ID4gwqDCoMKgICQgZWNobyAweDEgPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkv
MC9pOTE1X2VkcF9wc3JfZGVidWcNCj4gPiDCoMKgwqAgJCBlY2hvICItMSIgPg0KPiA+IC9zeXMv
a2VybmVsL2RlYnVnL2RyaS8wMDAwOjAwOjAyLjAveGVfcGFyYW1zL2VuYWJsZV9wc3INCj4gPiDC
oMKgwqAgJCBlY2hvIDB4MCA+IC9zeXMva2VybmVsL2RlYnVnL2RyaS8wL2k5MTVfZWRwX3Bzcl9k
ZWJ1Zw0KPiA+IMKgwqDCoCAkIHNsZWVwIDINCj4gPiDCoMKgwqAgJCBjYXQgL3N5cy9rZXJuZWwv
ZGVidWcvZHJpLzAvaTkxNV9lZHBfcHNyX3N0YXR1cyB8IGdyZXAgc3RhdHVzDQo+ID4gwqDCoMKg
ICQgZWNobyAweDEgPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9pOTE1X2VkcF9wc3JfZGVidWcN
Cj4gPiDCoMKgwqAgU291cmNlIFBTUi9QYW5lbFJlcGxheSBzdGF0dXM6IERFRVBfU0xFRVAgWzB4
ODAzMTAwMzBdDQo+ID4gDQo+ID4gNS4gTm93IHJlYWQgcGFuZWwgbGluayBzdGF0dXMgcmVnaXN0
ZXJzIGFnYWluOg0KPiA+IMKgwqDCoCAkIGRwY2RfcmVnIHJlYWQgLS1vZmZzZXQgMHgyMDBlIC0t
Y291bnQ9MQ0KPiA+IMKgwqDCoCAweDIwMGU6wqAgODANCj4gPiANCj4gPiBXb3JrYXJvdW5kIHRo
aXMgYnkgbm90IHRydXN0aW5nIGxpbmsgc3RhdHVzIHJlZ2lzdGVycyBhZnRlciBQU1IgaXMNCj4g
PiBlbmFibGVkDQo+ID4gdW50aWwgZmlyc3Qgc2hvcnQgcHVsc2UgaW50ZXJydXB0IGlzIHJlY2Vp
dmVkLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8wqAgMyArLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAzOQ0KPiA+ICsr
KysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmjCoMKgwqDCoMKgIHzCoCAxICsNCj4gPiDCoDQgZmlsZXMgY2hhbmdlZCwgNDQgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCAy
YmIxZmE2NGRhMmYuLmYwYjdkNzI2Mjk2MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTE2MTgs
NiArMTYxOCw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIg
ZGMzY29fZXhpdF9kZWxheTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRlbGF5ZWRfd29y
ayBkYzNjb193b3JrOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBlbnRyeV9zZXR1cF9mcmFtZXM7
DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgbGlua19vazsNCj4gPiDCoH07DQo+ID4g
wqANCj4gPiDCoHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggYjAzNmM2NTIxNjU5Li5lZmFhYWRmYjEyZWEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
QEAgLTUwMDcsNyArNTAwNyw4IEBAIGludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbihzdHJ1Y3Qg
aW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gdHJ1ZTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBSZXRyYWlu
IGlmIGxpbmsgbm90IG9rICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuICFpbnRlbF9kcF9s
aW5rX29rKGludGVsX2RwLCBsaW5rX3N0YXR1cyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJu
ICEoaW50ZWxfZHBfbGlua19vayhpbnRlbF9kcCwgbGlua19zdGF0dXMpIHx8DQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9wc3JfbGlua19vayhpbnRlbF9kcCkpOw0K
PiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBib29sIGludGVsX2RwX2hhc19jb25uZWN0b3Ioc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDk5MjU0M2Y1MDhjMS4uMGNkNzM4ODM4OWUwIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAg
LTIwMDksNiArMjAwOSwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChz
dHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVs
X2RwLT5wc3IuZW5hYmxlZCA9IHRydWU7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5w
c3IucGF1c2VkID0gZmFsc2U7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ICvC
oMKgwqDCoMKgwqDCoCAqIExpbmtfb2sgaXMgc3RpY2t5IGFuZCBzZXQgaGVyZSBvbiBQU1IgZW5h
YmxlLiBXZSBjYW4NCj4gPiBhc3N1bWUgbGluaw0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHRyYWlu
aW5nIGlzIGNvbXBsZXRlIGFzIHdlIG5ldmVyIGNvbnRpbnVlIHRvIFBTUiBlbmFibGUNCj4gPiB3
aXRoDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogdW50cmFpbmVkIGxpbmsuIExpbmtfb2sgaXMga2Vw
dCBhcyBzZXQgdW50aWwgZmlyc3Qgc2hvcnQNCj4gPiBwdWxzZQ0KPiA+ICvCoMKgwqDCoMKgwqDC
oCAqIGludGVycnVwdC4gVGhpcyBpcyB0YXJnZXRlZCB0byB3b3JrYXJvdW5kIHBhbmVscyBzdGF0
aW5nDQo+ID4gYmFkIGxpbmsNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBhZnRlciBQU1IgaXMgZW5h
YmxlZC4NCj4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9k
cC0+cHNyLmxpbmtfb2sgPSB0cnVlOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
cHNyX2FjdGl2YXRlKGludGVsX2RwKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IEBAIC0zNDU4LDYg
KzM0NjcsOSBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHANCj4g
PiAqaW50ZWxfZHApDQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmcHNy
LT5sb2NrKTsNCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoC8qIExldCdzIGNsZWFyIHBvc3Np
Ymx5IHNldCBsaW5rX29rIGZsYWcgaGVyZSAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoHBzci0+bGlu
a19vayA9IGZhbHNlOw0KPiANCj4gU2hvdWxkIHBzci0+bGlua19vayBhbHNvIGdldCByZXNldCB3
aGVuIHRoZSBvdXRwdXQgaXMgZGlzYWJsZWQsIHNvDQo+IGl0J3MNCj4gZWZmZWN0IGlzIGNvbnNp
c3RlbnQgKGkuZS4gZG9lc24ndCBlZmZlY3QgdGhlIGxpbmsgc3RhdGUgZnJvbSBvdXRwdXQNCj4g
ZW5hYmxpbmcvbGluayB0cmFpbmluZyB1bnRpbCBQU1IgaXMgZW5hYmxlZCk/DQoNClllcywgSSB0
aGluayB0aGlzIG1ha2VzIHNlbnNlLiBJIHdpbGwgYWRkcmVzcyB0aGlzLg0KDQpCUiwNCg0KSm91
bmkgSMO2Z2FuZGVyDQo+IA0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFwc3ItPmVu
YWJsZWQpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGV4aXQ7DQo+
ID4gwqANCj4gPiBAQCAtMzUxNyw2ICszNTI5LDMzIEBAIGJvb2wgaW50ZWxfcHNyX2VuYWJsZWQo
c3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gcmV0Ow0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9wc3JfbGlu
a19vayAtIHJldHVybiBwc3ItPmxpbmtfb2sNCj4gPiArICogQGludGVsX2RwOiBzdHJ1Y3QgaW50
ZWxfZHANCj4gPiArICoNCj4gPiArICogV2UgYXJlIHNlZWluZyB1bmV4cGVjdGVkIGxpbmsgcmUt
dHJhaW5pbmdzIHdpdGggc29tZSBwYW5lbHMuDQo+ID4gVGhpcyBpcyBjYXVzZWQNCj4gPiArICog
YnkgcGFuZWwgc3RhdGluZyBiYWQgbGluayBzdGF0dXMgYWZ0ZXIgUFNSIGlzIGVuYWJsZWQuIENv
ZGUNCj4gPiBjaGVja2luZyBsaW5rDQo+ID4gKyAqIHN0YXR1cyBjYW4gY2FsbCB0aGlzIHRvIGVu
c3VyZSBpdCBjYW4gaWdub3JlIGJhZCBsaW5rIHN0YXR1cw0KPiA+IHN0YXRlZCBieSB0aGUNCj4g
PiArICogcGFuZWwgSS5lLiBpZiBwYW5lbCBpcyBzdGF0aW5nIGJhZCBsaW5rIGFuZCBpbnRlbF9w
c3JfbGlua19vaw0KPiA+IGlzIHN0YXRpbmcgbGluaw0KPiA+ICsgKiBpcyBvayBjYWxsZXIgc2hv
dWxkIHJlbHkgb24gbGF0dGVyLg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm4gdmFsdWUgb2YgbGlu
a19vaw0KPiA+ICsgKi8NCj4gPiArYm9vbCBpbnRlbF9wc3JfbGlua19vayhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgYm9vbCByZXQ7DQo+ID4g
Kw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICgoIUNBTl9QU1IoaW50ZWxfZHApICYmICFDQU5fUEFO
RUxfUkVQTEFZKGludGVsX2RwKSkgfHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmaW50
ZWxfZHAtPnBzci5sb2NrKTsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXQgPSBpbnRlbF9kcC0+cHNy
Lmxpbmtfb2s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNy
LmxvY2spOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ICt9DQo+
ID4gKw0KPiA+IMKgLyoqDQo+ID4gwqAgKiBpbnRlbF9wc3JfbG9jayAtIGdyYWIgUFNSIGxvY2sN
Cj4gPiDCoCAqIEBjcnRjX3N0YXRlOiB0aGUgY3J0YyBzdGF0ZQ0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gaW5kZXggNWYyNmY2MWY4MmFhLi45
NTZiZTI2M2MwOWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmgNCj4gPiBAQCAtNTksNiArNTksNyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90
cmFuc19tYW5fdHJrX2N0bChjb25zdA0KPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0DQo+ID4gwqB2b2lkIGludGVsX3Bzcl9wYXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KTsNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KTsNCj4gPiDCoGJvb2wgaW50ZWxfcHNyX25lZWRzX2Jsb2NrX2RjX3ZibGFuayhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiArYm9vbCBpbnRlbF9w
c3JfbGlua19vayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgdm9p
ZCBpbnRlbF9wc3JfbG9jayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7DQo+ID4gwqB2b2lkIGludGVsX3Bzcl91bmxvY2soY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+IC0tIA0KPiA+IDIuMzQuMQ0KPiA+IA0KDQo=
