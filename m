Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCQhDgd1y2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:17:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6DF364F56
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9B610E87E;
	Tue, 31 Mar 2026 07:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NK0DWAW1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8214610E87E;
 Tue, 31 Mar 2026 07:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941443; x=1806477443;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VBUjXiZam0mVMEeXSmJTQ68Qw6MkvRBoC0DnsMrdB6o=;
 b=NK0DWAW1RbRDPE83Lmg/cehKB++MW2x754GJszRyEB8j9Z/zCOElJ2Fh
 OR8FOqpZ8yOWeUtsxZAvIYLcgQHTXAUKc9+YIGlP6cJ6Y+6/cEP8Z9d4e
 lLJbKJEd+4ieUHXqG0IE/X1La65Lobp+yT5aqOaZrxWWxrjVt5nD6/sfL
 /Nlj54Mprese/j2wQHnHMS5cSzP8MgaHD86d8KTy5jo0SBdtZeObqAecj
 6kjba7YifwbicLZUd1AFCFw+v9SGOFtBFKKsCafV4tQ7OyEhRjzGS1BBJ
 wGJtZmiHei/GDkVgkwoJrsAoQ1G3/brVV0+ggpWD5FfycOqF50O8tXHew g==;
X-CSE-ConnectionGUID: RDSL9mYLTpGEpS5EJJUkCg==
X-CSE-MsgGUID: ZtSUs+vDSzSJlW+C/IXylQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="86638613"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="86638613"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:17:23 -0700
X-CSE-ConnectionGUID: +ccVojeKRO2VMzYJA1mw+A==
X-CSE-MsgGUID: +/y2v2l9TO6F+xAewM6fDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231213502"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:17:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:17:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:17:22 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:17:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jc3gOjEVs0t8e1CA0H/BbPlI6nbIcVEwEfs4GjbCpMLDiuJXjfUsL5UNtn7VLbBuFgXaIoe9o1BjFCiL6vBB+1XjtEbgxWFpbMxXrj8gcx0W2yUdpiomUbcK3AV0vLZjwCL6dNsXFI7NQFWunXEmUXzEE3xAXTZInupbH5bMPaTzA6b+/W4siYAElryabwEoV1+LOpSELZD7acRDxv3mqCfVYma63u8QGr99tpTJAJiZe/wl25XS9DbNq9DTFpB3i8+hAHj4GNcPrsCepzbZlpaQB5/EuDmdjCimdbdfk2g9V2udQZSB8WwoKOQr/j3BnQl81oa++qJW/q9kEW5Ojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Pv0rMiHOyY9xjg25YEyUyc71adv3M6z5toFywdel7s=;
 b=SvLagvu9J1szR4Kh3nCrpY4h+9UJNcS26gpjzHBhI715fQwrbgmCqoKBvdXqmZczGK9xdfL0asiKf5iP8a+2oTC1EcejWznJkL3t9JDwiI1T2uQ8QkyDAjEcTulYNSCs26q7aJBBkW1+VuNaPXRFYkCIu4eWBabtDJUK78gMyExPeMw8NLdWqVeHMmGhpfhdZ5l9miSix20kDq/Nb97rMZmG/+pnLQKbzenTqz+foj6x5+0GZKUOTc32i6gFkpR4lFJnEeBe0vXE2jt1Cxo3kdxtRFx1wpi+Ej771Sp0Efuju9r29AlO0s3Nr9wKiFBfUER3AiA5EsOZNxo2B3WMIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:17:20 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:17:20 +0000
