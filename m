Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHdECRyLemkE7gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:18:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD39A97E2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0817010E161;
	Wed, 28 Jan 2026 22:18:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+dt8X41";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FDBB10E161;
 Wed, 28 Jan 2026 22:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769638681; x=1801174681;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=3gkydtqYiBN4mvdRObhgsQhkNcuv7f6QaQmtTz5zUYY=;
 b=Q+dt8X41Q+tpyZBxNncmjaX21P1nQc6EFR4+j1x8+QvXDSzdkFmTVc7R
 /l+RW4pYLwmg9ONd2/l8k7+57CbeqR2xQKTz1VOYVgO57HCx3HWmagnkE
 LEqbBclmLJjm431UN6LA9N5lZcyDvdyrXoP0NRIc9MjL1Iu8vRkbep7QA
 ds5c6CpWJDOWuBcUtZhI2CtxoBiqCu0h0Jl21+0cVAC1hr+tjHk6H279e
 kWA1Bqu443nVYNvAcaR0CL5WwWrHw1TaF1DDYFCljeHoh10RvX4Fv0673
 OuzHTAXt3PtR/dIWgE+suqHCvpSu2ax/HErJ+0Yr4iaaNQ5CpYvKFtrfR A==;
X-CSE-ConnectionGUID: VXPTL9GzScyX6GuDVQU/mA==
X-CSE-MsgGUID: Wwmn2/zgTomPWuEOtUfO+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93523396"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="93523396"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:18:00 -0800
X-CSE-ConnectionGUID: P4Q6YH+SRYaq2TYrBR4tEQ==
X-CSE-MsgGUID: tl13lrzRTuuuGjRCeFwZCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212476239"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:18:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:17:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:17:59 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:17:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zQShdv5x/FinVubzgeTRAPhD2t1P0s4PlP+LcnNovwHCZlp4wFEGW4i1lLCiySwy+9O5L1Lz4NJHWFYcnwOcJ001iw8nPCfMMyh7QPtQEVChuuy+WMK4J/F2hk4ncSnmozhyh4l49CxMEvhGIA+giZIJks3PNbyW3Mc8z/NFTq+HHgr3qkEVJZFR6b7/KJWIgZKEvZrW/YoqJtPHPeGv334FlaF2o92wzEIu2zla7SUJNZwml7sYCtTAFD7V8yind/9E7w2lZZUJhRtW6mxhX7BUBFiWqVf33OrJy/D6rOETu36nFbOjeP3ZK2n+P5uwpA3mOalZ4bXleG1ObzlVeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3QPbWOFMtM9fwIS5liXrRNrcmq4C6VQf9726H57Hio=;
 b=YVeNqWlhgn6tGnzB4lHwZUYw/TiZR3AjesY4wxPl4Bp3TG1VIfCSu3IlX6XNaGr3R3RJGDLEYYaHglUV9HqQlFa2YeZM7P3SOyriYugnaoVoKxRR70pXSOGGtDEql9lqOY8AyPalsi/hMpXtC+8jDIJoh+/ctxw5jDKmVyK4jSXNNf9p4V90LaYYzuMaIhE/dRGGR0V+87dLFai40UvE5mG2Sx+pu4+iBwcIFytfFnyYv4Kkbj9JwHxmTidyj5PeEYw9+QcV97Exz4rLvxMEgA/+Dq51UkzNy+FUxEVOvZIFncciYO9B2Ea4QVg1zVeA3zqsxWQ4Wtap6ymZSowUCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by BL1PR11MB6028.namprd11.prod.outlook.com (2603:10b6:208:393::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 22:17:56 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e%7]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 22:17:55 +0000
Date: Thu, 29 Jan 2026 00:17:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 11/16] drm/i915/dp: Introduce helper to check pixel rate
 against dotclock limits
