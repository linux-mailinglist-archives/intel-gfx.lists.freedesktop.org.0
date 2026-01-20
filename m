Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CGGHt2jb2n5DgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:48:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291D346AFE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:48:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E5710E623;
	Tue, 20 Jan 2026 15:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GARPEVTh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DBA10E623
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 15:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768924122; x=1800460122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fh/pu3SoxBE6A+D3JdJW/CpMtb+0ejFy9tKVJ3rWMYo=;
 b=GARPEVThdPCGEB6xBja89kupNxM8fulw91TvFmDgyvli/40140xXjdEy
 helc42DxfzDOaayKHOeB/eiWDpw+IhxJVAWKUKp6u/+25ojzpMtXoSqYz
 xvFyAyr8GdyIpVHQEngWAjuNn2iFAewLowWyA5OEhwd0OOUOcCA0nxVy0
 6w0eOllGIv98AD0IvBee7mO+AiRGg5XH+ZRdeKPwUet7rkXZC+NpBt1HX
 Zz52ykShHh1syAqW2rbMfQ/QBccUe9lyDlkfTDWqsa3abjYHakDF4EZxX
 2Rnv3DXMapX1hq3zUkNlHcLVIjQeavj85bSGZarpgsAt4TDFYkoF1aXgK w==;
X-CSE-ConnectionGUID: 2O1UpJ2TS4KYx7bdEUQAVw==
X-CSE-MsgGUID: M659+25bQ0qbkpLcrIsPmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80856935"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="80856935"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:48:42 -0800
X-CSE-ConnectionGUID: Wd4EHx2sTX6qp24wpAjIwg==
X-CSE-MsgGUID: gmWVEYWoTPSpUEZjdKYCNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="211164162"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:48:42 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:48:41 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 07:48:41 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:48:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qRqrYJ+tlQ0/xwK9L7VOAYRv/1B9AiCN1OmjRaGcttDNuuMHzAItn5Zo/Lnngff8PchjIlHkpfVvNSwteuShU6tFvUkIMjl30smP/pE7vnDgBViasFAveRu5i/0Ett6BFKIKNhqKj113Z9TsrZu95xWruPfRNsWwieFCa4D3bLzDOIhwVW8yrf99s+CJyc3LBpsdMrRBqv9U8VEk7csMmWM8w5g8jfE5Y6YVv8BLRw4R0uok+tQ45X9bEbOFzTDXZqXdIJt3FSNDlwk8RvA86a/Fj1si96Zo1l9fQ4V8GPn8UGYwiZqir6ZAeRDBIe20cxFtYJaHN1hUwc2xtL9bnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vHQNP7NV/qnKpWOX/MYnH/WfXzH6BH2k+AuMpb2WCRo=;
 b=lNFdjJYsqyF2/6deLJqKplIfpk1mOcFNkXgmq+m/SGiqeG9NF+z6yHaE98uaoyrkJX1G5aoLsbA+kdoZAl02ST8wLH1yfz6ZC4lTzOIFwvDv6eWdwydUtfmNjEOn3HvhRZyBkmEgKB8w8EgVk0+PIUhdLx4Jm4WsiewGdlWy4qvnixkgR5xOvs2bb6VAoosPbi8Lp+AmZkjVZ0uviVGX8wjGkprs/7RYqdnfyaHEZsvkn+rPySt/ALevULgXJbjgy3QFpTJ5deoOvbFg6v9NCTNACggf+JuPqsc1xWvmZdeCu32a9GPfyylroXg0aCojy6eszNFdXyszn2sA2FfHqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Tue, 20 Jan
 2026 15:48:36 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9542.008; Tue, 20 Jan 2026
 15:48:36 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v6 1/2] drm: Warn before division by 0 would occur
