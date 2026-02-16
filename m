Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFXOEaXBkmkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33591412FF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AC110E18E;
	Mon, 16 Feb 2026 07:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOfShPC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B9F10E18E;
 Mon, 16 Feb 2026 07:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771225505; x=1802761505;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0VOtWRwC4cvlaqQW/xwcrwVqkoBkRnDF5uA7UtDOnL0=;
 b=OOfShPC36ge4FNb+cIcg5WPQHutgVWMJxlNxAPTz3BdQokaZALHshhDI
 tJvoDgItKHlBL7r5Jptuo3py9+eWfy1jFkOB7mjTv7WNueejYvqddNKdp
 ir3PKXvpgxn7xk9bUFGf7denSGXysyao8CIdHl0Zh3SQFl4zZnFF1xHkv
 GKchCtK2eFcEhUmYdVs9Mnwc0lQtNsuGM+PPdD5mGF8xq3b9iGUUvCqd3
 wgir/FTiCc8VpDFX40IMviE/XaR7p4HUPhZlsRPAvFeEkhWy0oeRugHFr
 bxprRI5lP9/Z6HECj6DN9v7O9zP2J8TIfUlHU/H/g+DsWUNxeMEFZDEH+ g==;
X-CSE-ConnectionGUID: t/0EET9PTFal0sXLlMBLGA==
X-CSE-MsgGUID: xS3Ib0SISXaJ2YSXcgXrDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="72347871"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="72347871"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:05 -0800
X-CSE-ConnectionGUID: yveEAOOmR+iKDwXsr4arzg==
X-CSE-MsgGUID: +8pffS1dTCuYYckOtAlvNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="242678163"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:04 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 15 Feb 2026 23:05:03 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.20) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=phOnWVII+bmFKhOaf6fwFpc1v553pL1xMvVMd6Eyb1d9WvHi7ocVD9qBUiqVIj59PDDnqQxg5Ed7wDYm6wPEWqrHVp2ERAx3S4ysKPFpeud/WY9JLvlxINgcx13PdKowHy6+7c6XecocaAN/G5Q9g8qZpwM73RJPFPHFAl3NytP/NzODYXLWkNvmyhQUIUiLDQDn4T6yuP/qsyaRqg1argLlMrvXMqXXgvL7rQS3l1kau2XAnwGHF2uhhLpWlIVH14520jOT+ywdzoG85MpS3Tq3H7eprcpdpjaTEUv6Bz3kMc8895PsUf66Qnm3gy4yHK+wq/4SzKslQGmIoN6OMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4Df1t+GlkQM23N56N2xQcF5WonKy7qHW0kmR0YJlPI=;
 b=BPZbGyqte1KDNQ7pVRln5UMjtHNH/s2nTvatUg4HiRPhcseHgLoxwlPdVJo9qoVYTyivkg8DfUWG6fmKJf3vd0lZ3gwIRNRAGASHcYnyiWt3Lfqr4LWJrHWDuAfPl50unIJbbLuy08QA5zy+RdC1RIYGDwQYmp9726bi9eM9ZMIld1/8e01PYWgNN9z6qPM99sq0448MuZS3gxZ38FxFHUxK+31ENJv/ESmJUEaNDX+DM4PUXOpM1WTD1vi9jW2jNiZp5bp04BDyjhlFB2FOXpNeoKP9VmHDMEP84IkF3rXkDzIvJF4q+SZaqkW/krm+eP9qwipTkz7SuezXJs9VnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 07:05:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 07:05:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 4/4] drm/i915/dp_mst: Allow modes requiring compression for
 DSC passthrough