Message-ID: <aXqLBWUUsDhrhJVp@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-12-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-12-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0000366F.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::38f) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|BL1PR11MB6028:EE_
X-MS-Office365-Filtering-Correlation-Id: e1b3be8b-1285-4e66-516d-08de5ebb108f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bXXaWGYg3qM5FXqv/mCaVCMZWe3hkpNB3+7ZyhWFReV2rMKd+WgcEhhd9Hf+?=
 =?us-ascii?Q?2gAtNa03woMPaI2DjLVgOaXrwfU05Bvy1AGLz7mpAR0lfYqU54i/au//1pvt?=
 =?us-ascii?Q?LBcisg+eo63bEVopd7F62rLjKVeezloV1eG0ferHWKEpT9bG0lTNCfjHBpCM?=
 =?us-ascii?Q?/enEG9uXyc6qsai5Q51y3q9Lo/vdGrtOLixRmAgaMVHeydB4zJKMrHP/npEc?=
 =?us-ascii?Q?1KNqXhE5s82mGDHnqkfJs3M4u1hGJqjL0ffaq11YaSmRTHTo/ydzW+kRLJV5?=
 =?us-ascii?Q?83D6A6+Lb91tzKu/mbRk6DCDHUt1uKUUbTYwkdIw7zFt953ZcvT4P8iEQmAH?=
 =?us-ascii?Q?8j23oOBtCf+p9ncMK++m1mnCmcFY77y5DewOzlTvEtEoPhA200gFoAoEN3fT?=
 =?us-ascii?Q?CYPmcrcYna3yaWp2sdlpdc0QeXKTeG03op/nPWb7ZPQfDdkUH0/wqG1CmRAW?=
 =?us-ascii?Q?2AR+Yw2inhtp6oNvozkXUQanWCr21xRBIowwnsSV8EAeDkg9AlW6+A/wYOn0?=
 =?us-ascii?Q?kjpwrpasqJKmwHksYCLp/O0hgjZBuCfOL7f9XxVQ5w/wg9RuGJdT6NsMhBJV?=
 =?us-ascii?Q?hqeEdulv1Fj/VuYylb1vV4zSCzASDyRlmp0qzD5qO881AADelGD09QfK7O0C?=
 =?us-ascii?Q?nf3MBTph4YWwJ2D3ooSxuV2PnOT7/dCHryiFVtlZaPS3HRY2NEr3xVGV3WYo?=
 =?us-ascii?Q?8JIwWdzPgPFRs5lKODegWol47FAgc6eWK08nKwyNQfv7uJY/d2HDseogQnju?=
 =?us-ascii?Q?Uf58CV/rkq+hPaGzxrCw4htlQyvld/qTlonfaXERSZFxS77gP65h9DWRk9Qk?=
 =?us-ascii?Q?j4b1KBj1YqdQCsV0K3kx9EZITios6bMuv1ej5C2FEUDU35feqgl5pB1vaeqX?=
 =?us-ascii?Q?h/TnySqXkwfcSIx6oNIOXE4mh2j5ZrrWPhxZWwmE/vTOkk5v7vDvWynO368n?=
 =?us-ascii?Q?owa5APzVzRZOX8ncjV8UMfnOCmEgo8lwa3lavkJH1f4MAjZZAHO5BilhiOVd?=
 =?us-ascii?Q?6Gz6CLvAfnBjsoABfQ17Vj52rdlmgdf2aVH7LviuvsTpj+4gQT9TgRb/Hych?=
 =?us-ascii?Q?Y3mYvqmc6AHKbnCPFeodA/G1QRtUu0rhg6bQLXRDNNYyu6P4KuVoRAcptkVx?=
 =?us-ascii?Q?34PKWmzCcR3pNk7qDqwhHenYRjnGw6qlqu+NSqnK1USvQy3bnPdC7LnOFhNL?=
 =?us-ascii?Q?M/ktEcOJubiDpAx4Lzp3K5hEgfIhLzFQiFQ4pU65Jy7XRUR1KKOzVR2BJqKB?=
 =?us-ascii?Q?jueqY1E2WQRJGSIggKxw09lCqrX6C072W7fCTJm9R2vOa/iqk+n0paupNxM/?=
 =?us-ascii?Q?zuNtkLDHh4UwUIkPe+QqvLK26fE1hEgkqbBG6mc1GSllfEjU/uoxNPERolkz?=
 =?us-ascii?Q?LZBo2t0oP/0LclnMO89q08EQvgCSHwD3vGqHAMcRnuxDreyIhm+L/n4v5Svt?=
 =?us-ascii?Q?MBj4VSaZdO36MuH74HDLyaKoIp5bsXTBHSyfvXUJBui0qFY0RuV84ZPbU4oQ?=
 =?us-ascii?Q?ywaYy6+UUsuZ3LzXrFMwiHFv4EkyFJIFyFRhx1GFu2+FVGO+5umwuxMZQg92?=
 =?us-ascii?Q?ETHfx9xh4nfZzY8yVbs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uRS1fq1V1PG2UEqZE3wjwwGZf4gTvqtjFWgRK8lfUEFORvtZR1OLDjK4Emj0?=
 =?us-ascii?Q?PC1uH9nbXPcxL0rq2Z8sFxI+IF9zSip3Mx0yR/HBQhyVXETHHKV9mM+9N2kr?=
 =?us-ascii?Q?YCNWbJmJlsXig0cA+woYAYp2nivKPgQQn+vhwPYHokC2G22CPDYFU9GD9vjx?=
 =?us-ascii?Q?REmXXv69HuHBzRyF5x/nAKzmDcq9uejM0gGeanaT9zdo0RmXUPxJjFldHXZx?=
 =?us-ascii?Q?QmiU5YqD6n83Yo40EtHobOm5k+iVH6oHFnoUinbJ8GEfGP2+vyPryTEZkEGv?=
 =?us-ascii?Q?FVV+R/VK9GviJtDW5kb0ntgUXqVKAhHWt6Qv3E9O6szs1LNyTf4MRuA4EuMW?=
 =?us-ascii?Q?imyrv/+A7BWGrKII3p8tM/CZvT7fzRG7+rWTGNS3XbEsRgLEFBQ+GVxaOOHU?=
 =?us-ascii?Q?0iJTxP6l3pSZfmk4BETTe3YPl8q6AhJSV4oAgJiBcOpjIfHEHXduoZpL9CSg?=
 =?us-ascii?Q?nf8EgVbO6WbMZlla48evAS/KorCV4U3OPgonqpBdOBZuCiamT4mGpisxcB3w?=
 =?us-ascii?Q?Eq/q7xH1mYsJiT68WFAg3KKYM5GkgfrYQ29KmPnoYOrMXd1evOptOG2LLMLu?=
 =?us-ascii?Q?ZTjtRF2HPxkSuWb8XoBwqAPmulKsaNZejy/rOfANnhnRBEz6/ilOXkqTpXXW?=
 =?us-ascii?Q?gx7nBECdVkozr0L2wl0KPkUbEnWKw3eDmUXngciueqv0BBTHnzFHsWigH+0F?=
 =?us-ascii?Q?K0bOImXUeuucCG5IoPdftko11h2I0ruNl+CguLrrALe6qfAXbsob7t0AAod0?=
 =?us-ascii?Q?3g0DiLfZzqwwGdxq8CNH+8ZFcrOO5Ehnks09h+sdJJsgfNJHh69pNcInKQZ/?=
 =?us-ascii?Q?3p8K7923kLf7csFECpxbYqtrFMy7z/lRtIgsHuvIvBG/4Ap4EAJu4dq4M6Lw?=
 =?us-ascii?Q?5qACTpGxBHPrXHfTpJdL3tejh4GlyiM4zAQFuOV7DjnBZhheT8ZHMazHyk7Z?=
 =?us-ascii?Q?W/HInBM072gt4wopN/4iBqWftKtKWHQa4ZuS0IXijgMa80G81TZp9bHj/TXN?=
 =?us-ascii?Q?kGG4F/MRUezw7r3E+VFN9wjkl+dx8+fPNjjcB0OJ1nnOvV1rtTApl5aD9KyG?=
 =?us-ascii?Q?NjCdpTb0KbZdPNn639zHLE1pYOMFaLQn8JiSScUwdHaszKibim2W8UMrx+4y?=
 =?us-ascii?Q?50iJzVL/nVhUjo9lseEea5QVgEfHgiN/o31pfbNbdodRaZhtQTTh7wmKkvPr?=
 =?us-ascii?Q?12JkkaLYUpiOQHpcvokIrpxc7r9Q/RtdTzWhXaJCKaskIVwyP4d8J0fizGSx?=
 =?us-ascii?Q?++LY8zhub5neTlkIUa7mBc1wlik23FSYG6LXNsHxVwT9W5yej+JRisriPHrY?=
 =?us-ascii?Q?ATB1HFCGAmIlQ5rHwJy9HFqX3WQ4JoS1AvWje0J/UGKM0Szb5NwgcsnVePeS?=
 =?us-ascii?Q?S3k7JjzOcDpx17WuoMXewueK4Ucb7OXGESl6/UUlvM4lKZ3rFtZt3nsJVkbi?=
 =?us-ascii?Q?2D1phsUS1aW0zNxxhvKqI/ndi6ozBbXH5CeLUK4Yv4BBrh0F+76xfoZ4oZnE?=
 =?us-ascii?Q?6amkBxCVD85maJ2QhovMGZiN8EWYj0qwc14ktI1qjRyRypWyDNSzhkhKWUy4?=
 =?us-ascii?Q?P0Cwp85nVyx4Oah9cyurNi2EAsLGIuIVZ2YZzDlkUAM0ISTqtaF1E3iYvB15?=
 =?us-ascii?Q?M1PqOxKrMIcK8AKUNEbfutPlfK5f8XvIc4C4rwX2lmUgJLc13cRMeKRmJ6Kq?=
 =?us-ascii?Q?RAGdGe/ofOQ5+Ksg3lhhf+xUUn31M2FaqAXTwtRJMIgEq7Q64LHtygM4ZlgI?=
 =?us-ascii?Q?b6dn8WYo6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b3be8b-1285-4e66-516d-08de5ebb108f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:17:55.7774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: upF4syRLPUrx0bsYOyrGnsSBNy6OECnEq37/uSKxewrsP9ivsdj/JRBL6fiYsmZ78k5TZ1hQaSlNnn/SHKePRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6028
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7DD39A97E2
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:31PM +0530, Ankit Nautiyal wrote:
> Add intel_dp_pixel_rate_fits_dotclk() helper, that checks the
      ^intel_dp_dotclk_valid()

