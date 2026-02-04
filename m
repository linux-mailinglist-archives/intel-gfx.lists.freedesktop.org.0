Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDKRAqqRg2lCpQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 19:36:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1776CEBB48
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 19:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1E210E737;
	Wed,  4 Feb 2026 18:36:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G3PlYa3Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3889010E73B;
 Wed,  4 Feb 2026 18:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770230181; x=1801766181;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uMPSozFfkjWwyPsZxuJaF7pZouxOPjQPxdWNetPCPXw=;
 b=G3PlYa3Z+7l81+d2ekKZox1VehSLyz6iH5k2Iteao0vcUkubvzk8yKtx
 cJISJ7YPczLP0qysDnJz+VahjfJj4g3h8vrWWbd5pQ/qd3CrJZbyb9xs9
 PZYelWbYLrNRvWsWjqkPBMN5Kl+tckSeRh+0Pw96oRi9M/FmT0rSnY/+w
 +doOWdfZ9UoIRt1AylkKiIQjijtsPF1DCagQdykGitV95xtUAMfh9dzdN
 6tIjpztvHybp7V61e+G5O4sVNB+5Xhnqm+2GISPkaksJxIER6JdJbdCmj
 oNatGJosEIE3IJ4FFo8pVPEkc0hlKQpJSwMXpCzcaTShCetw2l7uBmzKv g==;
X-CSE-ConnectionGUID: Pbe//jTNS3W4AS8ChvqHWw==
X-CSE-MsgGUID: 3I9XnA/fRLqbsipe+op29w==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71459593"
X-IronPort-AV: E=Sophos;i="6.21,273,1763452800"; d="scan'208";a="71459593"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 10:36:21 -0800
X-CSE-ConnectionGUID: BknRj6laSriLQTLa2r8Maw==
X-CSE-MsgGUID: WJ+KI5YKT5qJK5Wf1CuHpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,273,1763452800"; d="scan'208";a="215229877"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 10:36:21 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 10:36:20 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 10:36:20 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 10:36:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fgRnDUweDxheBqsHHxB0y5RYf+L/rdf0hv9vpI6AFIvwzNM4xMrexpAOyusuY8EnqcPIahObicN9A6Bc1wFbZbClr7rqWpG6JiWG9bh4smXhAMBHhGMEPyoS+moXWbZe3FJxU4KKoA6VTugjSxWpOrNb0cF11KjFI9cvUaJpT36Em9AnejbhuPYqUXVgY471bkOSscTXrlNO7DqDerePHhka4rUL7XBZ4VaeTvdC0vajQJLoI6+plGRg41r5lj7dwKkuZSbY1XKcBwTt+PZ2aPUUH+xTdcbHFqQ3y2Tfxihko/xAyp1uDX7lTUOmp6gpO3fp6Q/IWfppjh80fKw5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7NwNRljO7lhe5hELrpDymVDmI3FGDJO37WNXJF+V4Kk=;
 b=zKZ097rIh9wrVK9dWYU1Jxadg86HTEBnDWnpH0GW30r/s+775YrtLmmWCfX3/r0enKAEaqnuJ7ilSW/ArSkISo9kvx7O1tdlcatlXavxXBcIXp5xCDCdJNiC/RDTB8BZjzcXor/pr2uaw9/jWz9XaTgTElsk2dUd2NVgmAok68nbFHKpWIg6jPCqxMw3elPg4nKsDRziIoRS70KR2EacIT2TQSaxezkbtPhyIu6sVRzTKt0Dbg4GgsISEPsSyHih9OrFtT3Z7Ka1oGby/cVL+GghuDAcdw0DbOGDZipkexWL8gK7qJfCT1/LbQYUaWVxSI1P7XwW6QP4s7bdvNhnYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6783.namprd11.prod.outlook.com (2603:10b6:806:25f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Wed, 4 Feb
 2026 18:36:16 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 18:36:16 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 13/16] drm/xe/nvlp: Add NVL-P platform definition
In-Reply-To: <20260204180807.GV458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-13-653e4ff105dc@intel.com>
 <20260202234806.GP458797@mdroper-desk1.amr.corp.intel.com>
 <87fr7g7jh1.fsf@intel.com>
 <20260204180807.GV458797@mdroper-desk1.amr.corp.intel.com>
