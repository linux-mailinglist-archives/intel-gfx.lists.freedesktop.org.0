Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IbIKwghgWlvEQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 23:11:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D655D1FCF
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 23:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9A210E406;
	Mon,  2 Feb 2026 22:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nK3HMP1f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED2710E3DE;
 Mon,  2 Feb 2026 22:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770070277; x=1801606277;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=o2efQzYvfDJ4SFYaV2SiN585YO/tBYvizl4EgXAN9Hg=;
 b=nK3HMP1f9eOyaNXit3TuvqtE25+SWVvJqGqFKn/6kajwX075Gkwnlc9x
 EVq8bVPmbZFFevJRIajS0nRCtaIPcMI9ZPz6xDyCcPh9KAmkUeicDMy20
 gDh+SnsnJ59QavLjV0b29Pd/vt57c7CTBPtI4VdrO6WNRFjFX7d+wFqvs
 WGKjYbJL1jGk/92IRB2xxIQziTbWa4QXu4ddyw4lfogfwPNKL3cx0ve0u
 zY6lOiDieu76UBOotKMsuypqRl68hrsLzW3K6+KmN+PMm6UpZACnuULQB
 VxgdtsZ5JjtYsfgB0VntbgQa5zQk5+FDzIrK+yGP8ZenjWo37mlnkfbTH w==;
X-CSE-ConnectionGUID: Fg5/3JF3QmmxTonYMRfm6w==
X-CSE-MsgGUID: tLdvBkoURNSrcWN6XhTayQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81975678"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="81975678"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 14:11:16 -0800
X-CSE-ConnectionGUID: BsoVT6CmQeO6bOEqPRSEsA==
X-CSE-MsgGUID: RCuknc4iTS6+71xxcZCYoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="240324939"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 14:11:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 14:11:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 14:11:15 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.58) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 14:11:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a0ZNwu2zacLNWw5QvAmFO6ZtMybCHY/embKvcSNe60q3wSnWD4OYc37GN6KRsHIBwZVEGSRD0Fk7EUtEUVGZ+eTcDVIXdOCJiywSGRMArnkoq6QeZV1FaIyNISRvz15CFWgOjL7MfTaW1TxYTZqh1ax26hx6QvHVIYgQAF9D9r5XdDuY/0dYMCh2zs/D+FLdlGPHkgWLPezCa/hmVyXpMLZ3qE5p2NqiXjjhhLp4PLUa5QFWBj3CPeHRK8Q5AO5wKI5QQEkgsmmoW+bxwheTNIheSU5NH5+XNkBmdEJEIUGhKBX4tnfMwheTpBIlC3vC10ZFBTAaCKEFFRCUZJOqrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4zQPDWWFkIVBmcKbidNoQLtoa6UH6hG8WVwSP9E04Y=;
 b=a5LDeftNGozPEmDVS0z90u0iK8QtSM6dI/OHPiORsOha9TekkuiJD8szTnLQaJjS7MoacDTAUUt1ygd00FKH/yU+1SNCEF+jxetiBvjLfv6aMK57Jxl1qvX29jxyyxmOEa5Oan5qGVC3MfJyZ/n9C874lSQwO+2f/Scw1XlSrwH3cWiWDFwH8R5Y6SHWBMNkmyMAUrKjUon4Q7G2x5t5YeYcbCyGJmip5zNbMYHcqpvPAn0J38oURKLYGxX/COeXU6WAiabi+OuYl0EVfYncUFVlClJa4QxCiVwHgFCVN7SYDNBCXV2RCI3rZi6CnBe7Xsp+DILLWCRDD4JrgnVkog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM3PPF9EFFC957B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.14; Mon, 2 Feb
 2026 22:11:07 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 22:11:06 +0000
