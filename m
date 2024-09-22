Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D63A97E0F9
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2024 12:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE36210E345;
	Sun, 22 Sep 2024 10:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YAirzGTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CADE10E344
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Sep 2024 10:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727002225; x=1758538225;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=alzlVr5a3thtz6Z8ikc88ZDPlpQnfPS8jzo6LvjVOSc=;
 b=YAirzGTxZs9x0EhFkpQBxzpbU6R2fxe2SNtvP0mb0S5jfRkZR5aKkqg2
 V+2/YklhLLUXw3c+nnfRDOUz0Z41EM89KHOtYAfQy/Sl8ITxAdNHtJASj
 TvR5Q1hMbjmFxo6uL/iEMC/yhqNarduE3EGv8HQ64WuF0lDUuJ1e73pug
 yvHrRqCoEQwjseyEDQWq+qWOxaiDJIhnD3hICNyDH9/qqT6eKFjVh+lqy
 N98HmyDTEpIKcbmN5BUkP5wzIWY0CtIyvSDjBidsb+lTN5ODYx5Tfg0L4
 ksUweKBYztNd1ytkjOqFFlZj7bjrLUEopQEMWH3sEqXE9xgJmmzt//qp4 w==;
X-CSE-ConnectionGUID: eW2uhHQySrSm5JHCw8i9FQ==
X-CSE-MsgGUID: 0apDqp9cSCavxVTZG/HHzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26109605"
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="26109605"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 03:50:25 -0700
X-CSE-ConnectionGUID: 2s+hH11ET1ukdIyvu75q2w==
X-CSE-MsgGUID: 5JSQq5fuQJKjrQPnria13w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="108219390"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 03:50:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 03:50:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 03:50:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 03:50:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 03:50:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LD/zJaPhvx0+HURb78m8uveAqnmCCOe0Uu59S+8GFgbS461bCfDlf9BNhcBuv4QlSBvoVgEoJaCeu73KIQKGuITp03l+7QhmtXE3VxprzyUtIjmVDf2IKXYFWbu7HrkzSUnxgYnGdKwAICg3NA4wg5zDNqbtdRWBQJ4xm4DcPDFXc+1gN6M+rFxa0A7J0zQ87nlDi3rxPC4GeTro3nHH38tOtmsKxhg2AzGSOnTNkxy2JqkogyRcuhtWOmG6bOmTZJH6NfpVkYudU+yzekEa3ZaoxkdKoP7cxTK/SYpOx5RbAgZGn8lU0a98AD8kA74aStB0mn0azQYslWlNQTeh3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=alzlVr5a3thtz6Z8ikc88ZDPlpQnfPS8jzo6LvjVOSc=;
 b=gy8sZVn4vjgwiOW0YGsrvsihrx08DdLiH7/IrvcgP/tp4E9Gef6/fCs26DKPdGf86qgbmf2X4MJuX9+KAGmNY5ohy3kjkgkWOAMl8EkFrui2vrMNqGQXd1oTtWnNjXgu64qAy4LyreODgco9YXXh0eRQy+YAkHpigPbnjcc+sR9Ui2EvvhLxhOr3yyA2+NiWJtlxLFMfDFBetiGwFW7RXmnZCajlP/XsxnQUR+Mgm5oUacgdiuYgTBjym8by3Dtv+cEEYNFeg71vV/B0lkrX+7jJQqKcQmHc2HBYR9wlFTMYXmcCaueqVwSpYaWiIkV8DZixSdiO1TeTKao54KX6gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW5PR11MB5883.namprd11.prod.outlook.com (2603:10b6:303:19f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.24; Sun, 22 Sep
 2024 10:50:16 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.7982.022; Sun, 22 Sep 2024
 10:50:16 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/7] drm/i915: Rename variables in ilk_intermedidate_wm()
