Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iAHeMcmPIWq5IwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:46:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF0C641042
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:46:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Aw9AyXGl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14C011281D;
	Thu,  4 Jun 2026 14:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B6E112819;
 Thu,  4 Jun 2026 14:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780584390; x=1812120390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WkvGHOoZynBv71Kdr8FiuEQERIO487cvEvjZF+IngzA=;
 b=Aw9AyXGlRYBUqf4Dvvti1dtmX31lvWvC8nqNQKCm7JRQchQAUTKTSCMo
 EbzrMZyyFC3lFmhHTluBCa7olYwBpbrnpVYFpmcXkweMYSXvwHpyVRzHC
 8PnX4qDPOKn5mKbmdQFcX7HSq1h9rURxxZZJGT5s3KzPbjLYfehPIewJJ
 wzQANx8iIcSTDAE0hRG4+dT12deaDAssA4laclf23x5iQwmIwtYoeLR4U
 WcQIqvhg6CSlL1EPvh8wFkbIX7wnDeBdlNI9cq1LPPmEhmM+Ab2K3QCBe
 UGbPtOiFSmnwGuYxbUCYQUkfRbB5tbR5+IWMZgJcpcPnCbx/za3fzMG/8 Q==;
X-CSE-ConnectionGUID: k8RQP5FEQDaSGepSluurgw==
X-CSE-MsgGUID: WlnDr5ksRKGrDV+Skaa+lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92095640"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="92095640"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:46:29 -0700
X-CSE-ConnectionGUID: QdPtuvZVQ0aaZNthyaojkw==
X-CSE-MsgGUID: MWKULMCeR42d09qZE5pLzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="244678170"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:46:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:46:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:46:28 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:46:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EJg3lCJy+XFPiBofwcylmudk+e/nkczx3drhALy3SPNhL0pzMlneuX+ZLxTTwq5iJQZEbOwz5J+WqoyBsNfdCySntisG+zl+RAeo39vSh+Tl5Po2i18chhOA+Ez2qQvuU6OYJtQz4bAkAVEvOq1wGFPDL6o++xi1SHzL5FTed4wM6SFdnwupMI4pai0WJ7PaO7wWtxAri/3dfmp8cdZDb44cg5e7AjTqTEElZvd1gOMEer6zYCXww2tm6JRN2FOsAN0LZQxjkkb+sPvWctDmfeCGnQ5t0vmcXneqSxsIytNv3GuZMe85TxRnz7+rKCHcnUHIuTaKQHdLW63CaZ9UPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WkvGHOoZynBv71Kdr8FiuEQERIO487cvEvjZF+IngzA=;
 b=ni5vqSyqJtavTRKFCR5yCYnWMtCvwiLuf8WGrAf85z3OVQWtZxXTEx+ViUS7KH8dPG3892ZyTkx56oPHeA0wFAC1gdLmF2I6evmXAeex6f5UOdLiDQurkqE3t+97N/DQx8Ka8RreVWz3i0NgFg3FhOkct0pyT+szBs6PKvIZg9bbayWlcbj6O/9hy7mzRMxcevOvHXSm3cfmMiafKEb8LqHI8x0/soJZ20l0Mf2WyWrCzuFgOqoeFVMoGAdx3ze3DK0hSui45+uqcZayIy1hTMQ7uDcRf1Qe6/W4EhvsI2ipE9QyofIXRRxMSOaAVo4Z4O4tE6VQN1Qp5inbMzKGEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 PH7PR11MB6652.namprd11.prod.outlook.com (2603:10b6:510:1aa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 14:46:23 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:46:23 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/11] drm/i915/bw: Initialize num_planes sensibly for the
 first plane group in TGL+
Thread-Topic: [PATCH 03/11] drm/i915/bw: Initialize num_planes sensibly for
 the first plane group in TGL+
