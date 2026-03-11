Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OA2OLJXusGkaowIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 05:24:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3025BF3A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 05:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C67E10E0A9;
	Wed, 11 Mar 2026 04:24:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="caTQssLC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B431910E0A9;
 Wed, 11 Mar 2026 04:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773203090; x=1804739090;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L3i8HBvIOW5GA7Y+YNsJvSMgrDVcWpHAH6MeuYaqrGo=;
 b=caTQssLCb5K0WVpZ8/9i/8+CyWCrhZJ+WKhELPrJZYhsG9o32/kzrk5A
 PnPSbRd6EYduZcHIDrIMN43IqTYsbTaevHNjXCcp5l7hC2wz+Ukys9cNu
 Kpu8AQ4wPWmDuuqFlapWNv1Q8wzAENfnhGaN1I5N7pnol2VxmqEtDDXlE
 iW6QT9PcPYwhrxFvH+QyQwtKMCajKCxGX7X8n1AshXsgiSPXt8rsKU0ef
 6X+lgqi9X3Pp23iLeL5CM+TIC06tpl+JWloQqws6NGZgV2WorK2P5NEzj
 PoLbA6DjCOYyyQ2uhFTsZtOd9i+nARsJQK8NdoS4mns5KF/snHDjHCWbg w==;
X-CSE-ConnectionGUID: X+X95ejZQtW6Pmu8Z+O2Jw==
X-CSE-MsgGUID: 2TdlVqMfQymwjTE0C3xzww==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="84895551"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="84895551"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 21:24:49 -0700
X-CSE-ConnectionGUID: rVN9+I5xTbam/nMYRKwOkw==
X-CSE-MsgGUID: bOddXI8wQOGKWLeEgehxwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="258257531"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 21:24:49 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 21:24:48 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 21:24:48 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 21:24:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D00UYRCC4R2jp4jkcLF9ef/gLE0WdaHj7O+Do6sfhiUeJX0WHDXpZSZ2zSZKNzQphbMgKx5mfrZOg+epsvK2EeimIO1zJGWYNgPGEDKdzq9Y2wqM2QW++wltIvWgYRpVFaAHTDnG59lbpmaG4kbWIlmsYXn/NaRNToSrmXfh5bjeM7YrEwBhy+LzwzJmU56DMeSAHYBR9hDdjTW1orkMJsImeXVi3K1GU9fu/b9e2NCdJsIbqSqya+uJxCugK0NqVkdzSFLVrgTyRAMbzCWgQtWfkJuUW6mme+DrznBAQ2xFjo5Y741T4eMFbonYcXNH1+E2ArKcWGXwufSpDoW+Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2QaCb4yIkc1LIPFOqdODMH+8cZ1AH+HNSYvr7N0jNb0=;
 b=W3E2dJv7O4k6skK8iI7TDhaoZHZW9J9ViDovZWxctum9zfrAt6GiAVwbyUYSvNOO+Z4LrkqI9cDaqowtlPdtp8NQLiCZ67ml9u+H21ESGDGZPbM1Ou7s5m6f0sqy0uRinM2SAzE4tYNyT/6pFe465RZ89DzYWKIs1NDj6i6DEah7rnpAxoJO9xOlFob1ZEh45xMW8U2M/0ffz6nvV06clN25yBMMa7qCLgw8DqhyVrZYu1wIft7a7OkR/lc48i5ZtVjXytwhi0fv7mxoEk+G498vdkAVsw/IMBY0Abhg27/8HanKQpWLIFS4IcPMvwQlmugqYv0BS1Si0H9xPglSRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH8PR11MB9482.namprd11.prod.outlook.com
 (2603:10b6:610:2bf::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.13; Wed, 11 Mar
 2026 04:24:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 04:24:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Topic: [PATCH v2 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Index: AQHcq9u1Fe1N1f6dTUWVXL64ZfZgt7WoxZxw
Date: Wed, 11 Mar 2026 04:24:46 +0000
Message-ID: <DM3PPF208195D8DD255BE31B410C1711237E347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-15-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-15-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH8PR11MB9482:EE_
x-ms-office365-filtering-correlation-id: da5b3a2c-e0d6-47cc-a9ec-08de7f2620a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: MipxGQjXrG9G1ewvU2BbwyFrCiHCKtfWbzeMZwmllmnKSs356nL3t0FCvhLz7/yO8mA+0rowMS+u8j9ElcTULXoZwwcNjwqCnbdqPdF8foaOH0slsDiUHqVlIHk2dgQ2S5yVDMWbHe6dlboLXmJ75xgaDeO8gsiSg/g6BYgftoRtwBiRnK9pmXbdZdvnNv1UqBuAzosdKGD+ncDDKmPnecPlzdgNF02SBRN3oYOkmrzUsnsbpdIdiuKMqEvUNk21wCdjr9ev22Z1HXCD6Z4GM9HQWgr8GW9YflQsG10oYRJZMk9KlsU2gjWPK5nTzvTX2cyikJPFg/7WR6fiZ0eDz3EZZwUtd0xE1gPpY+kBuhe/iKV6CoFET9+7BRIYk/BX07CpNCFAhKM/6y7ohn8EOmYWnj5I8fLZxnY3V6g7tlDH9dov2FHDulKcL++JtSy7h2+mK57y9hZDD9LXViJstfi8oImUALeCgyoK07PXUJDjS8/g8zed/n37s2curtp7pIWMywsLHTxE4FS9UBzMCOUfHGyn5QmgiPZNQwRDNnuLbWmi2D9XGeTFD8mYYFWrd8VCdFEw7yJpR+A4mADnhoFwcPRsxUrnn6sCsCtJPGM8UpWwsP+UUkrXHLN3BSNeoD5kFBy383RB/394HTiRewu7wWAL9+DVTomJxCX32AOMoEt+X5wRKWYbwU/Tqc4itPEW6PoVppT8+1MlcEuDVQguyhjVLo+OTRHb1NYyDCPKSh0ca4R9WiVz8BbQUsjej8A5qeBXPoZu1eWKOunB/tP2EO4+b7014BTZuAqNHvI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lb52JKSHkNV0nazCHJR8WkPK5ZLF+nfpcOfKpVyMW/NEdrsw2wKiNH30/Ne7?=
 =?us-ascii?Q?0FQ05Ou024uvX1p5qN9nVpg270iUKXzu85OrurjwusTzOKO1LRwdNqIxZX8r?=
 =?us-ascii?Q?Ph0BnQZd1KVDyZMgpgNXimB3Zh5fssVuxBzhFthy2ANE9vfsQ9/g2iu8zLZJ?=
 =?us-ascii?Q?whRq62RyidPm+Hx9gcQ/TZqbCxSUMRsI1HtAMBXu+i9w47tnFbsxYc7ySREx?=
 =?us-ascii?Q?XaEN4dszgEUCt52Sn4Oznl2ZrmFT2umwXpriGGWxpukHDNpZyCpQtdk/dScK?=
 =?us-ascii?Q?5JVEHmvLAYkwEO1uXS0FqS2nyE4ScWt1BrRosWWBINr6DKp/TU70W84mFIP6?=
 =?us-ascii?Q?8MV5jChfIuy8wWXyx+XL1dRn8whQT4z6zaKUdpSKMKm32Yq13wnPCGjJZtkN?=
 =?us-ascii?Q?9QaGOJKrzAfnThC7ofIxXqLqvKEgDqQ6z9zUNWQZmggY/zDtQWWTQBzEAMLI?=
 =?us-ascii?Q?rZ68Gm968/Qns4G0vqjKYgyhURVRo/iVSblc8TkCHHvoPSA+zc3waUOloPm8?=
 =?us-ascii?Q?jFY4kxLi8IfEt7ShAOCd78+csyImk8bQoAV+14+K+SY62kdg25I7qsgEiR1y?=
 =?us-ascii?Q?X9s1zvUYxzkRngZ4EJOjbwvE33ieqsdNL/5ZspfqjaW8o/q3ixHPrPwHAdjl?=
 =?us-ascii?Q?cuVcx+BMD8gaaGvJ9VoFnf3fXMHJRgJmseJ7UvYqa83mWlSww8hSoCKfRWDo?=
 =?us-ascii?Q?O9QQ7qrcLeO52mQv5ng6Yl6NoPoI6ztu8LWVN9JN3I5RBikINYAkgw7zmELc?=
 =?us-ascii?Q?Mx5166XgTmxRU+4O6KRR5h7ghI235lu8x29uP42K4ZunIGcpOPASuDu4sn7k?=
 =?us-ascii?Q?+N1R93lR2TqMmEEQ0v72H0M063Am6spw624mET9IXV1HJC0r6H7R64UZ6yOz?=
 =?us-ascii?Q?zcG9sXtFoP4UTXPHsg106ZocPATaU2eRSpPdBhHWyuzjop5iiDBA/oLLn3lQ?=
 =?us-ascii?Q?vqCGOCqSfMKcch52hC+pwknZswO0I0U0c0oTjK234XX4QCMbGF+411DKYas2?=
 =?us-ascii?Q?xjvfSjC0XEpi21grBEMUSggFSwcg1zZkQDzpISkLTOZZ9EX0eADz3Tt70knh?=
 =?us-ascii?Q?jA6jwNspaWi/3jSsLDwec3BsK5P0BAn5+VJJ3OBWViOxZglBbeWH6zZloSh5?=
 =?us-ascii?Q?iF17wM047w86Q99+NESmoeqTy0MHQ7BPmUw+cSOiFPONiCg6SEmPTPk+epXS?=
 =?us-ascii?Q?DlCitnJsQ5OM9EayT7z/nC+hDf2AvGrCoaVgYOW3Z43rMbk+MV0LXi1LiSTO?=
 =?us-ascii?Q?yUrgyjzb8gffeN8Y4dJG5JAxglQ6i4w0Se2eEv7714XZGyfCODgl6SwI7NUU?=
 =?us-ascii?Q?75lQGr21pZgjqg+OD9NhCSH6bC27R1r5PtCXbipX1uWIzn26MzoLW7+YNtHA?=
 =?us-ascii?Q?KuaPxJCaoZhXsBjuBY8Ci8es5N27K4WjnthIpI9gmKJxYX0zbt4pCyFoyexv?=
 =?us-ascii?Q?J5YMjNsTNSNaHRSGMAuFOGVolLSoKMr3ug4zYOvP95BDL31EbWrB1sOn34s2?=
 =?us-ascii?Q?jbIoZ9nPo43a2eNQqnNSpfVm5Ak0uGUrZ3nU5AxnO5mug3H2IGPwvi1Ljd/C?=
 =?us-ascii?Q?uQ8uVeT173d9Kk/RUoYFIifVvqPcrXAamQ6PIXheA1YilpHbplAJ3EjaO0VY?=
 =?us-ascii?Q?SOGoRyAjuMgbS1vyZ+q7WvXa3tVg3i5Ui2q3pouzuseUbzQrQbwTbH+Vb1nn?=
 =?us-ascii?Q?z44ZPnWt6saZDKTJWQvjlfSoxars0ipFRUvqwTRFzWBtrXgl0/NtVKq9POki?=
 =?us-ascii?Q?p1qxKSPHtg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bpTW7q3HFW6MROD3YYS9fEDLs8lmt7V4iJaz8MnzMIAXgjZr/AB6+EAMvjtEv5eX11N0vWfQroKtN1RmMN8i2HxVtK7PWWn39ifL070SSiRs8MyzDDmNhKtVA0zoITem27C2g1VeawfdSZyNEXMoKiFJmk+fxh/IbWUG32h6tmXuUMBhDv3n/wG3SRBAnpWPq/S+rBC3MPRrKDbj4DMRmjRXeLVMbbwC2J5LjZCppcUKNl6mUg6L2YyNWufWW0HKrIzUOMy9CHffLJ5A+NMyDo2tFj5EH03rbeKWNR4b0MVgRtufgLgUxOpF+coRv29V5h3FMD8LEt8W8pCLXc0tTA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da5b3a2c-e0d6-47cc-a9ec-08de7f2620a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 04:24:46.6251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z5LkUs6JTJwN3vkFvn4VuOMHUbtxACB+8DEH4SgFwNctG0dgmymb1ZbCr91nUCQt9Qs7iXZVXtKTaBa697ccfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9482
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
X-Rspamd-Queue-Id: 1FD3025BF3A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
>=20
> Add .get_freq function hook to support dpll framework for xe3plpd platfor=
m.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  5 -----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 147baa777856..88f11cb8c5e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1219,17 +1219,12 @@ static int xe3plpd_crtc_compute_clock(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
> -	struct intel_display *display =3D to_intel_display(encoder);
>  	int ret;
>=20
>  	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
>  	if (ret)
>  		return ret;
>=20
> -	/* TODO: Do the readback via intel_compute_shared_dplls() */
> -	crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(display, &crtc_state-
> >dpll_hw_state.ltpll);
> -

Don't remove this here in this patch right now
xe3plpd_pll_get_freq won't get called till we totally enable dpll framework
breaking the functionality in between.
Just keep the function definition and assignment to respective hook here.
Ill go through all the patches and identify the best place to remove it to
Preserve bisectability

Regards,
Suraj Kandpal

>  	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
>=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6502916793f5..412582e29ca6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4583,8 +4583,21 @@ static bool xe3plpd_pll_get_hw_state(struct
> intel_display *display,
>  	return intel_lt_phy_pll_readout_hw_state(encoder, &dpll_hw_state-
> >ltpll);  }
>=20
> +static int xe3plpd_pll_get_freq(struct intel_display *display,
> +				const struct intel_dpll *pll,
> +				const struct intel_dpll_hw_state
> *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return -EINVAL;
> +
> +	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll); }
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
> +	.get_freq =3D xe3plpd_pll_get_freq,
>  };
>=20
>  static const struct dpll_info xe3plpd_plls[] =3D {
> --
> 2.43.0

