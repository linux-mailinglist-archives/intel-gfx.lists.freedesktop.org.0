Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DC7B0E19E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 18:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53BBC10E31E;
	Tue, 22 Jul 2025 16:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pjacp4kL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E23F10E31A;
 Tue, 22 Jul 2025 16:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753201365; x=1784737365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qdffGtXrvOAxhpJrhIi+EOUIVcte9uS31GYPhQPk+nk=;
 b=Pjacp4kLuM/wUputAj7rUOOIToU/gOHEupFYeafZ9iwaYJyBNak/Ny99
 4qXg/Kwel2Fi+q0tO/TpTmMTWOKuKf2w9q8oSPz+Y8A0QTSNjSpal2INd
 m1l6k4B2bZqdvij4lCkWjenZGt04SvlwOeEadUrxVKcnb1Viz/tuWPJqr
 9Ti6k1s66SU6enXmCY04H92iWuo59tFJIXrnoiZDuSdflQVo8wxn0IIse
 7Rc+UhJ9V+QTqu1EX2lroB3MR7yW1KqwiuVeNSgnrix3F52WmLRjb9NOR
 sEiswveTb+8i4ctrfTXB1yfRRkS7e1Gf/uK48zY+z/48l5PGeDO+rzXn0 Q==;
X-CSE-ConnectionGUID: sAlsRYyUTkCDQuKIkgoiPQ==
X-CSE-MsgGUID: MXmNAuFVRHySEWhbO6Umlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55342759"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55342759"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 09:22:45 -0700
X-CSE-ConnectionGUID: 3Sr8t1SlSZCGNSS4bkUx1w==
X-CSE-MsgGUID: Iltf5inPSoSREbZLeroHfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159579761"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 09:22:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 09:22:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 09:22:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.79)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 09:22:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vhJ/SbmnQ1spOx93GAZ5rf8LLAL4ICyDDSnHjohy+wvTkXiMLYgoSDrBCrjs/UVejMja3FYbFb9yhoAypMqmUtto7WHHWjnN2oDCUy0vKcMyoXNEj9VG61DslnzaTQ+AjoqV5eyzSOWft5ohumCyb1DgJT4uSOyLvCOUV/dwEzQutlI71Ms7jkk0tyaUgwtebqQ3PlSAMFVzKB3DXsuzN+eod2KZEuPjMe24JM2/qbspd8Yw4wkSIpB3wvektYw0knD2tZhrr5qX+6kpAv/QDy01dvFelMXgW6tb1sSYO23LCTLTnqAjbV9bLT2r7YGj0Ob/IkTgZBaReIr9ESViRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r6w7m/r2lqsMRKSrW8As+rD7TtEQ49YfkDSJuhYQxHQ=;
 b=bDg5ETR/foGFAxIa8vjJUP+tzhECzSxCPQnKqMtl0AhT7doUILvqEvxBAgTW3jdEFlKqoDdLIX9Xr55w2wmMUwZwYnAPX+VZHYmXCPWXSR6chjNV2epV7gV6pYQVHuq+NuHkm+bCf4+PfGrbdmvRKtTezWKO4vaMwjQai8Nks9tKsATUFM39Rj7MySNjEmUFBbCmeD+P3F8zIJzYx0J0H7fDBLTEubfN5egZZjbNe8ykPCJmLm9+hlfOjekMRwD0uU3ZL8GrW9Mo16BPHRLmcm5NSdSktURVI9jYaKTc9OLwAFsdLaM6lNFvJV180N/xrBUFMW2nWgGcjcFaB6iSbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18)
 by SJ2PR11MB8324.namprd11.prod.outlook.com (2603:10b6:a03:538::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 16:22:01 +0000
Received: from SJ0PR11MB5072.namprd11.prod.outlook.com
 ([fe80::a14a:e00c:58fc:e4f8]) by SJ0PR11MB5072.namprd11.prod.outlook.com
 ([fe80::a14a:e00c:58fc:e4f8%5]) with mapi id 15.20.8943.029; Tue, 22 Jul 2025
 16:22:01 +0000
From: "Grzelak, Michal" <michal.grzelak@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v5 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v5 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHb9NmNQKxnHwgPp0KfjAJmVYsp87Q2LL0AgACb3hA=
Date: Tue, 22 Jul 2025 16:22:01 +0000
Message-ID: <SJ0PR11MB5072E0E8FCFCAAF54937CBE38F5CA@SJ0PR11MB5072.namprd11.prod.outlook.com>
References: <20250714160931.821383-1-michal.grzelak@intel.com>
 <20250714160931.821383-2-michal.grzelak@intel.com>
 <oje7e3zratt3eplbvkcqd3jy6dma5hscbciz2vbppxhdyxeu7m@7bjphqwbj3gs>
In-Reply-To: <oje7e3zratt3eplbvkcqd3jy6dma5hscbciz2vbppxhdyxeu7m@7bjphqwbj3gs>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5072:EE_|SJ2PR11MB8324:EE_
x-ms-office365-filtering-correlation-id: 7f4a4fd6-f88b-4981-722c-08ddc93be380
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?kibaQ5bKVftpruf7zKTJG5juMGKroWszMav3Yx/zN5BCNOTF5/XxK9nrC+?=
 =?iso-8859-2?Q?z9E3ELSj7I4TkJPsMFwuNH1g8V0gBK9ZH3dekJv48cD3WNIc/wZebK3h2H?=
 =?iso-8859-2?Q?KCLCT2iTTQ7tKH4zDpSXmh56QSlhNNiAYl8P2vubmSnhd/0YuTH4tGSoTl?=
 =?iso-8859-2?Q?3QxKl5LnE1k8LoJ8bYBnFh0db3tL9PCr8rDMgzdT0J+RdYYYsySSURxKgL?=
 =?iso-8859-2?Q?nw0HdzF2+iSepN/Q/7XymjUpgfWv6wN8lcxZt1sWKb/l3oSmYzdazsuFOD?=
 =?iso-8859-2?Q?BjYIXCec0F8fRFua7L6+a/EEp4O1oQgMwVHfJR+1Qegl1BYHUFKNGJcWKr?=
 =?iso-8859-2?Q?A/ZvW+AqEbVJYmxQfZGV/ecu+dmMlUj7631J0XrJLQSMg6euQLK0ArYS9i?=
 =?iso-8859-2?Q?e9i8CfAbOojYC+AkK/A17PfRK8CYjO1McNzyOR4KZ+KUSKMbfWeA+i0trG?=
 =?iso-8859-2?Q?pY+vkGE6ekbWPdRtUuE9As02sn5JG6YD6in90bs1IzdXUXJZD+G8PpWEiC?=
 =?iso-8859-2?Q?1SUJD/M+YN3nHx1Nv+bTmuXrOVe8MU1PEbmrKUyfduSQlDUm1l3uKtZIH9?=
 =?iso-8859-2?Q?b9xrh/BxtKiGflzkrpGMgj40Fw/wfV1K5kjnx5VZyoKNMUNuk7DiMwJT1r?=
 =?iso-8859-2?Q?NU9CKgb8u9B13eIXAWjheJOC1pgNifDyBC3LUDpOVUMxnpGXqtsIfkoePF?=
 =?iso-8859-2?Q?PLXm5CT7gX5BdmJDRSet7r5FAGl7jI+XgAHjq164RfOWAFXOdXpJHA+pQQ?=
 =?iso-8859-2?Q?F9tZBCKFPl+9ev1aw1+yzNq+v9hfXthla33n8WiIfAId0r52n8THECzw1W?=
 =?iso-8859-2?Q?+JKVNn392kvta3waiLhoet9E8lR11z07WmObQ95WY551Zv3rZWxrYs+G2z?=
 =?iso-8859-2?Q?0M2IQtMvSZ/fevIGmvd3mVIjJP23NxP+E2hTXzWSLevc2RHY6B7+r1Ba0C?=
 =?iso-8859-2?Q?pHTXc7a9vpyM4KXJAI2MLxJrQ7WroYGK1piJA8iHBl1PYX/Qp2A2hYGKse?=
 =?iso-8859-2?Q?ofvhE3GCnbRbVibzKNVm4eRre9TSHHOnCCwMMGkcGX+e6wc5Q1v8Aj4/gZ?=
 =?iso-8859-2?Q?0Qh6ms0FU1Mr4xBZjQ5mbrICFUWDej1G/GhDN34nuP7tIzuhT3K7taFkEK?=
 =?iso-8859-2?Q?46B+3zyz5owg+WGtB23SaXbToZwEBJ1h+1rtPp+910ALAg8m123Fo7f4+Q?=
 =?iso-8859-2?Q?2MZmEIbvJuCmGIsi/xW3/9Op5FuICCIgVSjRxuAQh0Vyx23Yh0ou7atUSS?=
 =?iso-8859-2?Q?xrYV3W0RlIC25L0512SzXqiF/ixy3kErJR5/QSoIXmPeFc0CrsOkjPuQC7?=
 =?iso-8859-2?Q?J//WFMNzOSPDPMUeZzkifdGxp3dO8fPFHV0l1DSVabQ0WaWHJ5pN0ErdFm?=
 =?iso-8859-2?Q?87lOTboe1m4mI9R976ocEaDjwMUqIEIyxdsA0fHvghCTQJvsk7ChzlQMO+?=
 =?iso-8859-2?Q?kfHLmIRrHSbV3j6jxdJQ7dVuG+1pORHyiEsbIUlhdJvLjxJY2KaetbiUgk?=
 =?iso-8859-2?Q?aBqv0bN2LK7uPibAbzMJbWT8mBb54BgBqP1HhqA+FjdQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5072.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?pC5aNhDnvIrnnztXwR5wQ1IhmJR/e7QbnbT3pfujWjKZq0wYVbWOLSFOE5?=
 =?iso-8859-2?Q?qRAMxcE4u30TXYVuflwjFJtZW2p091e2+ZAZIuFdI3ALzb2MAtuGvCUKZl?=
 =?iso-8859-2?Q?1AitmYzT1DgDftB/e7sER3o2yVIDRGNhZPTPa7iwZM+qOBfxiYgB1bvl02?=
 =?iso-8859-2?Q?B6BJbFNQrOJ0In/0jxAXMYpsx1q4Tgj+8wyvE0GgqvbJ7AcqDyudBFgjT4?=
 =?iso-8859-2?Q?x+z7a6usrovasBr38Yhoz3L7fwO4Hk6narnsysFqeMxbt1t/JmGX2a2Ikc?=
 =?iso-8859-2?Q?MyRoiUtxLREa8jTPBqaW1TozNnUJ4wU/rbW5bfTG0xvf1SAQCw4UdQ21D4?=
 =?iso-8859-2?Q?imroo66tLjwXc/HJaSKeEtnldHy9q3dbEXkfSbBSThwWJhlSOdmjYrQIUc?=
 =?iso-8859-2?Q?U1xrwdibJ75DsYmQVcIDk6/fIRr//2OkXXwgqZrZhCiStHN6PxvLOsE5KR?=
 =?iso-8859-2?Q?aXQaX4Sgy9UkUQaCC/hX98SBn6i+5CVU2MU0ZJ8kTMawtMy3yQlrIYtSI9?=
 =?iso-8859-2?Q?V1oTxwRk9ZgK+1aCwAzHg5FPJGo6fFvfgVsuu1+hwIvB10raVlOx+QK/wr?=
 =?iso-8859-2?Q?NRYulu9MzLqwHHTizVPBtxDwK+J6coLcZuXE4PQDCe1ibciwa4Ak9Muwf5?=
 =?iso-8859-2?Q?1SgtkgdQUEiOBcI66vEXoD93E+A0xzdOsraWo+RXWpo+nKJMwjNdbmq/NJ?=
 =?iso-8859-2?Q?6/VIjAjlnM0/KPHJZo/YtTtCpCEu5Ktod+4bHTjH1RDyUKrd2veDqRW3oE?=
 =?iso-8859-2?Q?xZZ+JIEHJoLkAgfZK2By9iTArLhIi0gdYde+ESprq45Nf1goJnaCrSqc29?=
 =?iso-8859-2?Q?Pb5FW8j/pTlUEedyi6nslWM9f8wQhOsWv69UakbqfSIpcxs19xcnwhAm15?=
 =?iso-8859-2?Q?6SuqGNbclWtCRURE0bveQICp1ZncJPkE/wDOawu+y6jy1gGBpK+DjhUhLj?=
 =?iso-8859-2?Q?Yoe6l2jhFPH0y5uKjGhHbYuhjx5JbhIyUK27AQFMwb/PcUmoB7UJSsiGJq?=
 =?iso-8859-2?Q?MrHotCv2AJ2momIUYnN7dCVTWJOpKmRVeS7ER6NqeVHJzajWkg1U+LxpfR?=
 =?iso-8859-2?Q?DhmXefUGRBxfzO+GYwxxfIFJR58zrqvxr3bS5dH6Bb2tEqSuKO8ThoR5go?=
 =?iso-8859-2?Q?LSjfWn98jJolsig0IpOETc7JMW7Z8MwjbXMc2+G9FirhfLQxYmRnRIUt0G?=
 =?iso-8859-2?Q?9Txxx+6wSFAw1nVaCSDBXUCOcp7YGExWD1usMd5RlSdEzCyHKdIlCYPgl+?=
 =?iso-8859-2?Q?IeF/eg1+VWJ+wBsOPK4YdvkD7UMVDb6l06wHbgy29JCQra+FyOw7NB19h9?=
 =?iso-8859-2?Q?rPFawuLVefAgWEGLnDUS33h6J+HfWjSvYdjcu+7w7HY/CcL49JOlB6ZZfO?=
 =?iso-8859-2?Q?/9djLjjSxvxYdm0XtNB3j/I4ZRSU4R8i5cIH5ZP3BtwylT3HvTIvZ5xRQ9?=
 =?iso-8859-2?Q?H/Ij2e2HL5+LsjECcHR9rP1ih/xLjk26rTbfPOcqRV1C8Zpdc+A7bZ6h53?=
 =?iso-8859-2?Q?GK6/3dC1sSmSww46VFFK6PMx8U9Q2ElxTl4JvBoqyzXVWbIEeB+Kb3kAwD?=
 =?iso-8859-2?Q?jls/hQbYrTbie62jNrSKhNhpCITGHwyQkPbrCjBzvvR9fPsvnm/HsixyLt?=
 =?iso-8859-2?Q?zLzX/g/A8iJtWrEvj/O4lI6iBMYh+/KXzu8PJjP2ahRwYz0i9jkbOhTqI+?=
 =?iso-8859-2?Q?zAcA+kUqChlbjxfpyTU3B7/paDPrHoDaUB0eOUFd?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5072.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f4a4fd6-f88b-4981-722c-08ddc93be380
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 16:22:01.3188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: //OQl4DzS/yHjI6CKm9MUVpRWk5du65BYLrHkxHJl62XpnLyyZJIDk5/oNFU4q33FhZaUmo0DXS72am2Xvmkprxvox7uw1xZkPTcVmRpUkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8324
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

Hi Krzysztof,

>From: Karas, Krzysztof <krzysztof.karas@intel.com>=20
>Sent: Thursday, July 17, 2025 1:09 PM
>
>Hi Micha=B3,
>
>[...]
>> @@ -2937,13 +2939,21 @@ void intel_psr_pre_plane_update(struct intel_ato=
mic_state *state,
>>  			 * - Region Early Transport changing
>>  			 * - Display WA #1136: skl, bxt
>>  			 */
>> -			if (intel_crtc_needs_modeset(new_crtc_state) ||
>> -			    !new_crtc_state->has_psr ||
>> -			    !new_crtc_state->active_planes ||
>> -			    new_crtc_state->has_sel_update !=3D psr->sel_update_enabled ||
>> -			    new_crtc_state->enable_psr2_su_region_et !=3D psr->su_region_et_=
enabled ||
>> -			    new_crtc_state->has_panel_replay !=3D psr->panel_replay_enabled =
||
>> -			    (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled)=
)
>> +			if (intel_crtc_needs_modeset(new_crtc_state))
>> +				psr->no_psr_reason =3D "CRTC needs modeset";
>> +			if (!new_crtc_state->has_psr)
>> +				psr->no_psr_reason =3D "PSR disabled";
>> +			if (!new_crtc_state->active_planes)
>> +				psr->no_psr_reason =3D "All planes inactive";
>> +			if (new_crtc_state->has_sel_update !=3D psr->sel_update_enabled)
>> +				psr->no_psr_reason =3D "Changing between PSR versions";
>> +			if (new_crtc_state->enable_psr2_su_region_et !=3D psr->su_region_et_=
enabled)
>> +				psr->no_psr_reason =3D "Changing Region Early Transport";
>> +			if (new_crtc_state->has_panel_replay !=3D psr->panel_replay_enabled)
>> +				psr->no_psr_reason =3D "Changing Panel Replay mode";
>> +			if (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled)
>> +				psr->no_psr_reason =3D "Wa_1136";
>> +			if (psr->no_psr_reason)
>>  				intel_psr_disable_locked(intel_dp);
>>  			else if (new_crtc_state->wm_level_disabled)
>>  				/* Wa_14015648006 */
>Is it possible to have multiple reasons for disabling psr?
>The way no_psr_reason is set above causes only the last reason to be logge=
d into that field.

I think it is possible to have multiple reasons, but I don't think it is si=
gnificant to store each
observed reason at one time though. The intention behind no_psr_reason is s=
imilar to
no_fbc_reason in intel_fbc.c, so to prevent adding a list of happened/not-h=
appened flags
of reasons to `struct intel_psr`, and encompass all of them in one string.

Currently, when PSR is disabled, there is no reason logged, so I think it w=
ould be beneficial
to store & log any reason.

Best regards,
Micha=B3
