Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E2UjEVOAL2ooBgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:32:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E6768347B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:32:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Mm2z+q8B;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF9910E185;
	Mon, 15 Jun 2026 04:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31A110E185;
 Mon, 15 Jun 2026 04:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781497936; x=1813033936;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vf1QVO/f+zH0OuNX/C182zbk2zQHNmw6gfd3p6IVggQ=;
 b=Mm2z+q8BghCRJTDy3bAU6atraZ6pWmLZcK5uc5Kso34pTRs5tO8X7Aid
 nfs6yc4O6GCDjkELkIQ6E8eVvEazlESdbYYuQe7OwWU8buwG+LxYa2Xvh
 lkCY6Myc/+rRCiiJ+rloUfDNXOm/60eDT5fGfy1J3gt4Wq/tGid6pegT+
 CS/6d2ZF0XcGPVUiF1AvlR0Kt1MYSVrkaupAbxk1XZnoCRALLniz9EStX
 MRZZZsOG3JWo8hLZQDUZbDgrCTMC7gRKF+VThvE+HAZINXSkVV4hXWbec
 fUgiqs8aWLWhgyPxdxkQLQkIbzdJEQzNZ2aMfWQUS3cr81TAW4QBfEvys g==;
X-CSE-ConnectionGUID: WPbFLf2oQWyvAXWeVvr53A==
X-CSE-MsgGUID: 40kXvW39RvCLq3EvjSx9LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93723687"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="93723687"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:32:15 -0700
X-CSE-ConnectionGUID: Vm+oJW7JTXedRYbf9LOwVQ==
X-CSE-MsgGUID: iGiWxZPURWOiYJzLuSduYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="251641374"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:32:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:32:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 21:32:14 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:32:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vI9IKY1tB+SetFPAkVtJIPSZG/NFrQLDwscEsbT8HUOp7yijKkEJIgqIVE5bsr0prD9jSiTM8pEF9IOGjrroplchVnC6ya3pq3NNWuUXWDwxxWENDLC7C1BsHs4nvHUIyERunKOy3z40C9++vxyhKYU2zR95yr6KahxeJTYR9PFWxCueTcyIDWovvNcIpXhhzWc3R/IN2InqJ2KfsHh4KYm2FMCyB+QF1E7QvJ2X0WRJXA0yFRcQ2d46ySqsETb/YeG5Hn9we/9rkdxknbTFonPZziqH6+LcPHVV8/sCFv8naK39+nTAv6mXg86JGe45m4hW76K5OupvCPl2VZWxKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTzrMrN2rEp2H4rhB1v7gyUg0TfvH7rWn4tTG8UclAg=;
 b=fQX7t/SuBeQdiSry5hdUhcWlKaj/czqhNfTg9c4L1hRFvoIpi8CfZb2/e1NNxDI3DoraKIvzr4vohkIRNBu/UevDDOcBA64b97qDuCZNaqeIbXdq5tJqb7phO1JYw8OFiy4XshCBdsavxNU4P2w8mJspaeBbm7KkSfq3wBn4zpNP0tJaUB6Vcxv6AinyfVjyxEM7Ir8jiGQ53hzVD0QQEFBTsCKeRH9RytFLqzOY4/I/0UO6/LSRsey6Qj9ro0OI4062TPl8ofKrSoTSj9f5I+9nIkN9CG19yNe03kir3dXmgiMZE2yIxVfM4uscbCXEeFRU/joDMW728v+NM2xCAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SA1PR11MB6918.namprd11.prod.outlook.com (2603:10b6:806:2bf::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 04:32:11 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Mon, 15 Jun 2026
 04:32:11 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Thread-Topic: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
 intel_vrr_set_fixed_rr_timings()
Thread-Index: AQHc85dN1+Mt60FyA0yM2n2ZA4n+jrY3sn8AgAdl5qA=
Date: Mon, 15 Jun 2026 04:32:11 +0000
Message-ID: <DS0PR11MB8049FD263E08B0AD95533437F9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-9-animesh.manna@intel.com>
 <4f1a195b98fb31f4cca7fec1580e053966f3025d@intel.com>
In-Reply-To: <4f1a195b98fb31f4cca7fec1580e053966f3025d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SA1PR11MB6918:EE_
x-ms-office365-filtering-correlation-id: fc9c65e2-2d99-456e-3aec-08deca971190
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|56012099006|11063799006|4143699003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: LqU1mz2yj0Fmk0dRY9YXkzmPvlDJAf5feRkU36rJRtxz+h/L63mL0i8ZNrUsIwyDVQVqOGvVHikJMc0HnJDUIJoiPkP97KVLzJnDqh7XYl/wAbPBpgHDtlfIqXtCmCDVIkYEZvPLAy2zZLGUEtEQfqMQo3+/9FgCKdjTOIQyyoe4ByqW6L11JoTwBbw2iMo3taJdWgWqCocWr/bIB9x6v0ALmUmi2SUmwdGGb9EbIF/Hp/38VulEzV8UQykXql7qA5w3HkNbGtRT/B0JzxqhlwNdmCbEKNdHxoaeEkTbgHKMgaq9Xhiko1sy5W5g31lNapmQ5OV6HYxYX8oXoV0i1i6O2q7aiIVMxfWeUegTwYOQWNcy22ZIF0YpPF7TNPsWGf4+BCg7dnBts5oTwlQeYc/IQc6U/zkBu0P8pjycuz7Cc4KPwPzFAyuqgKk2sQAAOcx7RoDh8Pr8yknomSEFjXpVeZ+/FBkzCZwPTpTOdVfBto+fM0EeCbNsnCTljwTTIyLbPnUm4Fn4lyINNRi9vtt3K3tuIXxaz+3VThY0qm7sLgAc0Tvg5mdW+a8nhoTAHg7cd/bgKCwgl7AObIwEXJrsQeqbuntEleQmr4cNv5qu1ToSYifbL3Nc+WbDHeQbONkv2+vG5mjAo7q2Hs+R7iFbmPmfTJAN4H7KNI5wyp/o/EH/UUvXx3f+e3nSTH9I76ZgQDr/Cf0FVmQkYI723pJsvIEqHt4hpBH9Xt6mArGTRmAgBkIuKMN3RcExmALm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(56012099006)(11063799006)(4143699003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6DTIHUPWGnOyQOckZTQEA0IAJLBlIm9t8tfFuRYD4o0kOWQ4MURbAgXUH9Mo?=
 =?us-ascii?Q?7NtWfst4/QoUWgelRiEMU2Xw6ZXPwA1/iNPMTaHS3E/gl5xT66qCal3/v7Cg?=
 =?us-ascii?Q?4ycgRWvJf4/mk5O6wcZ549pmPmbyjNs+pJgQ4HDENfN1C5VHHwKTxPoIsRTb?=
 =?us-ascii?Q?isNpnzEqd3K1rqfohBcq8VfN1+zewGF2Q0g/S86LsbVlUxjQRZITtTqf3xPl?=
 =?us-ascii?Q?dsFZFUQrr6I8Ye4OTOYo2HXUno+31HzG/oHkpZEJRSoXdR0BxhtUzsgYCbBq?=
 =?us-ascii?Q?SjiOgRL2o9B4hn0zKLjiHPxnxHwMO0rF2ltVUvAiuH4zhtOSpUQiXE/Y4lK5?=
 =?us-ascii?Q?+GCCRZab3nG6wRla39CLaHZ8N7ODAExdP76r4ZJIBqOe6h5f6CMCj6fJ6LX6?=
 =?us-ascii?Q?guUWiPxDkTlg0Pmmhhd3fO1SAV24HH7CgXlbBLW9rdh/qk1p+Oub2iZjjaPm?=
 =?us-ascii?Q?lwoZrx3FdKwhDtQYgTlqT0m1GTguXjzzidwyYeCdtc+vNs0n9Zag7AVFPPUU?=
 =?us-ascii?Q?JYXNOfJRY75P66om/ILrgC2jr+oY9SnNWuV+KKejuq32O3kvfikZl4YQ8oGQ?=
 =?us-ascii?Q?BAnKG6GgyExO5vdh9Qukw4ipI6oxKO8kRTgyxw2ZgIAMKdl7cjGfrDkoz1LC?=
 =?us-ascii?Q?618aLyk4I1M7+Oi8l9R2jPgn1ZioprFbOdJNYZA0vgqOwAPvjPMpjAyiV6x/?=
 =?us-ascii?Q?O5vni0rLhFayoOzrjoMeL/dW5EdbUj0jWWAsXN38JDYTvWS/jO03djlfOzbB?=
 =?us-ascii?Q?scSbkz4WXaI1ZMeKGQEYxIUIaOAYKWX2czOpshxmPWYATdk29/gDOMGUBHrE?=
 =?us-ascii?Q?MW0sOxTnpV+aIayHaBFUMN5Kvb3kAGPcGnHGXRlUHWHfWaZQDMqzxIbwJfFz?=
 =?us-ascii?Q?mfy/gsAeVxsssQpDJs8u2VEF7qFrrQWFdqMmkaXyNs8bC7MeYj0sWYT7PIe1?=
 =?us-ascii?Q?/y/Xo2wmhl4ymJnIcuN1XPWkJKyEp6Litqed64zzXYZJMGVVQ/8AXD2VsTtv?=
 =?us-ascii?Q?SoR39smAbnTH/3O6MwODInYRoIGrEewHMcA42iXs+H8SVO/7uZCY4pEpNd3E?=
 =?us-ascii?Q?Z7OJrDtq8CLQO1hJxHZjFOKo5ODZ02js8ffTuIApmX54is6hPP6HqUKVo91T?=
 =?us-ascii?Q?zKf7wWFQ5BRQdsA+qJZCqfFpW81Jy74IcTessjNU+2tygFnzEfL6qyJ9eCiJ?=
 =?us-ascii?Q?sJceaanA2U4820CwpglYoCYA+GC2uaVQdNHe2hY+pFOLKavxsxi7flC+Spch?=
 =?us-ascii?Q?g/sbsgl3Eh21bL80gIkl5ftL7B9wwrsffEEdCQ0OPLEzf7zEASoJzn4s5ss4?=
 =?us-ascii?Q?CrtXLywwtSNBCWegE+kbQ2qy9acrAKPkWdElRAqTDKop3Kv5LEE0FZboB21h?=
 =?us-ascii?Q?cl2Ogru0cxvA4zW2T/cvbOFJUPt8hKb97Ni5nPnVG8wAawRdeo7BbhB+JNg1?=
 =?us-ascii?Q?n7M1fxoFt6OOVIsiqqcwyzSHn3pXjnq5oQPLT2wCbaSeE/F3hWBpnt0yGFOE?=
 =?us-ascii?Q?02i7qm/HtvsVUkjf2kEh1ug9JZoCrDfwISzCYdMCztQ5a3PTs6s2AR8jL/wV?=
 =?us-ascii?Q?43M4+au8IKEPVFlAUHM3YZaWwmSQqmw7MD4K2+akQOuwBSDnnEjdfI8Ra8rP?=
 =?us-ascii?Q?BnsMxWayG3M0Y1le8V8MEAh8V9FgXed3k1UrXRpM26HYR5JQDtbiK1xtEXrH?=
 =?us-ascii?Q?MdIRUKEhqPip+jHP1Zx85EwQA2l9RY5XUdzbcVAxD/AOopLdI/JVXOeE3MDS?=
 =?us-ascii?Q?VsWdpZtfbA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: M7XADN6mfzD24Q2Twm9540SVOnIaWF35+ad/Mgp7/J5AstRNR6JH+MTq0z3z5j81WtuJWgywBRbwbgBdjIeAOqFT12sm+JRvcnKgbsfbrICNE9bNXQVhyI0Jkt4ilQ7COy1Atf6U4CHUcTq0Z4XT9f2NELYZY/fQdLSC2O5ShSoCN1L801XI7WLMLPp7AMQBzdnSVIaulip3r+uzDBQ1iD7dobtuid35h8qxE0R3qJiTZva5pJ4B9+9lLGB3SaLTgEOrD+zgu98dK4fEZ6Xh7ylx8QYRLsjjpvRYnyKqxCnxG3YFLsOkTCkMWWLaAr5EB7D3Spby1ng+f5/79v6aKQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9c65e2-2d99-456e-3aec-08deca971190
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 04:32:11.6391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vVogPWAgddOYtE/uHSEAxvsqOdzyPhvpsdfSEZCknYkwk2nitGrdWC1gXKtKEPgEvjvX0MZKB/Z1lpcY+2HGDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6918
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36E6768347B



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, June 10, 2026 5:03 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> ville.syrjala@linux.intel.com; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v8 08/20] drm/i915/vrr: Pass transcoder to
> intel_vrr_set_fixed_rr_timings()
>=20
> On Thu, 04 Jun 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> > b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index 4f16ca4af91f..2daba0c16162 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -8,6 +8,8 @@
> >
> >  #include <linux/types.h>
> >
> > +#include "intel_display_limits.h"
>=20
> Don't include headers from headers if it can be avoided.

Sure, taken care in latest version.

Regards,
Animesh
>=20
> > +
> >  struct drm_connector_state;
> >  struct intel_atomic_state;
> >  struct intel_connector;
> > @@ -42,7 +44,8 @@ int intel_vrr_vmin_vblank_start(const struct
> > intel_crtc_state *crtc_state);  bool intel_vrr_is_fixed_rr(const
> > struct intel_crtc_state *crtc_state);  void
> > intel_vrr_transcoder_enable(const struct intel_crtc_state
> > *crtc_state);  void intel_vrr_transcoder_disable(const struct
> > intel_crtc_state *crtc_state); -void
> > intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state
> > *crtc_state);
> > +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state
> *crtc_state,
> > +				    enum transcoder transcoder);
> >  void intel_vrr_dcb_reset(const struct intel_crtc_state *old_crtc_state=
,
> >  			 struct intel_crtc *crtc);
> >  bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>=20
> --
> Jani Nikula, Intel
