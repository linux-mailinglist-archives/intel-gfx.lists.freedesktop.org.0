Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XqoGLliYIWpbJgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 17:23:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1836D64161C
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 17:23:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="do4Y/oFt";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A240C10E158;
	Thu,  4 Jun 2026 15:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667E91136AA;
 Thu,  4 Jun 2026 15:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780586581; x=1812122581;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UdcKP82ev5AsJMbKj6rFMIbInCF+LKdVQI0OVWMIqww=;
 b=do4Y/oFtDksTPx3YXNu77vIZ7ij4Jaw3jMoNGjmvP9rpo/fesW+ox/Xg
 udMN2KWBjlM80ZwV8AqzrxcPfEpD16RZdaMhg/xZGrTBTTTCiab1d0Qgo
 aDd6Rmqy0XiAlN8Z9J5D1mF420DJNAneKTmQ8pzlBxfvckKAEcWvv3p9+
 cSi6XK/Z3liHDkzqgELUQVOMX5RYMkEC8RTc2ZbudY9FJCR0nZG29q7hU
 1HieVffnGDlPGvdCxgNtX8dZdDTJU2DEWW7WQJTL4znOUXGw+rExvjUHN
 CV1vc0uPReu31T1OBEKetmhZnhLbUIdziQ8kzNhI0pwRV6RJhF5ljB5ut g==;
