Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cL0wJGk4smnlJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:52:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6226CE4C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8028210E94D;
	Thu, 12 Mar 2026 03:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7Gx+y5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C58810E94D;
 Thu, 12 Mar 2026 03:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773287526; x=1804823526;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/b8xDI6LinmdYXqUP0hk/wZ8iT0To2vOQh3WtK2XA38=;
 b=D7Gx+y5dcunqbcgrvMPAdpIcCISr2Vpwvl/QOZHs0y3HOktmqx4Y/r7s
 vDBje+TnVecwBx/715H/v5oCnlCX2c9lY4Hx1lCRXiE+lDAhJVqJA2Mr3
 2QmTDQH7VHnkqbIAsyyNtynQH7XOeDp1QpW9Ci7FFa2RynhRubBy2Mksa
 tcahtXO6CSf6pQSJfbP5Bydn1NmuZN9K5cXAHZajVpweuDhwvhG00+LoM
 BuJ9vC9iyQGA8wKfcz43T9yDm4GzG09YH9LVKz6Ct/mdU7vXF2rdLASEW
 DDfAtf/JaSSRPvtzglxP2kMSiqkoKWen784HwGYc3HUI8FPi9/NlXG7No A==;
X-CSE-ConnectionGUID: 6Zq7UxiUSXuQcIJXr2wlxQ==
X-CSE-MsgGUID: fTuLI5XQR8GYzvaWMX7A1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74068066"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74068066"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:52:06 -0700
X-CSE-ConnectionGUID: V4TA0Vl2SYqhIcaaT8GaqQ==
X-CSE-MsgGUID: lQWHUG8IQGKCcJyesc7joQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="251180159"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:52:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:52:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:52:05 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:52:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ndgnXPWgBgtjpIiP94Lb24hutA4WnnjnZCIUkrYKvvpyWolG1zQZq1+QXXSSWYMQBk4RxVvFHWmXR3EK2sOoiaOCEybn4kx+ZU5AETNB8rDOOJjasAW0ghGxKb7+JlRQrvjrG+HxB8zgFJQuL5VlGyKSaSvYi9n8pxkJRRdoY64HPqGT/VgYd8MNM1ASgknYOR0A2GQ1MR6cDcKgdpRWn3P6a3UBvmoOCMWsXZipP9V2Qnrh/f0AZaOJ7rGGMtPr4xFM4BrFGfQSfGwIFBTsZqvECr/dNikycESD7sOq1DNX1RIU4E/DwLeEjfWAEELX33c18l/7S9yAd1Ja3FFF5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ULbH4pP9j/ZM20dgaBjKUoC4iGHrnuNHOXMSDctdLnk=;
 b=ngmv9RPnur17wOSu3RQSwaXUzafYCc2t4ejlhNRDh8n8/xAKg8CUzw5maY0pTCV6A+uwMm87cy8Sxc8ht0NDVXoWByyPodRknhdDnVMlCoDMandRguA4C92VCiSMiSFDOUgQcG3nL8PDTSDpJFgqrsVRpFysiHCuqpSTYURJDb+av0Q8t7zajWsTz5+guPco/PzQWApOwIkdoASaz7TDY4ibKOMCYFYY+qrkfUjBb9lvmERdhxYcjFHLdGnAczMeWHSmSvrz9EbPtbH2PhCJErA2V15xX95i5eNUfGrIn82gYNFwgN1QxE/+JkELg6zqBcyXqggpYH+l0/i3/vJo8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4911.namprd11.prod.outlook.com
 (2603:10b6:a03:2ad::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 03:51:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:51:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 4/5] drm/i915/fb: make intel_fb_bo.c less dependent on
 display
Thread-Topic: [PATCH 4/5] drm/i915/fb: make intel_fb_bo.c less dependent on
 display
Thread-Index: AQHcsWIJEakLv0UIUUSlqmABc/EfOrWqRD4g
Date: Thu, 12 Mar 2026 03:51:55 +0000
Message-ID: <DM3PPF208195D8DA2937493EEF96E77F4D2E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
 <13087bd24bd5af5265ca6af67f086b93e26e311f.1773238670.git.jani.nikula@intel.com>
