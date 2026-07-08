Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zTt5JL2aTmrbQQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:45:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D800A729A94
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:45:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=is0DuTRA;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AD110F21A;
	Wed,  8 Jul 2026 18:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4748D10E645;
 Wed,  8 Jul 2026 18:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783536313; x=1815072313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2GKtAwlaW+6jd5vJ4mt4o0ivZVQRE0X+UUqpCk8zhKo=;
 b=is0DuTRAFp1X5yHDBoTQTFiWevfEbpwC/GI+bTYSgXKH9lzr+Wespe3O
 tB7qSot345pMVHJBIXtjVmhohnQP+v3EBTlQCg94GSOMKlbRvOaDdKVeN
 TC9GXe1qQgXO6NmJRHxpunApUl/GEL7pFbtpi08CUo6+ds5h6Bjf5I0C9
 3LSxfkOzzyGotvUZiDFlRNyvNQUtPYZyyRFBX+qHlnpfk5V/kh6q59DJo
 V3qmdYSM2Q0lXR/qi6K72ReOYp7jDtufLFmXEOE4+whnGMUGVezbEDh9T
 w1Iv5TbT323sLKmFE5R3Tr7pBzSP2L7P0Bbg5NcoamIxQlelSnNh7pjlp A==;
X-CSE-ConnectionGUID: TvS+IfpNRmS7Df3liMrEXQ==
X-CSE-MsgGUID: lyxSPU1rQRe3B+ySS3b/kQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84183723"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84183723"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:45:13 -0700
X-CSE-ConnectionGUID: go+Md6dxT+ezzVXPUcWfcg==
X-CSE-MsgGUID: ajqMVZGsS2uVKq4BShxNTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="257960877"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:45:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:45:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 11:45:12 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:45:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aPMC67mz2tbGc0UAxv0MJKmOuxRSnMpjk13knCzxrkYOh5PKcAOICo2YCphN1DW4QiRo849qMAgMyd4GBmXo0DYf6mVOfrCDsb8WJAztV9Z9knj7skHHDa6n9bFpG65CMdDieHijQsEvyS0T+Yd/UMQaA208n3YrOTdkXZgBzdTICEl4OWlpQu8clMdTS0QZByUZCvJzRgdCUyV2d/h74p6ckoTFT62nNxrwdNv2EwTzPJKSpvmwv1rjTnOekVC4JwuK3azK1BCjPNO3444CBtLh4VNIFXsasoOV+OQjbepIGYcFyUy1Yr+cdItW0lxRzBjSvnBN66tMlmHqQcogxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6vCIrFOO6BNLEL5hEKuz5oKNSU+bwUOEID8A0EgfeK8=;
 b=s7JZemXhrJuDX5mP6v3bygncQaLLS4EkYP8lL1pms8fk3RhPUlYE3VjNav7/NPmjeEXLC2uies/JycwudsuKrETf7qKEZhSr5KDafbQVd06UQBc+Q/eEEaT/bGdQXNAnMgvL8fgXQ0KAwtx/NjSMu6FVXugD9J1z8XOVAn7yT1JNUT8ZpeDO7pesLBCSMu7HXN8yrSXv44ADtEZVtIaESToCZ4o281OCRyxa0I5SrUeUcVkP1r+y/HvbwOGU4H4Q7vtFDUNAo+YoJU0nL3TPCSQJ7yvhnUsrP4QS/bd9si7dicOgtnqLaPHxP7RSleSIBCwoDaqsvIkfqvM94E5fIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8774.namprd11.prod.outlook.com (2603:10b6:610:1cd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 18:45:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 18:45:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 03/14] drm/i915/display: extract
 glk_plane_color_ctl_input_csc helper
Thread-Topic: [v3 03/14] drm/i915/display: extract
 glk_plane_color_ctl_input_csc helper