X-CSE-ConnectionGUID: 7AnvYeNyRuGwBA18zpVLTQ==
X-CSE-MsgGUID: odApYZQWTkW53WQfXe7V1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="91731674"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="91731674"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 08:23:01 -0700
X-CSE-ConnectionGUID: oPQBJ7c+TrW4Nk2M6QT+Cg==
X-CSE-MsgGUID: IaL0564PRziAIr+v0ig0xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="274818328"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 08:23:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 08:23:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 08:23:00 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 08:22:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HSdKpQ5dc0fCKWxFu5a1J9vSZoIx7KJOO0IbTKgfkY+Z3IKFez8CNOszMnnO1S4WyoWOPiXweSOt93Gr0kEqvF1YKDTmhbJJSijcYSKYABFkml1F59CYmm5LVe7k1qAoQDnQ/6RFhw1VLXuUaXSHTcrWljKyvetvjrucv/8v+xLpqAXQUeX3OLnc0M3KszvrYN4zidG0wk9YhlcEyaEYTRXU4IjATQHZD3fJxzlT/sm3tPXM2d/00+cd60pPYSrB36FfmnojzYgd8Kb6X0j3yHqAT7q0HJoR7D5+JsWXmB64p+UFAI+YATcFHAeO15g6ynD16P0ocPfZS+QK3GBlAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UdcKP82ev5AsJMbKj6rFMIbInCF+LKdVQI0OVWMIqww=;
 b=wABGbiy1huxnZF94TNEMQLAO524mgBTXAaFUyCHGuCGMLUbHcJI0jpURbURcreSScW0eOi5TAGe12RjTE1+qcUZzp9b6eZTSHHwtRQS3TnDSOBvr/6FwgMNbgTVlVm58nTCtd9AiBzCYdxIvs07u5sJiRHNbzfxvJv4Q+C478zsyVJPU8lVHVZoOS5p4cJH4XYatZoVFEeNW3AyeDOT/LW26QWbCUwK86BGiE8UfNp+Gx3V+CmjneSFj/+r5hs9mafvB3oUKjwoUS1PFpMuaJpAgmJDVAleca+HugarA3Xp2VIdvHLISqMi4OjviQhCiUzkJTlTG+NCNKlA/MmRhLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 CHXPR11MB9627.namprd11.prod.outlook.com (2603:10b6:610:2f9::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.8; Thu, 4 Jun 2026 15:22:58 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 15:22:57 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Thread-Topic: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Thread-Index: AQHc7o8AdTy+QK3EfkGJRRzTmWKRHLYuiEUAgAADvgCAAALngA==
Date: Thu, 4 Jun 2026 15:22:57 +0000
Message-ID: <e8a8f7d3773212fea0af63c878d856c08eb2ad51.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-11-ville.syrjala@linux.intel.com>
 <8c3c70565faba998122b8092b3f3d3783328e53f.camel@intel.com>
 <aiGV4NpQtyhCN4ct@intel.com>
In-Reply-To: <aiGV4NpQtyhCN4ct@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|CHXPR11MB9627:EE_
x-ms-office365-filtering-correlation-id: bef4d286-b68c-44ef-3106-08dec24d285c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|18002099003|22082099003|38070700021|11063799006|4143699003|5023799004|56012099006;
x-microsoft-antispam-message-info: Q6Fm7/tss44VmmkRCiubXmjuNaV1uzoWXxLOtzXm1ECq3e5efnwBJFFENAqH//KdzdMEqWKytkWYUzb1v8sALRkqExOrK+ETaeLqmE2cje7N8RQBQ2zOa5gW/OoUSEH4B+DYA3I9v1IND1wINd9FVc2/kW/9Xr3CjqnEwH5wSxE9N9oIp8Bp4yLElWfX2pxZdC30k8rh4wRlfcf/eNvkP0EkQdroIbFt/IeNx6YTzRA/+nphV/DB5eLtpU+dypgJdc6r9vO8D9ZClcqTH4i/LdL6DTdtBscX6WA0PABlNTBVHId60UXJS1jj1DvxTljXo559tOKpuHiGhVnrVUg/Zf972NKisVdWqpMmdnfr+Lo7+kBpyMqlvaCYKZ34qq4KVmeUEEEZb8F6mh282SDKv28moBsp3KC10XbI7dgfEojzVsCr4nBpOq2Tnh+zYOOkQnn68LjJ9ZaNjql4c7RVbxKrmVGa7TN6BXcoHpS5B/IvUFaIgxAjV61Apv4cjAWlFZWh81/KqoQ4hZZpLF0kIa0IsjPGOWqcis0UjCyac8Lc4EHKzHDyv9C23HTX5nySYX2Gog1kXj6Ym4zeVYsYBWwiLf+1ttjrxW78Nf2tUn9z1ZWLTl6VbeNySAHGitsuEIDC4RqvqPvY2elDt5nZ76sjkUb3xqRWf4ICEaHcccIjrh0b732jfMgzqq5vo/WE9r30UWdK4+Nsm5F/arNhfe/dEaKR7QtJvtFucpdXoU4MlC4r2PJ5pFZifNnfADXI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(18002099003)(22082099003)(38070700021)(11063799006)(4143699003)(5023799004)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEpCbGJpdURoS3hZZjVGaUlYSkQybnd1ZStLSWlpVjZGWEhNNEh1TEdMemFq?=
 =?utf-8?B?WFRaQjRxcVFzeFZVWXhwa29hc0dFSGNhQWF4QU1JV3RLOEdVd0xoVFBNV0po?=
 =?utf-8?B?RDI5V1FnVGpncEhEYnEyN09tYmRhRGJhSnJOdzM4NmtuRmlBc3hqRitqUDFK?=
 =?utf-8?B?R2VORnZXdG9KY1VMOUhVMk5iQUVRd1NPd3lpWkJuYzFjMHBZK0NDVzltOEtN?=
 =?utf-8?B?RWl1OWFQb3dRQityVDBKeUtwL3ByaWorRlJQVUtWRDBNT08yanZqTWw5L0x6?=
 =?utf-8?B?RUx6S1dzalFZVzlrdUlUdGZ4Z0JwTUZpTnUzK3I3MkQ5QkNEdS9udWZRaFNq?=
 =?utf-8?B?RXIzTzBTOGlTR1B2dEdSQmhmWk5XaS9lMzBCLzBQVi9jVDBla1lmSnhGL3ds?=
 =?utf-8?B?WVI0WEpwQmlHQUp1OFVYWjFvLzVhRzZoTCtNdU95eXlLNjVXS0NKZkpjYm9p?=
 =?utf-8?B?aG9ZTkNKT2lYWEdsNit6VW1IbStPNWsxK1V5cm9aT25hbDJyK1A3blRGMGxV?=
 =?utf-8?B?RlRhT0lnR201Rk5pak5kYjY3Ykp6Z2RWamFScE0wbVZlOEoxOUxpK0Qyanl2?=
 =?utf-8?B?L1ZKTzNYVlRSa09keTNKbTFvMzhzYXFBT3JYaSs4RXI1T0pPa1FOc3hRK0gw?=
 =?utf-8?B?bkRTOGRzTTRod1J0VGlUclhhSVBoRE03V0dvWk1vRFJVOEg5ekx3NHJ5MldQ?=
 =?utf-8?B?NGpRa3g5eE9GdkVjOWppS3c3K1BvL3YyeWF6NXBxektEdXdvL0ZLWmRQa0lC?=
 =?utf-8?B?RUhyS2x5eU5hTC8rZU5LS1UwMlJJTG01c0xPWDI1YVVCYm92bmJHTTdZNGNS?=
 =?utf-8?B?LzVFSkowaWxIWjhsekdmY0tVVGV4NWNSbUx5d3pCVHFnYVplUzN6N1hVaVV0?=
 =?utf-8?B?M0IrcGZmMzlsZDhFZE81ZGIwTHhwU2hIOVkrbFFlS3dxNTZCaWszVEtwU3V0?=
 =?utf-8?B?aFpKeTNQMlp5cFFtdEx5S21SanE5N0dHZjRiVEYxK0FkUkR5aWFULzR4VFNG?=
 =?utf-8?B?dkFGZDB5OVc3eWlCcDNPZkliajIwRExzTXBNNm9PeDV1RVJad3llbTEwK0Mz?=
 =?utf-8?B?RUsvaXRIZDhiNW1xbWVNZytXQzRLWUJjaFpFdzBMR1MwbHdlYjVtTzJHZWda?=
 =?utf-8?B?VjVTd0hoZXVxSlc0K24zMGRKZFFtU01MZVRndkZFZjN4OHRRZVlQaHNsYkkw?=
 =?utf-8?B?WEg4d1drbVVUR0ZEVXJFclAxckU4Y1pNenNKNVhINkVrMFM1RkUrOG4veXp5?=
 =?utf-8?B?b0hvSUk1bit2b2lXcjlya2VnVHZ3RTh1LzJqSHVveHdONVh0OFlOL1ZtVEdx?=
 =?utf-8?B?R2NWcytRYlF6NlFkUlBUUXBhczZEN05oaTB1RGc1NXhSMUROYVlGbXFycnMz?=
 =?utf-8?B?WkxGOWVzdjVhWjZpejBkQ0xKaVZZR1ZBUTNhUkxwNDY1b0gzaitzaTNFOG01?=
 =?utf-8?B?NSswcVR3MGlKM09tRkYxQlRjdzk4cC9JWHB4dUFScWlrUVplbklSbWgreFk5?=
 =?utf-8?B?TUxsS3l2VThleERKTWdSQTR0RWJuYnN0TWtwQ1BJL0hyWStiU21XVU10YTRo?=
 =?utf-8?B?Umc0NlFzS0xOc0YrbVRZd0pPTElnNXpsLy9XUlZFckNOOXpXMlRCR3BuY2lM?=
 =?utf-8?B?NzFBenY3Wk5EU1pzdDJwWUxPNnVLd3NVeWJ6UDZtc0U2cFlQUHUyZHVtTmJm?=
 =?utf-8?B?WS96SnVRWDBxRUV3RFpkeDMxNzQzb3dicEV3aWdrUlFEYzlGUS9MV0JoTzg0?=
 =?utf-8?B?SmkzTTRTbVBDVEdYbVhkblo5NjdheE1VNnJxdFdjTC80OU5HYUZObERGL0hQ?=
 =?utf-8?B?UXM4Rm9lelliRStjTjlmQmJ6NW1hQmwrS3phblEzUG5oV0lUZG1aNE5MRXF6?=
 =?utf-8?B?c0t3N1k2SmNtTEhWWHRqQzAzem1MeGducWJVaUpza3dEVmdjTHdTTGQ5WG5N?=
 =?utf-8?B?Z1VOcXowQUoycDVYYnZ2cFNiSjZiS1BkMUc4QWMwdkxENDdRb3h2aUpBckRj?=
 =?utf-8?B?L0pqeDF6QzBualc2cHNHN1JPalR4Z1NmS2d0RXJGU3llOHVpam1LRUsyTGMr?=
 =?utf-8?B?SGx2ZDI2OXF3M0VBcGx6UUlPZ3M4ZUUyT3prS3h5Wk9HbGMvVzJ2b1FFR2ti?=
 =?utf-8?B?bC90OTBKbXZGbStJMWxHUVhIKzRJVk82STNkQk1UZThKcmpOQVVhbEJjZlUy?=
 =?utf-8?B?ODd5SHFlNFdPNE50OGx1blhYZDdPL3o2WlVvSzdySFhwZHptK3EvcklrT3o1?=
 =?utf-8?B?TmN5U2poOXZJUW5yenpMNFk4R2YrTnRVbjR0dUxBdmRFRXJqSXF4YkgyOHJ4?=
 =?utf-8?B?OUpFQWwvbUZBVW05NTlXR3Z2V1VkTTYwOEk4dGlTM1B6dm5saEMzaUxsZHFP?=
 =?utf-8?Q?U9XML5jARZtKux1XvmoEw6IebjOP1aWzcIoIdhXjBIvbf?=
x-ms-exchange-antispam-messagedata-1: bH+AiC9EsP+RdxvBZqBsUoVXyBIauZw2AuM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D1D007F08C7479418581E06410AAC7C5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hnNGvkxcI4qY+aVGjiNYF+3lNyWt0CL8obvThrFZFfjcXgfzgek68ttt73khCthxwYAL0v8fJheDBQ0AmUmk+0sd0Q4M+3P6UtbY22lTE7OSonc5FN+qQeRA2E4SkKzbcIQD43yicrRfWrEk1nXMB8577zvhd/7bdz9jGjUek+/xAkPqS1WlCVGszf+2sv8Rh6miHoMcD3kXa/lWHzV/lBrSekZ8kq+ZPc+zHnPdIQ3uTl6P2jGV7vUVJt2jZtsENK3+I1CLU9OgDINFuhP6d8W0LHeCWIfqWYm/Snb2CiXqZSyLIx0CXha1FVtHZWnM7SCFvsthBsa7IL9qS4an3g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef4d286-b68c-44ef-3106-08dec24d285c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 15:22:57.8272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rUmN+JnHNCS2ZsgM9GnKLlUBlPBP9fQ1V+7ZGsbQldj6bXSEYGli2Dg8MiBcX2T8LqDl4f334XFjS7Ke7nCDIzKfRLq35gsRlV0aGPlWcrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHXPR11MB9627
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1836D64161C

T24gVGh1LCAyMDI2LTA2LTA0IGF0IDE4OjEyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVuIDA0LCAyMDI2IGF0IDAyOjU5OjA5UE0gKzAwMDAsIEdvdmluZGFwaWxs
YWksIFZpbm9kIHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyNi0wNS0yOCBhdCAxMzozNCArMDMwMCwg
VmlsbGUgU3lyamFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFJlcGxhY2UgYSBoYW5kIHJv
bGxlZCBjb3B5IG9mIGljbF9xZ3ZfYncoKSB3aXRoIHRoZSByZWFsIHRoaW5nLg0KPiA+ID4gDQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuYyB8IDEwICsrLS0tLS0tLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+IGluZGV4IGY0MTIxMjIzYTU4
Yi4uNDIzY2FlMmZmMjA4IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMNCj4gPiA+IEBAIC0xMTA2LDE0ICsxMTA2LDggQEAgc3RhdGljIGludCBt
dGxfZmluZF9xZ3ZfcG9pbnRzKHN0cnVjdA0KPiA+ID4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwN
Cj4gPiA+IMKgCSAqIG9mZmVyZWQgcGVyIHBsYW5lIGdyb3VwDQo+ID4gPiDCoAkgKi8NCj4gPiA+
IMKgCWZvciAoaSA9IDA7IGkgPCBudW1fcWd2X3BvaW50czsgaSsrKSB7DQo+ID4gPiAtCQl1bnNp
Z25lZCBpbnQgYndfaW5kZXggPQ0KPiA+ID4gLQkJCXRnbF9tYXhfYndfaW5kZXgoZGlzcGxheSwN
Cj4gPiA+IG51bV9hY3RpdmVfcGxhbmVzLA0KPiA+ID4gaSk7DQo+ID4gPiAtCQl1bnNpZ25lZCBp
bnQgbWF4X2RhdGFfcmF0ZTsNCj4gPiA+IC0NCj4gPiA+IC0JCWlmIChid19pbmRleCA+PSBBUlJB
WV9TSVpFKGRpc3BsYXktPmJ3Lm1heCkpDQo+ID4gPiAtCQkJY29udGludWU7DQo+ID4gPiAtDQo+
ID4gPiAtCQltYXhfZGF0YV9yYXRlID0gZGlzcGxheS0NCj4gPiA+ID4gYncubWF4W2J3X2luZGV4
XS5kZXJhdGVkYndbaV07DQo+ID4gPiArCQl1bnNpZ25lZCBpbnQgbWF4X2RhdGFfcmF0ZSA9DQo+
ID4gPiArCQkJaWNsX3Fndl9idyhkaXNwbGF5LCBudW1fYWN0aXZlX3BsYW5lcywNCj4gPiA+IGkp
Ow0KPiA+ID4gwqANCj4gPiA+IMKgCQlpZiAobWF4X2RhdGFfcmF0ZSA8IGRhdGFfcmF0ZSkNCj4g
PiA+IMKgCQkJY29udGludWU7DQo+ID4gDQo+ID4gV29uZGVyIGlmIHRoaXMgY291bGQgYmUgc3F1
YXNoZWQgdG8gcGF0Y2ggMyBpbiB0aGUgc2VyaWVzIGZvcg0KPiA+IGNvbXBsZXRlbmVzcy4NCj4g
DQo+IFRoaXMgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGF0IG90aGVyIHBhdGNoLg0KDQpCZXR3
ZWVuIHBhdGNoIDMgYW5kIFBhdGNoIDEwLCBiZWNhdXNlIHRnbF9tYXhfYndfaW5kZXgoKSByZXR1
cm5zDQpVSU5UX01BWCBpbiBwYXRjaCAzLCBtdGxfZmluZF9xZ3ZfcG9pbnRzKCkgd2lsbCBuZXZl
ciBmaW5kIGEgcWd2IHBvaW50DQooaW4gcmVjZW50IHBsYXRmb3JtcyBudW1fcGxhbmVzIGlzIDAg
Zm9yIGFsbCB0aGUgcGxhbmUgZ3JvdXBzLi4pLiBUaGUNCmZ1bmN0aW9uYWxpdHkgYnJlYWtzIGJl
dHdlZW4gcGF0Y2ggMyBhbmQgcGF0Y2ggMTAuIFRoYXRzIHdoYXQgSSBtZWFudC4NCg0KQlINClZp
bm9kDQoNCj4gDQo+ID4gDQo+ID4gUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZp
bm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiANCg0K
