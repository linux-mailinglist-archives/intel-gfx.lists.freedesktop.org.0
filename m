Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tQ4dAwT/Mmqb8QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 22:09:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8E069C4E4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 22:09:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YUFOPimk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB0E10E308;
	Wed, 17 Jun 2026 20:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1EF10E308;
 Wed, 17 Jun 2026 20:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781726977; x=1813262977;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=alGG1hRmBHwysn4evZIV+U1X1Od6dZXLR0h/Tp3wl1c=;
 b=YUFOPimk7byF1aHX0RRQh0QQEqGjb/vhBmAv5NsZgj73J4zHe1eUMgdO
 tei/QFJd+qBIm6J7WFnoo3gKgtOEkcfT5AtLjrXIiGJFCG6M2yyW2/QI3
 Mb9Xtny2JRAN4x9/ydSyFGA42JV8jFo3Px+pmrrg/x01p5KS2/mtd1LlK
 nnojOL+YMZV48TbgVBRbZYwlGZI9OG5N10glZyLW+bs3mDUUi8ai/PKpq
 nhEqeXi5ky0Qwx4EFGnyTEcJizDXij2aQlJ19taUq7NE015q2ENzqfraS
 HmjkA39wDGWWpM8AdnN3fCQUXiyR/ILUpCuMZkhX9LHlLGHoDkJkeGAbw A==;
