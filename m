Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFAGL7rk5WkupAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:32:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEE44282B6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5B610E455;
	Mon, 20 Apr 2026 08:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATR6fQFc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B41310E112;
 Mon, 20 Apr 2026 08:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776673972; x=1808209972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gY7ZzZmexEeQ6e1UL21bEL1Z3n1sAo4DFUYKKBkN2lg=;
 b=ATR6fQFcwjheWmJ+q4vFGUxOrJcBzXPhVhSesPIpF7UPFsJMcn7QMw3n
 bZ6DmMO4YNyDXBW58hBcGPjlvfqJMTyZeF05ZU1EyfXdsINX7w+0z4tYu
 y/G5BuF5O70NLVF5bTJtwttMwDjbuFzaSuBXc5xBnLAbCCKAAjNekE+No
 91nLG74EzoNwlt3K1XD3U+sA2iNTVCFpAqheDwMkjiTaVqS7a4i1PJ06l
 blS6uRXUa2n5Zt1hnvjG2mvwUn1Jzy0VJAMQ/jPiv9AWlAj+3OKeO6/HV
 yDckIeogABfdHmrqCYgulkXc6dtNUhEjE+a55pm5Z/nBQyFs4L6d1AGT/ A==;
X-CSE-ConnectionGUID: zoLnhgUXQLK5ACM51EhEqQ==
X-CSE-MsgGUID: DapfuuVUSvmKz24RxmDYYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="76611708"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="76611708"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:32:46 -0700
X-CSE-ConnectionGUID: sAhpQVTlQzWLlq7iK0+hbA==
X-CSE-MsgGUID: nr5cWyfqSX6CNP0a/1Zmew==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:32:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:32:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 01:32:45 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:32:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PWpCHCZW2a9CAIHe2tN3ubdyNnGb9+2wOX8RBKCHXukaUWT59bfPrlZg954VEgmzakpxcWRwnQdovOjhFnTYrY7a7+ekEe91h88S0pQv/YUufb1l2YhhMCWsjGWa2adnfwtVmtPocv8ebsolyjVyhFdRCePygIVO9h8CCPC9HD9DyLoqSkKtMbNFv9HTO7TeNCwGNhtgr/nh7y+QC+RSol2PaugiBwq1r9wZZdEUaVnMMlRW8xr8qa082P0CwTZSYzaZ4l1oGPyYUZVYF98xC3MkpM9BdF5nJXz/zgyghWJFcrK5KuSGfO/hcrdg4OAvoO4wuXHoSe5Qf7yz0YvEiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMU3q8s+eziVA8mUduyt/iTQkWmaaObcmcUpPgweSAA=;
 b=aqmf8vuPpYFlqieymRgIKiO28voMtXwcKx2bBVy/zz1Zzu0eGIqkBZhtHs1Lm6sRI/ekDaeHwrjtlgKg2lhjMifO2InN6qwRNgS3UbvZfGedwIra7oq1msBaZdCkLul7W/b/nMDHFF5Pe0yYzmkUIcxtobfVIjJgDTtmfAWPyfAdbqNXHGDQdoiL3zaPcAEoZfeiLs43yTez8moQG2cDsoQfYpu63b8Yt8zN3LePTYBzkNfyCihVmEv6c0UbfXckFoGOcqch5Y58rtFqga0U4pTRIyxV2RgKSKJMtym7o24YeDZuh4J4fFKXXYQ6l8GS0UGbe2DLQ1NyBl8C54sagA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5)
 by IA1PR11MB7726.namprd11.prod.outlook.com (2603:10b6:208:3f4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.12; Mon, 20 Apr
 2026 08:32:34 +0000
Received: from BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::e3c3:1a6a:aeec:f3ed]) by BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::e3c3:1a6a:aeec:f3ed%6]) with mapi id 15.20.9846.011; Mon, 20 Apr 2026
 08:32:34 +0000
From: "Kumar, Naveen1" <naveen1.kumar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 "xaver.hugl@kde.org" <xaver.hugl@kde.org>, "harry.wentland@amd.com"
 <harry.wentland@amd.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "louis.chauvet@bootlin.com" <louis.chauvet@bootlin.com>, "Yella, Ramya
 Krishna" <ramya.krishna.yella@intel.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v11 0/7] User readable error codes on atomic_ioctl failure
