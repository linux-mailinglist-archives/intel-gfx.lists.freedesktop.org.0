Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEZCGsUVhWkh8QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 23:12:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29DAF7FFC
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 23:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A6910E14A;
	Thu,  5 Feb 2026 22:12:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6VEXCm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5401310E14A;
 Thu,  5 Feb 2026 22:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770329538; x=1801865538;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YbITAns731+QVLaAYhEArMeH4UOYrTg6uleqQn4kM5g=;
 b=E6VEXCm6K4SuP1nT7335z4gIaFc3P/vTZQj5JphCEc0gIogoMhw/R9PA
 GnCnxVJvYooHXcwUpJg0jbKEU3yZ8eecYHbdn6IPILc83Hx9QA3B+ezVR
 +nEh6/fu6ykSow+cAV6O8RDS+5ZpQO8cwPutAox685j3bRyPc9Bnkz2DC
 /fAHPTQOrgZQd7Hnr4bfsAl5MMKSwVTv41Jok0ohAEJnC8ab0zNN1k/E6
 L5JCQU79aNQkeJ/tcJ3Qkh20Wcdn0KHwhQ5cyjaDaxSZde4JBhORr6pUv
 SdnDBdB4eTChzzTOBKGKEFn5V3gSBN5k7aqBaahgsjZT0xyK2+yweej9I w==;
X-CSE-ConnectionGUID: 6Trlp4LcTkWPeLKoF1Gm4w==
X-CSE-MsgGUID: MgsUB434RAWc+seNz26Blg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71267803"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71267803"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 14:12:18 -0800
X-CSE-ConnectionGUID: E70XMiKATO+94ztm8SXcUw==
X-CSE-MsgGUID: +2WjDJ5USiy0wSbL3izHTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210478943"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 14:12:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 14:12:16 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 14:12:16 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 14:12:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W/a+0LR9r4ITmJ9ZQyP/hIDO1RX/7XovkYAje1qv42342aJwm+C+yUo1kCVK1+EkxaYxDMDuOdSuOKlQ/GwOI06lMVWckxIO4RywXSa/nRQAS8xX3U4pLx82qcgEZewt/q5/elhsM03wC97kYdFuYAoL58QfxshocTN6vVHEuFM4LOrnKXa258gNSIAR+nIlFbONNe1iasUNkODEW+bEknh7aKVcEsWIQ881r101lQsVEZiNMJvmG106VbU9pauxlTGv0W3++eh03GHe/8epuh8FcI1zExKCj5TNO+aA0M+mdl9Ao8ojZz2BCX/DqxX/PHc3iwVqcO/TWYBDYtHw2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdHwRXIv9ZuNzGhQLFBtitRbLW9S4y25crq/tE1ROSA=;
 b=S1e3vHEhgdXqWFmyA57UJcAAmVXTtviB59x+jHeCJaoVhOoMN03vOEsfqzIJ0L0DQwrW76a1l6jjkYeYD21RpEMQ4+QknL8f3jKq1RKBCA8xiaXw7622rGl1MYpIJ+NKNfQZKlW8MPEv836VGQDj49ymqQUfpl+PpfUm6BfbbkMHfwM8HQgigKWCFuwF3irot0r2QYcTBrl2UugpFF0ZjhjXPlkibnhhckdr1phu00OuKp9OxD1bLrhUMLfkglejoRFbJhZvGGOeeig3sQ+4xcGWwWyfcHSJXMVH5tff9VWSemP9wz4+OQkWfEFfcBSa3BSq4pfiWT/sHMMeuLC0xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by BL1PR11MB5237.namprd11.prod.outlook.com
 (2603:10b6:208:310::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 22:12:14 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::eb8c:fc1e:e3c0:13a2%3]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 22:12:14 +0000
Date: Thu, 5 Feb 2026 14:12:10 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH 06/16] drm/xe/xe3p_lpg: Add LRC parsing for additional
 RCS engine state
Message-ID: <20260205221210.GA793638@msatwood-mobl>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-6-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-6-653e4ff105dc@intel.com>
X-ClientProxiedBy: MW4PR04CA0330.namprd04.prod.outlook.com
 (2603:10b6:303:82::35) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|BL1PR11MB5237:EE_
