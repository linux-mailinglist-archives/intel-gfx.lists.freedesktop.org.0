Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAbSLQXhjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:29:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD481340BD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A04910E2E8;
	Fri, 13 Feb 2026 08:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="guitdYhn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625D310E2E8;
 Fri, 13 Feb 2026 08:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971394; x=1802507394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OptUpc4CwC/ydmjhRnuDu7zCXts43QfmTOLyR4eS4co=;
 b=guitdYhnpgBaddNYLh3xsRzmofdBWB+rK+5G3W8Y0YytM97gEN30kAkZ
 d0U23e/o2YANQ1o5FJCQv5jh9eh6eSpKrRwMgSg4pi28QwrhAOzFTiGRE
 dwcU0XvX2RgK0RTJwxweIhewU6Fw2stXsc8DH7i2taqWMXf42dlmyUoCH
 LnoKrEC8dN0JTOjAu7A9B5vqcXuGgHzR7w4MB0AlZNpdMe/yCwWEbROu8
 eUN3zRSCHUwUOytrT2i3o6bq0x28YC+q97EpRttS/mnNgJLQNMJbWu3yb
 KcOx8b2PTIwaoqtR1+x5rBDLnfLpnaocNtEA7miMz2qa6eH+OBidu+G2D g==;
X-CSE-ConnectionGUID: tY2WNjvUQJGEwoM7o+/DpQ==
X-CSE-MsgGUID: hI69RV7uSyGwGkBWBd4oIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="82788003"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="82788003"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:29:54 -0800
X-CSE-ConnectionGUID: S4zYqhKWTv6tIidaHDb0CQ==
X-CSE-MsgGUID: 9vJjFExPSsWeUh5yTyldLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217403313"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:29:54 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:29:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:29:53 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:29:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZL9vzKgrugEBP+XCGdiThBNYb74SFtBRSCTGNS3mibl5OpWM0qN1eP2LrygBVlll2n5wV9h4dCD4dPGnrnxAazdGVijbg7xSZO0Wl5vmzy8VQ77pX1r4VshrStM3Kmo3Rb3iD8dXd+kzNy7xqk3Ph4E6tOe+ukKdt8J31xgZ/1rcft4NtjAxWjSs78Y7rQo+tAyy/19I921F90ji4GrnFbtkUzq5BSohzR1jRh8dtbBWU5vtSDCyiT7CuJvEA3ae4ITCz9b3d4oej+gJYn5BNaY9EZeFEjVEI2Q7t1/v1A/EFSbl5Wc0yuZaQ/Hp1FtgTCtO9D4f1eycGp2fJ1Axww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LFuuyxv9YDHLBsnPsw2BmsjPZPbs9ox7Kl3hsO4pZxY=;
 b=SjF7/PQRxiA7pn1E6ra5pgwxq8FycSXknFAJdzeOGuEm93/N+UgCuky8l1kmLcCAVoXVzaTjukaiUzWnpslj4uc1mk7P1AJhut0YQj6xKc4kGJINGqt8ygB9aOefZDhaGJFEXobo38nzZPPBn4+XCZsmP9UG/oQwipcIWf2DH9J/nUEnEpH+iI6RbTpUdz1HyjPHQdGhsVBFbBWsNMqHFSvRng3v9TXAeQKR0AIKeb69/oTuYfWb/fXtGapgr3tqXfE1I3WKjK5jEY+uLA2Kvm4iZ9wa6LpEP8TvNgnL2tcZ4kotmf0k2EgNjVnFqLApEsbnRwEffHmiP6pdVamGHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPF183C9380E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::815) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:29:50 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:29:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/15] drm/i915/display: convert W/As in
 intel_display_device.c to new framework
Thread-Topic: [PATCH v2 07/15] drm/i915/display: convert W/As in
 intel_display_device.c to new framework
