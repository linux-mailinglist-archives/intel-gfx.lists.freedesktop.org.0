Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BVoEQG4r2mbbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 07:19:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E9B245CA9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 07:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0F510E654;
	Tue, 10 Mar 2026 06:19:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kzbpBEV2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FEBB10E1F5;
 Tue, 10 Mar 2026 06:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773123577; x=1804659577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L2t0CBkkuAR3evPajqIp0wD8OiEwz9xUfVzDv71GnDw=;
 b=kzbpBEV2CY3xlxL4Z7nAcaylLdCoaNl5aVeF6BB5bVkJVP2EJoJVrqYc
 xFfEsLdfbe6gAUzLUdieqQ5dK1A/wwnj4FipjZpA1Z888tXLn2e1t9DTT
 /wIb7sp7URvFrgBQCAtWlOj1x88f1A0XE7BiAkH2SqT5VhWEfsDG05KMH
 8EXHh8iI2fzREOqQbVDIdNedi/id4D8EyRGp+U3qy9gxzGsXYnTWLUI8W
 sKvB7f8okyYj5tLSV49LRHc22NjiZ7lNHf/ziQrAzqlvlLe9/qoEft8R0
 WswUrN9RZ0hMp/iaNl/KSzO5oCauCG1EZB9ge9/9ingzyJKtaIeHoUW0g Q==;