> required pixel rate against platform dotclock limit.
> With joined pipes the effective dotclock limit depends upon the number
> of joined pipes.
> 
> Call the helper from the mode_valid phase and from the compute_config
> phase where we need to check the limits for the given target clock for a
> given joiner candidate.
> 
> v2: Rename the helper to intel_dp_dotclk_valid(). (Imre)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Rebased on moving the check from mst_stream_compute_config() to
mst_stream_compute_link_for_joined_pipes() and status/ret fixes
mentioned earlier:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 23 ++++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 ++++++-------
>  3 files changed, 27 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9bbd37ebd2ea..655688c8e6ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1449,6 +1449,18 @@ bool intel_dp_can_join(struct intel_display *display,
>  	}
>  }
>  
> +bool intel_dp_dotclk_valid(struct intel_display *display,
> +			   int target_clock,
> +			   int num_joined_pipes)
> +{
> +	int max_dotclk = display->cdclk.max_dotclk_freq;
> +	int effective_dotclk_limit;
> +
> +	effective_dotclk_limit = max_dotclk * num_joined_pipes;
> +
> +	return target_clock <= effective_dotclk_limit;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    const struct drm_display_mode *mode)
> @@ -1511,7 +1523,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * over candidate pipe counts and evaluate each combination.
>  	 */
>  	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
>  		status = MODE_CLOCK_HIGH;
>  
> @@ -1582,9 +1593,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		if (status != MODE_OK)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (target_clock <= max_dotclk) {
> +		if (intel_dp_dotclk_valid(display,
> +					  target_clock,
> +					  num_joined_pipes)) {
>  			status = MODE_OK;
>  			break;
>  		}
> @@ -2870,7 +2881,9 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
>  
>  	max_dotclk *= num_joined_pipes;
>  
> -	if (adjusted_mode->crtc_clock > max_dotclk)
> +	if (!intel_dp_dotclk_valid(display,
> +				   adjusted_mode->crtc_clock,
> +				   num_joined_pipes))
>  		return -EINVAL;
>  
>  	drm_dbg_kms(display->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 6d409c1998c9..78fa8eaba4ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -228,5 +228,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
>  int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
>  bool intel_dp_can_join(struct intel_display *display,
>  		       int num_joined_pipes);
> +bool intel_dp_dotclk_valid(struct intel_display *display,
> +			   int target_clock,
> +			   int num_joined_pipes);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7a83af89ef03..f433a01dcfcb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -702,7 +702,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	pipe_config->has_pch_encoder = false;
>  
>  	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
>  		ret = -EINVAL;
>  
> @@ -732,9 +731,9 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  		if (ret)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (adjusted_mode->clock <= max_dotclk) {
> +		if (intel_dp_dotclk_valid(display,
> +					  adjusted_mode->clock,
> +					  num_joined_pipes)) {
>  			ret = 0;
>  			break;
>  		}
> @@ -1532,7 +1531,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> -		int max_dotclk = display->cdclk.max_dotclk_freq;
>  
>  		*status = MODE_CLOCK_HIGH;
>  
> @@ -1580,9 +1578,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		if (*status != MODE_OK)
>  			continue;
>  
> -		max_dotclk *= num_joined_pipes;
> -
> -		if (mode->clock <= max_dotclk) {
> +		if (intel_dp_dotclk_valid(display,
> +					  mode->clock,
> +					  num_joined_pipes)) {
>  			*status = MODE_OK;
>  			break;
>  		}
> -- 
> 2.45.2
> 
