Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKvTJbU4gWmUEwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:52:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3ABAD2C33
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 00:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2EAA10E46F;
	Mon,  2 Feb 2026 23:52:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SmmCRAVe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E568B10E46F;
 Mon,  2 Feb 2026 23:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770076338; x=1801612338;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2S4t0n+gWeY46jWBu5WMyJk6jTnAPhtq178yPU0aVcA=;
 b=SmmCRAVe3R0g2XFaIDDaY46AuUoSY7m6IR7Vfjye10SZGWx+amQO1nzP
 /P65xLUryWr9in+X/yQvcMVelJ8rAkZZ93zxGKUIvqOkYMvKFJ4E3dKX2
 boFxALSCaV4qhHd/+s9cV++C8rfmX8Qm+/4bWdGGrWgBfnl05yDu4liSd
 byZj7cDz7ShHQaT1Q2/BmIP+bixxgkp+KGmpEc92s2hRF0C0hvOSR2+ZT
 aLlq+b4hfVVobLzOrK8MKHcApnIWWIi63ga0/v+NSlDi7/sN+yG8ozVVl
 7Bu9djTeSDLrAIDBlbkzI+3x/Me1JGcjWViVbw7bE1O04nlRIl/UT1xJ2 g==;
X-CSE-ConnectionGUID: aVgES9lxQxqcoaIWJT7dvw==
X-CSE-MsgGUID: GTGkNn/yQzm6/ZCZzuRqOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="74866609"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="74866609"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:52:17 -0800
X-CSE-ConnectionGUID: INHjEwc4QyOfu9VQcoSWFw==
X-CSE-MsgGUID: 0uPhl1X6QE6PgWQqiRzK/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="213781071"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 15:52:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:52:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 15:52:16 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 15:52:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ImVGSsXtpHwxrxhTFapXtU2BzWK/1LBCVB5G0p5Zir/WvAT3q7hoieNn6/i2IEq2fDiqrv+VEQMGcRnmE5D4YDwRv9Cj2YOPhIwhpuRtVOlpwKjLTmnNMSKcS6T+LSO3GlMW2j0f8vUTRlEJPeTi9pulaQV1v7zqpBHxfyWhsYZcFvQ/wFMkVU+adzYn5y1wMYjMzhplyAhbqLQRvN4xqXRh3zpHigv3eb2jWrc9WADFnFnw4HUG1tVa33gnyAGWs714w4zFj7T+wmlxIeUGhXiy5uGldSFn7NC4431NDHEjJKPQGUDn+14BQlAJjbCOp0rklypTvaPWOqZSAA/87Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JdfTVYOTy2QLnFDv6FJiBZ9r4Y4HgWUlXt5xoBxkwc=;
 b=uhhnmX2/tBb0HhCwpJbLj0Z7Mpapa+S/h/zo7EUa32OaicIGT+5hvqmjGxBu2z7GSz3cQteruvybYZumCuvviVawlnDDZ4M+S5rRZTXAAqTg72Ey4o2q6PbwbokJz7gSpxNHHjjCIUT7BTCSyGeDUsNhgTlQFarkSp7InMXJicqtD/NR6Tgp8g3vbWtctjoRfP0impU7vTfjdIaWrbskljn8nVyN6G+IyjPRmTUTmQSW2Ar2YfW3y7ulKq8G2WJWICpnqH848xLVQKrxDivwEXqydAHYKP4ta2TAav2kWYimO+S/yoEc+kMM3GS3EEL4G4nL0S9mBqBd7LiTm7BjMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB5945.namprd11.prod.outlook.com (2603:10b6:806:239::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 23:52:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 23:52:12 +0000
Date: Mon, 2 Feb 2026 15:52:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "John
 Harrison" <John.C.Harrison@intel.com>
Subject: Re: [PATCH 16/16] drm/xe/nvlp: Define GuC firmware for NVL-P
Message-ID: <20260202235209.GR458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-16-653e4ff105dc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260202-nvl-p-upstreaming-v1-16-653e4ff105dc@intel.com>
X-ClientProxiedBy: SJ0PR03CA0213.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::8) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB5945:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e62a8cf-2cee-4811-fc83-08de62b615e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?g9X0QwyMea+uOS3716hy8DETdfQXZ5va3Hi+1OKkGbwaKku9mln5jVQBe4UW?=
 =?us-ascii?Q?IlmeY9NwJM4Nf3qzv17XMT7hKoRC050RC9qf5Syva88yNLocjbfV9abepReX?=
 =?us-ascii?Q?1Y5gh8lnk7BkW5i2udBSvdQm9lG5L28CIOxt1Fa4IbP3MNxv3SgMUroigXpO?=
 =?us-ascii?Q?9Mijf7n2TDhWdqS7ag1nCnQiOBxqQuloir0WG5iOvNadcgzeSLKoUmCtK2ny?=
 =?us-ascii?Q?NqqjAsRZxObV/R/HUC/QSpALnj0ojcnjfDWVQRxwKIkuclKUWeyQiygRs5ze?=
 =?us-ascii?Q?EcBcQY6CG48ndHrrP8lZwQaG772VtAs0s+0wIMm0nD8QqrR9UlVJPLZ8Ii6a?=
 =?us-ascii?Q?TlpWQ4JXDOYoGEOhnPGXQAGlNMWvt8K8GRF1EfqYtskNViei1yYQT82lEpft?=
 =?us-ascii?Q?KlPg6GEMpeL+Zs4JIYZncTqjaHhP63B37nliu4VJC6bDqnfHCLSscZPZ2dDY?=
 =?us-ascii?Q?vT77g5TNWkdP0aSfDKsEhPm0CE33jsnZuE0wTDMsWao0jNq3zHJv3d8czUUT?=
 =?us-ascii?Q?0TJAgCaW3/5od/kpGBy0ErKIj91L7QGxc0BjILDIXLqC0TF6Qwr+yBHyZ6/d?=
 =?us-ascii?Q?LSlwTKy1gFIut4fp1cwMKcoFKY4axAQjoF615LZkARNQ+rrPmWYpdoG/m7x4?=
 =?us-ascii?Q?6bBGa//vY/AKwPZo2BTDpFKnPfMYXohCmFJ+/oX26vEDEtt8YWvwqX6eMf79?=
 =?us-ascii?Q?udywVu9O/7d/5Ni+Dus4h7iNOwZL45+BRpx0fklNGFFH8cNhsqdie8O6JXtn?=
 =?us-ascii?Q?pbuKciX8Q3nk0bF001V3A8HNHK/5w+35b2HO6GQKerxEmhRAq1pUfFf1ngmH?=
 =?us-ascii?Q?P59Xb5wVjw8OpriEgtlc4JwuxPad8kWuiQ7wixA+ofgRvpGjTAQUVKv/tj+c?=
 =?us-ascii?Q?vsjHpA7YN4mYlZ90J6xKn5ozUDIU0UtOkklOFjbbYz2XEWU48re5nhIRfSZ1?=
 =?us-ascii?Q?QgE8i2OxHD6+uwgBaUGdHJWpGJm0cBrihkw4WxP+Ic0x4tecp1VrOq3ldpdN?=
 =?us-ascii?Q?SxqIJp+1Ion33A8p56FuDx8+sI3sIQ0QkbaiyMEifvk3fvZQOB3348SgQFN2?=
 =?us-ascii?Q?5lgWV2SF4mJmsDCw+fUFxvwIu28xdkBzKzsHlO4iq26Xyfh3MM4CO0eSEyWD?=
 =?us-ascii?Q?2VVQzg2jKcHY8QJvZAYYzovdWltgWijqI1abG5zdbO7L8d95HdjFoYqIZqNF?=
 =?us-ascii?Q?LpOmUBbGhJzXfXnT1qgjwH29Fug+leyq/bL5raQl+HzfZHWqWq8dVtrEEkk0?=
 =?us-ascii?Q?zmG5rvFJuMeYpEn613RYlLls0aoXknpINSYyjrqSJYJPmzq00+2J6121kXI+?=
 =?us-ascii?Q?ALWADzAsMy5nFHixHf81coPArBndkj7Tdk/KKTWUHYNAJ+vCAwvN3ZmCNx65?=
 =?us-ascii?Q?X9N8kNQ+KHiKa0E9b0rPPx/sTV8+/4FfbKT0HCVLAprkP7Z3PqVvhWIafAyg?=
 =?us-ascii?Q?73PISaaEsTB/JyAPzYAKKBtPvnG5S2ywdExOlpfJQ9y7Rc1pL/MbOJLtJIn7?=
 =?us-ascii?Q?L1rJtDYwU9ehRRKD1aaKgKmMzzedExJdDGpS/rOQ96WCUzZKZXFnbOJyfyEP?=
 =?us-ascii?Q?lqxZhVnmmdQWow7iKh4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H9B+JVgHKsd5R21r4NpiOsgV9EsL09debe0QmJMbL5cPPaqnJmM2Af5KH4ph?=
 =?us-ascii?Q?kRiS+wSXTITT9gpRYPr6uxWooubURLsni8y4SdTb4pqzmHtPcIsjkJBK5yRy?=
 =?us-ascii?Q?r9GMqnRJ0z0MtLPRjTqmPD92ihqZLiSfHAAeU7LFSKMZMKaMZIWGCtHX/9eQ?=
 =?us-ascii?Q?vpzWo01s+mnutMyBvb1PnW32ma99Y0/OWczAR/gGyyZ3i6H3IoIhcytltOEA?=
 =?us-ascii?Q?7Mnh2fz9pFEurD8dVuvXLqY2zuLZYptYdagoLxFRh1Rawu/J0TzZyiJ95WQK?=
 =?us-ascii?Q?gvbHven9eLCZaieVe9d6mu2OQE7+7ifkfKE/UWP3EIkNm4XffQkxPPhikfUA?=
 =?us-ascii?Q?Nhu65D2bnrtpYKD+mhbumb8Q7ObhULPAkA7Li0Yz5/lryIY/mnPAKIPgz9Ss?=
 =?us-ascii?Q?8CtVJa/k1d+3wxPl8wFYbXj7S60eL9cbDj3TToLxtVYwPRXaVfcLWVyXSLOr?=
 =?us-ascii?Q?PwYxqO3yUuFWzY3u4lKS/hU3mVZdIAnzKidUm/5dMCZhxgnMTn/wJevATUyU?=
 =?us-ascii?Q?viB4VuGjKdmnCizKbZfc5aWK4cFjKzOHEN0OE/G1fp91sG2g55WUXUNT13Cx?=
 =?us-ascii?Q?MDUqsRwq4AkeDd7Xd329L5s8uYuYYIk1sByiEyjvqLdVnE1E6cQ0XM/0XccN?=
 =?us-ascii?Q?r66DQ9pbgVfcgyXZQiefsKS7wLYfxhD2XTtMljRo0+e9svumlaFAVBeXVLZf?=
 =?us-ascii?Q?4R+F4LFwEH/k+cuGO+SvIBAuVB0iOquJLeo9AbFj+xHdO9ZgHdtnSw1e6b5m?=
 =?us-ascii?Q?tdfF8b91oSZEqMIj09ygPPVDxMpRwAzasN/tlO4g2/sUn4IOcGhsjNcV3gD6?=
 =?us-ascii?Q?nfpol66Jyum4DmRhJPINkdkIafA+DBnRM/7EIRb89zdzsudbrV0+77IOlhBJ?=
 =?us-ascii?Q?7Z47FknB7Ge81AK1/82Q1O29FbHlCTFN+Ozl4V/Yk+7Fms8a91qocikZLvev?=
 =?us-ascii?Q?mHNopkaNri1hYQ9d3HPVkeNrATpMpixKe090KsB2HY5jCHuksTGC5OLVSuOZ?=
 =?us-ascii?Q?gAsy3qdTCuVMIa7QkQiJ5b00hTxB3cjwDfPu0uMPHXF1KUlOH4IhSY5QBkWU?=
 =?us-ascii?Q?HtSRvGgzSf7yduq00UwvYFiVGI0TEXXPjSZgzHP+HG1qg/p9+KZdBojYRX3J?=
 =?us-ascii?Q?cl4jHGy2yOZW+bYvSh8NnL504MGdw8EyoC6TVZA9uEYVoaxXpC3b4a3ki1df?=
 =?us-ascii?Q?A4/S2EIx9GImztiNyVzJJSwUcn5X+O+eyuwwWuM1nQ6sNhc0kkII8P8zPGQx?=
 =?us-ascii?Q?DVxKT8DDqH/EoqG1y7j2t762rzcolwxeyOFXqcs9iiJ2HEIYIeWfUJGw1iIA?=
 =?us-ascii?Q?d8WE0QDb64MD+RMyuCTMN1oJqVziFfswrY8Wy13wNznO2Lu0APy3DB93Br8z?=
 =?us-ascii?Q?tan17Zgd+Ir+rF0q6MGaxYjz544bVhQ88E60d2tzO0CZLdHVzlDtfbZi7Wht?=
 =?us-ascii?Q?hrcb0Xlb6hyQYR0XWkSPdN3s1tQGSQqV1f+bhHGM5wXDb0C1/ZsBMDUk6jTi?=
 =?us-ascii?Q?BU0+SEagE11+VTZSLG6M6iTvq4/h+q1BR3rKaN8LFRsZ3RK3D5mVnmRj/+wd?=
 =?us-ascii?Q?5IYUUvFhl1aKgHJ69s+cELY6yhEPfVRTigUwlR+Tp2zsBg2kgbmI1b1lWEQM?=
 =?us-ascii?Q?nHg4xdZNwVQSMhxoaTNNArQTw2APmBeJSFW+cCkQvNeFNJEj7DfPH1NhCtfJ?=
 =?us-ascii?Q?XGisDncP3mCUK0FWGMhCHfzPUDL/Q3pu590VZ4E2UQ0OPVHg+Fz/mELiGRqg?=
 =?us-ascii?Q?227Kw/ixUVVRYztDvet8AXcddN1/OLU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e62a8cf-2cee-4811-fc83-08de62b615e6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 23:52:12.5577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7c+M8dA3LaJrso9baYThiNFJEASusf8P8bJHOI033GHLMbWIJYjc6Y8We+3jeozHkYwwi7KscRxl12f4OSWLqD12XmEnhUB2MailP/SUL9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5945
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,mdroper-desk1.amr.corp.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: F3ABAD2C33
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 06:43:22PM -0300, Gustavo Sousa wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Novalake P has different IP on each GT and requires a different GuC
> for each. So add separate graphics and media GT entries or NVL-P.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