X-MS-Office365-Filtering-Correlation-Id: ae2cb915-7a6c-49b6-3a96-08de65039ddf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?o5XMw0rJIWQVeYIXc9fpCP2FSnHzM7/vg1hY8bWxpHvFzbaqk4cX2BpScPi1?=
 =?us-ascii?Q?EuCwa9zGwdn1RtPeIRXJ3KoQ5wKmHhcl8qP4cJgy3hgAoVCuV3SN+tPRwJLM?=
 =?us-ascii?Q?vuAMj60ggHI7Ih05k3HrBO0dmhfHFcRPMYXgWtDVHH1hVhSmZlDS2QserB0W?=
 =?us-ascii?Q?ac/Y5Nlvb164iBj3btlzA4BgwoVcu1oJ3Z0pmvVpDrOu26bvSqFP7HgmuDAO?=
 =?us-ascii?Q?GN74sMXfIbjYmdsk53T7Rw4eadOEnrJPzcVN9cx01nS88FdSS+hThvvlTXEV?=
 =?us-ascii?Q?cKOnDDg5z7W9jyD44iLjXvOx382Lr6etaujKKFR/XRLmpyYmVlleYgbUsPLV?=
 =?us-ascii?Q?V1xrV5TRPngixN/wRjS5Ye+meUdhsT0RlmscL72CM+K652s2BPuKl6SanlLr?=
 =?us-ascii?Q?Kjmu2J9rLoILr90FuwTrL73On7KiwPDEv+04cMXjvSykvpV4KUVHTYZU2CJe?=
 =?us-ascii?Q?uBIh9MVELsebgwJaNnV2/JxIa7R6RlluuRD3JeBmUQXkg0JgNCxUVaZiUKUO?=
 =?us-ascii?Q?lRe8oZa6KrfEDjEChF45NxlEa6Ay0SqhUaEQWzRTLXblga6OM5mKwox0is6k?=
 =?us-ascii?Q?1Y3wyqCPHKIikgBR77pSLPh54XwJVXPx5gpKDL9/noH8UrkcjkMQcMlYYng6?=
 =?us-ascii?Q?zPHHi50gYU+OdW8SC6IB08GQtV9/rjk3ovNgPnD0lJVtmg1WQIlTfH/Dp8N7?=
 =?us-ascii?Q?TQgkyNqbpuvcdJKpwrzp/7hM4krEUlaj8X2vepjmWdfvM2gjZmAo642Z5jAI?=
 =?us-ascii?Q?GEm9vE3gK0hwUrhh8jg3XwK1HblIQ2DCszbwa8L0fz/DrcxNO2OGjgk7I1uH?=
 =?us-ascii?Q?UUWD2vTM38mu/11/4V4prDgymF8HzVSFHWDaZiu2GShgeTqopapBcEcBRX6q?=
 =?us-ascii?Q?EIPHfuAcFaD5qBcTNPV4JOpdJxjbdwQjnm6cL0Mo7gNkflhwlzzMtl7jM9/a?=
 =?us-ascii?Q?HERpI4sUL5G4upAFVQamKq/ItaSJEDThQZ3sKJd81WptG3Asna8/uUiOlljV?=
 =?us-ascii?Q?Lko+6UnTXuTi1n4IUmtHBUhsTuUwiiDzn7RhI51/i1CQ+xTURUwgQNq0a5LF?=
 =?us-ascii?Q?80bUoyQx9HRDi4IftHwYbNRvxqfr2CHEluefzgA4gwU4o9QdSUoFguJ1ftsG?=
 =?us-ascii?Q?mtY0MoPWgmerwFSej5YecDZdBUoBJqo/d2b53vk5exA3GbqwDUOdUrHwuU8S?=
 =?us-ascii?Q?RiI7llwJVQ/Ja5Fs3pZazahAPJ1JxUHFBEsjgJ2rragwk1GIOgMuTdlpnq/x?=
 =?us-ascii?Q?hhpUJfJVgQdHKK1f8zHlpRYWp1o9vbQeRL5+fQ7R8YGjaIUTH8MVrRIzSLyH?=
 =?us-ascii?Q?WyNfXVP0FsShJzRPKh18JkqonToUB373T/7o6XrvApAnnOjSMOI1jEwUJXtI?=
 =?us-ascii?Q?+SajcPIh5yiOcP46pBo5GVhuOfRZwXS0I2n3UZQ46bb7LRw7VUGd7LSIAfIY?=
 =?us-ascii?Q?C4bR7apkch/IQA3RVmwyZoxg88BTsBgwM56mB8ag70UVjevcLWCgWbhFBGz4?=
 =?us-ascii?Q?etlyoDM/yuLo+oBcX5xCZDBAoLLVFwMA2m4PEmMSJLGdgPZLm3eK/p8wnGmf?=
 =?us-ascii?Q?KskcNFjMbfwMoHTTOeg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6eQyUwykxULcHIB3YvKFZ9c1wX6mJgRsEtJytI3yvSIXAHkeTvqabw8cI8Sh?=
 =?us-ascii?Q?38j6lBN/k0OywrbSB/Vh1pjjIVGS0wQ3NsUdCvXI++BfFmn21exxkhlO9jEd?=
 =?us-ascii?Q?ki1hNzSSaU+Qd6xfWDEqXR9bYGibYOSj022/m6a2vradiCIHuZsVWQ5TGU+o?=
 =?us-ascii?Q?tuF5Oft6WUZUDln/y94Z3V5+uS9NkP6f0KGhMKx2NL2UzJQF0F31SLmVvPe+?=
 =?us-ascii?Q?2QKcKGWwfXly75ttr5AQjiJOxgLz1DaKZ28GBmUnZ2sCZr5XBL6kPeefCNUT?=
 =?us-ascii?Q?B8UQiqLr7xc/+EYCNwErkjlojcPHGPUGGDBauWH/KU6rFXM5uQ5lso8sq0cQ?=
 =?us-ascii?Q?CvA//+mxoL722QUHV/XREompkNJCI4fhz8zRETYWkBNEoJsgLfwvBUcVWyia?=
 =?us-ascii?Q?lLeqwtkGYvt1CFoi+SxS03xem9Q5afNXWSNZmAZdeuirKgzGZnWMQfYqMVYN?=
 =?us-ascii?Q?soX6ik1U+zVY2VGiY90yJBknFs+klia5sBiEqlTYYTQeGFrxrMsHwEZFW6wU?=
 =?us-ascii?Q?XCO167hZRBMxPmaKXwZvEMFKpZ4gkuEqB8wxCTuAghyD2mgJ2GO9RC3ofbdR?=
 =?us-ascii?Q?WyTUQim9NM/HE+0C43zXWvaYRrSym06eWmB5rlFh7EevZafTwUmAEZUf+gWB?=
 =?us-ascii?Q?H/6S5L3H5T6raEwQMwnhdLg3cHfT332qI33XRgpD+slx0qYPkBBmC6aNiAth?=
 =?us-ascii?Q?wbJaaogdYIrA1njD4AcPCItsZbG5tcWkijDM5b+vN0P+/A5wEW9WOf/Xp16L?=
 =?us-ascii?Q?a4lq784FgZxC43PAPCnReeJpcEZKCT7jFcCbSXdxP6FZuWURxpkJGt+Br0Pu?=
 =?us-ascii?Q?9qkOb2+990dcklK7SGplo99h1mRjbCmSUNHr0S/PDCIRVDl9nHUH0NBqGu7a?=
 =?us-ascii?Q?I8QlzZ+GRNABys7eCIo1YhP2ldoKhs+lcehpSYsFfGMxLm4Yuw4jivQgiEU/?=
 =?us-ascii?Q?3WTI8fD0M8TWS23b09WU5H4Xkr0KSxXHCHTYRq70NjJy6r1Ag7mD9jsffvAt?=
 =?us-ascii?Q?mADxnQhwiOtXifaPxrzDXF4JDoh8yC5J4w3NGhR3NYwSQtgSHnGKZ/HoF3cI?=
 =?us-ascii?Q?DVApCiicqIyWZjyYIkzZQ0erJq7uAIzuxFUhLgPOCYHlYVcSyXeg/XQjTrx+?=
 =?us-ascii?Q?0KN5pQuUyX6r7VzYMGPsOAyJd6ioZTvsUX3haaMfNuYzsxQtZPOPZ5tiUrU6?=
 =?us-ascii?Q?QDhNSw5v7vJfR+bAPpu3C2c5kWGRHJxdtAD9OZpQ07jaN9ON1yHCNPoeIo56?=
 =?us-ascii?Q?j1hajfWr/afJz1mQI95NFSQ/T/iIXUjnITC2kn1ylRETikH3t3R00RKEqlt8?=
 =?us-ascii?Q?b+2SX5ywxQGlLi/j10ijrayUSQax4vJmYS8Bk/Pwt+0oUwDWZwNsZ4LaaQUb?=
 =?us-ascii?Q?zKW0wk1m/2qVn294jaw0Wv4gsZnGrKxhnVEsC3hRAJGpNFsRJrkgz9nR+wT2?=
 =?us-ascii?Q?YzsXeMvJlqe6tDH1VafnjqR1CYgnsy5KI4dxKh2Ll2lX37UNsIUWQHO1bFcS?=
 =?us-ascii?Q?Pv6h2w7I7K/tijKtvXiQgsgMSl61IhfHk9EQ16d9xGgkfp8jR/JG38u38miY?=
 =?us-ascii?Q?kakGNHKyMEw00ID603mf1l94d0F7sVjZmmC23wrfKMD9BB1/ELSx3HpJEZCh?=
 =?us-ascii?Q?XdxjQnlM4uD7efcrDUCSeWG2uzyyRmDEW88wzwiqO0MLiik2StLxAU1DXR5R?=
 =?us-ascii?Q?PNT3FTaQcq3N47as+NjP9ijwVS1nnZN2XAJdzoGcocgw3M7P04wi8DqJ/FHL?=
 =?us-ascii?Q?GDHqvOcJ5rJziUXRdFeOZaTfgYbTN9Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae2cb915-7a6c-49b6-3a96-08de65039ddf
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 22:12:14.2472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cG3TePKGptnDgx39no5YctYf9cfVoEmqTLeoM/BcFgt1XRKrPsXPxcJH7UFo1w6sabIvhk9nZLh3j6+br4/ZSF5lk1c+hdBEzbMR3HmBPmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5237
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.s.atwood@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A29DAF7FFC
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:12PM -0300, Gustavo Sousa wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Xe3p_LPG adds some additional state instructions to the RCS engine's
> LRC.  Add support for these to the debugfs LRC parser.
> 
> Note that the bspec's LRC description page seems to have a few mistakes
> in the name/spelling of these new instructions (e.g.,
> "3DSTATE_TASK_DATA_EXT" instead of "3DSTATE_TASK_SHADER_DATA_EXT" or
> "3DSTATE_VIEWPORT_STATE_POINTERS_CL_SF_2" instead of
> "3DSTATE_VIEWPORT_STATE_POINTERS_SF_CLIP_2").
> 
> Bspec: 65182
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h | 10 ++++++++++
>  drivers/gpu/drm/xe/xe_lrc.c                           | 10 ++++++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h b/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h
> index 457881af8af9..4d854c85e588 100644
> --- a/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h
> +++ b/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h
> @@ -55,6 +55,7 @@
>  #define PIPELINE_SELECT				GFXPIPE_SINGLE_DW_CMD(0x1, 0x4)
>  
>  #define CMD_3DSTATE_DRAWING_RECTANGLE_FAST	GFXPIPE_3D_CMD(0x0, 0x0)
> +#define CMD_3DSTATE_CUSTOM_SAMPLE_PATTERN	GFXPIPE_3D_CMD(0x0, 0x2)
>  #define CMD_3DSTATE_CLEAR_PARAMS		GFXPIPE_3D_CMD(0x0, 0x4)
>  #define CMD_3DSTATE_DEPTH_BUFFER		GFXPIPE_3D_CMD(0x0, 0x5)
>  #define CMD_3DSTATE_STENCIL_BUFFER		GFXPIPE_3D_CMD(0x0, 0x6)
> @@ -138,8 +139,16 @@
>  #define CMD_3DSTATE_SBE_MESH			GFXPIPE_3D_CMD(0x0, 0x82)
>  #define CMD_3DSTATE_CPSIZE_CONTROL_BUFFER	GFXPIPE_3D_CMD(0x0, 0x83)
>  #define CMD_3DSTATE_COARSE_PIXEL		GFXPIPE_3D_CMD(0x0, 0x89)
> +#define CMD_3DSTATE_MESH_SHADER_DATA_EXT	GFXPIPE_3D_CMD(0x0, 0x8A)
> +#define CMD_3DSTATE_TASK_SHADER_DATA_EXT	GFXPIPE_3D_CMD(0x0, 0x8B)
> +#define CMD_3DSTATE_VIEWPORT_STATE_POINTERS_CC_2	GFXPIPE_3D_CMD(0x0, 0x8D)
> +#define CMD_3DSTATE_CC_STATE_POINTERS_2		GFXPIPE_3D_CMD(0x0, 0x8E)
> +#define CMD_3DSTATE_SCISSOR_STATE_POINTERS_2	GFXPIPE_3D_CMD(0x0, 0x8F)
> +#define CMD_3DSTATE_BLEND_STATE_POINTERS_2	GFXPIPE_3D_CMD(0x0, 0xA0)
> +#define CMD_3DSTATE_VIEWPORT_STATE_POINTERS_SF_CLIP_2	GFXPIPE_3D_CMD(0x0, 0xA1)
>  
>  #define CMD_3DSTATE_DRAWING_RECTANGLE		GFXPIPE_3D_CMD(0x1, 0x0)
> +#define CMD_3DSTATE_URB_MEMORY			GFXPIPE_3D_CMD(0x1, 0x1)
>  #define CMD_3DSTATE_CHROMA_KEY			GFXPIPE_3D_CMD(0x1, 0x4)
>  #define CMD_3DSTATE_POLY_STIPPLE_OFFSET		GFXPIPE_3D_CMD(0x1, 0x6)
>  #define CMD_3DSTATE_POLY_STIPPLE_PATTERN	GFXPIPE_3D_CMD(0x1, 0x7)
> @@ -160,5 +169,6 @@
>  #define CMD_3DSTATE_SUBSLICE_HASH_TABLE		GFXPIPE_3D_CMD(0x1, 0x1F)
>  #define CMD_3DSTATE_SLICE_TABLE_STATE_POINTERS	GFXPIPE_3D_CMD(0x1, 0x20)
>  #define CMD_3DSTATE_PTBR_TILE_PASS_INFO		GFXPIPE_3D_CMD(0x1, 0x22)
> +#define CMD_3DSTATE_SLICE_TABLE_STATE_POINTER_2	GFXPIPE_3D_CMD(0x1, 0xA0)
>  
>  #endif
> diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
> index 3db7968aa5e2..e58eb8b9db78 100644
> --- a/drivers/gpu/drm/xe/xe_lrc.c
> +++ b/drivers/gpu/drm/xe/xe_lrc.c
> @@ -1966,6 +1966,7 @@ static int dump_gfxpipe_command(struct drm_printer *p,
>  	MATCH(PIPELINE_SELECT);
>  
>  	MATCH3D(3DSTATE_DRAWING_RECTANGLE_FAST);
> +	MATCH3D(3DSTATE_CUSTOM_SAMPLE_PATTERN);
>  	MATCH3D(3DSTATE_CLEAR_PARAMS);
>  	MATCH3D(3DSTATE_DEPTH_BUFFER);
>  	MATCH3D(3DSTATE_STENCIL_BUFFER);
> @@ -2049,8 +2050,16 @@ static int dump_gfxpipe_command(struct drm_printer *p,
>  	MATCH3D(3DSTATE_SBE_MESH);
>  	MATCH3D(3DSTATE_CPSIZE_CONTROL_BUFFER);
>  	MATCH3D(3DSTATE_COARSE_PIXEL);
> +	MATCH3D(3DSTATE_MESH_SHADER_DATA_EXT);
> +	MATCH3D(3DSTATE_TASK_SHADER_DATA_EXT);
> +	MATCH3D(3DSTATE_VIEWPORT_STATE_POINTERS_CC_2);
> +	MATCH3D(3DSTATE_CC_STATE_POINTERS_2);
> +	MATCH3D(3DSTATE_SCISSOR_STATE_POINTERS_2);
> +	MATCH3D(3DSTATE_BLEND_STATE_POINTERS_2);
> +	MATCH3D(3DSTATE_VIEWPORT_STATE_POINTERS_SF_CLIP_2);
>  
>  	MATCH3D(3DSTATE_DRAWING_RECTANGLE);
> +	MATCH3D(3DSTATE_URB_MEMORY);
>  	MATCH3D(3DSTATE_CHROMA_KEY);
>  	MATCH3D(3DSTATE_POLY_STIPPLE_OFFSET);
>  	MATCH3D(3DSTATE_POLY_STIPPLE_PATTERN);
> @@ -2070,6 +2079,7 @@ static int dump_gfxpipe_command(struct drm_printer *p,
>  	MATCH3D(3DSTATE_SUBSLICE_HASH_TABLE);
>  	MATCH3D(3DSTATE_SLICE_TABLE_STATE_POINTERS);
>  	MATCH3D(3DSTATE_PTBR_TILE_PASS_INFO);
> +	MATCH3D(3DSTATE_SLICE_TABLE_STATE_POINTER_2);
>  
>  	default:
>  		drm_printf(p, "[%#010x] unknown GFXPIPE command (pipeline=%#x, opcode=%#x, subopcode=%#x), likely %d dwords\n",
> 
> -- 
> 2.52.0
> 
