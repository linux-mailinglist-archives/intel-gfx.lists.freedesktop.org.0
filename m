Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eDUjEYJROmr+5wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:27:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974AC6B5CBA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:27:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EdpOPvwg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FEB10EA3C;
	Tue, 23 Jun 2026 09:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164C010EA38;
 Tue, 23 Jun 2026 09:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782206847; x=1813742847;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mvWjjhOJhFF4ESPipnphetBhecQQNsG7Gd2gij4qcds=;
 b=EdpOPvwgnS1FHBKZqbL1haympcyHBT7Kue6NIgnxEOgupWe18jb07kKh
 Z+rf4X9IMjSLHiqztg1oUJ/kNOA1CSK6CGIqIsTaiycHqyq9Bsgi0sfDy
 VRXLO91B4wJi9sUT5ngtdEWqvbeaRjjmVv4ylTIaT+Xo+EOJJsVR1nS4s
 W/8eRuAoK1XywGrM+gce8RbTAKIyad0/ktaxwpmCugNmT7j7noB8b3rjC
 kAQuY/Aqcj4c/YcHfUtThoGDK6vUBmtXQNTov/vEIDJQzMf3XZQFMvBNh
 gb4On/bTKX34Gf+FPa7nAdVF3A21jPKFBGhmMcFnRa0WUpiSRvJw2LGD/ g==;
X-CSE-ConnectionGUID: wR336jUvR6KLt8vqOKB0ig==
X-CSE-MsgGUID: 5i4cdUZqTDGKVFGVpXcDiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82714434"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82714434"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:27:26 -0700
X-CSE-ConnectionGUID: ppfDooNoTF+P/yeeOZGibQ==
X-CSE-MsgGUID: lKEV1t8UQ1KWwxzNlPlg8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249329237"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:27:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:27:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 02:27:25 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 02:27:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fvGj07ZhGBLnS88fSZ51iqN5nYqs8GccNxJFuH8dLz8X9C/kNQXAmdq4MnfAYxnsgmyi2LnrLbAunlhzT7R0YWfaSeX8OTwCEEXHwSrUXIHnMUyvahsnM7EsG4c8lPZ+M2nPZq9074tt4HnQcnI5i08xuz0+T4pBoO9Iz8QoKAw9hyjCVmWww7q1fKLQnxtvvnBd231xYs/nkyV7dnvFh1aBfbnMuSb5E11JmANSlDLsUc9ZJdvCwlQn3yRgrtn04nR9M1RP5t7K+6l6aQt2+FdjGan9CGufh5vNnpsgg0PlnAwxZQQ1YjQhk4/+fh9xsykxz61V9NM/noIYjhUI8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6v2DWHwQ5Cln3zWq8xL39SQmm+z3A0BdCmL8aB/ffuY=;
 b=he4VgL6KGGh6pJ/ic9SY8rB37CPS3m4xSPQXgFJQGdCZwpZUzSS1/DzWnGFMM38rlBuW0wLI8eM+W6z7zuc4cgcIxE8Pjd5Wo7W3TbZCr/RIPQNOrsbQ9XVf9XIfxBatEXVWLobC+ULp7KALSje4pCKn4ZZc8v9UpzeMp2M8bZ7SNnT1YaekSACR1guHuZEK5JKqfhg0o17RGowmv/QKnMxmRY3yOL8omz63PQfJ5ViP5LlMqH2MqaE0eMJ5JuLwt6lxTw9OLs6esDlv+vrb/aePUXy1Dejb2vpxLD2EL10G6/oTJ6bNZY9+Gd7iPKmmeClm3dpvlMrumZDeX0eWoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA0PR11MB4590.namprd11.prod.outlook.com (2603:10b6:806:96::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 23 Jun
 2026 09:27:23 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 09:27:23 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 0/4]  DSC max delta bpp support
Thread-Topic: [PATCH 0/4]  DSC max delta bpp support
Thread-Index: AQHc/+C7V6A2VdhMd0OlBcaF89PLy7ZLmmJQgABHU4CAAAMbUA==
Date: Tue, 23 Jun 2026 09:27:23 +0000
Message-ID: <IA1PR11MB64671DF04A69712925005B74E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260619113905.1413453-1-nemesa.garg@intel.com>
 <IA1PR11MB64672A1C0531552103C35F0AE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
 <b96480cf8db4912e1ad8b8d3192e8ca9204fefaa@intel.com>
