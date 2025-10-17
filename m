Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40520BE7D4E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:41:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA5F10EB90;
	Fri, 17 Oct 2025 09:41:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NNgGgGg1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B8010EB90;
 Fri, 17 Oct 2025 09:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760694078; x=1792230078;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sHy4WyuH2u7XVIB9Zb44noof7xG40P2O6Q75wKGjvH4=;
 b=NNgGgGg1hfBlmoQhQXyVv97zvyDJqsqNtutzRghJe/6gp3E3GSoKeMex
 hLmX+NRKOfzwHTs7LF7wtGL9FtOnWN5S0cnLsLFeH6xfw8OZsTtGFicYi
 JNvVKP3GKJhnLh+7zpabSyaTOTbeVBIlTY6yK8TGwG8TrY75t0iEnkV+U
 obctCJ+tiPPr7Pf74u82+VSbZ5+OQF9W4cdrvempobtdZeSL5XuIzlj2m
 0n0JWb3yJoH/hsr6nvqHUkuwSFeVO278lhsmJAeT/IRGp4E2WXSonmcxW
 CGICjbG3rkeZup4N8L4uP3VKT8uHPGp0SBdOa3VuqjF6BHvhtJDYBFb4e A==;
X-CSE-ConnectionGUID: yX2ZCJ/mRJqJVec33xQ/YQ==
X-CSE-MsgGUID: pP4k3vD7SE+gP0BA6WEegA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="63048662"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="63048662"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:41:18 -0700
X-CSE-ConnectionGUID: zdHq271JTAKvNGRSK9Z6QA==
X-CSE-MsgGUID: X+SD6Iz+TPW52f/sCwAePQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182376385"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:41:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:41:17 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:41:16 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.25)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:41:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xlEn47+1NlAb1hyiJKOPa+u46GTSGKH2nAgKrRuPMPpXPIxtphwFgFBnOqsGy6EGH1NJJPgGc6ZXOKtegBRVWcuz2oOZ1mh2QAl7/ut6zXSdypQ7Jf7Fom/AQ3v+kst51Jxue59YVpiJjQ5tA7rLpUANvDHwBkFAo/oRPkUC4B1rY6ZnPIj7aPDckCAzSWtitK5QhKOwKYUmL6RLjE27aqHbCA/6mNe5hzSUCx3yozBeavQHX0Es0TjBBRUZANHysDq6vN1uar9XVErvY5dv4rSy+zUFHDxNU4uH/EnLeelt1N3LKqrVfK0dROjqVCPa1toEzgkVDvfM1wvXjE+nPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jon1uZbCcYT1NK0L4UCAzqGuxQhcxHi4t1GxVPcJS/M=;
 b=yhz1sRiQPr5UpG7XyB54+RhUVAJTJGaK6VNrFQx5UK9l30tP2zcGJALntc0m4BxmmH06hpzuvjAmuT7WPTX4Tk+wL/2wfcgy3598t29Xy89QxoebLQwGgAnKSOV/G7nxtyOn/pxGP8oRh+l4zfy+31JzkBrmkD7T6YoiELwmOcXB772SF5Z6PSrdbUWWCrxhAlnrGHDcrxMP08OpKFnHAlikaaKlyw+1gB8pylCW7FPqEMELyD6wyofO3YOzI3Wz1gMyGonNf5+eZlfhiZSrUkCM0Ql2DoksAW5ocs7Ya1QiUseSAxAFSDnlMSW03ueQGbFIkoUTsGBEAEdASaparg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7590.namprd11.prod.outlook.com (2603:10b6:806:348::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Fri, 17 Oct
 2025 09:41:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 17 Oct 2025
 09:41:14 +0000
Message-ID: <bc7e9601-9824-4cd7-96b3-35c6858b7987@intel.com>
Date: Fri, 17 Oct 2025 15:11:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
 <aa62098194dbdd413ac97479f5c9a4913078fa4e.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aa62098194dbdd413ac97479f5c9a4913078fa4e.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0073.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7590:EE_
X-MS-Office365-Filtering-Correlation-Id: d9f4c71d-c8eb-4187-c5e9-08de0d615016
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?REdEQjlaTWZWUll1S1QwbnBURkFLUXBSWisxbnRMZFlMWjlPc0VFcjdwYll2?=
 =?utf-8?B?Y3Vvd2JJM2I2VFNaUDNIM3U2Wk94bGtwTCtBUDBZbVp2NEVtalJON3dvUmg5?=
 =?utf-8?B?YU5jeEJsbG5uSlErcm1JRjFUMFpWODFFV08ranhBb05YZTF4ZHZ1dUlueDBC?=
 =?utf-8?B?Skl4dFJxd0dveUszM2JEaTZNN3BKSDRNeENPTDhYWXN6VzI2UTNvaTdia0dZ?=
 =?utf-8?B?VndQTGc4dkQ0UVJBQUtCOFRCZktzN1RDSEo3aDlnN0tEa0VOYmFLRlBTM2xj?=
 =?utf-8?B?Y1N6NnVselp0a1NkSVovbXFsTFQyRFJGbTZLZzR0ME54eFFndG5XRFE2Y21a?=
 =?utf-8?B?V04zSDduVFVoOTc3RG5pQml2OGlNKzBsejViM3Nnb3V6WTZXQlNXWlBTeW8w?=
 =?utf-8?B?a2NoR3lpbnhMWVN0L2wzMDRWL083eDhvb05GQTNBQWFXVjc5bjFmZCtRcGRN?=
 =?utf-8?B?TW5CZkp4a1F0U0xQUlRUQnU4UndGanJTRWFScGRUY05MRllvaHdTbWlNREI4?=
 =?utf-8?B?Yk5qVURQWVBXaEkwdUphNGh2RThWSDNldGRJdWxGdjE3QVlnaU1ldWhxQTFT?=
 =?utf-8?B?QmNPRmJabmZhYWF1dDErTGNpZ0dTUDIyQmd1VFdzc0RzNHFCQ2xQMzFMUkRT?=
 =?utf-8?B?WGhNcUluZjZJMHpTa1dhVDIwR1ZjVkpva01FSEtwRkRSWXRXMHd0eHNYT1Vh?=
 =?utf-8?B?Qmk3emNFVnBmQmo2bVNuSG1aYnhjVmJzck1SZmlUVXFzYnhhd2pQZlMvQmtO?=
 =?utf-8?B?MWpxbko1YTNHR21nMVVZbWN5c0ZSZU1PVHVFY3dBZzJlYzFNZUNNQk1ZcFZv?=
 =?utf-8?B?VzZzcGZBRS9IZVhXdmJEUlFoUE5pUjM4QlQrQVdZTk9QQ215bnFERDNIMXZO?=
 =?utf-8?B?Y0M3amtXdkZidUFUUGtRcFl6Y1ZQeWlEVlV1VVpBTmpqNGZwUkdhYWVVNDdH?=
 =?utf-8?B?T04yZnpuVE13TUx1ajdVeE1scVFVYklTaSthbmxQbGpkblE2Rng2NDJURUda?=
 =?utf-8?B?RE1Bd2FyaWtNWnVJaXk2c3BHYXl2bjJUY2lsTnZZQ0pIbGJ4ZnhWWWVWR3d1?=
 =?utf-8?B?ZjNQR01lVWhEVXMvblpDVDlhWW1zRmNEYmFROStYTjU1SzRjWVpFMzh1eU90?=
 =?utf-8?B?UWNId1dhaXRsRlJwVi9iQXZ5UnZSYm1DMTlaajl4aVdiZVZKcFZLVXNrTU1m?=
 =?utf-8?B?QlZ0VEFnTkFINnp6WlFiZVpZaG9YcVJFYjY2c1FNZy9ySWpJZk5zVzZlYlNh?=
 =?utf-8?B?OGplNlNYenNleWsxSEtnM3NrN05ETHc5ckcyNFhRVCt3MGI1L3dzamQ4L2dz?=
 =?utf-8?B?NG1KcjViQWwrMkxibmlLVGFSemN4QmtYNkZVcW5CTjVHdG9JcmJmcUpiQWVM?=
 =?utf-8?B?VzBBdTE4UVVQOGdXUnFsUVdNdUdSY3BnR29SdkVRVUJwUEwvMmY0a3FweGt3?=
 =?utf-8?B?MStrYytrUUZuNnJKQkU1OTVzZ1NraUhxVnU0RGZlSG5BOFIxYmVVWHIvUHRL?=
 =?utf-8?B?RGxtKy9vU0VsdmszNVYyemdFWHg2eDYvMWNqdHNjL1dacnBicHJJVnk4VHlI?=
 =?utf-8?B?VzU1ZklMT3p3aEZoNjlGMEJvSGhUU3dqM2RaZzEvTmlhU1laNWN4b1FLc2d6?=
 =?utf-8?B?aDRPeVJuRDNrZTQxUzBHUmNCSUplUGlQdXJBTjIwdmwwMFJhd1lIUEhBMk92?=
 =?utf-8?B?cG5tZzhCWG5FU3cxMHpQckJvdlkyQk5LTEcyQnMwdWsyVmtLcE81T2lFR0VN?=
 =?utf-8?B?Ym1zTnlkcG5mOXM3QnVwR0szWHVBQWhZM1FJcHZPRGl6ZlROcTRhVkZPODU3?=
 =?utf-8?B?SUpTRWd3WDRzT3VIRjV6T2dQcVJkZjhCTEZJa3JBQTNYcHRidkcwcHZGSFNq?=
 =?utf-8?B?TTdmNWJkVE1OUzJkekFZd2JMcjBtcVY1bUZuWk1vUWMvdkFLRnVucUJFKzQr?=
 =?utf-8?Q?V1G8LqtG6fzkKRPoGwbHWhQvGvs1ya0Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVdMalo3RU1ZYkVNUEVyV1RPSk5OT3hEc1Q4cGFHQzJTMnFYSDNjUm12aHl0?=
 =?utf-8?B?MGk2VjZUdFBmeXBXdEVyaW5UaEpOUEFNS1p2Q0pldjI4emhMc1ZnSXNMQVdt?=
 =?utf-8?B?cWRuUFgyQSs5VWVTajAzL3UyN3h2bEtMNlBxOEFZa2lJVHZOL0dXQ3JhanVF?=
 =?utf-8?B?aXc0dHVLTjVZejR3bWVybWlnd3AxQmZlaVJZcGVVUjErQThuSEl4YWc2VDBy?=
 =?utf-8?B?ZUgrTXlhSmsrVlVQN0ZJOWZFWUZIZ3NyZDd6R1dyUGdGd0RxSnp3RUZXL3dD?=
 =?utf-8?B?NGlGWFA5WVMyLzQ5SkNLQVRtdGhSdlBBZFlzZkdNVCs3ZUNIWS8xc2hFTE4v?=
 =?utf-8?B?cHk2K0tIK214RTZSTkQ3U3RjM1pIenBwMTBCNC9KVVhKSFZwZkY2MjI5bkVE?=
 =?utf-8?B?VVk1a3B5S2ljc0xGRVdxeFNpLzZPTnFoc3cwbGUrd1BjWVhBSVM5WTlzT2Q3?=
 =?utf-8?B?NW1lUEN3U0dwY3VJVm9obGlBVEJlV1MreWhDRkZZSjlDdTJtRzNwOS9EU3A2?=
 =?utf-8?B?QmJINXBYL0lUVlRwTEVOYS93VS9icGNLY0czTnBBRVBPckhjbUwvWGNPK2s4?=
 =?utf-8?B?R3UyaE42OEFJb1VKektmZ2xwVDR0ZW1SVmxHcUE5RmVXYk9YT1MxeUJFc3M4?=
 =?utf-8?B?Yk5ycUdLdS9hYjBKR3UwZ0sxVU9PNVJLRnF4QjkzZ0dNVzIzdjhjV0N2d0kz?=
 =?utf-8?B?Z3dlSWpqaDNucHpNNUM3QUlEMFVqdXN1QXJ5RjdCSE9LRXVsNWdPVjJnWGox?=
 =?utf-8?B?QStWNGRwOWUxOCtOZUJrV2hYcXY0YVhibERMMGNaTHgzaWZzeWQyckZDODVN?=
 =?utf-8?B?MUZ0Nk9qUTBYRzZyOStyQlVja2JWN21INTU1MGFoTFllRG53cEVWRVlla3h6?=
 =?utf-8?B?MERuTUNmSVBBanVJVWdMbnVTenVQWnVndkZyQnhlK0x0V2VnVy9LQ0FSTjZi?=
 =?utf-8?B?TXAxcnNMbEFqQVJ1QkIvbTlxUXlYdXVZR2lkbCswMHNPUTF3TE1uT0IzNjk4?=
 =?utf-8?B?L3poRGVaakNPbHNZQndFYXJlK2ptMHZ2V3dVVkQ1S1p5TmtiTzA3QnRTZ3Bz?=
 =?utf-8?B?SGVRcWZldlpsRXV0blZWaUk3djdWVkZJQTE1YTFrSkFQTENYRG52Smx2RmpO?=
 =?utf-8?B?WWNJa2VNZFBSSkVLZDFrOCtUN2dDWm1wSlQ2dzhSYnpCV1o4ZmMxdUJHd2Z4?=
 =?utf-8?B?WWw3MFJXcUVmRS90MEhMQ2ZsbHVEaDFWTWlpNy9tL1o5ZWU2SlRHVVVCQm5D?=
 =?utf-8?B?Vi9CZHRzcUtkMEZ1QmM3aTVTdVV4UUg3cFdIUldtR2YvUlFTUUFqaEs3a0c3?=
 =?utf-8?B?SWNoWWtub2wwRDlnWnFtYjVrS3ZIRGoveGN5L0QzTUlGTURza3kvOHN4VFBJ?=
 =?utf-8?B?b21CUm11ZUVYN2NTMjd2NWl5emUrM0RUWkV1bWs0U01MUmFRSFBzRGJwM1Rk?=
 =?utf-8?B?bEo5NmdZc0thOGVkNndZUWlmelhJRCs5Z0ZiVEVpd0c0Qmt2V1hMS3c4b1ZI?=
 =?utf-8?B?cHdBSEJRNEtsckt6RGxPYkQxWWZXVEVzTEl6aHJ6YzhISUVicGJoL3dtMWZT?=
 =?utf-8?B?Sy9tanNQL2pVVVpVOHJKajVjUGg4TUNxQ0NmdUc1d2dpTVJMOHJVQWVubGky?=
 =?utf-8?B?MWZVOU1iK1VSSzhjNjE0T3d3OU5oVzFkdm5XV3dxZHNWUjBuT2h4QWJXelVv?=
 =?utf-8?B?cGVES0JLcGxGNWFZL0JhYVhUb0JuRDRHeWZESDJ1My9rN2dlTS9MSGxSZ3Zv?=
 =?utf-8?B?aWJqRU13NWdKK0d0djcwcGdjcE9pNWRnY2o3RXBxMnlzeE1GUElEbHBkUUNL?=
 =?utf-8?B?Nit3bmdxaGVOaGN6NEJGNVVYWU1PZjd6c285VnRleEV6R0daWUtyaExuazh6?=
 =?utf-8?B?TVg3MTliZldNT0tFN1lEZjhiRjlHUkMybHZsYU1FMDlXazRFZCtqVVdNMHY1?=
 =?utf-8?B?K3Q4L2paNE12STN6OHM3UnFMZ1RSQ1hac28ycEsxMFMrQkV3WHgrc3NweGRG?=
 =?utf-8?B?NUV6MzlRZUxpTmJ5WnI2aG9lSHFmMDROb3FJcHRReFlPRWl2RHNSRGZJMXF2?=
 =?utf-8?B?QTFiUWxWWWcwOVJYeGxRNDdTSDZ3eFVSRUFyanRaN09Qd1NldWR5S1dJOTJL?=
 =?utf-8?B?UUxWUUF5OVd0S0Vtb2kxb1F4ZmZlZHdIUGlSamtRY2p5cDVWTmE4L3RBZkha?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f4c71d-c8eb-4187-c5e9-08de0d615016
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 09:41:14.4361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: meRGtbI6Q0crzD7rkByPch1PjfiAZ0Fpr3Db/QGf9B9Kig2tN5i6By2XehWUU2B6+leDzuq2kq8IhWala3hC+wxVpoY1zbZwJxvMod8hT3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7590
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


On 10/17/2025 3:00 PM, Hogander, Jouni wrote:
> On Fri, 2025-10-17 at 09:07 +0000, Hogander, Jouni wrote:
>> On Fri, 2025-10-17 at 10:31 +0530, Ankit Nautiyal wrote:
>>> Introduce a helper to compute the max link wake latency when using
>>> Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.
>>>
>>> This will be used to compute the minimum guardband so that the link
>>> wake
>>> latencies are accounted and these features work smoothly for higher
>>> refresh rate panels.
>>>
>>> Bspec: 70151, 71477
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
>>>   drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>>>   2 files changed, 13 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>>> b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 703e5f6af04c..a8303b669853 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -4416,3 +4416,15 @@ void intel_psr_compute_config_late(struct
>>> intel_dp *intel_dp,
>>>   
>>>   	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
>>>   }
>>> +
>>> +int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_display *display =
>>> to_intel_display(crtc_state);
>>> +	int auxless_wake_lines = crtc_state-
>>>> alpm_state.aux_less_wake_lines;
>>> +	int wake_lines = DISPLAY_VER(display) < 20 ?
>>> +			 psr2_block_count_lines(crtc_state-
>>>> alpm_state.io_wake_lines,
>>> +						crtc_state-
>>>> alpm_state.fast_wake_lines) :
>>> +			 crtc_state->alpm_state.io_wake_lines;
>>> +
>>> +	return max(auxless_wake_lines, wake_lines);
>> hmm, now if you add:
>>
>> if (crtc_state->req_psr2_sdp_prior_scanline)
>> 		psr_min_guardband++;
>>
>> Whatever is the PSR mode it can be enabled what comes to vblank
>> restrictions and you can drop psr_compute_config_late?
> also this should be added to remove psr_compute_config_late:
>
>          psr_min_guardband += _intel_psr_min_set_context_latency(crtc_state,
> 						     crtc_state->has_panel_replay,
> 						     crtc_state->has_sel_update);

No we dont need to use scl here.

We compare the actual optimized guardband based on different features 
and then take min(optimized_guardband, intel_vrr_max_vblank_guardband())

intel_vrr_max_vblank_guardband() takes into account if there are SCL 
lines, so those are subtracted.

Regards,

Ankit

>
> BR,
>
> Jouni Högander
>
>> BR,
>>
>> Jouni Högander
>>
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>>> b/drivers/gpu/drm/i915/display/intel_psr.h
>>> index b17ce312dc37..620b35928832 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>>> @@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct
>>> intel_dp
>>> *intel_dp,
>>>   				   const struct intel_crtc_state
>>> *crtc_state);
>>>   void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>>>   				   struct intel_crtc_state
>>> *crtc_state);
>>> +int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
>>>   
>>>   #endif /* __INTEL_PSR_H__ */