Date: Mon, 16 Feb 2026 09:04:21 +0200
Message-ID: <20260216070421.714884-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260216070421.714884-1-imre.deak@intel.com>
References: <20260216070421.714884-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF00007A84.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::616) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: c2fd1f52-5c60-43cf-79f3-08de6d29b404
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6qXrpDDYF/HQI4Usb17hArQzCr52GYu2gAUe8W6U/7JEwg3R6pkEVIlkvVoE?=
 =?us-ascii?Q?6K1kUObPB7sVpQqfwUrzGvtu9AXf3COYuTJzsZAqw4WRv8F9nv63Yv0/9AJG?=
 =?us-ascii?Q?AIeL3FwLE68jovTFV/5A9TlA5KutsaN17J0OwhyHAr2abX5wpBm7kScU48tO?=
 =?us-ascii?Q?RpdGgjVBP4glUGcSWfohL4lcunEW7+tStEvxJHWCP92w30Qkh7B93tOe/w+V?=
 =?us-ascii?Q?7diCKvO1wrhwFc9dOB0jMjW5/HKDUvZuSbzP3DTNvKkyrmdX2cwetRweoGI2?=
 =?us-ascii?Q?CSquKqGwVqsi3gDFhZwbvCo44qACaLgyPZy6FqPuLXQvdMfos9hItFOXEQAu?=
 =?us-ascii?Q?IXRRXEz9JnDe0I9Jlg47M6BKvUOSP7ouHY6bmQstpTUSgDdmal+WCejcc6tl?=
 =?us-ascii?Q?HG5sBZKfu9tKZNpnHP/6QbbazyKyQuMOqJwk2G02Mjweq+VTLTaR024Sfhq7?=
 =?us-ascii?Q?TwuE6W6IG+pEWnoZbsdsFFyQaGd9kXTLqtyhojK4RSSkPTF9wE9p+BUOpdE9?=
 =?us-ascii?Q?CG8bGciascIYYJpibk22IDPywHnvOwweuW6W/ZYUvWkCealPYyG6W9QciZKs?=
 =?us-ascii?Q?6i75BoHG+jH/g8PTveoggPgaNlb8NDsXlg2fhHSVU+pEFlFt5xlQ5cmani0X?=
 =?us-ascii?Q?xeqoD4cJBUxjb+IO9RIfByHJXdP2vg9TNtNCTSmmd1vEIFAGCrzLaSok+IZ2?=
 =?us-ascii?Q?TSy2B8YWOCysSUOq0ldQyKK8KxT90TGUgmWywPvwMfPRBu59y0oMlzOabBey?=
 =?us-ascii?Q?lubFcCFn9Gsn2YoQXULoVl7yvH7DH/bHYtlqsec4EK4QGw/RHkvTv1gR/5aQ?=
 =?us-ascii?Q?vgxVGAh/safbTC8BP0g1dzOoY4RQb1AZb+ANElbmktJKf1Sk70modDoT+b7g?=
 =?us-ascii?Q?5IsksY4XPbjsEbXzvIwAY/nEOAfipY3YfcesYgqpRGZL/HwVJkyTLP2lOR3o?=
 =?us-ascii?Q?rirXUba/fPMl4pTLKDP7BFth9MUKI8+zKamqbmPmi4AHIhni1TuBJ3Q2MdGn?=
 =?us-ascii?Q?WIIUJrUdtAZWYhd+SbWS8Cw+w8JrTjN180pWwZJhZ6FMCYxLsxcSrBLphjft?=
 =?us-ascii?Q?fn8W12kG8DlaYeFQlnp1z0xlEXfJOAWnJpIo0QLdaAUK0n6NDB93N2P1E9PK?=
 =?us-ascii?Q?z6BLCKg46SKvweKJxzjAP4502Q6Xogy+2A4JiGXNSNBPzgqZxdOo8/gf7+KL?=
 =?us-ascii?Q?Q/6tH7bNXKaN0J8MVqLvhxmCFJ2FdjrUuD0AGCFkjl/q5SCV8WQyAIDmqi8H?=
 =?us-ascii?Q?Osig8qsOD3QNM9ua35FCtUxcsov3BNyQLw1JQAezEe95Mzd+keTE+g94XAOb?=
 =?us-ascii?Q?BNlSBqbQyGlggvU+W0XyTV8Or5Z2UeT917BcJNFBZqX5W1Uir1vOe+vZmaNf?=
 =?us-ascii?Q?rfPU6tHeXzB6n5e9LgbEoy2AbR2iOL2gAZaDJ8gZ7Iu6s7ENTfc6NICBNUc4?=
 =?us-ascii?Q?2a275qfjwj5KxnPtvv39bwS/qXmCmLlhKGQ3rY9WjdpvFw6rtiPooRDyMpuK?=
 =?us-ascii?Q?W/32u7mfYqrHgqg2la4hlfJAzUt8UUy3QDo1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8p2F6O7MRGUSjkD6l4C8RHBUGaEAGmahc31blKIjPMNA9tC3vns7l6t4xJ0U?=
 =?us-ascii?Q?KygN9Ot4SCtuwMMzh58vVada/9ZoU81RbgYVRtkv3jx1BorGmDBXwOb8YYlW?=
 =?us-ascii?Q?1Fr1A5nenJ7ddHLZ6zvLnxZlUNvDgIb/BhCTC+FSUmjwLsNrhj8SyjbTXS4G?=
 =?us-ascii?Q?vV5oBBUVuksGih3GVzwjrzwpSDgT2biItpudHrEx8amfifj56k3UQnq9WKCd?=
 =?us-ascii?Q?iPaGjWxrAGp5lOInQweVlpKWX2JF3mD87A16AROuM3Xh5G3Rbin/mHGZuvnu?=
 =?us-ascii?Q?5Jq8SMqplDh3jqh6TzfPkrGSkoFkJbWaDcC0V40JMSgtm/8mQSdwgrRbtbv9?=
 =?us-ascii?Q?0VCgoIWel4wsXUfKAyRRcnJG9vjw+3yVT9OWmMUJfPZWlsQBNIIK8hmfyBE+?=
 =?us-ascii?Q?FGQHdpi43qBxe4Ik4kGqRjYQMs/dPKzPtrXXmxQHnHaoWV4pP+bx1WjmjMOu?=
 =?us-ascii?Q?nj3FT3vdzajzFiPhaT0OSKEv14o8H856BMwNOt1DYrc//UukAYLZYaoObr22?=
 =?us-ascii?Q?mlWy3nEqMaMCVNP3ZfRl4Ok4di3qHtwljSiZTdA7DhsVGHAUdb53riLinxU+?=
 =?us-ascii?Q?CycNu/yXyohYs1+zWqnC7Ds2QLFvlXYCwHAWhoppZRvdweNwExcq0m6mW/92?=
 =?us-ascii?Q?waHtivgbO8+JDH3u4Cn+E5fKRsSbdjUABwahdxC8rktpHNfncs6lYnbUpyOV?=
 =?us-ascii?Q?x/vokK6XcESlaR0BCrm5YqcJgXT2g5XGI7UvdWixG5F6lHNYVkRiF6Te+h55?=
 =?us-ascii?Q?RYetwy1+puvVtlRHN/hXbMjqnGe7SKF2UNzCDjalkdrkKsjhvQf15g/F8/BL?=
 =?us-ascii?Q?STICfB4ADwi95Z4dFe2vei7a3E4azz1k79pGf0MSh3FVtIH8gnySbg3M4aRS?=
 =?us-ascii?Q?2HD9YvEKwGnQUl2kMX7FTR6fNLbiDEWigOyLZM+vE1hj8P2f9aBkU2hDGYjT?=
 =?us-ascii?Q?yO43l640Cej9DRYVji0LiOnpsejXbVrJr4x5b6pXxI9bNf8sYHBmZwQGcyVw?=
 =?us-ascii?Q?nWrRQCty/GGFa1VaIBoDZVCo1j0oAwLFdAGhi1JFfyLT060Eztgh7EMsu4W5?=
 =?us-ascii?Q?15tgoEg9i4gJjI02OmhnwcTCdbjqB4vE364AbEDEK536bQEfPosTlusrjkhA?=
 =?us-ascii?Q?LfClMRHoNfWph8i3pWEk5JlRK8J5SiMW+I7nR4je5xxm9UyRwln9Jmg6Zl97?=
 =?us-ascii?Q?udhPExvPSl/k/0HTBDOUf5eSrnkIkN0rvEedFLeHmiT37qqOUPYuEmq9gQuF?=
 =?us-ascii?Q?+PqSxh73/ygG3Ffm6atvWffnkCTmzt5jfNUkPuoLlwfFfqWKnX1OqiNGhiz6?=
 =?us-ascii?Q?c9pUOptoeX1Ag8sUHxXI7c7wSA8UlztR3WugUoWD2/vY7xAuIHHdI4yugHGV?=
 =?us-ascii?Q?5bdUlhC1qt2g/ldVrvrWZShFse+9JhYKOYFbuabtRfzhCzZ6mEkc+MpAavsS?=
 =?us-ascii?Q?fN6j+rvk887QKemgM/e6GIUMKTPtsUCnFVfN+Pc8MsCH+uX6bq6xaTfxXMbM?=
 =?us-ascii?Q?tHNtTr+65i1J8SZFYYQ3pDCQTrLhNdvMyyQ4TcPyDXSTNlXwaV9FQL7ZH7uG?=
 =?us-ascii?Q?J9YMA4sp7bmYk925ylHmC0bhUlWm9LcvHBM2Pgz9asnoVKhmc/Y6XbxJ/5QH?=
 =?us-ascii?Q?mKmb8lMJbtaoAPc0Vrp7JOKRiZnhq9LRi1TcKg3p/e4Z4l0vzc3MksKGTJrd?=
 =?us-ascii?Q?O0RVxtv42dIMTbUSDWSnLjwlDqo52YO37FX94uzJt+Y4850Ol9xVTupssVjf?=
 =?us-ascii?Q?PycPiFFxTA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2fd1f52-5c60-43cf-79f3-08de6d29b404
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 07:05:01.5322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v7+581x6Y3PI0yY3LOEeDqbC0csRs7YkEnXQd0TtIixXLevU/H4MbDtBtSakxv19MaaYyIW3a2WkL0SmJngQ4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A33591412FF
X-Rspamd-Action: no action

