Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2bVqDCeiTmqBRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:16:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B64729D3D
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:16:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=SuAFRKRy;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A1010E654;
	Wed,  8 Jul 2026 19:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF4110E654;
 Wed,  8 Jul 2026 19:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538211; x=1815074211;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=NjNb5yir2JPL0GdaBDclORl4P8ZZnC4MhaFpgiAiPa4=;
 b=SuAFRKRyO/bs44YdMDN+rPs/jUOZbxqUkmOr+XiQjOt50qJVys2HkLgH
 yz/4wB4je1SrCDH9brN15dsxgp6w4NRQlMMt2jm1HFsC1rHETFVMIZLWZ
 lthNqBqx/CQr/ecV6jQVSz9m+/2agpIJ2mds7Oj0uVJ5Oxn/gEJgXrgIu
 rQ61F21agcKKkVTDucJiTdz+0ojy+1NCn2gbQ1P1YiLJQgtSgpV07Dbko
 lQUaqTi1uwvr4sw9lEiWI4baay381KLYLNZj1syaMKx8AgkoGRSK+pxdy
 52DRdLSs5TktIHSD3VvJJdTZz4cr//hIuS8IEEVVbpfyrsmmTdQCOQ9Nq Q==;
X-CSE-ConnectionGUID: TU2BoW4ETQycWS4fX/nJ/w==
X-CSE-MsgGUID: 7dY6yo2HRGew+McsIvZSow==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86758403"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="86758403"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:16:51 -0700
X-CSE-ConnectionGUID: s8/B1QmUT72Z+iYXtowARQ==
X-CSE-MsgGUID: aCVvFIJiSvyO4F2rSMTsWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="292558093"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:16:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:16:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:16:50 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:16:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uIHqZ90wZfNeke9sxoTDFz0I8Ge6OFWN1dps7qMfMHF8NkCRoj2NW6N9X7rqIN1oKJl+1+PS7b+JBL0/aDP+S4wRKBwwdsKQT+f4X9MXGAxTlNKzLBKNJuEbNwlhjHRxt0sy+Yp+Lq6GkUy+IlIlkv45hixI3f/gKonZkIGW4rBLtZZDGVP5W2REA8519W5wv2/RcIqS/Ri9bPuYPg8DdeRS8QOg5T5TtWm/Zeq5a4lTvrYEz1EfN+yfnK/8Prtmr+I9aS9OQGCBSjbriJ0eTTQSkFdqJubqcrj7g8eiSeV4m8JAgRa5Etlzt1eyphQuGCGuYIJo8oNQoP3lf8/6pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5OU0BQMLHGep91H3k16g/9NOwMkrp/N+I5UHLrdcg9U=;
 b=D0jgAilvqaScQCNZXz5yyMvSdUA8/vvrOwowT96cox3FhYo6xfvV7MNdzPfXvTpqybjsaaT+EmrhLEzTsZb2J8c+tEVwdyr3fwPWkAtQyrq8p4CIx6axOOwk8o63QuJe4n8OjmNqvKRI7G3Mj5qtutE7V65Au0Jpa3Kc4OqjBWz65AKhKlCYp1AU/xipof4GfuvM+OxDk5cGeh7/QWe7FHuPOlWmBmigI/2y9srVEe58li3lbnfgOLDR68hCyt3i2idP0cYDaitK2OJ+mONEU2LlMxsifYLNW5P+CId0c7d94RFjBsU5RVmCEKR86raH9iXWiZ+TSwGFLF+NPeN4iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69AE895C5.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::2b) by CO1PR11MB4769.namprd11.prod.outlook.com
 (2603:10b6:303:95::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Wed, 8 Jul
 2026 19:16:48 +0000
Received: from DS4PPF69AE895C5.namprd11.prod.outlook.com
 ([fe80::f32:6711:e455:8d2d]) by DS4PPF69AE895C5.namprd11.prod.outlook.com
 ([fe80::f32:6711:e455:8d2d%4]) with mapi id 15.21.0181.014; Wed, 8 Jul 2026
 19:16:48 +0000
Date: Wed, 8 Jul 2026 22:16:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Brost
 <matthew.brost@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 28/34] drm/xe/kunit: Add display test config
