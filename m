Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id t6cJCyWmr2l2bQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 06:03:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807152455D7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 06:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1C110E64D;
	Tue, 10 Mar 2026 05:03:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ByT7c6H8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C658310E64D;
 Tue, 10 Mar 2026 05:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773119009; x=1804655009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=24aXEgNVIJ+Gy7jLB7Plk+mv8wfaDHb4mzxbM15cyJU=;
 b=ByT7c6H8wP5PH3VVpZgVW7bBlN7CcSiBGzv3iAoAcrAvMcgH4Pynon8D
 Ihn6+aSeA2wKxuVmxoOubuvsWkoP5DO3wRdfFUzttZkKfSjzqK0X0RuAy
 ar8qEKIAvsLRWK59yLhdlqbLXKqfJscj/x+y7NoP4UQHutltnnBRvcAqn
 67K+ZRtTywXw9ZxCapT1y3LEvwowWeufvl+7C7Ymc7ROtPVeLyXx0Rh4U
 /pDxU0fM431x01c+Q1MZEU7I2a2NCbCVXT8wCX/d0WlbRwjrlpIxFqm4+
 C8i7Y4xm4csvdoCrGiv6UH13lqyycemuNHo/5mHDsPworhwrb11+p0Bd3 g==;
X-CSE-ConnectionGUID: 4XR33WBeRN289nuQfLTI3g==
X-CSE-MsgGUID: SyPG6WbwTFCqziG2FyxQJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84483285"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="84483285"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 22:03:26 -0700
X-CSE-ConnectionGUID: PKw5MRFpRaOtwTXocpQAFw==
X-CSE-MsgGUID: EUrYD3pgTuG+Rjvd6njT+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="219203866"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 22:02:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 22:02:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 22:02:24 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 22:02:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NttIRjx5sHPYS/8G4vkKpB95taxGmOD1vfdjaegodkZFwL73lO4vNclH0dBCjPHfa1u5rnfTRH0phPTgb6uJ3aiFmzMR4d6LQxcILfJYKgTVM7+K0f1B1fWEJgubyzlkIIOez/Cmb50bz78STAPdc1G2MCcLd3YYPMGrzDlfLZkHOWvuOMZPoPXfBofKj56UNWNGIVWQBmf1sbtsrG3dwLTE6gPMUsgjxia9DT5HwO9epw2iHRPo/c0hZwyrGOtHr3MoiC71NrPHQcxk+IGJ5GuDeAFZsIDFf4yqRUCFO7QANXKiVv/KXPjLN2U5AAGhQHxIptTbKpyJRelh0zoz+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z4A/eTrH1ty1GH1JP5sCRE1YXqiFeNaM2Isp7ab2kKE=;
 b=T3uybKq3vRzN2pkOMSihZts46BeMPXyrHiTUqoTpAt815Cjl7PP7OP7UkRaqr2oNY5xK9MRNev1HtkoQ36tAR9QjuiGevxCtWneN1mul+T4aQDYKY3rdUmkV57Fbk9KnD/BKNmp3Ex7//fZ2djv00c9e8VQjjKp2gU5MbdaH18bJUajROg9CuNcbGOH1JevNxI5CasWOM0Tb2PDxEp0ttRk4HzjTDKw/c8X5N0UcNfqZ0ElpkxA9f5Cw/AmoxP9BhUG+DKEIGp0qCgeySN/ROarKVs86yifcpTuvPt89aQAZhARwTlvi/KymScBoe2CVuDUjT93O7Yv13SyunU8KSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV3PR11MB8531.namprd11.prod.outlook.com
 (2603:10b6:408:1b6::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 05:02:21 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 05:02:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 06/24] drm/i915/lt_phy: Add xe3plpd .compute_dplls hook