I think we'll need to land this patch in topic/xe-for-CI initially
rather than drm-xe-next, but otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_uc_fw.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
> index 6a8e692fd7a1..60c82b920f47 100644
> --- a/drivers/gpu/drm/xe/xe_uc_fw.c
> +++ b/drivers/gpu/drm/xe/xe_uc_fw.c
> @@ -115,6 +115,8 @@ struct fw_blobs_by_type {
>  #define XE_GT_TYPE_ANY XE_GT_TYPE_UNINITIALIZED
>  
>  #define XE_GUC_FIRMWARE_DEFS(fw_def, mmp_ver, major_ver)					\
> +	fw_def(NOVALAKE_P,	GT_TYPE_MAIN,	mmp_ver(xe,	guc,	nvlpg,	70, 55, 4))	\
> +	fw_def(NOVALAKE_P,	GT_TYPE_MEDIA,	mmp_ver(xe,	guc,	nvlpm,	70, 55, 4))	\
>  	fw_def(CRESCENTISLAND,	GT_TYPE_ANY,	mmp_ver(xe,	guc,	cri,	70, 55, 4))	\
>  	fw_def(NOVALAKE_S,	GT_TYPE_ANY,	mmp_ver(xe,	guc,	nvl,	70, 55, 4))	\
>  	fw_def(PANTHERLAKE,	GT_TYPE_ANY,	major_ver(xe,	guc,	ptl,	70, 54, 0))	\
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
