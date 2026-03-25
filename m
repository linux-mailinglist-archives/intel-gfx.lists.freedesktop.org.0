Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLL9A2GVw2ncrgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 08:57:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714B9320F95
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 08:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682BA10E7FE;
	Wed, 25 Mar 2026 07:57:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8b2Icgj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6058310E7FD;
 Wed, 25 Mar 2026 07:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774425437; x=1805961437;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jfWY/zQUgHwCYkQJJ7MpxxttLet+o4TCcRl0PWdHrE0=;
 b=b8b2IcgjVr+DA+x4ORswiMQ2SR2OiqYDPpOnvjswX/bYFkYpsM9kNKyh
 j9aom0JZr5Z5RwwOmcSFcaPecX6HiXWhrBqt3vJex9UP9rkVC5lOfqttu
 X8q8hBf6YDDsjlH+4WDrB5xEQJt2vc9Z9Xaprn2SkhaB9RsPmQwLPLZDQ
 xdVlQGq+yGui0nH6MVPafWVEiu4c7J9y78AxmTNxedt5vlEHT6pxkj574
 3vZ1E6sWXVP3orIDmkFh4eSy9gvSWhvKFpcXpwd5s8MTn47vH3nzxTE96
 b9T7ozaT32/ygXx2LW2oOcpHmmjxVfwHvhQ3SioC8mXGiMSBPbLotP7CN A==;
X-CSE-ConnectionGUID: kVrZureVSUyD3I+whjgs6Q==
X-CSE-MsgGUID: YGT6xYQmRr2suRnLz7GSYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100904035"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="100904035"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 00:57:17 -0700
X-CSE-ConnectionGUID: ntdhYkjsTpmCDcIUz77lqQ==
X-CSE-MsgGUID: EEGZRRmsQW+nQtrCCv1bmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="247635525"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 00:57:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:57:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 00:57:16 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:57:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CK48dxe33sKVKZBqNVPY2W501CpB8lpKWY2yYgTci2hSJyjr49EsksQTtP49+FMtHTkBoe1oYCEBYYw96YTUokkmlCbWYqhENKubyokKbpfcdlPjFLdJf0tCG9Ms1qkvthYf7DI0kz5P3UuRU11GdqIT+fNn6c1qpt6si9o7dnA+c1uxLgHMallVGuuzUgymxmdbFCK1DKg5kYh/NPAY8DbpvS9JvkD75P/YMFN9FgGhCiyaFpXBfiHa0EbxcQTUfLqQbm6LKN3PvJz9E/Vev+t9MwBw3Oygb2RmNhanhMoKpwHZqpTbbsx//Xs2EhU2IHjWFPRUvJEwmHC2Hv9vSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n1YpnKN37fOHx0ZluMcdTtPqqq3Qkjn5Vmu0YWMtcLQ=;
 b=d3kF4UZBi+JkAauTg7BQ4mfxPobbhHsOtD/O34TUyunuRoiNSiRL+2KDTwbNxDTYmwwUUSgJbqnAsxmB9djgay4NVj66c3SyMFTxbAk1TndlJ6t2rV3tVkeBSqT9nrcOu4KfLOXpHErRFUu0bUlPOJo2aIeCgRS1b3A6mj+5s8Mz1M8WUMbaYugKnRzb5N6jB1YjYZ56FvjBHUFlTxMfpA8rVVy7KlH15ZvSbRasG5vOM7U5Chn5tCjY4e6HJH337jieQtC/TIZIHgHEZxqOATbITHV+9NNbus2Ra+cQydpka16iuzDh1QAtElhKZq5Eet1QcveVgWB+HJbspED3Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5056.namprd11.prod.outlook.com (2603:10b6:a03:2d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 07:57:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 07:57:13 +0000
Message-ID: <01b89e62-15c6-4f4b-ba14-5eba2b3d16b6@intel.com>
Date: Wed, 25 Mar 2026 13:27:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/19] drm/dp: Clean up DPRX feature enumeration macros
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-3-ankit.k.nautiyal@intel.com>
 <abP4vUF0YH2uA3-P@intel.com>
 <789bea1d1c00fc95782adcfe1ff0a85129b206a8@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <789bea1d1c00fc95782adcfe1ff0a85129b206a8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5056:EE_
