Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aK/vJe4DEGqLSQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:21:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA345AFEE8
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C3A10F4CF;
	Fri, 22 May 2026 07:21:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AQSooiLR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C4E810F4CE;
 Fri, 22 May 2026 07:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779434475; x=1810970475;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=5WMQGZloGiHLB+8MPeeqy/jZ+kevPEr9GOW+qFFGux8=;
 b=AQSooiLR/QH9ozScv3l75EOnEHRjp3IRGvBDUw8FHaYh7QAOfOoZk8zM
 hnLNnfkI2L/B78P1WNyTc4Gflv1v1kiwpX63E0ENTgD5mBo5GZwORKRJv
 QjYLWYChl6UsmZjK9gwB/mpz9txMwANfFMu/umbyEE8ARAt0K7H+BVCLa
 F/yBfL4snVicDi/O/4QxFYoEtXQjC7Huu0dXRxWwdH4BPlYWx0WZp2BDm
 0MoyOxcMSsUyMgWB7WlniFySicbITxDfAcoCXnz2WeDoW1dKDbW4O3Vw/
 HjilIqVEGDq6FI5ECyndq5GaIdigoBcbAyWJ+tQ0o7MYfC8Jj9uLExng0 g==;
X-CSE-ConnectionGUID: UrJzQ7m1TCah+1pL0fC0qQ==
X-CSE-MsgGUID: 5IvtTVW3Qu+JuQzu9exNaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="79511953"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="79511953"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:21:14 -0700
X-CSE-ConnectionGUID: 2TYTFfrzSoerSS57Ef5gMw==
X-CSE-MsgGUID: 4ILoBIx2SSmfXFObqt6o9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="241067309"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:21:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:21:13 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 00:21:13 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:21:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g95xyBXrwrviXeADtUgtx8uf+1o0jgJzMlZfOrYePpWtTcOoW4ZccLLb3Q6KVEFf+/4Y5cFUCkiV6Etg9gwGmGjVfNrKKsZg4Gio7g4cj5SnHDhjI97xZC2iOUUFekI/ifji7f2qzcfspnzlCsCi/P5+aPTjICZ3GtGYoGETHcQBTIWs3rBYiIfg90RJUuK55KpQGoopJDW7lFfdPVI6NeP7diuhel6Z2d++0pCKO7SMUzA+3qM3gSrKd1uLUyn4LNxik8FhP6xfurLWWyeRbaO0qpuSQ8NwnNMqyME8kL88dR4SZ95GkKQBjlRz3Q635r5x72blh2Iu1BHok0U65w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WMQGZloGiHLB+8MPeeqy/jZ+kevPEr9GOW+qFFGux8=;
 b=gN+Lr2b9vmxvR92cIL0NbMkSURGADxAeuG2gPD8xW68Wy/NoxNvt0WG4bqIXTd4/xTMkcp5LUg02Sq2gDZRZq1dP2UXlw51w50vvqs2lKLlPP1jKPQhlPq3ayQWg0js5nGLD3eGlxSfhIm8YiV7WvEdymVTGiTjPr24TW+89KPgrujNuAUIzhdIWmg0VVvr2AzKvD2ynqVM74cYISTVwgm+tj7azOC6vlta8ucDM2dNjwKltsDEjnDuE0zWDvTu/oUzkv5fsoR6U79nmVp77w1cdwm39ij7VTrX/SaRtKY5aFkeA08Q57rGJVLk063M8Dj9Vg507I3J9RAlJsfY3rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5322.namprd11.prod.outlook.com (2603:10b6:408:137::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 07:21:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 07:21:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 4/5] drm/i915/dp: Cache max common lane count