Message-ID: <ak6iGSYxh0k5cCHH@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-29-imre.deak@intel.com>
 <akz5e_Zhf-1dKUNG@ideak-desk.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <akz5e_Zhf-1dKUNG@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F731.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2d3) To DS4PPF69AE895C5.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::2b)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF69AE895C5:EE_|CO1PR11MB4769:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ced77a2-348f-46ae-d098-08dedd25751b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|4143699003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: RsBRtcte8/GjaR+6su0qs3JAE+9trbOkRbKCaLoLBZEfNGtpvATnbWTxzkJpHC87STyQKnS8dDQnLW8bqlRmiu0/bsNb64gesnDd0zBNX0JWVbwL3B6R+1vxceavUdPwALO0BtYdu5Euk7lgNqfCsgIHg+MCujj1Mi2sgKaDC/IxqMmy94wenLMlYgOCkwHznVdgGqj/VfMMDj1DB9IZsIKYkl9J8NR79tC1r6QbefkXfckTpHqsknEAkLwaSKT+y0Jc4E/a6/wVdXlHNS0P5EicrnZfOkpJA4ZHgzJTlqI9cwhvLD/DlLDWVe01SuT7SoU7l/VQdN5oPACgk8sH/W1c1WTio18Niu0pjTLDW7/Mo6VdKiyiXVhHQX7qYtQ7Y9Qyn/k/qIoKRsXT7YfOrsNhQ7302OiMadmUT09aZcNExhDPmqHdIYj5T+je80bN3JyR3wgGk0bV0Au4UMlNBly/W4DhqRzi7Cw067jxgJp6Vt7CIK5oMLyRxqfvBrONnfHmLl0ppWogIg9o55nVuiTgKLJy/YiyByMfWj5MHiZow6HYtuYxfy08gbd568H3xt4pYaOEBoPF8oSnbT/lplMf+VU1jcMxmE8rxphmAyLoZX19WK6tIs5+TPg1KtF8/7FkEg2lb+/Yn5g0lek/VJGXqNefOjA6V6mZ5BKYpbQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69AE895C5.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TJoaW3q8QszVTEORXJ68zD0Mr5t8VPcCcZbMXYs51lzIUEsPznesO3LHmbTj?=
 =?us-ascii?Q?m+fs+bz1GWQGi766MOzQwNIw5ju4XkeW1kQE4PViPbXm/nIwTuBcJFHM6Ct0?=
 =?us-ascii?Q?InU1QWRaruFZ49HmaJQj8mc+6pit+w10+X8CP2KVQyRlirbviCq0Gcgv0dOP?=
 =?us-ascii?Q?wjJoiHkFZ98JSItgKoRnfuivdODvNAnyLgtHcu0ODZETo3ExT1zW3eUkjGja?=
 =?us-ascii?Q?xzUZcTcvdsg3TPAWXVsuVjoUU82yXE04XpGq0pD6HnBZdkk4gWmGBUdEvAB3?=
 =?us-ascii?Q?qz0sjchPcdmimRCIxD6MLSf80oBZVRSa0fRwiZ5MKxAfTjaAQiDBITqaRc/9?=
 =?us-ascii?Q?VSLdV/QFDy+qbKj4bV2hJe/tq+hdUkWEkw9qFFWefJJv2uEWLlFz4bxQlw1d?=
 =?us-ascii?Q?QT7JRNrS+u3fdA/FeKtDyNz54MA3Fbxvql0cuQVGWGUWrd6PoYeETSKsMCg1?=
 =?us-ascii?Q?6O7sfCiDlzziAbxpT0kfNjXKxujiDsuNJbYgDGukweCJeXW8nuhO9Nk3snO9?=
 =?us-ascii?Q?q4jozmRCZ/nItFsM4CkOTtqylHB762WKlvtNBhzfM2Ze+K2+2bbnYZn75ohG?=
 =?us-ascii?Q?OvrLi4xBqHrLvkt/SmtEZgyhSaoxZ4w7cdS6Dh8cRIC1NW9moiGSaHgXAixA?=
 =?us-ascii?Q?mHjlgbTwYnR5DwJU7SySGKppQgQ7cHGWkQBk1nFXekswhD1g4xNadpMvU9uS?=
 =?us-ascii?Q?QtnkjBzkz/K/M42ZAdEzFue6Yq84bWzHfhfMCu0R15ZW1NUZRdGLWTA+i+o1?=
 =?us-ascii?Q?P0K3Lzs0m4uZ3C1N1R2814/M4kg0nf/adDaFQT/KZqlkLPMno26sinT/TdOS?=
 =?us-ascii?Q?1WTlZQn8OJQ8rwjg8oXxbh5ZL6cTWss1sUFhrEeRw49YTFLcQG6enoezZkRe?=
 =?us-ascii?Q?17A+A+NZeChyZ1rwIkk6fNf50vQWILVub42JEYpXcBAGweHyWX/mwfDVyPho?=
 =?us-ascii?Q?Sf/kgmlHZvIMb7EqkUe6l/j0wjuztbCn+L9/XLCC9ouwe5K5nsKN6FvnUN4r?=
 =?us-ascii?Q?BXLIX35M8nc/w0kiSh1sWerNwKVjsA6ReC1oEuPfaOC564uEl8JKZnOV89jr?=
 =?us-ascii?Q?3Jg/CQe/ETcn602Vf4nQvcFCk8M8PrM6BS5oIm1/pudhXaCUruwIKJAzXgoL?=
 =?us-ascii?Q?D8GvTvy8wB+42EB3lH06BfOa7rX8T/4a8rf+/x1sqmS38Bsj4e4Kt/rlZ2wM?=
 =?us-ascii?Q?EqtZjCVLY8nEdW1VUlwIYfgsgZiDsy37TKc9FKv8T4OCyrlFdw1ZdAAaDyHG?=
 =?us-ascii?Q?yjbedOJskxFEw+655jNNWvHM1JoEpQLPEoow2Nv2cH2w2mpK3/k0ivJqa30Z?=
 =?us-ascii?Q?3g2UiYl/VYTkiOvWY+BAx+/kkv+ObvytFjy1jDFLSBmq5wS2vafW7EZAB8MO?=
 =?us-ascii?Q?/KBYqJerydNOaoFZnrGbGBE7b5LEaE11JngPediOcw+ztyav3yKjsxvFlEkx?=
 =?us-ascii?Q?Bcu8wDqUplUzUK5Wk8Y7VercblD1QIIgzVTRUJsa0mr4JIMTVAHINGkPJNlr?=
 =?us-ascii?Q?kXJMIa+GzUjUwqAJ7eoXPxiWZAI19DjW9KginLkdqSSqoLnX0fG/GENwmpqp?=
 =?us-ascii?Q?TCbW1iAuUEq9PLNT7a49hP96GTk2S1h1ELRlohXVqvvI1fpbCXD/BQuVh7XK?=
 =?us-ascii?Q?iJ3NG/TQUu5fVxjEEnYnSDMFAXAqYNYQvE97b42HqOnncqYdojye6xbMqU/y?=
 =?us-ascii?Q?7udGfte5qA/E8MbhnxiSBfIq4x1GTdAy4nrQGo+y3bJqUv1kvvCRsljY0eBD?=
 =?us-ascii?Q?fE+chA8URg=3D=3D?=