X-MS-Office365-Filtering-Correlation-Id: b61c20ee-1949-4156-b03e-08de8a441f74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: gHXTZbDRLKuSGXLVDfbdoCQR468GplEvgiDkqX0PUYxGYjO05GLyh2A3fu0KG0sqUbP5tlRMp2+/VKbcgjE8sw+nPhXEwn0Exk9y8g1hTjr2a/C/LJMERZTn7OwmiLi22ybh1AM6aTw9dicU6+9YzKHd1XYnhEGHjYPEDpbloh8MYVbAc5h7VQ/0SAnS4aqhaVCfuFcorgUmRk9rNU5XF9KUxRePBJVJ2iFGymLLVZNgcwehBrlDyaFn0uJ4vba/Pu1Rm4UCLrqiU2NSKL1+BLzIZno89esbl2Ix8VOlrGBocqJaa0QaN1bJGOKJ89VUOyKKScvMYvowgujJqOVDkpCB0W4QuzH+YVsMHaQkG4c7vNJ0XtWo5fWXhKuoU6Vd9j2wDXPysFyb24kU7/WzuVDLTS82DM3VBvwes8pYlcEpJ5uT9oYqqc+nQE1DLJKmoQHE0ol17l2VdovyxmybtP8iRPfX4QWWyibaVenViGZbCrdyqCJ6bKUNhkMc2PAhneNkuaRnWackkcOnCkkgl2MTUCaoVrB+z89oTwuOmWaUFHI7MGUypJnZUzyvhTXSuqAznpUefWyjjdj2F4cpzFfRExMEWV5Q5siffeEKsQ5LDVp1C/BO6yLi/OVGOqGKDV8Ru8EDR+vYjPIHnW1JvQhaX64vgltmrfJF3qHr6BXcn3muaQGpNhiYZdGUJr+aEdEIKXSPkg6qqUrTaLHCnwJrFn05CoAXNOtMM2REfII=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXJFRjZsT0JBN2gxemNMZzcwbTVjL1NPM0hHVW9IRFB1ZmkvdUJlbFRqME92?=
 =?utf-8?B?SGRqeTFHSFppQnlwZU9jOUJHaWxNZHpKOUlNQjBVeFZGNGE0Y0YrYjBZcmxS?=
 =?utf-8?B?TjFJdmFlYUR3NXZjMkQ2amN2M2cyTmpUc3cvRDRvZklIdTA3a3JNTDR5dE5y?=
 =?utf-8?B?cWp3QXExblNpN3FHRzVxclVkdWhGSEptZW1Sd2JHRk1uUEp4SGQzSEVtUmxZ?=
 =?utf-8?B?Q3dVdXRIWjFDR0dqQUg4MGNBVmlLWEJyd0V5L2xPY1VzRjhjU3hOSG1FSHpY?=
 =?utf-8?B?dWR1WnJ0d2kwdDc4dFp1WHp2cSsxOFIyT3pvLyswQ2N6azlTNm5wcmJqZ24v?=
 =?utf-8?B?OWgvVi9kMVNOY2V2NmZFSTNoZFprb0xrcjcvSGRNTDRSNTdvaVRTdnNBQXBI?=
 =?utf-8?B?L0oySHV6NDZoQWVWMVo5L3hLM2ZONGMyTmNMcXV3YnREUElQWWZ5RlFjS094?=
 =?utf-8?B?YlFiRTRsWWJQdDM0L2RaZ0dDR2txZW8rMXZHU2V2SkhFMkJBTmFQL3lkQXVE?=
 =?utf-8?B?elZnUUZPVXhnQzNRUEF1ZzdzdDJhSnhQellLTWlrSU9VTWplWGhkUktLSmhT?=
 =?utf-8?B?bC9YK1cyYzhTb2dOWUVFYlRUUUd5WlJpWXltbkxLTm1NV0xGRTc4dXdSaUxk?=
 =?utf-8?B?UVVMWTRZUmJDTGZHZVNCS3FNZ1hiUy9hTGt4ZG5oeWlJT0VoaEJyMHgrZzlC?=
 =?utf-8?B?RHRrbmRVZUxTK1ZrQzRjMENRbjJ4N1lQdTVkVGNNTUF3Wmw4bURmZmhUWEMz?=
 =?utf-8?B?L0pMTmlyYVlZZTMzUTMxaFU5bGZNSE9UR01tREh0VDVjRzk3dWtVUDFaRFla?=
 =?utf-8?B?RzZVK3VmeWxiOFk2VzRXYnFhb0dyZUdXcVpjYUlXZkEvcmw2Sjc3aWhvWmVa?=
 =?utf-8?B?bzk0N0dxR29JVEtXL0dVYzMrMHVVSUtNT1o3V1dUQzk4OHJvRjhacFk4UDVL?=
 =?utf-8?B?ZkVwcDNuSHFBbUF5NGgvVC9QcSszWHpCVmVETlNaVkluTk1YZlhBUTkrQWJV?=
 =?utf-8?B?ZVpGMnhMVDBNc0FMOVRvVWRuUzY2K2kwTDV0SVNtMHRYN1ZaTXl5Rm4xWlUv?=
 =?utf-8?B?RGJjbTRZTVdCbndtblJRNWFZUU5pR1picDdJOWd1NEJQVnRSdjQveXFleWVn?=
 =?utf-8?B?bHY3NWRvQ295YURoYUJiS3Nsbyt0eUxxa21SZld6STQzSGZFcTFtODNPQXJZ?=
 =?utf-8?B?U0lpb1BmdHZ3S24zNEw1VmlJUGYwV3dBRnpNamY2d2RXUlpwdDhORlBhcDcv?=
 =?utf-8?B?bUFFbytMS255a1NKZThtM3p4cjcwS2xwcHJWODdZeXQyaW5FNzdvWGpUSVJu?=
 =?utf-8?B?TXVST3ZIaDJNWHFiMkN6QWY2VHpsbW12NHVWby84UG4wUHk4eEpXRFY3b2pB?=
 =?utf-8?B?Sm9yeWlQSEM0Zmw2OWJKM1dNRUFiaUo3a2QyelJLM1huTjgrK1djalh0R1hG?=
 =?utf-8?B?OHZaVHB1STZOTHZDcGY4Ym55K0RTRURPMTQvRng1STd3enZ3MG5PU2dHbUJy?=
 =?utf-8?B?WnBzTDh3SnJkQXJDM05HamJrZEZNRzM2L2dFOGNKYnhjL1h0Q2JUK2JSR3E1?=
 =?utf-8?B?Rjd4Q0lxVDlVL3EzZGV2MXR0Q3ZrN0s0dkFpWkFQWmlHMy9pcEhBcUFSV3lF?=
 =?utf-8?B?RytwMHlyT1FaWldOa05vWnlkdHFvVmljMWFHME1NbW1Dc1ZGQVZvclZTb01T?=
 =?utf-8?B?MGZXK2Y5STVSWXdVdVZQeHVXOXYyN0U1MVVpOWVyV1R5bDViT2xYYWFFWEYv?=
 =?utf-8?B?ODBqdXdIN2V2SFFpMUx3a2hRdzdRQ3U3d1dWZFNoOUFJUldDbjBac2EwOEtj?=
 =?utf-8?B?M1djTWsrbnBKYW1hNzNCdktPTFBWTzluWHBBUzVXODd0ZXFhWGt2Ym11dEhB?=
 =?utf-8?B?cC94RXFwZ3k4VUlUMTBYSXk1RERBZHFVbTVxQkN4NVdyTDYzM1VPMTFqU2Ra?=
 =?utf-8?B?SERFNmhUMDU3M2tSd3VwaEZiN0JmaGhmVTJsbzNkakZBaHZQOWVaeTJkcS9P?=
 =?utf-8?B?clp3M0lTazdRSUtsdGR1Q29rNDM3QWc5dTJTcWJzc2Z0QlRFSGFNZGdNU0Q5?=
 =?utf-8?B?NzVNMCtpRFlEK1VGYm1yWkg1eVhBUDJmWlZwNXJXOC9GNE9ONzFaeHpFdXAy?=
 =?utf-8?B?UHFqUzNweUt1Z01FNXFaZUpqUjkzNS84ZmQxNkhyUkNxay9qSTJqbW54TEZP?=
 =?utf-8?B?NDhGb1NYSERucW9zNFU3dnJRSkx1KzgvZVBON2lkbkNpWGMrZG9NQWZ5WWtE?=
 =?utf-8?B?aEtMa0h6NEdpNERXOExhaFJFeEVOYVhERzh1ZUxhbG1XcXc5MjRuTjh2Q0pX?=
 =?utf-8?B?Y1pqdkpxSkFDbG1VWUZJUmZKTDA0aDA2dDJ3ZVVCSVZFS09GUUgzMVNEc2ZT?=
 =?utf-8?Q?53l1E2WKG7UYhvA4=3D?=
