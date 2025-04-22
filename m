Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66302A96E23
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 16:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D469210E5BC;
	Tue, 22 Apr 2025 14:16:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkMTNNZ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD8AF10E5BC;
 Tue, 22 Apr 2025 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745331404; x=1776867404;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K5yXB0+USetreulGrr5t3WW+zLLP4qoTjMdV2sMJnFM=;
 b=NkMTNNZ/vAZRyI4DPt+aGHBsBrQ/j+ZmIum7rQCr+dzwZfpKZNCPOvN+
 WVraKecdJelxBANhKjNwan4dwyoJFz3Eu4C9pNWfgA+T9plyRAe3LbNUO
 YaKQahVZA6HRyShl/c6s8nZ4ZzeH98lxT0v/8nOxH2Xv0UOGoruE6tZR2
 7Js/yhQn/98GvAe5gwii2iuIVdF/3jA1QBlWVaUHNkqstJ0GFsPLsjVn0
 agRIPdlG9WpAzyQplI4zAuQ4rVWHDckWDfM21fZjQ/wWs2Wfp3kjA3pCi
 twKsdPIekymEZdO8FDMym9GcwCx+S1wdQByeJPwZck4/gxaUOlhglztWX w==;
X-CSE-ConnectionGUID: /9OM7QuGSKy+p6LD2hSuzA==
X-CSE-MsgGUID: M8Q9KEcFSleuxMSspoyH5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="34509463"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="34509463"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 07:16:44 -0700
X-CSE-ConnectionGUID: mYF1uvKhRKi8Z0wprQujTQ==
X-CSE-MsgGUID: 4L7WzFKLS+Wwhqdi6HgFHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="137114467"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 07:16:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 07:16:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 07:16:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 07:16:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=syj8aewHrU5qowzs4PZ7MI4w9hecm0lRpq/mTXWKibSgR9Ys+4RZpmPXAU61//4TzumAWMo1txRvbzSdZBJS9UcY1vUaqA+xHgXeozeoCEUDHk0yXiC+rakjsxhX76nZwA/co7mWiC2uBUtD9Dd3np65hTpv49SzSYcGLoX9nqsGPQl+6ri83o9xVYA2DxL0yOko6tQJnQLCcjdukB/imrZIov3019TF00usWe8GZwQWaoASzfsXH3XntZnTn/62AhrbQCUYkqnj9zFSNKffESldL2ur1a2LIheRKDrIQ4NI/UzHY/y/6UxRp2s/3EnWktCoPKW5g60FjnVJdRQwZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K5yXB0+USetreulGrr5t3WW+zLLP4qoTjMdV2sMJnFM=;
 b=iP3dwUmKk2hxoUnUqDOUNC7q6FbR2RsuA0noTKpSDqoPw5Fn0Z3lJ7jO6832sPhaVVTkM8ukFfIudctIqj6yOZHTjM8iO31q8yvBlhLH22A2e59nHhp42tO3C3yQI/YnTfGpD/3cmtkROo4bp1A2NiSSdpCxsSKqvrW/5i+leGNbBQAh7etgNPb00HGUPd8+KCjA8w2lhlP2j21ntZ3NcnEUkPGF1bN4UnEFYayXJs5UNRy0fvj7M+2SLihgl8Yev/yKIeYSkykIcDz0QkJYLPssuYY3DPBTi4WJ5dxff/qpY8rS8QMGz7aZ2lEunAOkPYtyCCvfspSZ06buwmjI1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 14:16:40 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 14:16:40 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbr4A0MxWcSQqjWUy4/RMUmaYNOrOvmgeAgAAmUVA=
Date: Tue, 22 Apr 2025 14:16:40 +0000
Message-ID: <PH7PR11MB59813454F889264DD1E511E1F9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
 <20250417094123.1662424-7-animesh.manna@intel.com>
 <86e796f84ea8be39f62434b9bb4f53b00b71d679.camel@intel.com>
