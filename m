Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGWSCJI3vWkN7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:03:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7BC2D9E42
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 13:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866EE10E551;
	Fri, 20 Mar 2026 12:03:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZrJOX8sM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C730C10E54A;
 Fri, 20 Mar 2026 12:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774008205; x=1805544205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EX4MVRhMb3RfdmU2B/kcweePeY7XNlTZApxK5SJ7A2w=;
 b=ZrJOX8sMkakEv77wX0BhfIytDHfSd/SHCuJO1YZgMnWlyXf3v1j7wgGZ
 gxktrUhypBGDLds2jnDA9zOOa2uVvU3+bah4gvQpjkRDSHJdfMRXXmfke
 Z4hzv/e9ESztnYtvoKDz4kgUXl6dOtlVUuW31/fUDso/ljGXEQxNywNuD
 CJI9O2GRQ0jTOZ8ZM2e6ZIIobfQi0BkKAY1z0o/lc6Mn74ayBi8BNGtto
 xFRiAev+BGBhWqOFur4nHBYeMW4yElTorT0SzfOx31tsmQ7Y4pNMaEBiE
 pmckN94+TQC/MprwI71pBk7TDxMkA/z8N/scLvGYxuiHnGi9Aec6b8n/2 Q==;
X-CSE-ConnectionGUID: 3qNs2YDsRcmSThbDj8Hoaw==
X-CSE-MsgGUID: 7hSQfqwfSf6SwJ8zM5s9Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="75277730"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75277730"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:03:25 -0700
X-CSE-ConnectionGUID: K4OiGAqfT0yM5QhsnhqRBg==
X-CSE-MsgGUID: wiXmhHlqRm6N9FFClEsT8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="225196376"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 05:03:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:03:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 05:03:23 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 05:03:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rcjd2S7DS6tjvr3LjB+mWvwh+IuUIoiTFNA31HieDrFAfF1zAgpL+8uxFkh/FHKTmrj5PGAFbr8wYjaWTA5iAD3zYEMEEYR2tsd1dJkM1ig0gqj2lB74fUX+bEz/jYCpeE8pmGiJy18hm49LpU5ks/hh59eq98pSFac8D+HDmb5i1KZytrdAksxP656pxG+dxKPTF4I6ylbyS/tIFxS7VSkxfgBXyFuxEEmpQlpiyQ7qHyjwHsWFPeryxhrN5i9mW1k8kCcHDmscoJd6qQillWqORn7vld2PROt6wIED1VFEFPx+Z5NqjydUOym5wp5StexawbNxo0y/YZYmDjdtbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EX4MVRhMb3RfdmU2B/kcweePeY7XNlTZApxK5SJ7A2w=;
 b=efJarD0/UjNWOnvP+dnCeSyN1vyabCUTAAGbohgTh3oaqTD3NgbJ4wAIvK3NaXP9j9sYw1Og0kv0vuBP6pVmf3DLXBdLEAQZHPJKGMzxtQbse0Z8UfvMjwpH/rgbwJBeGnY8G2+81CRflzI/n4T6Z6Lw3oDPAmRDHlnx9fQF8ql4SKaKO9iNq8DEo3leZotT4aHeqtKRDB8cL22byQJYRVqlkGBK5OZdkwiahUPJCwq9OFuxdDgAd+57NJuOU8eAkp9xKpSqdGQ82P+vlaQqN+g/SbE1Ghlvuzx10PYDuwsY5/rSY/H51znpscsWIy4jUzl0QVEGFLhHBZ+VUBsm5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB8208.namprd11.prod.outlook.com (2603:10b6:8:165::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.12; Fri, 20 Mar 2026 12:03:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.018; Fri, 20 Mar 2026
 12:03:20 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Fixes for Dell XPS DA14260 quirk
Thread-Topic: [PATCH] drm/i915/psr: Fixes for Dell XPS DA14260 quirk
Thread-Index: AQHcuEAxxg4uyLbi4ESDf8+ahjULV7W3G6MAgAA28AA=
Date: Fri, 20 Mar 2026 12:03:19 +0000
Message-ID: <66dabe45e9253b925568c40ea4364030a0d60b32.camel@intel.com>
References: <20260320080403.1396926-1-jouni.hogander@intel.com>
 <2392dd1f93c683734a8d1241655ca876d95830b9@intel.com>
In-Reply-To: <2392dd1f93c683734a8d1241655ca876d95830b9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB8208:EE_
x-ms-office365-filtering-correlation-id: fe99146f-7631-4e31-1fbb-08de8678ad9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: cqyk/Bs/5T/jSriUbo1ELxfza7KLECD+6BvHJ4qb4bIiLqq4qeccKppsE4bYTvaIvJCQSIPmLPodZtxFARkNVCYnOR0jv1cYwcvf18+01fQp6Ouxwh+GAoxnwl+WOMQUTe5ssAXLcJDJbRN6Vu8PXrezcEG54YNCMrft7RDw4dRWrAlJrrQoZ5g88up4dLo3glYpCM3fHSihsOCzRIAVypnv6oeJXFu2gBNOc4JqoSb3adKA8YODyUf8uL10y9WLYzkwSx+Kx9t9MeFHceTyE9UCzFncerzcojlsuetey6I2nf7U+e4GwYAWB7iogz2eRe/kCogJpus9VLAwMR0sp4GyHzFiBzcVQwtrBFMAUakjAEoXm2KVwBQFTdRxWBecqGpm20Uf/HjbmmX0o/OFd6u0Q3LmODEev0diN0G8WV+M3w0GGPSiba5Y5gJ6w7luyeDdfxoHJsgvIgOoXONam+vZI/FveNO+S/OxcC7aQJD0daxlLDjxr4KSxJ+9ax/o8ARAcKBY16PmP/o5GcToNVjKYNQRVFyKqVmpqoE/VVHvH9oYamTNy3pVWxcXeMXSiv6jWw8MqwLtG+sA+yt2FDWEtpKVPnmKRIzKzRRGkAmWOOxdqkcY1onYjSLqGsNw+lcNrPUYS7ITo9dCGa/uKtgCuLnrJgDMeNcCMyyNGKjiGfpbfUJxZ6DexNE3hXJV3Z4G9tWIrHdY86Tj1Y3QJR8jMmeElv0zNIlYCAdIOicaI2XEdQ3t0NdNnfI3NlcJtQhUFtqvDvSwDP15Ci0MP5IQcmn/aFtvd7yZ5M7MqkA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NStsaStWNnFCMlk3QXVFNXhac3lneUFEUkJUOG5tYTBvNm5ERFFxcnNDMlRy?=
 =?utf-8?B?MW8zVFpxL3RWTVcwMWNWbHM5SHFiYUsrbVlCNmtnSkNXVlVWZmVSc21wdGpP?=
 =?utf-8?B?RUEwWFpWVG1Idll6RjM0L1laYkVNaGFSSm1nSUtNK2Ixbmh3UERKRXplcGg4?=
 =?utf-8?B?OW1FemhqREo3QlczbDFLZWxZMUlnVm9pT3VtaXQ1TzNqQjB2WlQ5V212VDVK?=
 =?utf-8?B?SlZWWktlRkpHMVZWb1RYKytuZzdGN01vMWdWR1FxVXNXL1E2RU51VHQ4ZW1R?=
 =?utf-8?B?QlduYWtqUXV1NXpESGQzbUg5aW55dU9LNHQ4Z1B1KzRWMithQXhzTjNNYWZR?=
 =?utf-8?B?TjA5ZUNoSTZsd0tiNVJnZytxd0ZFeGxlZi8zQUhGODgvMVp3WWpJTXZsRlMw?=
 =?utf-8?B?T3d5RjcyZDZnWFJLR1JzekhYR0o4eVR4SlBwM1hyR29qYWxXVWFLdFJRS2J2?=
 =?utf-8?B?UXBSNzVGbWw1Z0hkTnA2SlFMVTRuT1pDUmZXNk1oVWhCU3JTM2VxUkpzQm51?=
 =?utf-8?B?UzZ2Tjd0ZU13d3orakpjY2R0ajhHVUFyVi9sRnZiY0o0RW5SNUM5U0ptUWNz?=
 =?utf-8?B?WnpSZ1MxMzVrVEVISkFZWUltZzlaNjNTMWlSaGJmYU9WN2UzVUt2U29wRjNu?=
 =?utf-8?B?MDVmUk1xa205VXRJRjFPOVZ0Zkl3Z3pqNkFwQlRZTlUrV2lVcDZIRy83Nytj?=
 =?utf-8?B?UUM4cEdyWSt2WFdZOVc3T2lVOFJ2TG1uV3liSzBtL1UyN2tDZ09KN09EWklC?=
 =?utf-8?B?bDFQRkhHQkRNQ0xmT2UrNWx0cXExVzlBejBEemtTMlhMaUV0SDNVTjdhMmd1?=
 =?utf-8?B?NkFURUo5N3dORE9hMzJrNXNLK1FJcVY0WXllWlR4Snl6eGVkODQvdTFuK3JY?=
 =?utf-8?B?YjAyWjRTL3ZrUnhIS2d1MHlhVTdVVHRHcjFPZk1TbE50Qmwra0hjdjMyUXBM?=
 =?utf-8?B?ZzN4Qk5iaVZzMEtjdFZkSVNRTWhMQUp5R1RBRit6TmIzSkFDSFZkaTMySU5E?=
 =?utf-8?B?YmYyOS9nNjlZUldtcVhjcGVVTnA0SEpBSG5CWm9yTmcrZjV3Zk1wN3VCN3U5?=
 =?utf-8?B?aFlWTXg0MkhqNGRkVGlub0VqeVcrMmliaE9tQ2htcy9DVEMzb3RaVGNna3Y3?=
 =?utf-8?B?eEVBelZKS2lMcHVoeVBmUkQ0TCtFZUJ6WDhSZklpS00yN1p5SlVhQTlYeFNZ?=
 =?utf-8?B?ckxoSTZudHF5QnNnMWRiVDNCaVJaR3V2WCtSOWRFUVBEVDczdjlSVldlTGFP?=
 =?utf-8?B?MkZTdmRENjEwNnUzUnFNbHJBT0JIaG85KytoL1U5Vkd0MnA5WU9NVUd1SHNn?=
 =?utf-8?B?V08vSXczMlAyRWs4RHkvckh6TmpONHhkYXNKZkdSZVhsWmJzd2NtM2dybWFH?=
 =?utf-8?B?ME5vOHpsV2Y3QzZ1YjF6b0ZPdFMydC9LK1Y1OWtlYmgzaEdJby9WckJTS1Nh?=
 =?utf-8?B?S3dWLzBYVHU1R1lTY0ZUTWYxMDNySFFLcEt2MlpNQ205WTltUzgxVk9YRjhn?=
 =?utf-8?B?NHhFNm45MS9kTno0dG8xaWJmUXMzU1ZkbE5KMlRjbGRyRXRnNkl3VnFxWDY1?=
 =?utf-8?B?MXVLWE93VUhxdHpMLytGT0pvRzZzb2x0ME1vc2IwZTBvQVhlV1hLS0ZqOU42?=
 =?utf-8?B?b2dxWW9uWmwrU0lPakF1eTUvNEZ3dDVaenVGZzlnUXhNQ1dVM3NjMmVMNzhj?=
 =?utf-8?B?NldlTFJsSXI0VkNzYkRmNjFsKzhVeU5iQmdtK2gzVk10Q2RBVUxERWdGZ1Ji?=
 =?utf-8?B?b3B6MlQ5WWRvZ3VlbENZYmpFdzdCSURqY3NwWFJzRytIbHdFQVQ2NjlteDRB?=
 =?utf-8?B?YldJVWVWSGFSSlZjckE2M1F0eDNxWlJYZUhiSjhKOVNmNGNHUW05YmJiV0RX?=
 =?utf-8?B?N2NmM2tFVUZGM3p2TlkvNU1vZFpWQmtUc1ZFaGsrbVBUS2F0UWVZOGxIZnUr?=
 =?utf-8?B?YnZ2SHRlc0lPWlgwbDRjOEFoQWtFQXdoQnFNdDVnamdvL1lUc21QL1NnakFR?=
 =?utf-8?B?Y2hHbERBeUNMK0xXZ0JHRzhheFNKOWxCTDBjTVM3akdlMVNMNklIeWIyc3Qv?=
 =?utf-8?B?TWxkcGxSd1RCYnN0dlVuK0tSNVBiSUcvS1ZEbWk3aGxVWHFIbHlWUDNSR2s2?=
 =?utf-8?B?aFNrRmJxa1VDd0RDb3k5dWlzSjgxRVJFZGZBNTFJUHcreTJDVTM5SG5ZcG1N?=
 =?utf-8?B?TnlpazZqVzNaaG0wS1d1KzI4bEZLOC9peHpnNG9vL00vVS9TdnJoVUp3a0Q0?=
 =?utf-8?B?NGJEZkRzTVd3YmxMdkNVakxBUW9DdFIxWTVCT3JISHJEZ1p6MktqUnhpRkRQ?=
 =?utf-8?B?TnF5RXVzRDVRb2hDalg5cEJYWHBvWlRveTNVZlRaREx6N0ZVYnNYTmhmdzJa?=
 =?utf-8?Q?DuY545oC73C6x9VB5aVZJ5o28exTe7u6vFoCASuVsVOCP?=
x-ms-exchange-antispam-messagedata-1: /MhRclu3cLMORqmb2E5xE1Qyey+5ZLvvsyY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A68EF4A4211A6747B80859C2C50C539A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HlU4DyOmcJFPdnke2SnnnPMvW5d9rfi5NdpJRQLre4Qmu3Jz9R5sJFZ6LaFMctSSpOS5zI2OiRE0cFywLwVKNXiCnvZRApuBRuz8bmPZ4V5Daf4+P8Yq/KSRaVPCFide/h0oigf5doqp41JaOAy+w0quJ69KId3kBU6Xu0WuUbKE/xMym9i19E4MPqBm7MxAyIhIEGpFipaAUJD8aRJn7JY89IW+kMdqXYBL4SDRBIQeP9kjFZ5C6yg0aAL1BqQncFh84/IGMdYMD2KFo8ZRu5XpaNx3hCeWa1L4KoRiJYbz2K+hu70iw3xvpg2wYRkBXOnkIlP+xJqxmUPROsu4uQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe99146f-7631-4e31-1fbb-08de8678ad9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 12:03:19.9968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QFIwG3jBacAbTgUMXJa/6XAWfY+ZE7fg0yI8PPW7VvQ84JRdxWvzM2eXZHviysSf1t2jvEbJxLXNJ6lP5WhxxIqff8KLM/qpMB1A5WoT6qg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8208
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CE7BC2D9E42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTAzLTIwIGF0IDEwOjQ2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyMCBNYXIgMjAyNiwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IERlbGwgc2VlbXMgdG8gYmUgY2hhbmdpbmcgZGV2aWNlIElEIGV2
ZW4gd2l0aGluIHNhbWUgZGV2aWNlIG1vZGVsLg0KPiA+IER1ZSB0bw0KPiA+IHRoaXMgd2UgbmVl
ZCB0byBpZ25vcmUgZGV2aWNlIElEIHdoZW4gYXBwbHlpbmcgcXVpcmsgZm9yIERlbGwgWFBTDQo+
ID4gMTQNCj4gPiBEQTE0MjYwLiBEbyB0aGlzIGJ5IGFkZGluZyBERVZJQ0VfSURfQU5ZIGFuZCBh
c3NpZ24gaXQgdG8gRGVsbCBYUFMNCj4gPiAxNA0KPiA+IERBMTQyNjAgcXVpcmsuIEFsc28gYXBw
bHkgdGhlIHF1aXJrIG9ubHkgZm9yIGVEUCBQYW5lbCBSZXBsYXkuDQo+ID4gDQo+ID4gRml4ZXM6
IDQ1Yzc3ZDRiZjhkNCAoImRybS9pOTE1L3BzcjogRGlzYWJsZSBQYW5lbCBSZXBsYXkgb24gRGVs
bA0KPiA+IFhQUyAxNCBEQTE0MjYwIGFzIGEgcXVpcmsiKQ0KPiA+IENjOiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoCB8wqAgMyArKy0NCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMgfCAxNiArKysrKysrKysrLS0t
LS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oIHzC
oCAyICstDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBpbmRleCBiMzE5ZTViZDYyNzQuLjJmMWI0OGNkOGVmZCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC02MTAsNyAr
NjEwLDggQEAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9pbml0X2RwY2Qoc3RydWN0DQo+ID4g
aW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgaW50ZWxfY29ubg0KPiA+IMKgCWlmIChpbnRlbF9k
cC0+bXN0X2RldGVjdCA9PSBEUk1fRFBfTVNUKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gwqANCj4g
PiAtCWlmIChpbnRlbF9oYXNfZHBjZF9xdWlyayhpbnRlbF9kcCwNCj4gPiBRVUlSS19ESVNBQkxF
X1BBTkVMX1JFUExBWSkpIHsNCj4gPiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYm
DQo+ID4gKwnCoMKgwqAgaW50ZWxfaGFzX2RwY2RfcXVpcmsoaW50ZWxfZHAsDQo+ID4gUVVJUktf
RElTQUJMRV9FRFBfUEFORUxfUkVQTEFZKSkgew0KPiANCj4gSSdsbCBub3RlIHRoYXQgaW50ZWxf
aGFzX2RwY2RfcXVpcmsoKSBjb3VsZCBpbnRlcm5hbGx5IGxpbWl0IGVhY2gNCj4gcXVpcmsNCj4g
Zm9yIGVEUC9ub24tZURQLiBCdXQgdGhhdCdzIGZvciBmdXR1cmUuDQoNClllYWgsIHRoZXJlIHdh
cyBhbHNvIGNvbW1lbnQgZnJvbSBWaWxsZSB0byBjb21iaW5lIGFsbCBkaWZmZXJlbnQgcXVpcmtz
DQpoZXJlIGFuZCBqdXN0IHVzZSB0aGVzZSAqXypfQU5ZIGZvciBldmVyeXRoaW5nIHRoYXQgaXMg
dG8gYmUgaWdub3JlZC4gSQ0Kd2lsbCBhZGQgcmV3b3JraW5nIHRoaXMgaW50byBteSB0b2RvIGxp
c3QuDQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+ID4g
wqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiDCoAkJCcKgwqDCoCAiUGFuZWwgUmVw
bGF5IHN1cHBvcnQgbm90IGN1cnJlbnRseQ0KPiA+IGF2YWlsYWJsZSBmb3IgdGhpcyBzZXR1cFxu
Iik7DQo+ID4gwqAJCXJldHVybjsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9xdWlya3MuYw0KPiA+IGluZGV4IDhmMWJmOGY0MThlYy4uODgzZjI5N2Q0Yjgz
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVp
cmtzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJr
cy5jDQo+ID4gQEAgLTg2LDExICs4NiwxMSBAQCBzdGF0aWMgdm9pZCBxdWlya19lZHBfbGltaXRf
cmF0ZV9oYnIyKHN0cnVjdA0KPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4gwqAJZHJt
X2luZm8oZGlzcGxheS0+ZHJtLCAiQXBwbHlpbmcgZURQIExpbWl0IHJhdGUgdG8gSEJSMg0KPiA+
IHF1aXJrXG4iKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IC1zdGF0aWMgdm9pZCBxdWlya19kaXNh
YmxlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICtzdGF0aWMg
dm9pZCBxdWlya19kaXNhYmxlX2VkcF9wYW5lbF9yZXBsYXkoc3RydWN0IGludGVsX2RwDQo+ID4g
KmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDCoA0KPiA+IC0JaW50ZWxf
c2V0X2RwY2RfcXVpcmsoaW50ZWxfZHAsDQo+ID4gUVVJUktfRElTQUJMRV9QQU5FTF9SRVBMQVkp
Ow0KPiA+ICsJaW50ZWxfc2V0X2RwY2RfcXVpcmsoaW50ZWxfZHAsDQo+ID4gUVVJUktfRElTQUJM
RV9FRFBfUEFORUxfUkVQTEFZKTsNCj4gPiDCoAlkcm1faW5mbyhkaXNwbGF5LT5kcm0sICJBcHBs
eWluZyBkaXNhYmxlIFBhbmVsIFJlcGxheQ0KPiA+IHF1aXJrXG4iKTsNCj4gPiDCoH0NCj4gPiDC
oA0KPiA+IEBAIC0xMTYsNiArMTE2LDggQEAgc3RydWN0IGludGVsX2RwY2RfcXVpcmsgew0KPiA+
IMKgDQo+ID4gwqAjZGVmaW5lIFNJTktfREVWSUNFX0lEX0FOWQlTSU5LX0RFVklDRV9JRCgwLCAw
LCAwLCAwLCAwLCAwKQ0KPiA+IMKgDQo+ID4gKyNkZWZpbmUgREVWSUNFX0lEX0FOWQkJMA0KPiA+
ICsNCj4gPiDCoC8qIEZvciBzeXN0ZW1zIHRoYXQgZG9uJ3QgaGF2ZSBhIG1lYW5pbmdmdWwgUENJ
DQo+ID4gc3ViZGV2aWNlL3N1YnZlbmRvciBJRCAqLw0KPiA+IMKgc3RydWN0IGludGVsX2RtaV9x
dWlyayB7DQo+ID4gwqAJdm9pZCAoKmhvb2spKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
KTsNCj4gPiBAQCAtMjYxLDExICsyNjMsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
cGNkX3F1aXJrDQo+ID4gaW50ZWxfZHBjZF9xdWlya3NbXSA9IHsNCj4gPiDCoAl9LA0KPiA+IMKg
CS8qIERlbGwgWFBTIDE0IERBMTQyNjAgKi8NCj4gPiDCoAl7DQo+ID4gLQkJLmRldmljZSA9IDB4
YjA4MCwNCj4gPiArCQkuZGV2aWNlID0gREVWSUNFX0lEX0FOWSwNCj4gPiDCoAkJLnN1YnN5c3Rl
bV92ZW5kb3IgPSAweDEwMjgsDQo+ID4gwqAJCS5zdWJzeXN0ZW1fZGV2aWNlID0gMHgwZGI5LA0K
PiA+IMKgCQkuc2lua19vdWkgPSBTSU5LX09VSSgweDAwLCAweDIyLCAweGI5KSwNCj4gPiAtCQku
aG9vayA9IHF1aXJrX2Rpc2FibGVfcGFuZWxfcmVwbGF5LA0KPiA+ICsJCS5ob29rID0gcXVpcmtf
ZGlzYWJsZV9lZHBfcGFuZWxfcmVwbGF5LA0KPiA+IMKgCX0sDQo+ID4gwqB9Ow0KPiA+IMKgDQo+
ID4gQEAgLTI3Nyw3ICsyNzksOCBAQCB2b2lkIGludGVsX2luaXRfcXVpcmtzKHN0cnVjdCBpbnRl
bF9kaXNwbGF5DQo+ID4gKmRpc3BsYXkpDQo+ID4gwqAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJ
WkUoaW50ZWxfcXVpcmtzKTsgaSsrKSB7DQo+ID4gwqAJCXN0cnVjdCBpbnRlbF9xdWlyayAqcSA9
ICZpbnRlbF9xdWlya3NbaV07DQo+ID4gwqANCj4gPiAtCQlpZiAoZC0+ZGV2aWNlID09IHEtPmRl
dmljZSAmJg0KPiA+ICsJCWlmICgoZC0+ZGV2aWNlID09IHEtPmRldmljZSB8fA0KPiA+ICsJCcKg
wqDCoMKgIHEtPmRldmljZSA9PSBERVZJQ0VfSURfQU5ZKSAmJg0KPiA+IMKgCQnCoMKgwqAgKGQt
PnN1YnN5c3RlbV92ZW5kb3IgPT0gcS0+c3Vic3lzdGVtX3ZlbmRvciB8fA0KPiA+IMKgCQnCoMKg
wqDCoCBxLT5zdWJzeXN0ZW1fdmVuZG9yID09IFBDSV9BTllfSUQpICYmDQo+ID4gwqAJCcKgwqDC
oCAoZC0+c3Vic3lzdGVtX2RldmljZSA9PSBxLT5zdWJzeXN0ZW1fZGV2aWNlIHx8DQo+ID4gQEAg
LTMwMCw3ICszMDMsOCBAQCB2b2lkIGludGVsX2luaXRfZHBjZF9xdWlya3Moc3RydWN0IGludGVs
X2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGlu
dGVsX2RwY2RfcXVpcmtzKTsgaSsrKSB7DQo+ID4gwqAJCWNvbnN0IHN0cnVjdCBpbnRlbF9kcGNk
X3F1aXJrICpxID0NCj4gPiAmaW50ZWxfZHBjZF9xdWlya3NbaV07DQo+ID4gwqANCj4gPiAtCQlp
ZiAoZC0+ZGV2aWNlID09IHEtPmRldmljZSAmJg0KPiA+ICsJCWlmICgoZC0+ZGV2aWNlID09IHEt
PmRldmljZSB8fA0KPiA+ICsJCcKgwqDCoMKgIHEtPmRldmljZSA9PSBERVZJQ0VfSURfQU5ZKSAm
Jg0KPiA+IMKgCQnCoMKgwqAgKGQtPnN1YnN5c3RlbV92ZW5kb3IgPT0gcS0+c3Vic3lzdGVtX3Zl
bmRvciB8fA0KPiA+IMKgCQnCoMKgwqDCoCBxLT5zdWJzeXN0ZW1fdmVuZG9yID09IFBDSV9BTllf
SUQpICYmDQo+ID4gwqAJCcKgwqDCoCAoZC0+c3Vic3lzdGVtX2RldmljZSA9PSBxLT5zdWJzeXN0
ZW1fZGV2aWNlIHx8DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcXVpcmtzLmgNCj4gPiBpbmRleCA3N2U0OTBjYWVkMGQuLjgzMjE0ZWI5NGIwYyAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaA0KPiA+
IEBAIC0yMSw3ICsyMSw3IEBAIGVudW0gaW50ZWxfcXVpcmtfaWQgew0KPiA+IMKgCVFVSVJLX05P
X1BQU19CQUNLTElHSFRfUE9XRVJfSE9PSywNCj4gPiDCoAlRVUlSS19GV19TWU5DX0xFTiwNCj4g
PiDCoAlRVUlSS19FRFBfTElNSVRfUkFURV9IQlIyLA0KPiA+IC0JUVVJUktfRElTQUJMRV9QQU5F
TF9SRVBMQVksDQo+ID4gKwlRVUlSS19ESVNBQkxFX0VEUF9QQU5FTF9SRVBMQVksDQo+ID4gwqB9
Ow0KPiA+IMKgDQo+ID4gwqB2b2lkIGludGVsX2luaXRfcXVpcmtzKHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5KTsNCj4gDQoNCg==
