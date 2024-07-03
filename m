Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92C792536A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 08:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D56110E731;
	Wed,  3 Jul 2024 06:00:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N0a+dTjq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB3A10E733
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 05:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719986399; x=1751522399;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zwZjbjwq5umTiY5BcijeihY7NRY4g42pT1hQ4+7/0EU=;
 b=N0a+dTjqK8nEeFiiQ+35zQP2ZwryAgTIBLhcj6QRKJ2d4OEMAVunJxcd
 +rB+M0Zv9sQtyGXYHIY2V7zM8PkvJ6jp0iaNiE3aOR9CwSr2n4CVA/hqt
 AOlOlEpLGpPZ96ovJO3wqIaxMo6kKd6n4/4LGzRt7z69FNN9Cw4Zh/8Zk
 2LWIEgbPf4sPuvNEoZlBPZQ856AoEgUJXr+tEm+4dAJBJl7Uz48Z60Gfw
 C17PCsaEKti0YTU0OSKW/YjWw1qwS9sVTe5eNE2Mdzu8/fqzTE+FbMjWG
 EDIoqrg5v9/yxfjAcuJWELcM7/IwQKQEchHmy6TbU95pvQVp8vKGFCdW1 A==;
X-CSE-ConnectionGUID: SnfE/wb2Qha4jftWqG2OFA==
X-CSE-MsgGUID: HjNOW32yT36G0nQ3JfAsQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17329271"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="17329271"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 22:59:59 -0700
X-CSE-ConnectionGUID: Rt/VVC1+QlGM3yjz5ZnZVg==
X-CSE-MsgGUID: FR8/pd8IRp6m05iYzkm4YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="46146362"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jul 2024 22:59:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 22:59:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 2 Jul 2024 22:59:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 2 Jul 2024 22:59:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 2 Jul 2024 22:59:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4UDnAuuBRoTsk+X/ISnzk6fnOHKXCDn29FZVx+9k6hI918LNL1Aa+0e9E4w7l238v/blsJlFXNUil6ZYIJRWH5xDq/krVkGRJnpOh8zTCSNGK6e9vvSnziQF2jYDU5U7fgpui3UIME7rs3xMIS1YbN48Tiko54xMOjc9zfa2XOg/xw5QATYU0oELvSJuhh3S6kKW4BH4U3fiKOaHtiX7qEj/Md7Bv9FBb1wgA5hEgEDPdHsHsS77kJB9klPFEdd8zc655jJXet/RzLFkNIvasJFNIMrCKkBCdHJ7yeoacE+8PhB1vykKjh/Riml2ocsb+zyLbWTZUWpF+2nrPqDRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwZjbjwq5umTiY5BcijeihY7NRY4g42pT1hQ4+7/0EU=;
 b=KSqNKJv1N7evSEAjeQP0pLfwH50Zi7uk1EarXVDNz4ZBPBVUR3DpVz+NtThuThdEbHI5mS3s+WrdLnUrrGpIvN72iOQkGc+E7wPqjf3kbtnJ8hFvUNov3aSSc70PzKcbkPvJfVAGe5bxoqLxAmctR+PsW8bfM0POaB6DtYGfChDcQPjWwviiQ9aqIphYao67VCwdoWiZFaeO+xu6CWsHYVQcwZRlpxeEWztbjMgI+LGcspbhAESYvDhsHw4nTld7bwbCZvZdhy4xbVKK0hi85ERC2d6htSlSov/I5w6TUKVPYnLyOdn8HZtqWsK62bonlWYUJCYTOxfpE9UiAfT0hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by LV3PR11MB8765.namprd11.prod.outlook.com (2603:10b6:408:21d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Wed, 3 Jul
 2024 05:59:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Wed, 3 Jul 2024
 05:59:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/14] drm/i915/dsb: Fix dewake scanline