Thread-Topic: [PATCH v11 0/7] User readable error codes on atomic_ioctl failure
Thread-Index: AQHcwO2d20A/eYq2a0e6os8r0aiGTbXnu1OQ
Date: Mon, 20 Apr 2026 08:32:34 +0000
Message-ID: <BN9PR11MB529039EC705FBA4E5E65C64FA72F2@BN9PR11MB5290.namprd11.prod.outlook.com>
References: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
In-Reply-To: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5290:EE_|IA1PR11MB7726:EE_
x-ms-office365-filtering-correlation-id: 77bc7684-7aab-439b-f6b5-08de9eb75f02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|18002099003|22082099003|921020|38070700021|56012099003;
x-microsoft-antispam-message-info: oR7C7qZULD5pKTnlubP7w7ozjQ9yl1yoz7J87wlLSkuzri7OJKUuLuhYSjv5f5FWMHevZDCEjZAyPcISPIkmj9oKzK2wErsIGOW+rYzIjOXsh6mZhVISJPCXHhimmWqQE8NuSupDTN0C6wn6IV498jALjEQ/V50OwrTGRIVLZ3Ba8lfu+M9JmtJ86fs9Wau9Ps+W7v4fHAaU1ejOreewRVwol7Ph/tOMECk5PimAMW5i//Y4rWiBMUYNpTnzoNz3Q+vTVZN9QdKPPxrmGzE8IlUaUFsQVljaC3Ptp2ntoKeJvABtYJ2toBWeIdvAi20Jw/4zHbpB/ulw8JessmdJnzyPRZtw2+cgMswXUDAHxKN7H/RiRSm4YF2WIUfaDq0inq0eceZjn+CYcIRaymUCcxMpt6LkbGFIKueVklIySOvDR9BgX0vvQqeygjMECssVJjZgmDch+OemfmgMau234OCIevXLqWbER1g7/Hpl4ulNtxCkbfR+8NQWGHcmAyKzOsFi8zJTBAepgPcgbiKXmmLGnvLD5D0eVAWkrFHR01lPmzExxnyoGXe5BQnLmMofeSXPRT1O/M++Mjh8Tky8c28atclgNVqvWGb3UbUkCXK5SCahjFuAOnlJb4MIBvqCW2FSsMhvBh4xCBcH4UFOAV3gaNQkHVsm/7X3HKqM8K88DSeqpug17hYXKjnKB7CIsZKG9J5L1JB+8qkKPDliq/7/kGoFTj0Uee6FJRvkckWnLWJ24HQpr2pgLv1GDuakHAKpxScqsn47nzxoxAvyEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(18002099003)(22082099003)(921020)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OlbxqmdKXCBV1CsRsjhoX3qy5hWJ7ycxoKdO/CPQKWR5LpOhD0fQtGfiBv2d?=
 =?us-ascii?Q?nSkE7FaNkfUTItXT+VZA3qPoLlZtg1HOInGovie58k6LRmIU6bh+u+Weed7A?=
 =?us-ascii?Q?gmtv467BgEtfTzHIb8Kf0wpMxORuQ3UhCH+kPbuLzXLl5My3cZBUTWr4n1R3?=
 =?us-ascii?Q?9oN5v2So93dLawUl7iLD/9YB4aMFJWqkyJTtatmU5tOyOTjtHeVC/rzckHlQ?=
 =?us-ascii?Q?xeJxEKiIuJEc1bDWy+ZFKZGnEVIAjMA1nq8hhq4uPPPrVq3SO4TRQWZHKgAu?=
 =?us-ascii?Q?/73idM0rdSLREyBdI7no+TOl8XcSWCZcbhQumE4F+DHSyEI20vn6VB2thLoO?=
 =?us-ascii?Q?cvpBGnRyUdHSpwOYxVLPMbAroKiX1cWTG65tSYEwIumTT3I5PugYFj99yu78?=
 =?us-ascii?Q?ngg8ONceat05dNAU9v6SwV+brB/CcaloWFCbidC9uXaL1vBUKC9BaIDN3+9p?=
 =?us-ascii?Q?muo2aKZSUiTG8CoU88fqxulCPNTM6bqJs382kJd5IAYjFieczQlrWRWn4ZNv?=
 =?us-ascii?Q?4jQl9dGj9WsvnHG7g8UZSaB6jadzKyRWWmo/RqNA286sEGTxDqXIpXG5Udl5?=
 =?us-ascii?Q?MND8M7p3JfR7pvEoalHo66kwQaMn3ujskazP5lz66W8Pxf7Yo9ZGBSYa8Ouu?=
 =?us-ascii?Q?GBRu6QqSvSLs3YlWcuTXJN9rg8p1BPZmFzn904uxNGw81drmhqnf1xzCNyaW?=
 =?us-ascii?Q?UGcDAJcUEsTtpWukRtRB5jAWMoWSxBJ49OZj4gbFnTtp3HioQJ/gRZY+qRrb?=
 =?us-ascii?Q?FxqeN6JFoOiQEaxe4hNHDqbyIs5A2eiu43OlSqKV60YtbA/gtMJ/TIknm/Tt?=
 =?us-ascii?Q?xmxGDdc+TKesa2u8ExPbzwn2iNiQaIsE5loBLbkWMWxekv2EvzieuEB+z5a0?=
 =?us-ascii?Q?EnE0+qtaG9O5qxc66aCSAbSCuBiylFUHbqEX61F/RuB7sTD4C3xD8qj7qZin?=
 =?us-ascii?Q?ZA3N6VjCL+3Z4/ZML2vwqGiVC6Vh9/UMarxSLG2N2OyZQQTC8Mk4IXoXPmZp?=
 =?us-ascii?Q?AYefl4DrWODsDXYVsr+Pk6Rgsdndlc0FDxAZEtCnbr0c4HFGHHRELAa0+WhU?=
 =?us-ascii?Q?anbNXW3DlsQ8jFD9a2m+8gycqjhiFAToArJcI74aJ3/LO5KLUAFrKlvTVzV/?=
 =?us-ascii?Q?0ObieqH1gjJxkEWfgiJJPl/SZcR/ZhBoDHUFV03f0Lz94Q/It4tcXdgpWfjC?=
 =?us-ascii?Q?klCcfijU9ThsamLxH/l+cMU9gTs4E4XnitZFFYYp6Tlls5QhOcOiOgKAwkmB?=
 =?us-ascii?Q?itJjowTeSfg7JF097egpRf9CMU9ByX1t5u0ZgSxpFoCVXsDr84cBpjPlhqdh?=
 =?us-ascii?Q?g/i/seQ/6V2dgd9wfjQX7u7ee7gRQs5ExHV8s5z93E3GUgyns9QgVu+UIVw/?=
 =?us-ascii?Q?EMuooYOlyHGt8NEPLUo+q1FULi7GyHfCD+pcYYKACbp++DIHERIHk1Mzc7jq?=
 =?us-ascii?Q?CO+alPIFQrlZdNkKX30FPidJZgxAQdvVhN5lDZqe838Ls0ZqT3orgUQyzY6w?=
 =?us-ascii?Q?cT7DKLFc0JWZlA8GiiTp8M2uWGjdKtQT3E/dbha2zYbPQztqnSUhmll3VXur?=
 =?us-ascii?Q?xhFj7VuSYTo8H3vTnK0sGKGtQ7C8OnZ9poUxMtIBR/LqPhRyxudbTvCxn5QA?=
 =?us-ascii?Q?AATcUuWwrBoB9sO3Vu5oXfmybSm065lmwUYGrML0wDamLYligh2Azba0gINt?=
 =?us-ascii?Q?Z4leTT7xCgjO5yuvttWmuSqfXpIhIDYiPD0IVSKXlu3Y5eoO4r/kirYnAZR2?=
 =?us-ascii?Q?tsVRY7oGMg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: k0OjBaWC/V7AEktccOogrNZNoMrslYix/7R1nhGLtKsi6gm950S1FChdhWDSthWq4bhzKWEsWh82qpii5TrGrQAwGV97XWgKYWVwrouGYp6k9MlKvhld+VVU4URZF8YLeRbWpWlvgfHQX5dd6BUANDbzvYbBlLQfXZy1wIVDRO656XsSsv4cwY7PI50XOWKAjWfGLcU3XnPUC+fTENv1bo4u50dhWCWrHgtUrpzjw+rl6qzHRo5Is/5l605YckHp8OVAbjelObaRCQ1R6yvs3uSykaR/Tq3Nv0KKiE/mZjf2lPNQLEmzZuqASHM8aUwuWHIshuADSTLuCbf4jvo7MQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77bc7684-7aab-439b-f6b5-08de9eb75f02
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 08:32:34.3019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iVxn9i7iB/q89fLaK+vYqpMTKPcMvIq+LxksMTzCyEZYzhhauOvATdiwQ5Ywzfy+JSPweAu8X2hVyEKOaEj0GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7726
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,kde.org,amd.com,bootlin.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,ffwll.ch:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,kde.org:url,kde.org:email,suse.de:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[naveen1.kumar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6DEE44282B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

HI Arun,

We verified atomic commit failure detection via capability flag, error code=
/string retrieval, and fallback path execution in Mutter via MR https://git=
lab.gnome.org/GNOME/mutter/-/merge_requests/5022.

Tested-by: Naveen Kumar <naveen1.kumar@intel.com>

Thanks
Naveen Kumar

>-----Original Message-----
>From: Murthy, Arun R <arun.r.murthy@intel.com>
>Sent: Tuesday, March 31, 2026 2:34 PM
>To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>; Maxime Ripard
><mripard@kernel.org>; Thomas Zimmermann <tzimmermann@suse.de>;
>David Airlie <airlied@gmail.com>; Simona Vetter <simona@ffwll.ch>; Jani
>Nikula <jani.nikula@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
>Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Tvrtko Ursulin
><tursulin@ursulin.net>; xaver.hugl@kde.org; harry.wentland@amd.com;
>Shankar, Uma <uma.shankar@intel.com>; louis.chauvet@bootlin.com; Kumar,
>Naveen1 <naveen1.kumar@intel.com>; Yella, Ramya Krishna
><ramya.krishna.yella@intel.com>
>Cc: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; inte=
l-
>xe@lists.freedesktop.org; Murthy, Arun R <arun.r.murthy@intel.com>; Kandpa=
l,
>Suraj <suraj.kandpal@intel.com>
>Subject: [PATCH v11 0/7] User readable error codes on atomic_ioctl failure
>
>The series focuses on providing a user readable error value on a failure i=
n
>drm_atomic_ioctl(). Usually -EINVAL is returned in most of the error cases=
 and
>it is difficult for the user to decode the error and get to know the real =
cause for
>the error. If user gets to know the reason for the error then corrective
>measurements can be taken up.
>
>User will have to check for the capability
>DRM_CAP_ATOMIC_ERROR_REPORTING before using this feature so as to
>ensure that the driver supports failure reporting.
>
>TODO: driver specific error codes are to be added and will be done in the
>follow-up patches.
>
>TODO: Once the series is merged the element 'reserved' used for sending th=
e
>failure code in struct drm_mode_atomic is to changed to err_code.
>
>The IGT related changes are pushed for review @
>https://patchwork.freedesktop.org/series/153330/
>
>[RFC] changes for libdrm pushed for review @
>https://gitlab.freedesktop.org/mesa/libdrm/-/merge_requests/450
>
>[DRAFT] KWin changes are pushed for review @
>https://invent.kde.org/plasma/kwin/-/merge_requests/8991
>
>    To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>    To: suraj.kandpal@intel.com>
>    To: Maxime Ripard <mripard@kernel.org>
>    To: Thomas Zimmermann <tzimmermann@suse.de>
>    To: David Airlie <airlied@gmail.com>
>    To: Simona Vetter <simona@ffwll.ch>
>    To: Jani Nikula <jani.nikula@linux.intel.com>
>    To: Rodrigo Vivi <rodrigo.vivi@intel.com>
>    To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>    To: Tvrtko Ursulin <tursulin@ursulin.net>
>    To: xaver.hugl@kde.org
>    To: harry.wentland@amd.com
>    To: uma.shankar@intel.com
>    To: louis.chauvet@bootlin.com
>    To: naveen1.kumar@intel.com
>    To: ramya.krishna.yella@intel.com
>    Cc: dri-devel@lists.freedesktop.org
>    Cc: intel-gfx@lists.freedesktop.org
>    Cc: intel-xe@lists.freedesktop.org
>    Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>
>Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>---
>Changes in v9:
>- EDITME: describe what is new in this series revision.
>- EDITME: use bulletpoints and terse descriptions.
>- Link to v8: https://lore.kernel.org/r/20260129-atomic-v8-0-
>4cb7b0faa051@intel.com
>
>---
>Arun R Murthy (7):
>      drm: Define user readable error codes for atomic ioctl
>      drm/atomic: Add error_code element in atomic_state
>      drm/atomic: Call complete_signaling only if prepare_signaling is don=
e
>      drm/atomic: Allocate atomic_state at the beginning of atomic_ioctl
>      drm/atomic: Return user readable error in atomic_ioctl
>      drm/i915/display: Error codes for async flip failures
>      drm: Introduce DRM_CAP_ATOMIC_ERROR_REPORTING
>
> drivers/gpu/drm/drm_atomic.c                 | 31 ++++++++++
> drivers/gpu/drm/drm_atomic_uapi.c            | 89 ++++++++++++++++++++---=
---
>--
> drivers/gpu/drm/drm_ioctl.c                  |  3 +
> drivers/gpu/drm/i915/display/intel_display.c | 25 ++++----
> include/drm/drm_atomic.h                     | 10 ++++
> include/uapi/drm/drm.h                       |  7 +++
> include/uapi/drm/drm_mode.h                  | 56 +++++++++++++++++
> 7 files changed, 184 insertions(+), 37 deletions(-)
>---
>base-commit: 65b94118bc585aefc7095c0e9554c3bb12d98a69
>change-id: 20250728-atomic-c9713fd357e4
>
>Best regards,
>--
>Arun R Murthy <arun.r.murthy@intel.com>