In-Reply-To: <86e796f84ea8be39f62434b9bb4f53b00b71d679.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MN2PR11MB4727:EE_
x-ms-office365-filtering-correlation-id: d3f20ad0-0725-4ecc-ff14-08dd81a84cf5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TGNleEp5ZWtLZHc3TEF4aUhTZFpXdWt2NWtYem9BUlJFa0oxU1ZEN0lZc1Q1?=
 =?utf-8?B?emJWM1lXL21TNjRtbzIvR3hDNVBEUG1pYmoyalFacWtqajRRYnZRUVBabnR2?=
 =?utf-8?B?ZXRmaGp2RG1SOWwwWnNkeG1tZW0xbzZodlA4U0xSV2l5UVN0VEFOVVRiSnVK?=
 =?utf-8?B?eEFZUkVZTCs5a3h3eXV4QU1tU1IxS2hjT3Y5Mnh1U3V3SjNEd28waG5Lb0Uv?=
 =?utf-8?B?KzRuczlRaTB5d1RhOWd5RTAreHNQWUxubHZ6ZkdrSXNBallvUU1CMTAwcDBy?=
 =?utf-8?B?ck1FVENtU2NoTXBycmtoSEI5empIYzZYL2Nucnk3QmEyOFVOK0tnYUpSQkM4?=
 =?utf-8?B?TnRmMEdNRmdLRFNNbXpuSWJoekt3RGg4T21yc2N2ZFhTS3NIMFVtL1A1dVQ2?=
 =?utf-8?B?VWxoL0tqZjAzejIzRDlzbXpobTJCNnUzNXNWekZGQlU1MHlJbFFZTXJhVWlP?=
 =?utf-8?B?Zm4zWXBrMVhxSkpMRDZmWkM1TlN3U3VXbGVSZVN1clZpSW5lUnFYcVVsK0k3?=
 =?utf-8?B?a3A5VXVBSHZEV3dvdllieDF6d0N5dGFXazhNZUJPWC9NLzVKbUFXSTVHZTNW?=
 =?utf-8?B?WW82dnNrNlh1Q2I5NG5oNmZwc2hEWktpREp1TEdWeGZ6ZEV3WG1ZMVNUWmxs?=
 =?utf-8?B?cWJvelo0NWlEMHk3ZHlpa253SU5ZeHFGaTA4N3NxSEhkWDNLL1B5VW5MdE9t?=
 =?utf-8?B?Uzd2QVU1WkpjNERnMEdWZmVIb2FUeDN5MU1aYjV5dEhZV3g0QTZOVENPdXBG?=
 =?utf-8?B?UklGYjVWNmppWm8wQzhEbTVZMU5FV0hBT08reStueTFrK0Zaejl6cXpDMEh3?=
 =?utf-8?B?K21sVk53b1U3anMrRnJQVUFGUmRwZXVURDM3L3FmN3ZrenNZT0VIRlBOYzVP?=
 =?utf-8?B?WTYxU0NiR3FXMFhMYTYxbmVsZEt3dk9mRk1UYWYxYzhoWjJwYjFSUEptaElK?=
 =?utf-8?B?ZWswTmJMdzhlam9hUEh3SDhDRnppV0t3UytZQ0daMjF0RzY2VWI5a0djQmhW?=
 =?utf-8?B?VDBQazFNZWhLcng5Qkd2TzhOQnBxYUxVYVk2eWlEbXc0VGdqdnBydk9IVXdV?=
 =?utf-8?B?M2FEUkh1QW9JQVBkS2dzL0FlZ2ZpdXZRSEtSNDBCK3pKazlXWFk0UWpmTCtH?=
 =?utf-8?B?cCszY3JpaExEcENNaThDTmNhUHBiRVBkWTFaUDhJZ3EzSzhhbHBmdWs5WmNT?=
 =?utf-8?B?WWVWOG84YjBXZkdxcWlYTXFKNnNpMVhyUUcwSlpTbUFTQitYYStzRW5SWW9i?=
 =?utf-8?B?cE04d3U2UDB6cW9VM0tybG5TcnBwd2o3aTU0WmlLcEdTYkpJTTJTVHRJOURi?=
 =?utf-8?B?Rk5Fc0hBRkM1OG9NWVZaOHQ4ejRRMUhnTlBYSkg1RUFFSlZMWXBRcnVrU1Yw?=
 =?utf-8?B?cUlERjhic0FDWDFKVUdQSERhNFhlK0NTL2dwa2pvTE1VS1JTMTZ5MVZmakVH?=
 =?utf-8?B?ajVGbmdvMXozVTBDamU4RlM5dnNBTTFyNG5Wb29CTytUY3Z2VEMzQytNSURY?=
 =?utf-8?B?MVVMcyt2UnBzQVFJeTExbzNGUTJTS2NCQ20reUdtS044Qkllc2xCUmJONU9a?=
 =?utf-8?B?a1VraFpaSGt5aWtZNXVlZ2VwTXZYV2JJeXEvL2VHc0F4Qk1jc1ByT2JYNG55?=
 =?utf-8?B?ck02YnIzRlR3M3RLRzNBK2l4QVJNWWt1K1E2ViswMGIvVCtmUmpVRVZ3RTV1?=
 =?utf-8?B?b3dLRHpHREkzYStzbWRIZ0w3NGhFSlFON2FkeUxjMjdya2tOcm42b0pTYzc0?=
 =?utf-8?B?Sk1tMUQzalZpOFRYcDhyZXBBRnNXc0wra1R1QzVvb2dtTmtoZU9UNU9GYmRo?=
 =?utf-8?B?NUtyM0hsQXhwVldnRFkxVGsyVThwY1dTUkpwN2phdUwzelVTYU9Wd1N1NW5y?=
 =?utf-8?B?TG5YeUxwZVBZb1NIenBQc1VpWGhESEU0dTFVa1N2WXpXd3p4aTQ2RTRocWUy?=
 =?utf-8?B?bkprWnQyK0x6VXhBTi9leHpJV2VjVS9NSnh0TjhuQVZMU25KUmUrUVNCUTds?=
 =?utf-8?Q?hNfgt00VNIB921ngNmX1v9GqbX9q8s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGpnT2lyemx5aXNxTE01TXVFUXNZeXJuUFFwZ1NPTkRHN0NTcjdEdkRuOUVI?=
 =?utf-8?B?ZEU1dnlpdDZwZW1wVjhrR1VTZFNKTmFLUDV2N1NIai9RazBrMXdvZWhrQVlO?=
 =?utf-8?B?d0lJRW9NcEJDYTNPdUs5dkkrTGRBdC9uT0t2aUFnOTUvU3pRbzBSVjhHZlJQ?=
 =?utf-8?B?dDRkVkVYbC9ZMHhpcUh2VExLT0puOVNhY0V2aTVtZURNYmVqS2NTTUZUUUFO?=
 =?utf-8?B?TkhENHk0NytkZHhqb2ZzdXJ5Vzd2UUpoOWxLeldxZmpsYlNFbnBod0RVcHFv?=
 =?utf-8?B?ckZuaWhTblBXLzVNa0tHMHAva2duMkt5WTdORWY3dHpNRzZ5Q0dCZDZObFA1?=
 =?utf-8?B?Q041MlNIVnZWbStTZXpKVEFZT0pTS2dQcWNnblc4bXhLV1NvVTh0d0htVzk5?=
 =?utf-8?B?SlFieVRwcE0xNHgycjMzSjJBOFFERUZPQ1ZVb3dEUk9zd3VtdGFjRCtjNmJo?=
 =?utf-8?B?WnJhVzZscVViUWhEODNKc1pqaGlSNktseTQwc3ZiMTd4d0dQMURnWHNDU3g4?=
 =?utf-8?B?WFRGVHlLL3FJMkZjZzdaTXNkeGVWQkFIaGlCWjZ5ZHY3Mmp5UVUwTjBBQWZj?=
 =?utf-8?B?MkNvamNpdnNqUFdUNkpMMk5jMDNtdUk1S0RKSlFhVUphdVpMbnNyd1BkU1JY?=
 =?utf-8?B?bVRQOUV2TWRUamxtY0R4NGRyMjJseGtnd3B0aXRCeVlCNHF1dXZ6SHF2TlRB?=
 =?utf-8?B?ZmRKdk1MYVNNaVh5ZjZTZ1FJRVFWaGZNZUpKRmRqWnZYMUpOZ1hXY25XUnJy?=
 =?utf-8?B?RGMxSEM0RDZadUdyRTVDWWVkNWoya3ZtN3JYM1pzWjVkanh4VHZBd0hOcC9h?=
 =?utf-8?B?dDh2Y3pwSkp6TTRoaEkwNmx1WmFZR3d5a3kxRkkzWktEV0hzcWVrTDNGS2NL?=
 =?utf-8?B?V295aUt2M0pPdVFoYU04MWVIUE5TbDVPc3JncTBRNDFDUnpkTTRvSHhOb1NP?=
 =?utf-8?B?MWdrQklyZnc3V2dhbVZiWlpUR1oyOWcwdmNZb2Vpd0ZiMkp5MjB0blJFM1NI?=
 =?utf-8?B?KzZBM3RabFh1RUdZOTMycTNTUmdzOHlDb2NzbFQ4SnJuS2p3UDR1VmFOUE5s?=
 =?utf-8?B?QUNpNFo2WGhIYjdyd0VDZEREMjRpSWlmd0hKbFN0VDVja2xoU2dWR2pHc3Vt?=
 =?utf-8?B?NFJFSU1tbEtJU2J4anlySUZsVCszYnB2VXIwQ3hRM2Rja2UzVlBpeWtVZVg4?=
 =?utf-8?B?OTkrZ2p2Q044WU5GNzBUUUtMWFFuakFNRndETTNVK1U1SDhsWFBnS3U5aWFy?=
 =?utf-8?B?VDRsa2p2RHF1UnhOL08vQ2ZETlRNRjcrd0sxTDlXU0IxWDl6SkxKVFdiTGlo?=
 =?utf-8?B?NUlDUnFDZjdwdGlVNU5DcjZiRE9SZ25IYWxVa0YxN3F5ZGl3eVp1SEFGeG9K?=
 =?utf-8?B?b1p4ak5wVmVJc2tiV0RIQnp0eU1pNDZWc2xGNWxUOFNtWGZKdE1KMWI5cEtX?=
 =?utf-8?B?VEpoYnFHZVk5Q3JEalNmeE84aHJ1QTFLWGxiUDhpU29LRUtrOUxzdmhWRUly?=
 =?utf-8?B?TTk5YVFVajdzenVYNVFwYVlhbEtMaUJVSGlSUUlQQ2dUTUtENUg5REZLNXJq?=
 =?utf-8?B?d2k5M0dNNXZXRFk4bGJlYTJKYzlYcXg0aXRRNEtHOHVVZXRVL2U3OVdRNVdj?=
 =?utf-8?B?d2VTVi9rekxNNWVTSGFvcUdBOUhsSEtYV29uVm8xNHFyVzkyN2NFRTFaTCs0?=
 =?utf-8?B?dHRPckFuVk01ckpxekt0T014MkhQT3BqUGgxQSsvTE40bTdTSXpMUWppQnpC?=
 =?utf-8?B?WlFpM3FIMlJ4ZDBlVmM4RVY0bXFLeU9FYzFJOFNObUZOd2pXRUEzSHF0Snp5?=
 =?utf-8?B?Zzk4aXVtcWtrQTNrVm9hbjVtWVE4OHRUcUdaZ0NMV1ZsbU1YZlFBeTJ1OVJH?=
 =?utf-8?B?aTF5WnNXR1kxajRBRDllR3h0N285Q09qeDEyTmhzeUZGUjhtVElNT2RwMjNt?=
 =?utf-8?B?OTNnQnUrbTRtbS8rT1ZMeU1HT0xwRFZDQ3lPYWd4eGp2c3RvN2p5Z2NlaHJo?=
 =?utf-8?B?Mnk2MWR4S3JIMGZZQ3ZXL3FhQmtTTU9Bdk1XeHpOb0ZvVVYzRVNDajQvcTFy?=
 =?utf-8?B?RFBsR29RWFN0dlVxdDhrUUYyc2hmTWJhQkNQVzUxNWQvT2xuK0FHUGQyYlpk?=
 =?utf-8?Q?h5sfyF2FlfWRtvvoRltya9TdW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3f20ad0-0725-4ecc-ff14-08dd81a84cf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 14:16:40.1599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +uzATB0yZmp5QysClA6g8W8SV8W0kRwq1x9EKcpcjeooamM2FHTGo/aGwM1AFvIwcxi9//Lu6yc1Y445LIUyaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDIyLCAy
MDI1IDU6MTkgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTWFubmEs
IEFuaW1lc2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
OyBCLCBKZWV2YW4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2
OSAwNi8xMF0gZHJtL2k5MTUvbG9iZjogVXBkYXRlIGxvYmYgaWYgYW55IGNoYW5nZSBpbg0KPiBk
ZXBlbmRlbnQgcGFyYW1ldGVycw0KPiANCj4gT24gVGh1LCAyMDI1LTA0LTE3IGF0IDE1OjExICsw
NTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IEZvciBldmVyeSBjb21taXQgdGhlIGRlcGVu
ZGVudCBjb25kaXRpb24gZm9yIExPQkYgaXMgY2hlY2tlZCBhbmQNCj4gPiBhY2NvcmRpbmdseSB1
cGRhdGUgaGFzX2xvYmYgZmxhZyB3aGljaCB3aWxsIGJlIHVzZWQgdG8gdXBkYXRlIHRoZQ0KPiA+
IEFMUE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQuDQo+ID4NCj4gPiB2MTogSW5pdGlhbCB2
ZXJzaW9uLg0KPiA+IHYyOiBBdm9pZCByZWFkaW5nIGgvdyByZWdpc3RlciB3aXRob3V0IGhhc19s
b2JmIGNoZWNrLiBbSmFuaV0NCj4gPiB2MzogVXBkYXRlIExPQkYgaW4gcG9zdCBwbGFuZSB1cGRh
dGUgaW5zdGVhZCBvZiBzZXBhcmF0ZSBmdW5jdGlvbi4NCj4gPiBbSm91bmldDQo+ID4gdjQ6DQo+
ID4gLSBBZGQgbG9iZiBkaXNhYmxlIHByaW50LiBbSm91bmldDQo+ID4gLSBTaW1wbGlmeSBjb25k
aXRpb24gY2hlY2sgZm9yIGVuYWJsaW5nL2Rpc2FibGluZyBsb2JmLiBbSm91bmldDQo+ID4gdjU6
IERpc2FibGUgTE9CRiBpbiBwcmVfcGxhbmVfdXBkYXRlKCkuIFtKb3VuaV0NCj4gPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+
IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKg
wqAgfCA0Mw0KPiA+ICsrKysrKysrKysrKysrKysrKystDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoCB8wqAgMiArDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMSArDQo+ID4gwqAzIGZpbGVz
IGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBpbmRleCAwMTk0
OWI5MGMwYzMuLjNmYmU4ZWNhMTMwMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAgLTM3NiwxNSArMzc2LDU2IEBAIHZvaWQgaW50
ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKg
CWludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtDQo+ID4g
PmNwdV90cmFuc2NvZGVyOw0KPiA+IMKgfQ0KPiA+DQo+ID4gK3ZvaWQgaW50ZWxfYWxwbV9wcmVf
cGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICsJCQkJ
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlz
cGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiA+ICsJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ICsJCWludGVsX2F0b21pY19n
ZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ICsJZW51bSB0cmFuc2NvZGVyIGNw
dV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ID4gKwlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiArCXUzMiBhbHBtX2N0bDsNCj4gPiArDQo+ID4g
KwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0K
PiA+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+
ID4gKwlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+ZHJtLCBlbmNvZGVyLA0K
PiA+ICsJCQkJwqDCoMKgIGNydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gKwkJ
c3RydWN0IGludGVsX2RwICppbnRlbF9kcDsNCj4gPiArDQo+ID4gKwkJaWYgKCFpbnRlbF9lbmNv
ZGVyX2lzX2RwKGVuY29kZXIpKQ0KPiA+ICsJCQljb250aW51ZTsNCj4gPiArDQo+ID4gKwkJaW50
ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gKw0KPiA+ICsJCWlmICghaW50
ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJ
CWFscG1fY3RsID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBBTFBNX0NUTChkaXNwbGF5LA0KPiA+
IGNwdV90cmFuc2NvZGVyKSk7DQo+IA0KPiBIb3cgYWJvdXQgaWYgaW5zdGVhZCBvZiByZWFkaW5n
IHlvdSB3b3VsZCByZWx5IG9uIG9sZF9jcnRjX3N0YXRlLQ0KPiA+aGFzX2xvYmYgYXMgaXMgZG9u
ZSBpbiBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlID8gSSB0aGluayB5b3UgY2FuDQo+IHdy
aXRlIDAgaW50byBBTFBNX0NUTC4gUGFyYW1ldGVycyBhcmUgYW55d2F5cyB3cml0dGVuIGluDQo+
IGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUgd2hlbiBBTFBNIGlzIGVuYWJsZSBmb3IgTE9C
RiBvciBQU1IuDQoNCldyaXRpbmcgMCB0byBBTFBNX0NUTCBtYXliZSBub3QgZ29vZCBhcyBzb21l
IGJpdGZpZWxkcyBvZiBBTFBNX0NUTCBhcmUgdXNlZCBieSBETUMNCkFuZCBkeW5hbWljYWxseSBl
bmFibGluZy9kaXNhYmxpbmcgTE9CRiBjYW4gYmUgaW1wYWN0ZWQgdGhvdWdoIGl0IGlzIG5vdCB2
ZXJ5IGNsZWFyIGZyb20gYnNwZWMuDQpTdGlsbCBkbyB5b3Ugc2VlIHRoaXMgY2hhbmdlIGFzIG5p
Y2UgdG8gaGF2ZSBvciBtdXN0IGhhdmUuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IEJS
LA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gKw0KPiA+ICsJCWlmIChhbHBtX2N0bCAmIEFM
UE1fQ1RMX0xPQkZfRU5BQkxFKSB7DQo+ID4gKwkJCWFscG1fY3RsICY9IH5BTFBNX0NUTF9MT0JG
X0VOQUJMRTsNCj4gPiArCQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxh
eSwNCj4gPiBjcHVfdHJhbnNjb2RlciksIGFscG1fY3RsKTsNCj4gPiArCQkJZHJtX2RiZ19rbXMo
ZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2Vlbg0KPiA+IGZyYW1lcyAoTE9CRikgZGlzYWJs
ZWRcbiIpOw0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHZvaWQgaW50
ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gPiDCoAkJCQnCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gPiDCoHsNCj4gPiDC
oAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUp
Ow0KPiA+IMKgCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4g
PiDCoAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4g
Kwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiA+ICsJ
CWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+IMKgCXN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+DQo+ID4gLQlpZiAoIWNydGNfc3RhdGUt
Pmhhc19sb2JmICYmICFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiA+ICsJaWYgKCghY3J0Y19zdGF0
ZS0+aGFzX2xvYmYgfHwNCj4gPiArCcKgwqDCoMKgIGNydGNfc3RhdGUtPmhhc19sb2JmID09IG9s
ZF9jcnRjX3N0YXRlLT5oYXNfbG9iZikgJiYNCj4gPiAhY3J0Y19zdGF0ZS0+aGFzX3BzcikNCj4g
PiDCoAkJcmV0dXJuOw0KPiA+DQo+ID4gwqAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRp
c3BsYXktPmRybSwgZW5jb2RlciwgZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5oDQo+ID4gaW5kZXggOTFmNTFmYjI0Zjk4Li43N2JhZTAyMmEwZWEgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+
IEBAIC0yMyw2ICsyMyw4IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoAkJCQnCoMKgwqAgc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gwqB2b2lkIGludGVsX2Fs
cG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJCQnCoCBjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiArdm9pZCBp
bnRlbF9hbHBtX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gKwkJCQkgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiA+IMKgdm9pZCBpbnRl
bF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiA+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPiDCoHZvaWQgaW50
ZWxfYWxwbV9sb2JmX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
cik7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiA+IGluZGV4IDk2YTk1YmM5ZDViZi4uZjkxNDAxZWJkZDFhIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAt
MTE3Nyw2ICsxMTc3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1
Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiDCoAllbnVtIHBpcGUgcGlwZSA9
IGNydGMtPnBpcGU7DQo+ID4NCj4gPiArCWludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdGF0
ZSwgY3J0Yyk7DQo+ID4gwqAJaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMp
Ow0KPiA+DQo+ID4gwqAJaWYgKGludGVsX2NydGNfdnJyX2Rpc2FibGluZyhzdGF0ZSwgY3J0Yykp
IHsNCg0K
