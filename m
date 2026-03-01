Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GaYHKCbpGldmQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 21:03:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F7C1D170C
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Mar 2026 21:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C0310E3FA;
	Sun,  1 Mar 2026 20:03:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="RYN73wZH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH1PR05CU001.outbound.protection.outlook.com
 (mail-northcentralusazon11010016.outbound.protection.outlook.com
 [52.101.193.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A294F10E3FA;
 Sun,  1 Mar 2026 20:03:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lykvp0yNDZvR7SCAcvmea1WgRHXE9Kk886tg8+GZoQ54isoQ8x5wWNCYzH4oW/Jwl63XQdQ+AlUUI9pZLAS2WBXMZCCV7DmBpay2Xbj2IxkVhaiRrpIADZd+dgNr6ELWgWLUlXnSrueW22MTzkWsl7oatS0jOmpo4Dj5zs5VC1uTtbHItWDEzbdbDOP8r+bhrqwdXsW5VRCnRzstVAiDamBbv6uINzfMpA65w9JXWvjsJs2RWTnrpRf2ZTWCgs+1YlDx5pZUGLhGyEMjX8NxrgAdKm22MsVp2hCxpzEJAV77FFScJrJr+Lgo8pEj57k2JPORc1sFDlET9wH65IfRqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/E0HEHHdUFnQrqWJyW9wrNC01x3p9hvN+X50eGDmZUI=;
 b=zPitXrUn0NXAQ/+yjEUJuS5UAUy2X330+/7F9vYqIcq6hi1CGvidnN10rdKA61WLXnRocwBrlZqN3NH3pfZCA4KwLWnovS1m/7kBQryPFT6ejISBTYYm/9CPX9cOp1wgyvuizfBfV3PtjUKdlmD1+La3cpu2Dzg5Uy//q5G03GS8EVELgSWl9KOglb0B95bmzXmfA5vWP74+A6l1cLp5df/1sKzdM8byrlygRoagDRNQSu5jAIOl3GOYkn4/tXGd0pqry5Sf95rL3bqLv5K+ijtsJ42BSjdH01a8Ge6COz1nudD3aBsUCde5ZpkFyM8HWaO9EtCIjaaL6+xfCELKdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/E0HEHHdUFnQrqWJyW9wrNC01x3p9hvN+X50eGDmZUI=;
 b=RYN73wZH2I1Qeq1XU5HPV1FCpK1vnGMUez3WcBljEHQ9bmD9eFdzPWIM8aMcPh4j1mN+jHU5Pislpb4diH9oTuP9a7Q8zgYamC/THCtNcNij8RnKXDA1MUadugvDFzlOObbpviYPcKjhLWSgWCI+VjnwcGmA48pwhHzmby+DJWAuhynF0mcSus8m8UeZtAaS6mShnyPOuWm88+9IXmUdZl4Tg1AhWQXUDCMBPr+q/cG8y15gP9j3TWRJna+nJwIF6RmFKNWnlO3r3hEPrPw40lB4ilAVn9iSrITQ2nAaD01lxrTv68cqGhXJI3pAl9Pgc8OUNIB89bKMMUWGMgNgag==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by PH8PR12MB7135.namprd12.prod.outlook.com (2603:10b6:510:22c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Sun, 1 Mar
 2026 20:03:35 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9654.014; Sun, 1 Mar 2026
 20:03:35 +0000
Date: Sun, 1 Mar 2026 16:03:34 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?= =?utf-8?Q?ure?= for
 Replace the dmabuf custom test framework with kunit
Message-ID: <20260301200334.GS5933@nvidia.com>
References: <0-v1-0a349a394eff+14110-dmabuf_kunit_jgg@nvidia.com>
 <177239473964.301330.2782864717131838844@a3b018990fe9>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177239473964.301330.2782864717131838844@a3b018990fe9>
X-ClientProxiedBy: MN0P221CA0012.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:52a::22) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|PH8PR12MB7135:EE_
X-MS-Office365-Filtering-Correlation-Id: 895ce167-68c9-4365-065b-08de77cd9efa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 9tbRoZbOXjtBVwYMkFbiQdMu4tu19WSBmXUBaAEtyYnkGMaZ9v8azRsOdyeZunjnWXfB4wNe3BKNNIWN7voWayHbrSXc2MXqFqRN6NJDwt01Gn7cw07TfV2wXG1FQSqt8nZ6cy31DXoEtZiYa9dQaogve61gKbJvuu7OE0rDh7LNq5ppb/uKupGJcNwt5l0viP7x3PA13eHTbpwCxlTIwMfKIfLeL2ZLXZE0+B2kI8HBlk+aTfokLWTISqnHtb0/6UW+UdWjaiOr4nULhhIoFALqNIh6I8YBNa/9TV43B5OFkS48CmZQErPX4If8g6LwPGeqjGyCZ5qsh0TmSMKxEavruRskFDs9ovXbG6b8wJmfMod6bus+gXcqJ2xra+K3479jPAfNTKs0d1GPC7kkZFH2H2kmPDc+pWl+psn3uuITGJI957R2N1NbO6AZFXeBIPwh+tGO4WO2Hva3HULS1CLWYj5XtIeSfUB+0Z7XbDsiOnN1ehV6supRMTAHaNtUtAVKJaMZUDWg7BZ5akxg3BYIjEU/vReGVA2oKEZGCjzbbatLdQOJO2i2e4/g9t/86tHLcEBNro3WA7eQoeSV4v8/LLKEYxPrEpGXIH6m5m8rigMZqBslM/reLl8tIY/bdxDyQ3ol0nQttTrptV/1aWveWPvuwHaTPKCBu1Kfbo7ggj7aPkcCd1FnB41Cz1OPJ9C/o+vdz4gM3AH5q151L6Hfc+vjEPdNPHoMew3kdhA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR12MB9620.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kCLq4jiWXOYX5JIqLfAJ5sGC0tRdfRp2CJAQO5c9nsn3psK7IWgVYYBUbFGM?=
 =?us-ascii?Q?pEV0eDP2T/ojplIK+N1cULZMaFDvwcLIlritEb85xGM/DmU3CNOEmtHeO7gs?=
 =?us-ascii?Q?o1QVTy5SQmlrRAnVpHonUTqBMbxZpmfutmGqcw4KX5QkGls6SMr8LiRX32SP?=
 =?us-ascii?Q?I9VWjLFpr3FNGXkjw6qsfKdXFYNh+GSaaYW6SrIAdDnd8QQ3UcAgMVAX75nw?=
 =?us-ascii?Q?pnikoM7J+JZ8OWf7EmhWB2uAgrC8TrZfCxGrS2dtMBkpCK4vcwTn/nD4KamY?=
 =?us-ascii?Q?XAmYDzKHHIKkGQhOgBVAK6f9h+5xmwaJO40RkVLAy5DvI679G9HpNcwLzytx?=
 =?us-ascii?Q?iyO/hCInhSXXyXHKsmbiF7G33Y3WIlCRaW8UY3BPEOtaNiU6lM9CSmntp//V?=
 =?us-ascii?Q?ZvQfc/VHr32KSoe/qrCqWbOCkCCiHCPZBVZ59APovXgqoqSvxdWFlVDUsLse?=
 =?us-ascii?Q?AdnkFCZtIbGUM1g5jYYtDTJWDVRLjI7BL5WWL3YdAhQXl0udZa1uQX7+awSN?=
 =?us-ascii?Q?89BBi7PXCj/9v5Qf77Z67Rc9UhUD4bdhTpUQsTjPZ00b+CUD0DIn0Qq3jvDX?=
 =?us-ascii?Q?rSj8yAtExbsWzqU74usnbjMnprpmrFKuEGn7c642lKA/GCZcd9Hdg5d2R38A?=
 =?us-ascii?Q?bszXjD7iNVQY4JjSOH1jwPmVrVVQ4dMoeUtYV6Mi97KGWtta4ywrhDsTQNml?=
 =?us-ascii?Q?fdr4zx5Bl6ngFm5E3nK2IBd7Ky7CzKkYQnDizH20g0Jh6Sh6JlSUbFHC551H?=
 =?us-ascii?Q?a1fUncSGyAI0lFPG7NT5HNsOtGO99PbPTc7HIeqbAV6HUMtJTjnuMj2Jikao?=
 =?us-ascii?Q?U/YfzwZ/bpFzuW1JbLKp21hIQe/EL02cL0LrTCzQgXUVQjpBZzu79OuTM6py?=
 =?us-ascii?Q?joswPsME4eY5oJ/Wgzrmfauv1yTGpcK3FoF8I/DP0ZoPoZdshhV8xgTyAOQm?=
 =?us-ascii?Q?frXf2eyzNkckEqaCnT+X/UUByVYWY1UHAI3onLC1fBDfuDfQqNlq0tFGqMA+?=
 =?us-ascii?Q?0ItJkjePJ/ufe8aanT7WunCDugU5OIdSkHwdSYIglOhXAzK9cT5uymic1x5U?=
 =?us-ascii?Q?B3orVGrJ2gc7eJ83fkHB2T9PRs4Pp033pjqbeYqx88UET7B73SnfTikzqN+z?=
 =?us-ascii?Q?DBXjDZYSFl8HPKTXYULm0s7bDdWHvUO3ozy3uDP4VWjJh0aPQTbm5aHNptg5?=
 =?us-ascii?Q?55AM5TGTLkEVkf+t5KretvypJa2sY02Nuamj0PyV7gWZ6ubHQzofzprWhxt9?=
 =?us-ascii?Q?IZWggheSmPalRWaFN2nSCqp8FFycikG2yk6ZJR9uY3vMCIhifJKqFE+k66hd?=
 =?us-ascii?Q?nCTQP7Km/Iaf8lrJJs/ZazMURBmFmBuU4xEFLEOjNo+sJLywzKNMU1n2UJcG?=
 =?us-ascii?Q?f2sBK9IYLiQY1HmqDwknXHyZ+/MnI+qNR4OCNJp+TGrI/H3pHAz84amd9NwS?=
 =?us-ascii?Q?4koaY5nx2vYV3l7vzbTU20bb5ZA4zmRVqDqjZTJbeul6Fr0q7yOhG18DTedr?=
 =?us-ascii?Q?Diw2IHVQCWPGHsJLTghMehL9WkDJdNaVjjSA9EeCzbp02vf1KdYP3kV9Utgh?=
 =?us-ascii?Q?91CbmQyksbCh9o4jvWq/V6fz7WseLze6i0PNtwUpw3fWGavbBbHIO8KQgksr?=
 =?us-ascii?Q?JiXxJPWeOGpVwYdjBvih4S/Aa9yo5+KY5j8KRLxSbvhJJoc0M0PIn6EwRzRU?=
 =?us-ascii?Q?/aR9X3EAZKpmzIfkpUjLU5+d7Ko68u+XFYvx+Kz481oCGp8hRaxA2xXl6kfc?=
 =?us-ascii?Q?3s8TFTYEhA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 895ce167-68c9-4365-065b-08de77cd9efa
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2026 20:03:35.3874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LMtqbIF2DIXekzEZT+wXWz4Mq3ZxtbqCqNoiM+HlAE/0JsYUPKrMhYD1w0Nc71X3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7135
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[Nvidia.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Nvidia.com:dkim,nvidia.com:mid,lists.freedesktop.org:email,dmabuf:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 92F7C1D170C
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 07:52:19PM +0000, Patchwork wrote:
>    Series:  Replace the dmabuf custom test framework with kunit
>    URL:     https://patchwork.freedesktop.org/series/162387/
>    State:   failure
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.ht ml

>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_162387v1, please notify your bug team
>    (I915-ci-infra@lists.freedesktop.org) to allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
>    External URL:
>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162387v1/index.html
 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_162387v1:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@dmabuf@all-tests:
>           + fi-rkl-11600: [3]PASS -> [4]SKIP
[..]

This looks to be because the way to launch these DMABUF tests has
changed to kunit instead of the manual selftest. The test harness will
need an update once this is merged.

Jason
