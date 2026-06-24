Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id igr0GkWdO2qUaQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:03:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE936BCC7A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 11:03:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SObPztT+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E1410E087;
	Wed, 24 Jun 2026 09:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE5810E087;
 Wed, 24 Jun 2026 09:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782291778; x=1813827778;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1E5pqvrvGoDUMynN4BYqSGsd+pzMz3iGgcMW2GsLM00=;
 b=SObPztT+Tpbx6kH5DgM+7WNuSdxXj484lnbKtTN58BZKnrcyjt2QvcRF
 7JW8ITgMykP1Qef5TcM1PN6TO6Wl+or/T0gqp1AoD2LegIWn/TOLMAIvw
 mAVdxQKogx2ETFUopkRM+e4h8osdyMNiH/XbTeMjwRkoU8RJiZ8juZpdg
 oBwwRujjEvQ+R5IoeQeBLsW2AVSfKbpIyeZeJzyGORiVpvlcWa9Ik+rUT
 zSDc9ZjmW43k67YRuW2rrPjgQGehAkmLIrwBjlBD1swEnryLUFO7T1kmh
 bz0r+Wf8SQSESxxWcvsOwPzWIt4i4+FxigumDJj6EXMSGqMzH2vYhM06n A==;
X-CSE-ConnectionGUID: Jxeu/QB0TcuW7MV65Jk0MA==
X-CSE-MsgGUID: 7AXw8iC4S3qyLeeW5WxL2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100597923"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="100597923"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:02:57 -0700
X-CSE-ConnectionGUID: nGc3TmYVSj6DZRp9tGZnXA==
X-CSE-MsgGUID: diES16uqSEW0hujBunvcTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="279936348"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 02:02:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:02:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 02:02:56 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 02:02:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EWpI1o6PW2NEwn5vpXM7Tr2AzvgSRlsoXiewlqX3SqVUy2+W2xeK6XqABSjdg5UBb6qnPSqn7M18eI3L6CkOauSCJowsU0PZQ2IN6cFYVk+Be/I8oa3Sxd+tr89ynOEPJc1R5p3naya3aYElbjibspDURND97Mc/FarqcRWaLmaC5ORdPtmbFD+a6ZGOWURe5BY0bzbXkNYApyYZDrhSI8hKhiQJugo3a0ylXLA0a6G6MTasrFjML4jIgKfr9Hyd8NJgrZBvhXPZpPYPsgZBnkGtPti7wX+5nteU1BM9soRBoOmeJ3ovnkKPGFGyrmetikmnoc98cn1KTirWzHdjoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1E5pqvrvGoDUMynN4BYqSGsd+pzMz3iGgcMW2GsLM00=;
 b=nXnH5SLWorTSeArA8lsPys2KC+hkwWLQsNL8YSI6oRcb/sr3Q8WQqbSaQ/GJR+8He0bu2Gdd8us4CTEmNN9D7vznPJg3K4/fdk+hDiQiUYTSpJB8+28x9JoVVxHNdokNBjJU6GgZL0M4fnt+/BS+xQyTT0ZIGJdz2RBMaqK+iopZGAffq5VWkljZp5nNXXiLebkveb5ddZ0TLuNuDRn5AJQyfGChumhixfnV9RtvRBdPxHqGIWzi7gMy612OovIke285IB5QpElVhaI+zSyd4CaZxC6Rb/HHKy+MGeKmCMs1OAR4p4TvuWbyErjRYOe6lftKseLL1zkjALFLtomTfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA2PR11MB4924.namprd11.prod.outlook.com
 (2603:10b6:806:113::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Wed, 24 Jun
 2026 09:02:54 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 09:02:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 17/28] drm/i915/dp_link_caps: Add helper to get common
 rate index
Thread-Topic: [PATCH v2 17/28] drm/i915/dp_link_caps: Add helper to get common
 rate index