X-Exchange-RoutingPolicyChecked: MRYiAniEfJT+8aKTs40j6jAeYQCkxtKE5HPBXcAf46Sz43MnOJXhxeKdZ0kHhENZUJntHtt/LZhyT2jhCfPWKkh8iJv/nsPkj2+SRzIx/0RL6wGzt3ebY6IHM1GcPMbL0U1Yqi5FkSLiEX6S7At2xYDO/dRTB3OD42nw6feduqYVqbH0/pKjBrVVxo8WMDI1ilKq9WzuFBIX9anA5sZkL1b7sdL1xXboteeG6MAcWwFq9920HTb3h371rmV+dk0Y8rQmY2YXSg7s4LFq5k5WmlD1OXzu8X0uiVRto9T6MbQ1NXyQJL83wKopPg2PCCqd40moB4qDDpMklldyujidJA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ced77a2-348f-46ae-d098-08dedd25751b
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69AE895C5.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 19:16:48.4230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3zkZqh+IZLt4UNYYTC87wDDlVLtM68ikVj3+pW7Br4Aof3r0Nj6LBswRzh/8jIuCCmG02KbsVtkG0on8LcRkQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60B64729D3D

Hi,

On Tue, Jul 07, 2026 at 04:04:59PM +0300, Imre Deak wrote:
> Hi Rodrigo, Matthew and Thomas,
> 
> are you ok merging this and the next patch in the series via the
> drm-intel-next tree?

any objection to get the above two patch merged to drm-intel-next?

> 
> Thanks,
> Imre
> 
> On Wed, Jul 01, 2026 at 06:31:57PM +0300, Imre Deak wrote:
> > Add a separate xe KUnit config for display tests.
> > 
> > The existing xe .kunitconfig builds xe statically, which is suitable for
> > non-display xe tests. The display code can only be enabled for xe when
> > xe is built as a module, so add a separate display config with DRM_XE=m
> > and DRM_XE_DISPLAY=y.
> > 
> > This can be folded back into the main xe KUnit config once the display
> > code becomes a separate module.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/xe/.gitignore           |  1 +
> >  drivers/gpu/drm/xe/.kunitconfig-display | 11 +++++++++++
> >  2 files changed, 12 insertions(+)
> >  create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display
> > 
> > diff --git a/drivers/gpu/drm/xe/.gitignore b/drivers/gpu/drm/xe/.gitignore
> > index 8778bf132674d..6dad8a5a21355 100644
> > --- a/drivers/gpu/drm/xe/.gitignore
> > +++ b/drivers/gpu/drm/xe/.gitignore
> > @@ -2,3 +2,4 @@
> >  *.hdrtest
> >  /generated
> >  /xe_gen_wa_oob
> > +!.kunitconfig-display
> > diff --git a/drivers/gpu/drm/xe/.kunitconfig-display b/drivers/gpu/drm/xe/.kunitconfig-display
> > new file mode 100644
> > index 0000000000000..17020aa4ded3a
> > --- /dev/null
> > +++ b/drivers/gpu/drm/xe/.kunitconfig-display
> > @@ -0,0 +1,11 @@
> > +CONFIG_EXPERT=y
> > +CONFIG_MODULES=y
> > +CONFIG_KUNIT=y
> > +CONFIG_PCI=y
> > +CONFIG_DEBUG_FS=y
> > +CONFIG_BLK_DEV_INITRD=y
> > +CONFIG_MAGIC_SYSRQ=y
> > +CONFIG_DRM=m
> > +CONFIG_DRM_XE=m
> > +CONFIG_DRM_XE_DISPLAY=y
> > +CONFIG_DRM_XE_KUNIT_TEST=m
> > -- 
> > 2.49.1
> > 