Thread-Index: AQHcnFLV0ex7qpGo+EaWgISsPnQpsLWATPtw
Date: Fri, 13 Feb 2026 08:29:50 +0000
Message-ID: <DM3PPF208195D8DEF46DA74234827913A44E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-8-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-8-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPF183C9380E:EE_
x-ms-office365-filtering-correlation-id: db9a17da-5d3d-48d8-a8cd-08de6ada0e11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?LeOIrWYYfJUOQjXebWl1y/3kkOoqRW9/IUIrVceWU7tig6rpBcZiFBi+m5Az?=
 =?us-ascii?Q?rI3LrrK9W5PGKbN38Px7e1T/zwNpii8gYWCv2hLJC1t4Sp9bMhqG5qq9vUND?=
 =?us-ascii?Q?U37eAjobm8r00vSTJ6fkBW/OwWTEncCtNu2+QUcmPTvicTytJR4qOO1mFZTZ?=
 =?us-ascii?Q?wdGogX71iyVgdQ1cn1ZWV1CZ3Fzf2V2/8KUE6G0U93lnEi7aUgzNUXXppI9k?=
 =?us-ascii?Q?DjCVLRW5NF6Xi76l2kc+H5IyzoqEYiIIESyO33sgzGuhYpCFrwNaSLxe9eUw?=
 =?us-ascii?Q?RTAG+tTimbR7QdMLfYg22WPTtHsZoxk7iN1siw30CjGGpbE9wBVUo4IqFnm1?=
 =?us-ascii?Q?PL8Ch/sgP+20X5uCH/JS0ITU1AenBA3FOma36BO5pN+rBm6yQbhYFhfNJUkf?=
 =?us-ascii?Q?dnhRWrgiuq0t/vCF3n/kUQCUXPEnHCboV+t2je3EnwhtuGNcSQwd9TL7HzzZ?=
 =?us-ascii?Q?JrM/0AGYQRCoaTr0sQtigV63AGylOOFu15KCCaQJ42WTwy00Ya7N0rPj7X7t?=
 =?us-ascii?Q?bwEWnUFxMf8FrnxTCrCDG2sY+ihGB6N9vHks3Zj3Q//Lz1HisgBRMHL8Q6nm?=
 =?us-ascii?Q?7PkkYXEAlHVIKr0bC47iKtCh+1eZaOnIuBBmNXPGGcTnxfLKKGddnk7GfnGg?=
 =?us-ascii?Q?2YEyY1A5U8zgXVVIoJjwzhv+JIsL7ZXVRnJaSAWV91toCyhikzfgdP+2T45V?=
 =?us-ascii?Q?Z81YsZLs643ga5du7dII+f4yhaJ0HU9/xantnIUkJAnGXJuQ4pduL6+l1rul?=
 =?us-ascii?Q?VVy27M45kYTzNB7EOjtMR/ZSD2hN24RH6xQ3Oe7INEcB6CT/QhL6IZSJ1or+?=
 =?us-ascii?Q?cRb1xKPxKD6FTwjbz1BPvASKbAkiv8CndPMyIZuaZ3JX4m27lYH1tykyLSz4?=
 =?us-ascii?Q?8iXJrMxTHWRbkAxhFWutrmpjFRWgzDH07hJ74/wtgn5EQERmYRXVDZqArlZW?=
 =?us-ascii?Q?Wmz097nCaQegP7FSe/tstvd6yaOmhEHj/1OsfofODPxTKHDaIVait0puQqhl?=
 =?us-ascii?Q?3ZnpjDSGczIie+pYpEVOV7eo6b/0qZUc6wp6Is5jr54lWPGAz33b7leX+Rew?=
 =?us-ascii?Q?xRGD2T6PRob5BLwnimubjoEqqksSCy4esXcGcZPCBknl5gH+U+rKx6Br/Nff?=
 =?us-ascii?Q?xh+8g9Nx1d1Gv8d+cvNKtcQO/CQBvNLaesPrVVSfjSQRJY90NSTbo5aNyMq0?=
 =?us-ascii?Q?Pr+p+as1kBw4c01rnilSkTMg08AmshWZ9Mv8OfFpcHlrWrRvkdRxDAh83uFn?=
 =?us-ascii?Q?Zpm0NyPAkpTesYQTlVvPGfHiaDdKwVxsYxswiDRTMQaFsc+Ffu3j7vWNTsv1?=
 =?us-ascii?Q?EuJIp49kzyIRuphCLFgqgYak9yBgachkf/2OrZjpOMAVX4vjwsEJkmlG52TP?=
 =?us-ascii?Q?9AdLVqxQoyhtwCJwG5Tdd5hqUgdB5HbN/zbRyVCcA7YcfDfvuoZM2lE2Ar4Q?=
 =?us-ascii?Q?1pufSeyGMIKdUDsM3EYwsVlQRVk+6XjeixtDp1++04kWQ2VzreU5iMvr1qJz?=
 =?us-ascii?Q?MXTJPK9CvLhJDEzD6yG0KfBrKYFjGshK3P5NUFzUzKhAI3RRj+u2I5Hw0Xnw?=
 =?us-ascii?Q?baqnFoX0vM5mo6Em1MIAyeNkTQji5D7GDH6fNGWWiUPqArcIshaVaqu3PXXG?=
 =?us-ascii?Q?6gSRR1/FblMjUgSRerX7kQI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TKsV9JxEpNSKMzxHHydNrQDqXsp25tQVZJ5QeX1A5y4xC1O1sV1ar7lpoXE9?=
 =?us-ascii?Q?2oq2A2zNPehYzGmulXBH87aqHPpbcwl1BbEknSB9QLemuY2v7V5xn9GLAB87?=
 =?us-ascii?Q?Li71SLkZ33NMUTBff2lNRH81owPT+5YoPMgqMZ7PDM+DpjPyt+FLedpIYq3Q?=
 =?us-ascii?Q?LSaPwDbLuf4b8yzWUx3+KXe/cb9tvtF1rHtzlbDEyML00hIlZ2x9O+/X+/eP?=
 =?us-ascii?Q?Rx0zjgg1GL0uAbqFINIDd/n1RWHPO2MyizLERe6DZhfbEUOfBXTLJDBsIrW/?=
 =?us-ascii?Q?SeIS+dT2d5pxTAW1brJvakrevjqU1e/bumqO28NwihZUEtBe3i2J9TNOFkZc?=
 =?us-ascii?Q?MFecGJPKv9Hd4lyNBYGYeYvWJIOEgaPJ6JoQ3f4sQt5+YuNhSvjMzKBQE8Hz?=
 =?us-ascii?Q?ybkbCerofqHGcyYwXkHfDUpCIbQsks4df3S4PT+f1Zmg96dROLZnPhm40qS1?=
 =?us-ascii?Q?4q3M+3DBE6WJa+bg5wquG1qqh/z6wIMIF2iR31G7WLErBOGzwh8SLyj+iYKM?=
 =?us-ascii?Q?w3VkbAaWGKb8veLrDm74qdrId3H3oPsacUd4EX45PC/M6wqBejL986JIzbj9?=
 =?us-ascii?Q?i1dEuxEB//qkHl4PkDojrqrBs2zngWNNnq6UuY+xYdLbWah5/Wa41RtbUyya?=
 =?us-ascii?Q?B+VY/1ANYKUCA4rhSB0KhWERD1+PeNKfXPSzf9J4YkGMZqVsG9Ysj1XZweBb?=
 =?us-ascii?Q?ZvGI79kb4gXtlbAtwKCeIT58bzHfGBkdLdyoiP4CFlJIVdMTE24iXSFCrqPf?=
 =?us-ascii?Q?P3b9NkqJ92s6DUPb+anCVU4pmdZsrrpM5Ysm1f/6IoMdLBSBVE2YzoJCNoeI?=
 =?us-ascii?Q?hzpHXUz9tvaSMBbEuVINQr8RJ3j1l27aG50g0IdYg9X9+ujKShWLnWVaXZnl?=
 =?us-ascii?Q?SK85u8S/u19F2FnnegJ7RWoO4Pj166RUBuWEYVeasUMlpII+I/vWz5moIACt?=
 =?us-ascii?Q?/TtlNw4LND8hf3zRWpBnPHqvCb+ojgCvk5SiAiTR3qEJJ/uFvX0pxO7jfZCF?=
 =?us-ascii?Q?/dQs25+/oAfwIBFZZiiPXzUsRyD2VBTrN5L8GhiLoh368QMAKTQ99eYv+j5F?=
 =?us-ascii?Q?mRk1iD66yJILrsNJJcjYjUWfnZR+2hcdENriZtHsbxhdMjMFUkMzqFGFk/sQ?=
 =?us-ascii?Q?FJQdVAQG8456F9UdI89ajXzH3zoWBSuUeUkxLDKxGJDE6mmhiLr1Be+zfhXw?=
 =?us-ascii?Q?Tj2UeAaI1HfffdMLWWzNMCZfoH0/gSFzPdZlLxRLqeRK6ZGs0cUx2bdcYnEp?=
 =?us-ascii?Q?k6MgAnmaCPc4U4syXyMVHa98YdjUhU7TidbRgT7b1R6f5ta73XKzhZaB6AL1?=
 =?us-ascii?Q?e112rADQVPgCHVrdVvq+T6z/tieJirwhgOw+e4RFjdBXBvJy5/6QwsIkct9N?=
 =?us-ascii?Q?2+4mkSlBJRgVbRRxVLf6Sje/QNMb/5X6SyNcvE+IEBwF7VR9EpzR1uZoi90h?=
 =?us-ascii?Q?Wc79YHF5fwVYSGcd0w7tZuoK9wZ2hvrVzGIfhk2YJNq50+hOqiIsLeewnPry?=
 =?us-ascii?Q?B9VJiK4EU19Jr7/5OJDz5vgdOMlB0RnBIDVkR0LWVqHmTmWwBAm8gT6VagVU?=
 =?us-ascii?Q?73N8xv90gWsvvOPpurXckkAcPEoVA+XlxZP4qLXBrd6RpUXgmZjACfeoN9+4?=
 =?us-ascii?Q?VYwRxb7tjJLD9n4Hs6EXFNXaFuvl1AmMLUfGeDHKCblbuw66G0B4AFw9ijQl?=
 =?us-ascii?Q?qNI5GhbEcI/38dLnsjoyqJ/XjIDa0bpJZ8e++RlRigVmJLmdvQpInEUdQ290?=
 =?us-ascii?Q?2GYWYV6uiA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db9a17da-5d3d-48d8-a8cd-08de6ada0e11
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:29:50.4449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n1ZwPeX+/yr1kJRIOhBrWdjpt6ZnuqAVoC9Cmt9nGsnUIroJaEedjHIonv5/XO63BkfdkRi1aQKkQn5mXWiwmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF183C9380E
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1DD481340BD
X-Rspamd-Action: no action