Thread-Index: AQHc/dGjx8s4DLGB5ky8rSk9oAWMQLZNdMBA
Date: Wed, 24 Jun 2026 09:02:54 +0000
Message-ID: <DS4PPF69154114FC059C1D8C56FCA148956EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-18-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-18-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA2PR11MB4924:EE_
x-ms-office365-filtering-correlation-id: 0edb46fa-d20b-431e-6fe3-08ded1cf60c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|22082099003|18002099003|4143699003|6133799003|11063799006|3023799007|56012099006|38070700021;
x-microsoft-antispam-message-info: 5DS8791CHROHoG9UPLx2dOfYaOd2MU2v0DUDydFKNjrfOrHv/ECJjHSSqKIW7u/IQUEbmx/SSJ35kD9hTdwRFWvL9pRww/y3ZZ6ngbuBlFtjgBd0IOSfV12KJysDjHf7mS47DV4q6kcWsllTm6bs9vonKH6MPBmfaYWCBQf2dpP1BOQJm4jc3EikUZdZ6g2UHRE4z8BkC1gqMKMZPXKjJdHfE8NgEIzqIjSkxws8MW1yYYSa3WWuiZYCF8aKXIpBMYlk54EidE45azCBTkp0e6z44xmQN1wN83MVMq/gBDrNCs3WJ7sxKoTNoMygpxtjp66i+Xu7EWYWmwkD97WkjM8Ea1n090B4d4EuNAGhF5WPYxeTtqkLko3QPZwzekhpLWz2l8MHwUQsDf6PeVT99JD3KKu/7uVzyvxE4fJ777bWdVl5t7GGwIIFi8D1ELlzAMfYUN3Hpa/bjrtI2172tCRJBSak4K8jO1klpj9poZyS5dhCFZSShZWYtFYLgtqJgfm7EiQmovB/sOYKMWDLJ1fIzguzy9b27C0b3hy8bZ54JOdoZSunYzd7OMhgZoHpDFeN8fFJA2dws8Tp904p6GE0RPFYMewROf4156bfRJfe7PWYNa+t9HkkM/r43rbXz97nrt1zViIeAi5UFIcFUPsHwWiJnOVNtpJHzGBsnjtsB4Jqpl4EDabbaHgNzMjZRs7g9Qdb2cKFD7Q2gaM5tl8fl6PG3q/DQAeWv7lo3t4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(22082099003)(18002099003)(4143699003)(6133799003)(11063799006)(3023799007)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTIxMjZpcVhicE1IMlM0bEwwWkhWMVdHZGNVVFZQeHN0cEkrQUx3Vk5tamxj?=
 =?utf-8?B?QzQ0TktsMFpMUE4wbE9GOC9QbFhZNXlKYTF0eTNaSnhhOWFVMVNVTCtVK0Uv?=
 =?utf-8?B?c3AvZWhHUFc3ZHNIT2ZjZDZlQjFwQzIzemhDaitLbU83VDNHT3hXS2dJR3JT?=
 =?utf-8?B?UEFnMHd0Z2lwVXZhVVV1S1pyYWR4YUNlTUxQTnJULytNTmVpajJzM1U2ckZt?=
 =?utf-8?B?WWRzWTBQeUtKZEZobzZuUmVzUDRieVhZT1V6S051ZXZFL3ZOa3kvbUswTDR4?=
 =?utf-8?B?SERDcGR2cHNTV3l4MHFDNlF0SmQ4dDVWZWJnbkRtMjE0MEozd1A1NEZlQ0Yy?=
 =?utf-8?B?NEpUUUxjRFFPMXVTOUVXSndMOXpFazR5Y01KM1E4NndldENKd21QdmNTeU8x?=
 =?utf-8?B?aFNMdVNHZUVlMlJNajFZOHk0dHJyK1JPbHRVdDg0dVpsUDd0aCtrZjZRZUV2?=
 =?utf-8?B?d2hkWUcxdmo4aEJpNE9QRWJjdjIwUTFjQjZkeEdUZTRaNm5jSlppWG1aaXF6?=
 =?utf-8?B?cUZOWS9hQ2pJelRBZzVvUnFXY0JFZmJFLzg2Ny9YT1QweXVGSExmY2hsK1NU?=
 =?utf-8?B?TitiSjdoQXBaR3ZieXdZU3hzNWZTNnNNOTVUWStEaTN1d0l3QlNxeDJhWENC?=
 =?utf-8?B?WS9KVERVVEJwd0g4eHZhNTJqRFNuU0QwVGlZQ3pYMVFtTytaZ1ZPRy9FRGxU?=
 =?utf-8?B?NEVhYjFxSXFma25hQzhKeFc5WmRETGFQV0V2WlRDMWVKL3ZUZUt6ZFlhZVlY?=
 =?utf-8?B?S01HWVlHTFVJRzhoQmUvMWVnWVlUOVNtVFdBdVB0Z1V5RkN1bTc1dzRLOHFU?=
 =?utf-8?B?ZzNpUGlUNmVxMzg3SW4vSkZ5ZXhJSTdrRHdHMXZpU1NyTVdieFRlUS9yTTZ1?=
 =?utf-8?B?TXlvRVMyZzRRQ2x4SFZlV0FGWjZGVUVJY2VNODNUSXRnTmMvWHVjTy8rYkJt?=
 =?utf-8?B?ZERNNUVycHM4R3FLWURXbXdodzBKRGMweDcxc3pRMTQwMVgvNnRDb3BJV0RO?=
 =?utf-8?B?YnZ5aWF5cHFLQVF1TTFwcldYOEFTZGRpd0VTNEFHZWxjcXFNZ255Sk5qOWVq?=
 =?utf-8?B?Z2orQ0kxNzhuMXFyQ3dkSVpIRmVUSE5TdnJiN2NJNTNtM0VPZUcrR2NyLzdV?=
 =?utf-8?B?Z2hoWEoyM0dmYStzbFBISngrbnJESk1tVEV0N0h5ZkF5aWRpdk5pdGVLSTVZ?=
 =?utf-8?B?TEhuU1FvRDA3a1FHSXNDbEpnKzRMdWlRNFhRT3lpTDJVckV1UUwzSlJ4UzFL?=
 =?utf-8?B?OUlNYlpPU2RiTEhTVFFGcjZQazNmNDhoejZkRkgvMzlpYWQ0V1p4TXgvQzA5?=
 =?utf-8?B?M244djJoaldqOWhOWGprS01BRlc0eXVxUEozRVJiQlkzTmJQRWRrbzNNM0lY?=
 =?utf-8?B?YjdHWWh1a1ByT0IzWXRQcnZQMW1Wd0xULzdYbjJYOTdYUXUvbXJwd08zMmMw?=
 =?utf-8?B?ZzJoRGsxL25qcURWb3hycTY5MTRTSWMrd1FNSVhWRElTZ2Q0M3FZaE1xMm01?=
 =?utf-8?B?RHNGejNaSjV0SUJxY3hnVmFtWE1zTkZoaXI3c3pmRytJb3RUMWw0TlQ0THp6?=
 =?utf-8?B?SGRvS0hXRDBQRFQwbTVvelU5RVRrOUlkMFFHN0UrcGx4WlZqY2pMV040YWdt?=
 =?utf-8?B?bElySnFwTUFuaFNVcHJTN2E5aWJGVXNJMEE0L0pRUlltREVkYXA1WE9pODY3?=
 =?utf-8?B?SzIyeC8xZXRrV09DVGZUK3FwZVlJdy9JaDFHVVp0SmVkWCtjOFJ2dnZqdG5U?=
 =?utf-8?B?eUcwTkZZZ1FNaVZYQkRsRk5YSkdIMnRTMjNNMDBGZTFjeElKbzI5dVB4TFpM?=
 =?utf-8?B?KzhtWUZyYldWSndBVVpjSHdKK085RW5ZOXNDeHFDWUFtTStPL2xmbnNSM1RM?=
 =?utf-8?B?b1BSaWtFK3pFTUc3WlZoT0FUREhhdVZmYVk4cDU4VjJXNXBRaERQREE3ekc1?=
 =?utf-8?B?QXpHbWZWVFl5OUNOKzA4S04xV0xlU3R5ZjNpWnBnTER0UHlNOEpZVStLdUZh?=
 =?utf-8?B?K0JsTDlLeXFqS3J1elNTczhoRVJBY0Z6bGZtRDRFYW1jejN0N2ZjMVVIZkd1?=
 =?utf-8?B?bkxTbmhjclhEQUVMWkVZSmFQS2t0SmtROUxwK3R0azU4YXI0bG45YWN3cTdM?=
 =?utf-8?B?WUlkRm5kZklJWUNKYnc1S1paODVtMFFkM2d5c3o5MFVaTFdCMkN6SkRpRFJV?=
 =?utf-8?B?UEhlNWd1OGhhU1VTMXlENkV0TmFDV0l6MWp1M3c4YnFhdHNhSDBESDhqZE55?=
 =?utf-8?B?aWpkQ1htTk1uMFd6SkxSL1o0ZGxNZ1pscW40cTJOOURwQzZMSXZUUFJ3YWJO?=
 =?utf-8?Q?SU248He/U+JXOXZwM7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: l0bM6UOyeWCuNNH2L9o5SVyQSV6xbVdOcnD6XyC1Kqe2/SenSh2yHmMmM8ktaepQat1893AjYlb1DTKXJlH3qYAmRPE+4xoCtq3932TdqPK+sMieUukqPn8QZvhpWzJ5v3quxtkPZVYOZvGcBVwGptBzXreM0cbimCZ4hJzcOG7guvjDDLnnpum1j0qhEfdUjtp82qLhndHDi3/pfU3CW0gkKhpSepm63mcGqZvLxy2pOU8j/KFNAPfVHkdDeBmj5DasiCnUo7GSXfXN3dnwa25NSWcCkUF6892+lE10u3h2diPli3qmujfnhgNY3tVlbBiUAEqyOrFs2GY30+ndfw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0edb46fa-d20b-431e-6fe3-08ded1cf60c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 09:02:54.5127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ID0zCfULvpUDilVYAKqTM3MFA6k5Apbp3y52VW1vl6zTMrdS07Vx5WwQolhR5EJPw6/6RD1zlmHBScj6Njo5XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4924
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
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BBE936BCC7A

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE3LzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IEFkZCBoZWxwZXIgdG8g
Z2V0IGNvbW1vbiByYXRlIGluZGV4DQo+IA0KPiBBZGQgaW50ZWxfZHBfbGlua19jYXBzX2NvbW1v
bl9yYXRlX2lkeCgpIHRvIGxvb2sgdXAgc3VwcG9ydGVkIGxpbmsgcmF0ZXMNCj4gdHJhY2tlZCBi
eSB0aGUgbGlua19jYXBzIG1vZHVsZSBieSByYXRlLiBUaGlzIHByZXBhcmVzIGZvciB0cmFja2lu
ZyB0aGVzZQ0KPiBjYXBhYmlsaXRpZXMgaW50ZXJuYWxseSB3aXRoaW4gdGhlIGxpbmsgY2FwcyBt
b2R1bGUuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2Nh
cHMuYyAgICAgfCA5ICsrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX2NhcHMuaCAgICAgfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgNSArKy0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90ZXN0LmMgICAgICAgICAgfCA3ICsrKystLS0NCj4g
IDQgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
Y2Fwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMu
Yw0KPiBpbmRleCAwOWI2MGEwY2Q2ZmJiLi44NGQ5NjM2ZjRhZGI0IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gQEAg
LTYxLDYgKzYxLDE1IEBAIGludCBpbnRlbF9kcF9jb21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLCBpbnQgaW5kZXgpDQo+ICAJcmV0dXJuIGludGVsX2RwLT5jb21tb25fcmF0ZXNb
aW5kZXhdOw0KPiAgfQ0KPiANCj4gK2ludCBpbnRlbF9kcF9saW5rX2NhcHNfY29tbW9uX3JhdGVf
aWR4KHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcywgaW50IHJhdGUpDQo+ICt7
DQo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGxpbmtfY2Fwcy0+ZHA7DQo+ICsNCj4g
KwlyZXR1cm4gaW50ZWxfZHBfcmF0ZV9pbmRleChpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0KPiAr
CQkJCSAgIGludGVsX2RwLT5udW1fY29tbW9uX3JhdGVzLA0KPiArCQkJCSAgIHJhdGUpOw0KPiAr
fQ0KPiArDQo+ICAvKiBUaGVvcmV0aWNhbCBtYXggYmV0d2VlbiBzb3VyY2UgYW5kIHNpbmsgKi8N
Cj4gIGludCBpbnRlbF9kcF9tYXhfY29tbW9uX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua19jYXBzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfY2Fwcy5oDQo+IGluZGV4IDM0MTNmNmY3NjA0NTMuLjdkN2QzZDExYmEzZmUgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBz
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2Nh
cHMuaA0KPiBAQCAtMTQsNiArMTQsNyBAQCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWc7DQo+
ICBpbnQgaW50ZWxfZHBfY29tbW9uX2xlbl9yYXRlX2xpbWl0KGNvbnN0IHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ICAJCQkJICAgaW50IG1heF9yYXRlKTsNCj4gIGludCBpbnRlbF9kcF9j
b21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgaW5kZXgpOw0KPiAraW50
IGludGVsX2RwX2xpbmtfY2Fwc19jb21tb25fcmF0ZV9pZHgoc3RydWN0IGludGVsX2RwX2xpbmtf
Y2FwcyAqbGlua19jYXBzLCBpbnQgcmF0ZSk7DQo+ICBpbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9y
YXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiAgaW50IGludGVsX2RwX2xpbmtfY2Fw
c19udW1fY29tbW9uX3JhdGVzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2Fwcyk7
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRleCA2MWFkYTM0YWI5YzhlLi5lYzliZDliNGM4MDBiIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYw0KPiBAQCAtMTg5MSw5ICsxODkxLDggQEAgc3RhdGljIGludCByZWR1
Y2VfbGlua19yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGludCBjdXJyZW50X3JhdGUp
DQo+ICAJaWYgKGZvcmNlZF9wYXJhbXMucmF0ZSkNCj4gIAkJcmV0dXJuIC0xOw0KPiANCj4gLQly
YXRlX2luZGV4ID0gaW50ZWxfZHBfcmF0ZV9pbmRleChpbnRlbF9kcC0+Y29tbW9uX3JhdGVzLA0K
PiAtCQkJCQkgaW50ZWxfZHAtPm51bV9jb21tb25fcmF0ZXMsDQo+IC0JCQkJCSBjdXJyZW50X3Jh
dGUpOw0KPiArCXJhdGVfaW5kZXggPSBpbnRlbF9kcF9saW5rX2NhcHNfY29tbW9uX3JhdGVfaWR4
KGxpbmtfY2FwcywNCj4gKwkJCQkJCQljdXJyZW50X3JhdGUpOw0KPiANCj4gIAlpZiAocmF0ZV9p
bmRleCA8PSAwKQ0KPiAgCQlyZXR1cm4gLTE7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfdGVzdC5jDQo+IGluZGV4IGJhNDQ3NjljOWNmYmUuLmRhNzYzMjUzNmRh
Y2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
dGVzdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdGVz
dC5jDQo+IEBAIC0xNCw2ICsxNCw3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZWdz
LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiAgI2luY2x1ZGUgImlu
dGVsX2RwLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZHBfbGlua19jYXBzLmgiDQo+ICAjaW5jbHVk
ZSAiaW50ZWxfZHBfbGlua190cmFpbmluZy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RwX21zdC5o
Ig0KPiAgI2luY2x1ZGUgImludGVsX2RwX3Rlc3QuaCINCj4gQEAgLTMyLDYgKzMzLDcgQEAgdm9p
ZCBpbnRlbF9kcF90ZXN0X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+ICAJCQkJ
ICBzdHJ1Y3QgbGlua19jb25maWdfbGltaXRzICpsaW1pdHMpDQo+ICB7DQo+ICsJc3RydWN0IGlu
dGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzID0gaW50ZWxfZHAtPmxpbmsuY2FwczsNCj4gIAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHAp
Ow0KPiANCj4gIAkvKiBGb3IgRFAgQ29tcGxpYW5jZSB3ZSBvdmVycmlkZSB0aGUgY29tcHV0ZWQg
YnBwIGZvciB0aGUgcGlwZSAqLw0KPiBAQCAtNTQsOSArNTYsOCBAQCB2b2lkIGludGVsX2RwX3Rl
c3RfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJICovDQo+
ICAJCWlmIChpbnRlbF9kcF9saW5rX3BhcmFtc192YWxpZChpbnRlbF9kcCwgaW50ZWxfZHAtPmNv
bXBsaWFuY2UudGVzdF9saW5rX3JhdGUsDQo+ICAJCQkJCSAgICAgICBpbnRlbF9kcC0+Y29tcGxp
YW5jZS50ZXN0X2xhbmVfY291bnQpKSB7DQo+IC0JCQlpbmRleCA9IGludGVsX2RwX3JhdGVfaW5k
ZXgoaW50ZWxfZHAtPmNvbW1vbl9yYXRlcywNCj4gLQkJCQkJCSAgICBpbnRlbF9kcC0+bnVtX2Nv
bW1vbl9yYXRlcywNCj4gLQkJCQkJCSAgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2xpbmtf
cmF0ZSk7DQo+ICsJCQlpbmRleCA9IGludGVsX2RwX2xpbmtfY2Fwc19jb21tb25fcmF0ZV9pZHgo
bGlua19jYXBzLA0KPiArCQkJCQkJCQkgICBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2xpbmtf
cmF0ZSk7DQo+ICAJCQlpZiAoaW5kZXggPj0gMCkgew0KPiAgCQkJCWxpbWl0cy0+bWluX3JhdGUg
PSBpbnRlbF9kcC0+Y29tcGxpYW5jZS50ZXN0X2xpbmtfcmF0ZTsNCj4gIAkJCQlsaW1pdHMtPm1h
eF9yYXRlID0gaW50ZWxfZHAtPmNvbXBsaWFuY2UudGVzdF9saW5rX3JhdGU7DQo+IC0tDQo+IDIu
NDkuMQ0KDQo=