Thread-Topic: [PATCH v2 06/24] drm/i915/lt_phy: Add xe3plpd .compute_dplls hook
Thread-Index: AQHcq9xUu41px7FveUKbBtaw3QEJH7WnPP1g
Date: Tue, 10 Mar 2026 05:02:21 +0000
Message-ID: <DM3PPF208195D8D5351E613C6A6437B6EB8E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-7-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV3PR11MB8531:EE_
x-ms-office365-filtering-correlation-id: e8444611-02f3-463e-cdac-08de7e62365f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: YvzUb7igjTVJPUuqcUAnd4BZ8n2RKs8HolU8n2jeSNkAjO+hCZ2no/z6QA6tbZzYEQ/ScSboUIAejoqKXGq63gK73AkF6UcOX0SCalwcG56I3vVZHq+G2YrlBHfm7CSUnZNhp2JlWU6d8h7aqfAIhAvj18CLvzutzxfFrNBwDssw6ka0StJuqro0a+aRCOOle0Z0BzrRZJCDe3zlt7nxy6KdFxi5LDbKqm0ke1fj1ilNgfMbbCSIgN/ZmyT5khgdAuneu8y+DZ3AADRfyadGM+jAbvHzLmR//RHDnn/ziMo9ZL5ByGr+hQdXiUF6Vhd8V0ZluXgcdn+f8uIrgRLH4V22TJmdTIIZQLxgRP+BNr/Fjrbik8dueDTqwN51Z3k7g69QyZQs9urfrJke4Q8UUflV5Ua/v85ouo7RGZK8XECnD1FzsZe+LUM1Z89RiDn7K+mpLgPZhMVp2UUGQ2EdUs3Us7Xv/0lqq4mU7geicG5XrUdgPSu5RUJ1W/n8XGT3oowIQ79jw/QhxQZmtWVs5CZnXT8+XmIiawJApENlsoO6wzLOVBa+e+fwqVvGBOdsrg2Yi4Ns1cbYCT0sVAK1NOI8DKEfamuD1ePrT0/X4xG9xBlI+XHcTSmwJyQLFFqegl4EjwyACfcg+cKV3rthj039ED7b2jQTLMIIn3xViqdcbcouv+FJ/l+Q9SClRcQxJ9tRq+lLs94URi4WHghHMxcprZIc5CPieNC+CGhFQUfouc8a4/pp5+z87CZI/OUSjwQ5f3Xuy9C1ymVZTqfOCGDN7MRlUtpPDp2zXJGO/YA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yte/myC2o7QNXpQJJxniOVXgDn0m+zIfTS++o7lyeMER8KTvdOSIrYGugrXW?=
 =?us-ascii?Q?2jaBOjLacP6UbTR882GvUDF30uo1PF2DI6o0WlhwVu31Ao8y8pi8Bgk/Sg79?=
 =?us-ascii?Q?q3eB9B5xEmEftZ5A6CZTATIswtONEXsqrNRvpVaUA2bULPetIG0n+AkOfXES?=
 =?us-ascii?Q?fmBnra4o7cVObGy1B6IWOa+aAdmpHsVa23L+wGgKukxSmI2w/9U9PWKkfDkl?=
 =?us-ascii?Q?npjApsNA0WOSUdyv9mFU0h2iz3xGcBvSyoRjARwOBjUZzTKml2aUX2a3HIND?=
 =?us-ascii?Q?e071UKXYOOle4sEKxFvPKGidB/9hTzymiURxy4z+gdnYLleJt7RXWh1yg14F?=
 =?us-ascii?Q?rk+awZKlHnBnEpDyoB2bXkkiatUqDs08Hj4iz2sGPhgkYP+DRu5IVpxf7th1?=
 =?us-ascii?Q?S/TDP/iROfbRbqXKzR/Cfahc9fslXZ91GySpjioRANGbE4/IbY+lwe2kav7P?=
 =?us-ascii?Q?ZiB+wdqOtrI8+fr15SlzX9jpyzw+P6xiVpmX3mX0Q5uG61zXGtDOFWC76ADa?=
 =?us-ascii?Q?POHxQkTEHFHS23JmOz9PJ9tGTu0CXEWFOMSjX3CGuFCYtFIz6g3U2V11H4ph?=
 =?us-ascii?Q?M88KSTJU/JvaNFYb0rYdfockFJYBQTQIkfpV6Qk4MxYfz+ThLCX/imA/8Ws4?=
 =?us-ascii?Q?4YBN6FYr7jFCpzgDWCuJZHg9yEhkuvSCzj/PypuCkLAc1mUVBxG4nO96L8I2?=
 =?us-ascii?Q?HZErY4Sjc4gdLFADhAmY1sfIPLcet5svDlEx3LYaPzE22N7H50RRPxvhi4w8?=
 =?us-ascii?Q?N/wMM4vRb3EnAYzH2riEwZNcpNf/Ny8B8j9InusSHjkaXLybTMAlx48btvI/?=
 =?us-ascii?Q?tkUR0MjWVeGco05Cg66COlNRYH3tg1szcc5wIBMHE2sk0vx7CrNtkuPDRMg6?=
 =?us-ascii?Q?YV6w0vVu0LaJ32SBe/cbiVSz9Tntm7ZMfrGdBHBRq+dt/94m7cxp/3Z1v+pK?=
 =?us-ascii?Q?nWr6y3XDEf525MY5GHvn7qEuiDuhLFtordcZn8rUOqO31aQ11CWlDKW5aYUc?=
 =?us-ascii?Q?53dUsQ20B6xlnM+SUHtkKjHWNHSJlslFgnIa+an8BXhzUNwtaK0CYzDI/DxC?=
 =?us-ascii?Q?0Yt0mpFjE56cXzTsYIl0PuKAo9igeefEFR/7hHIGpsfJgt0j9yIM0Uw6GhyX?=
 =?us-ascii?Q?f4yXSy81tznyfmj/MSi0xPsVAAH8rOcDnOEGvIoK4dTgGdWZdKEcNoxA3DJS?=
 =?us-ascii?Q?CgRMZ/iveOgXDfoD8VE/fTwNuee5h8CPHK8E3liLRErgEOnAl91WpgqETLlj?=
 =?us-ascii?Q?8SML8sw15Qd3NFMY3rEx/o5ZI2eJR63xWf5prTzu9An3WF6lA9PIDuSmGWoD?=
 =?us-ascii?Q?3q32O+08hYih1o9EY+CjvaVJgSGLK7siJP0K6n1frhlo8gWSVYRS2lD8J98d?=
 =?us-ascii?Q?Uci6llDK/iWfIBfIuItOCHZbHELVoK5IonmfnsnJ76rKSPSZRsVnGfGnmqHN?=
 =?us-ascii?Q?9Aa477hPr3OrkSYCRzhC0nPsTBf7gUHW2aL/rU29tQ05L5vby9ZYePPfzlz1?=
 =?us-ascii?Q?Vi7kNaA3PjGJ78sQsmoyG2532Rg0k1R0RqUe/IvuXDFCGxqOYVrcEHNVfAsQ?=
 =?us-ascii?Q?qqkQ12ughC5cA/mDNShnIGBgefx5R3D4afhha0cV0V4udBKdawELOWYEkaXp?=
 =?us-ascii?Q?o1nQYd0OyW1A9wE1oNEDhq7hK0wPycYWJkOFRRvzTqDizEoPUVOEq+fxeg9N?=
 =?us-ascii?Q?wlmKDOgmrqNs39VycysoT9Nxkkgj/X8az5tWErsUxIyh5IBsZXcJud4M/5+Z?=
 =?us-ascii?Q?Ml4IYzCYaQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cXBzHkGnO1eLTBT5YIjFuRsf9YJFfPnSSJi+3fPFVOC3KvdCHUgQe2CGwygGqyd3gKZMDqaHmPfhlqhagNdgXD0AvtxU/CdbNEKID3b1jfWt9CpQSr8jfy4j/1l13Ug5zzNRw/P2+ZiBXV2Hv67Ks0dhPIEMLbf98tIMof4B7MAHYCbRAaFDagT8eita7RJ3taGcdorMXJIziqmQq/hB7+nXuVRsZv7GciuBfa1JgBXTdjzANUwoAXnP77OE7jiGM1FIsqcusBQ3QIoaEBQvQ/fVUPJhnoqZN/1tdoxuIcp+Iz9iRps4sZzJbNobN9B/SolPkb/r/RHh8mwJPttWXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8444611-02f3-463e-cdac-08de7e62365f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 05:02:21.6697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +XDEwoKKw4iqDod+tEGdaRjtl4WaoHcmv77hXqf4DXSsVzRFsdPwgDBJ31UB7ByWMQXXoueQYz1vYqT7dVehQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8531
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
X-Rspamd-Queue-Id: 807152455D7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


