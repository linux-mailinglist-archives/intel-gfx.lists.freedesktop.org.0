Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMJ+Lerh/Wn0jwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:15:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA794F6DDE
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73EA10F4BD;
	Fri,  8 May 2026 13:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDTjN9Ol";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A48810F4A4;
 Fri,  8 May 2026 13:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778246119; x=1809782119;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FdJVVl6zSprHXwnKvw9vu+eLEOi3i/rUHsRMmMrVVVQ=;
 b=dDTjN9OlgPlyCPRhhC1egyVex5e5E7WVFDh9Dlyt6aP8P+tBgRg3ROKj
 ovesiQFdnJGhH6toYHv7Hr8RLxV3vamDy/2zladibWrW8FHYQNAOKX750
 qNVFMOagqXs6ZyoKEw3Sv7Jt9d9IyzYP//Kl34XDmftOgz5CmBXRB0Jyl
 /Z5piC0W7LBqL6TK5BUEhhIQJ+JRCyYJfr0G2gKlueCgAeKd2y2r2PZJN
 LfvLCIjg0R9CY0lSjlHNrWenjTAWY73Q2acsVSCfUrh0b/Ff6jb59s/0v
 AqjlPDMWEwUVbfOGBSdCjr8W6G/lpg5+3HcJjI/lTO6lEa6S/SVtfbFWv Q==;
X-CSE-ConnectionGUID: 3vZoleOqTZC/3KC+y5vLfA==
X-CSE-MsgGUID: kEi/KzJYRKKrZGmn0QOnFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79112612"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79112612"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:15:18 -0700
X-CSE-ConnectionGUID: oYqYySAvSu+AnZV1BS+dYg==
X-CSE-MsgGUID: pyyArg/wTke3SKAZ/36x6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236885614"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:15:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:15:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:15:17 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.5) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RpJkczB9T5n3hZaLS0Pnl1SbvYKxcezPooRtMpnIk6bZziNPl9akutfTpfiOkrd109FVeCLz9Xn3bmIbrdxXHdDNRcVr6mib9/+zf7wupcdGOGTzXbn6mIkykiAqGJXKkfC6QLDTulmXJNDdKs6vfj4n4TvQJioUT+RcMHZAX3j8aVFvR0vYAXzomXRgH0ZUviQRIpaMWwXdb/JvRemuMTe+iWw+sti+bDFyR2Scs0l5caQHzui6KmbksoKPZZyGwu3W/aiFKJvGDqqa0A/ToEcwQmYeZOyVHoDAv5AFX9RthKdi46BPBakBZECPbn+iAHTgs+xWC6dUBqCmzh7Omw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6yvJe9SKWev2sBBiUH6KTWFEPU4JC14aMmX7I8XYGUU=;
 b=UP/qIQB68kcToyFHhTPXWiYkkmoMItZIFSPu3+drPf9kaP4IGzj1XY8A+IriG+cC9t81DtVdxn0IKE2HDYURjPqsB0pUObbWFpv4V32OsuqMwxLgb9i+G4IUe3quqsj0ROt2g01mqRoTMUbnu5oceW+d9M7i7m2sYZtN5QzsYfgGeWGeWxNvdi11mpttodTLCZPMjJ4crp+jRNaxV7PSELmzt1DOvx0k7c0OTrlolZ6A/4T4ZQXGxRFA393HHyfFDUd2fa3dKRx66KyFyNwWMlLU4mh/WlHeaVyJZMvUgIyVrrBybgsjS4Og21JPMaGBGdgIf9Q1bEMFtpF090EFHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 13:15:10 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 13:15:09 +0000
Date: Fri, 8 May 2026 09:15:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-doc@vger.kernel.org>, Matthew Brost
 <matthew.brost@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tursulin@ursulin.net>
Subject: Re: [PATCH 1/3] Documentation/gpu: add dedicated documentation for
 Intel display
Message-ID: <af3h2IHUvrMD9cLJ@intel.com>
References: <cover.1778235406.git.jani.nikula@intel.com>
 <21bfa7777eb0926eadd309d4c6f5c9cf48405cf0.1778235406.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <21bfa7777eb0926eadd309d4c6f5c9cf48405cf0.1778235406.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0014.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::27) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB4914:EE_
