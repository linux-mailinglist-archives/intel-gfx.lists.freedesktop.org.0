Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M1BfNX1xMmow0AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:05:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B476983E5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:05:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YgopQgHK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCD710EF23;
	Wed, 17 Jun 2026 10:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479BC10EF0B;
 Wed, 17 Jun 2026 10:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781690747; x=1813226747;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=MBZ/0RRLFE6v/rttOBj9Wcrs0SjZIBJbSBFfhfXwPxI=;
 b=YgopQgHKumTw4RpwAyPzkhPF2HLLvRfUhkJFHUW7DFM45nf1MDfwax1t
 t42b0vOcdF8wQblNKMTbsKKOsCkfqvin61hUOxjfyI03pZE6gVuLkyTZJ
 GlODV5RzLBS59yY06azXVYPoxPAsDVLGBIBsinJTtgcyCpK4lcKEDUD8D
 bs+fNsHsfjXBggldhtCxHrdQiJ0igKXk0DrmL29zVVTxAlRXgpIBgVlRK
 pTRGaHWjuE/EMksNY0MVzh9J+xddSlF7MHCBihQS66w8znTxO3MmVSZDC
 x+ZwnQ+oHtJ3g6FT+o3tkVq1fcuyIIwa+ZEAlsq5uhKS2qbCpdpv2RYW+ A==;
