Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /8uTKm80OWr7oQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:11:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD216AFB12
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:11:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AEhejqJc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D41F10E6B3;
	Mon, 22 Jun 2026 13:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E0D10E6B3;
 Mon, 22 Jun 2026 13:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782133869; x=1813669869;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bmhRK9bqcED3BaAhbQT1+PERHCq3HIfmRbNgBOq7XAw=;
 b=AEhejqJch5JDmiaX2ChtRq/6ZsAgvomn5M1wWZ65zD7rWHZTspb6eag3
 jOXkkrurm9SPfyJvabsAkMhoLGX2x9UeEHp1vcHB+ogak0+CKkJDcB5D2
 wyKT3J6xk/WrdjBytJSBYGflaKNt0uxxWuvURwxF930zXpF40GCXUzFZh
 KHt1URJmih9YZ/8rDToZxjpcDBIkkzHzY0UMoZOzpy8hfmHRzattGA5eB
 xnqEOqbVIWYKhQ4ds0SUxcjLegJEHdFBNlykQc0q71p5UeMtrAOKSTI/c
 OYz/bQ5hDo6EjvDZwU3KeIjVKSGPA48OhAudKLHL7uMi4gBEiG8DLl54N w==;
X-CSE-ConnectionGUID: paLYbeDhSmGG7wWH1G/4qg==
X-CSE-MsgGUID: evrom+9oRv6ATc5p9PiALA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="100290851"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="100290851"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:11:08 -0700
X-CSE-ConnectionGUID: nQFgz0lmRCKJBxTcb/XY9Q==
X-CSE-MsgGUID: L58/M1p/T0SmEwXvd2ApHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="253124305"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:11:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 06:11:06 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 06:11:06 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.21)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 06:11:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xfKVhLIURxlHOqSCv4XLl1sIL/f1/slfAGVM2qypG67Tn5hWZRimNUGrJmoBAWxNSUrTemxgWgqYo0IlVXtWRydD14qFkMXC1bEYjYYtiDARmH0fYZHbNQ3C0WS788j9L08k4Fo9BuAube+1a29Jl58ClTHQK9VsHhXYxgeplH2Vz0Y2mG81A/xJM55yx1zl+sJ+1ZgX/Gm5jKfTXuA4ULLRSjpqI55FXRfcegFd6gMYtF67oC6WiBad1FBGpCo/hKn7xrMdivp7a9i5em6E/mwg9Idle4k4usnCjBaYusnCRkaom1qk7mT/eM8ypi29IVX/zNp0f4z65782nRxPbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bmhRK9bqcED3BaAhbQT1+PERHCq3HIfmRbNgBOq7XAw=;
 b=FE3VvPwNHdlN760Mwj1UMD3E3PcmObpk1GyWY1yizrveTLXHKeWVr2a9ArI8R/AQxbxURWZOhg1I7WUQs5JCwC5G89814rSa21NQ++K2ZnqJ/Il1bOcFhtx2y4qF+JTV50OHoezOooZKORlCMWtArN28bo2v42wDHkaBtW8iaUN4HIJbR7nCaX1kHD0Ec3SH0uds1e5ZUJ++OevrVxl9YxXVp3xlISCTkH7vJDA5XX/IKBhBfhO4wfKkcPeDZL8IXtKBWnEwmbeTtjah4VFslsvuG3pnKc7vFYeblCJPf3Va4X3CnSvlbWa953Qp7DH09Gf+AtvzOI3N33Mn1KzYJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) by IA1PR11MB8248.namprd11.prod.outlook.com
 (2603:10b6:208:447::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 13:11:04 +0000
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::10f:5d3d:a8dd:569c]) by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::10f:5d3d:a8dd:569c%7]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 13:11:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 01/28] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
Thread-Topic: [PATCH v2 01/28] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
Thread-Index: AQHc/cwTEiuq9iOTe0y/V33/g3aK6LZKlXdg
Date: Mon, 22 Jun 2026 13:11:02 +0000
Message-ID: <SJ5PPF57F27BA084ABABB5F27B7B0C82169EFEF2@SJ5PPF57F27BA08.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-2-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF57F27BA08:EE_|IA1PR11MB8248:EE_
x-ms-office365-filtering-correlation-id: e4b5539a-52cd-4096-be4a-08ded05fb5e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|18002099003|22082099003|6133799003|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: WqxxfiBKICl8tfja700p0dZE7sGhu+P6eqHlTlu95z2oU7qGdIbtKdvx8Z9DrGgf94OiYq4QkHssStM9ZgEuDthrlo3RE1EMJD4qotuscg3dYEdv1Y4eY+nGLmmeWWnMhqKikl51eXs3tunTrHI/HZO42Rbsl1AeiT/wbeZKrdI4oil7amcAzmFXT5ew/rf66iQ4giFqYYRYnH+PZDZSaiN0Ig7mxsGQ4CkPOZaNSo0oDbs4JO6yzi9SQBs1hC2jPCascPG4Y/Bys7nuMLtbPFgQhDRoYjzx+HCELANCIIJgl1+p65X8vp+lqMAvsXu+XHHdTRWsND5w5r2MaeRN+q8fxXuIXyuZxwvPCu0qYnpq8tKIQx+0xsAJvk3ZsvhXwXY8XU/UrMKd3MvDyjWb6sc0CbsdPKswkJ9ITAHRBpJXRYByuUnVO0yJCJQVi2E3c7WJP2+ZtMz5Bhh23uxPDY8s+2eVKsFwVNxyCmIe+UH0fMWJx0HwglRuJE+P5A67fe3yEJrdSE9xAv7uZCQvTGM7Y3fzoKbc+j4iV32MZs4i51ut+6WU90JovZas7Q7QQ3NoDKh075IAj8IH+hehNxJlnCtemNYDxwewrMPOLNpLg5aUSzKnOhYII6GhigQoEV8CsmOXCzYs99NOWwMHi6v8Kb3IcizMI85m1RPMv3E2Ok8u7qG3gt8BbFnpcNNiVeHB5diTHQSyKnAcKB1UfbmxuixIgkLW6iZ4CMtyRZY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF57F27BA08.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(18002099003)(22082099003)(6133799003)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlpnV0dyaDQzR1UzTEtKTyt1Yi9INHF5Z1lTK2N0NkNSVi8xcjcydnh1dHl1?=
 =?utf-8?B?QjR3Qi9wZzhNbmdwRUJWbnQ4YTVySkl0aHJKZ1VBcHdWUEVEWnE1RDZPcnVj?=
 =?utf-8?B?dmMvdmF2bDZlemRSTmxmcENib2hwMDBpeTQ4b2NoS0lkR2I1MUg3TGcrYlZP?=
 =?utf-8?B?OFBuQUQwK3JwTnRDeGtWb2RJWE93R1pKZHhTaGYzbk9wR0lTc00xMlcxcHYw?=
 =?utf-8?B?MjRIMFV6a0pFVFVZSzREeGdmeUtHMTNQK3plNnhUUUtUN3l3N2ViRXNKa3FQ?=
 =?utf-8?B?dGFWUUI1N0RUZXkwYld4cnNJMGczRkE1U2t2VWJkOUxzQ0FvY3lsSkJWSys1?=
 =?utf-8?B?UEhhWXlMMlNhMmF0TGd6d1BjZ1M5Smt2WU9lSlB6VXIxWXVzN3A0dFpBOXps?=
 =?utf-8?B?MlVCMDR1NjVqOHlPN1BMbUFaZUVzdk9FWUxxbDByaDZzeWdQck5nNlB6UDJK?=
 =?utf-8?B?VWtjNGRHNi92UGl3ZlJtSklSOHVMWlc2cnB2TjJ4WXk2MlRlWnpnQnNuQ25V?=
 =?utf-8?B?TklVUDdxdnpSOHg0eXJXQkh4NW9XMjJkWGIyWmNpc21wc1lJZnlBL2ROa1hV?=
 =?utf-8?B?Smh4SnhDNlN0QW9uRENhYkloYStySlN4dWpobDY3dGxsRTZvMFBJV0FZYTVk?=
 =?utf-8?B?N0kzVWVMRzBKTUxUOVROSm0wbkhpQUluYks1djFoY2IwNktIK05nUW12QTNt?=
 =?utf-8?B?YW1xcUsrNFNud2M3S1B5bEdRK0ZPVFlpcU9pd0VwWU5iZEM0djFTSjBpQWhp?=
 =?utf-8?B?K2EyUXFmVXRaQWVJK2F6blV4dElsSnNuM1R0VXB0VXZab2JHZ2pDNmpranF2?=
 =?utf-8?B?Mm9rQyt2WEFyTlpJazZmczVvcW5ycmVwVlZjVTFTbndDbmZidFd4SmthR1hH?=
 =?utf-8?B?VGRLdFpmVUUyV2RRTVNCZXkrakNnZVg3c09YWjdENUFRSTFMUERockZ0VWh3?=
 =?utf-8?B?ZS95Nm1uTHRWK3lnVDJaVmZqNTR4aDYyKzI5NFJiaVA2U2o2YUU0MGxMUXVq?=
 =?utf-8?B?THFrSWVlSWo1eW9VZ3MvaUd4UjFCRUhZeDQ2bnNPWE5qVnVjb2RSMnVHU3lT?=
 =?utf-8?B?cDBoQ0xSZjZad005dVFLWTAwSHQ4ajFVeE85YWZibXcwelpHc01rdjB6NDBj?=
 =?utf-8?B?VDRUeFNCdVVJVXlrL2FrZnUxVGs3U1FkNWc4TjVHZG1IVWVqZmJ3S2RPWENU?=
 =?utf-8?B?WElPSm5qbTBzaDQ4cDRjTVQrVloxSnNpWDhJbTVwcjFZUnFCVFFONExOb1hz?=
 =?utf-8?B?ODc5SGNZd3RQUERGQitnZ2tNNFdPNnlmNWZ2d2o2MGJYbjdKRlpXYnNqZFk2?=
 =?utf-8?B?N05hSTN1QVdFSnJBdXlkN1VrckZ3bGk1OFlqREx0aDdyOWM1L05lNE5SSWpN?=
 =?utf-8?B?SWJOc2FWaUZsczQ5aGl3V0dMSkw5dUdmR04wVE80M2Z1dUI3NUFzVjR0TFRw?=
 =?utf-8?B?TEU1NlRjaDFSN3FxQTB0TGZSZnZDeGJTZENZcEFFSitLTFdQRlphWnZVUEl6?=
 =?utf-8?B?WlgzUjZBSWNLbkp0bFVJUmsyem5wTGxmNnZmeDJUVmlaOGxmSGYyVEIzNFB4?=
 =?utf-8?B?TUtJSEFYNXRTZU5oL3M0RWdRb2RtV2thUzloVkRmV0s0QmhER3VSNXlPTy9q?=
 =?utf-8?B?dHN1YjBCVHRQbG1GdTNwRFZkbWFUUVF4dllncloyUzZ1VzhFRldYMlpFOEc1?=
 =?utf-8?B?U2N5dFlxYlFFK3ZiS2lodVBzUFRWQ3BCMW4velpqaWZTd0ZPakExbW93dmFM?=
 =?utf-8?B?RU9Vclc2bHkrb09aUjNvRnNQVm9JWjE3SHl6K01yRXFSbzJjMkduYmF4cUlk?=
 =?utf-8?B?Z0s0ZHdhaGVNYTRKN2tsY0VxcFJiUUJMUmNIaGlqYWtERzZYR2J5NGI3UUds?=
 =?utf-8?B?SmhOek9HZGFWTzNWbmNUZ3JDSjQrc0lkbG4yVDhRK3hoYnFiSVhpcWdHY2pE?=
 =?utf-8?B?bTBWS3BuSGsweVcxOElaK0d2UEdPS2tXdjE0TDBSTmlXeGRMR1hIVWIxRHIx?=
 =?utf-8?B?T1lsV3N6aENJRFBBWURMU01vYkpBSUlMdXNGNDVFZEZPdnM3eXpuVXBIM0g2?=
 =?utf-8?B?QmV1NXEyWTlSQVJqTHFKY3drWGFWSFZpaVdvNXNRMVd3RG50Qi9rUlVWdkJI?=
 =?utf-8?B?RTBqdXpMOWNlbG5nNkh3TlRGY2poeDNib0N4WUJHYjEvUWZKRzYwL2tvNGkr?=
 =?utf-8?B?dmcyMzhVUDRvV0o4dk1mZzN2S2VsaUQ5NE1tY09VTmNUWFN3WFo0Z2NqMDF3?=
 =?utf-8?B?SGlTNVNQVjBycHhBV09kQ2Q4amVXZ0JUYytCWlg2N1RUekFrOG5adlRvaXNQ?=
 =?utf-8?B?NG5udHg2amt3R0pxT0tEMEx5cGFvLzRwUVoxa0hQT1ZpVkRRTUVFdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bLf62JzwHyUuCdlgloaMsnqACi23EHlF+U+aYkPTM8aLZEVlButJex/yEoHBAu2cZcBkTETw3Jd2ZSGC4DxLWhsWXPJm+qUm83nLXEvyHJ1JYvLak0aQx37+NhAG1nDGo31ElYBQfwi7e/NBOGnsJa30f/gL7vOBoXSTtKEuqTDSWHwKvkpvPFuVPhEfwJ0MkcTzRTkfcaWZLGSfy15rqprl1xuS01JS5raNykOmMlUV822xOlK4Boc4wcrrhaeMxsWyz486kA7Bs99Pu/zYjFLcqawZlcr1hFGdtNZK2LWzKRbi1iRBEGQeBNUCxvGhfADR3UeUDUjT0Hyh1NF6Ew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF57F27BA08.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b5539a-52cd-4096-be4a-08ded05fb5e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 13:11:02.5160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hWng+zEgr/d6l2S7jXevE/7ZEs6MAutSb8sUWGfeTE3n+Gmg7THtL6PAQtcyYXFZQQa4dFH4/sWY3i4M1Ihq4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,SJ5PPF57F27BA08.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: DBD216AFB12

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDAxLzI4XSBkcm0vaTkxNS9kcDogUmVuYW1lIGludGVsX2RwX2xpbmtfY29u
ZmlnIHRvIGludGVsX2RwX2xpbmtfY29uZmlnX2VudHJ5DQo+IA0KPiBSZW5hbWUgaW50ZWxfZHBf
bGlua19jb25maWcgdG8gaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkgdG8gcHJlcGFyZQ0KPiBm
b3IgdHJhY2tpbmcgYSBsaW5rIGNvbmZpZ3VyYXRpb24gaW4gYm90aCBhbiBpbnRlcm5hbCBwYWNr
ZWQgYW5kIGENCj4gcHVibGljIHVucGFja2VkIGZvcm1hdC4gQSBmb2xsb3ctdXAgY2hhbmdlIHdp
bGwgYWRkDQo+IHN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyByZXByZXNlbnRpbmcgdGhlIHB1
YmxpYyB1bnBhY2tlZCBmb3JtYXQuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCAgIHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyAgICAgICAgICB8IDE2ICsrKysrKysrLS0tLS0tLS0NCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5k
ZXggNmNkMTAyYTNiNjEwYy4uYzcxZWRlYTE0NTg3OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE4NDAs
NyArMTg0MCw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+ICAjZGVmaW5lIElOVEVMX0RQX0xJTktf
UkFURV9JRFhfQklUUwkJKEJJVFNfUEVSX1RZUEUodTgpIC0gSU5URUxfRFBfTEFORV9DT1VOVF9F
WFBfQklUUykNCj4gICNkZWZpbmUgSU5URUxfRFBfTUFYX0xJTktfQ09ORklHUwkJKERQX01BWF9T
VVBQT1JURURfUkFURVMgKiBcDQo+ICAJCQkJCQkgSU5URUxfRFBfTUFYX1NVUFBPUlRFRF9MQU5F
X0NPTkZJR1MpDQo+IC0JCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyB7DQo+ICsJCXN0cnVj
dCBpbnRlbF9kcF9saW5rX2NvbmZpZ19lbnRyeSB7DQo+ICAJCQl1OCBsaW5rX3JhdGVfaWR4OklO
VEVMX0RQX0xJTktfUkFURV9JRFhfQklUUzsNCj4gIAkJCXU4IGxhbmVfY291bnRfZXhwOklOVEVM
X0RQX0xBTkVfQ09VTlRfRVhQX0JJVFM7DQo+ICAJCX0gY29uZmlnc1tJTlRFTF9EUF9NQVhfTElO
S19DT05GSUdTXTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBp
bmRleCAzNTY5ZTYxZTdmZWVhLi4wMGViM2Y1MTAzMzgzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC02OTksMTggKzY5OSwxOCBAQCBpbnQgaW50
ZWxfZHBfcmF0ZV9pbmRleChjb25zdCBpbnQgKnJhdGVzLCBpbnQgbGVuLCBpbnQgcmF0ZSkNCj4g
IH0NCj4gDQo+ICBzdGF0aWMgaW50IGludGVsX2RwX2xpbmtfY29uZmlnX3JhdGUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gLQkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9kcF9saW5r
X2NvbmZpZyAqbGMpDQo+ICsJCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25m
aWdfZW50cnkgKmxjKQ0KPiAgew0KPiAgCXJldHVybiBpbnRlbF9kcF9jb21tb25fcmF0ZShpbnRl
bF9kcCwgbGMtPmxpbmtfcmF0ZV9pZHgpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBpbnQgaW50ZWxf
ZHBfbGlua19jb25maWdfbGFuZV9jb3VudChjb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25m
aWcgKmxjKQ0KPiArc3RhdGljIGludCBpbnRlbF9kcF9saW5rX2NvbmZpZ19sYW5lX2NvdW50KGNv
bnN0IHN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZ19lbnRyeSAqbGMpDQo+ICB7DQo+ICAJcmV0
dXJuIDEgPDwgbGMtPmxhbmVfY291bnRfZXhwOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBpbnQgaW50
ZWxfZHBfbGlua19jb25maWdfYncoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gLQkJCQkg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWcgKmxjKQ0KPiArCQkJCSAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZ19lbnRyeSAqbGMpDQo+ICB7DQo+ICAJcmV0dXJu
IGRybV9kcF9tYXhfZHByeF9kYXRhX3JhdGUoaW50ZWxfZHBfbGlua19jb25maWdfcmF0ZShpbnRl
bF9kcCwgbGMpLA0KPiAgCQkJCQkgaW50ZWxfZHBfbGlua19jb25maWdfbGFuZV9jb3VudChsYykp
Ow0KPiBAQCAtNzE5LDggKzcxOSw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbGlua19jb25maWdf
Yncoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIHN0YXRpYyBpbnQgbGlua19jb25maWdf
Y21wX2J5X2J3KGNvbnN0IHZvaWQgKmEsIGNvbnN0IHZvaWQgKmIsIGNvbnN0IHZvaWQgKnApDQo+
ICB7DQo+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IChzdHJ1Y3QgaW50ZWxfZHAgKilw
OwkvKiByZW1vdmUgY29uc3QgKi8NCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25m
aWcgKmxjX2EgPSBhOw0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZyAqbGNf
YiA9IGI7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnX2VudHJ5ICpsY19h
ID0gYTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkgKmxjX2Ig
PSBiOw0KPiAgCWludCBid19hID0gaW50ZWxfZHBfbGlua19jb25maWdfYncoaW50ZWxfZHAsIGxj
X2EpOw0KPiAgCWludCBid19iID0gaW50ZWxfZHBfbGlua19jb25maWdfYncoaW50ZWxfZHAsIGxj
X2IpOw0KPiANCj4gQEAgLTczNCw3ICs3MzQsNyBAQCBzdGF0aWMgaW50IGxpbmtfY29uZmlnX2Nt
cF9ieV9idyhjb25zdCB2b2lkICphLCBjb25zdCB2b2lkICpiLCBjb25zdCB2b2lkICpwKQ0KPiAg
c3RhdGljIHZvaWQgaW50ZWxfZHBfbGlua19jb25maWdfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IC0Jc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnICps
YzsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkgKmxjOw0KPiAgCWludCBu
dW1fY29tbW9uX2xhbmVfY29uZmlnczsNCj4gIAlpbnQgaTsNCj4gIAlpbnQgajsNCj4gQEAgLTc2
OSw3ICs3NjksNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9saW5rX2NvbmZpZ19pbml0KHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB2b2lkIGludGVsX2RwX2xpbmtfY29uZmlnX2dldChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgaWR4LCBpbnQgKmxpbmtfcmF0ZSwgaW50ICps
YW5lX2NvdW50KQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2RwX2xpbmtf
Y29uZmlnICpsYzsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50cnkg
KmxjOw0KPiANCj4gIAlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBpZHggPCAwIHx8IGlk
eCA+PSBpbnRlbF9kcC0+bGluay5udW1fY29uZmlncykpDQo+ICAJCWlkeCA9IDA7DQo+IEBAIC03
ODgsNyArNzg4LDcgQEAgaW50IGludGVsX2RwX2xpbmtfY29uZmlnX2luZGV4KHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsIGludCBsaW5rX3JhdGUsIGludCBsYW4NCj4gIAlpbnQgaTsNCj4gDQo+
ICAJZm9yIChpID0gMDsgaSA8IGludGVsX2RwLT5saW5rLm51bV9jb25maWdzOyBpKyspIHsNCj4g
LQkJY29uc3Qgc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnICpsYyA9ICZpbnRlbF9kcC0+bGlu
ay5jb25maWdzW2ldOw0KPiArCQljb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWdfZW50
cnkgKmxjID0gJmludGVsX2RwLT5saW5rLmNvbmZpZ3NbaV07DQo+IA0KPiAgCQlpZiAobGMtPmxh
bmVfY291bnRfZXhwID09IGxhbmVfY291bnRfZXhwICYmDQo+ICAJCSAgICBsYy0+bGlua19yYXRl
X2lkeCA9PSBsaW5rX3JhdGVfaWR4KQ0KPiAtLQ0KPiAyLjQ5LjENCg0K