Thread-Index: AQHc7o24beIfE9NM+EKRwzNe6/HrMrYuhLYA
Date: Thu, 4 Jun 2026 14:46:23 +0000
Message-ID: <415e473ab03f9f754cc746c26e236e406b90ecf4.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|PH7PR11MB6652:EE_
x-ms-office365-filtering-correlation-id: 01d823fe-a312-46fa-d118-08dec2480c79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021|56012099006|4143699003|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: K2DUL1o3f5BT7uzLbo027+kOX6Jrm42bcgeUkaI2cgNx1zaP61pIa2R5lN74xd0vRT3Y1B6wyDwgaLHx+gyWqTV/CGpmiYUj/LXGABa0D20Rk2nuPhiLEC2SDhUhJhU9yK5bV6zHX7A8cbheQ4wCbSyz3ts93KDbQzlZdhGJdLlyXpZLGq/82UON45YFpT4DvWukmnPGot6mPr/L0NFXz9oW7AYAmdBgOIj7sSffDH9q1oUK239P/NLR1sWx6ncMCBgkwBtQQ+xQUyHinnOmR/fA75GTZUZCgxEL9EIbRtkacGz9Qf+ckuQpmR0CppHIDEWiavhAfr+odvnVotLk1KIu0AxR87HN6KOM0EIHETGGfcRPSo0rlQmLBlHXIYd+UkmagbvR/lcrnVfzX4IupeacId7eR5QdHOpSambALiSHJiIuAgl2Qacvc0gk7H5troNoBu+R2U1ku84Omost/GK2dXXU1yhldMKDgj7BIEeRuJRBYvCyY1wx9isUZe09FTuFWz+XlS+1VvhxKyVVXDpRQDphxivvDTV5fsUtJ4dCwv0oWjcY8zu2lNQTNqMJjZSbB8NMRzoPBWNhWhixrrEFM9VgF7jDRlBuw9/fnBjcPVeN4efrkRTxeb2zE0qTMpC4nwcuFT6pdTVPLhPf1W2gqIuBnGYB6LA+heV34xpKFZeHJx9TRJqAhw/QKwT2OBywVqNAVuXxKNhgyCF54rKIpEumuJlYT8f53GHxHowytKotVy8w8ELQAhpHE3Z+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlZpSmpYVnVCU0p5aUYrRjduN1FvOTNDdmpXeWozYXdtYTdFd2NKRVV4WGdp?=
 =?utf-8?B?Y3FkY0dqb2ZvN0Z0SFc1eHd6Nmd2TkpQQ0VuZ2tNaFNhMmJ3ZnV4OHhNV3pK?=
 =?utf-8?B?S2IrRXlma09qMCt2cGFFQ1FWK0VtaXIwKytha2Q0d1IyS0NjMG82UTNZRGhO?=
 =?utf-8?B?L2dGQ2g4R2tNOUdGRnBnRmhKSGxMb2I5bW5MTHc1SzdwclprT3lvTFA1SU1B?=
 =?utf-8?B?T3FBR2I4QVIyMVA1UHc4Nm9PYlhIL0MyRFhZYy85Tkh6WEw0Yk5haWNDMStZ?=
 =?utf-8?B?eEIyMFdUTERza0RwdWRDYkNSN2xnOVNrRlMxc0NGTXYvNjR1NnN5dzNhV2Rv?=
 =?utf-8?B?c2dHOWNucW9tY3UxUWZYNmpmMHVOck40dVZJRnlCY0E4U2pWMTVJSzRTVUNu?=
 =?utf-8?B?YlVmcUhDRnhBRnRzWVlKZERxUkJuUDRPMHJhWVl5SlJ2azY5YUxSaVlnZVlx?=
 =?utf-8?B?bmZKYzJGQjZsUTdqZGJaQWJPR2dHbGlVTHZ6bmU1Z2t0WmozYjBqZTl6VjJs?=
 =?utf-8?B?UlFyUnk1UlNST2pJTTllbkl6TktJY05mejhxZzYwQlhXaHNDWWRRdk96Unlh?=
 =?utf-8?B?dEtCcTFUOWtaNVlOdUh2WGxWMW4xZHhrMTgwL0tLL1AvRE50N1ozb2FYZ0JD?=
 =?utf-8?B?bGRybnZSeW12SmhnRUFOamQ4U1RYU3pNTHNFOEJ5SENaS1dZWXZGWlFhVE5u?=
 =?utf-8?B?Z2dMRStmTTJoRXdmV0VQUk4xQVhuVVJSaUY2T1g2RUd5czI3bTZaZjFtWERJ?=
 =?utf-8?B?VHVHTUdxNytQeTU0TUZySHpaK1l6aUJwa2RZbTdwakE0UVdKOHl2N0pLUU15?=
 =?utf-8?B?UjU3QVBwcFpTbndMZytaSHpTK3d5ZEJpdkdJTTZ5V0hlWkczVzFxZjJROTl6?=
 =?utf-8?B?cHFwU1o1emJyVXBXOHYzRDljQWFGQW5Ec3ljRytCMkw1WUY4QUNEY1p5bjBl?=
 =?utf-8?B?cXliY1RMMDdnamZVdzhtaGhxNDlYSFQweURBT3F4SjZ0a1RsYVEwcXlTSUlC?=
 =?utf-8?B?RVZUQStaUmJzRFVDVnBkZEZjQVJvSDNMb1FFTFB6Mzg3RkNVRy95UEdHR2hT?=
 =?utf-8?B?bmN6VEVXaGRSOGJ5U01INFlpSEFBZSs2di96NzVybDlBT0M4cE12MUE5N2d3?=
 =?utf-8?B?RDJHQnhuTGVFMnJJSGlBUUEyUElGa3JuczBieUlQQVJsbUg2R2U5b3lWMkl2?=
 =?utf-8?B?UXpBWldjRUFBOE5JUGd6S25vZ1NnczRvZEdyTDhXRkozelMvV09IdnJrWk1r?=
 =?utf-8?B?WFVHelRkK0pCYnBrQTI4RC9ZYVhKOHV6VG5MRnRYU3RLY2tCRmxiZldpOWNz?=
 =?utf-8?B?cWpaMTZjVDZxRUR5bC9UNWhuTm5GMnlMdzlqVkRaRnNvbHlubWZpcEhvdzZV?=
 =?utf-8?B?SUZXQ1FrWXBXanBXWE0wZTZBUFg3aXhJdHJrM1preUpUYjhUd2RKQ1hjRnRZ?=
 =?utf-8?B?ejhQcGJUalNwTXgxU2JZQ1RrdWVpT0g3TnR6QjY3NUZJVGpibjZhSjBnZE94?=
 =?utf-8?B?cTY4WGVzZ01Wd0xZb29OL0pQUjVUdTl6M1V0blRoTTMrS3A5NmZlK2o2ZTNo?=
 =?utf-8?B?SEEzUlR0SEFBSVBHMjc0UnVUbEd6WkRWRWlodlpZWkRDemEyYXA1TFpMdHl4?=
 =?utf-8?B?eWxBSzFVc2tNSjdRZVMrb3VOTXVvbTNjNCs2U2Vpbk52SCt3d1hhbFJ2d2FS?=
 =?utf-8?B?dHJZZU1NUHVoblVieTFUNmE3MklDcU9EVXFoSjFhcXVvTHZGVUh5bXVKazVx?=
 =?utf-8?B?M2h0ZWdQNHFGajljT0ExN1dEamRXdjIyVDNJaHJOOHFzaWZESjg5YUlLTk9U?=
 =?utf-8?B?TGVjOXhCMGJycmdha2dqbGMwZnhGSHFkUXQ0NVdqTHhzbG81eG50ZWNMYmt2?=
 =?utf-8?B?bjQ1MVFaSjUveTFWOVAvVEI4WjNvcitDczhxdlpYdlVBL3hhZDJQK0RNZHBR?=
 =?utf-8?B?MUV6bnVMb3ExeWU2WGduNFJMcGVsSzFscHdPLzhvWFNZMDNYZmdoaFlmeGUv?=
 =?utf-8?B?cWp2WW1JaVhDYTF3VXBTRzEvdzZhZW9hM0xLYTcyYkZaUEU1VSs1d2ZwcVdF?=
 =?utf-8?B?QlRzRk45czB5UDVINnJzbUwvMmhTdG80dTVrU0hOTC9Yd1RySVp2Q3Y3Z2pM?=
 =?utf-8?B?cjJvTmJpN01aQnFMS1czbjFuakJoS3N2aG1kU21MUnZrMS9udUxDVzFmTEww?=
 =?utf-8?B?ZUpWODFkYVkzcllrM1FBL0ZTVHVjTUU5QmtRdkFWMVRvYXltS1lXRWs5YXk4?=
 =?utf-8?B?QWtsRkhwbnczVnAwb3ppRC85dlFZVkNEc2V4Q3pBK0pVdkR6RkxxRnh3MUpS?=
 =?utf-8?B?dUcrVTlIRHRYM2c5UFFuRGZSZ1J0Z1VrUmRtN0Rjc3BPNjJXUHNDcFFrTEhs?=
 =?utf-8?Q?gDILadOBX6/A5NwZnVX2uMeIL9yGXOOMAfmkuYiZvsO+H?=
