Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WuYhDxocOmpu1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:39:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C63C6B437C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:39:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=m7ZPIFFK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BB610E954;
	Tue, 23 Jun 2026 05:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEA810E952;
 Tue, 23 Jun 2026 05:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782193174; x=1813729174;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QnumcF27t/hwa4UaFKfgpDw/UPg573ejLAY9VBb79ko=;
 b=m7ZPIFFKprO75JFHWkcvy/YdCoAGGd38cMeYrVHYbXWQKyXYwXMTU4yx
 mPhCuKyVhMQWAV3MYO4YIEb4KjbwgF5EVA6SP1NpyTIhHRUquBouMq9sm
 PMHW6S2VvlJUPb+LDcsvw6o1BH9KnIJIUoafBk6fpSHawvKKsdlMmQB59
 D/k8ACc3hY3Iho8C9ZACB/HithOdq0SS+z52sgB4QJh29qyokderBNYOQ
 bhN5/3JIFL86ozLjvD+PdcYihTHK9voOqRkDpbE3wxu3zKzTkRDl8kHBO
 5wb7brmJruOT63/C5XmYWg4h3/7tcg84Wwa9b8Dv5KsBjwnCZZKC6R/v6 A==;
X-CSE-ConnectionGUID: 6D4C3ZK5SCKsFxv9EQbFfg==
X-CSE-MsgGUID: 5LS4Zc/SRpOBM22oWtfKtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="94315386"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="94315386"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:39:33 -0700
X-CSE-ConnectionGUID: KGKBSZ72QNqus8119UI5Yg==
X-CSE-MsgGUID: HfV8b8LSS+m8JYVHzaSzcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="248274218"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:39:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:39:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:39:32 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:39:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvqoalYmBxJ75bDmnccqrIYzEAn3HxeuzYoLnEIc1nGUKx5YtI43zwML777Uo6UqchVfae7V3LTZ36TFFECTEjtb5NXHy+3hL4SuSSyb10UzmtRN8Fc/lQslRLEYYmc+lbT5/XLGJeJdYr8DqGdfBekfcfInHXdYF2+A5h5JMiGNhW0UCyDNb0j/DDw+scSgjl5fsTH70PXrExfAkZBrZO8U9nkJph9pI05U3bL8uYm/FscQWxDkySTlAgjtwdGPVMzotOvFoibDkIWdA8brVmSMPgrg26DUCtdjWumQ53rTRq+s1mBvMI8qYlfb2jGpmNceeaSnRLcfWqBtIbvdOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLb7h6UAKVY/5ocC5vx5wldw/6tM9hhDxRmcyRnGfRg=;
 b=U8n8BV9SNntpgCdkNMuPELGRf0DPqN0/UiQNf3eJG35Q6I/zw07Isxj9KqKJbNTfg2K7pv4LCevf7aC+uIR5hhPecrftvRDyJmQmQqC2PtA4AAZnUvwIiHJvkAl3V39aQMeqSUHnioSCMz9qjTaCZygAbRPPPcXGcsC8ZCyp0ZaynbzVp6LBuwQ9lNgRsBQ+nm9iB8/7oEr1Un3lop3DmKKGTl5wY0E+4xKtAA86yTastn8Vl/VMg8hUVrjewSBCM2AZr2YZ4swA2LLpOjal2lME2LwpDKDGGQRpnJSeWQ3I1QOHJkeO6NYLwd7wM3HjFhbQlPM2eMMPdKiR3Ta1Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CH8PR11MB9459.namprd11.prod.outlook.com (2603:10b6:610:2bb::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.12; Tue, 23 Jun
 2026 05:39:30 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:39:30 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 28/28] drm/i915/dp_link_caps: Pass link_caps to common
 rate helpers
Thread-Topic: [PATCH v2 28/28] drm/i915/dp_link_caps: Pass link_caps to common
 rate helpers