X-CSE-ConnectionGUID: tptX1+ovT5a6YNfdpN/uFw==
X-CSE-MsgGUID: hw7HqpptRXKSZI9O62TLFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93592290"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93592290"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:05:46 -0700
X-CSE-ConnectionGUID: 90/caF6PTUC2akugNLNnJA==
X-CSE-MsgGUID: 5flooBMdT2CV9Jsto2eM+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="286141074"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:05:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:05:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 03:05:45 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:05:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QQcSFEU2g+uyN0qgktF8YLMmCjRho6MVS/w7iJr+NW6V/TTcGkqUcmB8+lovQYobQXUiw0vxMrHXCouN8bZ8ttJor+nHirVFFvgyPTbX0BoRan2Nh2fgv1VZYJxqvytxM+vA3QDkwaJ+z9pgdfSQiwAZAHFxj8XPHgSzfgcFBzGHtUNUp2gABnoFoChD9iLsStSc0iC9gRdlk4GaGX5hNhcz164HF82cDf9GgYqFeIzaQ+v7mswWujKFveSRVAAuhdwPfhs/eaEAMTOEn3eoZjrLDGVM0TetGIuBSrOCw9hjNuG+o1wk5I2ROQuxLNIG6dcA8K6zEPhRRzs9R4avyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ht6S3zhIq8FEkRT8zqwOW8wcPKJDGZ/2rrj/XPBmCbQ=;
 b=RXZhlVKKYU/ZMSVfxe74wS+P6O9VqNx+VJVgmrHK64xhJOIu4YxRt+iqOiaslQUkbKp4hphzXozBNOPc998BoD5iNnct650YG3nZmDOCK9mXHDYYOyp+Q2dGB5ddjTGMzLllSf53nYY1hkqCkJmqkpLtau2fasXiR8utgaGPfKaZLxZW8JQDNI4v87zwrUaVANmo3TyRpnA+9yYKsOIde8oy17RFe5Fi6knE5h9v4/Vk1J4GCw6etqDyJGNd3ydbRONRT8JRbXWPPMub4kEKbHy8SxH6o1Pv5PgsuQFk+IRTyJwGr2hkujgDis4pwzDPYn29Cazc0T/SnEDeqmMCEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by PH3PPF1618AF7BB.namprd11.prod.outlook.com (2603:10b6:518:1::d0a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 17 Jun
 2026 10:05:40 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 10:05:39 +0000
Date: Wed, 17 Jun 2026 06:05:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-intel-next-fixes
Message-ID: <ajJxbrt3a_USBecY@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0262.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::27) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|PH3PPF1618AF7BB:EE_
X-MS-Office365-Filtering-Correlation-Id: 2dbccffc-ea4d-4eaf-fe9a-08decc57fba3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|23010399003|1800799024|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 5WQJffnvwTpuJvd7V88eZ9pFixCVD13ulneHlwFAi2PAPmEn3aPOS6ZlyFohg6rc45WhZvsOOOwF3L6jD0XTj2C4qDMV5u2/836a7DpTKoP+wZJVMMxzgjTLLNx2Zc98gzSc2TFHrED4rk1UzenrpsHpP7KCQfWkujNOdqKKYJhT6FUdCpIoCuy/D+McKz0Ydw7SP0IKgco0IHqQuIXXem4agK6hWY1PKBGE9k8qGdiOwcMbuhHobaKS1thfaLbVPBTkUkia6vJbdj12mSPgDoN9xrUqi+HVjamv8C73sjQ3jqoB560Knevoq3uxU/2qSXMDHvJsok1BJBTB9xCf2jNkF02ElVrBpGWDVetStZnnwCAEG1F7CeOqBkeD8dRs28AQOKoVTCHCUpI/83VXRzUWwtmT9q3RhWjS6hu9rD2Mu/PUz7OIGR5/V/2wNrJ56GYjEM7K3s1Z77rWuYJejGYeOtQmJ0/JZcrIvoj8xivrzLuItZNvo+79xagr2pzE2+YXPEO1mLGvflJyPD9D55NHaB/d4cMF50aOBarudyhNqLhZwO8H9pZNnz17C4TiKFR8ELDilTP2vkbH0y0Dtx70fK2WEOx2pdUJr1xaGIQv81g75gv64QznRwsq5ImP42nuYIXt1zhdZw6sVctimA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(23010399003)(1800799024)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?3MmeGQ4vOIOp7M5o6Hxs4OSO2PDvM7SeRyBtHVzHOkpg13AOTBxTj9LrqR?=
 =?iso-8859-1?Q?YGuKt0f5zeB4upmGeJNiZ2giXtBTtvLAuUDQC6/DqqeEkeW1bPkpjjZ95s?=
 =?iso-8859-1?Q?sIHInY3jkkBtiT5Y9rON+xagw83uRHjxIyxfccsuzcvVNEmuxTqMCw3oDv?=
 =?iso-8859-1?Q?7Ij6qV9TS+wpUaKUzQnLdROrCilUqhW2rVS2+MblJNtGVVVyVqTPQ3C+0/?=
 =?iso-8859-1?Q?ThevA9wb0FCx0jNFDqidXrWs8pL/ETmmI2VwmS0/vBEqURyJ/n9V2wc+rx?=
 =?iso-8859-1?Q?KEYHuoyHziuJZfm6SsHrEtz8Pym3QafZd4+6JspLJWqEhIjOpD17t1Yu9x?=
 =?iso-8859-1?Q?iT+trZvNdy7MNZ2D8gH5GGTl7wgZXskjTs8UXomHIddINN0VEEoebCgp/l?=
 =?iso-8859-1?Q?C6LEHI2vSf7gPSEjLqIH7GdDj5CqHXVf1NAWicshx5OY2Ju8xdOsKbG1eb?=
 =?iso-8859-1?Q?tDu+Jb5519XT4ZIvX+Av62+S11AZ1bxieiNuf41wJc00tS15WRnuGOgAOO?=
 =?iso-8859-1?Q?lj/GBFc4Sr1I2wa+kJlza2kIJDffW4v0keCctBIeLU37sU7JYHUiZn6XAb?=
 =?iso-8859-1?Q?u8JBOrFgn4nrenmU2VDfY3b858MjsPQM9ciJnuInN64E5q3+u+Rg62txGl?=
 =?iso-8859-1?Q?ypHIt1IBfz/XQV0g/4OjPwGnBE+uX2IMIJnNO5xYfhnwdXHdt64iPqr62Q?=
 =?iso-8859-1?Q?wZOuuObjRJ1hpswhkiN1zML35gDtG1594L2s3Lq+LXkqBcu1YLWVRKWOT0?=
 =?iso-8859-1?Q?SI+39jzYqGq11F3PhbNMWdVrEfUpA4Z6I7p2RxWJ8wkDzWoEMLonNr1juN?=
 =?iso-8859-1?Q?kQ+VfDCH55F8juq7DXuD0V4O2ZqDCAw0uINY2qQPcuvDHkenrQnnqRs3jk?=
 =?iso-8859-1?Q?uDEXDt8OrIuQzWkKAJynqgYT6Nzmmch7TwReVg4bMAhvFowhymUWZpn/yb?=
 =?iso-8859-1?Q?hVKH8L3sOIHQUJZIzXF+Xip+vJ4o5+vS/kX45Ajw1xmld/cBeXAIA5HY82?=
 =?iso-8859-1?Q?2Q2W9zmfNb/3F5ZUD3ajizT260LNcThH1xFbpXCueF6EosTn4KVik4oUcI?=
 =?iso-8859-1?Q?OEIeodx2M1WN8ix1MQJUou3wW8VIilUlVHopB1G4c/DdiY55Em6x4q/5gL?=
 =?iso-8859-1?Q?y/Fz2YtM+2m6WstZqAMBDDhSB0cVh5IWu94PlgVb49y3xsll/qg8f4Tfcz?=
 =?iso-8859-1?Q?JZkZqnPq8KJxIc9AxWqVVsuvMhq6ntxKi0nK+s7mXauJPw3er/fQBp+7Bj?=
 =?iso-8859-1?Q?VrO+Ke0bhyg61yyxB2GdEmLD3bjCqz3KR1mImRxdLXSf5MgQ4SUmDaAfiD?=
 =?iso-8859-1?Q?WhgPLwvsYrfEwyw4aDFpwcQY7P3YATF1iqdq0KpkIA5TG186BDNNk1VSU4?=
 =?iso-8859-1?Q?cCmyXbIcOFHm7cKjHlDPt/qsyXeI3VHhooB7ll+wF4dvWN1VVeBGDbl+rV?=
 =?iso-8859-1?Q?1bKRMt3xgkcsKDNQBfEjIr44QyDF0+SECS4va7sW2+PLffTTDJJy58K9gU?=
 =?iso-8859-1?Q?X0Bw6DxX/PNKaevBG/+pZfPRZ/LDLI97obKsVBZWObCokM3e9WyobPudFz?=
 =?iso-8859-1?Q?Zp7FcdUfQQe0UgoCRB4/jP0j5rhoMrDBXAt/KYNw/gl6lt1jicD4eJwsIR?=
 =?iso-8859-1?Q?ben9xb4fR1HdyM9hcCvMXYGhIAWjFkERK5zMVA4TondW1yge2w4PCV5YL1?=
 =?iso-8859-1?Q?b60+ahi61VnPRtpuhsCDBchfmHADjB9pM0fGIyGCPk3WbKcKs6SeyQGV96?=
 =?iso-8859-1?Q?EiUOjzJkeSCJmGuYf1QaA6m76uCofelhNu5szQUDrlwxzugmPH3dIFn4xK?=
 =?iso-8859-1?Q?T5KkKREHbA=3D=3D?=