Thread-Topic: [PATCH 4/5] drm/i915/dp: Cache max common lane count
Thread-Index: AQHc5rkHX4YViKp8dkSHQZcIqKJwZbYZqaYA
Date: Fri, 22 May 2026 07:21:05 +0000
Message-ID: <60990acfc499a7ba2c10324dff4b43ca377121fd.camel@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-5-imre.deak@intel.com>
In-Reply-To: <20260518112427.2460725-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5322:EE_
x-ms-office365-filtering-correlation-id: 3c93504b-a132-4ee8-947e-08deb7d2b006
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700021|22082099003|18002099003|56012099003|11063799006|3023799007|4143699003|6133799003;
x-microsoft-antispam-message-info: J9K1B1uk+MOEqt5aDswu+C7EfrXa/3ZD71ThU+oj6rbPXxXrVbJ38vFT4LkuD17xDzVi+xpwz9HNs+ypQV9gYeM2GiCPtFvFGnCwbzSKgrVULmvlGLDlNbHNyA+IlNWMNsg+CP4N6tw8qK4RrRBK1WETCBwowSk27Z+aQWCDXcK2M7LU3pOpaWA+1y5N99rsUwlVDcadbadhp6ql42+fhRpX84GDUbcYYII3sX78MLBw0I4TQkVqFpJf9jVjCXmbD/uy0p6WdyZbM/bxq2OC+etBMhbU9mo6fANzul2kVCVul+mOZBbrFRs0UhdCyJk6yhgMbPNFWntCLRlqq/IxkjHjWLH8MTQX2xSjkU9zGcSBG9fcULfWT6TPUppY/dlk2wm7uEzzApT4xdSc/uoZ34f6PDLWGcCQOIJ5nai0JE3BAyuSuz6wAVbek5ifGf3Ao/bul1OZsCEGMPoR6PDl+MoUob5gM4nx5Eh/3HrnQeMqvP27RRcuzv6Y/O6kbm8BG+CZkdQXommOC1eSKucaqgMgRDG5IzSD88d3BNRY5Y5CLwWke8ifJdYYjYRTNAeUrjLYlvtYouVWzC5Ce1wTCUNUeg8dFzDPC6l1NpWJdh72DTXRzjFeXgjaIi07STj98R+poEixswaL5Ia5z3g2/8IZBPhc30BxWJrvvMbTRc8hdNj4InbEzFmZdnmb0EbEj7UQd7N5dZD5Rnsb3iYWRHDErXoZzfcMJE/EYurAuMbXBQ9dBeJq0SqWDDedsHxv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700021)(22082099003)(18002099003)(56012099003)(11063799006)(3023799007)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vkw1Vy85YXBpSW9lZU5NU0JCSTlzT2RWaGpzMVUwMjVxTk13aGY2RC9GOXYy?=
 =?utf-8?B?KzRCa1dGcjFwQVJ3MlVaWmthWWtZdHRWT1FWK3JzdWU3azVDVk11V0FSTWRv?=
 =?utf-8?B?VjNtTmJJZ3cvNHpSM1FGN0RtTXJVTjAzQU1raDBwUlRUaWVHYzZHM0NFWDJC?=
 =?utf-8?B?eUMzVjYwd01kcmFDQ0w4SjJrVkx6SnNZRmRjUFR1eFppMzhQYWhQclNHUFNj?=
 =?utf-8?B?N3FnNTVPSUhMNWMrb0J2QXJsLzR1MU9kb3JyWUkzMG5neWVsOGwzcGFLRjZw?=
 =?utf-8?B?UWtZVW5KT0xrdlQ5MklvVHhQOFp5bUU5WGptMm80cDNIbFhKdUIwcWJDVS8x?=
 =?utf-8?B?MHl0cmE0TjdSRmt6T2Q1QlRCaEErY2RxdWRZdSsrcmI5NXFTNWxoWlpLZVYv?=
 =?utf-8?B?cms4OW9pNFFmMHhVNjhtWC9iRFYvR0VLcmkxRStpOXhpMUhpZ3l5SHZHZUNT?=
 =?utf-8?B?ZENYbE90dVhycW1sWWEyMXNhc3oxKzZONEgxTkdsSC9hQVUwQktwOXFKSi9W?=
 =?utf-8?B?ZXRUazdVQmpBT0dnck9ETHFSbENSZUVNb3FIZjA0RVJlQWZDT3M1dHNBQzhQ?=
 =?utf-8?B?ZDNQWVNmSytDS2V3REtsVDI5Q0tzVVN0V1krS003SkJLaHFJU24zNkx2SGgw?=
 =?utf-8?B?bVNKTFg2VDNpVXM5UWcydWwyQzFURU1YQlArS2NqbmtDODVOajZTcEpQL2Ew?=
 =?utf-8?B?WTk0UGQ4RjZ4M2xQaDlJNXFqRndEMUdaS3IwSkRMa2krSnJFeWlMYWZyNlpo?=
 =?utf-8?B?cHhpYW9tbzg0VWdMMXlRMC9WSXJWeDZRWDh3NC9pOXk3dkplTHZCTnFDVnVt?=
 =?utf-8?B?K2s2Q1ZZV3JoVUt1YnczTkt6a1BwR1ZtLzZTVUh6NjhnYzdxNkd1Mlc0NVhB?=
 =?utf-8?B?cFpIWXFqaHlFY29XZUNoNGhEZ0RlaUYzelM3Sk9FekZVTjRiY0xIbmozN3do?=
 =?utf-8?B?TlRvUldTYVQvWFkvQTl5M3FSNHFWRFF3clBmY0k1N2liOFRzZ3Q5bXFqOTdE?=
 =?utf-8?B?MUc2TCs2YXJQQ0JzSk5DemlrbGFyc2M0cCtxRHVxV3FVcmJQbS9DcW9FMlA2?=
 =?utf-8?B?Z3BhMVlhT0dSeFpFd0ZNZHc1LytnK1JMSTRQeUg2cU03R0I2d1hVZlNFY2RT?=
 =?utf-8?B?MHM1Z2VOdE5ISEhoS2R1andhZUcxSytTd283WjFETTMrUHlJdE9CcXUxVjBu?=
 =?utf-8?B?QzQraWd3ZjJvV0dINjc3REl4clorelVuMEdTTWtTMVBRUHA2RUE0eXpXeWdG?=
 =?utf-8?B?ZmhRTWxHZERtbWdVOE1qTXdPZkZwQ1NZOHhMcUMyd2swRFM3TWFzckxpOE5u?=
 =?utf-8?B?N3prU2NnRWJQVE9wU21vcDUwRy93SUtNc1BjWW5hTGNVTmVNSGhaRmJYU1Zj?=
 =?utf-8?B?REZqbGYzY296dGI0QWt0ZGJ0UlVBUkRmS2RNdjAzOUE0Q0JxbUpQMzdZQ29B?=
 =?utf-8?B?ZDZyL0tkUXlaK1pnQkVvRkFlaEpON29Bbms1dG0vUXJCZ1JOZVpmY3RIZkUv?=
 =?utf-8?B?bDE2TEVmTktzeWttN0NHR0VxZ2NURmovMjRWZjZrVlI0REx3N3JDd0c1SlhG?=
 =?utf-8?B?UXdOcDJuOWVkUW1sSHh1bGtjZVU4YWxlaVR6cEc0UExlc1FrNHh3NkpneTBB?=
 =?utf-8?B?YVY4SmJ2NXk0S0p2eGpiOXBNd1F3M0RmNmpuQjdEMnVZZDhrd0VEN01nUEVw?=
 =?utf-8?B?bDAzNFhzOUI0NTdIdmJhVXVlMVd3dTBGY2JIcjNMR3B0SFVRQW5Kak1ucGlh?=
 =?utf-8?B?c3B6ZVZ0TmdrRXNQR2o5OVp4dEN6SkgvM1FLMHBmZ2t5aGdaR1FkbXVqekdj?=
 =?utf-8?B?YUQvMjBFVGtsS21XNVFEaTNML3JRY05HWE5jSWJKWjhEUmVXNUxNeVFoZkVD?=
 =?utf-8?B?UUtwRlBBdzd6allycFFZOEhkM0tLWG1ONGlPWUw1a0xwbDAzMzBRQ3d0cUxG?=
 =?utf-8?B?eTVic3l6eW4rdCtpZityZ3JienNXWmdBUXpDYy80QTRRdXYxVkp1SVIyYjRZ?=
 =?utf-8?B?cEtZMG55dVBVR3BLdG02dkxqckpyYVA3Vi9VYUh0ek1wMStaYjRDWlZ3Nmo2?=
 =?utf-8?B?RGN0QkgxSmJYR05OUXFGSFNIcjhaOVdMT1M0dnhobVNvMU5LRFhLQk5yN3JE?=
 =?utf-8?B?M3pFOUw0Mm5zT3d4bXVQbUVUSFZjTXIzcWxyLzF1ZVRIUytOZEhWZ3cvYjZI?=
 =?utf-8?B?WDZPUDVSS25xSDBnTFJsVVBoSDhFei9BMkgyeVFkT2lzZ2NaZVJWMld3czN4?=
 =?utf-8?B?TWR4WXUwblIycjBjQlJVM0tzSDQ5eWJTcm9rU3M5emdibndpbEJDNVdYT3Fi?=
 =?utf-8?B?YzRnditEakpCc2FQK3RaQi9veGwrME5PS3Y3NFJFc3lHUUtXVWh4MThHUEZi?=
 =?utf-8?Q?slIZZfdfFAc0e50i+vtSrXnDZfw2OekYAjyuqiqEM9YMd?=