X-MS-Office365-Filtering-Correlation-Id: 88ddf1b7-b898-4f78-a209-08dead03d455
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003|3023799003;
X-Microsoft-Antispam-Message-Info: gqG0VbcDSQfQXo3rCtiyNLwxJsJgmMs9pXWjEIQ79RGN4jCbM/8kkUzKkVA1Pf7S6J2NnvNUUVYa1J2xgXXif73WIUsikQowXm1wHKt+K3tsDFJTgrvBWrEOSUh9BgliZcQijKfsyxE53lh3UIX7I3WJC0zMQOqOrRRhGgnZq26evvabCyL/1Wk/zgsIoLll/K398M6OvSwljJgO7q6142X1dm1AeQc9WvfQ4F7GlTCisamTBcDdKBE9hApr3MFAi6bVmZwGFQdvjbAeOT+Oj4CWPswKxz7TNx727UCsFsqeVh2pz/Dz3b28wbBwYJLehDLwe3Pti6eQVZswi5SqZL+rUfF7jn1osu1dyomPEZLhSO3pXw5uCOC6zMwyB19hUTbXe8eivnu185Gb7TEEgLTEPmSHVyenvvbnbjXfdkgbsriNXsFbia0v1nK5B2oI4QZz8YNWiA65lZXxMj0o0ixprJGj/1E7BSMSndpiqPP/ygZywd7pJJKsW6amLa/Wc9EQS18uNpT3MhoOgx4sfsHKSTTt5+SMv5PrOLn350zYpi8ij4VXRS9bwgJAwWlSWwe7PZ1Mk1Ae07XbnEeMwLXGOjsrxPqJ0Yw+e7zOZ3FHrRN1sfM1p7mZ8oKBxgbv/EpGIiowRdv3HbQ16UUWf0kyKZOtVSu9LzC1Y5l41AbQsXbBGYF4xrr3crd5UuwM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?XXo8UEO1j1B5eSFtIJpcrBpMX24cQnf8uXRLVz/u/5HsmS+Hmf2ZeqHgbk?=
 =?iso-8859-1?Q?IIOFxir+SyjwbxV2vNZBIoQVFLtbIY4NMl7/vro5tZ356GWVaFbpMSeW5s?=
 =?iso-8859-1?Q?pjqLB95GrwlZuDKQgWg3mw+43iOwLphvCENY5dpvC6++YTEr7Z1DCbSs3u?=
 =?iso-8859-1?Q?0Kta4+fdf+46Q0X8499tvKJzYudzXWci4ZZO5cAbmRMNLAuEMI7Lv1jE5P?=
 =?iso-8859-1?Q?wrBvY9UnX/CccQ/tO0qCzLgmHM5Di9HLLc21Lkb7pwX3wpNmCXQSAU7URH?=
 =?iso-8859-1?Q?PA3jYfdgDAG0vTz/dFf4UhnSOoenEhtk40iuk1BH/G82+tdeEOQBrA8coY?=
 =?iso-8859-1?Q?p4fNYI2xTjp9hOAIv5w4ZBsQr1RNjH4oTYUOAQ9vx94kItj7EhTjaj5hH9?=
 =?iso-8859-1?Q?MriTm/EAGboRkyDZr67Ejw9LSis6IhuCWaggO819tPx/t+tV0Vpi0FS3l/?=
 =?iso-8859-1?Q?x7FBaXskm8SSoNHHQnmYOJPoI3tVCrTp8jVYK2KjfaO5j3QmnP5DCrvxf0?=
 =?iso-8859-1?Q?DF3cf5hmQw+KM+4oXC0r5DSISPPb2kvH6ZvKw7LQnsK5PA9N0cXv9CDzVA?=
 =?iso-8859-1?Q?EI5kTk3bsDJq+KHLt/Y+g2Pjbn6+RwBVaTYMx0pHQZTxCEWvdqTIdrufzX?=
 =?iso-8859-1?Q?L7uiyQE7Q7wmwK90fz5Zde30ONzCxpJJIT1jjjizsRA3GcxwrzF0vWcLpH?=
 =?iso-8859-1?Q?p/1ilQ0ekK7VUxg30GUd9OS2hrx/YwQYksIfbsfLPFfaxgVReQyEKwyhEz?=
 =?iso-8859-1?Q?ha8fAlLhkRzHppZGqPWF4RaN3601dqbixNMXgzNnlli1wCW3oAlLtRNFip?=
 =?iso-8859-1?Q?64cgvBbF1qnr0cF19+etK0PynvSTOOL8mUqaPk/C0PPVKuD+gSq5DzcBqP?=
 =?iso-8859-1?Q?u04+rh47dCAVBUNzknl4p3sSBV5HnCLeNE6ulZKhKkN6YQUWLlobErO92F?=
 =?iso-8859-1?Q?ptB5GM4iI5UhbxmK9YXZzCy5KGLbGRee/vFikfRP4gNI3NwgggQ5XoaRoM?=
 =?iso-8859-1?Q?8jniJKcvB2pNY4RANWtcncGURb/UP6WbeNZSWLpB4QanewfQPVNEtYiOta?=
 =?iso-8859-1?Q?vGxibYalNVQOrANAHyykOn9kastwGDBdwebaySyHkzxOMmb9hTkrcUmCUm?=
 =?iso-8859-1?Q?+MmNYlNL1UrS1VrqdpcMbPP0nLRNobLS45suPgXxVGIWZEfTOtnjRP0shp?=
 =?iso-8859-1?Q?qowUGyqYgKeceDekKieEWuju35NkpYXfwsqLenJjQ+iN9dK19Zrs4Uqmos?=
 =?iso-8859-1?Q?UDqpcFTOOjqZsEuLPP0S3AV0Gq4dxeYQk8ALgOxKxw+Hbgqew7cLXros1+?=
 =?iso-8859-1?Q?jupPIcZWzZ70C7/SnV+4dwuCSkBohYCEfZrZkuPvA87TZjnlZUf62tl2DU?=
 =?iso-8859-1?Q?t7ue3sG4MM3MNQ0kEQT1vMDRQv9Vkpi4mkYCalBlfS/4QRc6NkEe6JIsvu?=
 =?iso-8859-1?Q?UQs5gcdvxm6cg7d0H4FrbhF3JT2ziPVn+76pS6ywi0GJRvX92N9yEMtcKQ?=
 =?iso-8859-1?Q?sqczQP1Adk0EXmZuf4KPvGdroHtf5PVGpNQBRn9pb0FSc+fwqJag4XZsVF?=
 =?iso-8859-1?Q?MSi/i9V97sRP75nZah9MolNsBjkJB/k9VdPPsdhsdX4KCoJVTa2WmNAYM0?=
 =?iso-8859-1?Q?YwceNvcqIgwnjbfZdWXufKQEEykornHWsRFoO/9/Pd0IncD+12Omc9VJ8R?=
 =?iso-8859-1?Q?60TkhV0dBErHb9ebmTgHhn9hnlXhOm7x5O77hBiab/dIwofEdk/OoX7x5+?=
 =?iso-8859-1?Q?thpLGimKXuIQgOgztVsvHlYmWnVf9Wnrn98dn6MZDk1DJ/V4GttVyWayQb?=
 =?iso-8859-1?Q?yPBtSHNL3A=3D=3D?=
