Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UnB5O0SLQ2q+awoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:24:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611EF6E21AB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:24:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gEPr1Nm+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0E0310EBDE;
	Tue, 30 Jun 2026 09:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A545210EBDE;
 Tue, 30 Jun 2026 09:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782811457; x=1814347457;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JNJZR+fxaVLmwUE+pIy3JQLDIfzdKpnrh0cdXOppvTA=;
 b=gEPr1Nm+x7ab+etE35GYOXpwTU2NAD4KSpv7d7e7VgE6/a4ttj1FkcQa
 spW2Aq4TEXWifCi4DVZvYc1U2kRr4MJM63wFmbXdU22MRZSbBNE8auN/9
 GXlddizNX+VHNwNvhQalaRRN880iWL98/1MxPQUUbrvZ9GMCVeMlLDX68
 1yKtQAAPCo6YADseYWe8uhhsu/R3rOR5P9Zg7qWNCKH6irheox3sc9dup
 vaWeZYZFZgbi5byj4AKmBVur1uadjqgwJ0uVfAj1NG9flvUceOqyvFrSa
 awOraZmjD1T4T2Goxh2EiVTChJbC2woOWK+DpQpJFs9/xHwl50h9wHaED w==;
X-CSE-ConnectionGUID: e9D0DFKATVSDhF0Ajq9IzQ==
X-CSE-MsgGUID: AUQWnzsSSDOWTx6YcfgIvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94670267"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="94670267"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:24:17 -0700
X-CSE-ConnectionGUID: eBW0w8CERuq+fxRbG4jI/g==
X-CSE-MsgGUID: 29FHb/2uQBmtRyNmQmVkBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="249570367"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:24:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 02:24:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 02:24:16 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.5) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 02:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V7Ct9FDhksjsuol/R0HgbaB0DdlOyqcimI6OFcWPUHSgOiojBWro94djZyTZPTxnVG9Ys2tZnS8R16Yv1hlFDh08fPecKLNcbnxW4EKE9Qi9vfDF7mB3bE0wLgJi7TvTbfvaTghf7MNvgUojtae4e+acU0kedXeA498pKjnTSBDFUS2guV+1gUqrGo19D0vdwP7Ca/FNL76MVJoP2ga8akcq6rdRdU1A/Vcpb3IIfraGYpF2sEPciPHqb1uHL6WJ+BQZISO8oHSsurIWYy8Draa5cVWswRfjTrQqzPoWobJrDkcPUi7xQzZ7k2AX5Sk/HKsarhyE20g1Kit3mEp9oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JNJZR+fxaVLmwUE+pIy3JQLDIfzdKpnrh0cdXOppvTA=;
 b=LB4D94Chg843eUpnwavnCQ+zHau6Vfqh7Hl7bNcXSx/C2hD9B2HhCsyWHCPlaeRtg39QZ8Q7rOvNu0C6sLck5Fiz34BFiC5o4bsPBDRXF1uUTTQraBBGlFijxSeKh96ZWUJTz/KkggUYUNsFPQx9BtNgvZ7ZkEbjIUPM+g43WT7Zk8EilzGmSE55jS8msifuypwam2aFtE7pv25G9VkIwDqoPum36bHqJYRB2rB5FpW1t4F+kTfvlx0/Uk2wC2dNp1XD/ZBopaaIDatXVXQob69FC2mS0FJQSTl2xbGqO/9jax2vdqN2dCEynUFe24LgJMPtjnvsjEHmTXUl4uqriw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA2PR11MB4811.namprd11.prod.outlook.com
 (2603:10b6:806:11d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 09:24:14 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 09:24:14 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 3/7] drm/i915/display: sagv pre/post plane calls to
 check pmdemand support
Thread-Topic: [PATCH v3 3/7] drm/i915/display: sagv pre/post plane calls to
 check pmdemand support