x-ms-exchange-antispam-messagedata-1: 8gJFKyHzV4zAlibbv3U/znCTKqrkn/X2hYa3GJPqJyu/r1vLleB5uhj1
Content-Type: text/plain; charset="utf-8"
Content-ID: <8E8D6D047E14DB498C929389F8B8890C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: i8vXtiCn5YWc9H1NX7CS0vSJRuHb4usPhst+dI9GcqabKoURvH9uu0U65OIYOkswg3KrVpOJu7BApXkw1SGA50XBBvxmTHxcjd1Pn/r41AVRhetTQMHqW96+xxwC7arFMzk26a5Zy4ChgwU1/Is80dZg0vh/UvM8jwaWMulex18tgROqujOnetUrBTduxog4rRyTj9B11FlGUjiPsYdMKfTC7yz8jyG+MvN07O4qNGv181BJx661heLIyojbjykbosIz+3wQl2uGgUDrAl/W+MtesXslpqDBd0zKglyM5Kpv9K4rfFA2fPiLiVR6wVUI2LNyME51n5/fns4hD8q3qg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d823fe-a312-46fa-d118-08dec2480c79
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:46:23.5782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qlHwul1L/M1TzTuJkc9nkXfXM748aIxJlNp0b+yaI3DCpX5m3CVAe9egABLsQzFFZVloCRn6pJM/015pBqWIa7mKoNjD1ekZhvR03MH7DWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6652
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
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
X-Rspamd-Queue-Id: 2CF0C641042

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIHdheSB0aGUgVEdMKyBidyBhbGdvcml0aG0gd29ya3MgaXMgdGhhdCAnbnVtX3Bs
YW5lcycNCj4gaXMgcmVhbGx5IGEgbWF4aW11bSBudW1iZXIgb2YgYWxsb3dlZCBwbGFuZXMgKHdo
ZXJlYXMgaW4NCj4gdGhlIElDTCB2ZXJzaW9uIGl0IHdhcyBtb3JlIG9mIGEgbWluaW11bSksIGFu
ZCB0aGUNCj4gYXNzdW1wdGlvbiBpcyB0aGF0IHRoZSBmaXJzdCBwbGFuZSBncm91cCAobWF4WzBd
KSBjYW4gYmUNCj4gdXNlZCB3aXRoIGFueSBudW1iZXIgb2YgcGxhbmVzICh0Z2xfbWF4X2J3X2lu
ZGV4KCkgYWx3YXlzDQo+IHJldHVybnMgMCBhdCB0aGUgZW5kKS4NCj4gDQo+IFRvIG1ha2UgdGhp
bmdzIGEgYml0IGxlc3Mgd2VpcmQgbGV0J3MganVzdCBzZXQgdGhlIGZpcnN0DQo+IHBsYW5lIGdy
b3VwJ3MgbnVtX3BsYW5lcyB0byBzb21lIGJpZyBudW1iZXIgdG8gaW5kaWNhdGUgaXQNCj4gaGFz
IG5vIHJlYWwgbGltaXQgb24gdGhlIG51bWJlciBvZiBwbGFuZXMuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAt
LS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCA5ICsrKysr
Ky0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
dy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGluZGV4
IDg4NzYyODE0NDg2NC4uNGI1ZGI0Y2E3NzczIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC02MjksNiArNjI5LDggQEAgc3RhdGljIGludCB0Z2xf
Z2V0X2J3X2luZm8oc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+IMKgCSAqLw0K
PiDCoAljbHBlcmNoZ3JvdXAgPSA0ICogKDggLyBudW1fY2hhbm5lbHMpICogcWkuZGVpbnRlcmxl
YXZlOw0KPiDCoA0KPiArCWRpc3BsYXktPmJ3Lm1heFswXS5udW1fcGxhbmVzID0gVThfTUFYOw0K
PiArDQo+IMKgCWZvciAoaSA9IDA7IGkgPCBudW1fZ3JvdXBzOyBpKyspIHsNCj4gwqAJCXN0cnVj
dCBpbnRlbF9id19pbmZvICpiaSA9ICZkaXNwbGF5LT5idy5tYXhbaV07DQo+IMKgCQlzdHJ1Y3Qg
aW50ZWxfYndfaW5mbyAqYmlfbmV4dDsNCj4gQEAgLTcwMSwxMCArNzAzLDEwIEBAIHN0YXRpYyB2
b2lkIGRnMl9nZXRfYndfaW5mbyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4g
wqB7DQo+IMKgCWludCBpOw0KPiDCoA0KPiArCWRpc3BsYXktPmJ3Lm1heFswXS5udW1fcGxhbmVz
ID0gVThfTUFYOw0KPiDCoAlkaXNwbGF5LT5idy5tYXhbMF0uZGVyYXRlZGJ3WzBdID0gZGlzcGxh
eS0+cGxhdGZvcm0uZGcyX2cxMQ0KPiA/IDM4MDAwIDogNTAwMDA7DQo+IMKgDQo+IMKgCS8qIEJh
bmR3aWR0aCBkb2VzIG5vdCBkZXBlbmQgb24gIyBvZiBwbGFuZXM7IHNldCBhbGwgZ3JvdXBzDQo+
IHRoZSBzYW1lICovDQo+IC0JZGlzcGxheS0+YncubWF4WzBdLm51bV9wbGFuZXMgPSAxOw0KPiDC
oAlkaXNwbGF5LT5idy5tYXhbMF0ubnVtX3Fndl9wb2ludHMgPSAxOw0KPiDCoAlmb3IgKGkgPSAx
OyBpIDwgQVJSQVlfU0laRShkaXNwbGF5LT5idy5tYXgpOyBpKyspDQo+IMKgCQlkaXNwbGF5LT5i
dy5tYXhbaV0gPSBkaXNwbGF5LT5idy5tYXhbMF07DQo+IEBAIC03MzEsNiArNzMzLDggQEAgc3Rh
dGljIGludCB4ZTJfaHBkX2dldF9id19pbmZvKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5LA0KPiDCoAlwZWFrYncgPSB0Z2xfcGVha2J3KG51bV9jaGFubmVscywgcWkuY2hhbm5lbF93
aWR0aCwNCj4gaWNsX3NhZ3ZfbWF4X2RjbGsoJnFpKSk7DQo+IMKgCW1heGRlYncgPSBtaW4oc29j
X2J3X3BhcmFtcy0+ZGVwcm9nYndsaW1pdCAqIDEwMDAsIHBlYWtidyAqDQo+IERFUFJPR0JXUENM
SU1JVCAvIDEwMCk7DQo+IMKgDQo+ICsJZGlzcGxheS0+YncubWF4WzBdLm51bV9wbGFuZXMgPSBV
OF9NQVg7DQo+ICsNCj4gwqAJZm9yIChpID0gMDsgaSA8IHFpLm51bV9wb2ludHM7IGkrKykgew0K
PiDCoAkJY29uc3Qgc3RydWN0IGludGVsX3Fndl9wb2ludCAqc3AgPSAmcWkucG9pbnRzW2ldOw0K
PiDCoAkJaW50IGJ3ID0gdGdsX3BlYWtidyhudW1fY2hhbm5lbHMsIHFpLmNoYW5uZWxfd2lkdGgs
DQo+IHNwLT5kY2xrKTsNCj4gQEAgLTc0NSw3ICs3NDksNiBAQCBzdGF0aWMgaW50IHhlMl9ocGRf
Z2V0X2J3X2luZm8oc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgCX0NCj4g
wqANCj4gwqAJLyogQmFuZHdpZHRoIGRvZXMgbm90IGRlcGVuZCBvbiAjIG9mIHBsYW5lczsgc2V0
IGFsbCBncm91cHMNCj4gdGhlIHNhbWUgKi8NCj4gLQlkaXNwbGF5LT5idy5tYXhbMF0ubnVtX3Bs
YW5lcyA9IDE7DQo+IMKgCWRpc3BsYXktPmJ3Lm1heFswXS5udW1fcWd2X3BvaW50cyA9IHFpLm51
bV9wb2ludHM7DQo+IMKgCWZvciAoaSA9IDE7IGkgPCBBUlJBWV9TSVpFKGRpc3BsYXktPmJ3Lm1h
eCk7IGkrKykNCj4gwqAJCWRpc3BsYXktPmJ3Lm1heFtpXSA9IGRpc3BsYXktPmJ3Lm1heFswXTsN
Cj4gQEAgLTgwOCw3ICs4MTEsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHRnbF9tYXhfYndfaW5k
ZXgoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgCQkJcmV0dXJuIGk7DQo+
IMKgCX0NCj4gwqANCj4gLQlyZXR1cm4gMDsNCj4gKwlyZXR1cm4gVUlOVF9NQVg7DQo+IMKgfQ0K
DQpUaGFua3MgZm9yIHRoZSBkZXRhaWxzLiBJIGhhZCBhIHdyb25nIHVuZGVyc3RhbmRpbmcgYWJv
dXQgdGhpcyBidw0KZ3JvdXBzLiBXZWxsIGl0IGtpbmQgb2Ygd29ya2VkIHdoZW4gSSBhZGRlZCB0
aGUgcG1kZW1hbmQgc3R1ZmYgcmVsYXRlZA0KZmluZCBxZ3YgcG9pbnRzIGZvciBtdGwgYXMgaXQg
d2FzIHJldHVybmluZyAwIGhlcmUhDQoNCkJ1dCBJIHNlZSB0aGF0IHlvdSBoYWQgdXBkYXRlZCB0
aGUgbXRsX2ZpbmRfcWd2X3BvaW50cygpIHBhcnQgb2YgdGhpcw0KYXMgYSBzZXBhcmF0ZSBwYXRj
aC4gU2hvdWxkIHRoYXQgYmUgc3F1YXNoZWQgaW50byB0aGlzIGFzIHdlbGw/IA0KDQpPdGhlciB0
aGFuIHRoYXQsIHRoaW5ncyBsb29rIG11Y2ggbG9naWNhbCBub3cuDQoNClJldmlld2VkLWJ5OiBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiDC
oA0KPiDCoHN0YXRpYyB1bnNpZ25lZCBpbnQgYWRsX3BzZl9idyhzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSwNCg0K