Thread-Index: AQHc/jxRlNkX+xrMUESS4tW0V7DkprZkFvRA
Date: Wed, 8 Jul 2026 18:45:02 +0000
Message-ID: <DM4PR11MB6360D628778AFCF589857315F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-4-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-4-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8774:EE_
x-ms-office365-filtering-correlation-id: 8144b6ef-2c97-4cc6-0094-08dedd210552
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|18002099003|22082099003|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: JXfrDPTEdfgXuIi0lMRR0lvOEOIxXcK9d0wWytNwmU8Hwguo0YJMOltlltIu5t0di752sPnJbj/oqaNz1mmVMPquPDSH9dRTe3Vc+K132DBqLVG4UmMD3KgGnpqtLy7gzznKaviI7ljiRm6s+5InzfIFHTtczjMYzJkYifC1XvpfQTWlKImHBnZMeUA0HtlhHbiYTUzFTfz1CTgA/wGXJUQib+rbS3vo8yQ9bWcdDrYNk3iMhc7w9mbV2vMq9a2aruVsPoZABGLyeAOhE/guRWGz8KUZI/2G0RF59VXu9jtmOsFmXi22AHl/RdQ+UOx9hUCHitahFdGP3b9RF1DSwQzFUF7+/iDD5Hi+6mv3rYfHQocg5KeB/GV1MJpr81eQPfdO5vCV1F5eP23AfA3mg/EiLMSIyQ5UBLdinVtvCgnCZC6yQNrz733UBtHJnaN3cn+LWVgqC0Nnz8KmtENzfrioFse45ehfZOvxKJXu1ZkLAce27v1IkHFN5ldmHc0IKvjpoNKmwj32BF6FjKPCXtQ6roebNZFd8KO36m+/LKWjcGn6vMwmyZt1gecmrw9e1m05a+t/CDqLoWku7ZhN5n/4V5eCA8VlzQPhSsqaiivFJfYAvn5NealMeA/XNcCyLz23PUGmUfHL71+9eWvYaQq3MzLr/v0cx5e2sI2CcmiLLAgxxtzx42Kcw363F1/Oxm+TcDACSdCnOfjr/Pv1SerGPO3BgemEfM3yojE7xbc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(18002099003)(22082099003)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WVo9tflfGIFRNrTLo5ynOcB1yOeojPPOmj6DB9sI/0w7LCXoQVFxm/A13mge?=
 =?us-ascii?Q?fBGqoakooMUEQUZndc1ep6B5whBAEmO/J4KGbKjgRh4sMubTPveNaNAMIAzj?=
 =?us-ascii?Q?LloBQsLxDW51GFhLg+9ixFfCUc/CS9qNPhe3RNoj4IKFOkzO8kaY6mnKoyrE?=
 =?us-ascii?Q?MPOrNPyNzM8Qb+qY2uuySTlAcPpdFp1uybCwR7J7GhOIyKpeWGY2lKdPkcLi?=
 =?us-ascii?Q?DCP9nQ4kdaAo0pl7+po85NzhcKqWY+rSTzao5MKTweJvZ4AjUnzT3yDu0e0V?=
 =?us-ascii?Q?Yqob01N7IJeZTpOBNomJtjMUcfuhOBdpv+EOeKsET1cDo3OzNliUgiFiOiNW?=
 =?us-ascii?Q?e1dkpbQsrib6c/lz/x9xKO6ZVcRnfEf7MmOVd8/iMIGCbFnY57F3Do60AZv4?=
 =?us-ascii?Q?z+ZuWqfRwV90jd/3rvQvBuI6UyI/IOrKURH0oTLJ3b+ZOMEVplVbzRCa2xYm?=
 =?us-ascii?Q?wrNjeKeOdxJothcH0nEGD0RW2TQLkP68sa7cX1yvyTzy+IEa7WBQHhDPqBic?=
 =?us-ascii?Q?OHW00HzdGOCvbuZgSt0p61uNIdoFV9apy5t41Vmodarr27n+ZqRUaPco4ofP?=
 =?us-ascii?Q?oQwsNwoILLeg/15BRPduRkIeY9W6ZshXzA60UnnsLHTtHe3gjiOJJ0FJ/h8Z?=
 =?us-ascii?Q?DwsaqtLO6MAxo3jtVsemh8eRUpCFxJ7+PlCaVZGwKqUvXSiJL4zZ3DAHuiW1?=
 =?us-ascii?Q?Xp36Ux8iGLrW9zGdcLUYIjnNbqASYiGUskFihhlxRvxCnxyvO4jH/HlKXIk2?=
 =?us-ascii?Q?/nCxWwd7kzsY7i0rhEkkfG9uM8lIjQwalAIpVpsMsX7m+kRTPM3OU//Mp//R?=
 =?us-ascii?Q?aB32SkRvReesKf5ebQGol5hx0IZ6yRqPgq7fYz9+orDpTi4ky7qM2/XnoKU5?=
 =?us-ascii?Q?LKUoTHdygcxZPpQ7zZ0v8jrOV5mojTa/8ZEz/ffANU9PXd5ySSSRVMA1qPeU?=
 =?us-ascii?Q?bnBRBsrcWitHR4PWU63A3AIQJAaDF38HTjbRxNzp54mg7dWKzNmG4WvuU87z?=
 =?us-ascii?Q?KJaQ/ZbWhiOETgsfzyuIAFu3DZj33ovFvyy7LMVgyrbAXgFH6cuyvGUJ1fDf?=
 =?us-ascii?Q?28h0gkkQaSko8pUZIxl4bj8BqHqmYPsnt/bDwXEJswfUguk59eMOgfmhFSXG?=
 =?us-ascii?Q?4GMMJxqQIHyhOUO2p3jzeEa6G08iJGRYL3Ej0dqs8+kobWv6hcoO6kc0nqIZ?=
 =?us-ascii?Q?vGgUcU9skiXW1fyNbp0zAolBm92B0pU9VNSO/mUn9zDnRijOqxMDIAetfCoN?=
 =?us-ascii?Q?hIPKChCEHncsfyz9W8JYhPGyPSL0hPCTHwxOlktHqOTy6/c7d+BSnhtA9uRe?=
 =?us-ascii?Q?rSwfHft/LXvSr48CFw4dIRzz8okS8P09Z6M53mRblGESnGB+FRwaCFYunE5c?=
 =?us-ascii?Q?owedQAlVPKMKuDinc3xXTKrfFDFlYRGEzU0asYeCP96yAcETyKDunAdjK2Or?=
 =?us-ascii?Q?2u0uK//bWvi1VFwGtIXH2cDzOvz2HAFHv1xpLv18dn8YiQ97uNxkpXmCptFb?=
 =?us-ascii?Q?yc8HMFAUChK4vjv3nWzqdFGCL8ZBjrNpjUOJE1v1Y9wCBTy59et7oyYieDuN?=
 =?us-ascii?Q?sw0s+Dovz30j5Vb4NKZ/NgvfVV0JcjAwiK9SFTrNrpkVyw0OYwTVzgRfyXIB?=
 =?us-ascii?Q?ctXmtLiQI44dnTgVfyqOD7FbdZNFvqCVd8DU9VhWNZzZoA3c40WFmNgek+qh?=
 =?us-ascii?Q?dxCfiHUa7wbhhO7b8Bnh6O3Om2NTKlhdjBS2//DGGbPVv3xJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kYraG6l8siIP2AAMjTliJ+zYrDidbKSV1U5Sqf5GatuP0+Q0OIZrZpH0BlcsXV/qt+vG9TARIYVGvtIKhghQ4r/fBu/usyPcB9aNoJDd2qxmvVcgV6b13/y88/FJwYcpAQmmDyafVYwRrR+YM5V1vWOmVyfszOdBlkL/rGKF0PuDedgJ2rAUuivrKIUUD78ZWowBYaG4umNI8//GIsbChyC4eX0TMcNn3kDbG81ji/U5whkc6cMlODhxURTNJSqlNGKEACxJXTZz9ncw6tAwr36/W0CcFN43UlyY1ol1XoGJfovadukTmUxDZJ8xC64P54t0dc7L16ptBc1Sr3JtbQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8144b6ef-2c97-4cc6-0094-08dedd210552
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 18:45:02.5667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zsKiS0kHXTNu8rTBXjU6fk+dVvgqyABbJATcgxt/Zm3VtwCi+fWBMg3mWQea8joaMsL+yl+3sT81f9tnOJE+Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8774
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D800A729A94



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 03/14] drm/i915/display: extract glk_plane_color_ctl_input_c=
sc helper
>=20
> Extract the input CSC and YUV range correction logic from
> glk_plane_color_ctl() into a dedicated glk_plane_color_ctl_input_csc() he=
lper. No
> functional change.

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    | 32 +++++++++++--------
>  1 file changed, 19 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ad4bfff6903d..50c6ceef9b9a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1240,37 +1240,43 @@ static u32 glk_plane_color_ctl_crtc(const struct
> intel_crtc_state *crtc_state)
>  	return plane_color_ctl;
>  }
>=20
> -static u32 glk_plane_color_ctl(const struct intel_plane_state *plane_sta=
te)
> +static u32 glk_plane_color_ctl_input_csc(const struct intel_plane_state
> +*plane_state)
>  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	u32 plane_color_ctl =3D 0;
> -
> -	plane_color_ctl |=3D PLANE_COLOR_PLANE_GAMMA_DISABLE;
> -	plane_color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> +	u32 ctl =3D 0;
>=20
>  	if (fb->format->is_yuv && !icl_is_hdr_plane(display, plane->id)) {
>  		switch (plane_state->hw.color_encoding) {
>  		case DRM_COLOR_YCBCR_BT709:
> -			plane_color_ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> +			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
>  			break;
>  		case DRM_COLOR_YCBCR_BT2020:
> -			plane_color_ctl |=3D
> -
> 	PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> +			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
>  			break;
>  		default:
> -			plane_color_ctl |=3D
> -
> 	PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
> +			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
>  		}
>  		if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> -			plane_color_ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +			ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	} else if (fb->format->is_yuv) {
> -		plane_color_ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> +		ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
>  		if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> -			plane_color_ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +			ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	}
>=20
> +	return ctl;
> +}
> +
> +static u32 glk_plane_color_ctl(const struct intel_plane_state
> +*plane_state) {
> +	u32 plane_color_ctl =3D 0;
> +
> +	plane_color_ctl |=3D PLANE_COLOR_PLANE_GAMMA_DISABLE;
> +	plane_color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> +	plane_color_ctl |=3D glk_plane_color_ctl_input_csc(plane_state);
> +
>  	if (plane_state->force_black)
>  		plane_color_ctl |=3D PLANE_COLOR_PLANE_CSC_ENABLE;
>=20
> --
> 2.25.1

