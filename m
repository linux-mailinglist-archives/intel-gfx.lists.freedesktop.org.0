Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B58A16978
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 10:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CAE010E380;
	Mon, 20 Jan 2025 09:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CUK/eGHb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681A110E14C;
 Mon, 20 Jan 2025 09:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737365201; x=1768901201;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zZ2nMSkhsAXAEHFnASxpcdsJoszX/2+HW2uVrfCyng4=;
 b=CUK/eGHbxWastaVk5ciMOLhtb0T7jRJcsPmUKq+tWL7bQr3pv2XGBUx8
 ySBiv9ywvEybkZfbLbqyWNa6M09VG5XfqRivAbYcZBqIjSTj+nZVz2sOI
 nUXbf+l9+5HlTYau+ULpTcZW6e/IsMT9Ws9axolyonw+yyKNKNIk6+5Yz
 fhq5vw6lpysH97Qdy05sVqfN5/af0Zd7gGKkRAciNiMM0f1azNktctFwf
 Rs59A2svzqIyqc6j2DHRjOIehJb7y07HhtDJzaLS8NLsgixhHgCEpQqlu
 4mzG4dr27DVsaQtsY0mYSyQr67G7X4XvVcfTWNiSYAhwS+7+sZOAJ5S/J Q==;
X-CSE-ConnectionGUID: r28m5DUARFq/bwRSYTtKVg==
X-CSE-MsgGUID: m/85TxlUSfW+MMzz71MaKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="25339885"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="25339885"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 01:26:32 -0800
X-CSE-ConnectionGUID: ZJMnjzgWTLyOQZj9LRRJQA==
X-CSE-MsgGUID: y9TzjVe8Q06JwQXMP1J7iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106459935"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 01:26:32 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 01:26:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 01:26:31 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 01:26:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NRyv51DgAVbW7AghSRnpoqQTqjSze61kU02OdfpwJWHG+e68Ldkpr6lvisHbhn8YAzYl2nj1gZOgx+8uyGliFWqV94nXKkonH+9VEZqKE22DUQtRd8Tc4UtBGJI7OPKeb/WloSdG02DRdBv4yMp2sGeEAzC+eU6vyNgkzPFUrubWvj2XDbeoBE50fqH+msBhUkmEeQFpaaNR3yG9zA+q3N81dhYGXoaUtqZU3h7O82hKqTBqjBatjwupabUPMCouugWQObZMfBpjy0ahorxAp25Jku7lqNilesvpqNEVF4vIK8EkK3AJuXhKdvguzMckf9QhRvCgUemStm79TJFeSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZ2nMSkhsAXAEHFnASxpcdsJoszX/2+HW2uVrfCyng4=;
 b=yeXt4D8FSNRyB21mnlHdXDoHAIJUso9YKiCJ3dEbVQwpC7rnpE0JeIpBvg20+BvdsaZXbZ1JODAWvzvOzeFDR6dkwFZ33+FZDkBgipjEZyE6zbCCF6PbzB6qMLfSKdgE/Dnd8+N88VLJqcA8MvkMNA9xjq0vCtIpitOubZB/HTcYcWkKWr9HEPMVXRbf5Dc6J3umpsKPJCHjLnric35wBAtKHz6xxXaJto8KRo67ANFOI/kMpRooZJ+EdO/teOFK2eLjzHlPaQ/PZbuzaPMUL+oYxN+oQKvQbDqfcjmbJG9Eq7AdKOPwZiX7+Qxg4KfVe5VxMj9ccC2b8K0XsxyujA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SN7PR11MB7019.namprd11.prod.outlook.com (2603:10b6:806:2ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 09:25:48 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8356.010; Mon, 20 Jan 2025
 09:25:47 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3Q6?=
 =?utf-8?B?IFVzZSBzcGluX2xvY2tfaXJxc2F2ZSgpIGluIGludGVycnVwdGlibGUgY29u?=
 =?utf-8?Q?text?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9ndDogVXNl?=
 =?utf-8?B?IHNwaW5fbG9ja19pcnFzYXZlKCkgaW4gaW50ZXJydXB0aWJsZSBjb250ZXh0?=
Thread-Index: AQHbaxgR6mFDZ6Mqi0KB8zgaRQj9nLMfZO6g
Date: Mon, 20 Jan 2025 09:25:47 +0000
Message-ID: <CH0PR11MB5491C5AB383481C52DDB0C54EFE72@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <pusppq5ybyszau2oocboj3mtj5x574gwij323jlclm5zxvimmu@mnfg6odxbpsv>
 <173703350514.268104.10075462320208944554@b555e5b46a47>
 <rhpjcrtn7osi4sikg4oozsykiufp4lbumoi7ejk6avpih77lbg@osmgfwd6tsdy>
In-Reply-To: <rhpjcrtn7osi4sikg4oozsykiufp4lbumoi7ejk6avpih77lbg@osmgfwd6tsdy>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SN7PR11MB7019:EE_
x-ms-office365-filtering-correlation-id: 406c6a49-b74f-4f4f-af20-08dd39346c7f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TU1Qb2trbnFJZWQ2ODU0dXRrSE9POVVJNWRxZmtndk1UR0UrZUVGSnFUZUpY?=
 =?utf-8?B?b3NDckdLMS82VW83MVVSR2x0NmJ0bWpDZ2pjSTlqZ0kzWUF3Y01DMGFHK3RE?=
 =?utf-8?B?ZTRlOXA3ZW5ESmNEVE5xNTFWMWZOWTlwcWNwVGQ3UUIvOG9ramNVa0tHWm45?=
 =?utf-8?B?Ukh6aEExWkRBbmNQL0Nya21RMm5FajA0NkZBUGNsUEZJWmlMSVpwTjlHN1Q4?=
 =?utf-8?B?eStydDNNdWxmTzhBVzc1TjVTTVlEeDZqN1pPTTZhUEhMTytTRVZ1MytLTGxR?=
 =?utf-8?B?Y2pFTTYzaGJnVjE1S1E1N2F6QVdzVWN4UVNrNFZ4U2NtNTZvbG9kejZ4NVo5?=
 =?utf-8?B?ZkQ5UVZXZnY0bCtvaDJjYnIxR0VNazFMUGdGTFBvNmZXd1Blcm5TSGhHUVVM?=
 =?utf-8?B?UmZzMnRKd1hlZVd3bjVoNlh3WjYwdEp2Ry95dk5EalhnRHhxY0R2bUVsaGtp?=
 =?utf-8?B?VklqRXZHdjhzMzR2cHl6TkVrbTdjV05JU2JqRzlaUWlxMWNRVnAwOHpnY2pR?=
 =?utf-8?B?UGU0YVpUaTY0TlAvTW54b0t1YW1YUVMzdDd0d3RDUjc3ekluM0g5NVZTdklu?=
 =?utf-8?B?c1daLzhTcUlSTVJaOURRUGdDYmw2QnRrTEFBVTlhampNMjFaaHF2ZjNGZ1Rj?=
 =?utf-8?B?TCtNTTkweDUwWWF3RU5hSkNaakgyZzVKSzcyYURQR3oxbzZTQmhHZi9zbXpo?=
 =?utf-8?B?a3FVdURWUVpteDBScHVkbGJMR2dwdXY1b2Y4TmlEYTlYTzlxT2ZGSWNiR1lN?=
 =?utf-8?B?Y21oc0JNOHR4ZDFvZEQ4eEZkYVVDZVo3MzNtQWZWQkFZclpRVnNPaEZTOUw5?=
 =?utf-8?B?SEE2STRxdnhNcnJmOFJtRU4reTdPcTY0U2xHYVJMdGF0R0pkWWhwZWdValV3?=
 =?utf-8?B?cnVwUWJEMmNuZC9yZEJPeURaUDlEN2J6S2t3bE00L1dnMUl2aXB5VDZTZjBm?=
 =?utf-8?B?SGt3WjFma01qLy9PdU82OFlCSmc3U0NiMHRiRVhINU5ab3lWOExHd3VYL0gr?=
 =?utf-8?B?UC9oMDZ3emFhZCtXZVJscE4vNi8zcitNcWlXSGw0OWVvdHBKZXhBRnJWR25x?=
 =?utf-8?B?eldwbUUyRXowa21XaXV3NDdFLzhHeHFrNGo0TkNycVY0cHY1WWQ1NEVoTlVF?=
 =?utf-8?B?ZVZsMzJqcmZ2b3ZPMjVoT3MvcUxGNUxFS1hiQitNWkVzTUNCMzZXYnArYkR5?=
 =?utf-8?B?NURLZ25PODNXdUQrS2c2N2ljRHFjNGhwWEpudFhJa25kM2tCRzdtbGpCcHk2?=
 =?utf-8?B?Q1hVamYyQjlVRkFJZ2hXblBjZ0huQ2lmK2h3ZHhUZURmVWkyU25JN0NodUxQ?=
 =?utf-8?B?MmVCUjdGWndxaTNySUJwSC9EN0U2dGJlSUhHeEpRWHQ5VVdtbVNPemU1SXdl?=
 =?utf-8?B?aVUrNnpWeXE5RXl1VDUyZ0k5d2R1VlBmaW9yWlIrU3lpR3hQYkxZV0tIdlJF?=
 =?utf-8?B?RGd4YUs0U1B5QzF5OVJqenNYRkxGeHkzeUNWakNLWkVXNDFVVXRDd2kzYlhD?=
 =?utf-8?B?NXJtMzd0NWxEdGJ6eTZxVi9abFVvOWpSYVVIVXU5RTZwVjUzSGgrZEluNDhE?=
 =?utf-8?B?Z3pld3hQRWlJSHF4REFxMnJ0cWlUa3BIYllhRGZNcEorM2lQamhkR1Rvc3Bj?=
 =?utf-8?B?WXdOY01VdlJnb3F2RzFsemZSS3hUaFNjTDJUMUpuc0VXZXo1S0NNT0JZNzJL?=
 =?utf-8?B?Rkg1R2lDZEI0SUw4VjNOVDJ3TTBOdjUrL0ZSaVJXeWkrc2YzVDJnWjA2SnFB?=
 =?utf-8?B?d0VmamJQdXU4Mk1sdmRxb1VUNnlVTUFnaXpTQUpkWHBDbHprdnM1N1E2R0th?=
 =?utf-8?B?ajYyL2l1d1dEaHhsNE9RNHRVeTIwWTQxWVFrMGJ4MVNsTUg0QWFJTnBuU0Ev?=
 =?utf-8?B?ZDdhZjYyTi9IV0lxcVFpQjZISDJsSjhESGtwUHVieGo5NWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjlYSWJ1cEhnSk5IUTVHVUJjWTU5b0lkbm14VDczQ1FycG4rbVJOTU9WQk54?=
 =?utf-8?B?dEVBcU9McG1BN2pPMjR3LzRLZHZyNmhoWmxzVFJ6c2RhYzVFNUpZMVRLWWFU?=
 =?utf-8?B?OFp2ZS8ydFlabTVFSm1CL1FkbDd3Z3JiMjRnLzJLSUxVdkdxOXV0cUxSaENn?=
 =?utf-8?B?d2NWd3VtRVNHUU12WUFWMExLTXArcVVJdlplNlJGMWQ1L1l4RUdKSzhadWRZ?=
 =?utf-8?B?Ly9sRlJTa09zTTZoelJxTVpNTElOYUtIQVlKQnFpWUJhdERzR3QwVjJuMlNL?=
 =?utf-8?B?bzJxbW44OGExYzZYeE95SDBFUkR2K3M3QXNuUFU1bkMxVXlLOWl2ZzY5RmdY?=
 =?utf-8?B?aGl1LzVTVllnMzhaYWdpU29SNHFBemV2emdxU2VsUjNza1V5Rkx3cGJWbFlB?=
 =?utf-8?B?SlF5WUh6WWlzdTh1ajV2WFBEOG9DTTR1elUxclh1K3pTc2dWR0pQb3duaVJM?=
 =?utf-8?B?NkxBV3QyaWdjU2VtQy9CYTFKZ3ZzejJBR0FxQWRCRy8vblNNNGJVbWkybGFv?=
 =?utf-8?B?dWFXbzVkWE5oeG5LTW81cGU2U3BtVFVYejVpQXZIQmZ3RkZNcGQ2YTV1RjdC?=
 =?utf-8?B?SWdUaHJybGVwNFNnZlNlTnlWY1NTMW1qZVgyRmFFeGVxZ3laTzNzRHNoQkk3?=
 =?utf-8?B?YU9BejNyYlZuUWxSMWd3OVkxSG9VVlM0czdaVzJkaEE4ZlBvOHZ0WEVaVkdS?=
 =?utf-8?B?L2tqY1FNcnAyM0xua3M1b2hremxRYkJDcXRyV0tMOUN2ZkVQUHI1d25PdXZR?=
 =?utf-8?B?ZVBaeWY1OVhaUS9ha0IvZ3BGbWk0T3QwNFlrRGd1cFo3MFVmVExZNkViL2Vv?=
 =?utf-8?B?YXBIdGlSU0NGUXJjVi9sVXE5SU1LYXRQZXFRS0pLSm1MaXRpNHdwc1JzMjJx?=
 =?utf-8?B?bUdERmlLcktqRXRRZVk2VnREREtOeS9OZmJmdSt4dU5XZGkrN3YyZ2FwcmNv?=
 =?utf-8?B?QnBqd1NhMGtpL1pndDBGRWJHSG0yZHRESmZZOXpzc1hvVHhURmluV0NOcG1l?=
 =?utf-8?B?SzVoelFxSWxqcHFrcFZxZHVPQzVhSjIwMHA2Qks0di85ZFloQSs3RUx5ZXpF?=
 =?utf-8?B?YTh3RkRBUkxxUnRZdFk1TXBRRDJsVUJyNFdBWGxoQVJXWnNGOTVRYXhYUm1i?=
 =?utf-8?B?a3B6cEU1T2dOeGZUOWNZSVZqU3pDc3k1dzl5QWUzZXROcTEzc0VXZytiTS9o?=
 =?utf-8?B?b29IRzEwbEVuU1BMSVM4S2dUUTFKN3IyYVErYnlBZ0YvT2tEaWdGckdDQ0pu?=
 =?utf-8?B?ajNScU9UbFZ3TXNySjRFTVpFQjhpWnN6TGFoQzlLRlcwZmgwcTZGby80Yk9V?=
 =?utf-8?B?NUsrNWNFU2xnczBnNnEvcWVwajNGVmxHTzB4d3BCK3JrMVlEeXE3YzBodno5?=
 =?utf-8?B?WXdveW56ZEtxSlArREV0dkN6ejBEMDdXcGJ5ejJWSlJ0MWRMT2l3elpza09i?=
 =?utf-8?B?YmdnMEt0NjFuK3N6SEtQNHZyWHpLaVdrbkNQQ0JJNnFlSG5QcTBuUU9lVU5G?=
 =?utf-8?B?MGc3V0k5K2U1WjAvMUF6KzZydW1NVG81U2s2eUZ3SUN6WDBKODlPVW1UZ1Qz?=
 =?utf-8?B?YUNDNFN4YzhqczZ0NThLR1hHZW1LRmREWW5FNGIzaUtvbUhPMkF2RkNwQkJO?=
 =?utf-8?B?dy9zbW5xRXBRMEYxQlowbldSbXdZaTlnUVJvVGZPallpVXczS2w0cUxBQkJh?=
 =?utf-8?B?QVN4di9WbGZudFJzOGpsL1J1SCtyK1BLRzQ5MWNLWm14bW1xc2JqYms3cVMw?=
 =?utf-8?B?SkY3RHRiRFVoU0hjRTlobVcrVnNNeUpvN3dXZmMrYWlFMDNmdXpFR3podGpH?=
 =?utf-8?B?elhNWlBNZmJ2enBwOWhpNjAwVzJWekZiSVZXbDlxUzdDajhIYkYrMnpGcXkw?=
 =?utf-8?B?TFVPa3hMbzhEK0ZibWEyU2dJV2hEU2U0ODNZNXBSQ2Fjdzd0c3hIUUpjdy9r?=
 =?utf-8?B?ZGlZTVhOaWpEZWRleW5sSEV6dlMyTW5lUWlMZmpNUVlQSWRwSW83dUNRUVkx?=
 =?utf-8?B?c2k4NDRkajhsV21iVkF2YmpvdWlwYm1rN3lJeElYWWdJUml6SHhsbTBORC9X?=
 =?utf-8?B?WlpKd2d4L1hvT1c2b1hPUnlXZC80NGYyV1h1L1J3SjNiVEF2WjdLTzQzZTYw?=
 =?utf-8?Q?ehM2RPbBju3abhk1AK0wAb1LV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 406c6a49-b74f-4f4f-af20-08dd39346c7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2025 09:25:47.7620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F10b4XDss4l5QSJ/G4tVqqwuZwDd5jG31UmtBcTPTdq2M5XrKgq1lfgdR5RSfJOeSLf6SUrURa0Vzg9UlQ72vBCDuQ5imPkIr1a8ZZ52LSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7019
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

SGksDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0MzYwMC8gLSBS
ZS1yZXBvcnRlZC4NCiANCmk5MTUuQ0kuQkFUIC0gUmUtcmVwb3J0ZWQuDQogDQpUaGFua3MsDQpS
YXZhbGkuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJh
IDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYg
T2YgS3J6eXN6dG9mIEthcmFzDQpTZW50OiAxNyBKYW51YXJ5IDIwMjUgMTc6MjENClRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KU3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5
MTUvZ3Q6IFVzZSBzcGluX2xvY2tfaXJxc2F2ZSgpIGluIGludGVycnVwdGlibGUgY29udGV4dA0K
DQpIaSBDSSBUZWFtLA0KDQpPbiAyMDI1LTAxLTE2IGF0IDEzOjE4OjI1ICswMDAwLCBQYXRjaHdv
cmsgd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRybS9pOTE1
L2d0OiBVc2Ugc3Bpbl9sb2NrX2lycXNhdmUoKSBpbiBpbnRlcnJ1cHRpYmxlIGNvbnRleHQNCj4g
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0MzYwMC8N
Cj4gU3RhdGUgOiBmYWlsdXJlDQo+DQouLi4NCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0t
LS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhh
dCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MzYwMHYxOg0KPiANCj4g
IyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMj
DQo+IA0KPiAgICogaWd0QGttc19idXN5QGJhc2ljQG1vZGVzZXQ6DQo+ICAgICAtIGJhdC1hcGwt
MTogICAgICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXSArMSBvdGhlciB0ZXN0IGRt
ZXNnLXdhcm4NCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNTk2Ni9iYXQtYXBsLTEvaWd0QGttc19idXN5QGJhc2ljQG1vZGVzZXQuaHRt
bA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDM2MDB2MS9iYXQtYXBsLTEvDQo+IGlndEBrbXNfYnVzeUBiYXNpY0Btb2Rl
c2V0Lmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1iZWZv
cmUtY3Vyc29yLWxlZ2FjeToNCj4gICAgIC0gZmkta2JsLTc1Njd1OiAgICAgICBbUEFTU11bM10g
LT4gW0RNRVNHLVdBUk5dWzRdDQo+ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5NjYvZmkta2JsLTc1Njd1L2lndEBrbXNfY3Vyc29yX2xl
Z2FjeUBiYXNpYy1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwNCj4gICAgWzRdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzNjAw
djEvZmkta2JsLTc1Ng0KPiA3dS9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtZmxpcC1iZWZv
cmUtY3Vyc29yLWxlZ2FjeS5odG1sDQo+IA0KVGhlc2Ugc2VlbSB1bnJlbGF0ZWQgdG8gbXkgcGF0
Y2ggYW5kIEkndmUgc2VlbiBzaW1pbGFyIHdhcm5pbmdzIGFib3V0IEZJRk8gdW5kZXJydW4gb24g
b3RoZXIgdW5yZWxhdGVkIHBhdGNoZXMgYXMgd2VsbC4gUGxlYXNlIHJlLXJlcG9ydC4NCg0KS3J6
eXN6dG9mDQo+ICAgDQo+IEtub3duIGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVy
ZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzE0MzYwMHYxIHRoYXQgY29tZSBm
cm9tIGtub3duIGlzc3VlczoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMg
SXNzdWVzIGhpdCAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6
DQo+ICAgICAtIGJhdC1ycGxzLTQ6ICAgICAgICAgW1BBU1NdWzVdIC0+IFtGQUlMXVs2XSAoW2k5
MTUjMTM0MDFdKQ0KPiAgICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzE1OTY2L2JhdC1ycGxzLTQvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQuaHRtbA0KPiAgICBbNl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDM2MDB2MS9iYXQtcnBscy00DQo+IC9pZ3RAaTkxNV9wbV9ycG1A
bW9kdWxlLXJlbG9hZC5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4g
ICAgIC0gYmF0LWFybGgtMzogICAgICAgICBbUEFTU11bN10gLT4gW0RNRVNHLUZBSUxdWzhdIChb
aTkxNSMxMjA2MV0gLyBbaTkxNSMxMjQzNV0pDQo+ICAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5NjYvYmF0LWFybGgtMy9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlLmh0bWwNCj4gICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzNjAwdjEvYmF0LWFybGgtMw0KPiAvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3
b3JrYXJvdW5kczoNCj4gICAgIC0gYmF0LWFybGgtMzogICAgICAgICBbUEFTU11bOV0gLT4gW0RN
RVNHLUZBSUxdWzEwXSAoW2k5MTUjMTIwNjFdKQ0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1OTY2L2JhdC1hcmxoLTMvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxMF06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzYwMHYxL2JhdC1hcmxoLTMv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgICAtIGJhdC1tdGxw
LTY6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbRE1FU0ctRkFJTF1bMTJdIChbaTkxNSMxMjA2MV0p
ICsxIG90aGVyIHRlc3QgZG1lc2ctZmFpbA0KPiAgICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTk2Ni9iYXQtbXRscC02L2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiAgICBbMTJdOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzNjAwdjEvYmF0LW10bHAt
Ng0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+IA0KPiAgICog
aWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2U6DQo+
ICAgICAtIGJhdC1kZzItMTE6ICAgICAgICAgW1BBU1NdWzEzXSAtPiBbU0tJUF1bMTRdIChbaTkx
NSM5MTk3XSkgKzIgb3RoZXIgdGVzdHMgc2tpcA0KPiAgICBbMTNdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNTk2Ni9iYXQtZGcyLTExL2lndEBrbXNf
cGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlLmh0bWwNCj4gICAg
WzE0XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE0MzYwMHYxL2JhdC1kZzItMTENCj4gL2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxv
Y2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlLmh0bWwNCj4gDQo+ICAgDQo+ICMjIyMgUG9zc2libGUg
Zml4ZXMgIyMjIw0KPiANCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfbHJjOg0KPiAg
ICAgLSBiYXQtdHdsLTE6ICAgICAgICAgIFtJTkNPTVBMRVRFXVsxNV0gKFtpOTE1Izk0MTNdKSAt
PiBbUEFTU11bMTZdDQo+ICAgIFsxNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzE1OTY2L2JhdC10d2wtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0
X2xyYy5odG1sDQo+ICAgIFsxNl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNDM2MDB2MS9iYXQtdHdsLTEvDQo+IGlndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAZ3RfbHJjLmh0bWwNCj4gDQo+ICAgDQo+ICMjIyMgV2FybmluZ3MgIyMjIw0KPiAN
Cj4gICAqIGlndEBnZW1fZXhlY19ndHRmaWxsQGJhc2ljOg0KPiAgICAgLSBmaS1wbnYtZDUxMDog
ICAgICAgIFtTS0lQXVsxN10gLT4gW0FCT1JUXVsxOF0gKFtpOTE1IzEzMTY5XSkNCj4gICAgWzE3
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU5NjYv
ZmktcG52LWQ1MTAvaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWMuaHRtbA0KPiAgICBbMThdOiAN
Cj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQz
NjAwdjEvZmktcG52LWQ1MQ0KPiAwL2lndEBnZW1fZXhlY19ndHRmaWxsQGJhc2ljLmh0bWwNCj4g
DQo+ICAgDQo+ICAgW2k5MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTI0MzVdOiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyNDM1DQo+
ICAgW2k5MTUjMTMxNjldOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUv
a2VybmVsLy0vaXNzdWVzLzEzMTY5DQo+ICAgW2k5MTUjMTM0MDFdOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzNDAxDQo+ICAgW2k5MTUj
OTE5N106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9p
c3N1ZXMvOTE5Nw0KPiAgIFtpOTE1Izk0MTNdOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85NDEzDQo+IA0KPiANCj4gQnVpbGQgY2hh
bmdlcw0KPiAtLS0tLS0tLS0tLS0tDQo+IA0KPiAgICogTGludXg6IENJX0RSTV8xNTk2NiAtPiBQ
YXRjaHdvcmtfMTQzNjAwdjENCj4gDQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ICAgQ0lf
RFJNXzE1OTY2OiAyMzM0ZDExNzlkNjUyZWI0MDMyZmNiMGQ4ZTZmNTNjYmM2YTEwMTFjIEAgZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzgxOTQ6IGM1
MDViNWU5ODUzYzMyNzA3NTFmMjY0YjBkNDA1NWQ0ZDdhZTEzY2UgQCBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+ICAgUGF0Y2h3b3JrXzE0MzYw
MHYxOiAyMzM0ZDExNzlkNjUyZWI0MDMyZmNiMGQ4ZTZmNTNjYmM2YTEwMTFjIEAgDQo+IGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiANCj4gPT0gTG9ncyA9PQ0K
PiANCj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDM2MDB2MS9pbmRleC5odG1sDQo=
