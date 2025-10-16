Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ADBBE53A0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 21:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC17610EA63;
	Thu, 16 Oct 2025 19:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQ4X+e/N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F20810EA63
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 19:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760642714; x=1792178714;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7rthd1YXRgOmMR95/rHL7o4S7iEFKt8cng8YgMSjBNk=;
 b=JQ4X+e/NNb975Qe9lP01LMmTvEZ6ZBo/JWg0OSQkMPTrSibYkWrsNFrT
 Kcvg35BMP3TEzKmP4p+VizXoxLxxkHJKKSdvZjRephOdDPD0mrmHFf8oa
 UMGdPbdy3bEtz+H9BUDytmcXmIQJd4w22Ql2VUQg3dCF83jYQGtOuqTOJ
 EgBoILMTIDje73PQm66OhrONjhYe0AUJWTpm21E7bQU4kTqaJqLnEIK2U
 iHZCDniYWOS3v9IbftvFg2xz4jjWrb3NDp6T42DkTX6fJypQvX/+AQ6FG
 sUs89ewdqexb43IulX5d3kR5vZ52OrsYgQY01Vlr/LZTeo+92pLqzKHel g==;
X-CSE-ConnectionGUID: 1giQTbOJSBqD3xWs/mqBtw==
X-CSE-MsgGUID: c4wYL06kRsOpCu7Pkj1ELw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73965649"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73965649"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 12:25:13 -0700
X-CSE-ConnectionGUID: 8QJHnES4RQCtHjVKatoh5g==
X-CSE-MsgGUID: PxkeCGDdQB2YLlKL/OFuZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182221365"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 12:25:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 12:25:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 12:25:12 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.66) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 12:25:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jAT6APYyIovwLhPAJJriVX5Tm1e9EoxRObzPENP/rY0F/UGUU+Bc2IhFcRRGtJOn8CbYCLUE/4BoE33Jom6uscWzwfXmWUL9+926PZrQi2ihKR0UyTx8mfq/xlogh68gyISIuEHyKu5YWIgeayp36GuwekR5j/9GZQDZyMXVESKl5vS4cQI2gyBuK1Z4WP9jPr3owM8OMaBMM5Z0XDMlSVN0jGtbBbopUsHG0iRMrn8oFaiuF+jGjDLIBEo/FoXXsbw5JLR6/gVfQh6xdJm3NFPPyP6e3IzNbvFFEcGRKtc2FaSkEBwICG1DOG5luKsBoHmXkD3reR1LkOPV4Sa0eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HUCH6AU6Yul+sePJ+OKQyXI8WaBpVcjZzMoUraypHHk=;
 b=OTSJM2tTxxV2OOueurNOcQXQC6owSB8Aysuel04Jy/mUSDw0Infwzjn87c5BV4u0hrINEkNo+AOZNVrFcnx5VkTJ9PQqO/wpDcnvQlmlMZvEv7Sf/EnOcyXQgb+vB8zIOEE0byJ/67AsMOXrJnM+1lS3t+TiW8bw/boQu+Xg/ONBdZ4MqCCYI2ZGIFjJeukce7Xewh6uRkNUFcvpS3pIrkBUQ4Mr6okUeErA1xzJryfa40jcchcmwqGbJW6POSDy8lzmW/FwVdpn+ACxWH7OX1EoKZ9WGXqs3x6AiW2lJHoTgOB6nr4axOPfS38mWp5G9Hhdg6fwLppeDRb8WjgUPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA1PR11MB6491.namprd11.prod.outlook.com (2603:10b6:208:3a5::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 19:25:09 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 19:25:09 +0000
Date: Thu, 16 Oct 2025 15:25:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, Andi Shyti <andi.shyti@kernel.org>,
 Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aPFGkYpjdqrzwMZs@intel.com>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
 <aOkH3NsPp8B0dTUl@intel.com>
 <cgnb24g7cpg4lrsneyfijfe4i7d6p47hahtsrewhaos6vsqm6t@joehsc2htikb>
 <aPDit9yNIhkGTx-A@intel.com>
 <bedf7c86774b9eb81bdd8e03107c7da04c9cd1f7@intel.com>
 <aPEOmdqD4YlijyU0@black.igk.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aPEOmdqD4YlijyU0@black.igk.intel.com>
X-ClientProxiedBy: SJ0PR03CA0196.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA1PR11MB6491:EE_
X-MS-Office365-Filtering-Correlation-Id: bca3eb02-b9f9-4ca1-3dbc-08de0ce9b858
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yYXTnYjV6qLqIV4CCQBwv6FexaEezsbeyOOmT7pNU0IWLEAiQ5VbVikbFBSs?=
 =?us-ascii?Q?zc7vAnHZQxeOZzPGDy+3deESQvzS5oqKPmQkMF/JFt7ORNbRcUZ1TQd+vwQx?=
 =?us-ascii?Q?ocCZYEqnab/HI/X8X/4NPt2nR3clT0We6pUV3BnZemWGB/ztx7T2xUeSqu9A?=
 =?us-ascii?Q?26yo+txYfpccEQR2ThsvMNuHgSjz3vKDTox03lq1rF3Qfcb0SRL8CvcKSA5V?=
 =?us-ascii?Q?P88CZzvnY7gFNyWFDRg6DifIoLvAY3VbKgZrIUZVthQ4Qp6CGXbr/U2R5q+d?=
 =?us-ascii?Q?0jj0ZjwXkY29Wat3hrX7AgM4+mdkxphWFBr7liFhrLwNOQNj/n8wRNo/uflt?=
 =?us-ascii?Q?43oKKv8K9lsOa6r9o8t+NWTQSpFMne/NWkVMThrmOxIIDwiV9s7Le9/EU3IK?=
 =?us-ascii?Q?UBgYvdfcVd1f5XcFZz1nyOzPLJf6aJbJO9Ei6C3YYw1S5wOLKYeOEEL9LlEY?=
 =?us-ascii?Q?Zk308vEBsQVXY4zH8K76JjTFvKxo+DXvwl+HPQrQlCBo+9dLnSe0c0BsKM2Q?=
 =?us-ascii?Q?pFINiWPVDUIJWj2gnKfXr2lVi9wv3SsXw9nfKzZ+10pXNS9PkWtfXuUL+nVM?=
 =?us-ascii?Q?3IeHt8Gki9b+SFgt4pDa9ODT+XC6rg7KYZTuS3XyEuhbkHjKhXdU4RFL1SkC?=
 =?us-ascii?Q?FoqmdPyVM0emIOraSkea7juvndf6Rjox/XqI9KjKswZvEFJ2++k4AJY7rgjF?=
 =?us-ascii?Q?PpjaDFlliITQn6wPoEaJCxWd7DgzXxRWgwEAM2/TzQkaA+KNfaaCNsnGB2cr?=
 =?us-ascii?Q?Ws8bmqedYznqiBLQgYq7FtVBQ5Q1Zp2CcqJvtqPJb7jTYGbE8TDXNqtb+cCR?=
 =?us-ascii?Q?l3pReDR14mbYhHbwyAk3JNCqGWxkJ8qSSNKgNxBG7nay9yW6fVELCSlTwMtL?=
 =?us-ascii?Q?8wttGzMQnYEpyICLeJFLoDhlrhoitLZxql5pi6WnFemU9DTTKgb6L5xsgTOf?=
 =?us-ascii?Q?00jivcUNVDqt/qadDXweLYnKMIQ79pJGrhXgsKzL6T/j1lea03A/1GX/Be2p?=
 =?us-ascii?Q?nhNhgo4Qvi4TdYQjdjD2OWwdk+nN0vTiaLpI1F+UtH7tSCio9ccnAnbvvkUw?=
 =?us-ascii?Q?FqSfjtsyuaF7F20sLjFircNNJazVutwF93nYBF/LcJGNKL3Xqu9zK7RoWe85?=
 =?us-ascii?Q?cCOkodLprdRNyMMuTs+6636n2+Iuv+lRLdpre4Pj2s0plmFOL3p/VWAr7dBO?=
 =?us-ascii?Q?WFFtQO1tRFo7uK4Hfkxsa3cWYWgogLsqWTj0GPGDYJnASfIbni+U/wUDLAEo?=
 =?us-ascii?Q?AiIatsy08UEuM64tDcaRPGPXFG9O5wiOOEPX6Tcd80AyyTpHvY1+FPTbIrz5?=
 =?us-ascii?Q?mGnK1X2bqqmVYuM8XHuSx6bfxRsumtZUFPdflqd8CIOWYSL2fiSTRGwYWzR5?=
 =?us-ascii?Q?OQn7MMbxc88nLA9ki21c2CGQk4tDdWdoG+qIlbfE3LbT2yYfX28Ve6YXRUSI?=
 =?us-ascii?Q?JOHOSLU75ANtlSmpKneLbzJILcuDjH1r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dISLLF/bNC3eDg1tEsnhM2QyRsdZDYeIoAHCynGfyt+Nb4l4M2TRnMEzeyNj?=
 =?us-ascii?Q?BdrIpftIy/gut/zBVWNnQd35MRDdU3Qyuqe7Kch/Jml4nDIsqJ3NEEC6IA7t?=
 =?us-ascii?Q?zM6QT+cOgZBln5WrjYF4VE4sGZDlrpCqAIbRIqaLsRmCZCDlNAyKMj4OTC4v?=
 =?us-ascii?Q?eqVoH2rHF+mLn5fE5Q7jld9EkhniwduCxtCDdj/2xjhdgxVbLfAWJOcR3+S/?=
 =?us-ascii?Q?/YBeEwJMZzy+/sXiCXYVYq+6fbzh0sIHx12TXL5HB36xf67k1fncCRQwdSwG?=
 =?us-ascii?Q?32ScKL4Yv8vQgG4/kMECz8TvscVFkoqyo8IgirZfknuKs2+q+fYENy7U3WbQ?=
 =?us-ascii?Q?2q6A8g3KpKb+rrOfd8Cr6729m8vX0qGABOpWS8RXGk/oSKziOfeTLFrhFUMG?=
 =?us-ascii?Q?dhuUOYNFF7vpp1b82fAHhakT0y7PYSQCfrhZwXbsL96NXzTQSMVAMGS5bL9K?=
 =?us-ascii?Q?FdS87DfgCqPcXIP2FVcvKjhwYLddGLMWqmxmHro66qVRSwXdl5TEfU7a7/Rl?=
 =?us-ascii?Q?LQTOMTif+Gk7cFX+XhffXUszCeFKNRDi1WAp2eGfqFPpt7ECYhGmZL5rXiJV?=
 =?us-ascii?Q?6mtDdWX5lkqist/Gpq3+IvGi98uccsXQ/pv+hAz2mqEc6ZPlyn42ZnRrOHng?=
 =?us-ascii?Q?9AXmXvhUhfJ2guSZBpxKrQIrOeUsvknIU416cY08xaex/p2fflwcnNYCAxn3?=
 =?us-ascii?Q?o8dyhfQknSZ4YbYmxk2kh/QKjuS2VR6vvPuqK4ubtHwLTy2UHhGp1sQNh+Yj?=
 =?us-ascii?Q?NS0fTc64CNHOClrFXS+x3oP9Pl8hpGqPl3MHQPF8X4SW3sOm6xofxAvXPrqD?=
 =?us-ascii?Q?oDzfCjJDiA+e49xMgd8ZGJZfxGVTWu4plmT+Px0Y3oEm95rfbN6wIy9CTnHP?=
 =?us-ascii?Q?rSSrf0FGc5zav6Am19UGqv0Pyhk4B9PGH9tD9NlHE7HHOc0O5nvbSG8IBhTl?=
 =?us-ascii?Q?TzwSydIJqjJaIIT0cw88ytr04Pmn6OhAM0YLmnEsmum5S4hPBmreBDVjHmoj?=
 =?us-ascii?Q?SYnoCyAXewJsrH1kRtxEy5wBn4nWv5IGNHTPZXM6daVCaKV5zlg7CQLX9PdL?=
 =?us-ascii?Q?fB2zC4FvduA4ROzADe4BFpJt5UMSk8G4vCaFyBT74ry6j8hrEQPIBd1CgUBx?=
 =?us-ascii?Q?uaTNRCvf+yE11cwlzDVXTxZx+8Lp0vSTLy3r4jVThOIUtGHw62M8XXzn0Rjs?=
 =?us-ascii?Q?2CT66rEvVRt4UA9HKWLdN4uUL5d4Mw9cO/oH1GL302/KXDHihD3WJ5QtDP/5?=
 =?us-ascii?Q?y19Cm9IMvu+MiBqm9r5vmfYe84fekw7krO9ZCOciuGhE/GvJnghFEngxpejF?=
 =?us-ascii?Q?QC8MYnNHDnoQBG+BaarUywnRfMPmw6Xm3ZXl4xQuG0WJCtVXmnlleEM9pG21?=
 =?us-ascii?Q?Vhrkax7mDVQhRRg75uDqLrYpO76Fq4H381GXPDQ3x/vIEKeHmjPjm7e5h4d3?=
 =?us-ascii?Q?FDf3iQGrzSpGWUX32AgNDvL0mR7yIG25NB2R8ixN1w6dbc+mpJpTbfxX5rkH?=
 =?us-ascii?Q?plTSn+jBHRK+wmbUpUiELbpj7cTFf/umadXoULliOL6OntS2k1tfscRro3hq?=
 =?us-ascii?Q?IsZP3cWZgi4Uqih7gZxm6Zc/M1fsFsy6i7BrJLLkVzFGe3GAEMXSoW9nKzdr?=
 =?us-ascii?Q?OA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bca3eb02-b9f9-4ca1-3dbc-08de0ce9b858
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 19:25:09.5334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ygTEDTh4yR3kriEe6kJ7wpzN8MwfZZvZMtZm49krRSpGVl6NerQwFhs/fZp1vLSyhHmY+nj9Oc8imTSID1WSXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6491
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

On Thu, Oct 16, 2025 at 05:26:17PM +0200, Raag Jadav wrote:
> On Thu, Oct 16, 2025 at 06:20:01PM +0300, Jani Nikula wrote:
> > On Thu, 16 Oct 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > > On Tue, Oct 14, 2025 at 01:09:46AM +0200, Andi Shyti wrote:
> > > > Hi,
> > > > 
> > > > On Fri, Oct 10, 2025 at 09:19:24AM -0400, Rodrigo Vivi wrote:
> > > > > On Fri, Oct 10, 2025 at 12:55:02PM +0300, Jani Nikula wrote:
> > > > > > On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > > > > > > reg_in_range_table is a useful function that is used in multiple places,
> > > > > > > and will be needed for WA_BB implementation later.
> > > > > > >
> > > > > > > Let's move this function and i915_range struct to its own file, as we are
> > > > > > > trying to move away from i915_utils files.
> > > > > > >
> > > > > > > v2: move functions to their own file
> > > > > > > v3: use correct naming convention
> > > > > > 
> > > > > > Okay, Message from the Department of Bikeshedding and Nitpicking.
> > > > > > 
> > > > > > There's really nothing mmio specific about the functionality being
> > > > > > abstracted. You have a range represented by two u32's in a struct, and a
> > > > > > function to check if another u32 is within that range.
> > > > > > 
> > > > > > The struct could just as well remain i915_range, the files could be
> > > > > > i915_range.[ch], and the function could be, say,
> > > > > > i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.
> > > > > 
> > > > > hmm, I'm really sorry about that... That is my bad. I'm so bad with naming.
> > > > > 
> > > > > I suggested mmio in the name because i915_range is way to generic.
> > > > > The other extreme side.
> > > > > 
> > > > > Perhaps i915_addr_range ?
> > > > 
> > > > If we use it only for mmio, why should we make it generic? If we
> > > > want to keep things generic we could well use things from in
> > > > range.h, as Jani has suggested in one of his reviews and add our
> > > > function directly there.
> > >
> > > Well, I don't have strong feelings here.
> > >
> > > Perhaps i915_addr_range is more generic and middle ground.
> > >
> > > Jani?
> > 
> > Lots of bikeshedding here, but in the end just get it merged with
> > whatever naming and move on?

done. rv-b. added an extra space in the subject. and pushed to drm-intel-next.

> 
> We've all been here at some point, this is arguably the hardest part :D
> 
> Raag