> Subject: [PATCH v2 06/24] drm/i915/lt_phy: Add xe3plpd .compute_dplls hoo=
k
>=20
> Add compute dpll hook for xe3plpd platform and bring PLL state calculatio=
n to
> support PLL framework.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 65 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 17 +++--
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 +-
>  4 files changed, 78 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 8433e3ff0319..147baa777856 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1222,7 +1222,7 @@ static int xe3plpd_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	int ret;
>=20
> -	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder);
> +	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder,
> +&crtc_state->dpll_hw_state);
>  	if (ret)
>  		return ret;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 4185c8e136da..58c24e2164ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4585,9 +4585,74 @@ static const struct dpll_info xe3plpd_plls[] =3D {
>  	{}
>  };
>=20
> +static int xe3plpd_compute_non_tc_phy_dpll(struct intel_atomic_state
> *state,
> +					   struct intel_crtc *crtc,
> +					   struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	int ret;
> +
> +	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &port_dpll-
> >hw_state);
> +	if (ret)
> +		return ret;
> +
> +	/* this is mainly for the fastset check */
> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +
> +	crtc_state->port_clock =3D intel_lt_phy_calc_port_clock(display,
> +&port_dpll->hw_state.ltpll);
> +
> +	return 0;
> +}
> +
> +static int xe3plpd_compute_tc_phy_dplls(struct intel_atomic_state *state=
,
> +					struct intel_crtc *crtc,
> +					struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll;
> +	int ret;
> +
> +	/* TODO: Add state calculation for TBT PLL */
> +
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> +	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &port_dpll-
> >hw_state);
> +	if (ret)
> +		return ret;
> +
> +	/* this is mainly for the fastset check */
> +	if (old_crtc_state->intel_dpll &&
> +	    old_crtc_state->intel_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> +		icl_set_active_port_dpll(crtc_state,
> ICL_PORT_DPLL_DEFAULT);
> +	else
> +		icl_set_active_port_dpll(crtc_state,
> ICL_PORT_DPLL_MG_PHY);
> +
> +	crtc_state->port_clock =3D intel_lt_phy_calc_port_clock(display,
> +&port_dpll->hw_state.ltpll);
> +
> +	return 0;
> +}
> +
> +static int xe3plpd_compute_dplls(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc,
> +				 struct intel_encoder *encoder)
> +{
> +	if (intel_encoder_is_tc(encoder))
> +		return xe3plpd_compute_tc_phy_dplls(state, crtc, encoder);
> +	else
> +		return xe3plpd_compute_non_tc_phy_dpll(state, crtc,
> encoder); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
>  	.dpll_info =3D xe3plpd_plls,
> +	.compute_dplls =3D xe3plpd_compute_dplls,
>  };
>=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 07eab4d7bcff..ca31b3c1440c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1727,12 +1727,15 @@ intel_lt_phy_calc_port_clock(struct intel_display
> *display,
>=20
>  int
>  intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder)
> +			    struct intel_encoder *encoder,
> +			    struct intel_dpll_hw_state *hw_state)