Thread-Topic: [PATCH 7/7] drm/i915: Rename variables in ilk_intermedidate_wm()
Thread-Index: AQHbCFT5Yz4F1mVEkUe1jUUGw3z/KrJjqb4A
Date: Sun, 22 Sep 2024 10:50:16 +0000
Message-ID: <1119cae45e86e68cc781cdd2e8d42a7c7f43caf9.camel@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20240916162413.8555-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW5PR11MB5883:EE_
x-ms-office365-filtering-correlation-id: c672714a-384c-429d-a7f7-08dcdaf457e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U0NLem9mbUF3R0hxcmtobGRMQ3VqNlZRblo3eE5qUjNSV2kvNTJNYmE2Z1lP?=
 =?utf-8?B?MDFBNldyZllGeEtxNGJlWk0vNG16eXBtWi9JS3liRG1taVF2eElweGFLR1lB?=
 =?utf-8?B?cU1PNUwwaVRIUjd0L0g1WEFRRzBlMkY0M3doM2hTWTVHazMvMXNkMXp5L1hC?=
 =?utf-8?B?TVI1d3pjV2pERVpTOWpSNGMzbmxSMDh3OGcvNmJ5Z3NkM3hrMmdEcjlmV05Q?=
 =?utf-8?B?TEdRaEhFM0JFSDBpSDJSRGJyd0JCWmZqNk15YmlXWDUvaWtuZzdGajJsU0FL?=
 =?utf-8?B?M01pclFFWk5YRnY5VitEc1FRclNmV3RBVTVOc0dIZ1p1RmJsWkVKbE01L3ZN?=
 =?utf-8?B?Qk1nNzZROWtUMTZ4a2p1VzFVY0k4ckYzditIMXFIU3phVUJ0Vi9hbjhYVCs3?=
 =?utf-8?B?bXVwNXd2bnJmcEtIR2RSV3BFTGtQZUdaVU1CYWpIaUpmRzJnai9PQXRYRjdW?=
 =?utf-8?B?Tms4MElqa1JJc2pVd2NEV2hkS1Q3V0I0VWZGL1VHSlJvSkhhcnkzUmpzSW1D?=
 =?utf-8?B?SUVxMDZzTUlLTXk0OHE3c2xJZmVwbHVQeG1aNXV5SmlaR3o2U3BheDRKOFEw?=
 =?utf-8?B?ZkUvZHZBWmpoWGxCMkZzY2ovZzh6T2dHWVlPUGJjODhqS29CdUtRcldiUElr?=
 =?utf-8?B?UG5lY09vdGZsb2RrcjN6TzJtTEd6OHBiRHdFbjFjZDBieFZsZ2F4RENzQUtN?=
 =?utf-8?B?N3JlWGZTUVg3eFU0WTIvZTZwMUJYUEZrOVNaL25VYVdWVjhadngrOVVsQyt0?=
 =?utf-8?B?aDdOdC9tejR1VmNEeWRSRTh0S3F1Z1lpbVZoSjBOYlBMMURSRVMydjNCcTZB?=
 =?utf-8?B?Q3lTTkpyVE5Ydzh6K0grQ0RVRGFpcG50bktEZitVdHJDd3hSTFk1R0xiV1Aw?=
 =?utf-8?B?eXB1UUJMUWN3U1dRVUN4MUpiL3FzMzIvNjl0Q2tBUjlOYUlHaWtSYTB5Qktm?=
 =?utf-8?B?ZU1lU2NSNmVVZGQya3c3ck9tMmJ5TSt0UmZURnN5VjNBU21GWG9wU3lVa2x5?=
 =?utf-8?B?OUl0cyt4aFZPbXpHSG0xQzNqaTVNS2czbFpvSEVCV1diQjMyMGRNcEpMUzlX?=
 =?utf-8?B?bmh1VVV4WXkrWWZzWVMwdnk5YmIwNzZ2L0ZlaWNaVGIvZGVmeGFpQ1BJYmNE?=
 =?utf-8?B?ZkVndCsySE52Y2lBOUlZTmZqNk9sQVphVGd1U1h3d0JmOTZhWGl2ZjhhOVpj?=
 =?utf-8?B?eXA5b0hpVlBnRGdyUUJJOXQrNHhQUUN5bk1rcElBVzd2TXQ2Y09PQ1dCRUx1?=
 =?utf-8?B?WnVNaGZJUVdwZXBrWGtWUWtFSGd6c2hUTkhvK1YwU1BxNzNkZUNPSnlTTG8w?=
 =?utf-8?B?eUdaZmxKTG5oNDNVbkIvaUhsRHpXQjNWejVpaUk3K3I4L0tvai8wcHl3Ky9U?=
 =?utf-8?B?ZDBwdUl4SWdlTVdBYXZEaUhlR2hzL1NEWE1NZW1aLzU4Q0kyeVdLNnpPMjRq?=
 =?utf-8?B?dnNyMW9NYlh2bU5yMjlVVFNIdjFMSEJ4QjgzT2NnZmZlVWtmelUzRmc3MHBP?=
 =?utf-8?B?SHY2N1ZhY0swdDV4elhnVXpHa095Y3BvUTg4YWErc2JxejVJRVlac3AybDAw?=
 =?utf-8?B?aUp4SUFkMW43aVVwREswakFoZkhZM0JDdi9mNXdvVE4wS09RK1FxTUhlK0tw?=
 =?utf-8?B?czJGbzZ0RlJCMUFxSTRpTm9GTTRHREJ5STRobWxPM2lOTEY3UDZyKzBDR1Ru?=
 =?utf-8?B?RXc0bWFZMmtadkdrRXFVYVBrQkJHMHNMV2hEQWZrUjhFZ1FBUkhUZStvTDZy?=
 =?utf-8?Q?o8jQVzVgSW/KaBvHwQ4zGtEixZDDeMWM0MheSks?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RktBZUpoQlhacG9ydWcvempoRDFjNy94RmN1OGc0TUVCSnlQQmQ1V1pKalF4?=
 =?utf-8?B?UUpWbFhNUkRJL3pCVTFlVmZVM0tPMjRLUEx6dkxOV1gzalo1RDRtK3BQNUZn?=
 =?utf-8?B?VUVweGs0YzRrNUFlc2NXcGQvc2x2NGttYUh2ejNjY3ZVNGpSZ0U2QVNSRFBN?=
 =?utf-8?B?TmZja2Q4LzdydHcwYVQ4OWxTWHZGVHN4ZS85dnErVkNzcjk4WGh2TENMRW1j?=
 =?utf-8?B?d2FSM290K2EveWErZG9QdGJFTmNFZXVCRkkrOXd5OXRQT0xDM21CY1ZKenpn?=
 =?utf-8?B?aStyalNtYmRMbUxYRUYweC8rWUJtd1hldG1iQTByWHJ0bUI5cEg1ZzJobFlh?=
 =?utf-8?B?SXRoK3FjdXlzYUJZSVZxQ1FteWMwbngyemYyZVJYS3VGRDBXSDY3dE9YdzBV?=
 =?utf-8?B?eldHY0lBOFpYMWl2U0lQT0F6UStDVEZBWjQ5MzF1eVc3eEZHd2tkRStKWXA3?=
 =?utf-8?B?WDNFR29JQzJVWWl2a1prc3FsMXM5TEpuWjdNYThoRE5weUZVcDYxZzdrQ2lP?=
 =?utf-8?B?VmxFSVFhV3FOcnZWY1dhcHZ4RnVyRkdteDRuUjNJYnhvNGhlaXFNNlh4Qjdi?=
 =?utf-8?B?UWUzTGJoMWNJd0xlUHBWN3dFczRialJGakVVZGpLUzczUG5vVmJFaWlUVzVu?=
 =?utf-8?B?RW5hRUJ4NG5nb2ppUE1jT0Q0a09qenBKQXo3aXlZb1I0VUNWazVHckdxREQr?=
 =?utf-8?B?OHF5eUJ6dzBHNWgwdjlTZHE4NDRHY0NJOUpLRVpZbmplRkZ4bDk2anVNMmxH?=
 =?utf-8?B?bjY3ZThnWTUyNkE2Ynk0N2d2dS9CZ3NvR1hrSTNsUVNlTjVZMUt4STJBeEhN?=
 =?utf-8?B?RWduc2QvdUhHUk5ncUFaRXVDbnA2MVcwK05kMndTaGdlOW5TaGVLS3lWMjNr?=
 =?utf-8?B?SGxjY09TcTdzVWQrS2EweWRkZFpYSUZZRjR2bzByaGhJZDBNbzFlLzYvVWs5?=
 =?utf-8?B?ZXhYRS9hbk5ndlBacmxzdkZsOEI3cUQwV2dwOE1hTm0zNmNuZ21qemp4SlBY?=
 =?utf-8?B?OFJ2bkdwbms3aUVmQzBQRnkvZEtpNmw1eC9Rd2ZzVTdSQXc2OTBRZXVyVWo3?=
 =?utf-8?B?UE82ZWRUQWhva0NkcjEyOTY0MVgyYWhtQ2pxa1JadVdLQUFDSWhTZ0hFTXk0?=
 =?utf-8?B?YXBuT2RQdTlSK0hES3J0OGVhdnFYTVJ6YXFNR3pUNE9EaG9qSkFMYllSanl6?=
 =?utf-8?B?cUtVWkplT1VNaFhGMmo4eTRGKzYzWjkzMVRYUG9aTXNTdTFnZ20yaDZpYi9q?=
 =?utf-8?B?WVlSbGJGOE9GODNKYXFia3lEU0hRdnlseDVLQnQrVTlFWTNVSUNGeTNRZTc5?=
 =?utf-8?B?MkhoZG1hT0RuZzc2WUhvc1pXMjhkdkU0UHdqR2lpeENoVXB3WnpvUFVkK1pn?=
 =?utf-8?B?NURyUWdYOTZsN3RMZ0ZDMDExQkxxT21tRDJuYTZVMSszR3JOVDBaMktiWUtS?=
 =?utf-8?B?SXFLUm50dGgxUzZiNTh1ZVF3bU1CbTJYRWllaHNoUzhpVm5uRElPUnZuUTcx?=
 =?utf-8?B?bFVYajhYSjlpcUM1U0p5MmVpSm54TTJXbEhpcEZWQlo1OWlGMG03cDRZaTBS?=
 =?utf-8?B?Vzd3d2gzVlNYblQ0Qlo1SGp1ZW5jM05tKy8ycXc3USsvUnJiMDFBVUFhWkpy?=
 =?utf-8?B?Z0dycW5WbUcwMFd4RStGTUtST3UvcTdKcXRMSURDMVV6OTBNVU00UGo1K1lo?=
 =?utf-8?B?bFEvQ3JsL09IL05pV0QxSlQ1WXVpVEF4Z3UyYlBlaWY3MGt0QUZCaUNsZWox?=
 =?utf-8?B?ZndvdXRUOUZHakptQkJ3OWtOaEJpWlkrV3pxMXhEenVKa2R2OW9kZi9ha2Nw?=
 =?utf-8?B?VnY2Y3hXbTJWMmpSdFlzYk5YdW5yMDN6SE5HV08wZEYvd2RmVlU4VUtlNzI0?=
 =?utf-8?B?MSt6eWg5ZHByQUhFVHh6WXI5SnVzZytUOVM4ODlKampDWmlnUEtQZzVxdTlQ?=
 =?utf-8?B?cG41Y3JzL2xZSHNmUmNpMWdYVndHdDk5dlU4KzlxR3JPQ1VCWHlvVEJZb2xz?=
 =?utf-8?B?VVg1VTYwVXBzV2l1aTBGWXU0Y2JzMjk0cWlOSEFFMis2bUxjeGVFSS9VaVow?=
 =?utf-8?B?bHZmZU5mTTh5dnV4aHp1ZE9pQjUyRVlKak9HRWZoWHZrZ2xtSEVzczRBeVZT?=
 =?utf-8?B?dXR2RFpCU3dmbkloSEhMQTlFSElGR1FsQkZCdnVmYkhKV1lVK3B4TzRXYVQ3?=
 =?utf-8?Q?sZX2PDOriEnPRbzRLtZoBoE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <367F07FE92170A44B24F49160A2941EB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c672714a-384c-429d-a7f7-08dcdaf457e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2024 10:50:16.0887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wg11qybyb2GMDUPgbbJcdG7Ao7aMLNBvintt7hAcX5HYmODKsI9Cjm/g5XlqwosDMxKf7hSvHN+zTRjjPAlpkCsUyFeztQely0wy1dryfv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5883
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