Date: Wed, 4 Feb 2026 15:36:12 -0300
Message-ID: <87bji473vn.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR13CA0028.namprd13.prod.outlook.com
 (2603:10b6:a03:180::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6783:EE_
X-MS-Office365-Filtering-Correlation-Id: db95f605-5782-4b40-14ff-08de641c481d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O3UtMrwPObtkR3wpKioPmq02hDHOUlFY7NVhix5IQGhmMzAPCXxK1jxVy5LF?=
 =?us-ascii?Q?mk6QbzGz2xYmoolVTS7Y4UQO39s2mbNDYF4KD1kSErwg55K7HVF46S2WXG5H?=
 =?us-ascii?Q?HcdHS+MgueFPcMTozJzXeKy764NFzOnHnMkcqPopftffKmcuZACGpVqiNjSy?=
 =?us-ascii?Q?9NwAk1uDo4iteDRjUyc7qQ47GA3BKSGfvocd05PNRpy/HH1XfeNcpXbBWrzH?=
 =?us-ascii?Q?PW62dwZw89khsgXmPkus6wUcp2mZ2Hc3pfl2JAJyv01I9B5X7PXWGdS/qbn7?=
 =?us-ascii?Q?gcHYCaDgyO155xOadSpPgBcIAbQYxoH3hqqe4YcVTT2oY4owl+GmQ5mVJEZJ?=
 =?us-ascii?Q?KGavI5Ug7mnlsZde0wzi6JY2+6bV0ZpbkrzkYnX4dS1PcVY9fZmXqeT6ytbO?=
 =?us-ascii?Q?ZPd5cSu7DiAwtC7tllwrW13usxk9Qh3qWoKXSr9NE2ZIDC12fyMNELFiZLjo?=
 =?us-ascii?Q?zubDW4AHANk7xNJFTnptYTAzW77dGgCbd+Fn5/MFw7oMHfyeWLqh5LAtiqVo?=
 =?us-ascii?Q?LZczQ4NejV/r7+Np0FfNeatJqWYSV5ZlmCBv5U3ngUFmA4jFkdPuXMXT545Y?=
 =?us-ascii?Q?I+lllxHTMml2rwaJQTrZ3kugGO29E5WyFPwgZpKLSfuwwrKpjuiwKkY7xESp?=
 =?us-ascii?Q?abegfzjDXh/aH6HR2QvFrniQleIbfe2hXfUd6UyObYxLKyjk1bhTdhRVHXYE?=
 =?us-ascii?Q?p0jDs/cV+lNSwViwjaoPqjtZ/LdwU+t0AvTN7OCNicmnKv0pagXOGZY1KQSu?=
 =?us-ascii?Q?jR+Nh5jEV07LVzPPLyr4qw8rfjgGTF7OF54NMmh1nqU/muonNQccUyug/+Gg?=
 =?us-ascii?Q?5DtJ2qBkFkZxxyfYesFSyrUz7gcrHGt9hrgPEOZRZkEO0jZg6zvJo4CJipVz?=
 =?us-ascii?Q?LY6RBivFZzZLffJnb7zd93CpcYZejnk4sYalSPJQ1lsvRC6bHY1w4Nhjj7CL?=
 =?us-ascii?Q?r0GBz3TnecdSzmDUOhEvK4uTgFqtdPA6OEMRiOLEjRY/SEcwRX3c0XpoCK5x?=
 =?us-ascii?Q?BmIFY7yBd/cgyp6xl4oNFYwvUassrJdQbGf8lYzB2q1GZ74+STo+rxuorXVe?=
 =?us-ascii?Q?lQSaefptceYGwi0tjj34EYdDKfZ6s1W93QihhBkZ69+vQQsPpdcHBCCHzIwF?=
 =?us-ascii?Q?r2Ir5INxJMBaYtnNhzwgirJXbjYAESMjzb5dMF/uH7rvMP1ryrpw42tY7B9x?=
 =?us-ascii?Q?1I99RSpznqzBq7nTPrF6wHMois97LZHuYfP+7MbJxNsugZzM0hr/R7ZFu4T5?=
 =?us-ascii?Q?6DM+QYO5QdMmQOz7iO35KB2CgzeUZzXrLavqht4Ql7PkdlxNJ6gIcKntG3E2?=
 =?us-ascii?Q?uvpYqnVAWJ8l7X5K793lJdvFZntD0T+5UV6uUWn+95EVAvvdZieFw224U/2t?=
 =?us-ascii?Q?eeOqWEaNcwU55YWHDQLGI1BQzVNQRvkt9MGBdAbedsGfzAt9Lob5qml9RS6b?=
 =?us-ascii?Q?WB/K7EkTLXGvbEkjN++jxXCVNHV2XpLWArsHo+M70XsqLiTALAy1fMsahxwQ?=
 =?us-ascii?Q?jSqIOUAR5avjj5Tqdvw5RYOeckGNCP2WrEXoXqx/qbKqAcdZc4Z/S7CO2zN0?=
 =?us-ascii?Q?uKUBuSqnFQ0U24qT48c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pYavXOZdZMeyu+DR/wKqDgAuiCfpDx6JnxNUPDa2wxYcLAIqa7vI+5xtTv+E?=
 =?us-ascii?Q?kQDmpNMlZ1kMGufvmaysbz/2bCFsxjLqXAlfS0zs8O4POXgi9Sa83ij0kbYm?=
 =?us-ascii?Q?DRTq7uNFwBkHSt7nSUJYSjPlcGgxqh3GJY+XCmmIqTbo5ZZDwvWB7zaXfjz/?=
 =?us-ascii?Q?LMN7D6GfA3x3g9EJ+lTLNSXyuGvNvs9dFEw/ikf6Tmtk6PPOjJl3tdxnIwFu?=
 =?us-ascii?Q?mR8MuJhpfYBBswxBj6ve2uQY9raljUz0hYDs6DQ4Ns9etO7gQYWO4jt8MUSO?=
 =?us-ascii?Q?8UDAJquGDbqr7Bj3w2lfuJhtYemepdBCE2zks3QNHuqxP6tNNtRKQVyCsTpG?=
 =?us-ascii?Q?H4aut4rHRfhRUHLlrW4u0q3OLV8O5z/eOz69LoPwe8E2X7au3gWqbrUrchUh?=
 =?us-ascii?Q?QqCCFXx1J22hNR8Vy6UeOFFyCBomQoUd+PljyeU2NscAC2X1RkVV2rgdqO+/?=
 =?us-ascii?Q?rDd+Z88xd41cK5TiyPXoCa6WCFw34/AYrGeAp8Q2DFhn66qgMD/Ygo5KJnaQ?=
 =?us-ascii?Q?7LhgI8YC/YyHWewRiynBrxnScJGPtHJsaJWTiysXGpYNYTd5yWtZLcTKDRpq?=
 =?us-ascii?Q?zWYQrqPi4L7UzX8XHLbTpLaQqQWtZKPjgkeGqI/IqTm4fWHcIqHIKlRWr6oX?=
 =?us-ascii?Q?1im83a5bhwZd0hVlb1ecBwQjUjqLRMUwzOvGIb62S7DbDOWbNGUSaNQTUC/d?=
 =?us-ascii?Q?jhVDwVopaSoYldnKBp4XgQJQdBtYht8279bkkd4bA+MuR3YYRbmzy5Q25PcI?=
 =?us-ascii?Q?f01aGeAokNG3uuKwAMPE9/hb1R3wz+kFPEZ2zOq7dXJUyAst0GawfavRg0XY?=
 =?us-ascii?Q?Jn9i+jg9aTU5yD38PRWIkwWGNaVWkXyh3bguolNZxlpjOnuJbhMRiFrhBgwN?=
 =?us-ascii?Q?UP27omtfrbgFZHbXsLZTBjH1dt6rKRs6NoATUjGZg/8LoYnjip1mwUHxPgW4?=
 =?us-ascii?Q?duG1LFZNw6pePAnADO9ovN80LeqB6g56IG9k+OEKPAlIAC6t0AHOkgpyT65m?=
 =?us-ascii?Q?ULQK/Ts/Q9f11e/OeWIIJaaYEpGu4Fast+MMimjzJyD6MRo2AsyTAgtLw385?=
 =?us-ascii?Q?+4XBmEZ15DLt+682P9GgUcY6j1M4f0fncuaB1QQK+CmxFQP1PWop9ntNvM+J?=
 =?us-ascii?Q?h65VXbq6vPt/M0BAM7YJhSI0MoGv3ckzhDHThxqUdF8aGtoSJEVhWAZuw4g3?=
 =?us-ascii?Q?9kgw7H2abTUdF9bMzaG0dDRV6Q/CvVdMwMXTM6eqbxMiQOBq+oqizwuiGy3u?=
 =?us-ascii?Q?Ci0IYIwGVA4o3ir0SepdXV7A6xrl6Kkl6mt4CZ8zDBUX7Itdz1gT4U8TV1OJ?=
 =?us-ascii?Q?OE5NxgCwupCEDiDiYoOvRol3lveKMLH3bcSA4+2iwSO3xTz/m9cBjEzjqc0Y?=
 =?us-ascii?Q?ZGYOoVLa5svCYJN7l8OiVknSegqDXJkScP2bkVLmoTb/iLurayV6jFnNBbSE?=
 =?us-ascii?Q?yUxzaKyZqSLhqpxFM5pMYSfBBd2nmdYMWi6K8pEtvwfYSIk5hlsYm7m5zThh?=
 =?us-ascii?Q?1gC74B6caQwU5jo4PdH521u4eBD9yM3XD7jWyMP1rvw+aZHIP9pCIp72No+e?=
 =?us-ascii?Q?McqZaQmJogiD9P7cUHWDxyTeqaSf14ldgVt2aMnA3xtiur5OHYwZweKrF4Ik?=
 =?us-ascii?Q?cHi2RhiVsjW8+ayifEG9CmSVz5LX2rZBfkC5SB2CS+9FUfsJvbVJ8sY0joDn?=
 =?us-ascii?Q?EInaPkwu86aG/TmfIs1JYc3PVZ7ch3ElAVUkhP7omfbBp0smJbKdE2CUD3Ju?=
 =?us-ascii?Q?Zj0I9WZ59g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db95f605-5782-4b40-14ff-08de641c481d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 18:36:16.7233 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rfCaPuBX9MuzHgQZcuAXW4XXf2E4iC+vOK8zZpwUNDINl3OEr12l04GuIkpQFEzelbsWWIrno89SHRJ3MyXedA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6783
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1776CEBB48
X-Rspamd-Action: no action

Matt Roper <matthew.d.roper@intel.com> writes:

> On Wed, Feb 04, 2026 at 09:59:22AM -0300, Gustavo Sousa wrote:
>> Matt Roper <matthew.d.roper@intel.com> writes:
>> 
>> > On Mon, Feb 02, 2026 at 06:43:19PM -0300, Gustavo Sousa wrote:
>> >> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> >> 
>> >> Add platform definition along with device IDs for NVL-P.
>> >
>> > Not sure if you wanted to add bspec references to this one like you had
>> > for the Xe3p_LPG descriptor, but the flags you have here look correct to
>> > me for now and the PCI IDs look correct so,
>> >
>> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> 
>> Thanks!
>> 
>> I'll send v2 with the list of fields and Bspec references. I'm
>> copying/pasting them here as well, just in case you can spot any errors
>> before I post v2:
>> 
>>       .dma_mask_size (Bspec 74198)
>
> This matches the way we've justified this field on past platforms,
> although we've discovered that the "physical address range" value on
> that page doesn't necessarily directly translate to the dma_mask_size we
> need to use in software; there are cases like ADL-S where it isn't an
> exact match due to other characteristics of the base platform (MKTE and
> such).  But that extra information isn't really available in the
> graphics bspec, so I don't think we have any better reference that can
> be given.
>
>>       .has_cached_pt (Bspec 71582)
>>       .has_display (Bspec 74196)
>>       .has_flat_ccs (Bspec 65255)
>
> Not sure if this is the best page for FlatCCS since it doesn't really
> indicate that a platform does/doesn't support it (e.g., the page doesn't
> drop out when the bspec is filtered to platforms like CRI that lack
> compression).
>
> A better reference might be 74110 since it has a yes/no on compression
> support by platform.

Updated. Thanks!

--
Gustavo Sousa