X-Exchange-RoutingPolicyChecked: fzFhUAhDzT53GP/+cVmCzfsyGqtrQignwv7kN2BStAi3sGchHhzUKCJwa9qnO+kt1yj0CCV44MH7j7nqoB/gnaha8UFA+p3ZD1SwtxH3JMRc/sEad5kQH7VsLgHcVhOLY+v13wkhoG2EW0Uy6XQwCpjO63CjSNZ/jGbdgybEC625r/ybvQPJddzgURcygkO1jGZUhCS5No8AcMMlee66LZZGXTZnEzyAkoZKwv4pa6C/t7KdpkmyFXEbIhN41dUH8B8B6Fo4Rz63qWXWAgQZLq+ZHD7c/MKwsiAkyA4CYJmc7AUQKh2V76wfh3f8mDl7QhFJPaCJUhCMetgxdOZRIg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 88ddf1b7-b898-4f78-a209-08dead03d455
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 13:15:09.6217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0jPfdK6XVAG3yocJQokHnl6rF1qNKWkRwpaxE8Q+or84b9F7AmM9AQTsHSXz5HKpy9nz2Jq7KJXttoTdJtKxrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
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
X-Rspamd-Queue-Id: BDA794F6DDE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 01:20:47PM +0300, Jani Nikula wrote:
> Nowadays, the display support for drm/i915 and drm/xe is shared between
> the drivers, even though the code is located under drm/i915/display.
> 
> The drm/i915 documentation has everything, including display topics, in
> one huge page, while the drm/xe documentation is well-organized but
> hardly mentions display. It's not great, to put it mildly.
> 
> Split out the Intel display documentation to a dedicated directory,
> Documentation/gpu/intel-display. Also directly split the
> functionality/feature documentation to dedicated pages to keep the main
> index page high level and readable. We'll want to organize this further,
> but just sort them alphabetically for starters.
> 
> Drop the boilerplate documentation sections that don't actually document
> anything.
> 
> Cross-reference drm/i915, drm/xe, and intel-display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Tip: 'git show --color-moved' conveniently highlights what gets moved
> and what gets deleted.
> ---
>  Documentation/gpu/drivers.rst                 |   1 +
>  Documentation/gpu/drm-kms.rst                 |   3 +
>  Documentation/gpu/i915.rst                    | 202 +-----------------
>  .../gpu/intel-display/async-flip.rst          |   8 +
>  Documentation/gpu/intel-display/audio.rst     |  23 ++
>  Documentation/gpu/intel-display/cdclk.rst     |  11 +
>  Documentation/gpu/intel-display/dmc.rst       |  26 +++
>  Documentation/gpu/intel-display/dpio.rst      |   8 +
>  Documentation/gpu/intel-display/dpll.rst      |  14 ++
>  Documentation/gpu/intel-display/drrs.rst      |  11 +
>  Documentation/gpu/intel-display/dsb.rst       |  11 +
>  Documentation/gpu/intel-display/fbc.rst       |  11 +
>  .../gpu/intel-display/fifo-underrun.rst       |  11 +
>  .../gpu/intel-display/frontbuffer.rst         |  14 ++
>  Documentation/gpu/intel-display/hotplug.rst   |  11 +
>  Documentation/gpu/intel-display/index.rst     |  40 ++++
>  Documentation/gpu/intel-display/plane.rst     |  11 +
>  Documentation/gpu/intel-display/psr.rst       |  11 +
>  Documentation/gpu/intel-display/vbt.rst       |  14 ++
>  Documentation/gpu/xe/index.rst                |   5 +
>  20 files changed, 251 insertions(+), 195 deletions(-)
>  create mode 100644 Documentation/gpu/intel-display/async-flip.rst
>  create mode 100644 Documentation/gpu/intel-display/audio.rst
>  create mode 100644 Documentation/gpu/intel-display/cdclk.rst
>  create mode 100644 Documentation/gpu/intel-display/dmc.rst
>  create mode 100644 Documentation/gpu/intel-display/dpio.rst
>  create mode 100644 Documentation/gpu/intel-display/dpll.rst
>  create mode 100644 Documentation/gpu/intel-display/drrs.rst
>  create mode 100644 Documentation/gpu/intel-display/dsb.rst
>  create mode 100644 Documentation/gpu/intel-display/fbc.rst
>  create mode 100644 Documentation/gpu/intel-display/fifo-underrun.rst
>  create mode 100644 Documentation/gpu/intel-display/frontbuffer.rst
>  create mode 100644 Documentation/gpu/intel-display/hotplug.rst
>  create mode 100644 Documentation/gpu/intel-display/index.rst
>  create mode 100644 Documentation/gpu/intel-display/plane.rst
>  create mode 100644 Documentation/gpu/intel-display/psr.rst
>  create mode 100644 Documentation/gpu/intel-display/vbt.rst
> 
> diff --git a/Documentation/gpu/drivers.rst b/Documentation/gpu/drivers.rst
> index 2e13e0ad7e88..20d2c454aa1d 100644
> --- a/Documentation/gpu/drivers.rst
> +++ b/Documentation/gpu/drivers.rst
> @@ -8,6 +8,7 @@ GPU Driver Documentation
>     amdgpu/index
>     i915
>     imagination/index
> +   intel-display/index
>     mcde
>     meson
>     nouveau
> diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
> index fbe0583eb84c..a125052f46bc 100644
> --- a/Documentation/gpu/drm-kms.rst
> +++ b/Documentation/gpu/drm-kms.rst
> @@ -1,3 +1,6 @@
> +
> +.. _drm-kms:
> +
>  =========================
>  Kernel Mode Setting (KMS)
>  =========================
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index eba09c3ddce4..0c9d68758533 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -1,3 +1,6 @@
> +
> +.. _drm/i915:
> +
>  ===========================
>   drm/i915 Intel GFX Driver
>  ===========================
> @@ -7,6 +10,9 @@ models) integrated GFX chipsets with both Intel display and rendering
>  blocks. This excludes a set of SoC platforms with an SGX rendering unit,
>  those have basic support through the gma500 drm driver.
>  
> +The display, or :ref:`drm-kms`, support for drm/i915 is provided by
> +:ref:`drm/intel-display`, and shared with :ref:`drm/xe <drm/xe>`.
> +
>  Core Driver Infrastructure
>  ==========================
>  
> @@ -64,200 +70,6 @@ Workarounds
>  .. kernel-doc:: drivers/gpu/drm/i915/gt/intel_workarounds.c
>     :doc: Hardware workarounds
>  
> -Display Hardware Handling
> -=========================
> -
> -This section covers everything related to the display hardware including
> -the mode setting infrastructure, plane, sprite and cursor handling and
> -display, output probing and related topics.
> -
> -Mode Setting Infrastructure
> ----------------------------
> -
> -The i915 driver is thus far the only DRM driver which doesn't use the
> -common DRM helper code to implement mode setting sequences. Thus it has
> -its own tailor-made infrastructure for executing a display configuration
> -change.
> -
> -Frontbuffer Tracking
> ---------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
> -   :doc: frontbuffer tracking
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.h
> -   :internal:
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
> -   :internal:
> -
> -Display FIFO Underrun Reporting
> --------------------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> -   :doc: fifo underrun handling
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> -   :internal:
> -
> -Plane Configuration
> --------------------
> -
> -This section covers plane configuration and composition with the primary
> -plane, sprites, cursors and overlays. This includes the infrastructure
> -to do atomic vsync'ed updates of all this state and also tightly coupled
> -topics like watermark setup and computation, framebuffer compression and
> -panel self refresh.
> -
> -Atomic Plane Helpers
> ---------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
> -   :doc: atomic plane helpers
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
> -   :internal:
> -
> -Asynchronous Page Flip
> -----------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
> -   :doc: asynchronous flip implementation
> -
> -Output Probing
> ---------------
> -
> -This section covers output probing and related infrastructure like the
> -hotplug interrupt storm detection and mitigation code. Note that the
> -i915 driver still uses most of the common DRM helper code for output
> -probing, so those sections fully apply.
> -
> -Hotplug
> --------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
> -   :doc: Hotplug
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
> -   :internal:
> -
> -High Definition Audio
> ----------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
> -   :doc: High Definition Audio over HDMI and Display Port
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
> -   :internal:
> -
> -.. kernel-doc:: include/drm/intel/i915_component.h
> -   :internal:
> -
> -Intel HDMI LPE Audio Support
> -----------------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
> -   :doc: LPE Audio integration for HDMI or DP playback
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
> -   :internal:
> -
> -Panel Self Refresh PSR (PSR/SRD)
> ---------------------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
> -   :doc: Panel Self Refresh (PSR/SRD)
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
> -   :internal:
> -
> -Frame Buffer Compression (FBC)
> -------------------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
> -   :doc: Frame Buffer Compression (FBC)
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
> -   :internal:
> -
> -Display Refresh Rate Switching (DRRS)
> --------------------------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :doc: Display Refresh Rate Switching (DRRS)
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :internal:
> -
> -DPIO
> -----
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
> -   :doc: DPIO
> -
> -DMC Firmware Support
> ---------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
> -   :doc: DMC Firmware Support
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
> -   :internal:
> -
> -DMC Flip Queue
> ---------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_flipq.c
> -   :doc: DMC Flip Queue
> -
> -DMC wakelock support
> ---------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
> -   :doc: DMC wakelock support
> -
> -Video BIOS Table (VBT)
> -----------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
> -   :doc: Video BIOS Table (VBT)
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
> -   :internal:
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_vbt_defs.h
> -   :internal:
> -
> -Display clocks
> ---------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
> -   :doc: CDCLK / RAWCLK
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
> -   :internal:
> -
> -Display PLLs
> -------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> -   :doc: Display PLLs
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> -   :internal:
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> -   :internal:
> -
> -Display State Buffer
> ---------------------
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
> -   :doc: DSB
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
> -   :internal:
> -
>  GT Programming
>  ==============
>  
> @@ -568,7 +380,7 @@ The HuC FW layout is the same as the GuC one, see `GuC Firmware Layout`_
>  
>  DMC
>  ---
> -See `DMC Firmware Support`_
> +See :ref:`drm/intel-display/dmc`.
>  
>  Tracing
>  =======
> diff --git a/Documentation/gpu/intel-display/async-flip.rst b/Documentation/gpu/intel-display/async-flip.rst
> new file mode 100644
> index 000000000000..e4ae4012efc5
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/async-flip.rst
> @@ -0,0 +1,8 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Asynchronous Page Flip
> +----------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
> +   :doc: asynchronous flip implementation
> diff --git a/Documentation/gpu/intel-display/audio.rst b/Documentation/gpu/intel-display/audio.rst
> new file mode 100644
> index 000000000000..7d3c1b514b0e
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/audio.rst
> @@ -0,0 +1,23 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +High Definition Audio
> +---------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
> +   :doc: High Definition Audio over HDMI and Display Port
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
> +   :internal:
> +
> +.. kernel-doc:: include/drm/intel/i915_component.h
> +   :internal:
> +
> +Intel HDMI LPE Audio Support
> +----------------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +   :doc: LPE Audio integration for HDMI or DP playback
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/cdclk.rst b/Documentation/gpu/intel-display/cdclk.rst
> new file mode 100644
> index 000000000000..231b22a733e7
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/cdclk.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Display clocks
> +--------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
> +   :doc: CDCLK / RAWCLK
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/dmc.rst b/Documentation/gpu/intel-display/dmc.rst
> new file mode 100644
> index 000000000000..2fcdbd457d79
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/dmc.rst
> @@ -0,0 +1,26 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +.. _drm/intel-display/dmc:
> +
> +DMC Firmware Support
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
> +   :doc: DMC Firmware Support
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
> +   :internal:
> +
> +
> +DMC Flip Queue
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_flipq.c
> +   :doc: DMC Flip Queue
> +
> +DMC wakelock support
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +   :doc: DMC wakelock support
> diff --git a/Documentation/gpu/intel-display/dpio.rst b/Documentation/gpu/intel-display/dpio.rst
> new file mode 100644
> index 000000000000..32e6f299f256
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/dpio.rst
> @@ -0,0 +1,8 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +DPIO
> +----
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +   :doc: DPIO
> diff --git a/Documentation/gpu/intel-display/dpll.rst b/Documentation/gpu/intel-display/dpll.rst
> new file mode 100644
> index 000000000000..35e8168ccfb9
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/dpll.rst
> @@ -0,0 +1,14 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Display PLLs
> +------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +   :doc: Display PLLs
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +   :internal:
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/drrs.rst b/Documentation/gpu/intel-display/drrs.rst
> new file mode 100644
> index 000000000000..adb413f300f1
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/drrs.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Display Refresh Rate Switching (DRRS)
> +-------------------------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> +   :doc: Display Refresh Rate Switching (DRRS)
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/dsb.rst b/Documentation/gpu/intel-display/dsb.rst
> new file mode 100644
> index 000000000000..cbd40b0a4e7b
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/dsb.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Display State Buffer
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
> +   :doc: DSB
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/fbc.rst b/Documentation/gpu/intel-display/fbc.rst
> new file mode 100644
> index 000000000000..40f9d16bdebd
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/fbc.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Frame Buffer Compression (FBC)
> +------------------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
> +   :doc: Frame Buffer Compression (FBC)
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/fifo-underrun.rst b/Documentation/gpu/intel-display/fifo-underrun.rst
> new file mode 100644
> index 000000000000..50731f3a1f03
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/fifo-underrun.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Display FIFO Underrun Reporting
> +-------------------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +   :doc: fifo underrun handling
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/frontbuffer.rst b/Documentation/gpu/intel-display/frontbuffer.rst
> new file mode 100644
> index 000000000000..2a1bc63ba6b4
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/frontbuffer.rst
> @@ -0,0 +1,14 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Frontbuffer Tracking
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +   :doc: frontbuffer tracking
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +   :internal:
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/hotplug.rst b/Documentation/gpu/intel-display/hotplug.rst
> new file mode 100644
> index 000000000000..4cd9dd5ac8fc
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/hotplug.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Hotplug
> +-------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
> +   :doc: Hotplug
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/gpu/intel-display/index.rst
> new file mode 100644
> index 000000000000..8d40363b8f90
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/index.rst
> @@ -0,0 +1,40 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +.. _drm/intel-display:
> +
> +====================
> +Intel Display Driver
> +====================
> +
> +The Intel display driver provides the display, or :ref:`drm-kms`, support for
> +both the :ref:`drm/xe <drm/xe>` and :ref:`drm/i915 <drm/i915>` Intel GPU
> +drivers.
> +
> +The source code currently resides under ``drivers/gpu/drm/i915/display`` due to
> +historical reasons, and it's compiled separately into both drm/xe and drm/i915
> +kernel modules.
> +
> +The drm/xe and drm/i915 drivers are the "core" or "parent" drivers for display,
> +as they initialize and own the drm device, and pass that on to the display
> +driver. The display driver isn't an independent driver in that sense.
> +
> +.. toctree::
> +   :maxdepth: 1
> +   :caption: Detailed display topics
> +
> +   async-flip
> +   audio
> +   cdclk
> +   dmc
> +   dpio
> +   dpll
> +   drrs
> +   dsb
> +   fbc
> +   fifo-underrun
> +   frontbuffer
> +   hotplug
> +   plane
> +   psr
> +   vbt
> diff --git a/Documentation/gpu/intel-display/plane.rst b/Documentation/gpu/intel-display/plane.rst
> new file mode 100644
> index 000000000000..41cf6571aab0
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/plane.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Atomic Plane Helpers
> +--------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
> +   :doc: atomic plane helpers
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/psr.rst b/Documentation/gpu/intel-display/psr.rst
> new file mode 100644
> index 000000000000..134c905f500e
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/psr.rst
> @@ -0,0 +1,11 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Panel Self Refresh PSR (PSR/SRD)
> +--------------------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
> +   :doc: Panel Self Refresh (PSR/SRD)
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
> +   :internal:
> diff --git a/Documentation/gpu/intel-display/vbt.rst b/Documentation/gpu/intel-display/vbt.rst
> new file mode 100644
> index 000000000000..bbc7ee183f1b
> --- /dev/null
> +++ b/Documentation/gpu/intel-display/vbt.rst
> @@ -0,0 +1,14 @@
> +.. SPDX-License-Identifier: MIT
> +.. Copyright © 2026 Intel Corporation
> +
> +Video BIOS Table (VBT)
> +----------------------
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
> +   :doc: Video BIOS Table (VBT)
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
> +   :internal:
> +
> +.. kernel-doc:: drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +   :internal:
> diff --git a/Documentation/gpu/xe/index.rst b/Documentation/gpu/xe/index.rst
> index 874ffcb6da3a..665c0e93601c 100644
> --- a/Documentation/gpu/xe/index.rst
> +++ b/Documentation/gpu/xe/index.rst
> @@ -1,5 +1,7 @@
>  .. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  
> +.. _drm/xe:
> +
>  =======================
>  drm/xe Intel GFX Driver
>  =======================
> @@ -8,6 +10,9 @@ The drm/xe driver supports some future GFX cards with rendering, display,
>  compute and media. Support for currently available platforms like TGL, ADL,
>  DG2, etc is provided to prototype the driver.
>  
> +The display, or :ref:`drm-kms`, support for drm/xe is provided by
> +:ref:`drm/intel-display`, and shared with :ref:`drm/i915 <drm/i915>`.

Great idea!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +
>  .. toctree::
>     :titlesonly:
>  
> -- 
> 2.47.3
> 