Thread-Topic: [PATCH 06/14] drm/i915/dsb: Fix dewake scanline
Thread-Index: AQHaxmpV9IL2oRRSQ0epdnzmH3HNDLHkj0Zw
Date: Wed, 3 Jul 2024 05:59:55 +0000
Message-ID: <PH7PR11MB5981549BF7C9D42BB1AA856CF9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|LV3PR11MB8765:EE_
x-ms-office365-filtering-correlation-id: 3d461951-b491-42bc-0461-08dc9b255cfc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aElOczJQVVB0MENoVUhXTGltVVlJU0hLMkZTSjVEbnVwYTYyaGlGU3RrNjhs?=
 =?utf-8?B?RnlRT1BIVkVHVUJ3WnkxdlpXeFdHUkpZS1pZcVFvMWMrVC9lUlZrTzl0YkdW?=
 =?utf-8?B?bmk0ZGJCOG15b3oxZkFlZXhkSy9IR3EyUHd4clUrNDJSYW96amYrSTJjaFVv?=
 =?utf-8?B?M3BPRzYrekU4ODZQNEJpNVRqVGszN0hRQXd6T2MwRzlGcUJuTXRBUVptdDQz?=
 =?utf-8?B?Y0hRNUVSU080TytmMHBzWlRLZHRQU3NVdE00Sm1JbzdZcEpoMUtQZUk2Z2d1?=
 =?utf-8?B?VEtzeFJ2MHBWUkJzcUxqaWhNbkk3L1E2NUppdDhOc1dZbGdoQWFxZklCSmFi?=
 =?utf-8?B?cCs1Z0VFKzV2VUNqNlVlejhHUzUzY3RDeWh6MEdaWVdDd2h4OFF5YjZTNkJQ?=
 =?utf-8?B?YmdURU4zTmxYT2t6NXJabkd6UlhkZE41a1grR0ZvejQwMDQwcHhxTWwwMzh3?=
 =?utf-8?B?UWxyYjFkTVdha1VHcHZacTZXMzBkSEtEUGgvVjJMSHVIMGZrc2xjMERvK2dz?=
 =?utf-8?B?M2gvYllheDlrSjVmcDdkc1pubWdnY0tYYTdMZ0pmdCt6SnJtcjk4RlcrdWQy?=
 =?utf-8?B?UjRoR25FSzMyRW90dU0zbWppSXB6YnlQekRZbWM4YXFiODg0ZUNic0pHT0Rn?=
 =?utf-8?B?VmVJY1IrcTRYaW5udzJDUjRjMjJTZUJTYTVWeVRUc0tacnNxOEVBSGlQdWJC?=
 =?utf-8?B?WXkySUZVUUJNUGh4aytTOGs5WW11Y2F1S01VZm1ncnZJQmRjVjJaNlNjVVlk?=
 =?utf-8?B?WFd2c0xkQ1NrZkFrR3FMak9xdlpwbFJ4SHI2TS9VZ1R0cEVZTFhxVjc4V3NK?=
 =?utf-8?B?VWJZWXI5Q0pTdUVxUFBXeWMxQkdwUmVEQXpUR1EvY1BidE5NR1ljajVtOEpn?=
 =?utf-8?B?eUxYNks4N2NpQXpjbmlqWWVvaEZTSVRXVGxKbXdRYm5mRFlMc0hmOHRFcWgz?=
 =?utf-8?B?eFJKc1dZNmlsNW1xY1ZjM0pPWUpXOXVOYVR5em1TeitEVm5wbmxQczdQTzMx?=
 =?utf-8?B?OTNucy9iUWRWbzhSVDd2c2JSRnM1Tlp1RnZhVnQrNXljS1MrUkFkdklLV1lH?=
 =?utf-8?B?bVFqV1dNUnJrS3lCWThTWU5qd2IwbXZQbnNwNEJmK3pCRTNLYi9HMytKT1Jy?=
 =?utf-8?B?ZmVUOFVFOU1tMjlPRXc1TWpkVDRkTFB2Y1owVjJuWkdwZGJFT0M1RHNzMjV0?=
 =?utf-8?B?YXhSRFV1cXh0ZzVmZFc5S0pGY1hKekNJZUVBandLSE5YT3BhZ3MvZnFFY2dH?=
 =?utf-8?B?eVpNQ2ZRNUJPSFFNZFVYWjdHZldCc3h6THlrU29nQnVTMnowQlpmNkdGdkRx?=
 =?utf-8?B?NUpRQXJ3SnpMT3k0RDE2VXE1TUZBa04zWFFLWjVXeitoYXMyeHIvRmZYQysv?=
 =?utf-8?B?R3llL1VnN3F2akp6eHR3OENINkdMVk54TWRxV2hkaGNrSEZMVFN4ck4yUCsz?=
 =?utf-8?B?Q01EUGRrZTVPdWJ2WlVWRnBxOEFTZTc2UUJaS0ZOYmNjb1pzSkRLNXZCWGt0?=
 =?utf-8?B?bFVTOXJRQllhRXg2L1lrU2kvTlhOaGx0N3Bhd3JzTGp2d3FqdHdjM2lBN0JI?=
 =?utf-8?B?T29IWHZYdWkxbWk5L2Q1SDdlSGtLalhjOWorRDd2Q1V4bEZHR1J1WkNZMUt1?=
 =?utf-8?B?MmlBUURJU0QzZ25KTkJWZVZPYnZpY0NGU1RTQkRkZlI4UmJQdmVDc2dhZ3ZN?=
 =?utf-8?B?em5vMlVwSUpGMm5FZ1ozOG8xby9GVU5oaU0rVEdKMGZ2SWZYL2JRSFN3SUtS?=
 =?utf-8?B?WE9WMEJ3R0VxbzhMU29rZDN5SzU1WGZscnhDVnZ5VXJiM2lJSE5XWDRML2U0?=
 =?utf-8?B?Q3RROHJJbEN2M1JzN05pTTBNZ1BvUGFJME5qN28ybjFoQVVuNHFZWndMU1Ft?=
 =?utf-8?B?VG9ORXlKVGtQTzZ2YXN4K1RqbzNCNGNsRW5wM2ZBTGt0WEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkE1cEtudysyQUhiWE5XSWFCeFhaK2pnREhFVU9Nc1pBVzRCREthSTVheHVv?=
 =?utf-8?B?Z1dFRCtwZkJKNXhZMTVPQlZaNUJTemk3UjBhSkhMSzhLQnl4dTBub3F2UnVl?=
 =?utf-8?B?b01ZNGdTclJxeVU2RHpaN1h4K0N1UGhIbkgyQlNHWm5SbjJZNkFFVDRGRXBM?=
 =?utf-8?B?ZVhSYXJkdTd6T1I1T0pybUxsaUZLdWhuRENFMEdlS1p0aXNnVVJUeEpobk9w?=
 =?utf-8?B?VmhpVnI4SjhRb01ja3hrUituNlJYMXFaRXRwa0ZuL29IODhSVDVHeVFiZjBs?=
 =?utf-8?B?OUJuRkpoMDN1bWVyajNDVVcvTUpmUytyRVhrYWxxcmdDV2I5N1VpN3J1ek9z?=
 =?utf-8?B?S2hNT3hodHdzMEU4U3hGdFVVbS9FK2lieDREeFVPS0lTaklKRERHVmhJY3RU?=
 =?utf-8?B?TWVRTitWN2h2RFViRjlwVmVCcFZBdGFsUVFBbHVQK3VkdVBMaHYzNCtUQkpD?=
 =?utf-8?B?SFl4SnBUUzJscjJLQ0NvOVdiOTZhMytTQmlxOU5nV1lTVmxWMmViUTRKTEJr?=
 =?utf-8?B?alJiTEljNGhINVNiNXl0dTYrTjRwL2pzVmFodUdsMVc2Y3o0K3pWdVliUGVQ?=
 =?utf-8?B?RFBzSzYyNVpLNGNUMlB4NmtOQkVMbFdQaHFUKzE0Y29OOFRjWjNNYWZ4Ukhl?=
 =?utf-8?B?V2E3VHZjUFJ1ZGVuRU1nN1hOU25lUi82QWY5ZHVnelVsb3ExbVQxMFd3YTdO?=
 =?utf-8?B?N0ZHRWxTWjlFYnE5VWh6MHdtciszd29uM013T0N3ME5Sd3U5OVJPeHJQb3Bt?=
 =?utf-8?B?ODh1ME1JcmkzNmFORXpuOVNWbFJzcUdMWDRxeENnNlBGVlRsWForT1dRam9q?=
 =?utf-8?B?M1VCcHMxRFVkVE5kNmo1bGZGZDZPS0VtV1hmMytSOS9ZK3NwME5YdFlQcjBw?=
 =?utf-8?B?SDdpM2J1UVJRWmQwQjdWcHFMdFl3MjFEcm1yZ0svR1FMWkNYUTk0ZjZ6WVhB?=
 =?utf-8?B?cm9TcWV2Q2ZpVjVnSHFGRDF2N24xYWRyQlN6ZmZmQ1RuVm5ZaWRKWVdObHor?=
 =?utf-8?B?NFBNOFBiWXpEZzJCejJKK1lNLys2Z2NVUFU5dWlOYVJtQk1WWDIvY0hLYzVo?=
 =?utf-8?B?Z1cxQXlQSlhjclk5VFM1WDRIaHVUOVFvVXRReWw0NFJ0dW5WbnAwS0JDUEZ6?=
 =?utf-8?B?ck1kRnNHUU0zZlZBbjc2UDFRUTNKVFUyeGMzaXhqRUNFaWxzUXM1VktiWVdK?=
 =?utf-8?B?VWtlMVMvQnBiT1UxOVRvV2xEY1NzbnlvRHBPOGpaQ3M3c0RIeFd3eEttbE0v?=
 =?utf-8?B?alpqa1pIaTZBT2w5RzFxNkIyYTBCSENUdUNoSXJJeUY1d3NIK2NrVjM4amZ0?=
 =?utf-8?B?UGNOL05sRnlxc1ZuMm1ERjhOdWpibUlRSlRWVy9EaDlxc3ZlNE13S0JGL3dp?=
 =?utf-8?B?T3JpUzNtSzFQZFdaTWo2eHZraDB6czhoOThSTjdRa0hqMG9TVnlBT1ZwQzB6?=
 =?utf-8?B?QjVocTRQY2Eyb21TejlwZzRPcm1WWkVieDg2TXJkUFpVQnZxSHc5dFRWVVBV?=
 =?utf-8?B?VG91K01HZkNRRE1zVGhnbkdrclhsWmJSTzNWaDhrQ0IrcVAxbENzT01xWGla?=
 =?utf-8?B?aGN3S1ZYWUVwVGgvR2NRTU1CVTZoWXd1QjIvVXZQL1FDT2tmeFU5RnpyMURF?=
 =?utf-8?B?N3h4VE45dlJkQnpEekprcEVmSmg5SHo4RDl2eUxMbExvYjV3U3BnMlNGWmo2?=
 =?utf-8?B?c3YwZUlXc0NGMnZJSEZUTnlNWmNXRGlvdlVHeWh6ZXBEUUFCUXBodm5GSmtW?=
 =?utf-8?B?aU9MN3pIWHdPYXVwdHE5VElZSk9HbXRKTlNuY0IydzhLVTZYQlBXU2o1RnFW?=
 =?utf-8?B?UGUreGEwOXR5N1lYd2pVUk5USU1KTHJmOHhQMHdzbXFwTnJwMnowMURscmpz?=
 =?utf-8?B?enNtV1BPSExpLzRRYVZBMWptYW51N2VFTVhNa05UTUI1cGRmS29VUzVkRGMr?=
 =?utf-8?B?c3pPSnAxNmdrREd5cUtzb0ZHSmJOc0pLekFXOVR6aXYxdjd5QkZUdWJydnpV?=
 =?utf-8?B?c0NUbUFzSUpWWVNkU0hrTng0K1NDZ3VRbHJjZm5kZFlJUFJNZHo3WFdFRjJC?=
 =?utf-8?B?dkhhN2QyTm9TZGdZSG1jL0Nqa1AyazB6M2Joc1VEQzcxS29ZSjZqTWdzNFZV?=
 =?utf-8?Q?ZuofpSwvZHJSdVywTrXFbfqHr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d461951-b491-42bc-0461-08dc9b255cfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 05:59:55.5468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tKDj/+iWMTmQ59YXFTn6AA6+UwfgjQVmDFhyX48k0JigytfJkuPQIu53InbawLm6iY9LRRFbUox8xG9pb5Ydsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8765
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA2LzE0
XSBkcm0vaTkxNS9kc2I6IEZpeCBkZXdha2Ugc2NhbmxpbmUNCj4gDQo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkg
d2UgY2FsY3VsYXRlIHRoZSBERXdha2Ugc2NhbmxpbmUgYmFzZWQgb24gdGhlIGRlbGF5ZWQgdmJs
YW5rDQo+IHN0YXJ0LCB3aGlsZSBpbiByZWFsaXR5IGl0IHNob3VsZCBiZSBjb21wdXRlZCBiYXNl
ZCBvbiB0aGUgdW5kZWxheWVkIHZibGFuaw0KPiBzdGFydCAoYXMgdGhhdCBpcyB3aGVyZSB0aGUg
RFNCIGFjdHVhbGx5IHN0YXJ0cykuIEN1cnJlbnRseSBpdCBkb2Vzbid0IHJlYWxseQ0KPiBtYXR0
ZXIgYXMgd2UgZG9uJ3QgaGF2ZSBhbnkgdmJsYW5rIGRlbGF5IGNvbmZpZ3VyZWQsIGJ1dCB0aGF0
IG1heSBjaGFuZ2UgaW4NCj4gdGhlIGZ1dHVyZSBzbyBsZXQncyBiZSBhY2N1cmF0ZSBpbiB3aGF0
IHdlIGRvLg0KPiANCj4gV2UgY2FuIGFsc28gcmVtb3ZlIHRoZSBtYXgoKSBhcyBpbnRlbF9jcnRj
X3NjYW5saW5lX3RvX2h3KCkgY2FuIGRlYWwgd2l0aA0KPiBuZWdhdGl2ZSBudW1iZXJzLCB3aGlj
aCB0aGVyZSByZWFsbHkgc2hvdWxkbid0IGJlIGFueXdheS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmll
d2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCiANCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMTAgKystLS0t
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRl
eCBkM2U1ZTUyNjM2MDMuLmU4NzFhZjU1MTdiNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC04NiwxNiArODYsMTAgQEAgc3RydWN0IGludGVs
X2RzYiB7DQo+ICBzdGF0aWMgaW50IGRzYl9kZXdha2Vfc2NhbmxpbmUoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGNydGNfc3RhdGUtPnVhcGkuY3J0Yy0+ZGV2KTsNCj4gLQljb25z
dCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0K
PiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4gIAl1bnNpZ25lZCBpbnQgbGF0ZW5jeSA9IHNrbF93YXRl
cm1hcmtfbWF4X2xhdGVuY3koaTkxNSwgMCk7DQo+IC0JaW50IHZibGFua19zdGFydDsNCj4gDQo+
IC0JaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUpDQo+IC0JCXZibGFua19zdGFydCA9IGludGVs
X3Zycl92bWluX3ZibGFua19zdGFydChjcnRjX3N0YXRlKTsNCj4gLQllbHNlDQo+IC0JCXZibGFu
a19zdGFydCA9IGludGVsX21vZGVfdmJsYW5rX3N0YXJ0KGFkanVzdGVkX21vZGUpOw0KPiAtDQo+
IC0JcmV0dXJuIG1heCgwLCB2Ymxhbmtfc3RhcnQgLQ0KPiBpbnRlbF91c2Vjc190b19zY2FubGlu
ZXMoYWRqdXN0ZWRfbW9kZSwgbGF0ZW5jeSkpOw0KPiArCXJldHVybiBpbnRlbF9tb2RlX3ZkaXNw
bGF5KCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlKSAtDQo+ICsJCWludGVsX3VzZWNzX3Rv
X3NjYW5saW5lcygmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwNCj4gbGF0ZW5jeSk7DQo+
ICB9DQo+IA0KPiAgc3RhdGljIHUzMiBkc2JfY2hpY2tlbihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykNCj4gLS0NCj4gMi40NC4yDQoNCg==
