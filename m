Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLVJHr+ShGk43gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 13:53:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB532F2D55
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 13:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C80910E1AB;
	Thu,  5 Feb 2026 12:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7rBBTdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E3610E10C;
 Thu,  5 Feb 2026 12:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770295994; x=1801831994;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=RLO9vEmIAFMNdtg52BTIEn5x5dwoOjaVEz/0RKXxf0U=;
 b=F7rBBTdfgCx/HumjmNtJAWQWBGrxWNvmSQEc8RIrBub47wGLH+Wb5Fp3
 9TCsJ05iWfLSZ17N6kddgrA4mjch18zuE2pTdJvEL8S4Z0SYw00qrDHUU
 2SkKZK3513F8N5+NYPfPTpvLqK2yi/oAVXu88EqI44kPCM1kMJtWBmFA0
 8GXuA8V3+0d8mD+2RonUPJEJp3h2JkP9eW28TZnN989xxHLTAvIrpSCbE
 7/2SnwBXu1UsTlAZAFQC9mLgJadS84zMe8t9CIfpU0XxotTLHELfmqA7D
 n2G7x38d1epaz6uMnczTLBnMz+kCkrgtnmRDPSYZ2QXOFR4Gc7BaBwP+j g==;
X-CSE-ConnectionGUID: kn0zfansQTeWKZyoQNyYCQ==
X-CSE-MsgGUID: 4SZj+qpnR9u6h0tdFCrVaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="74093461"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="74093461"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:53:14 -0800
X-CSE-ConnectionGUID: Ha/kgqGgTNeA5PhtB+ZtIg==
X-CSE-MsgGUID: Kw5btKFmRuWARUCtdprd4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210599247"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:53:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:53:13 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 04:53:13 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:53:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xtIhrpqyS2NaoakxfKlJYN3GMyz9Etd63WrNDvEmcjtZZOEoVQ+/HfH3FCzBJi74ejMq/1JslHDwmZ6jnB20IjQYOUKkw5Lrafvtfrk3jHTx30t0qg2UsYpEEtVndf53fK/+5gEjVvPaLbEzm3NMagOUbeet68FYYBVHRpong3avfk6rGNsmdCWAlJh+2i2zm/arGcsTu6NoysIach95r1wUUolP6EDEEo8NzOXAWfFsHc8uBpqI/037VvoBnGOYu/v5yfYxXA33ntOpuEIfehn2VjkvPKOz/yAMSbtAS/g6Dp+fPwSq9R8bLdV+IiPZ0KOpqH0PnGscawMw4vWVhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qzQsEOKvSGsVKjo532LMWKWu6BE5XcnK0IPMS1qdVYo=;
 b=CwvUd4VRJeMWPuQTsSIOm6UKZwa2H3z1/sCynzmTE6wztKrhuPurR/51K/CoH0YsPz08ZLbMQO5QR1k3myag02men0k5r/oPdAPaAIwbOS7HGgzxTO1O7o6zdu2Q4nMAXMjxKLeqJQ4Y54hz8SG00jYYzBFAlXXDGsXfJ1IvIxpgQx0AShB97C4qQf2VOy/040Q1lglw2w9/AEa6j6nKd9eB0e8/lCFZxPN1t6zS2d7SLjztmdzDQpDqkD+2sZQ8F3J/qBykWeCllvViEj9BnFxnFsgcvZ6y1pyuUtckAiRqsCL1jg+p0csqn5cCLoJ3zBM5o5+uiBBDgr69bo5n+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 12:53:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 12:53:11 +0000
Date: Thu, 5 Feb 2026 14:53:05 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dp: Restore the missing check for
 intel_dp_has_joiner