Thread-Index: AQHc/c1zmbh5ntNsGkCKJEilvD7nHLZLqaVA
Date: Tue, 23 Jun 2026 05:39:30 +0000
Message-ID: <IA1PR11MB646762ACEF71A6769E69E6BAE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-29-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-29-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CH8PR11MB9459:EE_
x-ms-office365-filtering-correlation-id: d3dc9148-2c93-4e58-b170-08ded0e9cbf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|22082099003|18002099003|38070700021|56012099006|4143699003|11063799006|3023799007;
x-microsoft-antispam-message-info: DzFATrualv3bCi/3R2qbFs6INZ6jiQHCp3FQp2p6oQ6MIGKwZMsb3HCnAR1Fde9RwnLtcttg9NY46CyEMtBVo7RZd1w333lTL+MO7JdFhbGhBjrcZJABBFjd2a6zmr4Zm0JDCFrgBZ1HPOq7kQmgfFXlxM4QGJCkTOmkLz/AXUT4FwxEDQCOeU9SNcjYImmBvPJcRsHF4Q9jui09TZoyqhWNPZeYZxPw/McBFP+TLPiWJHB40Dh9u8gkr7Q87ka4p2gxlZcPUD1wuIys0q1L7/r8GD5zGWpxwueG2OcDz3GBsSC9gBg/t3VnZCsOcnBdI7SVsWeUCxhTglhdnSXzt4+vLjaKBJGfs/jMJV11liA0i15FcPsVE4OuzBrTtGsJFS+PLJlsMERwr2E35r+B1vfqDCcmuHbJTadqSzBz6dV8fRqjv/zW4gAQ9/CN3unpJXirps5NJEOTgKohUn0sR8ZbeGjGBo31SkCwj0WFcO5plaIiv/ylEAhqfDRgsZcPBkKyseW/rDb0DQdXWnQ8q8ni7ueMz8p20/kCeIUC3r/scVw37iH6Gq17IKYc1qTjWtXeLCT7g616ZAdijC+B7rYhqlgahQSBI1+2FO+eSaPrXFbICx7KQJXqAgJoRejglDhvxh1wheCVFcObZf1weP3zH9dBj+8S04yJiTy5PvtBNYAQE/72pITcuFrezJKG7JDMGNKcP7989SX8jrD9pOU26PtaSKhXW8su7UEVFAc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(22082099003)(18002099003)(38070700021)(56012099006)(4143699003)(11063799006)(3023799007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+r+qWuoj35Q8L5TUURI406WbPZ7AE9QQYiKitDVZFF/WnEDiH1/TKlrmtQE/?=
 =?us-ascii?Q?6/6rrrYbfkmaUD8k9hyw+JLqc9A57lB79RctDmGUpTEQQR2bfmP51vqhuCtp?=
 =?us-ascii?Q?SSFke9FEfoWwzVo3APyTxcFdaIvwTaMr5sXri2b9smEfh1i7V30Jw5xOjU04?=
 =?us-ascii?Q?BNrMWEAQ92x75VgEEE1IxXFsfYcDm9/GGGNDQXABfyx1bMhvGIN2yDIxSceq?=
 =?us-ascii?Q?+3WX28nGrw8FlaNt2ojJ4PSIPlur35D0TF1wv9tWkwKhtsYAk3mOww+HMhj+?=
 =?us-ascii?Q?5cO2eDYTY/rc/QYIiPagDws3q4AA29yE8nuULd8IyEqI0Sja5vp/m4TF66Jp?=
 =?us-ascii?Q?wqYjyr2KY8vixqHXJzW11Bd/iQdEYXEwTdM4jKfAkgluEdvMJWI5bKRkZOQj?=
 =?us-ascii?Q?X43L01gCSE65pexeLBv4i6GpuMSoyq1g4eM3xSkv+Hv2ZQV7Nv6xR3AZN/Hd?=
 =?us-ascii?Q?4VkFq4lyZWzzdLbyO7oBSckVMO/3xO0Q4C2zRVeHXtlEt4SrNIVQRQlP8BMy?=
 =?us-ascii?Q?Jke2pHW2RT+cRT0fz8KhRw6IbHUmXOjCm5cH02eyAQaEBC7F8xw3amOYXchQ?=
 =?us-ascii?Q?wXnCxHwTguPnaN6YAx7SmHkZ4GsexXnsEiXSF6RSDJRIPZp9T8kN5tOH+RYv?=
 =?us-ascii?Q?3PE7mYDNNLSSg/7/94SOdn/80KYRMcPeTc7VrchufmhFyRgnD5uDUyg1hrhO?=
 =?us-ascii?Q?Oy+yxnpCC3bhH/L18siMjY1XiMGbb4NlUl3qqiG/kLErgEUji6J4xYuzqiyL?=
 =?us-ascii?Q?OtDiOTE+n9ZVmTNGQndkpyHqHBHlndMm/0XkU4ZMoiXEykGDJZK1XUcPlP6+?=
 =?us-ascii?Q?U7bBGKkd9VKxDAV0kTobHnKMqEQHWy+0NyYyN4WNYocQtzA4c3ha9XyKkRCJ?=
 =?us-ascii?Q?ZiFMnRpiHZaBdCvuK6cKt3UxQbqKu2fI+Z/lzwePAUZfOlqIgkG4pRAP1I2w?=
 =?us-ascii?Q?BFftBHd7wDn07hZf2BZW2SGtuuLaGejmibi4/ZuaOhtbUcZCjqaK5g+UD4Cu?=
 =?us-ascii?Q?SqLLQYctRix0nCs56t1f86ATf2ybUaPS/giGJFqEby44W+ZwMn67nGyxiuhd?=
 =?us-ascii?Q?B47byPUGdb+SxwwplHbZB66klOSR/wqZ9KFRoEUqY9tUYmlDaEh9/mELRzXP?=
 =?us-ascii?Q?9ZfQg1BtlkDkap3mAgx0vceD8lyBOfiJ6PRMhshT5HspWiQ1QyFLjH+6O54a?=
 =?us-ascii?Q?QVMlw5xSPAdNKlC1fodMB5mbvpKmAlrsvsulE3SR5bLxK8qu6p4HXsmfLG1U?=
 =?us-ascii?Q?ubLr2I7TipnFPYBJ+K3GTjFLWdDav7jZg3DPTpAejEGCoafpvngq3W72T9sn?=
 =?us-ascii?Q?ZoDBFkmC4MaxHGH39flD9y4U5iDl4Emz9kXwRYjrp6NW2o+Jm+rl+FYWs+U1?=
 =?us-ascii?Q?WLmaNVwQrlkLbiRflodOjsZcHyw4/k4ThPdwgafEY4Hg9ugKrWeheg12zEME?=
 =?us-ascii?Q?Juvqhb7EoAgaKWbTn8o77N+O12UHsPlV6DIDNGIuJ8DzgTKhBzHstWEa64KJ?=
 =?us-ascii?Q?JymalRHeI9GBBy+cuocAJpIWaRl3o4F9LSln8hsRE30haD0KaB3evacppkqN?=
 =?us-ascii?Q?Rya7uFlfrimW8aQctwimwDFZatjSS5uNSqJxPSZeOIRW6QyswD1L8nd9Zb5W?=
 =?us-ascii?Q?dGi0EqZWFwtB8JMNOtNEd1cW/+Fe8udED4JXDm04shj3xEY1IB2M+LI9UuBA?=
 =?us-ascii?Q?7BksPN91pimITS7QqAXNCeHUeJg6kkYaghqtGQgAyhp/pP9P?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Mjmz9JUvHvD71F3nL4h5fVu8ymIhvnXaNuYS8YucGD0I0Imm8K7b9jCcHApzz9Rw+MyGZI5uEPx8MDsevFOiVoA9OJ/GSp7964/2nM6txu+pipeNn5yyY+k3M0CvBTF8/A6eE56eSkrTRASPVDEaDQWhh5SDU34mtxmOIjA45pOWsCY0uwNaJ7POhVyXPSV31F2TNeprGQFwBC/o+vGvI4A24b9zUBNxVMwJ3B8AzbC6TZzRny3yEH4HmOeuebyWjSvfR55h85lJ2v7/53dAjYsWLRm3byAtES4t1fs9I/o1K4EBSbC0IRRATd0GItwgFlD5mW79ky923xi6M0ljmQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3dc9148-2c93-4e58-b170-08ded0e9cbf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:39:30.0637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oH2tYfOXTloUg3kgt0h13s8oGPFcFS8Az84/zgs/pi97cTN1040vSKc9zpDyeriJ5rgsHVApVM3kA0loJVtaww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9459
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C63C6B437C



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre
> Deak
> Sent: Wednesday, June 17, 2026 1:39 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 28/28] drm/i915/dp_link_caps: Pass link_caps to common
> rate helpers
>=20
> Pass the link_caps pointer to the common rate helpers in
> intel_dp_link_caps.c, as it holds the state with the relevant information=
.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++++++----
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 26 +++++++------------
> .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 ++---
> .../drm/i915/display/intel_dp_link_training.c |  5 ++--
>  .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
>  5 files changed, 25 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 07266f4e6835b..66346b74b2c04 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1551,14 +1551,15 @@ intel_dp_max_link_rate(struct intel_dp
> *intel_dp)
>  		return forced_params.rate;
>=20
>  	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
> -	len =3D intel_dp_common_len_rate_limit(intel_dp,
> max_link_limits.rate);
> +	len =3D intel_dp_common_len_rate_limit(link_caps,
> max_link_limits.rate);
>=20
> -	return intel_dp_common_rate(intel_dp, len - 1);
> +	return intel_dp_common_rate(link_caps, len - 1);
>  }
>=20
>  static int
>  intel_dp_min_link_rate(struct intel_dp *intel_dp)  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	struct intel_dp_link_config forced_params;
>=20
>  	intel_dp_link_caps_get_forced_params(intel_dp->link.caps,
> &forced_params); @@ -1566,7 +1567,7 @@ intel_dp_min_link_rate(struct
> intel_dp *intel_dp)
>  	if (forced_params.rate)
>  		return forced_params.rate;
>=20
> -	return intel_dp_common_rate(intel_dp, 0);
> +	return intel_dp_common_rate(link_caps, 0);
>  }
>=20
>  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate) @@ -1750,6
> +1751,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  				  const struct drm_connector_state
> *conn_state,
>  				  const struct link_config_limits *limits)  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	int bpp, i, lane_count, clock =3D intel_dp_mode_clock(pipe_config,
> conn_state);
>  	int link_rate, link_avail;
>=20
> @@ -1760,7 +1762,7 @@ intel_dp_compute_link_config_wide(struct intel_dp
> *intel_dp,
>  			intel_dp_output_format_link_bpp_x16(pipe_config-
> >output_format, bpp);
>=20
>  		for (i =3D 0; i <
> intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
> -			link_rate =3D intel_dp_common_rate(intel_dp, i);
> +			link_rate =3D intel_dp_common_rate(link_caps, i);
>  			if (link_rate < limits->min_rate ||
>  			    link_rate > limits->max_rate)
>  				continue;
> @@ -1984,12 +1986,13 @@ static int dsc_compute_link_config(struct
> intel_dp *intel_dp,
>  				   const struct link_config_limits *limits,
>  				   int dsc_bpp_x16)
>  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  	int link_rate, lane_count;
>  	int i;
>=20
>  	for (i =3D 0; i < intel_dp_link_caps_num_common_rates(intel_dp-
> >link.caps); i++) {
> -		link_rate =3D intel_dp_common_rate(intel_dp, i);
> +		link_rate =3D intel_dp_common_rate(link_caps, i);
>  		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
>  			continue;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index c5701f02fbf69..0917e7f51a26d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -60,19 +60,16 @@ struct intel_dp_link_caps {  };
>=20
>  /* Get length of common rates array potentially limited by max_rate. */ =
-int
> intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
> +int intel_dp_common_len_rate_limit(struct intel_dp_link_caps
> +*link_caps,
>  				   int max_rate)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -
>  	return intel_dp_rate_limit_len(link_caps->rates,
>  				       link_caps->num_rates, max_rate);  }
>=20
> -int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> +int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int
> +index)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_display *display =3D to_intel_display(link_caps->dp);
>=20
>  	if (drm_WARN_ON(display->drm,
>  			index < 0 || index >=3D link_caps->num_rates)) @@ -
> 89,11 +86,9 @@ int intel_dp_link_caps_common_rate_idx(struct
> intel_dp_link_caps *link_caps, int  }
>=20
>  /* Theoretical max between source and sink */ -int
> intel_dp_max_common_rate(struct intel_dp *intel_dp)
> +int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -
> -	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
> +	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
>  }
>=20
>  int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps
> *link_caps) @@ -129,17 +124,16 @@ static int forced_lane_count(struct
> intel_dp_link_caps *link_caps)
>=20
>  static int forced_link_rate(struct intel_dp_link_caps *link_caps)  {
> -	struct intel_dp *intel_dp =3D link_caps->dp;
>  	int len;
>=20
>  	if (!link_caps->forced_params.rate)
>  		return 0;
>=20
> -	len =3D intel_dp_common_len_rate_limit(intel_dp, link_caps-
> >forced_params.rate);
> +	len =3D intel_dp_common_len_rate_limit(link_caps,
> +link_caps->forced_params.rate);
>  	if (len =3D=3D 0)
> -		return intel_dp_common_rate(intel_dp, 0);
> +		return intel_dp_common_rate(link_caps, 0);
>=20
> -	return intel_dp_common_rate(intel_dp, len - 1);
> +	return intel_dp_common_rate(link_caps, len - 1);
>  }
>=20
>  void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps
> *link_caps, @@ -152,7 +146,7 @@ void
> intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps=
,
> static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps=
,
>  				     const struct intel_dp_link_config_entry *lc)
> {
> -	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
> +	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
>  }
>=20
>  static int intel_dp_link_config_lane_count(const struct
> intel_dp_link_config_entry *lc) @@ -169,7 +163,7 @@ static void
> set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,  stat=
ic
> void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps=
)  {
>  	struct intel_dp_link_config max_link_limits =3D {
> -		.rate =3D intel_dp_max_common_rate(link_caps->dp),
> +		.rate =3D intel_dp_max_common_rate(link_caps),
>  		.lane_count =3D
> intel_dp_link_caps_max_common_lane_count(link_caps),
>  	};
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index 9256f02fed11e..af9028e7cb987 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -11,11 +11,11 @@ struct intel_dp;
>  struct intel_dp_link_caps;
>  struct intel_dp_link_config;
>=20
> -int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
> +int intel_dp_common_len_rate_limit(struct intel_dp_link_caps
> +*link_caps,
>  				   int max_rate);
> -int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> +int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int
> +index);
>  int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps
> *link_caps, int rate); -int intel_dp_max_common_rate(struct intel_dp
> *intel_dp);
> +int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
>  int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps
> *link_caps);  int intel_dp_link_caps_max_common_lane_count(struct
> intel_dp_link_caps *link_caps);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 0d4a0bf1dac53..b521dd11b62a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1898,7 +1898,7 @@ static int reduce_link_rate(struct intel_dp *intel_=
dp,
> int current_rate)
>  	if (rate_index <=3D 0)
>  		return -1;
>=20
> -	new_rate =3D intel_dp_common_rate(intel_dp, rate_index - 1);
> +	new_rate =3D intel_dp_common_rate(link_caps, rate_index - 1);
>=20
>  	/* TODO: Make switching from UHBR to non-UHBR rates work. */
>  	if (drm_dp_is_uhbr_rate(current_rate) !=3D
> drm_dp_is_uhbr_rate(new_rate)) @@ -1925,6 +1925,7 @@ static bool
> reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
>  						  const struct intel_crtc_state
> *crtc_state,
>  						  int *new_link_rate, int
> *new_lane_count)  {
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	int link_rate;
>  	int lane_count;
>=20
> @@ -1932,7 +1933,7 @@ static bool
> reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
>  	link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
>  	if (link_rate < 0) {
>  		lane_count =3D reduce_lane_count(intel_dp, crtc_state-
> >lane_count);
> -		link_rate =3D intel_dp_max_common_rate(intel_dp);
> +		link_rate =3D intel_dp_max_common_rate(link_caps);
>  	}
>=20
>  	if (lane_count < 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 9d9d8d04742bc..76e9753766b9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -58,7 +58,7 @@ static int kbytes_to_mbits(int kbytes)  static int
> get_current_link_bw(struct intel_dp *intel_dp)  {
>  	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -	int rate =3D intel_dp_max_common_rate(intel_dp);
> +	int rate =3D intel_dp_max_common_rate(link_caps);
>  	int lane_count =3D
> intel_dp_link_caps_max_common_lane_count(link_caps);
>=20
>  	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
> --
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

> 2.49.1