T24gTW9uLCAyMDI0LTA5LTE2IGF0IDE5OjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gaWxrX2NvbXB1dGVfaW50ZXJtZWRpYXRlX3dtKCkgdXNlcyByYXRoZXIgcG9vciB2YXJpYWJs
ZSBuYW1lcwo+IGZvciBpdHMgd2F0ZXJtYXJrIHN0cnVjdHMuIEJvcnJvdyBhIGJldHRlciBuYW1p
bmcgY29udmVudGlvbgo+IGZyb20gdGhlIGc0eC92bHYgY291bnRlcnBhcnQgY29kZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMgfCAz
NSArKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2Vy
dGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+IAoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFw
aWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2k5eHhfd20uYwo+IGluZGV4IGNmYzQ4NzU2M2MyNS4uZmM5MjgzMDdkMDYyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF93bS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmMKPiBAQCAtMjk5Myw4ICsy
OTkzLDkgQEAgc3RhdGljIGludCBpbGtfY29tcHV0ZV9pbnRlcm1lZGlhdGVfd20oc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKPiDCoMKgwqDC
oMKgwqDCoMKgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlID0K
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2F0b21pY19nZXRfb2xkX2Ny
dGNfc3RhdGUoc3RhdGUsIGNydGMpOwo+IC3CoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9waXBl
X3dtICphID0gJm5ld19jcnRjX3N0YXRlLT53bS5pbGsuaW50ZXJtZWRpYXRlOwo+IC3CoMKgwqDC
oMKgwqDCoGNvbnN0IHN0cnVjdCBpbnRlbF9waXBlX3dtICpiID0gJm9sZF9jcnRjX3N0YXRlLT53
bS5pbGsub3B0aW1hbDsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfcGlwZV93bSAqaW50
ZXJtZWRpYXRlID0gJm5ld19jcnRjX3N0YXRlLT53bS5pbGsuaW50ZXJtZWRpYXRlOwo+ICvCoMKg
wqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBpbnRlbF9waXBlX3dtICpvcHRpbWFsID0gJm5ld19jcnRj
X3N0YXRlLT53bS5pbGsub3B0aW1hbDsKPiArwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgaW50
ZWxfcGlwZV93bSAqYWN0aXZlID0gJm9sZF9jcnRjX3N0YXRlLT53bS5pbGsub3B0aW1hbDsKPiDC
oMKgwqDCoMKgwqDCoMKgaW50IGxldmVsOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qCj4gQEAg
LTMwMDIsMjUgKzMwMDMsMjkgQEAgc3RhdGljIGludCBpbGtfY29tcHV0ZV9pbnRlcm1lZGlhdGVf
d20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoCAq
IGN1cnJlbnRseSBhY3RpdmUgd2F0ZXJtYXJrcyB0byBnZXQgdmFsdWVzIHRoYXQgYXJlIHNhZmUg
Ym90aCBiZWZvcmUKPiDCoMKgwqDCoMKgwqDCoMKgICogYW5kIGFmdGVyIHRoZSB2YmxhbmsuCj4g
wqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDCoMKgwqDCoCphID0gbmV3X2NydGNfc3RhdGUt
PndtLmlsay5vcHRpbWFsOwo+ICvCoMKgwqDCoMKgwqDCoCppbnRlcm1lZGlhdGUgPSAqb3B0aW1h
bDsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlIHx8Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNf
c3RhdGUpIHx8Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0ZS0+c2tpcF9pbnRlcm1lZGlh
dGVfd20pCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiDCoAo+
IC3CoMKgwqDCoMKgwqDCoGEtPnBpcGVfZW5hYmxlZCB8PSBiLT5waXBlX2VuYWJsZWQ7Cj4gLcKg
wqDCoMKgwqDCoMKgYS0+c3ByaXRlc19lbmFibGVkIHw9IGItPnNwcml0ZXNfZW5hYmxlZDsKPiAt
wqDCoMKgwqDCoMKgwqBhLT5zcHJpdGVzX3NjYWxlZCB8PSBiLT5zcHJpdGVzX3NjYWxlZDsKPiAr
wqDCoMKgwqDCoMKgwqBpbnRlcm1lZGlhdGUtPnBpcGVfZW5hYmxlZCB8PSBhY3RpdmUtPnBpcGVf
ZW5hYmxlZDsKPiArwqDCoMKgwqDCoMKgwqBpbnRlcm1lZGlhdGUtPnNwcml0ZXNfZW5hYmxlZCB8
PSBhY3RpdmUtPnNwcml0ZXNfZW5hYmxlZDsKPiArwqDCoMKgwqDCoMKgwqBpbnRlcm1lZGlhdGUt
PnNwcml0ZXNfc2NhbGVkIHw9IGFjdGl2ZS0+c3ByaXRlc19zY2FsZWQ7Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgZm9yIChsZXZlbCA9IDA7IGxldmVsIDwgZGV2X3ByaXYtPmRpc3BsYXkud20ubnVt
X2xldmVsczsgbGV2ZWwrKykgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfd21fbGV2ZWwgKmFfd20gPSAmYS0+d21bbGV2ZWxdOwo+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgaW50ZWxfd21fbGV2ZWwgKmJfd20gPSAmYi0+
d21bbGV2ZWxdOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxf
d21fbGV2ZWwgKmludGVybWVkaWF0ZV93bSA9ICZpbnRlcm1lZGlhdGUtPndtW2xldmVsXTsKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGludGVsX3dtX2xldmVs
ICphY3RpdmVfd20gPSAmYWN0aXZlLT53bVtsZXZlbF07Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgYV93bS0+ZW5hYmxlICY9IGJfd20tPmVuYWJsZTsKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYV93bS0+cHJpX3ZhbCA9IG1heChhX3dtLT5wcmlfdmFsLCBi
X3dtLT5wcmlfdmFsKTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYV93bS0+c3By
X3ZhbCA9IG1heChhX3dtLT5zcHJfdmFsLCBiX3dtLT5zcHJfdmFsKTsKPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgYV93bS0+Y3VyX3ZhbCA9IG1heChhX3dtLT5jdXJfdmFsLCBiX3dt
LT5jdXJfdmFsKTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYV93bS0+ZmJjX3Zh
bCA9IG1heChhX3dtLT5mYmNfdmFsLCBiX3dtLT5mYmNfdmFsKTsKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaW50ZXJtZWRpYXRlX3dtLT5lbmFibGUgJj0gYWN0aXZlX3dtLT5lbmFi
bGU7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVybWVkaWF0ZV93bS0+cHJp
X3ZhbCA9IG1heChpbnRlcm1lZGlhdGVfd20tPnByaV92YWwsCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBhY3RpdmVfd20tPnByaV92YWwpOwo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlcm1lZGlhdGVfd20tPnNwcl92YWwgPSBtYXgoaW50ZXJtZWRpYXRl
X3dtLT5zcHJfdmFsLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWN0aXZl
X3dtLT5zcHJfdmFsKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJtZWRp
YXRlX3dtLT5jdXJfdmFsID0gbWF4KGludGVybWVkaWF0ZV93bS0+Y3VyX3ZhbCwKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFjdGl2ZV93bS0+Y3VyX3ZhbCk7Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVybWVkaWF0ZV93bS0+ZmJjX3ZhbCA9IG1heChp
bnRlcm1lZGlhdGVfd20tPmZiY192YWwsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBhY3RpdmVfd20tPmZiY192YWwpOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKg
wqDCoMKgwqDCoMKgLyoKPiBAQCAtMzAyOSwxNCArMzAzNCwxNCBAQCBzdGF0aWMgaW50IGlsa19j
b21wdXRlX2ludGVybWVkaWF0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
PiDCoMKgwqDCoMKgwqDCoMKgICogdGhlcmUncyBubyBzYWZlIHdheSB0byB0cmFuc2l0aW9uIGZy
b20gdGhlIG9sZCBzdGF0ZSB0bwo+IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGUgbmV3IHN0YXRlLCBz
byB3ZSBuZWVkIHRvIGZhaWwgdGhlIGF0b21pYyB0cmFuc2FjdGlvbi4KPiDCoMKgwqDCoMKgwqDC
oMKgICovCj4gLcKgwqDCoMKgwqDCoMKgaWYgKCFpbGtfdmFsaWRhdGVfcGlwZV93bShkZXZfcHJp
diwgYSkpCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbGtfdmFsaWRhdGVfcGlwZV93bShkZXZfcHJp
diwgaW50ZXJtZWRpYXRlKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
biAtRUlOVkFMOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoC8qCj4gwqDCoMKgwqDCoMKgwqDCoCAq
IElmIG91ciBpbnRlcm1lZGlhdGUgV00gYXJlIGlkZW50aWNhbCB0byB0aGUgZmluYWwgV00sIHRo
ZW4gd2UgY2FuCj4gwqDCoMKgwqDCoMKgwqDCoCAqIG9taXQgdGhlIHBvc3QtdmJsYW5rIHByb2dy
YW1taW5nOyBvbmx5IHVwZGF0ZSBpZiBpdCdzIGRpZmZlcmVudC4KPiDCoMKgwqDCoMKgwqDCoMKg
ICovCj4gLcKgwqDCoMKgwqDCoMKgaWYgKG1lbWNtcChhLCAmbmV3X2NydGNfc3RhdGUtPndtLmls
ay5vcHRpbWFsLCBzaXplb2YoKmEpKSAhPSAwKQo+ICvCoMKgwqDCoMKgwqDCoGlmIChtZW1jbXAo
aW50ZXJtZWRpYXRlLCBvcHRpbWFsLCBzaXplb2YoKmludGVybWVkaWF0ZSkpICE9IDApCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBuZXdfY3J0Y19zdGF0ZS0+d20ubmVlZF9wb3N0
dmJsX3VwZGF0ZSA9IHRydWU7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cgo=