I would rather this be named dpll_state
But I do see everywhere else it is name hw_state so I am okay either way

LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct intel_lt_phy_pll_params *tables;
>  	int i;
>=20
> +	memset(hw_state, 0, sizeof(*hw_state));
> +
>  	tables =3D intel_lt_phy_pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return -EINVAL;
> @@ -1742,21 +1745,21 @@ intel_lt_phy_pll_calc_state(struct
> intel_crtc_state *crtc_state,
>=20
>  		drm_WARN_ON(display->drm,
> !intel_dpll_clock_matches(clock, tables[i].clock_rate));
>  		if (intel_dpll_clock_matches(crtc_state->port_clock, clock)) {
> -			crtc_state->dpll_hw_state.ltpll =3D *tables[i].state;
> +			hw_state->ltpll =3D *tables[i].state;
>  			if (intel_crtc_has_dp_encoder(crtc_state)) {
>  				if (intel_crtc_has_type(crtc_state,
> INTEL_OUTPUT_EDP))
> -					crtc_state-
> >dpll_hw_state.ltpll.config[2] =3D 1;
> +					hw_state->ltpll.config[2] =3D 1;
>  			}
> -			crtc_state->dpll_hw_state.ltpll.ssc_enabled =3D
> +			hw_state->ltpll.ssc_enabled =3D
>  				intel_lt_phy_pll_is_ssc_enabled(crtc_state,
> encoder);
> -			crtc_state->dpll_hw_state.ltpll.lane_count =3D
> crtc_state->lane_count;
> +			hw_state->ltpll.lane_count =3D crtc_state->lane_count;
>  			return 0;
>  		}
>  	}
>=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		crtc_state->dpll_hw_state.ltpll.lane_count =3D crtc_state-
> >lane_count;
> -		return intel_lt_phy_calculate_hdmi_state(&crtc_state-
> >dpll_hw_state.ltpll,
> +		hw_state->ltpll.lane_count =3D crtc_state->lane_count;
> +		return intel_lt_phy_calculate_hdmi_state(&hw_state->ltpll,
>  							 crtc_state-
> >port_clock);
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index db905668f86d..61ec0e5d8888 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -20,7 +20,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,  void intel_lt_phy_pll_disable(struct intel_encoder *encoder); =
 int
> intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder);
> +			    struct intel_encoder *encoder,
> +			    struct intel_dpll_hw_state *hw_state);
>  int intel_lt_phy_calc_port_clock(struct intel_display *display,
>  				 const struct intel_lt_phy_pll_state *lt_state);
> void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
> --
> 2.43.0