Date: Tue, 20 Jan 2026 15:48:23 +0000
Message-ID: <20260120154824.1864085-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120154824.1864085-1-krzysztof.karas@intel.com>
References: <20260120154824.1864085-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH0PR11MB5205:EE_
X-MS-Office365-Filtering-Correlation-Id: 059246df-f503-4b8a-2485-08de583b5f70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WnZrlR2PZ7IrvfGE2uDHerPzAbHDHj1pBEzFjhk2PUKCN8JdzhPBlNZpe76d?=
 =?us-ascii?Q?Q2DUZHzX7weoB5RkOmssu8ODu7BSgJOM8puJWEglHUX7iwxRPbCF9Xx7H1ho?=
 =?us-ascii?Q?QsgYTuZSC7g8V8E3SCm9hCdIUSRWkoaBD/GUAFsqavSlvl7AVdV/j0HbFEhr?=
 =?us-ascii?Q?V/x1T3aJH/J6Zut7mPKrCzKU1XBCxLdY9wPC7xNaMo1/unzkA9fFHD2VVw4m?=
 =?us-ascii?Q?XGADjC6ryg6ZyRdNzfN3WVppVaDU/lql94mbPoTbeVu2lJGusDkEWeJSQIcO?=
 =?us-ascii?Q?MqOIm6Zii0D11uA7k3mWBbKKoTUfx0YZEkkdEYWiWngth7Mo+WvDGm+lNzra?=
 =?us-ascii?Q?NpBPh8HgBMm/SNM/3WV67SFIlEbihuPdKgAUXaEXjnTaEyysMufq3Dl2NtuV?=
 =?us-ascii?Q?/iOxmucij7PjziYQnS/L+I1Sg9PcDDHmGjzEO86wGTdVWgua5JEemZe+LJCS?=
 =?us-ascii?Q?5/302BV7cixqbffVe3oiHT8DT42sEUbARVV7mQ9xP/oVI/t94RHK3xyZyB4K?=
 =?us-ascii?Q?8X/gDazivgEFeBPOkCeaBwLqCaKOaOraNeKmqn1Sx2Gcec6O80xASBErMncu?=
 =?us-ascii?Q?c3ip9zWvFzx9lEDzS7ZNoP7c4HRTes9nyFNEENRlW/0WVx3BsHQaXo5N9oFC?=
 =?us-ascii?Q?bS/MW1NhB6rq6FUdIW+LWi/cwGZX9CauGywHaWBnHTqAQ3RsSSpQ8op5hGpP?=
 =?us-ascii?Q?BGxYuXyJOOr8fw3L1fGF+OriYA1FMD4hQF0kn1bxXqbh5Uhei8+qWNXV+T2P?=
 =?us-ascii?Q?VjiDhNiiU7oq3HYtx2/DtcFJQ35RtfJZZr/Dy/YcN7XPC2FGjIAAIAm31+pJ?=
 =?us-ascii?Q?CiEkuFer35pGI1OSYgyI7nTfGCvJmNbf+0mkEHdghwvTuBBReQj8VGTcwPVV?=
 =?us-ascii?Q?cNLBNCGXqDHIKqzq6RA0+u7NmMBMSwzKC4xRDozuXk9to1VTH1YB+lzQCCs3?=
 =?us-ascii?Q?Poo8K3g3KmURmKau2ztFA0wICGEj6Xf2hMPTKKJzADHc/arzHdbzfqkjp3lR?=
 =?us-ascii?Q?k1dCisIFyLdBsl+rgfZh1wFU/17SI+vH/iVpwEdnAFO9nfcclfaZv1Ek6hO0?=
 =?us-ascii?Q?Zlu20DHbSiEphFDAE8TP+GpBloiCGrX6CgwqWqlmJZjoUGLC3UKHhn98d6GT?=
 =?us-ascii?Q?iM16n6/szFk01MYv52K16WLQZNzg7B9wzYMfUFclufZK5FGsIyJgJU0xeIlW?=
 =?us-ascii?Q?t/2mSkhbu3Z8aDBOZ0s+TXHguyLBZ3WoqigFx1dYQDITXjMikIlwsh74kEnl?=
 =?us-ascii?Q?n//OpGSu4TbB5HWylkl5GpmslYWHBZ9MsXvrCThSl1259gIVlf0g9L8ni3f4?=
 =?us-ascii?Q?adBAKvFG6nSzR1ayysU/eZwFdLp2czajBZmTahKiWYidLGhQb6FoFNRpipnl?=
 =?us-ascii?Q?M9GfiRwVkNkJ8t1dozpIMN0Nj6JNOSFjo4wNwSNJBoSqSNJjstn7ypMr1Eg3?=
 =?us-ascii?Q?9kMnGtdf4PrKwgidvyB5kDOr8fAd5HU0vQ+yZuM66ahXzKsa7itMWCWNQ3nl?=
 =?us-ascii?Q?/JJaW1LWpckYbrd+WuQFiPl2+3Nm93fr0EBTT18SRfRY/m5UZ2bep5wLXQMn?=
 =?us-ascii?Q?15TOem0FAlnsAP7KZzk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K1iKXx1VNNrY4kEXxSsSRKehXFfglne1OPiO35S+Wz21Baoy3G/7WVwRLr4J?=
 =?us-ascii?Q?EqtjPZ70avk6xTkUt38R+ibOecKBO189IcTf8Dx3Y6ovpeKtKIZftIxbAqMw?=
 =?us-ascii?Q?oCl3e/IvdMsmglEKvGcVlScg4vkkVTmm3L6gYEsVXWbtOUVghawo2+bycwsv?=
 =?us-ascii?Q?9o9LmUGFPgwjYhirJmVa/quD+XLgZzlg3FY4dEdhpF0DKGiYf3/wJGveaBr/?=
 =?us-ascii?Q?hI5uQYGSH8nm+f8aB11Xbqk1dBtw1KdlDEkImZJsvQSAyG4Hzpv+xWdkNpHH?=
 =?us-ascii?Q?APfV4rQQb9J4wZlxIsqsUltIWOBq1o8ULtSEtl/gPZ0GV1Jt0PKuhQuJa3oX?=
 =?us-ascii?Q?i2mKGa23KcDXqzGj6CQs3PS6H6SfuU1EnYi2alNx2C+/yyrPg27DXf9yj7Td?=
 =?us-ascii?Q?QgUjIOZHeeaSEq0KVZy6htTwMolv/P4G0xVy/CcJEhBUCRqQejMDQ0r4IiMm?=
 =?us-ascii?Q?oTYsd6lrsErp3tYGGPRX/AYQu+5xgTYqvdlEOW4Jsp29r6+gQk9Mnip/dXRK?=
 =?us-ascii?Q?9YppGZImffX/rqS+5XuODiakQ49Hji9x4JBAz7ArmLOpSpq5oPzjoTujWRJZ?=
 =?us-ascii?Q?is1ImIr85z+zDhGceCElk1Cen8yogSJ10PB1FibGQ73cl8SAZl8Hk2KpJ485?=
 =?us-ascii?Q?YHml8lOwmlE4otaZb3nNf6ZzNywGOG7mlMxX9yCfM1X/5kSFQoSBfBUQbeOX?=
 =?us-ascii?Q?4EPZX/KLnLwZhf4USdHQ89kTs+iz3LFI0126HPfydYfin6dtkHxme1lLLuA5?=
 =?us-ascii?Q?IPrApVOB2I0O8SAQUxi47WoYFv5IO5Cnry5INA2VzXKf9wfYG9BTzTF2JHaW?=
 =?us-ascii?Q?1t8AWLpsEJ5l0wWucdKtJ2B2mWCiahSv1vYb0erlvn5a0N4JPeDcsMLfbkkP?=
 =?us-ascii?Q?creRD+idvS63y3g0CdeJld9itamd+SzdKw6tb5JFmTcYa1pe2GnDDbq3erGu?=
 =?us-ascii?Q?Dvcpd0Huw8pOlQmAp+G0U5ohYTT0Mx8QljHP9QC9RFbBAA1Uh8O1EB0zme4t?=
 =?us-ascii?Q?IDqFe4Ioh3Vtu6m8R0aONN4DBBq9l0xC3Ek9pxy72sagHxPL1csYO7A5kZNI?=
 =?us-ascii?Q?VeUpXXo+KX0M9DIvGI7LLAtj8n1ZWW0DJPJ+psjzd3do3hLA9c0E4vZoFZc0?=
 =?us-ascii?Q?kiZA/LFcBPOpVQMlm9oviDpBawRHZvBT9uU9g0nmiik7kNOoGXgD/7Sl0AfQ?=
 =?us-ascii?Q?aiZdjF/ohGrdrUX7o9Rpg3MaYDQH4ZJh1j2wN3FdG30LN5q7Uz70CGLRGI+P?=
 =?us-ascii?Q?pCGjUahP7qHDSuevKvQQNkbVL/8wg9H22yv3fND0z0MaAlIgJfpI401wecU6?=
 =?us-ascii?Q?GVEH5vz6Yl0dvmSvg7QHcntaMxKJWx7IJxBVCHph/WmQwLtknHCiVLAiDr/c?=
 =?us-ascii?Q?piIfhrJW9pfS66foEsoQCClDAYBvlpAvjwg5oM6/1PmU+9Yhi+BlgJVZsXD9?=
 =?us-ascii?Q?T9e/FPPq2cDqq8CcGAbo8Hbse+fevC/sN/V7GFm1DNNMLWwfBY5WE8HKZ+Xj?=
 =?us-ascii?Q?qsGLYeo+/1dSpIEn8TRtGwuDAlNbSMqMVihVxVpj9T07awK5NaDclSn73/I9?=
 =?us-ascii?Q?R68cqWM804tI/r19M/X56I8ysl5B2lpKPrWp/Qllg5gwMct91p266STpU0Eh?=
 =?us-ascii?Q?1Qyt4dqU3Ae5tisdslEbLDbgmFXHsqtj14zSNVj8It/XNaVWH8JutV1Cm3iE?=
 =?us-ascii?Q?yLfKLm/FJDapXUKyyowEtKX3FK0JsCaDxFk/C4SoJzlxDsnRm6NCh/ONQWuv?=
 =?us-ascii?Q?iFydKMp0Kzk8yN1Sxt0zVnx9HPVV18o=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 059246df-f503-4b8a-2485-08de583b5f70
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 15:48:36.4286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cRcyFSUEOqTu/1wwVsxk21HwBwPPHRcOASQTXqNQ5kw4+ogD+ipmv+7W+IOkqgUuKWjnaovPO8cAKeFLSdcTn5R4xvEHDsrGV4zmO1XALNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 291D346AFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Warn early if any of these values
are 0.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

v6:
 * rebased, no functional changes;

v5:
* split first two patches (Jani);

v4:
* use WARN_ON_ONCE() instead of returning early (Andi);

 drivers/gpu/drm/drm_fb_dma_helper.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..2b2513188001 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	if (WARN_ON_ONCE(block_w == 0 || block_h == 0))
+		return 0;
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
-- 
2.34.1

