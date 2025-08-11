Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A29DB20349
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2D010E131;
	Mon, 11 Aug 2025 09:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFUluJ1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E7D10E3B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 09:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754904373; x=1786440373;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=MGhHM4aOPA/X8S9RXy3Lh23v/NrtI9lORgCNr5idQjI=;
 b=fFUluJ1ZImiADhVpKyGsRTyliTJCq26SjnhcfjlVAO+iR1mw5Jwhp4VS
 gsKZDZPuGVze+UJ0R6yaF+F/IDxULzKQIn2eyLsbDCWTQHSwa9+2I5RqZ
 uMvGPH0y+xgz23jrJ831hMP65/tK0WWh696XgbJgbGnakoW46XaKeeQCf
 DyVXeRbQsesY92k3zkxT3qmJeslE8s1GlXxyGfyR++xX7qkcLLWnIEwqQ
 wRjic3WS3TbLmABOwIdyET+H4Fm5MkHSLIvOalPzXja0p76sl3clkcr51
 y7jATAyvlE4chP9YIKazii9NPY2rpLaS/5D3kTqGJ12tUvTgTD9jbWFcy w==;
X-CSE-ConnectionGUID: pEHJ5sKZQw2GHphtahJpnw==
X-CSE-MsgGUID: bakQBZ/dSxiplMzI3J6PrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68521542"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="68521542"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:26:13 -0700
X-CSE-ConnectionGUID: FHu00DfpStiVnfqpmrntgg==
X-CSE-MsgGUID: 2FpkDdEaT8ympo7dS0GhfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170306316"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:26:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:26:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 02:26:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ksVTnx3ikdXVxkybJnq7sY6CotrtxCX3yE37sjGL6CKvTQjNwraV26oVl1NkJR7/LjzoLHl85WFeGpXQq8S8Boo64E8tzt969un83AY+D4OoAWmnWhiHli69VKSIAtg2vs6lgHkneM0mzBoPje2uHGZMZBNUHSYhYR+lnmJB8LX3AjSLPcuunNASnYEpe/y/+f3XkhOYQdB6wsaTyrbSoiJFBanhlqdLkjgsrX8XsEb+KSs2dvAbIrQXgqo+YSxFSpPxp2h4OB8sV7/wYzmcRAgvQ7YgNB/1rt6f6vFM4dCncRi1r6dkZhHSkATzCRePkh90dJi4L65wtXo81AdunA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/xyLy6H4uqa7x1ZNz60dox9MqEZYy5RQ4JXx/J+S5AU=;
 b=HxOkLtQP5xiftFw1jn0ou4XBNj0J9NysJUHzYvmNrnRsApw5vcj+37PJHmfanwkLWgSyB9Ys3y7J/7yex6cmDSwSk4Euy4Cw+L0eahc9P70BuyOd3XCuAshBYBLU/otgj4qzHeEiKuONKLl/gI0joFFGO6LZrIly6Q4y8eOgrYJuiOXC4q9QgLXRqvUq7ttbL578NdGanpPTyk7HqyJGayfq6dQ3AQRCDBuxQ0sYgj3UKv4qTOQRnbxoLGgJiK7tN0P6WO4XqSOGo564nCFwt3QV5V4y4NfslpS+LfrEm1JwmheG/yyJ7+OjvXUzb6JikKWTCH5amSU7WQ595yJ6ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CH0PR11MB8216.namprd11.prod.outlook.com (2603:10b6:610:192::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Mon, 11 Aug
 2025 09:26:10 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9009.017; Mon, 11 Aug 2025
 09:26:10 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 11 Aug 2025 09:26:06 +0000
Message-ID: <DBZHOG9ZY70S.3PB0XNWO5NZC1@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915/gt: Relocate compression repacking WA for
 JSL/EHL
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
 <edc6d2df651f5990c1d70ca78e8704b60e06adb2.1754041191.git.sebastian.brzezinka@intel.com>
 <oep4xu52kke3xfs4xkm227ix33vw2xinjo6ll5yarqvnqoo4ns@wy5j4u4bgjhm>
In-Reply-To: <oep4xu52kke3xfs4xkm227ix33vw2xinjo6ll5yarqvnqoo4ns@wy5j4u4bgjhm>
X-ClientProxiedBy: DUZP191CA0043.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f8::26) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CH0PR11MB8216:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c5af695-7dcb-4be7-fe53-08ddd8b91ba4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUhEaTN2NnpDdTFONkQ2UjVCckJSWTVCS3ZZWWhJbU9qQktSTEtOUTd1Vkt4?=
 =?utf-8?B?WXZDOHlkYjVoSHRSaVJMVDF0T2VMR283b1doWGErTEJaSUhoMzBPdVZZeEtN?=
 =?utf-8?B?RWJWOXdLSnBnVVpJbi9PUkg5NVR6alNNT0RSZHQzZC9nWWRQOFhQWExmNkVt?=
 =?utf-8?B?SjJIWUN4OGdnU3BCVlgwZFplOEFnU2VyMTFzRXZDYk00WUY0MWFrZnVkT0dL?=
 =?utf-8?B?cnV4blBzdS80OXZHa0QwWnhHOHpESVFTa3l2UGVHS2oyNTdmUUdwMHhEK2R2?=
 =?utf-8?B?ejRHbWtrK3liaDVrMlZVQlYrN0EvS2NObFdKcm1TOW5YbzNkRVdoUlZPTG16?=
 =?utf-8?B?RTBZenpkUFp6dnowdWpBd2g4Z2hKL2NIU25EbWtpcXlrVTViK3R0QzZCTll4?=
 =?utf-8?B?YlJONjZIVWtyQzdVeDRCMm5US2Nwd0p5MkF5NEh4aUZaL0tlSExpaXJVUFJz?=
 =?utf-8?B?RldnL1BxUGl3cmIwUnBqWW1YblAzYWQ2MWpmY1dIQnE4Y0NUTmVtL0tuanpw?=
 =?utf-8?B?Z0pHTk9XQTlLMkgrclhFNE1kMUk3ZTRwL0xlNDBWNWlOaGRXRWhWamkvelp3?=
 =?utf-8?B?ZDlDdERVdmltOGhrVjJPK2lHdmwrOHRMQmFhRjBVd25WbnZIcDhaQ0hZSU93?=
 =?utf-8?B?SjRpVC9KcGpJV1k0aXpyYjJIZXZBY1M4R0kwalBKZ2RqbEhRVm5OQkVxWTV2?=
 =?utf-8?B?c1ZyNlE3R1MvWXVBOUREcUJJaTNXeWRFWER1ejZhbHpMdzNXdEZWd1E1YkNn?=
 =?utf-8?B?YWFjVHdnbHo1SHRzdm41Z2Y2NzJ1TW1jMytvNGJESVpFUXdXRzgvYWJqMnBE?=
 =?utf-8?B?aEhSUGNLQUxpVS9ReFdKK3MyQ2VjMW5QTFBkcUFIdnYyMytLQUVNUjNNczZG?=
 =?utf-8?B?N3ZFR3cwb2VubE5zQXE0OEhCUXBGVVBrK1pxR2RBV1BDU2Z0LzRVbGhzTmZO?=
 =?utf-8?B?aEptR1pEaVZGNXZ3Y21qdnhBdmdUdXJxY1BCc2pGNXB6Z2NHSnhEcHd2b0ZF?=
 =?utf-8?B?QlQ2UFA3aDk1NzhqS2ZYV1BTYU1NNlJGZXVMQlZyVldIckVyQnd3enVWeXRH?=
 =?utf-8?B?bVp1K0xwa2NQZkNTTHdmaTBHY3N3UzJCVE50T0tzaFk3VXoydXdaV0JKalNj?=
 =?utf-8?B?OFIrSkoyWDJFbzVXTy8rRW9hYTdFc3pRS0tnVDBwR2UyRzZDdXkwbThhcFVF?=
 =?utf-8?B?Y0VEN2diV0F4YW5QUkJHM2JOZ21GMEVKMjdPR0g0ZWxmcEJhcTdCdUZ4UFVG?=
 =?utf-8?B?MjZvQkE4bFduRHY2aVF6ajlxWWlFTGI4UlR6aUU2dkNxSXJEUyt1Q1RqT0pJ?=
 =?utf-8?B?MlYyL0YveVZLRE9TeG1EMUx2RDhURlcrNllIeUVpTFE2aGVTaWVsSUNCeEc0?=
 =?utf-8?B?QjMzalM1NjZGOCtwbk9odGovT1kwUnozVXVqMFBrNWVxMFh5RzN3MHJnRlRq?=
 =?utf-8?B?VGU2ait4WElndGJjZlpPMG1tcGpMUFUxV2pVK3k3YWU5Z1FuNjUva29rbFhp?=
 =?utf-8?B?ZjhpV3U2TlpxZ3dwWUdiNWkrZFU1SWg0TVdCcGl0MlQwdnBGak8rc1VsRU1X?=
 =?utf-8?B?anZzcGhTT1VsUWNHNDV1bFZxSEg0MDJvdWNPc0xZVHlXMENiTGNXWWRabmIr?=
 =?utf-8?B?NHM3RjZFTGxHaXVNQ2xjakFYOGQyQy85eDlIS0pEcUgrbGFvSWo0WUdZQjF4?=
 =?utf-8?B?dUx0bDlKaVJzWXl2QnhtM24xY2k3cWJocWVRZXo5N1JOcWpVZ0tjL05YeUNr?=
 =?utf-8?B?bzgyMGxDYitJU3JCQUVwUHRVV2ltYm9zYS9ybitIZ3FtTUV4Tnh5bWc4WjVz?=
 =?utf-8?B?R2h1NzF2VWRieWdDNlY5bCtWTTI0VGlEWEkwR3d1czNhVmc0Q0pySW1SZ2Yr?=
 =?utf-8?B?OGVaY3libjlta2llRlpyazhRUHNEQXJmTmtyVlFieTMwRnM0SmgrbW5JTlUx?=
 =?utf-8?Q?sZcynKDaEhQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1FxaG1uU0xkZVJaQUNvelNCcnB2S3p1K2N5d0dqVkRJdXhmVWJjTlZtUnI1?=
 =?utf-8?B?U1NCa1MydVFJcW4xQUpTT3VFdzErYndwbVBpT25VMmRmdnJ2VklKV01rTnhm?=
 =?utf-8?B?L2RsM2EwYzEzM3o4YkpiQUtyM2p4UTJ4NkNpQ2N4UU9heEJjZzJ5bXlMVVJS?=
 =?utf-8?B?TXN0UFcwU09nQ0p3akZPSHkvWmlHWTFpV3R2YzRLemMxQ1V1a0R6V25wWWtR?=
 =?utf-8?B?R1IrblR1MVNuREo3RzlSU1R2M1FiZXM5MjU1Q1l6RVFJVWI4cFV0Q1ZmTVhZ?=
 =?utf-8?B?MXY4Z05qUzJzYjc0ZlAwRFg3aEh2SnNsME40ajNURFVzaWlPOGNDaGdzRml4?=
 =?utf-8?B?ZU5TY2V5ZXRTV1NrUjBKUjN0V25rS0VRMVVkVnVPUTl1NzNwTDNBSEQrNS9E?=
 =?utf-8?B?VXNxYTk2Z0Ftby9QZElOSVpvRjhVeUhUWFVGbW85Y3FMd2dKTDhPbENPeCtF?=
 =?utf-8?B?dmJUZVYrZHdCdzdHUWJ5Y3R3Q2wyUHhydWlFMUFnZnRIeFp1YW9JMXJwWTFw?=
 =?utf-8?B?YytOUG41RW5NNE4reVBMNmZLRERFd296NWFFdFUwUXRaYlhuYTJqMFl5a3Jo?=
 =?utf-8?B?dDlYYVZvQlV6OWNBVVRPZFZhTG9VWWxOQlEvRVlBU0NJOHArZW1PcGxKQXlE?=
 =?utf-8?B?dnNyeFhHRVFkYXpqcnFiaEY3MzRDK2JIdTdTaGZMKy9LMS9Obktxckp1Q0F2?=
 =?utf-8?B?YnUyQXFIc2RwKytqNjMvL1FCa2RoK1JScFNzM3FjMzNyYlpBOFJpbjZYemR4?=
 =?utf-8?B?M0RmUHMweGsxeG1xOVFYSEU5M2F1Z0gxMWM5WmFVMTEwSm9Sd2FFemZxREpU?=
 =?utf-8?B?OXpMYlhwS3A3RnRxdHJlKzBxNW95aTlINVp3SHl5VWlaaWJjN1NLeTFxYUg5?=
 =?utf-8?B?bDNnS1Jkbmd0T2M3eDM5czY5cG9JcUxPZUdGL2lKam9abm16NjNYNXdJTTVG?=
 =?utf-8?B?STRBQld6enU4Ry8xbmxqMFBHelFDY1JsV3pnSDR2WDM0a1p5ZjhOTC9iaUlo?=
 =?utf-8?B?UFZvT0JnbkUvVTE1cE4zaDNCU2h4aCtEM2NDdStQM0c0ZW91M3A0UlRENS9z?=
 =?utf-8?B?RFN3VTN4QVlzSUVvTFpPL2U1bkZJK2dBRGdaZjFGc0pDdncrM2dtbzBKRlAz?=
 =?utf-8?B?aDBmY0Vxa091WlVhN0NrdlhtV0l0QWlOQzZjUzlva2d1b1JLQVgrNGQ1RmQw?=
 =?utf-8?B?WTNCbGEzeHlIRUxMWkxETk1jeUtJZm5UczZPYndXSzZxekIzcU9Kc1VQYTVT?=
 =?utf-8?B?ZlFUREIzaXY4dTNlNDEvRUt1VUJxY3JoRDFnMXlkTjQvSkdjeGZ2ZDJuYlpX?=
 =?utf-8?B?dDBaVisyWFFWcm1wTTd2bXJGSmRVcVVrZlpqbUlnOFpid0Y1SFEwZzQ3Wlow?=
 =?utf-8?B?cXVSaUU4NGlacVlWM2FaSnlXbkN6cVdOM21pcjVpd3VjdEM5eXFiV2k2bk54?=
 =?utf-8?B?Y25Hb0sxS0pBVFNEaUU2emFabkdoY3ltMERwMzBJQWNrMjJSOXJ2bk12SVpm?=
 =?utf-8?B?ZVpBMVp3VVYrVURzSC9iNVYzSUtqcE5mZ3FIdGpvUTV5WUxUOHE3K0tVU2dS?=
 =?utf-8?B?a21HQzBHZG01cmhrRitVTCtFaENrNFVNQS9zOGM5Qi96c0w4NExrbWJpTks4?=
 =?utf-8?B?MVpHNFZWaG42eUsrVi96VHNibENnRjErRlRtR2gwcXFsVVdPSTM4cXNrWkFj?=
 =?utf-8?B?MEZFYWo1bVJMRXBpY0YwSVBwbzV3QkxMQklLVFpXVVZ6WEpJUnQwZGdyNWts?=
 =?utf-8?B?YkNIS0lOeHhobUJkTU9PTHlVbmlkSWxmZDRBUWFvQXJld1RSdENzVUkzZjBv?=
 =?utf-8?B?ekR1QVdjUUtlN0d5KzZLOUxVWWMxYncvNEtDTjlMdjNTUlNHVmJYdGdpRkZr?=
 =?utf-8?B?eXZxMjVrNDNKMEsxa3VmTnpXdlduQklJQTRxMUsvZFc4N2J1eTVTK2dXcXJi?=
 =?utf-8?B?VVBCUE9rM2p2ek9qVGNCaSt0L0YrS2thTkFZWURVN09BS2xnZFVNZ2MxYy8r?=
 =?utf-8?B?WkJhdWorMi9XQVV2SDhtaXVQZVFBV0RwOHRES255RGFsRlAxR0dsZml4QWdU?=
 =?utf-8?B?b2RBaitmb0xibndXWHNsZCtmbnZFby84OFlwWDZjSmFNSWRoZ1pEM1dZVVNG?=
 =?utf-8?B?SUsvbm5uZVdvcTNtRUE1NWxOZCswdkRITGhTK2RudVQ3cnJlcGpFdVpDMHV0?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c5af695-7dcb-4be7-fe53-08ddd8b91ba4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 09:26:10.2088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J19iFmme2T9cUZLlZxZs70x0DdebginiG2/mP9SkNKyhjFbrrFH/ZIYYABpnCE+huK4ZzPhatMbGu73Q8BXqQ3PBP/NLm+Gl+rtK2MWOlyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8216
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

