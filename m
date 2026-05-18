Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGiaCOhEC2qsFAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:57:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830F75714D4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C34710E5EF;
	Mon, 18 May 2026 16:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KxnOdILV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0317B10E34B;
 Mon, 18 May 2026 16:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779123428; x=1810659428;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=w+JI74OzBnekh7b9RvSAMBEdieObiwrdieR00R1uHmI=;
 b=KxnOdILVTrs8/rbxhrRPc/i3+1v3jKlqz1p2IQlB70MIN4CwIWSz+YCL
 OxIYFnUR6unRzZW77xjTgJf+Wq9cVf6Kv3EoWwKck7rJ1GalBBws2iiUA
 suFQ6HLPECMUFswe1zq8rXcMFJ1FPrLJZWAKfObIofUDIOj8nMZzJoBJy
 M6g0XI6qwm+1NZywnBjmc3XBugTFsr1Ib69zUkAkfYfjwy461ed46pLCX
 YtgWEInOr0gAgw0GBQyYmc9tJGymNxoCiJiv5A4UPm/xNM1xTZJ9GRfL6
 bLM4fLeIW4OuLOPbTBaPleo4SO3gR7fznHp+o0Qx6xVFExPmFtLAxwxjr g==;
X-CSE-ConnectionGUID: sMs1N/TLTOqCFDPiEm38ig==
X-CSE-MsgGUID: 7KsoSuLGTJOZCIh2tsNd1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80035084"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="80035084"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:56:32 -0700
X-CSE-ConnectionGUID: EBDnvnrCTnanRg2TB21Slw==
X-CSE-MsgGUID: sQvJyUulTUaQcePNRxIXiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="243464230"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:56:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 09:56:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 09:56:30 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 09:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HW/CmrM/KiXvalSvmbU3bp5VYPOShUuv5oxOymKCYgUkhFlgQL3QMPbrumuJia+77+roe/hIxv8sK2nkycamFF5rF0Hg8re4ZzenOl708xJ4p4tIN+tBd1QSG4YKLhGdaBIXfq4eTC9c5eoJHVfYsXgUvXY9NXS8D03lT99E1Ppd+Rr9WYa6U0YFkCNK820ZjKAPTSiNJ/yQ0cIGIDN/L1m6O/hEkQ+RyMGhev1PqSeq6IfYj5dn3Ua6z+2ECtV4J2tKuqa8tXluSr7M95zzG6pvDYZx+8lDD4bZ+PA/gF2XftL9NSEzRyarQsHVVqjZJheDzZO+EB3csR1zHoyfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=85aj+39+Z1Vawl+sXSVcUMjvC/S3QBa4dHR8XHtbADw=;
 b=DhQjGNYP75rThbmRrSf9A68WH1u2t8snb0eWi5dJXtc/xxM+WpL7VvXiRkTTtaBgPgGN+0tw8AWBKXvuxV/MCqjo10e5vqJNzrXIuAQQt1FYl4A3tI9OgctBxYJ7oLGaWx6ZhAi074dEgm25JY3sIlv+9rM7Zf7K0Qixj6haV5Wh+7t8wKu48TXzeRPlI2gOmL9amLEy0IWNih9crDG/c6fwjaXw+isJCrFyG7iCAS6ryTpZ6AbfkXyxW6X2IFCn+kuF+bQps+QFd5j+iJ2DBwPPxO51a98MPJdqlLZ/dBlazzM3A7k2K3t24d5FMCYFv0TNnMLshB6EbFAr9rjjlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CHXPR11MB9625.namprd11.prod.outlook.com (2603:10b6:610:2fd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 16:56:29 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.21.0025.023; Mon, 18 May 2026
 16:56:29 +0000
Date: Mon, 18 May 2026 09:56:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH v4 5/5] drm/i915/bw: Extract get_display_bw_params()
Message-ID: <20260518165626.GC3379914@mdroper-desk1.amr.corp.intel.com>
References: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
 <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-5-918528006549@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-5-918528006549@intel.com>