Date: Mon, 2 Feb 2026 14:11:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 01/16] drm/xe/xe3p_lpg: Add support for graphics IP 35.10
Message-ID: <20260202221104.GI458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-1-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-1-653e4ff105dc@intel.com>
X-ClientProxiedBy: BYAPR06CA0013.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM3PPF9EFFC957B:EE_
X-MS-Office365-Filtering-Correlation-Id: 09df6777-f827-4057-f754-08de62a7f677
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6vJsTMpZQhw0PvhlSVJgVQ4F4DF1J7l0jqxva47MKtbyyxM3dFxhBfkPNpHj?=
 =?us-ascii?Q?ZP1NUFL2p64yxcUtv6TGotu1smcTnLoMOa8znSofOxAT6LcueHrCrHnW6WmK?=
 =?us-ascii?Q?qM6RWuE80VjHTNvC73o3jUwDTkOSq3WOBUPfEOmyRz9JPDO8od4NsRssU2vz?=
 =?us-ascii?Q?yjNPSoOgRW/HkBLS26B6bx4xbIFY37Lr9L81mE+61BoLfv7UQhyghiBugXTv?=
 =?us-ascii?Q?3hII4YnC+rlJJv6f0MZYb+2h79Tu0dXUK+ABfmkutZ2krIF/YHMqEtEfJN66?=
 =?us-ascii?Q?Yew3EfiCJH9p5KjbOpR1lBN0dprcbPdeUhK/arHayaT7aDzSWlXrUD6YGXYk?=
 =?us-ascii?Q?LnQuI0abVebB02HMfRt8uk5XZV5Wd65Awj+e3kMV+7/qzL1lsuuj6nQ6oXp8?=
 =?us-ascii?Q?StX1TuvLCpXatuyZFcgBwPR/JExv7JwrfB0ei2DuFAAcx+4ffTjEhJ1fzLcX?=
 =?us-ascii?Q?D/LfEwCBcq9QknwOFjJ7I+bQTvWYPfTN7No8Nl6aVEHX8nZFw2TGuAaXnUWY?=
 =?us-ascii?Q?O4fZBmC3P8sc83EiTBxHxhiJ/tox7oVojJvamyELXox+8X2Y61YwAwFgRwta?=
 =?us-ascii?Q?2Onv82ORj0S0COX4wpYB3gDS24XwOT415DZosPBTRUcW5nUROi9C+2Hawa2h?=
 =?us-ascii?Q?pT9D5KtiBrhXfPk0mdkKDJESek6HGgfZDdftNXOG78Ac6Tal5WMwerPpmzTN?=
 =?us-ascii?Q?l/ENP+88JkkR90o+nk9t9ccCl3pOLHZriSZNZP5qaQ9U2BO2+JBmY2+hmMq+?=
 =?us-ascii?Q?M11eywYZgIpnDIp1BZb+HvE7vdJieabDnSafeTVjXsalCTipvsRVeNDxQ3Pj?=
 =?us-ascii?Q?Oio4siNMkNQ6KJzln2bZLQKmXF615U17CgdwHpPP8gYw0s500ZYs2Cjd6MtD?=
 =?us-ascii?Q?0Vyort6vis/rPFENNJXGHdVGkyj+2Mm04AFzP0b4qtmZe5agSowgccFA5veC?=
 =?us-ascii?Q?aDVk/9AaBJz/UhIH1eTeMVmi4SbS8XQ1xxkutXL9R4qExZ0U7lE5juLacnrN?=
 =?us-ascii?Q?G7rknMr9m1ueEiu8SzFbUV2GPor7/34NB9BV6rsnm1HyWpXUKgGbuVOLKwAV?=
 =?us-ascii?Q?IhTwc9vic+KrN0PyGmgjSbVTgIbCG9QXdkRvMWUTyv0pxXq8PjMmA3jFm92A?=
 =?us-ascii?Q?0bIY+2cTslKjpvySPUnyL0TN8tOcMWeIYR/Kgan7+0S5Ui/JRhVHWLit7d97?=
 =?us-ascii?Q?8Jj1cxGNIA2MXpmY0Nld2Q9W8WTvvpqIEEg4CcT3Q2PBqczOBNeJzgGTsSD7?=
 =?us-ascii?Q?dEppWDtqPoBtMshA0UF0nDac4RW37cfoQUkQAzU2/8Y0pNuLwygdsGR6XWuq?=
 =?us-ascii?Q?PZabkFW06YYxOi77H8L0YB1GQu+0PSL+6ljvGE8XSmApST9mmdiKiJCmURGk?=
 =?us-ascii?Q?4TYwaRHUymoUJHkqSr/ogqUw7nOHpcz2q40q+XtVuLyQXwq40bH/t7DZ9l9A?=
 =?us-ascii?Q?0ErY2e4xlgxh39g4C/GTTBECkDBm6oQZEMYbWvAFb9/nPOsU1C2Ypai+JfXM?=
 =?us-ascii?Q?6E7K84QRSCJj8v1jWagpRfl5ny0uvukqQCQU0xQPwpXJvwNGW04P3g30J9jN?=
 =?us-ascii?Q?AFetg7tQYZjp1ETAJ2E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pklZnUkLpnyJKJsFs1imHqefWYiofufIWrVDZhWxk1YtQafBwMQEP22lm/vv?=
 =?us-ascii?Q?3YIluSGyB6WgDI/WvFuShXi22IdznieviXgk19fsTuuIo2RLWizvTdPnDzHC?=
 =?us-ascii?Q?SlxNwzIqXoelbzqAvmCsHSfxRCg6kdKf14eOKGtPYtXKmE8oXnBP4NM98FvE?=
 =?us-ascii?Q?AHDgtWgGXxn3t5PX2LIPJ5xv+gtGVgnsNGfHgo23bm36TZNMeHl30i1dyWK1?=
 =?us-ascii?Q?4aX3pzbm4Nwjf1TduWW+tDYdVcyCB+/ib3b/6AUMxlYicvH9KwLuM84VMXQB?=
 =?us-ascii?Q?9Yv8lkkeCcWD+wyiq3DrwCtrfhYGJszUQ9LwK2WR/aCfo1zXVysdX83wqqCG?=
 =?us-ascii?Q?bVxwSusWHWU1Jek4wn02rC3XpRt+TVXoviBLlswtHnnEmZANYJA+rGT3Y8B5?=
 =?us-ascii?Q?0A6v6fB/kCmLZVo3NKjj7QypUSkRioea7k7XPp46VhI0Y6QcRyWPKDPYiIHi?=
 =?us-ascii?Q?4dTe3iigIKch995vHsz6pL/Z8wUxFZvizKBvK1q9paSz7z/kebxqmIREt+SC?=
 =?us-ascii?Q?s7T5JRUQoREo0Tq9jGxF1YtJN6uwcO/TvDXf0T3I5oFJYoBKd841/++PYaNS?=
 =?us-ascii?Q?stv7C04TjnIU+wS6C1UIkKyao+vbeMwe1rSV+Keh7YW2LtA0Cafgm1WxMCnU?=
 =?us-ascii?Q?noVaymCbS3/xchO5C044oBmw/0QFMZ3odKxrGyhTsy//wQztMKzYdmMm83aO?=
 =?us-ascii?Q?X/TFUWiDDLDfMCeLrwJhyfRAPNBoQn+/3hyKMAerwb+h0ec4xjlvyZrMK/U4?=
 =?us-ascii?Q?Futb41Hn78axyGnWiV7c2YChE1TDNe1PcTULGgodMc6aT/XytYh+i+I4d2+0?=
 =?us-ascii?Q?2Q8+SBv3Bk+BxZpkKOBwq+XrWL6i0WP5qYPXnw+XmGw9m4dBMqnBYzI3+zEl?=
 =?us-ascii?Q?q6PEDR+pfjrQ7d2GeVZGsQw+Yl+lUF7Cn+XAFNAmEB5JG0aZPQNi6Aj0QFxg?=
 =?us-ascii?Q?SOq93iVA3Zw2LIZAlFiP9CbDzcqM9m6XMYUVMDJxj8yjaYbONZfGNy4FoT2W?=
 =?us-ascii?Q?GLNms8HsUN69StP0opAu5TZDYIjiDjRQ7vaVBp/FH+AX3xZQQ2SCDeFDq4hh?=
 =?us-ascii?Q?RhuFO8nA4Y2NNv8TA7/viJHYR/I+w/YTrTwBoQy4DcMSXL8j3rDPXO6cxiqO?=
 =?us-ascii?Q?JaA4WVTrYatR1es7sXAaFNlI6bRlE5NIOKkLEPSCu4B7wMTNm5t3LUHSN2nT?=
 =?us-ascii?Q?veNhbDm31KE+uai/ay4TwNtR17n0c6PHDeS8nmzjoxRnhC6kZ/XJCjQzEAgm?=
 =?us-ascii?Q?vOyb5UM1kGS6zZAqtJ67t7o4LRd4UX3P90nlwcsHlq4D8h1bR8dCgg0+50U6?=
 =?us-ascii?Q?Ab/JNC4XhBnKlt4lJoIh/uWWCAm+3Hu2qIMGccZPPKR6Vs7ZEb6kgTZUuDMF?=
 =?us-ascii?Q?c2QOIG1qHZSReMjJiVYQI8MbaPAmdDmFpDJFxF3VsAFzY3EruzIjDcfQhZH7?=
 =?us-ascii?Q?eZ1EVgclcLjoCSeHBPXKmwM9D70kyuZuFslF8aQ96VSWHR3+Q/r7PDDCN21/?=
 =?us-ascii?Q?bQZVhZJAi1EDiv53re2qFIcX7phrfslhvovNC0vSvUQzNw6FGwm36VTtMdkS?=
 =?us-ascii?Q?AzR1C/SIgQhoW2TEn3MvRlAWKHwQ5F91P85aUPzMzIdS6e2naS2AqnV9jW21?=
 =?us-ascii?Q?W8gG7CoKbug3dENsaJnQPdf9bELnZWp5LiVWR1Zi+6ySoOmy4rBhxPFKXAYV?=
 =?us-ascii?Q?zhBNf+ZFZgCQnx5LnbCKYul56NLNgFj+BuiXKvbvIkan1zzx0qq4c8ZgJZRo?=
 =?us-ascii?Q?pW6KDEfeKzMAlSv1zrVc7qdRWvWG3sk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09df6777-f827-4057-f754-08de62a7f677
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 22:11:06.8892 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ve/ZzpAjSm/UzXTz+XttRmiVsQK/lLQRPl5aAeK8gSatPHUNTwhzNbFkBPAtLko3Z7a7dHmeb99GheabiEF8cvUGTYsXJBPsv/P/h05vQu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9EFFC957B
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D655D1FCF
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:07PM -0300, Gustavo Sousa wrote:
> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> Add graphics IP versions 35.10. Since there will be features enabled
> that are not present in graphics_xe2, already create a new
> graphics_xe3p, although currently it only enables the same features as
> graphics_xe2.
> 
> Here is a list of fields, associated Bspec references and eventual
> comments:
> 
>  .va_bits (Bspec 74198)
>  .vm_max_level (Bspec 59507)
>     The spec says "The PPGTT is always a 5-level structure even when the
>     virtual address space is less than 57 bits."
>  .vram_flags
>    - ~XE_VRAM_FLAGS_NEED64K
>      That limitation that does not exist for Xe3p_LPG.