Message-ID: <aYSSsZXAl1AkTglZ@ideak-desk.lan>
References: <20260205083623.793902-1-ankit.k.nautiyal@intel.com>
 <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
 <aYRlrws-fvk3feUU@ideak-desk.lan>
 <db09f0bf-c782-4d9f-9e9f-0dacbbc77cfb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <db09f0bf-c782-4d9f-9e9f-0dacbbc77cfb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00003851.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:9:0:19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB8985:EE_
X-MS-Office365-Filtering-Correlation-Id: 786c9602-4330-48d4-1c1f-08de64b584b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bgahJwJw5R0eI1RXofEnAATABRO4lltEcZGgOwlqOjez09WEg1bntLQ26PqB?=
 =?us-ascii?Q?mIiz4ettx6K9u469Y9Une8OF9AmgdoLRQs+Dlj0xNuAAKQmvPC08qjL4K9+M?=
 =?us-ascii?Q?otlm790eUuTe7tI+KSWXO2fcXwF9zkzL2Ddfuw9NVTG8Ww/Sc3FX7mjryT6m?=
 =?us-ascii?Q?3WsHW3u/uWrE6cs+8/RA5TQMMjnOaLIPhv296PvfgmcbJiUZd4NZgiJH09Gc?=
 =?us-ascii?Q?+qLvIKGlgdK026JYNF8fpmxUDsxznPjmqg/ZUY18V+f8JwjAYc0LhJDBlNPP?=
 =?us-ascii?Q?nhqQmwGSdJxsybyPLx6ZgQA4zSo7k05g3iLCjUzpWcZyqrLFrJI/AQTZdjlI?=
 =?us-ascii?Q?CFNp+4HssVW34kymwvJq4/Itoea807jvjCPVdGTYrrpLB8xrYTtcWRNvItB3?=
 =?us-ascii?Q?bITavr8+DFZcts9dFiU58J10Sy9QYFJIIo7pW+TuaZEd3Rn2NFUsDOsEJwDf?=
 =?us-ascii?Q?B1UhR8pJPF7fbe5ds9Js4coTxy6vomSXh9VNAEVf9oxH269Mokv1dmWaHtIp?=
 =?us-ascii?Q?QHSeeta5eG7/htr8oEC9zYEUyQM2OQrpp1YpeTIHa9XjQXq5bjMWVlGnJekB?=
 =?us-ascii?Q?W8D0DA/Vs4xTu7GOUYloCnv4Iwimaon5vmTYWuSN6L6d7Sh/zYBC3Teoxv/P?=
 =?us-ascii?Q?cTg2vmwVRdzdeGEXmf3JmpWL4icHYz38gGpEEY5Qd8ZExkqnWn8qUzX+xZ9K?=
 =?us-ascii?Q?dp+lE0v4rJD+D7+zWEJFJt/b9FFZ8Cz/9c0yQbdzY38l2dGz3YMdfBWWPfUt?=
 =?us-ascii?Q?0F+qEh5bdYCDEtnHMMUWC9bTZcswEPsA7/olPylhYl6CGfwvWaysL16t1GWe?=
 =?us-ascii?Q?77N54KW+vtyEvM7tDIbGMR7IcugGMUp5B7126AJJ+TYa2buQfm3udzoY3YvL?=
 =?us-ascii?Q?umOeTcDy17m2nD3RVtchQcmK1S3BcrzWlPeEfmmLIBPYuociCJBbC/uoQYhO?=
 =?us-ascii?Q?0jkRI1KJII1qrSJSeTHylKlUzGbKHXN2Uqj8UYcmMqxEhwoajbdSJQgSpzat?=
 =?us-ascii?Q?e1u8JHUBWFg1o5kaKaM+iH1Fq5qBs1XLP+dYz34YO7X2C4jrcRC0xfb0XXm6?=
 =?us-ascii?Q?a72K0adnb0JXmm70owFi+zKQJPqfu/y2J4eoDv1R7Zb29iI8MuA2ZUKKzti7?=
 =?us-ascii?Q?UdPbRsWKNJobTo/Ivavkz3Ln7ju4LfgQBqBRMrJ8Xv01gKK8Fj3Ub1SFrrYi?=
 =?us-ascii?Q?1mGpEwvuWEPey4a5GN3Cff/DkCQ2owS65KV3wPj0hpgxPrNNZaT6mPbvMAjU?=
 =?us-ascii?Q?zt2ItT9ATQAmuIfityf7xqX52uD7rs09IKpPQV4XL9JE4fa1ZE/BtJXl3Ejv?=
 =?us-ascii?Q?7XefyEELtr7FnymuPJLK9GrTj8ApbVYbsUx/w5pGxLHKSa6wmMuPp4FUJyAc?=
 =?us-ascii?Q?wwc1JvIU7pBhBAyGRVtkCaYfmo4WLruvQCIVAtDhgz5kIqD2Pe7xmtf2DigE?=
 =?us-ascii?Q?n4D+5Hc7vtOy0TabamTEh5jI7swJXPkFTWqLPCEpu1/lRBIy6HqCBTI5UXlU?=
 =?us-ascii?Q?kfgGGX7aTt/E1sQxbsohfY1QmgnU46QqMXQQHlkJrA+uniGutgvAQwPuW1+V?=
 =?us-ascii?Q?SjZaXXeT1X/6CEGiSSs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d5WYb3kjNFnS3/PASDxxH8Pa3oZH5dg5jtKPuCLoMIXpdcMzk7zgIqbmC4Ig?=
 =?us-ascii?Q?FDyomMUHcQuE9Vcr3RZTfV6/M+GgWTeUCHtD3feCrI3DGHZGjQt8RfK20ifK?=
 =?us-ascii?Q?22y5G649iju2xnjedNepZay/AH9qcy/wDzZnRb5dMuS+Mif7WCFaZsEfM6ha?=
 =?us-ascii?Q?tBan1bxH2c84zDZ1Q+80T1ZP7ouudgbgiUFZEF85RuJX3/ylwi9sWmIV3dxu?=
 =?us-ascii?Q?9DLrONWXTrlfSvQCBrinYVhRPt8wiGeAvuIYsGzHtWQEPoeFj6fAyXAa8y7N?=
 =?us-ascii?Q?KCocqNq/7eDOqWfcXq5NPV82XPM3Rw+vXq/Kw89mLibFmScnTrO1hh7LjRo7?=
 =?us-ascii?Q?uJQ1j0P+jy/YZyiLOxgPGnLb/TJYpX7OlKqwJO6DHvYfQl9uEDFtDA6kknbo?=
 =?us-ascii?Q?jkgd8aLC0/vFVqoLgUhUOwspt+ZSbFVSJEaWWkf3IcoCMlEAgkFwQ/zxPRpN?=
 =?us-ascii?Q?G895no/vXba2KblNUZ52GHdPSUoT9ikSPzK4UFmuUxkHtMXrVNnIcxQXYPUx?=
 =?us-ascii?Q?MKbmMVqMFv76f+YdEVPKWxGmQIY2mOGGAj5i+rbRZxutlC0/2kM2GcpexzHk?=
 =?us-ascii?Q?hbNuLs/qbK9P2Vx3ttBYyCUt74oMCCWi8YSW0DsElSAHMzSv76kMwH62CTQD?=
 =?us-ascii?Q?7uzu4rbeH3nHETgnYl+rJySisnXL43hCq/RIBMQ00LYKE+Cf5mei0iN6VL8u?=
 =?us-ascii?Q?m0Eu5RoFepNlK+QkQ1Gcv1Unoq+/gDHF4IUJl9NXjQNRw338kT8HOq99hTZd?=
 =?us-ascii?Q?hZxTVfMddwgCKGVzXAca8WU1X38+SPX55n34Hyf1TRSvA7RsQPSQMyqrvuZ7?=
 =?us-ascii?Q?ghKTZvhal0a3189MeNCuMPbIrpJt2gmUi/mzbQlDFhuo919xD0bPh0/5rMYS?=
 =?us-ascii?Q?liCyIDRWUPONDY+FiSZ8xHo/AeJdVHZPv9vSpQ4sgXjiJpqPEzDgeZPkIGUZ?=
 =?us-ascii?Q?UlxKysbBgjNF+NgvRywUh0E5sjED01xEOtMkv3ro0usmNCS+ovZipDvyn4sD?=
 =?us-ascii?Q?3P2B/Bq8wVR4NaML4etWLSNHdKDlm2rEe3ZJ1j3FzcLcEIG4acHTFcPxKhkC?=
 =?us-ascii?Q?vYze3MyJPqWxgsKKViDnYyVRwzCcUzh3J3Ndu1aH5u0nF/ednq6ILENGikI7?=
 =?us-ascii?Q?++4g0nHt1Jfc2pCYyKSu6DT1lRk5V4oyBfQZO+n6U6InM8wfRkj08SX2lZvK?=
 =?us-ascii?Q?upjxPbj/j7cR5+AbRynRP/g0R27SuR+OclXi44oYD0KrqyTeaA/EqLZ+RHhh?=
 =?us-ascii?Q?bJ+K+//f1XN2Rxi0xz1fwcv72fiuJ0oAIKydZ6aXQzn8paDlIUTxcLdXQhy7?=
 =?us-ascii?Q?tVU4FK6n6sSE/EAPeipw1JwdgwKTAcGMNohjCIoUgUmCIL0faXz3he9sxtzC?=
 =?us-ascii?Q?un4Dz/h18pP+pRT4FnWkCsqCRQKTLwOcVAvC/yKNu2j4G+G7eSfaTtceqqoQ?=
 =?us-ascii?Q?OgHLo5nPcV+DEGVM+hJprzl/Z76PTaNstv6V1ZE154g0KQ+dyO6DxA+Hrf2+?=
 =?us-ascii?Q?mAQUi9yckIoBpRzaszw3Pn5GI4SwpieCRPrEHlpHw2z9uRTKGob2xSndChPO?=
 =?us-ascii?Q?IEtYMo7BPBhrq/ELY8JihFsz6QFg3+anhFyLVnyQoCLl4ME1HC1O7NV+/m1l?=
 =?us-ascii?Q?wwNLswS8yIf8Wh2WFxwLLC1Z2DHTl256Cv7lq488+C6ZFP0Ox919H5zy9W93?=
 =?us-ascii?Q?sAmJ3ecFFLhmHtVZr4b06rfrcBwdWwGe+5NVO5hVdWlzdhNHq2Z73q3G3ryM?=
 =?us-ascii?Q?lGijY5TOGw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 786c9602-4330-48d4-1c1f-08de64b584b7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 12:53:11.3347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r4gIBybeR7oC4oYXDdC+gulQKzxmtEcy97+Ddj4kiUEsYdBgiYGrRju8B+G/gia/iwaIGmOaQpdfRCAszhtNxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8985
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB532F2D55
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 06:07:44PM +0530, Nautiyal, Ankit K wrote:
> 
> On 2/5/2026 3:11 PM, Imre Deak wrote:
> > On Thu, Feb 05, 2026 at 02:06:23PM +0530, Ankit Nautiyal wrote:
> > > Commit ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
> > > replaced intel_dp_num_joined_pipes() with an explicit joiner candidate
> > > iteration. The previous code implicitly checked for DP joiner capability
> > > via intel_dp_has_joiner(), but this check was lost during the refactor.
> > > 
> > > Restore the missing intel_dp_has_joiner() check in intel_dp_can_join() so
> > > that DP specific joiner conditions are taken into account.
> > > 
> > > This change also requires propagating struct intel_dp * from the callers
> > > down to the new check.
> > > 
> > > Fixes: ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
> > > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp.c     | 16 +++++++++++-----
> > >   drivers/gpu/drm/i915/display/intel_dp.h     |  7 ++++---
> > >   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
> > >   3 files changed, 17 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 4f5b89f80e55..3021c64d0f85 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1397,9 +1397,14 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
> > >   }
> > >   static
> > > -bool intel_dp_can_join(struct intel_display *display,
> > > +bool intel_dp_can_join(struct intel_dp *intel_dp,
> > >   		       int num_joined_pipes)
> > >   {
> > > +	struct intel_display *display = to_intel_display(intel_dp);
> > > +
> > > +	if (num_joined_pipes > 1 && !intel_dp_has_joiner(intel_dp))
> > > +		return false;
> > > +
> > >   	switch (num_joined_pipes) {
> > >   	case 1:
> > >   		return true;
> > > @@ -1496,7 +1501,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > >   	 * over candidate pipe counts and evaluate each combination.
> > >   	 */
> > >   	status = MODE_CLOCK_HIGH;
> > > -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
> > > +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
> > >   		int dsc_slice_count = 0;
> > >   		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> > > @@ -2895,7 +2900,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
> > >   	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
> > >   		return -EINVAL;
> > > -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
> > > +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
> > >   		/*
> > >   		 * NOTE:
> > >   		 * The crtc_state->joiner_pipes should have been set at the end
> > > @@ -7213,13 +7218,14 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
> > >   	return sdp_guardband;
> > >   }
> > > -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> > > +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
> > > +				     struct intel_connector *connector,
> > >   				     int hdisplay,
> > >   				     int num_joined_pipes)
> > intel_dp can be always deducted from the connector, via
> > intel_attached_dp(), so no need to pass intel_dp separately.
> 
> Since this function is called from the iterator macro for DP MST also, I was
> wondering if for MST case we need to get it via encoder/dig_port.

No, intel_attached_dp() works for MST connectors as well.

> Regards,
> 
> Ankit
> 
> 
> > 
> > >   {
> > >   	struct intel_display *display = to_intel_display(connector);
> > > -	if (!intel_dp_can_join(display, num_joined_pipes))
> > > +	if (!intel_dp_can_join(intel_dp, num_joined_pipes))
> > >   		return false;
> > >   	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > > index cbd7fcd3789f..37302ebe1cf9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -227,12 +227,13 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
> > >   			   int htotal,
> > >   			   int dsc_slice_count,
> > >   			   int num_joined_pipes);
> > > -bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> > > +bool intel_dp_joiner_candidate_valid(struct intel_dp *intel_dp,
> > > +				     struct intel_connector *connector,
> > >   				     int hdisplay,
> > >   				     int num_joined_pipes);
> > > -#define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
> > > +#define for_each_joiner_candidate(__intel_dp, __connector, __mode, __num_joined_pipes) \
> > >   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> > > -		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
> > > +		for_each_if(intel_dp_joiner_candidate_valid(__intel_dp, __connector, (__mode)->hdisplay, __num_joined_pipes))
> > >   #endif /* __INTEL_DP_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index 29713075e413..b2d3f35edd78 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -720,7 +720,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
> > >   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> > >   	pipe_config->has_pch_encoder = false;
> > > -	for_each_joiner_candidate(connector, adjusted_mode, num_joined_pipes) {
> > > +	for_each_joiner_candidate(intel_dp, connector, adjusted_mode, num_joined_pipes) {
> > >   		if (num_joined_pipes > 1)
> > >   			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> > >   							    crtc->pipe);
> > > @@ -1524,7 +1524,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
> > >   	}
> > >   	*status = MODE_CLOCK_HIGH;
> > > -	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
> > > +	for_each_joiner_candidate(intel_dp, connector, mode, num_joined_pipes) {
> > >   		int dsc_slice_count = 0;
> > >   		if (intel_dp_has_dsc(connector) &&
> > > -- 
> > > 2.45.2
> > > 
