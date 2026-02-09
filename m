Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L8nJTyqiWlZAgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 10:34:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EDC10D9BD
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 10:34:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E2010E134;
	Mon,  9 Feb 2026 09:34:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kCKh9tUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE9810E134;
 Mon,  9 Feb 2026 09:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770629689; x=1802165689;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TbqTs11DzdjwtU3LwgVNrP9Mj/oXWBhwo0q0CymjK98=;
 b=kCKh9tUrmwecj9qdKIbOWFpd+5GcvpTWk777f/qB4wdz0TyJ2Xw9IrIv
 RJRfordcY4U0jCF+sHJx5hLfiI5kKhyBuop/ETerKk0frrIAjPzy+yAcK
 yM7dIEyXz32upF9Y1rC7ceoVJqDj92RrNO7foQBIqSZlHwg13b9BPRlkU
 y16KHXxqMsj96XyAd43MLrem4uoUqJIltew/2T8EhnmsuAUHZnSRA10E3
 YyxC1XiyCyjPb/7ouxLZd3Rdy9c1jqy2/RCI/g670sZBI7ARHeGwziyZW
 aSKAI4besPJp17z0KM5CcIQlUaiRPKOwybyBJbJdLpKFHxDN1BUCaSMzg Q==;
X-CSE-ConnectionGUID: s7ewT8u2SaW/PG63cWeL7w==
X-CSE-MsgGUID: XXKXicT7SGOda4lNIiAYkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="71921691"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="71921691"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 01:34:48 -0800
X-CSE-ConnectionGUID: u6+pzIofR9WXlMA7qHZA+w==
X-CSE-MsgGUID: 6dp8Gn5oSxC8OjEwBhblww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="210723996"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 01:34:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 01:34:47 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 01:34:47 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 01:34:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cGQze9WQyvIYElWjAzzuCXyjgJbmqthezGCt1TF69Thev/i9WvTOqf3zIw43EuYSFc4VKvbNki66BlexPROPDlSs+69KPXxq8JiiYrZlMXNgva4sfNoYH6Yf4u3Tr/q0hH+8ZfwZKYphD48CCsCcKmLjmK1C6H2mKRfIfBiyfUzT5E2OLoQX8Eh/qigEjD2nVI4Err14HRpfetfZmAwF4AE4RO55l7D5AegRJQxouACiH/ZjhmWQk0ZhiK6NW+pB8FJRHG2jqOOx+UyFI0E7ovmwTfgks34+4iq5lI2vOrrWMvrZVgh2uDYm/jxNUmWCCQhGCQsduPyjNjDTC2CiGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SA6BrfNC9g7xTdez05+/pEi7OW51alKccMrUc8efBQ8=;
 b=y9Ly9PW525xer+0264eRxvUo8F/P7Z6V/7klXNPjZKjdLKYvsvt4kcuv0ARHf+BWeDjD1tGi4zUa+poei8+Zfeh8Kj/4UA9psuvrZCoWoKgDzyYyVuCXOBOHcbsSEOh9XH4mnBTwhWsUowyObmIXRwYj2Urdh5vyInTCQvSYfEAh2p+Z7bdfWzq7tAlVcRl7qpPe0GMNarjjes7/diHYIoLt+hlj38Z9o6yFqaOMYKqc2kaWHoAtEjJOfx2DZnHpxKP9wEaKX45NN4lUnoCd+kwiBVAfHUP9IsqWOXrrtq96xohJz+OdHBUkGxKaaZyrRJQBJKxAc4KzpwF+ZKjsUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 09:34:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 09:34:38 +0000