These three aren't part of the graphics descriptor anymore, so they're
not relevant to this patch.

>  .hw_engine_mask (Bspec 60149)
>  .tile_gsm_size (Bspec 52961)
>     This is queried directly from the hardware.

I don't think this flag has ever existed, outside of some temporary
development patches that never moved forward.

>  .has_asid (Bspec 71132)
>  .has_atomic_enable_pte_bit (Bspec 59510, 74675)
>  .has_flat_ccs (Bspec 65255)

This one also isn't part of the graphics descriptor anymore.

>  .has_indirect_ring_state (Bspec 67296)
>  .has_range_tlb_inval (Bspec 71126)
>  .has_usm (Bspec 59651)
> 

We should probably add a reference for has_64bit_timestamp (bspec 60318)
since it's set in XE2_GFX_FEATURES.

Is there any reason not to go ahead and squash in
multi_queue_engine_class_mask from patch #12 here?


Matt

> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pci.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index b5e8935fff1d..edca562462fa 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -106,6 +106,10 @@ static const struct xe_graphics_desc graphics_xe2 = {
>  	XE2_GFX_FEATURES,
>  };
>  
> +static const struct xe_graphics_desc graphics_xe3p = {
> +	XE2_GFX_FEATURES,
> +};
> +
>  static const struct xe_graphics_desc graphics_xe3p_xpc = {
>  	XE2_GFX_FEATURES,
>  	.has_indirect_ring_state = 1,
> @@ -148,6 +152,7 @@ static const struct xe_ip graphics_ips[] = {
>  	{ 3003, "Xe3_LPG", &graphics_xe2 },
>  	{ 3004, "Xe3_LPG", &graphics_xe2 },
>  	{ 3005, "Xe3_LPG", &graphics_xe2 },
> +	{ 3510, "Xe3p_LPG", &graphics_xe3p },
>  	{ 3511, "Xe3p_XPC", &graphics_xe3p_xpc },
>  };
>  
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