Hi Andi

On Sat Aug 9, 2025 at 12:27 AM UTC, Andi Shyti wrote:
> Hi Sebastian,
>
> On Fri, Aug 01, 2025 at 09:48:54AM +0000, Sebastian Brzezinka wrote:
>> Relocated the workaround for "Disable Repacking for Compression" from
>> rcs_engine_wa_init() to icl_ctx_workarounds_init() for Jasper Lake and
>> Elkhart Lake platforms. This ensures the WA is applied during context
>> initialization.
>
> I would re-write this to make it a bit more understandable:
>
>    CACHE_MODE_0 registers should be saved and restored as part of
>    the context, not during engine reset. Move the related workaround
>    from rcs_engine_wa_init() to icl_ctx_workarounds_init() for
>    Jasper Lake and Elkhart Lake platforms. This ensures the WA is
>    applied during context initialisation.
>
> How does it look to you?
I also added info about which workarounds changed.

>
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> =20
> BSPEC: 55884
This is XE BSPEC I added appropriet from given gen.

>
> Fixes: 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL")
> Closes: Fixes: 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL=
")
> Cc: <stable@vger.kernel.org> # v6.13+
>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++---------
>>  1 file changed, 11 insertions(+), 9 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/d=
rm/i915/gt/intel_workarounds.c
>> index b37e400f74e5..79298618cda6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -634,6 +634,8 @@ static void cfl_ctx_workarounds_init(struct intel_en=
gine_cs *engine,
>>  static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>>  				     struct i915_wa_list *wal)
>>  {
>> +	struct drm_i915_private *i915 =3D engine->i915;
>> +
>>  	/* Wa_1406697149 (WaDisableBankHangMode:icl) */
>>  	wa_write(wal, GEN8_L3CNTLREG, GEN8_ERRDETBCTRL);
>> =20
>> @@ -669,6 +671,15 @@ static void icl_ctx_workarounds_init(struct intel_e=
ngine_cs *engine,
>> =20
>>  	/* Wa_1406306137:icl,ehl */
>>  	wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
>> +
>> +	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
>> +		/*
>> +		 * "Disable Repacking for Compression (masked R/W access)
>> +		 *  before rendering compressed surfaces for display."
>
> As we are here, I would remove the quotes here, they don't mean
> much.
Done. I forgot to add info in the changelog.

>
> With all the above:
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Thanks for the review! I edited all patches in a similar manner.

--=20
Best regards,
Sebastian

