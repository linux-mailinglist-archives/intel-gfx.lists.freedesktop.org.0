Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA74B2A864
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 16:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BCD10E12B;
	Mon, 18 Aug 2025 14:04:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FBimG2u0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A461410E12B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Aug 2025 14:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755525886; x=1787061886;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=bcGy/sf1Cs4pCq/TeY+SEKXjNV4E5HhF8xY58LnQ91s=;
 b=FBimG2u0BJQDqhrpVP9LWy4ECrblPwS1FtIq6SJJ/oqFlbiMNNKj7PIm
 U39QKj6FFhF6OTdidH7rx1bczqlDC829tvXzR+cLqVnRhTavrpL+WO2MT
 h3Cr69a3MfEygI6CtxwhOwokuFfeMVrWV2nHrNhNjTNGN9ZVfib6gGHnE
 B1SEEU79YeH9xyVlFZf2TpQXOZ75g0YQ2ZHV7/OCiU0Hb+7sWwHHSN6+7
 0Pw6FDpX9HzbxKyG3H6rgCMAGzEtKEtErd0+1HnMe+f9uXrBLu2i/dEMu
 +Wx21DbrnZTCj3GlSwNGiVxu68XVHWTP9u8Ya+nG+tlCFD7p9QXYBGDEu Q==;