> Subject: [PATCH v2 07/15] drm/i915/display: convert W/As in
> intel_display_device.c to new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

*intel_display_wa.c
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display_wa.c     | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_wa.h     | 1 +
>  3 files changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index e79913a858b3..e88ae1884213 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -19,6 +19,7 @@
>  #include "intel_display_reg_defs.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_fbc.h"
>  #include "intel_step.h"
>=20
> @@ -1773,7 +1774,7 @@ static void
> __intel_display_device_info_runtime_init(struct intel_display *displ
>  		display_runtime->port_mask |=3D BIT(PORT_F);
>=20
>  	/* Wa_14011765242: adl-s A0,A1 */
> -	if (display->platform.alderlake_s && IS_DISPLAY_STEP(display,
> STEP_A0, STEP_A2))
> +	if (intel_display_wa(display, 14011765242))
>  		for_each_pipe(display, pipe)
>  			display_runtime->num_scalers[pipe] =3D 0;
>  	else if (DISPLAY_VER(display) >=3D 11) { diff --git
> a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 744ca7828f06..b45212708110 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -91,6 +91,9 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  		return DISPLAY_VER(display) =3D=3D 13;
>  	case INTEL_DISPLAY_WA_14011508470:
>  		return (IS_DISPLAY_VERx100(display, 1200, 1300));
> +	case INTEL_DISPLAY_WA_14011765242:
> +		return display->platform.alderlake_s &&
> +			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
>  	case INTEL_DISPLAY_WA_14020863754:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 2000 ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 4fab1b27087a..923cb917e727 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -35,6 +35,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_14011503030,
>  	INTEL_DISPLAY_WA_14011503117,
>  	INTEL_DISPLAY_WA_14011508470,
> +	INTEL_DISPLAY_WA_14011765242,
>  	INTEL_DISPLAY_WA_14020863754,
>  	INTEL_DISPLAY_WA_14025769978,
>  	INTEL_DISPLAY_WA_15013987218,
> --
> 2.51.0