In-Reply-To: <13087bd24bd5af5265ca6af67f086b93e26e311f.1773238670.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4911:EE_
x-ms-office365-filtering-correlation-id: bc626d6f-7486-4a44-a45c-08de7feab480
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: NgH25sU/uPUqwZV/tiw8YePl9jwxQhWlCqR+m4tzjBD8IVhZG8CpMkhiy7UWtCwqkCKICdTr9Yqlgdo9GcZozby8DcigU73SUp17QpKie62D2xXHulqEihPuaTkIT9xvleChWZR2bW2nfjz/EZoKCi6wam0HnmMWlawwS/x/B4quid1bwi7Kz1lKhdDctFKOIQNzhWo+S/0rM1zN7d5h4Bot0eye/Jip+NpAm/OqIcELeK4Kc0Wo2va7v2iDeDQr8ibYV2XdNjRVTfcSw6S+64LByo0NJBEyFZOyu7fbWYWDn+fsG1V7jfEkPyDcuwKZLssPP2tLDOCu0J58OHiRLtJkFJeQ81hP2f2SqF7pkp1WN7uowzMSv6MGvIyjD96O1xOdDiqZLy9pTrK98V8V359Zu2ZVwFFaukfdXPwDRSK+Upp8vpQhOtTUdEvM8A9tJkZMyTg2E+SC9NOqNU0RD8cSbtNyu4bwrAcMi9oiaxELQbsolKOtHt8W6+ssPxPqbWcNQlxOVmMYty2CoJI5puLG0yYXrLPjc9W3HD9PpNslzUkP5pEIhPoUS6mQKSaLT67ixtfu8n/h6LLUgV/PpsDEQ1DxXvHbSWziZGjVMquD592p52hlxH9+EsB3ZUU0Ua/hRkaDn+KEF44jwnQhwh8kqhVG1RsvP1Qo+gfclDrk9omJnjaSC6b0W3VAUtv7ezEDIFI7alGS7L5aGtC9BreDL26GPdCNQgvpBiasgvYm1afeXk0b3mnAIK25aC3cMcwqgylg8KmHIs9MgKd2kcZmpiqhocKROUej330neVc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gWoFY3v/nB/ttehiV3AIFhAQDIYOpIhn3gJpDZYeYtmlJuBOWgszl3E0EWF+?=
 =?us-ascii?Q?XDDO08deKp/YUrK88QPYLYA5S3z6v/KKPBIbCFytAuadLpwDL1eoe+jzkHV/?=
 =?us-ascii?Q?wL+uu8QG73kcH7JuM2P/KGDN61XpCQiz9oGpRgh/iCLjimj++tQ+lMmY2usM?=
 =?us-ascii?Q?796HNeFdecNKEJ7UhvORX4TKEpXPC3Wj0bUKyNiJxqMy8Kklhh39Vwo6r3E0?=
 =?us-ascii?Q?Ae9/qlKTXwt6lFoMG83iqcvixWwVwcg+6mtbK9DQ+usKI1C+jVbLfglJ2B9J?=
 =?us-ascii?Q?NVsfnHEjiPFfq6esWw3lhSZiOL79qFj3NVq0gfiMgwBzbBWkI8kvHElaGmP/?=
 =?us-ascii?Q?wVLD4YNC9sp1G3CuCUIdTgF9MYdDRKOSv1fsuwGafdabLCHB0m2RXl7RtN47?=
 =?us-ascii?Q?y6qCh5VVFXygK8iUFnsHNMvglKiVFuIsHgZtVtK7Uwc5sYRta8U7AzQd7b/e?=
 =?us-ascii?Q?mFfRb4HNaVUu3YR0mJJ/N6wmT1xCbIJT9AHoAHHQP7vEvq6j7An95hbf0ojn?=
 =?us-ascii?Q?UqXvLTUn16OJA/tW9WhNASis2Zbu83By7Bs2N5Pp9dfO4sqNl4z1EtnPFM1N?=
 =?us-ascii?Q?rNTVxMYUnm7u/uGvPLOedIm+Wy/kiQVVLUbRXpwq8ydw/PSiahGc+89mMVWu?=
 =?us-ascii?Q?88GSnywq0q5VWh4PdBUFhGmCsPwbuT/0z6zLYMJTbauam0X2lYIA6VVcwYRq?=
 =?us-ascii?Q?oQHxwwC1FbXdUKbs3WwrAAhcAaWdadklCjFA6lw/NVw2P7mC3/Gc3LQgmGZ1?=
 =?us-ascii?Q?ZN9egt2OQEv+fzul7bxui92uP9Elofr5OAtpEMe90Q/AMVtil1DCqEa+pu0E?=
 =?us-ascii?Q?8QBNiSuwzmEAjXW4kQE4d5o/FmGsGRb7A1d4BpnBhTkXGtBap7lvbK02U/OC?=
 =?us-ascii?Q?4vKcxSyx6ZQafdv7vbGe9YLVUwJcIG8WY9+3KhRgNylLzztdGC1JNSbnxoK5?=
 =?us-ascii?Q?z0dYB6JUoE5wglHunpriNExYAHbLnCRwrBe79vu5knz6s7mBMHk5zHEkISaC?=
 =?us-ascii?Q?jkSnojXZJ2aDeXhHdyi4PXwGXNtNsgihMd9+tSZKmcnkUFVjA3GkzdNCRqV+?=
 =?us-ascii?Q?kPvHHa+1+5FivyJFXEKkvm54tku4PES4b1BjsU4C6fwWqACKvzsHewqDNPjn?=
 =?us-ascii?Q?wGzUHNkmMUYZ/apyBj2aOuuO4OGzUSp/H1BlBRqyiFZWzSiS3I4NnFTzZmOC?=
 =?us-ascii?Q?nHErcSgKPte8ZhFYtrqBjhtcOA0TFAdqp5hTILjzh75yofnPyJwY4olFm4Nc?=
 =?us-ascii?Q?IbhsHCTKTQ9K9XNce8/Cl5sxLA657h97srIZMEIr2HuhbsBrpPzX0MHXO8cI?=
 =?us-ascii?Q?3m4iqyVl7W2BuQ2B+WHk9P/FoBT4BjIOCcdqXGba8Hm7Hjv9+NafInW7bU4y?=
 =?us-ascii?Q?nExmvGSuzbK1uQ823AOfn3mPctSco3W319XxeeYv39BpZY6pOwZ1mpgTcy1r?=
 =?us-ascii?Q?qgzdYmZFUVBQ1vRTLSIorkQ3URde8JFq2nIx+ZCd4qruqs6GdHLVZU2G2XWh?=
 =?us-ascii?Q?xzTtY5kIvpLqG0k5Hkm9PnYMnybbqw2LiDLC2oVGTT+4zwc3XEVO5n23SRaY?=
 =?us-ascii?Q?xJ2UcmNMRD56ZKMTA2GidOgn//kpwMzLt9asCxt3iE20Ncrg1xIzYSOQFbEs?=
 =?us-ascii?Q?MG9RRt/xeNfhKgKcFmwo7bVmw+ISPVfOM8OAUOtpscXKaDYw/1cOwqg+oWGs?=
 =?us-ascii?Q?FX/+llWixdX3BMVQEBuZ5/wu0ruZSSik9GgTZt5lxR8JqW/75bSUio/O4C5h?=
 =?us-ascii?Q?YmEwZRXckw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QCY/vcqBRziOF4DaIERsv069v2RlAdmhcIcjETorA7Pkiub0jhhSOfed3N1asmjqo/y5vCgVYlejSbpSl7oJQdBbLkcTsK6mBxozYznG7OKE8sBO2/Zi+b/8hvY/euHGqgJbyuoK8Cdlp3ishpxMeVTBu8lJ65f40VrMsay6ww82sB6l6GsxTzNBV9PJUK7VjdWlPg3pVHM2yGFSQEuQ0rpND513mWkcmiAZ2ZGZCY7w5qbiEkH7MxHs0MLGIUJq11DCq/qyJ7nl3Wy61/7r8AwK8Z5e8jcsdeV0QHEg76FN0vUJ786lfypY16iDGYWn3Tbu9n0/uniCxz5x+ufimQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc626d6f-7486-4a44-a45c-08de7feab480
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:51:56.0015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d4HG/Q/oyY3K/SeXjalnE/BY7ibpNPI1YzMMZw4FBwl10wawYCG7HFS52+v5ezDArrIkJYKZl/7jpJj7uxooww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4911
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F0F6226CE4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 4/5] drm/i915/fb: make intel_fb_bo.c less dependent on
> display
>=20
> intel_fb_bo.c is i915 core specific code, and should use struct
> drm_i915_private instead of struct intel_display.
>=20
> Switch one DISPLAY_VER() to GRAPHICS_VER(). The check is for < 4, where
> they're effectively the same thing.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_bo.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c
> b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> index bfecd73d5fa0..a4d49ef450d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> @@ -9,8 +9,6 @@
>  #include "gem/i915_gem_object.h"
>=20
>  #include "i915_drv.h"
> -#include "intel_display_core.h"
> -#include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_fb_bo.h"
>=20
> @@ -23,7 +21,7 @@ int intel_fb_bo_framebuffer_init(struct
> drm_gem_object *_obj,
>  				 struct drm_mode_fb_cmd2 *mode_cmd)  {
>  	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
> -	struct intel_display *display =3D to_intel_display(obj->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
>  	unsigned int tiling, stride;
>=20
>  	i915_gem_object_lock(obj, NULL);
> @@ -38,7 +36,7 @@ int intel_fb_bo_framebuffer_init(struct
> drm_gem_object *_obj,
>  		 */
>  		if (tiling !=3D I915_TILING_NONE &&
>  		    tiling !=3D intel_fb_modifier_to_tiling(mode_cmd-
> >modifier[0])) {
> -			drm_dbg_kms(display->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "tiling_mode doesn't match fb modifier\n");
>  			return -EINVAL;
>  		}
> @@ -46,7 +44,7 @@ int intel_fb_bo_framebuffer_init(struct
> drm_gem_object *_obj,
>  		if (tiling =3D=3D I915_TILING_X) {
>  			mode_cmd->modifier[0] =3D
> I915_FORMAT_MOD_X_TILED;
>  		} else if (tiling =3D=3D I915_TILING_Y) {
> -			drm_dbg_kms(display->drm,
> +			drm_dbg_kms(&i915->drm,
>  				    "No Y tiling for legacy addfb\n");
>  			return -EINVAL;
>  		}
> @@ -56,9 +54,9 @@ int intel_fb_bo_framebuffer_init(struct
> drm_gem_object *_obj,
>  	 * gen2/3 display engine uses the fence if present,
>  	 * so the tiling mode must match the fb modifier exactly.
>  	 */
> -	if (DISPLAY_VER(display) < 4 &&
> +	if (GRAPHICS_VER(i915) < 4 &&
>  	    tiling !=3D intel_fb_modifier_to_tiling(mode_cmd->modifier[0])) {
> -		drm_dbg_kms(display->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "tiling_mode must match fb modifier exactly on
> gen2/3\n");
>  		return -EINVAL;
>  	}
> @@ -68,7 +66,7 @@ int intel_fb_bo_framebuffer_init(struct
> drm_gem_object *_obj,
>  	 * the fb pitch and fence stride match.
>  	 */
>  	if (tiling !=3D I915_TILING_NONE && mode_cmd->pitches[0] !=3D stride) {
> -		drm_dbg_kms(display->drm,
> +		drm_dbg_kms(&i915->drm,
>  			    "pitch (%d) must match tiling stride (%d)\n",
>  			    mode_cmd->pitches[0], stride);
>  		return -EINVAL;
> --
> 2.47.3