The DSC passthrough mode allows a compressed stream to be forwarded
to the sink instead of being decompressed at the last MST branch
device, provided that the branch device supports passthrough and
the sink supports decompression. This enables modes that would not
be possible without compression, as the bandwidth required for the
uncompressed stream exceeds what is available on the full MST path
from source to sink.

Currently, MST mode validation assumes the stream is uncompressed
and uses the corresponding uncompressed minimum link BPP for
bandwidth calculation. Use the minimum compressed link BPP instead
when DSC passthrough is available to enable the modes described
above.

The non-passthrough DSC mode, where the last MST branch device
decompresses the stream, may also allow enabling additional modes.
This would require determining the link bandwidth between the last
branch device and the sink based on the
DFP_Link_Available_Payload_Bandwidth_Number reported by the branch
device for the sink via the ENUM_PATH_RESOURCES MST message.
Supporting this is left for a follow-up for the following reasons:

1. DFP Link Available PBN reporting is not supported by any of the
   available MST devices used for testing.
2. Non-passthrough mode would enable additional modes only if the link
   bandwidth between the last branch device and the sink exceeded that
   of the full MST path. Unless multiple MST devices are used, or link
   training forces a reduced bandwidth between the source and the first
   branch device, both rare cases, this is unlikely.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4332
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7ca2e2245fc70..f833f47643271 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1467,6 +1467,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	unsigned long bw_overhead_flags =
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int min_link_bpp_x16 = fxp_q4_from_int(18);
+	static bool supports_dsc;
 	int ret;
 	bool dsc = false;
 	int target_clock = mode->clock;