Message-ID: <b26961dd-0b40-4f68-8b7a-780c0912ffdf@intel.com>
Date: Tue, 31 Mar 2026 12:47:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 20/26] drm/i915/writeback: Configure WD_STRIDE reg
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-21-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-21-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0114.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::17) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: d92078ca-c397-4a5f-2840-08de8ef58b9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: qyu1A0xGGRYs/Ft/ruiwV8LXhD6X/Nce+p3yMDcznoAf4L9t5RujE04gUHjh5tP64SLc+bmtPZEVzP2mklHSftSLxVqukJHP4R2NNh0Tze8Vqz/+Ze4eq6RHN1ANgq5muLTrFXKo6J8bW3aUqMgexU3DaXyCeYzjyjb0127gclr5asPWkcYGuwUKzd0vlAd5V0fn6HCpz/LDtginBgxaabrwKezDu7ENAXK4I9dFWPqivKdRP4EEGfr6DgYP/Esq3zy20WR3k+VyZkGbGe/9GnH3IOV/rV+xK7sOGOpOHtvjXr1VlKS4gsxxa9wbPvYUHEUtWJShRgQDbJqwHrYovT4NL8quvhkX79baOr8YEI8cqEBUfSBIplblvhXS0IC7C2FgAeUJz/C5QsbR9Pse5LXLz22yRatipnTYBmwwJf/dJIulVeEQCY4skm4pvRXqlUb7qDBlbdjRXUSJBMhzWDlZkZ9/zqzdm1JDgdsC+JY5sBToWb/pQtqolmwDOgUb0nVF++AhdsNZAKOJdps3n6iTabY4dXV4FADK/zgWdeGpyLyP7wj72erdbGbOjsoT7ILjYISVFgH4P01eTMisZB46MD393sgSCLbYVq4rhEk7OmC1WxV41XpbHafa6NP84Gm/GJ3uYIWN6pV7IMNeXcCo0oxLeSAmK2gfNG16dCB1ST052wWGcxxO1FoT4/5gZDS614y/hp6HcHX6JUKpGLU/hccR+u0gckANqqbf4JM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGhFbHNxUFVpTUxqSVQ5RWdockwvbHJNYVVidmdsQlVDNG91dzgvMVRhSlN0?=
 =?utf-8?B?aThuSWptTTkvRG1DZmcvcmRRRmw2ejBRYXBXa3RQMW5DT0gyOG5LdzlhdVpU?=
 =?utf-8?B?ODN4bE41OWpYQ296RnlnUzdiVzcwVzlxZWp4MHUvZXppVkMybzRrNVU2OHhn?=
 =?utf-8?B?OXVoVTVpMzdNOHVjMUllWjlYV2QvSUFWMGlXd2htZUk4TmlleFZmVldoYlc5?=
 =?utf-8?B?RkEwaWhEMGJxZWNkRGYvSTZCZWhxeHJLaTRRVmlxZ0d6SC9rbmhLcjB2K0p2?=
 =?utf-8?B?M3dPbjErRkV0RHAwV3lDdVA5aWRJTElHUVovVUNYd245bTJOWkF0a2tXKzE0?=
 =?utf-8?B?ZExCK0RUMU5QaWdFd0YrSW1aNkJFeWppb2pJSHJCbFk5b2JyMGJaUENYdS9O?=
 =?utf-8?B?bnN6OFltZm5ibndrL0YwS3FRcko1ckd0alR1YzZCdS9XcGk1OWpiSkcwdGJa?=
 =?utf-8?B?ZVhQMm9hTW44K1p2ZkVaOTdWN1dtR2Q1aVdPZ0xBaWxiMzZSTGJTTGloVHAz?=
 =?utf-8?B?VGIxUThnSEd2cVNkTkhZaWhRbXdEbXkyNkxkdlNFZ2Z4V2Fpc3ZPNGZ4Z0xt?=
 =?utf-8?B?T1hHTGMrcTJaSlg0aU9yZHRVSElkcWd5K2FnaVUzQ3Y3aEE2YW1Sazd5QWRC?=
 =?utf-8?B?RVd6NGs2b3Jxem1oWlpQanBQZUd0UlhQK0d6K01DVCtJYTFBQW82aGpPaWNM?=
 =?utf-8?B?OXYxYWpucSszd3A1NTljcko4dWNNNUVDUTVQcGJWUzNxNUxHVi8vYTVoWitG?=
 =?utf-8?B?OHlvMmpJeGhaVXZOTE41ck1GQW85NkE2K0lJNTIxY094VnBYU0ZQZ3dnYjkr?=
 =?utf-8?B?RGpGZ3labGhDSTdUeGQrQ2FRYlFSYlV6MmpPWUNnd0ZKWm5JREowdnJjbE9M?=
 =?utf-8?B?VW5EeHFjUVNuTzZmZU1ZS3JxVjhBSU9CdW5vMHdXSUQvQVRiRGFxOUM2YktG?=
 =?utf-8?B?YjJ0UW96c2s1V09ZcUkvWHMvTjVxc1VJdStBdC9SNUZIV1Vvb1NnY3NERm1O?=
 =?utf-8?B?UTZLWlNKbWh0Y3IwaFpFaklCSW1UVGtOTFQrUzRYV0JuN2lMMlJkVXA0UTha?=
 =?utf-8?B?RTRkNEd1dnlzNlp1V2I2dTBRRFNFOS9kTUtGVlBkNHdiVEIyd0dDV2FYbUln?=
 =?utf-8?B?aHFvUTI4eEZPbURONVlueE1seml6Qm5RZGlEQkQzRk9MRXhQQXdsVHFhc25Z?=
 =?utf-8?B?d0h3UUdGVXlnZmVyekllTGVJRlJSUlFTc2J5ZFdrS2ZLWUxKbFVCZ0ZrT0d6?=
 =?utf-8?B?aE83L0JacjgxZ0RLc2RiejA0MTVLYndINnB2dlVYZWhXWk9KbVJXckhVd25B?=
 =?utf-8?B?d3psUGVXdHNwQUliYTNtaXF0dFZaT1FnM3ZvRUt3bmRvd3kwUHpkTThSS1N5?=
 =?utf-8?B?K3hIdjRhQmViRnF6dDhwVGl0VmZrT016NUhrVkhqTytmalRTZDVVNUVpa3ZQ?=
 =?utf-8?B?dDVCMElveEZkREtWVEE4UzcwbUdnek1EM3pXQVRMaDNNU0JHVGZES1daMkV0?=
 =?utf-8?B?K2hYdU05QjBHY0tlS2VpUncxUStBT1FKMDdhdWlkSmpPdjFMdHFDTTdUeVZ4?=
 =?utf-8?B?QWxKMi9pSlliMTJnRnhMQjVZaXhLbnpwV2pxR1A0WUQxZ2gwY1JFOXpZdjJm?=
 =?utf-8?B?Zis4VERzMUYwSE5DMXd2L2lvYXQrNlNuV3BjOHQ0amdUYlYxb2xYS3cxNCt3?=
 =?utf-8?B?b0ptZHhvR3VLNkt6eThvZlVJQjZnSnNyZHU5cHFxVDZOQnp6Z25IazY1M21y?=
 =?utf-8?B?UE1kK1Vlbko4RytyTmdFQ3NrRElXdVVVTkQxRW82bVhiR1N0bzREclNBRzh2?=
 =?utf-8?B?eW5FMjNOZStwQkNOQlVGK0hQYXh5VFZ2SEZndjZvWjhiRnRFSElkSkN3T0VI?=
 =?utf-8?B?cGxISkFqMTR2eDYwN0ZKa0gxUlVGTXF0Q245SDF6WTh5Unk1Mm1WZlFFUWFp?=
 =?utf-8?B?cVc2TWJIOGFSejBCd1gzU0FVQWt3ZXpveFBUVFRTRGpPUWJlQk5RNkd0Vnd6?=
 =?utf-8?B?ZzF4Um5Ta0laR2QxZGpVLzdCY2JmbkZnandId3FveU9NTzlSOGZLQmlFOTVI?=
 =?utf-8?B?Wm9xRDR0QW9JRDVVL1NPK29WWllCb2RYZGhFdWV1Qmw0UVZEUThyb2czcWhs?=
 =?utf-8?B?T3VOejdWTlR6ZVdzMmx1WXNKT1hzaFFDbXhSclU1dHBrQ1hBaHRBMkRzaXls?=
 =?utf-8?B?d01reUl6anUvSjArY1ZOekxtdEQzdFFVSVg5RWRqNnZYdFRlOXVjYUNiR3Za?=
 =?utf-8?B?VncyYXVlajdyWmZXQlNXcXpYZHlMY1dsMGptS05hQ3ZIVEF3ckhEaDUxS2RZ?=
 =?utf-8?B?bTU0Vit0bEJsTHBWSndBZVZBekhBamN5TWlRUWx2emFYcUVyR0sxWjl3dlJu?=
 =?utf-8?Q?4VQENENgn2At49FAiufiGv9wKp2NgK/xzx2gG?=