In-Reply-To: <b96480cf8db4912e1ad8b8d3192e8ca9204fefaa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA0PR11MB4590:EE_
x-ms-office365-filtering-correlation-id: 9d0a4b00-26c7-4b36-a366-08ded109a1f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|38070700021|6133799003|22082099003|18002099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: tHk649IgYhHEetboEyxG7WKd0tZrg9m3fBP8pVP1Z+9DRyyfcw390waSphswjkw94lDp2UoM4TzIeScrKUjo8AR4ZMCPxligvvdfDCYVfEmyREOwNyn/PTTUh6X4IULhObMvPK1Uqar1r2A3m9eyFXcPKGjLpKTzirt2Wa5oYR/SQiChy16+TIwmMK0ykdNgdLr1H5uQ2z7J4rSLG6kJ/OTVIlP1bArxnklRfFD9+/WRVZUHVjLAaqpojddBhDJTilBtBg0xTKQGzKf3AqRcTnFlQaCrMaQSrH+sktlu7LchqFi6Z53SvO8Kf+wSbUd2yS+D743La2dAgbOzzMVRSZM9t0KoD0mv+hRxKSaWq4CYzIEsNBJ60PPOwK6GuEEQiR1t4AUKiyyjPKPJ0BhmSGXcgR08QyCAFMt6Idji9aAc6JFiUdc159S5erGTeT9p3L/UCH4ZsMYPf6pyFwuZf2nuSgH6GAnVja1CHK0RKhpYh4z6bi7k6airGAVYLIOBvcWH1cYM3qtmvAcU++SrNRnzTuRF+PXmKOBdgiXXb0BhKJXWuyJVJdzJy3l1LTnOkrquOEVWpKtNDbdQWdTu4cI+Zri56uCvOf5nNS/dD1D2V7U4lB7KR68oleiLFahuy4dcn0pTUfJvkQ8qpsalCGjtbF8Vj80P4jxHP+E6Oi+qY8cp/ySrekhAHbJrUnv//ThO6p63lJhAIrVV1BOUxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(38070700021)(6133799003)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8lHWurxGtA6xyexekWsO1Y2aiqmqH7aTu89WLzL78p278wjm0Lyu4ya3GetQ?=
 =?us-ascii?Q?GaGPiwRLgDovasbxWTpUyY3tJfcOwm2WkVPSpZ+NLIvIv2LDij8RxS0y2hpD?=
 =?us-ascii?Q?roNdsVfyM/zxr/jOI1PMgyKYOW94adZl8i0YYrHTFWHkj4p+nmotLupYJFrp?=
 =?us-ascii?Q?1XxXeh45rVoB3D+77IGkolzW9GJDDJWpHURTS5aUqnUKkqywuDQNbeXr3bxx?=
 =?us-ascii?Q?9l/OoLbP4vhbMKjaORGimL8GeqnEgnJYrmPsEjJaKgRug8woN0lCvY3dl3Yk?=
 =?us-ascii?Q?kycadMYOmBrrjTKzEfRN01I9msNMaIo0m7LncoJllp9jaoNNQPwojXEOHijK?=
 =?us-ascii?Q?ouESFu5Mmg89ntVRaHfFVD7Aq98Iekjr5CWx9srMqTaQvKPLpJMTb/lrFkOC?=
 =?us-ascii?Q?TjkYH5TFYYBjwscEG6AHAOGwAir2Ku3aMTCy27nNHowd10OxHUgej/53UGmb?=
 =?us-ascii?Q?TfXTUHh64THdeiBIpgE065lwLG0DVT8gMLZYEKsEAnB5Q7mj6fBZrv60gL1F?=
 =?us-ascii?Q?Ry1tIHkk8mhqZfXRwUlFVW4/xijU8st1MveAWC6tuevJjrVYsRufHah34iM6?=
 =?us-ascii?Q?I6ZQKkLlpnmdvIQ7w+wOqaJGuASPuH7/Jn1+Uh3mV76tp1m84eEMcu6JC+/Z?=
 =?us-ascii?Q?gIiMzCVxgorCwKxaWHNlGYhbpXwZ9VKT6DyeNEQmNw5AFt6LIJvdNYpe0u3x?=
 =?us-ascii?Q?XkbdN9Cjt4FxlbeIm/yN2/yOVXRy/NSB2fHtlvPWwHNE/M2oPxepi5Iu/ET9?=
 =?us-ascii?Q?pbp5dcQyYNx3SuxCFuqUU3tMednjhR8sZFLcQCuFNPxrky3WUXCgmH4blZXD?=
 =?us-ascii?Q?4iES0IiSRPWqsbBNwtIKKJlGnT6TimrMBhxxh26wgVM/7nkMldQkdM9wVM0C?=
 =?us-ascii?Q?O6Q9vXmc69k4e2upMNtWvNpXj2ayv2LKKXbv2IUX41krZ5TAiUCRZJ7Fz9bT?=
 =?us-ascii?Q?E4ar54TTCkJl7KqPO8/pxR5UqmMcFfyREsbvyQ0VQec9drs61puomMRHAUgx?=
 =?us-ascii?Q?0Jhx4E6GOhmhdNgPTCJ21C2xkISVMkR8t6dyg2wcqOx/t0WokXiRi6vqzK6z?=
 =?us-ascii?Q?fdlPgwEuyPlbHc9CfcegKu6YO4rpkRKvDK9hiLLP4aD+nFC++cIFl5JWdBiY?=
 =?us-ascii?Q?4sabFjvma8+TPryegO1B0rBLgFsTc54rBujzenM5SV5dSUmXbA9fNKqTfLxT?=
 =?us-ascii?Q?1DI5N1EP/G6rQEqK+taXOJGcQOA+FbwcCYalFpPRbvc/KbuwBuzrwxNIx5Vq?=
 =?us-ascii?Q?OMeuEyTcJh8Hq+Z7SwPe0kPdoL/+ZNZ1nF3Cx1mbMqDcmH0upf8hbHbRoLRc?=
 =?us-ascii?Q?7dF9gKdg65kwbgek/i2ZLfjy168hq6nLJoqM+y2RflNNJ5dCEH+g3Wwd87lQ?=
 =?us-ascii?Q?sArb5lj5qylV+/W0iZGgDyU3QdHpvd5K8EfsfQHwvuNh2YpaoJvEVYuRMjbm?=
 =?us-ascii?Q?JshB0dkEGOIMX/l2EiazZvKvDT+bmv+F7azOHytKeNN5pvCItV4h6T6L0ayP?=
 =?us-ascii?Q?B3p5Jf3TY7+8FhwWfv9nfqHBWLyKK05PTXMbzYPq0eHefoqdKFVlWC9Ym8rx?=
 =?us-ascii?Q?jqCi1BX3QuE1Hd/W9EhNL8Aog+I+oTwTr8KDwiuzwCBK+mPLy9c5dmLdh2zr?=
 =?us-ascii?Q?Vcq1+Vym0xef9wmfdXMNfxghpNfysbPWkwrzPl+de1UeCV9TDFDNB0FPcZH+?=
 =?us-ascii?Q?riyBQVZOILC7IE7dmKwOAePcwjneUgxGyzHhibiDm3ig9iksnn5tQTgLJ1Yj?=
 =?us-ascii?Q?50cSEjp8Eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LFhM80OyhgVQhv2U3atfD77oTKBz9kiK/W6Z86LPaWtP8VDQz8QFwUo4cCxzF+FypizjXLqn6ZDyB+XgYq3TTE5vDSjcYOudidrfe5g/D/wJpacCoZ610UZ+DfFq4QtEbcg9VOgkimMYdinrgO49Tq6Df1H9zVkTCQcYoOS/8k9IraFxhtBqLTslPR00HgRlvi22BiBWT1lAI0CgeqlgtgVIIl0b5qPNFBn+YLv0je9f1J8YBK8ogQkgkvPMa+3pfBfcprKuD3mqZRrwkvoNcIGbZxB+aL/T2Z+kHs3MStvri5OxIYg0A9hQVH31xBEmhfJ9jpO2rvWQ7ZTRV4T8Og==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d0a4b00-26c7-4b36-a366-08ded109a1f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 09:27:23.5088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /tgjbepysgMoAsAOZu69OK0X2tjklkUf3SK541v+NLKZ0pPTXEztjKFtVppDs33FHcgh8xRNF8yVPyYdYe123A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4590
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 974AC6B5CBA



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, June 23, 2026 2:45 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH 0/4] DSC max delta bpp support
>=20
> On Tue, 23 Jun 2026, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
> >> -----Original Message-----
> >> From: Garg, Nemesa <nemesa.garg@intel.com>
> >> Sent: Friday, June 19, 2026 5:09 PM
> >> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> >> Subject: [PATCH 0/4] DSC max delta bpp support
> >>
> >>     Some sinks exposes DSC max bpp through delta based DPCD fields.
> >> To support those sinks, add DP DPCD field field and logic to decode
> >> the delta value in bppx16 format.
> >>
> > Hi Jani Nikula,
> >
> > Can you please give ack for this series so as to merge via drm-misc.
>=20
> Ack... but you didn't send the series to dri-devel.
>=20
I missed to send for v4. Will resend the series again.

> >
> > Thanks and Regards,
> > Nemesa
> >
> >> Nemesa Garg (4):
> >>   drm/dp: Add DP_DSC_MAX_BPP_DELTA register
> >>   drm/dp: Rename YCbCr420 bpp delta mask to native
> >>   drm/dp: Add max bpp delta computation constants
> >>   drm/i915/dp: Decode dsc max delta bpp from sink dpcd
> >>
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++-
> -
> >>  include/drm/display/drm_dp.h            | 13 ++++++--
> >>  2 files changed, 52 insertions(+), 4 deletions(-)
> >>
> >> --
> >> 2.25.1
> >
>=20
> --
> Jani Nikula, Intel