X-CSE-ConnectionGUID: uKNqKdwYQHqDtCNABDaZFA==
X-CSE-MsgGUID: BUViwGD+QEKiWcQIdI81Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57605346"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57605346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 07:04:46 -0700
X-CSE-ConnectionGUID: DP+zgHAUSRiKAtPozDG5Qw==
X-CSE-MsgGUID: 6SP9cfXCSFGZ/Hc/kbQO2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="166753863"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 07:04:46 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 07:04:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 07:04:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.55)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 07:04:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R83qlplMLdxud/fzEWpjbcLOS20XSBWOsZIuzD09CP37iwYktI07IGx+/mZS3r56/zaZPSPuTG9lBwbSLo+M1hzMxacV/JSgf7mjuvi6Ng1T1JAAK71bnE67xEHLVd1h4HocpqeXd621XjRC77MXB00etZCIj/58pJzAYoP4ADLtTegpFNuM4dKPHqMizCjxfz7yUKWBCRZgUPAgtzaHQDAsl079hSKrO98+OCFnVpOsVGuV6UNirYTg/ycPOQpIxGu8rdHIY24iAM78k9iNhyGxj6CUf4EF8TEY/DETTvjfXmVAearSu7ejZi/z325u4SVEi2pCnaQRl1bt4Z1EwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yTImT5+HYCr7fFEbqsMCIPE/a0bm7qR2kQmQyI0fbUM=;
 b=huD7YWZ2hX78+OQASlOspuFBdYzPejSb1hM0FY27ASP6BCdmIDI9p7n1Y0l0D1BiFVCGdYxiuBzShMj5jOWM0pXdTejChGuMXndcH8xq+0TzV/lRy/iD9b1qgGLWlLdL6LzVXImY/5CxkpASTQOgs5TA/IMM3469kOLuXjO0k4nQHdw0h0oQlMcwVZ/+bYiRzmHw0qWgeafGXN5VFIQGcV+mv8GEff4mhYJIt2eobLvAenQEFV50Xwa1OFxSkG5bfv3fIHpdHKvy75x9kJkmUMREUpEZB9qMbO6wbIgq7S3857QSbA6c1QdrKAXK4cznZ5e+nUdsBm9go59AYNetXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CYXPR11MB8754.namprd11.prod.outlook.com (2603:10b6:930:dc::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 14:04:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Mon, 18 Aug 2025
 14:04:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8e309d1064aa09c47049c079b583f0dfb6635434@intel.com>
References: <20250818071605.2541523-1-jani.nikula@intel.com>
 <175552222425.2359.8280537352019435466@intel.com>
 <8e309d1064aa09c47049c079b583f0dfb6635434@intel.com>
Subject: Re: [PATCH] drm/i915/switcheroo: check for NULL before dereferencing
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: kernel test robot <lkp@intel.com>, Dan Carpenter <dan.carpenter@linaro.org>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 18 Aug 2025 11:04:34 -0300
Message-ID: <175552587452.2359.6170388271062176019@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0056.namprd04.prod.outlook.com
 (2603:10b6:303:6a::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CYXPR11MB8754:EE_
X-MS-Office365-Filtering-Correlation-Id: 05d1830d-97dc-4367-cd7b-08ddde602c92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SmEraEVSa3dnclVMbkdONEU5NFVGTHY1bFdvamh1MTY3Uk1LeUY0ZjRHZGpU?=
 =?utf-8?B?ZXpLVTNmMStQZW5neUpTUS9aWVRzTUlSVGJkZ1QwSUN0aEw0MEVQQ0R6ODB3?=
 =?utf-8?B?RTV3S3pRRjA3UmN6ZExlaFBtWTRBMjVJeDhOT3FYSnlYcEZUWE02K2tVdVFD?=
 =?utf-8?B?TkJiMGh4Y3BzY3F3K1NIWm1UaDJPRVFVeFVIaHJwTzNiSXpVbUNCM0ZLNFJV?=
 =?utf-8?B?ZnNXL3U1MnNHZUVtM2c0T1hCUG9ra0tqNFlSVW1nK1hITTRneWI5d3ZOa2tJ?=
 =?utf-8?B?cjNMUTlzVitNblJaY0NFcWhYVUxvei9jcmlYU2NvVXNyL2hOT1Frb2JpOVd1?=
 =?utf-8?B?SHlKUlRyN2N0UjhDK1hXcW9idy9VdEJJVk1TTC95NFJlOGl3THlkWkg3NnNC?=
 =?utf-8?B?QkZVTlRERkFTR254c2pOVWkwRnpndW14WktxRlZteTBhWHVJVHlMM2JYMEg5?=
 =?utf-8?B?bDFvTVpwOHd6RFhLb0p5TDNWWGQwNXVrcUNrV25SNVpISjY0Q1U0dDlTMm5o?=
 =?utf-8?B?TlN1bjZZYWVTQm9wOFFsbFZHMkN4UmphcHA1Ky9uNURjcFlucjBaK0lVNGJx?=
 =?utf-8?B?Rmllam1zaitWMWZjamZkdVNaakRMbzNXTmZVOWJkaUpGbm5ncnpmUHo3alpv?=
 =?utf-8?B?aWRjOUZwUHFQSGNVQzgwV3NYZEY0NVU0VDZaUllHeWE2RzZiQjZTdU5GS0I1?=
 =?utf-8?B?TERZOSt6Q0JJV1ZGdFhudFpNOXFzVXJnM1lEeUhtZzdkYzhiVUlETURqNnpx?=
 =?utf-8?B?cWRoYS9RK1JWMDVXVXpKVDRkcGNOK2p0NEt3dkVuMUc3TnRxZVdjM0s2UGpI?=
 =?utf-8?B?dlFxOHJLZEtMUW84UUVGWHJCS28vOVV2WUMvbVl4ci85eXc0NkZ2MDV1YTE0?=
 =?utf-8?B?V25wQ0ZDZ0RZMGFadFF3dDkvL2Y3YUFoNHg5U3YyRk1KTkJXcFFwdGkwMlJ6?=
 =?utf-8?B?dVJUOStjUWRCc2ZodjdYRmxFWkZJN0FHdTZ6TDF3NmFlUy9kWTI4VzdhQzJD?=
 =?utf-8?B?YVdOZUFjSVhQeGp5M3YwZGtUSHNDUCtUNEZLOGZ1NjQvRHc3Qnd1d2VYVXkr?=
 =?utf-8?B?MmVNTkk3TE9KdDE1VTZ4TVJJVUc3SG5jUVYwNnFKUUYybHNlV3JMekJSTVJG?=
 =?utf-8?B?V1BlaUcrbm1YZG4ycmkrSFVpL1JzZkdHYXp3OXI2bytCUlY2MnAvUmE4VWJB?=
 =?utf-8?B?UVRaaTI0YzlHRmdYcCtnaVcyNFNBTE53NEtiUFcwRTNFOVNPbCtDeWJvc3Na?=
 =?utf-8?B?dTVOeGZXOW5SYklUKytyVzYzRW9ZS25ZRjRNejd3Y1JkV1hEVHgwWEtNbXdQ?=
 =?utf-8?B?b3NwS0ZBQ3Y2c3RmdmxrR1d2alNldzZMVGthY1dXUTd1ZXJVT3VGRVUyUjll?=
 =?utf-8?B?Z1Z3aW9KaU1IWUV4L2RRcEFzejRKQllpOW1wRWZZWC91OWxjTURzMjdyNEdx?=
 =?utf-8?B?REpuRFdKb0tmeUtvZk5kZDRIcS9hSEp3VCtwanY1N0p3SXJVWmJvNjgyNGpi?=
 =?utf-8?B?Z2JkMTRQc0tjSkd1VjBkZHpadUl2VFdtZ2x3MVJDVmw4dGpYaGwrTnFqbCt2?=
 =?utf-8?B?RUwrcWFSYkJjWnE1cEV2NXYrZE9odEZGVzZ2dTByYXR4OGVMY21MTGFQS3c2?=
 =?utf-8?B?dTEyQmkwZ21NVXRQa1JPT3ZneXRsRjZqZEFIalpQalZGb0Q3MUpIdUFhbzZr?=
 =?utf-8?B?R3FwZ21PZkt0a0NLaHdWblR4Wm52WXZUT0YwZU56TkthZjdxaFR4WE52bzRO?=
 =?utf-8?B?UDFaQVkzb1ZoQ29pQXVyUlZYaElUbHVJeWFuSFVDb1p2M00xSDIyMmp2RHNS?=
 =?utf-8?B?ZnEwaXJaenBjTy9GMnBHTE5RK2JVVTR1RlNQaTFVS0ZIWmdZckZLNTJYbTVJ?=
 =?utf-8?B?SWxERHlNdWRMVnZybTMxSmVzcVdHcTlWbGwzcFRqYTQwQ1d2aGdLTXdiSllQ?=
 =?utf-8?Q?qm+BWdZFQgE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1dTQ0ZDVm01MkEzM25maWNnajVudlpJazR4azVHdndIRWhxQURhWTI4SGZq?=
 =?utf-8?B?Nzdkd1I3clF4RFo2ajZPUk9sMWIwTUE3RWtzK3pjZDZxdU9EejJlZG1xSlZn?=
 =?utf-8?B?dzQvbHNMWG1idHk5UHRJWHFwN0pXbG1QUHZJNFVMeUpEbXVrMmlWV08yYjhm?=
 =?utf-8?B?WmM5bHo4TCtpbXdwOEVpNys1cUJ4dlh3aXRka25DTzlXY2lFTmREVlJBdWFk?=
 =?utf-8?B?OTh5SkVQd3VIcnkvNW9rUFNsOW5sQkdFb2RhcUd1T0ZBakdjZnRZQzFjeDNG?=
 =?utf-8?B?cFRsdkI5ZUs4S3hnWWJpWnQyZFZMMm1odWtZQ3ZlZkhoMTgydEJQUVFvOVZr?=
 =?utf-8?B?a01FaFFIMlRvL0JoNWlsSHZBSnNSZjRkK25BR2gxZDR2ckFLbVZ4aU9JUEJB?=
 =?utf-8?B?WFpzMjV5Y1hSVTVDNjg0dXZsNXBkRURhcEI0aVR3Z0dnbW1MT2IySGo1dGd2?=
 =?utf-8?B?K2hSWVdwbGpHbkxnMk9YVy91eW1SaGJ1ZTZEcEpjYWw2WGFlN2c2aDI3WkpD?=
 =?utf-8?B?S3lJZjZNVmVWNnVENGwwaGtUNWRwREhCV3NJT0piSS9ES1lCRmx2UDVYbnZ2?=
 =?utf-8?B?d21JUGpwT0hnNllwWlBaNUVZaWRaSUdtQ1VTb1I4T1A2bTVQVDZMRDZsM3Bh?=
 =?utf-8?B?N2FWbnFMZ3dHMzhrQ09adnM3dkR1QWdDcjNleXhaamExZEs1Y2tRT0p4M29C?=
 =?utf-8?B?ejZsY3Jwd3JjTVVmNmRZRVFLTHBWdTUvdk1Hb2tVWjczNjJ4V1RkVjg1dm84?=
 =?utf-8?B?TjBieDhzdmJ0dkp2bC9nKzFCQzZ3OVdnTGVkc1I3MXU0M3B1TE1DNGpBNXA1?=
 =?utf-8?B?TGZoWmxwUDJrSmJFQUNZRytIQUZaZnJGeHZreTUxR3JkN21QMndYV09pUE91?=
 =?utf-8?B?eFcvRkZhRnRSZ1A4Q0hUVFkvNmZ3RkRUVjl6K1F2c0dHU2ozamtZdUNvcTd2?=
 =?utf-8?B?a3JHT3NRVVQyVklaa014RDNzVDZTOWxzSG1sYWkwakdUSE00Y2lzb3hia0sw?=
 =?utf-8?B?aUFDOG84UDZsZXlKbXM3REUrU2xteEVocXRtZlhLQnZ3RVRlRmNzQ2pZQ1ZC?=
 =?utf-8?B?Y2ZaTnNUeTg0eURvYzNoTnA1RnJiTlBOYUllc1B6M3kwcFhiem1NUjh2bWVS?=
 =?utf-8?B?dVhJbFJJeHRleElxclpkS3VUa1pLeENZeUk3aG9HV3dZTmw5eWNxTXFScWcr?=
 =?utf-8?B?eGxQMmE0ZVJTVVluWGJNL0pLL3NxUHQzVGNSY2NQNlBLRm5oeldleGlNZE1C?=
 =?utf-8?B?R1VMTENnYkh5UFFMcFhpczZNcWRGRW03ekNnNmkvNVRsbVNhK1RyNjJOR3JI?=
 =?utf-8?B?ZTRGdG5SM2p1ZGp5SUc2bW9DdmRmZC9ETFd4UW9ONnJ6ZVFTZ3dlZzE2eWpp?=
 =?utf-8?B?UVgrcXJTWWRwRldxajgxUzZjV2NtdDlnc3hQWkI1SEU4TjFFT25ibnZQUk1r?=
 =?utf-8?B?SG1KU0hSRVNRNzhwYlBCZHdidyttNW5GTllwV2tyaVZoQm83WEZoMlZUTzg2?=
 =?utf-8?B?bXFGUm5OZWRDUS9kYjYxY3pGYjZBYWhwNTFhelhlTzF1b1dMdGhYSjdKYlVa?=
 =?utf-8?B?SGFscFdObFNqNWwrdkFnZzdlWGlUYmQ1MVNtLzhGU1FMMjV2L0EzejJqaVlu?=
 =?utf-8?B?emxMaktjejlMMGY2bTZLS1l1N1p6cng2ZkhiNk54TjcycDZtckF4Vm1WZENM?=
 =?utf-8?B?ektweXBaUFVNbUE5ak5DenlFN0ZnN1JpUlRjSXZXM0d1TEkwT0RDeXhaUFpF?=
 =?utf-8?B?bEtLZThTR2ljM2VuREZYZklBbnBPbjhUV25Md3ZkNDY2YlJYWldSZGtndE5G?=
 =?utf-8?B?dzJvZFFNM0NTYkdqSitGZnNiQjBLUk5Jd2FnU2NqZHYwT3lJcm9NSnUyTlBR?=
 =?utf-8?B?eFE1L0g5NmliY09sKy9pa1BFM2p5ejlobXBydGZUWjlDR3VSQTl6dVhlOExX?=
 =?utf-8?B?M3dlaWk1TGY5MzVvT1NaM2pBTy81RWtqdTV4UWVhY3hCYTltcnFMN1JSVitV?=
 =?utf-8?B?aVFQY2xXRFdvbHE3WklGM1pnUE15ZHZZQ2JSVm1udnl0WnU4TkQxWXo1Wkds?=
 =?utf-8?B?YzRRQnhweHpxcE9SRitXb0Y1NlVaQWlvb2JQVEYxaDBZb2R3SklWbC8xdFBY?=
 =?utf-8?B?Q2hKMUZsczV1aE1iN3ZoZ3hjMjVWV0NCYkl1TmUxc1kwdFlreU1JaHBVRkpI?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d1830d-97dc-4367-cd7b-08ddde602c92
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 14:04:40.4790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xHOCq3lEF7YUsk/ARzwN7JdVg/++I+pVPF1dwp1Eua3x4cu01K1mSdpskpTk1K/6oDH566hGHOppW9n1VrvNjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8754
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

Quoting Jani Nikula (2025-08-18 10:30:30-03:00)
>On Mon, 18 Aug 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2025-08-18 04:16:05-03:00)
>>>Both i915_switcheroo_set_state() and i915_switcheroo_can_switch() check
>>>for i915 =3D=3D NULL. Commit d2e184f8e16a ("drm/i915/switcheroo: pass
>>>display to HAS_DISPLAY()") started dereferencing it before the NULL
>>>check. Fix it.
>>
>> Hm... Did it? I think i915->display will only give you an invalid
>> address when i915 is NULL, but I don't think any dereferencing will
>> happen, because of the checks on i915.
>
>What would be the case for &i915->display, but not i915->display?

Ah, right.

Yeah, I got confused thinking this was the same as the old times when we
stored display directly in the structure. In that case, we would use
&i915->display and no dereferencing would happen.

Now we store a pointer to the display in i915 and we need
dereferencing in order to get the address.

Sorry for the noise!

--
Gustavo Sousa

>
>>
>> Anyways, playing it safe here is probably a good idea. I would just
>> reword the commit message a bit. With that,
>>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>Thanks.
>
>>
>>>
>>>Fixes: d2e184f8e16a ("drm/i915/switcheroo: pass display to HAS_DISPLAY()=
")
>>>Reported-by: kernel test robot <lkp@intel.com>
>>>Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
>>>Closes: https://lore.kernel.org/r/202508160035.hmzuKiww-lkp@intel.com/
>>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i9=
15/i915_switcheroo.c
>>>index 231d27497706..3a95a55b2e87 100644
>>>--- a/drivers/gpu/drm/i915/i915_switcheroo.c
>>>+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
>>>@@ -15,7 +15,7 @@ static void i915_switcheroo_set_state(struct pci_dev *=
pdev,
>>>                                       enum vga_switcheroo_state state)
>>> {
>>>         struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>>>-        struct intel_display *display =3D i915->display;
>>>+        struct intel_display *display =3D i915 ? i915->display : NULL;
>>>         pm_message_t pmm =3D { .event =3D PM_EVENT_SUSPEND };
>>>=20
>>>         if (!i915) {
>>>@@ -45,7 +45,7 @@ static void i915_switcheroo_set_state(struct pci_dev *=
pdev,
>>> static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
>>> {
>>>         struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>>>-        struct intel_display *display =3D i915->display;
>>>+        struct intel_display *display =3D i915 ? i915->display : NULL;
>>>=20
>>>         /*
>>>          * FIXME: open_count is protected by drm_global_mutex but that =
would lead to
>>>--=20
>>>2.47.2
>>>
>
>--=20
>Jani Nikula, Intel