@@ -1491,6 +1492,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
+	supports_dsc = intel_dp_has_dsc(connector) &&
+		       drm_dp_sink_supports_fec(connector->dp.fec_capability);
+
+	if (supports_dsc && connector->mst.port->passthrough_aux)
+		min_link_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
+									   INTEL_OUTPUT_FORMAT_RGB);
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1504,6 +1512,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	/*
 	 * TODO:
 	 * - Also check if compression would allow for the mode
+	 *   in non-passthrough mode, i.e. the last branch device
+	 *   decompressing the stream. This makes a difference only if
+	 *   the BW on the link between the last branch device and the
+	 *   sink is higher than the BW on the whole MST path from the
+	 *   source to the last branch device. Relying on the extra BW
+	 *   this provides also requires the
+	 *   DFP_Link_Available_Payload_Bandwidth_Number described below.
 	 * - Calculate the overhead using drm_dp_bw_overhead() /
 	 *   drm_dp_bw_channel_coding_efficiency(), similarly to the
 	 *   compute config code, as drm_dp_calc_pbn_mode() doesn't
@@ -1527,8 +1542,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
 		int dsc_slice_count = 0;
 
-		if (intel_dp_has_dsc(connector) &&
-		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
+		if (supports_dsc) {
 			/*
 			 * TBD pass the connector BPC,
 			 * for now U8_MAX so that max BPC on that platform would be picked
-- 
2.49.1