X-Exchange-RoutingPolicyChecked: HYKsHaYmOi0qhxxeIZmZ/8l7KOb9q5zp699WGTfJCiccVVWhaT48848ck8Mp1KpEtyQRBvHqPITMjzKuo04sttbBWn5mv3Jl/m4C/sLZCI4zA4CRQAMh3ok7j4ozoJVRpRlgHoyNn4ntjZ8hqGJ0U6mvsPc1w46PKw2XdTIer7YE+n4COmtiZ5MV16nGsD5pfGWQoMXekHzCVAE+UhpXpYBL5RguiOJdj7GkEejMV13PmLOmgZEox2I2vYX8mP3HjyoYSpslRqu0EXg9kFYGb7rNmTvCrd2Eh6ZHG50qZNsOKMhp6vter0rn9iuBlJdL0dtNndTgBR2p119GyUFp6g==
X-MS-Exchange-CrossTenant-Network-Message-Id: d92078ca-c397-4a5f-2840-08de8ef58b9b
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:17:20.2374 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYveiCxR5ehRPWZ+G/5Fj+fORhwdTGS0+zvaGvgydYNc98ih6+ydidREWZJncisn1EWdS7oidQljlim4y+WvNaP7vB59K65A1ApafUMAIwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7F6DF364F56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Write to the WD_STRIDE register using the appropriate calculation
> based on the color mode and hactive.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_writeback.c    | 36 +++++++++++++++++++
>   .../drm/i915/display/intel_writeback_reg.h    |  1 +
>   2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index d3c3716a28a9..e2f7c46015d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -231,15 +231,51 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
>   	return 0;
>   }
>   
> +static int
> +get_color_mode_bpp(struct intel_display *display, u32 color_format)
> +{
> +	int bpp = 0;
> +
> +	switch (color_format) {
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_YUYV:
> +	case DRM_FORMAT_VYUY:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_XVYU2101010:
> +		bpp = 4;
> +		break;
> +	default:
> +		drm_err(display->drm, "Unsupported format for writeback\n");
> +		break;
> +	}
> +
> +	return bpp;
> +}
> +
>   static void intel_writeback_capture(struct intel_atomic_state *state,
>   				    struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
>   	struct intel_writeback_connector *wb_conn =
>   		conn_to_intel_writeback_connector(connector);
> +	struct drm_connector_state *conn_state =
> +		drm_atomic_get_new_connector_state(&state->base, &connector->base);
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct drm_writeback_job *wb_job = conn_state->writeback_job;
>   	enum transcoder trans = wb_conn->trans;
>   	u32 val = 0;
> +	int bpp;
>   
> +	bpp = get_color_mode_bpp(display, wb_job->fb->format->format);
> +	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
> +	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
> +
> +	val = 0;
>   	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
>   	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
>   		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> index 5e7c6c99d191..f526af0f9aff 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> @@ -60,6 +60,7 @@
>   					_WD_STRIDE_0,\
>   					_WD_STRIDE_1)
>   #define WD_STRIDE_MASK			REG_GENMASK(15, 6)
> +#define WD_STRIDE_VAL(val)		REG_FIELD_PREP(WD_STRIDE_MASK, val)

Unused and perhaps not needed because of alignment.

>   
>   #define _WD_STREAMCAP_CTL0		0x6e590
>   #define _WD_STREAMCAP_CTL1		0x6ed90