X-CSE-ConnectionGUID: 00XVgGf7SDGBslJ/qGorrA==
X-CSE-MsgGUID: Dnbxb3D6TJ6epjJViUjcmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="85517085"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="85517085"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 23:19:35 -0700
X-CSE-ConnectionGUID: 91Jqge20QJKfvs37CvHJAg==
X-CSE-MsgGUID: NCT4v0/lRzq6i27loSf1yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="222623986"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 23:19:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 23:19:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 23:19:33 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 23:19:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RMkOTnEklXDacxE/TJWw3s8ZnWm9Y08aNAZW5oaOEcy2dkH/Jy+pktPPNTlTZj7+qGyKQ6H5/G0Mg2SReFC+2cVkcHQiEac0zQlHbcMUZYJY+Lfh+6/BFfw89YM5GQUUj3WlJL0CwGkBbGm0ACtG3gJw8MfBge5np4907zgfGBAx3RegmASg3kllndEdIVCPZIwc1o/+ew15KrL5fyB//uCNZdJt5vkCoijhmKIJe0U5BlfHSTG93FoWE4v5gASMp7l2wZIiFR4kbsQoveKTsxNsNsvJ3iLEYvMAUSco+EvPv0CwL/tmykg7pj8Rnu1CE/YenvMqFAQ8bAhIE5X8mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XVTnnc4wlQmt/DPhVo9Nrunmf1XfU0WNTFBWpKgnvxg=;
 b=n4oUw4AP/OUaABhgfl4K6q3WMmtuapZ6UmRuWJ75OGbTDypLe/zVojmdJb6USscPwqjM3tQ3nbyJ4NhthH4f5xLaRr+bpbUZLQXJ/msTRaTFbCvmnP1z2uaYTEMxCF4Va2QQlArULbzAvE08UQOqxKn79teh1EgDwC+oLyq1wsnMwPFkEIA8ztUfhob4x7urJJs9axc0gCIN5mqRLImTof0GB9NZIN08fwRlq24Xw+Qd1mxnvz+HCa2c7mxEwCoE8jJnTN7pdOuUSVOh1p2YcKcGFkKRd6iBsh5Ei/JklXku+AkP+O8KOIQwCqS7vcFARM+epkBbjBSBMlYixCB7kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7876.namprd11.prod.outlook.com
 (2603:10b6:930:7d::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 06:19:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 06:19:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
Thread-Topic: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
Thread-Index: AQHcq9pSHwpz9Kl6Kk2fjcuN7e7GE7WnU4wA
Date: Tue, 10 Mar 2026 06:19:25 +0000
Message-ID: <DM3PPF208195D8DFD5DBB9B9C142E2D3D5AE346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-12-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-12-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7876:EE_
x-ms-office365-filtering-correlation-id: 096630b9-5a65-4094-c358-08de7e6cfa89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: y/I0T1MsmlGwehLMYn1zOg1KMbuONtvgLWSh/xx+YmqpOt+Dhtxv+0TmyFK5sQF9FsvzJqddf9hTkDq9+JbhuuKfwGdQMUywB5UdkdSsNamBudqbA4B9wApRn/4a6HFArOwQipUg/L8Xx1zHRGcfybBzUj13pyPRKyJpiSu5pOsNXhQ79oTxvFD697wF35TAh/+r1qmdPOl4TmXTwKskFUI/y+DqJB3xVI8XRNYhqgeE2AgaNOAF77iUjdPzLCc0XqqCFXUwy+dqce4H/xd44GnrzGzx/mKh/iagn5NEtSgQ085rjgtAP7Xiam27wb5vFz8MZpqkJPlIUO/Sl4PIMGMF9G5yMTmi0mZJQFukNEc2MzASxc4Cmtyc1P/m9832WPqWI/cRa67jlKCwuvn6pMuZhblSZOi0Wp3SPGehp9ClVb2AvFpspQd/XT7nvxTmSfWUjfpSWCuIczlP1G4aZ63wD4Aipvssx0MAn4X1PSygplb4iwZ//ovqY5c39xF8kCMYTJ/cpPxFXOsHnL6PCNRsc3iUyu1twX7yDYfQXrKrr/UzN4zAzIvm5HKErvWKs5IjhZ+G4xGP2MLVYHoFCKhzNARiUXzNFcNSflKy1StutDaFMkrvRxRXztQeLx/9yeam6Mvf5KhnkfjiMCQGWaqCGUUnP9vghGDrkYDg+xzzjSyulVoy1iJxnho68ZbaQQ4hCUJ9aW4gmH5oRDH0QRbAWIWgyCAEqpZaGAaQWaArvIjSdRYHHsLbT+ZTy7pymvhZ7QzEjuMtA15Ghb5aEELj3M+kfF2TTTEgLoZULGY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LJ3/amfBhz9vkKQ6KcetB2d/Hq9dfWJ0RHkCfKPR7XVWW3xqgckA/3KBfjc2?=
 =?us-ascii?Q?CBoBxG5mENgTZ18FZsBtI+Smimh2XgJ/iqnyzT3GM8bwspBOGInzUFH43pip?=
 =?us-ascii?Q?zBq7+SuVu/Vp6yDFXVvKO+ZQFWHpvevLncIjOM/yMDuBC+9Ht0dG6I6E5Oko?=
 =?us-ascii?Q?Fh84V0goNUVrKBaXrtuubkV4J+kxJIWkNEPe1s4EwvmuQHrTk2meqoT2MGz+?=
 =?us-ascii?Q?Kh81zTruI9avlpcLjMiHZBRH5nBM4hC0EWuLnviGeW0hHGYqoGNGOT/0sKBf?=
 =?us-ascii?Q?Lg58ItEgSTmtq9/L4/v/YxqTk8FVoZ+SuzDCKjT5vUC+jj7nwf+4hWFP+Jy1?=
 =?us-ascii?Q?Yw+xuX6oknA5Kw+/b0FG/Sf+vskrWGkWQs5bz5My9iSVGKM2evNeUgeDS2Nv?=
 =?us-ascii?Q?vQXMz8+O7k6iRTSG6DwDRkEFwK5hf6ey9Fz5S3PNSi39KPS4XUukWzcEuuPU?=
 =?us-ascii?Q?/CEpKoyIlTvvDnxTO2jYfamoSpWoOczWU/L6kyORHSIHv/pi8+s+QS5lNgUM?=
 =?us-ascii?Q?dUv1UDr9T5FsQRSzs2q9zZOyOD4BavO2kohVOVQnUqg7xv5f9by99WmHdYOW?=
 =?us-ascii?Q?gqbIG6DGgym97ANkdrv2pJw8zUmnPZ9YZ134NwkLxLNav8+DXtXBjIXlSQXB?=
 =?us-ascii?Q?LO6PeX1+3/6AAMqM6FHpTyRnXDTHafagIzAlUb+Vd0LB6XM+LHKpEgedfnPg?=
 =?us-ascii?Q?VqmpEX4nRDe8WeCCzk7XAcIsLst3LQkvE/SyRo750cdrEyD6kAZllx/A05cR?=
 =?us-ascii?Q?3B6UCmB8+HqJaGSDjEU/5wtU67Z0rI1pgxj7fNfZWOwDe+4l42MzxcDXdk/V?=
 =?us-ascii?Q?a1WUn0pALmkBxZGON18TBp0SVbkVwMh9D2amPIS20/myXAjuxGeJ3jpZ8qQY?=
 =?us-ascii?Q?rybkljeHwebbgihxX3IZuQDWz/fgKc9VOr9EQ6ul8+SX9fRtZY8b3Wd2pQC7?=
 =?us-ascii?Q?bEZvPhRBuQSIgKsnuZesvqgEOXfyQtS5iCjGtQd6ix+aH/RAHSCmspzJbjhk?=
 =?us-ascii?Q?LjCwRveE6CA/IvZ3VHksjgWqjrjJaMUMWLHgPZbqbWiEsWO7xUS+i09PNKNQ?=
 =?us-ascii?Q?Cm1ju21IuNAYtRBkIfisdJk6j3ha1Fzkcuv/7lg54gUg/oU2l3oNgJVJJu6e?=
 =?us-ascii?Q?icOmSdeK8IqFTyJ1qEFTSJLvGHGv9ZWR3TxGCoE6y2UfLmw65w5eRnPTYbIg?=
 =?us-ascii?Q?Zy2pUXBMY7XpzZ3ROPMHEGyfymfSi7h1Pjois3mB59FNFS3Bj/ojG92JuG0v?=
 =?us-ascii?Q?JI4Km+O23a0sqzH5HRdEr6aColSG2XIW8okP6mN0pPl0fFXxBKTDEGnTazPA?=
 =?us-ascii?Q?pL9eftqSNFCH/d++v3ZuuUNCoUdFgvWg00Ijbux0wBRV6C7KgzrkmhpJg/4p?=
 =?us-ascii?Q?+Zg6Xf1GKqbOi2JVJijVnZonmflKtcFFU+9Tioa/RoIpe6OhT2z+JJLffI9z?=
 =?us-ascii?Q?ApZGzvmSV+8hngbScj3dvGtcCkwNHtkdsr7drpm0DYGQZmjXHTr9XZtdtwNk?=
 =?us-ascii?Q?pDyV2nSTZQ73fBPNFu+PGdS2gk9APMUzxekAifgpm5XIMvujxJ6hp88bXSCm?=
 =?us-ascii?Q?F4vfkUdnn5g5G0lK2CUT/7EneHUZF7eGgeAUb7X/MTvEYBS5sBTyotsESKCb?=
 =?us-ascii?Q?EFFexjf3S5pt9TfdNE4m6uTGoLPDbmT6bRZI6GmHAf6XggYizzlOKuNX7lci?=
 =?us-ascii?Q?lB6ONlmqh/PJ0gUjNG16/E90qTbkrrQzqaKWw2pSK00R5fyOcrWdLmbZHnIG?=
 =?us-ascii?Q?cP/gsZR90w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vR8+5wxizRF/NolbBatkzdsNGPXW6ncUnmzA4cQH0UJz/+IC2mx/8bV8Uk9wvlpc7GSEc09naVfarJk8g6yLAy5TP2yOVEf07clCVKwd6G/l0BUvo35EXBlOxlDB/NBJ5JSjUwVadMe8sKb3f9UdLlB6FZnm6Q9hkW8H5bD6j3nSNImznpJB4GDZ7bvSw7Gx1S5WMJnXqauWvKH/wAmBc0EM6wrIn2XCWBD2nK3MXU7iF4VwDW5IoWMo9s56yJ+S0r6tgEm2/JOJIaNH/PgQOR/HnObkOfcwTn4ZG31xaeDC42qjuafUN33XVvuHVJgQo2VLgK3/2l8mcZ50mlRDJw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 096630b9-5a65-4094-c358-08de7e6cfa89
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 06:19:25.7502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADSIvGsQa56hFKtObQFnLfijw863QNF3HwsQ+LLPyHGO689hOgBNtbK8dChdoiXpVWdGnEMO33KlB2aOHBJOgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7876
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
X-Rspamd-Queue-Id: A4E9B245CA9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state
> hook
>=20
> Add .dump_hw_state function pointer for xe3plpd platform to support dpll
> framework. While at it, switch to use drm_printer structure to print hw s=
tate
> information.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 16 ++++++++--------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 ++-
>  4 files changed, 19 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 27354585ba92..d67ec81c0b01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5065,15 +5065,14 @@ pipe_config_lt_phy_pll_mismatch(struct
> drm_printer *p, bool fastset,
>  				const struct intel_lt_phy_pll_state *a,
>  				const struct intel_lt_phy_pll_state *b)  {
> -	struct intel_display *display =3D to_intel_display(crtc);
>  	char *chipname =3D "LTPHY";
>=20
>  	pipe_config_mismatch(p, fastset, crtc, name, chipname);
>=20
>  	drm_printf(p, "expected:\n");
> -	intel_lt_phy_dump_hw_state(display, a);
> +	intel_lt_phy_dump_hw_state(p, a);
>  	drm_printf(p, "found:\n");
> -	intel_lt_phy_dump_hw_state(display, b);
> +	intel_lt_phy_dump_hw_state(p, b);
>  }
>=20
>  bool
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index b50f02303356..26b78063dd94 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4649,6 +4649,12 @@ static int xe3plpd_compute_dplls(struct
> intel_atomic_state *state,
>  		return xe3plpd_compute_non_tc_phy_dpll(state, crtc,
> encoder);  }
>=20
> +static void xe3plpd_dump_hw_state(struct drm_printer *p,
> +				  const struct intel_dpll_hw_state
> *dpll_hw_state) {
> +	intel_lt_phy_dump_hw_state(p, &dpll_hw_state->ltpll); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
>  	.dpll_info =3D xe3plpd_plls,
> @@ -4657,6 +4663,7 @@ static const struct intel_dpll_mgr xe3plpd_pll_mgr =
=3D {
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> +	.dump_hw_state =3D xe3plpd_dump_hw_state,
>  };
>=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index ca31b3c1440c..923ee132ec3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2146,23 +2146,23 @@ void intel_lt_phy_set_signal_levels(struct
> intel_encoder *encoder,
>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> -void intel_lt_phy_dump_hw_state(struct intel_display *display,
> +void intel_lt_phy_dump_hw_state(struct drm_printer *p,
>  				const struct intel_lt_phy_pll_state *hw_state)
> {
>  	int i, j;
>=20
> -	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d,
> tbt mode: %d\n",
> -		    hw_state->ssc_enabled, hw_state->tbt_mode);
> +	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
> +		   hw_state->ssc_enabled, hw_state->tbt_mode);

Maybe not something for this patch to fix but a separate patch adding debug=
 print for
Lane_count since we cache it now

Otherwise,
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
>  	for (i =3D 0; i < 3; i++) {
> -		drm_dbg_kms(display->drm, "config[%d] =3D 0x%.4x,\n",
> -			    i, hw_state->config[i]);
> +		drm_printf(p, "config[%d] =3D 0x%.4x,\n",
> +			   i, hw_state->config[i]);
>  	}
>=20
>  	for (i =3D 0; i <=3D 12; i++)
>  		for (j =3D 3; j >=3D 0; j--)
> -			drm_dbg_kms(display->drm, "vdr_data[%d][%d] =3D
> 0x%.4x,\n",
> -				    i, j, hw_state->data[i][j]);
> +			drm_printf(p, "vdr_data[%d][%d] =3D 0x%.4x,\n",
> +				   i, j, hw_state->data[i][j]);
>  }
>=20
>  bool
> @@ -2330,7 +2330,7 @@ static void intel_lt_phy_pll_verify_clock(struct
> intel_display *display,
>  	drm_printf(&p, "PLL state %s (%s):\n",
>  		   pll_state_name,
>  		   is_precomputed_state ? "precomputed" : "computed");
> -	intel_lt_phy_dump_hw_state(display, pll_state);
> +	intel_lt_phy_dump_hw_state(&p, pll_state);
>  }
>=20
>  static void intel_lt_phy_pll_verify_params(struct intel_display *display=
, diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 61ec0e5d8888..b208bbd6f8ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -8,6 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> +struct drm_printer;
>  struct intel_atomic_state;
>  struct intel_display;
>  struct intel_encoder;
> @@ -26,7 +27,7 @@ int intel_lt_phy_calc_port_clock(struct intel_display
> *display,
>  				 const struct intel_lt_phy_pll_state *lt_state);
> void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state); -
> void intel_lt_phy_dump_hw_state(struct intel_display *display,
> +void intel_lt_phy_dump_hw_state(struct drm_printer *p,
>  				const struct intel_lt_phy_pll_state *hw_state);
> bool  intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_sta=
te *a,
> --
> 2.43.0