Thread-Index: AQHc/Q1Zz0W/df5xh0WSeyC4RmbjkLZW6kGw
Date: Tue, 30 Jun 2026 09:24:14 +0000
Message-ID: <DS4PPF69154114F2780AEB74212B8962E13EFF72@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-4-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA2PR11MB4811:EE_
x-ms-office365-filtering-correlation-id: b2662994-e954-4ada-46dd-08ded68959fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|23010399003|22082099003|18002099003|38070700021|4143699003|5023799004|11063799006|56012099006;
x-microsoft-antispam-message-info: 6LBQzZrlwR0XdAjHAcQsRjxfAHOIuOMyyAzBeP0DehZmAOcr8OziNOYQ+U5lrWzwasqYnnv9iqubavGtEo/MOfBgB9vkzHcMe3hlJMUrEA0bs8Ntfmdrc+PPwMLds/7kDtKyGP+6T0qPDJpTNqGCzD8YFoCnVzGSkJ3PdJCkopcSGicTzdZXIdn7aKBlN9ZXpG6bLIZzQ4pLXf4LfxO2X3kadacj0HPzoCABwGilTLq8TJtVBpfEsGvh86GH+yzhKPYl8gBXMdR8S+g6/QME1jy3yOiNQ3TNu9K4goNKDe2sJfCkRW6WZLY39yIrteXVmRZzpEPQ9v41LEwss/b6djsnnS7cDD/q4LyzwklQVpsuroLi/6ZXVxHBzDH8v3CSnwqsAi0uit3gTENMprBK9h9bPn5mvtPfnGmM48v7+gHO8Cn1nO4ron6mge2fRiDQAb7+StwPA9FzlmKL3qKpvoocY6JkH4/SwerGd/eEq471qNCF18Vv9UQT4I5lT7GtyweFBxcArvMAt39xHdy9rhEDnCsy9MbNifR3qxoB2fLQIluL3CM5veIhWIFXkyiNBy1yTTvrBckSA3UUHS7dZRW1/8f1IsDNiFQMo9eTf5kfEhmrP7fJBs+LBfnVZzHVGd0SR8DJVRn3LVKiFzvUmxyeYgBZzwD31WNRSvXbrCh+7cJECnhU4WPrk70iI+NowzjOgV77SDDnOQzXiY127xJDVmdWKHuZTC5rapUuIjs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(23010399003)(22082099003)(18002099003)(38070700021)(4143699003)(5023799004)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VURkcG9LT1F5bGI1RU13bFdCdjJsekR4dE9kdjdJbVNJRUVRRE5FVzNzTWRm?=
 =?utf-8?B?dm9iVW9pbE9GVTk3dEZaUkViNE83Tlg3WDFPQVJqOGgwMG9ISDlHUUdUYU11?=
 =?utf-8?B?VEQveng4eGtNS3Y1bTgzV3I5b1hvNy9LOHM0bFdDcEp2NlJyUW1FMTJucnMy?=
 =?utf-8?B?ek9RY094VDQvSXF3MWx3eGkrV1N4V245UjlhOHdDb2crRVRyOUZHYkx3TlZW?=
 =?utf-8?B?Zjd3by9NM1U1aHV3eUlDbWZaQ1BOOU0yR0FkNWlQK2FiY0F3OEt3Q2tQTVFO?=
 =?utf-8?B?NmxDZERsUkYwd0NDa1l2Qy9Qa0FSSHdEemIzVE9CRWc5dUVNQjNMazBhTGZI?=
 =?utf-8?B?Q2d0Vm92eGFYUkJmWkFPaFpWWXBwZGZyV0hqbWUwZWg3b3krUEJyQWEyVzRT?=
 =?utf-8?B?SmRMemNNb1g0VmlQVVFtRFI3SXQzMVZWWDNGby9VOGwrQittSjFEaENUdGFk?=
 =?utf-8?B?OVRFTlJialUzZTNRYVZaYlN0Ry9oRDhFMm9KT2hhQVl5UDB0eW1mZGYwYU5u?=
 =?utf-8?B?RUFscW9yTk5iOFNYZzdDbzBwVDlxWDVGNmJncTM2RElEL29rdHVGYTRieFc4?=
 =?utf-8?B?UnMzQ25lRmRzTkVBZyt2REpoeEttc0p4b3NnczNERlNBWmhIN2hIYjRDcm81?=
 =?utf-8?B?S1RBYkl6QjZlQkE1TVc2ZW5QeC9lOEkxR1pnSnRxMStkVW9PcjlaTm1hRlMz?=
 =?utf-8?B?VkJJZncxMS9ydnUwUXhsT1BXWk1xZTlzd1EzMlc4RElxRW1va1RSMkx5dWlz?=
 =?utf-8?B?NDkvb1BtRXJNVjEySm9EcVNoL3VCYWhrd3FkYnJCRUJsbTNKcG1wN3Boa09Z?=
 =?utf-8?B?VWR1QnVzZXBGSXRSVnMrUE5ReUt5S091YjdNcmtZN0tmeTdFeCtLcGpsZEl6?=
 =?utf-8?B?RzlVaVpTQnkyRkRzYWxxOWtxR1RnTVd1Ukdzelo3aFc5TXpyR1RXcFljM1BB?=
 =?utf-8?B?Z2xOc0VLSkUyZjViOGJVMmhaZXU2bEhTeW95VVd4RmlIdkVUNmdCVUFUSkR4?=
 =?utf-8?B?OUpzMmNYVDFmbWNtUy9VYlA0aExEdVdwTTgrNytoZjdnUW4waWdGYk1tMlZ0?=
 =?utf-8?B?MlZhcWE5WDc0S2p1NGg0MG42NFROTFVyM2FVV1BqdEppYXdHUHJKWjBXRkdu?=
 =?utf-8?B?SytJazRMZlpvOTFENDVJUThvVjBMbTY3eFhZR3I1YUFaRjBPOGQ2TENTWW90?=
 =?utf-8?B?S1MzaTFZaVhidG1wVDFDbHlQSnB2aG1kWFNvMXNUbUhxa2VkM2JUMG1Ycnhk?=
 =?utf-8?B?OGxkQlQrditzQWtRVHlPSWMrbkc5K2Vta1QyMVdFNmlKNW9haVpCMjFrNk9p?=
 =?utf-8?B?NzVrQVlEa0UwbWN4QVlLRGNlUkRnNThWRmV2dlRLcFRwRm5qTTdlMmFHZlc4?=
 =?utf-8?B?WGd0ZlNYRmNNVno4SHd1MmlpMHZYMldUV01XbE0wVlNPRjdGa0pOci93cGRl?=
 =?utf-8?B?R2k3Si9nTWdxRU5EczBXK3c0NGF5Rm40V3RPNDZEWGViVHhjWXpFSFRqUGt4?=
 =?utf-8?B?bVZuVlFZR1doclRoNzNoWjFMd1BRR3hob21IWDhici9YSW5jQTFkUm9vbTVa?=
 =?utf-8?B?S0VVNFFwdmJhQ01DYi9neVl2VmgzRHVsU1RMUEI0SFRSZGhQRURhMjRsbGth?=
 =?utf-8?B?WWxwbGxnbExuZ3hEYmxlenJZb0dHcUtZNUN4TlJZQWg1NlVkV09CazUyY2NS?=
 =?utf-8?B?eXBybTMxMkwzVUVTOHpkWXNyVG9YeEFvR3JXRzZpQ1FSUWk1UU9nOWtDUlhh?=
 =?utf-8?B?bzdWTzdjZWg1anIvTTBpSS84Mnc4emE1UXFhNEc5M0s3amNtQ0R4ZkdkN0dF?=
 =?utf-8?B?SUl4a3ZZUUg0UitoR3phRjFMajhWY0ZxMXJiREx2aysrbFhINmhFZjdUcnBT?=
 =?utf-8?B?ZWhyU3pPWWFpWCs0YzA4bEducmVWMVoyZk9PdDhvUkhSTjRwaDNZN296S1FD?=
 =?utf-8?B?WllPbzBySDZRUFdaTEN5M1oxMFJOb0tXN1VlNHJ2TlBvcmtwZURCdHllczJE?=
 =?utf-8?B?N09vV2ZVcDFwYmdUOFM3ZEt0Slp4OVNMN0pNVnJWUmF4ZjZPTDQvRWRyeTZR?=
 =?utf-8?B?cGg5YzZQbk5DTzgrU1JnUzlQSWJlR3hvT1I3WktDQXpSRnNwM3FkeE5Zb3p6?=
 =?utf-8?B?eHcwV21USFlIUGw1MTZydEtxdlM5MjBkcnRyTWxKZzJuKzlvYXJJZE56SHZB?=
 =?utf-8?B?VUZXNTdaNVFDcnA0V3c4YXJmY0dYanRIeVFnNHNEak9tTHMyd2pGRHVDQjd5?=
 =?utf-8?B?b2FCandPYTBSbElPS2dhc1RvUnJFY3FZUnJaSUlJNWoxV2pWVnp6S1liQ3dk?=
 =?utf-8?B?bUZobnNDZ0UxTHhob2VRVUl6aFpCZGNoQVFmQ2pOVTN3Y1JjZzV2eG11aWpX?=
 =?utf-8?Q?NIF2v9if+koFIcSZX/tA+ttfywQPqrmJFvblR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Hw1dTjIWSzZngyYbiYtb5cAznF28hjPRKSBoFjUVP4ad0UzLZt+XOyE3uP+eSHam91VXZlxQepfHLq8G3u2AnKhbRAVIaSyQ8zBhEtCYBf18ymCdHkQWKc0DMRnvTORDNGGI6n0TJ/4TtULS9euZMxvWunglCtRMVo2rhO5sNyPv1ynjSaTED4rFNSJq9ADOXalY3y3RFlux5ZNw6Wx0R52KVUt1stVfqHqqCI4ioa+wQJvlFqklAhSpv+kKvf0sDi2WoyPRSYNJZWXUv+0bvHHqBnV1lJhHxI5nR0AlWEwCelTtD3qqWaDha3N7q6uTzwoxrS94nEw4LGg1aGxaiA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2662994-e954-4ada-46dd-08ded68959fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 09:24:14.1696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 80hFI0j+ODx3DmbrEqJK1G6eRfnE/EvV/er1JRIbxj94IMLnY3/pAvLJSrr/QxCD4Cf3RuwIEjpuI7ifIxz45g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4811
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 611EF6E21AB

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaW5vZCBHb3ZpbmRh
cGlsbGFpDQo+IFNlbnQ6IE1vbmRheSwgMTUgSnVuZSAyMDI2IDIzLjM0DQo+IFRvOiBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEdvdmluZGFwaWxsYWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT47IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAz
LzddIGRybS9pOTE1L2Rpc3BsYXk6IHNhZ3YgcHJlL3Bvc3QgcGxhbmUgY2FsbHMgdG8gY2hlY2sg
cG1kZW1hbmQgc3VwcG9ydA0KPiANCj4gRm9yIHBtZGVtYW5kIGNhc2VzLCBubyBuZWVkIHRvIGV2
ZW4gY2FsY3VsYXRlIHRoZSBtYXNrcyBiYXNlZA0KPiBvbiB0aGUgcWd2IHBvaW50cyBpbmRleC4g
VGhvdWdoIHRoZSBjdXJyZW50IGxvZ2ljIGF2b2lkcyBzZXR0aW5nDQo+IHRoZSByZWdpc3RlcnMg
YmFzZWQgb24gdGhlIHBtZGVtYW5kIHN1cHBvcnQsIHNvbWUgcWd2IHBvaW50IG1hc2tzDQo+IGFy
ZSBjb21wYXJlZCBpbiB2YWluIGFuZCBkbyBub3RoaW5nLiBTbyBsZWF2ZSBlYXJseSBpZiBwbWRl
bWFuZA0KPiBpcyBzdXBwb3J0ZWQuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGls
bGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDYgKysrKysrDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRleCBhNGNlMjFkNGMwMjQuLmVjMWJmZTQ2ZWRl
ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJr
LmMNCj4gQEAgLTI3NSw2ICsyNzUsOSBAQCB2b2lkIGludGVsX3NhZ3ZfcHJlX3BsYW5lX3VwZGF0
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlpZiAoIWludGVsX2hhc19z
YWd2KGRpc3BsYXkpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiArCWlmIChIQVNfUE1ERU1BTkQoZGlz
cGxheSkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+
PSAxMSkNCj4gIAkJaWNsX3NhZ3ZfcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSk7DQo+ICAJZWxzZQ0K
PiBAQCAtMjk1LDYgKzI5OCw5IEBAIHZvaWQgaW50ZWxfc2Fndl9wb3N0X3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlpZiAoIWludGVsX2hhc19zYWd2
KGRpc3BsYXkpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiArCWlmIChIQVNfUE1ERU1BTkQoZGlzcGxh
eSkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAx
MSkNCj4gIAkJaWNsX3NhZ3ZfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUpOw0KPiAgCWVsc2UNCj4g
LS0NCj4gMi40My4wDQoNCg==