X-CSE-ConnectionGUID: 02RSvIaMRKmT6i54nmyqqg==
X-CSE-MsgGUID: paT7SR44TBOff8gV/bD1eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="81530428"
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="81530428"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 13:09:36 -0700
X-CSE-ConnectionGUID: p1nuV90QSGCESHmvKDTHIQ==
X-CSE-MsgGUID: VJBrUHgVTzOdBDFCIBHfPA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 13:09:36 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 13:09:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 13:09:35 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 13:09:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cgj4is2c0Vtd2XT0tkPORUoKkJ6ke9S9qpq6vl0ccB+Q7ibIjWBDhIzlQZf6Vpqs6bbUO7HlBYHPXhy0SLQhCBQrcP0LeG0Yq2l59MBE59/4RfJRaGOCKY95cXzBXW3Kp796HJ1h849ScJmHiw7FaMyceHxXosi1W9hGsfSMPu05UKbLwHLst3xe/nRow7ahnFFMhPOpv2nwAuHFoNAWTbicCiKrPFVUK47KoFL90eWQLWX5UGu/AFeeTM9ZAFJiyJwE/SOlf+fXwhXjMPdF/jKyzBfTvUopc0HYMszV9G6SAaQrH6zhzXJvy0Uryo8Zb23xwkFHPFuB7xbLDija9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83iCzL56QEhEQfoIjYp0fVXazb274DBpFpNHVtXtp/Q=;
 b=h+new+nzxFD315Ou/le3xtuMT/mZLb4Bs2xHT49xYpvyL2gH1i+rroDdBHBIoEPgHpoQroCUhhXnhxNjzlMpAwzHkiQJeVl3mgfmUd5jG1XsgSCgM3oXJ2K3dF/QSb/6T0KUkRepZskCX7Lqj6GScW9+jKvlB/jzOOM6eRantBKfiTcScLwNO/OBxPNrI1WR9ujZ+cEoVitQfbSKQ51gzhlnHxsAZuhNERRE/agsVVSVURCRDk0ll4m/a89IfLSdI7buvOjoKl0fT/yihpBQ4HelUiqnMCxA1dL3m7ewBVfvKT+VzfTVOR3XpI3uZvfifv9b+va+B1guaf3G92Fdxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by BL3PR11MB6434.namprd11.prod.outlook.com (2603:10b6:208:3ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.12; Wed, 17 Jun
 2026 20:09:33 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 20:09:33 +0000
Date: Wed, 17 Jun 2026 13:09:30 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dim-tools@lists.freedesktop.org>
Subject: Re: [PULL] drm-xe-next-fixes
Message-ID: <ajL++rKbSpYgBRw6@gsse-cloud1.jf.intel.com>
References: <ajLy2brwvOZEFNNN@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ajLy2brwvOZEFNNN@gsse-cloud1.jf.intel.com>
X-ClientProxiedBy: MW4PR03CA0133.namprd03.prod.outlook.com
 (2603:10b6:303:8c::18) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|BL3PR11MB6434:EE_
X-MS-Office365-Filtering-Correlation-Id: 50a3a0ef-59d1-473c-183b-08deccac58d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|23010399003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: eWV37+7imQpi4LmUsXW6ZXgFZT6UaENaOs62CIVnLqjARlhrKpZ8ww+y/QhgSNF/TcylUd3CYHiuvJvHoo4X5StX3uKi8VD8lQsKFzBW+o+O6B9Y4OBWR18ByJUl6d0+1KGE/OFyBT49ltM3e1er5JOCF/5g7DVZiE0rrhORcgkG5Hd5DottOO1LnwciAavOuI0TgdsxoXenkOet6PJH6Av2zNZpPLasN9IEFQ/V+YoeMlOOcMcZcxBDjlJO0LOxY0JJWTkWndJsS9/Jc0oXrYMXtZgPQh3oaEvdr132QM+f4p2mVxRM+EUbNm2XJwbkskk7b6W1Vc7dEdnw5dOAIdWB+5wDA2Hvv4mSRjX64eaYey5Gul3pOXtkMbxU2/EAbcVZTEa857PvsEpaC7z/ntvKDff9fTbJMKZ9FGG9tdZjnwoRk7K0XbCXcSu8KCyaetzX5SbEDNZxtWCNAvQmUoQc4PySzk419OH4oTyRL6kZB3rq30o1VRcWDJ4Ws/exng5MHteNDjmcl4Qr1q839w8iWx9B5SfvtWhVldlsycXjy3kYsmvv3UDZUIw6+ZN8E8rjX/FpSHDP5h7D4Bdh25MYq6zl7WtVa5ZANWwa74blz/dH1NMo3o3iEooIawxBiLWSiSHyjU27DprmCP1fMw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(23010399003)(22082099003)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1ErMzN2YS9XVTJFOHErZFpBQUxhWVhDZEFxdVIyZVhqbHRVa21uNnZOdlBE?=
 =?utf-8?B?Umk0cWJSbWlrZkNQL25VU1IveUZsT2llSG4wM05iMWtUNG54dnd2biswSE5k?=
 =?utf-8?B?bklobGN3YnRoTjJXaWVPb0pJREorbVllSUtEWDMzMWxkQ2lCSWozVlZwdXJL?=
 =?utf-8?B?ZjVpM2FDM0VYUDFUMmtWdEVkenMyZW5KYmEyVWVxaGtFa0ovalM2YThGWWlZ?=
 =?utf-8?B?ZmtTL0dYM2x3QnVicFdKbmswVkJONlNvbWcvRmF4LzVLcm44aXp1UURUd0Nj?=
 =?utf-8?B?ZDYxTCs4QnBKS0Z0ZWlGTjZFRmZIY2xSdGxBSVFvSUZpZzg1cmZNK0c0dzBv?=
 =?utf-8?B?aDk2cE1QeWFuZmZtRFo0MUxUaVNxbVB0Kzd5Z3RKWWtoWU5RN0JCRXBEUVdr?=
 =?utf-8?B?WUM2SzZmRW16dSsvL1QwU1gweklhQWhRZXlYQVd6Y2NyTTh5LzZ1NkdoQmxx?=
 =?utf-8?B?dlNIdHRDWE9ELzFQWncyTE9LOXhPeitEUlE0eGhVUFhPbHNZQVMyQzVBRGty?=
 =?utf-8?B?V0RvM24wTW5sWVlNcnMyVzJSaDVkV0gySWZiUHF3MzhvZnZ4YTM5dnNoMjV3?=
 =?utf-8?B?U1A3aXRNZXlhbEI1b2NnRE1idlIrL3FTaGNEZzFiOWFXTmdDWTVneXlzN1ho?=
 =?utf-8?B?TkxJeXdNMG5jcWp0K3A5cmoxVmRIckJZR3RMemJZR0JtZVprVmk2MWU0dmlQ?=
 =?utf-8?B?eW01Z3BiUzdIVVBSMkhZbVJ1UG1XSDFVQzBXdlQrNmoyNGZOTFI3a2Ywc0tL?=
 =?utf-8?B?MzJjOXJaNlNjWWV4SXE1V1REYmZsdUhwaXo1Z0pyK25NQ3FmSm9DeXhQcVFU?=
 =?utf-8?B?RnNobU8vMlBMUTdHRUl1VGI0Q0ZIaGU2M3lFZHRCSG1BdUkrdFY1eUUxNE5r?=
 =?utf-8?B?NFhhejN6ZjhQcTViOS9kbmx1WjdYbnp6R1ltM1ZEcHRGSFdIbzMzWWZtMWV6?=
 =?utf-8?B?bGQ3UHZ3T0dpSG55emk4RDlWWjBxdWlOZ0piOGk1U2RJd251NnZkS050Z3dt?=
 =?utf-8?B?OGFYVkZncHJ4QllHMUZZMG8rVlZoVmtKWWQvbjN5V21ReDdiWEo0N21RdjJO?=
 =?utf-8?B?dW5wQTNYcXVqTHNYZ3BPWlE2OFlOYkQrck9rdS9mR2x6ci9pajUyTTRPYVR6?=
 =?utf-8?B?L1ZDUWVoMXltemxQdkpXSkRwbUliNFNUYkR1NDM2R21wV0cwcTk4ZVl6WXlJ?=
 =?utf-8?B?RHh1aXVTN09HSXFPcC9Eaks5T2k0WjlGTXlMeWhab3c1aUkvSW9ZMS96YzVh?=
 =?utf-8?B?UFd1THdnVGJLZDVjVmJsck1HeDFjTFdpZ05jV3c4U3ZKWWNTY3k3MzlIMUVK?=
 =?utf-8?B?UThabWdqWEN0c01vYzJBTElsUSt6dElSd1R4SVlJcStLQTBQdGxGRVN0eThk?=
 =?utf-8?B?MFFEdkgyZUhGeUZ3SWhsc1B1L1Fab2FYT1JOVXdjSGwxTE1Id2VTZjQrY3pP?=
 =?utf-8?B?MmlqYkpEUS95NnIxT3FJRytHRWtFWUFZTmtLdmkzc2hEbURIZU1VZTFUZUV1?=
 =?utf-8?B?KzNOMFJMVmFuVnBWcVVLOGR3MTBTQnpKeFpCMkgyTUtmOCs5R3hmbjFWSWdX?=
 =?utf-8?B?N05SN0tYU1JIWEQyNGs1WHNoWWMwbVRCVCtzUlhESUJHd0sycVlDanY1ZVpS?=
 =?utf-8?B?VHNsMHoxWkUxaThoa3lEcEVvN1dxWVpEd21xKzh2M2I4a3lWK1FaOFlZcHJZ?=
 =?utf-8?B?NEE4c1J0c1VGbkhqVmk2dUYrTlZDQytLU09LUzIrT2JNMlBhSmM5dzQ4UGdV?=
 =?utf-8?B?UTdmRU5uSm9xV2NFNlZGUEt5Q0kvT2VEdUFBamZIU3FXNSt4YmlSNnU1a2Js?=
 =?utf-8?B?MVN6RUJkK005YnlzY0oxaWlyejAwbkMwcEVtWmp1MklxSDlVbmM4Yi9QSmds?=
 =?utf-8?B?Q0tGR2tuZ0JyeGJZSWk5WDg4R0FQUUFITWZoT1IzQVBqY3ZrZy8zRTRNRmg4?=
 =?utf-8?B?ZWwySkZDTFFvK09jNW8xWDRYbHF4OUVCdXpCcmRkL05SbGh5Tzg4WWpIa1FV?=
 =?utf-8?B?YVA5d0tIVjB3b2pUWE9aN2cyUUphODV5aURVazBOeTljWm1iWnFoWnhaN3lj?=
 =?utf-8?B?RkZvMGtZWWpKa1M1Q1RLNHppSkJSWUcyNUllWW13bWN4dTU2Y3U0RGxEQkps?=
 =?utf-8?B?R1lrd0Q1L3J4MG13MHZDNHdoY2NlN0MxRnVNZmpCNkpHUlRTT2FmeVVIQnJz?=
 =?utf-8?B?dU9pT3ZlQ3V3UXRqRGdpNTRFNGZQVnA4TzRmZXY3VXcyeUhtOFNSZGZ4WGZj?=
 =?utf-8?B?MThCMldObHVwV0Fma3Nwd21Od3NUMnhNbVNXQXArQkZIcXBVRXR4UTB0SHJ2?=
 =?utf-8?B?TlAvWmNiWDk2SXBHOEsyS0dSS085aG9rYXY1aXdjdDVsWWg0STdMQT09?=
X-Exchange-RoutingPolicyChecked: rvKq2t3KrfDvSrxw4W2oKOzPqXyL3C9C/LNRUdhvGU/qaUGwiyMx9SBqvutrQy/BBtds8eCoTD/CVdbcHvloVeBU/L0nS05KyS/OogietwuKNugO56TNCA47x0FQPtTdMPQM8KKCPmFdoC+WP+KCESHsfQfoc0+ngN4TUAqSAhGRz3deGiMwN9UmwzAPdwV6tCFpY3a1kQPD792VNC4u6/fFkpryIulRcwIP6iTEo3meUynYtEwvguyKCKd22BHw0kA5fU4csIttGLy9vPKEUWyU3PSFCcAdz34EppqCNllqExe0ZaKJB/I+PsK3BbLzMupjiYin8EPJgm12Y59JBg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a3a0ef-59d1-473c-183b-08deccac58d3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2026 20:09:33.2106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Z//B3zJbh4oCi8tMKTIiWmDPZdOHA043xOo0lAzCrXiA+RWSio/hkUlPGFixXKoq4D9ZCK4XBpMronWnUHWhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6434
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A8E069C4E4

On Wed, Jun 17, 2026 at 12:17:45PM -0700, Matthew Brost wrote:
> Hi Dave, Sima,
> 
> Here are drm-xe-next-fixes for 7.2.
> 
> Matt
> 
> drm-xe-next-fixes-2026-06-17:
> The following changes since commit 52d4ab1ca790a668cc8f2c27017138b1c467168c:
> 

Rodrigo pointed out that I omitted the summary here...

The changes we have are:

- Set TTM beneficial order to 9 in Xe
- Several error path cleanups
- Fix TDR for unstarted jobs on kernel queues
- Several TLB invalidation fixes related to suspending LR queues
- Some small RAS fixes
- Multi-queue suspend fix for LR queues
- Revert inclusion of NVL_S firmware

I also generated this PR using the following command, though I’m not sure it matters:
dim pull-request drm-xe-next-fixes origin/master

Rather than:
dim pull-request drm-xe-next-fixes drm/drm-next

Given these issues, please let me know if a regenerated PR would be preferred.

Matt

>   Merge tag 'drm-misc-next-fixes-2026-06-11' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2026-06-13 08:10:38 +1000)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-fixes-2026-06-17
> 
> for you to fetch changes up to 0b5ed2756d45b04669502a1f13b1657ec7664571:
> 
>   drm/xe: Add compact-PT and addr mask handling for page reclaim (2026-06-16 10:18:52 -0700)
> 
> ----------------------------------------------------------------
> 
> ----------------------------------------------------------------
> Brian Nguyen (1):
>       drm/xe: Add compact-PT and addr mask handling for page reclaim
> 
> Daniele Ceraolo Spurio (1):
>       Revert "drm/xe/nvls: Define GuC firmware for NVL-S"
> 
> Matthew Brost (1):
>       drm/xe: Set TTM device beneficial_order to 9 (2M)
> 
> Niranjana Vishwanathapura (1):
>       drm/xe/multi_queue: skip submit when primary queue is suspended
> 
> Raag Jadav (3):
>       drm/xe/drm_ras: Make counter allocation drm managed
>       drm/xe/drm_ras: Add per node cleanup action
>       drm/xe/hw_error: Use HW_ERR prefix in log
> 
> Rodrigo Vivi (1):
>       drm/xe: fix job timeout recovery for unstarted jobs and kernel queues
> 
> Tangudu Tilak Tirumalesh (3):
>       Revert "drm/xe: Skip exec queue schedule toggle if queue is idle during suspend"
>       drm/xe: Clear pending_disable before signaling suspend fence
>       drm/xe: include all registered queues in TLB invalidation
> 
> Tejas Upadhyay (1):
>       drm/xe/guc: Fix buffer overflow in steered register list allocation
> 
> Thomas Hellström (1):
>       drm/xe: Fix wa_oob codegen recipe for external module builds
> 
> Wentao Liang (1):
>       drm/xe: fix refcount leak in xe_range_fence_insert()
> 
>  drivers/gpu/drm/xe/Makefile             |   4 +-
>  drivers/gpu/drm/xe/regs/xe_gtt_defs.h   |   6 +-
>  drivers/gpu/drm/xe/xe_device.c          |   3 +-
>  drivers/gpu/drm/xe/xe_drm_ras.c         |  61 ++++++---------
>  drivers/gpu/drm/xe/xe_exec_queue.h      |  17 -----
>  drivers/gpu/drm/xe/xe_guc_capture.c     |  10 ++-
>  drivers/gpu/drm/xe/xe_guc_submit.c      | 111 +++++++++++----------------
>  drivers/gpu/drm/xe/xe_guc_tlb_inval.c   |   7 +-
>  drivers/gpu/drm/xe/xe_hw_engine_group.c |  10 +--
>  drivers/gpu/drm/xe/xe_hw_error.c        |  12 +--
>  drivers/gpu/drm/xe/xe_pt.c              | 131 +++++++++++++++++++-------------
>  drivers/gpu/drm/xe/xe_range_fence.c     |   2 +
>  drivers/gpu/drm/xe/xe_uc_fw.c           |   1 -
>  13 files changed, 174 insertions(+), 201 deletions(-)