X-Exchange-RoutingPolicyChecked: vRYWPuWUsxEFdQTQg6RKIektr/fdMVplWVl64q4sK+gyxRhoVAIbRZT5kWsqW/s9IkggBlq1wFBNUEOdqn35fBy0MtIjcVhcM5AtH/xfp8J7n2C+NPahshKdVR+j896YlwfgK22iuOU7/g1j+0uI8ZKs/23HEBXFfvHwOkZFEiyWwqzFcsOAnkVzT7pxcr42j5lBEN7AUjduWUfI5STwS5vZxuAoGAGOPE1ckBE4j/ytMMzG4LxH851Fs0YUYIElmjshBaekrI+TBHxBcIpzJTkx3PDlyyb5YQMgzbV2P8no/NBABmg/ARHiksrtW/8NAXq3WgG1NS9Rgl1PIML2QA==
X-MS-Exchange-CrossTenant-Network-Message-Id: b61c20ee-1949-4156-b03e-08de8a441f74
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 07:57:13.3631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q/CEYqiUtMFwkVbughJi8C2RMv4TqtjnMyF9VIU2Drv2quESUt5ns7M/J/H4u6GWKPaBqMGRHYNGxfVMGqSuM9ch386TF6HU+y9o57EPHiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5056
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 714B9320F95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/17/2026 9:35 PM, Jani Nikula wrote:
> On Fri, 13 Mar 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> On Wed, Mar 11, 2026 at 05:05:54PM +0530, Ankit Nautiyal wrote:
>>> Align the DP_DPRX feature enumeration macros for better readability and
>>> consistency, and use the BIT() macro instead of open-coded shifts.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> If we really want to go for BIT() someone should do a full pass
>> over the whole file...
> Should also use BIT_U8() and GENMASK_U8().