Date: Mon, 9 Feb 2026 11:34:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Message-ID: <aYmqKmGiEz7z6eUV@ideak-desk.lan>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0034.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:26f::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4867:EE_
X-MS-Office365-Filtering-Correlation-Id: df45a5fa-e662-49e7-cc6a-08de67be71b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?eWoUHFFtVDwEIu0PcUiWBBY1MjIDXkTruQ6y0wSR69dYT3Ola3WdyhEooR?=
 =?iso-8859-1?Q?TwpNBuyTvRUxnCFBu1NkD40td6X892YELa5XtGE1Gxx/KyKQA7ODACNOFE?=
 =?iso-8859-1?Q?++OIJBbHtJOUlyZj/eFZgeCww73Fp/TEU7qhCvdBB4g0Ax/Bc2XrEv4tTD?=
 =?iso-8859-1?Q?c2IQNKWOCluzVo2PW9I020vlgzTGOrWLx003acwt2f45H2gST6LccBuuuD?=
 =?iso-8859-1?Q?UKNf9aaK4ri4NhpUSHv0h4De6ad3x4gp/CjMsj5px27r7559YpLUascMMS?=
 =?iso-8859-1?Q?aYLNQGJ76cfwq9mhLScjgZMJ6mo+/u9KjcQ2feSqUtwL9P7R4wK4pquBYQ?=
 =?iso-8859-1?Q?Pf26BekWDGL2p1ymbUuHGy8/IgHGg+4CgsjD3KFXFHOHP/VnJKr+hGNsuI?=
 =?iso-8859-1?Q?LU7eqm7V5ndtJY786Hgkt8tGdjRaaWja+tNqNC9lGoqD+MGxadtF6vFzEx?=
 =?iso-8859-1?Q?HDmE0pLbRRjv/VWvrsHizWXb6u9S7J7L10D/Bs2BXO5e84qERLpibX47BW?=
 =?iso-8859-1?Q?7mUkJcXxy/cv9rLRoex0HjLMZSDrv4sSZGbNi4ED+w8Qs4s8nlhDTxAReO?=
 =?iso-8859-1?Q?N7EfIgxwlcvalKX8aYh3vw0LxShAWZIuDkScvL9Da52eMxJwxXPOpvPjSL?=
 =?iso-8859-1?Q?KcMb56f9yDAIFd4Mdc3bbFWQlP0A+QAfb5kdoz22832z3nafiLbD4W8MkR?=
 =?iso-8859-1?Q?Pg16LBs7h4k4cQGgUxnTITCA2Fir+dX9dshxnkQIrhB7gQ2Xk3fcd3noAs?=
 =?iso-8859-1?Q?ycJkrODpUnZynGPEV11acd/ZjdWJsi0eWgRD73UWoICfmLmOgUW4dn8v1h?=
 =?iso-8859-1?Q?UK4bc3KK5W1Haedd303djNZnVqFl1nlRdEcii0dhnNIwX8O1lgOJBDWi5B?=
 =?iso-8859-1?Q?NYgdk7BHd+oGWpY/xcG8oJgQNIKMDoVRmg7s+Wo8xMt6LJjKJVfa77djSL?=
 =?iso-8859-1?Q?ke0yitzP5x/je9RLsi0cL1eKeW0CBa/KyHrPIZYnpxeeZ7FGvlHyVLdTC4?=
 =?iso-8859-1?Q?bxEOMaTdqWqQv7PzHCmnpGWM9xH4sfNHgO7BsJlXI8aT9gZjVf/CA65OtC?=
 =?iso-8859-1?Q?uW7lSZlfHmtb1wHIIBuEJDY5w+rHJ7wV6SWINxbmF11u1BAjCPfz9ETE3F?=
 =?iso-8859-1?Q?aL2U13Bl1rPhF9uCrsTbQu27VS/zutVla8HfAlG159Np0pyEV16nrRmyDK?=
 =?iso-8859-1?Q?cuJrMPhWXUPFKrhZV+vBpJsBtaaaIVBKMOmxo1V5G8GmjbwcJXgCR2nDar?=
 =?iso-8859-1?Q?2k741sm7kxXkzIgM+l2AslkTDWDcYIZYL79W0C5TC+G7tiYhQ9/FCE0xQE?=
 =?iso-8859-1?Q?smdKwBcz9TtWAV6Pwp8jWu35V5TnPJdMVnBN65/owqakuBWvs7A4ktpwk6?=
 =?iso-8859-1?Q?TBTahhRytIucyFCasnvduEluh48Gt+MG8lUFwEo+ciKqdvTUAW6X/ajhku?=
 =?iso-8859-1?Q?3C7gS/12CxwR0shx9lmcQfZOpWyyYIEJ01aujf5AcizMNLiXd9OACEpWVz?=
 =?iso-8859-1?Q?ZDOVZXHRrJhHU/yj25vfOGohgNzXB4PtNm12Nn9hnXxRIKoQbtC1HUbcSi?=
 =?iso-8859-1?Q?yrG0grupX/ofTntx7i2z1jmm9I2r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qPfADTTTk7lDKL1kqlW8HsE9pOog9jxzVSEvWbvKacVgzh8b8p/NHRLDQE?=
 =?iso-8859-1?Q?BqQc0FooO/7GZq47VEvvEGS8tgfN0/Mq3JpiOWBsJYjk+ZnLngouOHaIiy?=
 =?iso-8859-1?Q?eIECrprAGH63tZUg6cB3h8RP101aucmsHazrfE7O3qhrzlomuhLJv4S5Gi?=
 =?iso-8859-1?Q?OnQS2uL/R0GMrXVRqcPB2UkgT3JCuAhwRWk2VQWMBxSa9S8/t4Uf1XWjnc?=
 =?iso-8859-1?Q?Wa1CtyBVdqjiy4xo7KhSQVjAgIUm+yduU9b9Mx6etj6eL3Qn9QHgrYehRW?=
 =?iso-8859-1?Q?t9KCBG/sD9fCHuqU7i2CKWlr4yxQBLHJjp+wIUNTcsryscNPq3g/asKPK7?=
 =?iso-8859-1?Q?c4wiDQhKkmxNQSsrsffrDQGeqaUGQW5IUnW8G459gURPvXVQ0Ifyw1vtCn?=
 =?iso-8859-1?Q?g7lLSk1bVJPB92hcLyHFU0TXdlnNchFMYVi4GswfXXpmp/T9JL8va+8mmv?=
 =?iso-8859-1?Q?a0P202r/18o5GbMfQY4kVndnrTeP2lm4aStjbG7hC5ClamgpezmECyagS2?=
 =?iso-8859-1?Q?20p8nTILISx35kD96q3LQb3R2R38Ya53ZJgvbJlJBfVvR5kcRlTUmMKfn8?=
 =?iso-8859-1?Q?O+RNBswtWCDXaXhlLBJ6aQe5dM32UAavOsqIf798wd4fHi9PAPV5WvkinY?=
 =?iso-8859-1?Q?c9C9B2qyP8PUfg7uO1DIOPgC1XO/IFmqj2zdr6BrxStgMGzH7QVTuhYiBm?=
 =?iso-8859-1?Q?cBqtGWcfmzN9PYjvweSFJMmEYB4HuRmF9kYJYCcRyzGqZPG2cocHGEXGVE?=
 =?iso-8859-1?Q?VhAy3ivWixhYvsvTIxphIcnpB6hdcoueaqEc7kkOLsqdWpBpbvQu4/7plG?=
 =?iso-8859-1?Q?He+EoDeSAc3QB1HogSaEc7qA7nwLiqUHwjw/4bsGc3p6WXjcm4HW6C6lrr?=
 =?iso-8859-1?Q?X6C6s+DDNSENE1a2Omy+qzjWeW2g+OZs29qrGyDTc4uJvqahVXfTUT18XW?=
 =?iso-8859-1?Q?QiGeuZrX/czQbUI7d1SgdeGK2jFjnIyuHRa0mF9bXeTe7RI24y3ZnPHtfw?=
 =?iso-8859-1?Q?vAtxgOXwADw2YSAqe1kZIuqpBreuGOQUbMxz/1ou2vc40EmQ2z/To5Fqxe?=
 =?iso-8859-1?Q?HJAnG0jeF1XPYiYtoX0OnjWDqE/n3ESYUJ/uwOBKwOHvLUNmoxEbwST30X?=
 =?iso-8859-1?Q?TtWAd/qDj7/tM68hSWoDj8Ulg4MC4FtEM5h/80mmCRiWaha0dnIlXISmLt?=
 =?iso-8859-1?Q?vtStL0EjXp4XOJ2u/wBZlpMUhbtHDCOjIl9RJ7mfZFMwrW4MgvJJvc8mYl?=
 =?iso-8859-1?Q?MSAsohYM8bfpVVg/FnX02uF0VKDc0TIQwiGfqQSw/sx4BgFQdzFJTiftpn?=
 =?iso-8859-1?Q?p5t0LtcjTT2FtdXj6Ufi7a6I1Pg59v4xv8wreVCIIjQLsNkoGbk8TU0Fm4?=
 =?iso-8859-1?Q?LmxbOe7PV2QVlx1CrV9vvv2H3KLjDIoz8cdmwXrYchGo1HYFwDeyPlPSen?=
 =?iso-8859-1?Q?c7YPYwU0y2jSKfH3VPn3a5gSKvATLXws5q6w+3aSx7v2ucanMJoAkzIlpi?=
 =?iso-8859-1?Q?5g17Cx/DYeP9ntTC5ncjELMIoes3jLJQJDBqGCkakh3cGYqlMrAFoUG/gO?=
 =?iso-8859-1?Q?4veFuN/YNOC5nKKdq/f68cMnVjRHlKngG6o6bfF2DcI3jQdxV/T6DZgAXR?=
 =?iso-8859-1?Q?vzRn/t7GuSf4QGz1qUSJCPGgAX+Bl8VaAxGVEu9pul+3KgmF638UNokFrZ?=
 =?iso-8859-1?Q?9n63pw0Jo+l/ffZB2D1OjSzRrn9MGQsaKQDTZaUeyRma1wVswhE/9GnenL?=
 =?iso-8859-1?Q?kVf4QSU9o2mwkpN53rjYpJeeY8iJv5IV3RmoZgcxhu3rea7awi/wTWRv9y?=
 =?iso-8859-1?Q?TRAoR37GWA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df45a5fa-e662-49e7-cc6a-08de67be71b7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 09:34:38.4150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: am06FDsSIlkz65vmg/tYAz/z5r8+2dSXmyRJzyG8VPCFuddeuM/gmiG3eVbNXPkmjtqL1LDQHJ5c869EGoLLEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F1EDC10D9BD
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
> 
> 
> On 2/9/2026 2:10 PM, Imre Deak wrote:
> > On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
> > > 
> > > 
> > > On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
> > > > 
> > > > On 2/6/2026 4:12 PM, Imre Deak wrote:
> > > > > The pipe BPP value shouldn't be set outside of the source's / sink's
> > > > > valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> > > > > value to 30 due to HDR.
> > > > > 
> > > > > Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> > > > > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > > > Cc: <stable@vger.kernel.org> # v6.18+
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
> > > > >    1 file changed, 12 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
> > > > > drm/i915/display/intel_dp.c
> > > > > index 2b8f43e211741..4d8f480cf803f 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > *intel_dp,
> > > > >                       bool dsc,
> > > > >                       struct link_config_limits *limits)
> > > > >    {
> > > > > +    struct intel_display *display = to_intel_display(intel_dp);
> > > > >        bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > > > >        struct intel_connector *connector =
> > > > >            to_intel_connector(conn_state->connector);
> > > > > @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
> > > > > *intel_dp,
> > > > >        limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> > > > >        limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> > > > > -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> > > > > -                intel_dp_min_bpp(crtc_state->output_format);
> > > > > +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> > > > >        if (is_mst) {
> > > > >            /*
> > > > >             * FIXME: If all the streams can't fit into the link with their
> > > > > @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
> > > > > intel_dp *intel_dp,
> > > > >                                respect_downstream_limits);
> > > > >        }
> > > > > +    if (intel_dp_in_hdr_mode(conn_state)) {
> > > > > +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
> > > > > +            limits->pipe.min_bpp = 30;
> > > > > +        else
> > > > > +            drm_dbg_kms(display->drm,
> > > > > +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
> > > > > valid pipe bpp range (%d-%d)\n",
> > > > > +                    connector->base.base.id, connector->base.name,
> > > > > +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
> > > > 
> > > > 
> > > > pipe.max_bpp < 30 will be either due to the max_bpc property set to less
> > > > than 10, or perhaps when the panel itself does not support 10 bpc
> > > > (limited by EDID or VBT).
> > > > With these constraints doesn't make sense to enable HDR and send HDR
> > > > metadata.
> > > > However, as we see in some reported issues [1] [2], in practice some
> > > > compositor seems to enable HDR by default and with the hard limit set,
> > > > they report blankout.
> > > > So it does make sense to raise the min bpp limit only if its inside the
> > > > supported range.
> > > > 
> > > > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > 
> > > > 
> > > > [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> > > > [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
> > > > issues/5969#note_3248404
> > > > 
> > > 
> > > I am not sure if this patch would help with the above gitlabs. For example
> > > in case of #7052 pipe max bpp is 30 and the commit still fails.
> > 
> > It does fix though reported cases where the sink does not support 10 BPC
> > at all. Yes the monitor in #7052 is still a problem, since it supports
> > 10 BPC only with lower resolution, where the link BW would allow this
> > and he monitor doesn't have DSC either.
> > 
> > > However, I need to look deeper.
> > > 
> > > I am thinking of relaxing this restriction all together because the earlier
> > > assumption that a panel advertising HDR will support atleast 10bpc in all
> > > it's mode turns out to be false.
> > > 
> > > Currently, I am inclined on the following policy.
> > > 
> > > - If DSC is not available, fall back to normal bandwidth calculations and
> > > select the highest bpp the link can support. (Also preferred by Kwin)
> > > 
> > > - If DSC is available, prefer falling back to DSC and attempt the highest
> > > bpp allowed by bandwidth constraints.
> > 
> > The patch does the above, except for not handling the case where the
> > monitor doesn't support DSC. The attach patch handles that too and so
> > fixes #7052 as well, are you ok with it?
> 
> This should work since [1] did.

I think the sink / source support for 10 BPC should be still checked as
in this patch.

> There is one more (theoritical) scenario that I think is still not covered.
> What happens in a case where 30bpp doesnot fit into DSC bandwidth?
> As I understand, the min bpp limit of 30bpp would become a bottle-neck even
> then?

No, the link BW requirement is determined by the link BPP, not the pipe
BPP for which the minimum is set. The link BPP in DSC mode can be
lowered below that, based on the sink's minimum compressed BPP support.
So in the fallback case, where 30 BPP uncompressed mode is not
supported by the sink due to a BW limit, DSC is used instead lowering
the compressed link BPP as required.

> [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
> 
> > 
> > > I am working on a patch for this and should be able to float something soon.
> > > Imre, if you agree with this policy, would you please wait for the patch.
> > > That should make it easier to send out fix for stable kernels.
> > > 
> > > ==
> > > Chaitanya
> > > 
> > > > > +    }
> > > > > +
> > > > >        if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
> > > > > limits))
> > > > >            return false;
> > > 
> 