x-ms-exchange-antispam-messagedata-1: meE01dmVT0X4VBHvYAEUn9yXNtbACxun5GQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <851A19E70BFC044C8ABD3C2630C47EB0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JP+YiU5hHrOWnbEDbAAKiSCesGPIW9K5OMwJ36l+oP47mt2tNC91LaqatIVcAFeW54cMQ0FNsz+uerNORTsIZMa18SAKBfz4+mYLOhdsg2FfIHSRxrum/afckA9EozB0LEJi2qLVH9AM7TWKBL4omVedrQBkaLCaGXuxlkt3z6q1GEGXXiiWAT+SHkvUXKG1FfTR6gBcZLmvuBfGCw76XnzvgFoEXJpKKAhKxCfhLhu7qWOwVdCTL6OtvLHgsuQYXW30E66vJ14GoXzvQy7w5BNSa8jeDPWRuRar6s0kLsdz3gIoRszXAnu4tfuKA4u/wqW9Ef9P0kgamK7kt9YTfw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c93504b-a132-4ee8-947e-08deb7d2b006
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 07:21:05.7234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bJW/IbJJWrufm3LY+Yc9Jk056KCz85pHnBqhLcJ3bkLlq/eGiUMOXh/qnO50FMiS7JY2o/c3E4bcV+t3LtPUb1iS+5f5Nqm98ocGSQcp/0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5322
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EFA345AFEE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA1LTE4IGF0IDE0OjI0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IENh
Y2hlIHRoZSBtYXhpbXVtIGNvbW1vbiBsYW5lIGNvdW50IHRvZ2V0aGVyIHdpdGggdGhlIGNvbW1v
biBsaW5rDQo+IHJhdGVzLg0KPiANCj4gVGhpcyBpcyBzYWZlIGJlY2F1c2UgdGhlIGNhY2hlZCB2
YWx1ZSBpcyB1cGRhdGVkOg0KPiAtIGR1cmluZyBkcml2ZXIgcHJvYmUsIGJlZm9yZSB0aGUgY29u
bmVjdG9yIGlzIHJlZ2lzdGVyZWQgYW5kIGNhbiBiZQ0KPiDCoCB1c2VkIGZvciBtb2RlIHZhbGlk
YXRpb24gb3IgbW9kZXNldHRpbmcNCj4gLSBkdXJpbmcgcmVzdW1lLCBiZWZvcmUgb3V0cHV0IEhX
IHN0YXRlIHJlYWRvdXQgY2FuIHF1ZXJ5IGl0DQo+IC0gZHVyaW5nIGNvbm5lY3RvciBkZXRlY3Rp
b24sIHJpZ2h0IGFmdGVyIHVwZGF0aW5nIHRoZSBzaW5rL2xpbmsNCj4gwqAgY2FwYWJpbGl0aWVz
DQo+IA0KPiBDYWNoaW5nIHRoZSB2YWx1ZSBhbGxvd3MgZGV0ZWN0aW5nIG1heCBjb21tb24gbGFu
ZSBjb3VudCBjaGFuZ2VzIGluDQo+IGEgZm9sbG93LXVwIGNoYW5nZSBhbmQga2VlcHMgdGhlIHRy
YWNraW5nIG9mIG1heCBjb21tb24gbGFuZSBjb3VudA0KPiBhbGlnbmVkIHdpdGggdGhhdCBvZiBj
b21tb24gcmF0ZXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0Bp
bnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCB8wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEwICsrKysrKysrLS0NCj4g
wqAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IGluZGV4IGY0NGJlNWM2ODlhZWYuLmMzODExMjQyMzEwYzggMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IEBAIC0xODIwLDYgKzE4MjAsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0KPiDCoAkvKiBpbnRl
cnNlY3Rpb24gb2Ygc291cmNlIGFuZCBzaW5rIHJhdGVzICovDQo+IMKgCWludCBudW1fY29tbW9u
X3JhdGVzOw0KPiDCoAlpbnQgY29tbW9uX3JhdGVzW0RQX01BWF9TVVBQT1JURURfUkFURVNdOw0K
PiArCWludCBtYXhfY29tbW9uX2xhbmVfY291bnQ7DQo+IMKgCXN0cnVjdCB7DQo+IMKgCQkvKiBU
T0RPOiBtb3ZlIHRoZSByZXN0IG9mIGxpbmsgc3BlY2lmaWMgZmllbGRzIHRvDQo+IGhlcmUgKi8N
Cj4gwqAJCWJvb2wgYWN0aXZlOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGluZGV4IDA2YmYxZmIyM2ZhZmYuLjZjNGRhZGZjMzU4MDYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTM2Myw3ICszNjMsNyBA
QCBpbnQgaW50ZWxfZHBfbWF4X3NvdXJjZV9sYW5lX2NvdW50KHN0cnVjdA0KPiBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiDCoH0NCj4gwqANCj4gwqAvKiBUaGVvcmV0aWNhbCBtYXgg
YmV0d2VlbiBzb3VyY2UgYW5kIHNpbmsgKi8NCj4gLWludCBpbnRlbF9kcF9tYXhfY29tbW9uX2xh
bmVfY291bnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3N0YXRpYyB2b2lkIGludGVs
X2RwX3NldF9tYXhfY29tbW9uX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0NCj4g
ZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiDCoAlpbnQgc291cmNlX21heCA9IGludGVsX2Rw
X21heF9zb3VyY2VfbGFuZV9jb3VudChkaWdfcG9ydCk7DQo+IEBAIC0zNzQsNyArMzc0LDEyIEBA
IGludCBpbnRlbF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoc3RydWN0DQo+IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gwqAJaWYgKGx0dHByX21heCkNCj4gwqAJCXNpbmtfbWF4ID0gbWluKHNpbmtf
bWF4LCBsdHRwcl9tYXgpOw0KPiDCoA0KPiAtCXJldHVybiBtaW4zKHNvdXJjZV9tYXgsIHNpbmtf
bWF4LCBsYW5lX21heCk7DQo+ICsJaW50ZWxfZHAtPm1heF9jb21tb25fbGFuZV9jb3VudCA9IG1p
bjMoc291cmNlX21heCwgc2lua19tYXgsDQo+IGxhbmVfbWF4KTsNCj4gK30NCj4gKw0KPiAraW50
IGludGVsX2RwX21heF9jb21tb25fbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQ0KPiArew0KPiArCXJldHVybiBpbnRlbF9kcC0+bWF4X2NvbW1vbl9sYW5lX2NvdW50Ow0KPiDC
oH0NCj4gwqANCj4gwqBzdGF0aWMgaW50IGZvcmNlZF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+IEBAIC04MTAsNiArODE1LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBf
c2V0X2NvbW1vbl9yYXRlcyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoHN0YXRp
YyB2b2lkIGludGVsX2RwX3NldF9jb21tb25fbGlua19wYXJhbXMoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCkNCj4gwqB7DQo+IMKgCWludGVsX2RwX3NldF9jb21tb25fcmF0ZXMoaW50ZWxf
ZHApOw0KPiArCWludGVsX2RwX3NldF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50ZWxfZHApOw0K
PiDCoAlpbnRlbF9kcF9saW5rX2NvbmZpZ19pbml0KGludGVsX2RwKTsNCj4gwqB9DQo+IMKgDQoN
Cg==