X-Exchange-RoutingPolicyChecked: r/+5+spH4QFOb31ILgjjFTql5fyzRJWO8qqqkQLSwUX8A0qx8ThxhckF15CyxZu4Rv6I9WPoEXV/f/fwJkPohc5e6PxXZlV0nM+vySNiaUJofy5HQuqndXWTYa9IouJhpOpsPypqsh46V2uQB1VYBHlTVbSHpl0sKkwqqP16EoVABIsptv2qLfSI5U0y5R2nT4PEuWJ1ShmAKi99ELLD+lgqJ0vnw3iX5crYSV6Y0g5K6yTPu5ejER+G4PPe/izzx4Gwppesfzf4OkT6b1fCuIH4MVHNdABu3RY5vxxKOgMMSnq0lZ0+H+r301jhFEMetoJB0dAVya1g4fgesMvf5g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dbccffc-ea4d-4eaf-fe9a-08decc57fba3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 10:05:39.3657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i0CWBnnRm1vZprXeuJpsb332ehQ07hYKX2fTi4MkLfNzxtI/sthQ1CWYr3OACzAFW41WlIiAScahV0Ne5jdHtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1618AF7BB
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49B476983E5

Hi Dave and Sima,

Here goes our drm-intel-next-fixes.

I adjusted the tag message to be less bullet and shorter msg as
requested in the template. I hope this is okay.

Thanks,
Rodrigo.

drm-intel-next-fixes-2026-06-17:
Only a few simple display fixes around DP MST, CRTC color
state, and PLL sequencing.
The following changes since commit 52d4ab1ca790a668cc8f2c27017138b1c467168c:

  Merge tag 'drm-misc-next-fixes-2026-06-11' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2026-06-13 08:10:38 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-fixes-2026-06-17

for you to fetch changes up to 062499cc4813b5a3cbed5dd4fbe0177265858450:

  drm/i915/mtl+: Enable PPS before PLL (2026-06-16 13:06:09 -0400)

----------------------------------------------------------------
Only a few simple display fixes around DP MST, CRTC color
state, and PLL sequencing.

----------------------------------------------------------------
Guangshuo Li (1):
      drm/i915: clear CRTC color blob pointers after dropping refs

Imre Deak (1):
      drm/i915/mtl+: Enable PPS before PLL

Ville Syrjälä (1):
      drm/i915/mst: Call intel_pfit_compute_config() for sharpness filter

 drivers/gpu/drm/i915/display/intel_atomic.c |  6 ++++++
 drivers/gpu/drm/i915/display/intel_ddi.c    | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++++
 3 files changed, 18 insertions(+), 3 deletions(-)