X-ClientProxiedBy: SJ2PR07CA0011.namprd07.prod.outlook.com
 (2603:10b6:a03:505::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CHXPR11MB9625:EE_
X-MS-Office365-Filtering-Correlation-Id: c2ee4355-97da-4fcd-cb0a-08deb4fe67b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003|11063799003|3023799003|4143699003;
X-Microsoft-Antispam-Message-Info: hobwFOPhgCPZ1vsjTAMBM62BzEXur7T1lLSx5qdGkGBh8/TMTwgBsv5krjsoJjpR9g0lzDVN9dSFmxL5UCkstMIKlw7Bpij4XtqUIykam0juIma2cZrDKfqZLB7tdh7J6x21vkB8eSP37Zdj/OarNCVCS2FSoaChGVTiWhChh5UA20R54wFLwTZuAEpATLOZVzk/TFXubKM3jUXIi9EPGvzbisR5Ov6KW4djUn6Knwa6J8veEDB7BW3mAXBnfsXK2wHfi8TMCmCK2eVCQ12JHkTIkW4404mVoCnkc0GkK9xf5cRU6ZL0P7V22i/Xv07vbPJqqDPzak9RPy79hmf5CobevCrrgEhdDl+TuDCwsX6R0S7Li8ThSn9Fzb+IGOnF83LSFg/sYkrjFOpW5zKJ3eF/3AaiStu0cPqtA+bA9RJ+aIrYhxpAF6qit/3PCs97g3b9iYqWYGX+Zn9njeD5fu/WhfaRrkWSwqP2rsnV4Le8rgn1q+IYmPhrY3QEDHVwrayF+/P9FQ7PACKO/5ZFN+OqZyBC3RMSo6YgTPC29ExEmstMKLPabUYN96uqZhed6FB4mO+qTRYZmdjKwgpWabpRq4nOeBKTwjD1H7XiGqtieTpjVuA+5je/3V7DQWZTHHq26ch3aZPs6vWZV6/Y78evouB57rtCfxPjnLYGzgZ4ZC1RPWR+B7hUMO4oFrzj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003)(11063799003)(3023799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1oLZFrwVT0uBQ52doHtu95Zb3HPyzJYj4tfu44r9giJKdDqlL8k0oeYREZZ8?=
 =?us-ascii?Q?plAyqyhCt61HwJzzwm1jTj90XIeBV5w99OFRmQrUGOkAOvQWBp55pr3bfDIg?=
 =?us-ascii?Q?Bh8b6f0ETo0913SAWXvueXI2bzp/HZaKlOpS7wYFf0HHm4YtlnmTgl0vSwHx?=
 =?us-ascii?Q?YSm4Y5JoSOs8tx/GnPBMEbsK34Y3asuvQ2kwaS/wAi4xFHTfMLkwGWPOBpg6?=
 =?us-ascii?Q?6ZPE46LZwaPudHT419nHwis3oiCo8QFwHeWyQnx7lyGsHYlvIDy8shZnBUct?=
 =?us-ascii?Q?jNrOvnZBqDovxR6xkhkKEsvXqVlZoLYbkSVJvWCdDdx4pUE3SRwDH73K182I?=
 =?us-ascii?Q?cinsGqoSHZZoR6sOnXjbu3hgTd/PD7nZsP6guGD0g+ZR3fwoWOr1BeivIeM4?=
 =?us-ascii?Q?BSxWibgoWc+GBkf0YKyxPgCcFfFBztp/dyevrLSSIysgi1PaHU8UDRGzTGA4?=
 =?us-ascii?Q?SOCG7fhuiWGHOh/LqF2gF+HZn9elGWPq/ogwO8Ae0qRCwJLrFfWobASzGJLw?=
 =?us-ascii?Q?PQh3EEfs5feBSySIMlqHiT49UVZdV+WV/t62obswoCruq5D1bzzxdXUI6IAh?=
 =?us-ascii?Q?jIHDIQXYKGTUQ2shKlR6k/V/wSa7X0XGckrrWDVY3YJRkGUIfewHqsKooDK4?=
 =?us-ascii?Q?emkANPrXBa6/dCvlZKVkR13kWfRnInJ9Nd5+TC+ZB0Nm6Ulhbo5PHnH3mezY?=
 =?us-ascii?Q?ks3zi0iGfZXQBawc322LIG0k4tQGDAFEU9iwmobam+Z/HWecm4GoDGgOsLBq?=
 =?us-ascii?Q?euA2UM52M1jJXPFklbpqniCYput8YGft1WV1SD5Yq+3pr7+cNytak+QayUOa?=
 =?us-ascii?Q?nbMWpQvjcnOq9Ao1e29VXslqNKlGdkwNzGCQRnrKY4N6yZ3xBGrVjyhONQRO?=
 =?us-ascii?Q?1MDhvFtmsqntVj2b3qxoVpX6+KRV4jW8ujLHJJKx6XDf89vkXZ7hpy/YJX4K?=
 =?us-ascii?Q?DCGQmd99Ehth1rjtLdPUMh1f/UxePmsIord4gjknuCZ2mv3rtjfBJw0PiG5c?=
 =?us-ascii?Q?u5LeP2NlFuyFKu2U86Uqtg1KyNiL5q9LhWdHoxHpR9n8rQ44C6JcEfLuWEY9?=
 =?us-ascii?Q?MbUa7awMuUUtsgomEKE58kPBCSvijmyYpyKNRdtjF9W/dn7m7dBtNeIYOl/1?=
 =?us-ascii?Q?f7o5NA+lzvVwLNJDEVJK1tSNzlpa2aHTbouthAGYi5o6wVXKvOY35wU0nZWe?=
 =?us-ascii?Q?eHqxDRkkG79XZdwBUPqYaLeeqxPNC8KdJ7l+feHy7kNbfEq/b0+F+K59NtLF?=
 =?us-ascii?Q?STauPlKsaSjPIIAxNmTMeAkIrv8sGjfV5SYI8h7CFuw1b/O/zE5MCcNxLDJe?=
 =?us-ascii?Q?3Dw9mQ7RjECc6w3M2BzX0VuCbU3XObJCFtvE0XhEzDBNpqqGjI3eg6hiH/LC?=
 =?us-ascii?Q?26WLwLS92V6OaB2nYEfdDXoIxPetRFUsPtxehzXTLfivGCLD3ApM/qsVh0zi?=
 =?us-ascii?Q?PET3deCmpwlmwhiyuqsjzalKDwu5ghcKFkTYZaYX0peBq0OrGjmTSidV1TXN?=
 =?us-ascii?Q?Ojn8GJ7cMEMDO4QvAevmJyoeXCjcMV58I5WQVfzYIcL/zq9fUCyNkzy94VaY?=
 =?us-ascii?Q?pwUcPbHfeOANv7af9nypfpg+PS+KxTrIJkT0aR8seRI4ls/PlvQJi1dYBSY2?=
 =?us-ascii?Q?ygpA+x/s4GO67C/NfH/qpLTRJl5aT3A4+IN8PMMkIGYQs3cUlLe3kIj9Qh32?=
 =?us-ascii?Q?eZoeVvWS1jWZJNkfE0FgoJ8AfT8O6gRDaYbfFkiNFbCpXVsUEIxwHt/sxUWK?=
 =?us-ascii?Q?u6AO1HRTizTbw/pxuGDtW6CBl7M/6oQ=3D?=
X-Exchange-RoutingPolicyChecked: moAPIgS0ZgfeJBFqGRHsib0EdIkyyoWmJa4C4lQmR/Xkr7LZnYFDCrgtH+SQnXbHdDOoPhf+9setJJpFAHgLyiI71Nui714ahLVE+TqcUznXdOGTlDDT6okR0y0rA2+VIGZ10vpN9HVvXbarSqvx7vWJhxgjioX2Q/XBKAaLre9gu2CgJ9aP2vsicJx03c/PwYYRECXwmbMg5zFlWVT5OpQz0smzoY13mn0O9pAhLKvO/Ww6M4yCV/rZygOecNDYYFW7UlTl6mp/7v7BCZEybmR/R2PKr7TYuqP2ZZA0lJA6zaKhMtAWmGFHJqR0fyoCW10p9cEPa6qMmg7l5AsmNA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c2ee4355-97da-4fcd-cb0a-08deb4fe67b9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 16:56:28.9725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N1rsK6gnhSZyGNg/JudPN6oSyIBlwTkh5Gza/ChI8O6EULHlf8wEXUwBp8il5wzDc3OPlhuT1ez4chcr8epE2YOyI0JfjDGr+C+CR6xYrK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHXPR11MB9625
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 830F75714D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 01:14:04PM -0300, Gustavo Sousa wrote:
> Just like it is done for the platform-specific bandwidth parameters, use
> a separate function named get_display_bw_params() to return the display
> IP-specific parameters.  This simplifies intel_bw_init_hw() by having
> just one call for each of the *_get_bw_info() functions.
> 
> v2:
>   - Prefer to call get_display_bw_params() only once in
>     intel_bw_init_hw() instead of having multiple calls in each of the
>     affected *_get_bw_info() functions. (Jani)
> 
> v3:
>   - Call get_display_bw_params() only after the check on
>     HAS_DISPLAY(display). (Jani)
>   - Return &gen11_bw_params only if display version is 11. (Matt)
> 
> v4:
>   - Like done with get_soc_bw_params(), drop drm_WARN() when no display
>     IP is matched.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 39 ++++++++++++++++++++++-----------
>  1 file changed, 26 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 26b294544d10..d7b2bc80f8e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -482,6 +482,28 @@ static const struct intel_display_bw_params xelpdp_bw_params = {
>  	.displayrtids = 256,
>  };
>  
> +static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >= 14) {
> +		return &xelpdp_bw_params;
> +	} else if (DISPLAY_VER(display) >= 12) {
> +		/*
> +		 * RKL's SoC was based on ICL and the display, even though being
> +		 * gen12, had changes to the memory interface to match gen11's,
> +		 * consequently inheriting gen11's display-specific bandwidth
> +		 * parameters.
> +		 */
> +		if (display->platform.rocketlake)
> +			return &gen11_bw_params;
> +		else
> +			return &gen12_bw_params;
> +	} else if (DISPLAY_VER(display) == 11) {
> +		return &gen11_bw_params;
> +	}
> +
> +	return NULL;
> +}
> +
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> @@ -832,12 +854,14 @@ void intel_bw_init_hw(struct intel_display *display)
>  {
>  	const struct dram_info *dram_info;
>  	const struct intel_soc_bw_params *soc_bw_params;
> +	const struct intel_display_bw_params *display_bw_params;
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
>  	dram_info = intel_dram_info(display);
>  	soc_bw_params = get_soc_bw_params(display, dram_info);
> +	display_bw_params = get_display_bw_params(display);
>  
>  	/*
>  	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
> @@ -850,23 +874,12 @@ void intel_bw_init_hw(struct intel_display *display)
>  
>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
> -	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (DISPLAY_VER(display) >= 12) {
> -		/*
> -		 * RKL's SoC was based on ICL and the display, even though being
> -		 * gen12, had changes to the memory interface to match gen11's,
> -		 * consequently inheriting gen11's display-specific bandwidth
> -		 * parameters.
> -		 */
> -		if (display->platform.rocketlake)
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
> -		else
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
> +		icl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>  	}
>  }
>  
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