Thanks for the review and the suggestions.

Agreed that a proper conversion to BIT(), BIT_U8(), and GENMASK_U8()
should really be done consistently across the whole file. That would
be a larger cleanup and probably deserves a separate patch/series.

For this change I’ve kept the scope intentionally minimal and focused
only on the touched definitions.

Thanks again for the review.


Regards,

Ankit

>
>> In the meantime
>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>>> ---
>>>   include/drm/display/drm_dp.h | 8 ++++----
>>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
>>> index 4ea3b5b08a12..49f0154eb93c 100644
>>> --- a/include/drm/display/drm_dp.h
>>> +++ b/include/drm/display/drm_dp.h
>>> @@ -1202,10 +1202,10 @@
>>>   # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS	0x04
>>>   # define DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS	0x05
>>>   
>>> -#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1         0x2214 /* 2.0 E11 */
>>> -# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED    (1 << 0)
>>> -# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED (1 << 1)
>>> -# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED  (1 << 4)
>>> +#define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1					0x2214 /* 2.0 E11 */
>>> +# define DP_ADAPTIVE_SYNC_SDP_SUPPORTED						BIT(0)
>>> +# define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED	BIT(1)
>>> +# define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED				BIT(4)
>>>   
>>>   #define DP_128B132B_SUPPORTED_LINK_RATES       0x2215 /* 2.0 */
>>>   # define DP_UHBR10                             (1 << 0)
>>> -- 
>>> 2.45.2
