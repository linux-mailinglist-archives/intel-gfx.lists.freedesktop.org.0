Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DD6A2606B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53DF710E504;
	Mon,  3 Feb 2025 16:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aOAPVzQP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE2F10E504
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738600945; x=1770136945;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yo3AzWDzgjwGxqfZh31Yc0/k7ZqIVUb+xBNpIj3er7o=;
 b=aOAPVzQP5eazqbbUu1kQ8Wpy0U3tKsDxRHzeFV96r1PLu2yUzRzqyJ4I
 lA1ZUS2iYz24yoFk6SCKXYekbJem2PKBRnS81zdbCms2+q1bP9JNgt5Ag
 X+1zlmmSECBCRSaVb5r31ED0ztWlojd5cQB8c025w6s19wgPJD/Czz7uh
 4KAnSOpyExc8S7filCpEustVPwxK0s6CV2l3FRghnD8l4xiG058X2MUQ9
 9TDk3YMn+noNkxhgWy+KvTIfg0TpZcwCifzf9Y/6W1XTiOEzOpAsiFMqr
 QEPXcWLEfSS+9AEMeeFDtCmN2p66qrIy72gQObL15IsYfBYA+oUN0k3Te w==;
X-CSE-ConnectionGUID: tq+zlErbQ9isWhmiMPogVw==
X-CSE-MsgGUID: L7CW7EdXSfiPkSWxK+H7cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49754522"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="49754522"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:42:18 -0800
X-CSE-ConnectionGUID: j4Xy8CF5S6mCBWZ966h0ZQ==
X-CSE-MsgGUID: x3MqXlcWSyaP8RJ0Taf1Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147542764"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 08:42:18 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 08:42:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 08:42:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 08:42:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kk3YnQZNvMIA2eyIq3DPe6ktBh2ScKWZgI8H1h5gwpjvFkvCwC0+fohLPTGA2IIHP4lIML+15XErnsEgZ0lsWJ94pClSTCOFl5RIFZVVdKoTSSbdCP4/pM8HbIZ1K22k6FQBrsP47ni9e8h8myoku9tQ8HbEE+u/0MuY8ZiHkQxRHQJZT0Dc2c2KO0WywELSmky+Jbszeet+4If0g5Wapbc4MIbS1lPI1+0iKKuDUiB7zxgRazCf1ICcXn98pnyRS1jXMxLe8cxZV8qK8vTV0cj4p9BxWhgDxaBO5zT24sNZwcQBzRDMIU9Kio5DFEh2dzVQNAUMyAb3UUU7a6ReSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qaNDK4X3xcuGmbFi2E9obHDK/2wd0x7vn0llHSTaaX0=;
 b=g1oS4Ud1sRjae7/ZUhpDaonywrUAmu9GE+8hjJpckPBQWleuVrGIiBHKo8npcTbliqjXwIbRWlz8xaPEtlLQIVrQ+B/yibiUngbQpjHsxFpEovDabrvRyO00pns8gE/YK5ETA3xIX+SSr2wglXj8+mlF2WqRW2DXwCi7VQG+79Wb26rA28VRmvtJ/RwKqj2dw7MucTRPzBZMql1Lhc/rWk5tg+pTHm29M0AsIuHm/Jpss2vDDs+eQ8jINDY2rM7g0k4MkVNOOR2zdT3qGeiVA1N646aGF0TMGH8q3kI68vTOriXyd7KYMacTVELcwDS83KNptWy3ow7rvOS2teCg8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CY5PR11MB6534.namprd11.prod.outlook.com (2603:10b6:930:42::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 16:42:14 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 16:42:14 +0000
Date: Mon, 3 Feb 2025 11:42:11 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6Dx4ypYV3NJVuf1@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
 <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
 <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0301.namprd04.prod.outlook.com
 (2603:10b6:303:82::6) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CY5PR11MB6534:EE_
X-MS-Office365-Filtering-Correlation-Id: f26658db-e8d1-4e1a-b9b3-08dd4471b6c9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xWe5DELs5/QLaY5W2vR4FfIo40P96EY7xBzfTjItWWFmOLwYqP1TDrTl1e0G?=
 =?us-ascii?Q?eAb4yijAv5JhklNHaYLFxm7tQwnQhwS7d00oTpcd4La45BX93IX1oBJkAIr8?=
 =?us-ascii?Q?UwspZaVB7TdYi35zhXzgFl8E5sF72BI1QyZjn9SO0iHj3D9tQ+adiqXQ0ef7?=
 =?us-ascii?Q?9u8xH8nFCAde5xmAtYHAblQvsbqIzAh4PZPIOjCEGxHouoOJ+9Z4CVQyb0k8?=
 =?us-ascii?Q?u1JTHaul9uepZFj58MvGizIxYBACgqL7p8IWjevKWosDMH1LatKiZT/tveM0?=
 =?us-ascii?Q?/dxWGMK0VCP/Lsqrspuk6cuq+mu+mVSH8pOJQcGHLFIntsKVDjATGLA43HRo?=
 =?us-ascii?Q?RomzmautDqKo6Mu5/AIX6P4fy/+syi0XXEehBnoxg2GO7kth8Wug4SA9OrVH?=
 =?us-ascii?Q?OvhDxAJXKJwRMLygG0F2FC50tu8lC+u1f+7q8JW2pXbrittcUpbJbPzjx2cV?=
 =?us-ascii?Q?WsXBoIkjcwZjqeU3VaEdnqfLTnN6NrXTpPG0DiBNgRmzCGn5Gx8mwXqk9iT0?=
 =?us-ascii?Q?94trKL+XteXGf/z0xAA5EHYNhpEwhI99XxuA3Rk+FfKoltJ+T/UlMUWnDXmy?=
 =?us-ascii?Q?bouOHudOUXVoBXyXg0osJpoqHG1ensUAuCcD/C23Abl/zpyD1M5Ui4U7+V8a?=
 =?us-ascii?Q?nre7tmZ6iTTFG3Y3gxaBfiFb/BkCv32ymriF3JtfNPM+Upi3wjx3yFvnRSCO?=
 =?us-ascii?Q?DZ4XiW9V+Rfc/WQ+J6JDNhBjHIF+ptPEw6wbTIJOivxLeQknuowZV6E18OCW?=
 =?us-ascii?Q?Abd7nUdBY/90oI7baikRZoj1w7j6VKnCl+ewu6f2KazgBFrUsdo98cmwGCVh?=
 =?us-ascii?Q?ExciD64EcSDB8YRFMLDHQ1U1wriDuNrCSbMOt5LZuxrxBW/jMPk/vZHuAtLz?=
 =?us-ascii?Q?64ggDz2i1EM6DaQags+Yn4NjMdmUv7FkDs5beaBrnpqun4vwGX4G0+LRiMrT?=
 =?us-ascii?Q?4u9BlzwaMbRxAIBfIqwENStsc/qo2afyNiwrNNMmdkRC/vvJ3D5PFN2jD2qP?=
 =?us-ascii?Q?6h797jmXWcW8LIf5MFPh1/SMr4ioPri5SHXgaUjc5X5aYIIxQAY9C6H+dkol?=
 =?us-ascii?Q?EZhGG9WRPMuqHVFreQVB4C7I3S4pCGkKaILqLT7iFFdQ2Cd8QWN+xdWXTPNk?=
 =?us-ascii?Q?xmV+kOQ1i1MQydUepb8cLQ8LawrF4NXIxSbinBEQi/CDRtRh0g5tSaQ25A2S?=
 =?us-ascii?Q?onZ+urJ1mEOnk6muPjMmMk624mCPfpZl+KqdmtfH71UyqluiCPrJSbk+N4gC?=
 =?us-ascii?Q?wVb/zYKM52BH/eUQe8/EqY3DzC6+9Ib5DDwA7GkSsoLSnMtYsMVCaAQ3m4d6?=
 =?us-ascii?Q?HnvGMM5k46fRDgrs6aYKlwTfLkO8QIMH2AIBtTF2VC7f3x3TFXEMNmRiw8FY?=
 =?us-ascii?Q?kQQWVCVgAm34nJWadP29ms8Amacy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QbMN4KZAu9QgN6UATDN5Q4Jzk8mzlkpchV/JYjth2DPrD8PvCdOZs3sqkacH?=
 =?us-ascii?Q?93kA0siTUOosOemypmOwsSksnMk18O8G/13Mes1PH0MdqE+qf7yeermhnOAf?=
 =?us-ascii?Q?vb2ozAwC0hPqDsJyVi3UrKwVXz+64isPPK31+RuL/tGALiwmmonJELQNx5S1?=
 =?us-ascii?Q?Znf9a7eKjyiV7rFp6sqsxM/ASBiEmIlmM/IqgXVpHUWSjm3atnN31JrniYUG?=
 =?us-ascii?Q?27lydbvBpMzU5NaTW7KHNHWUkOUp+wpEB7WuwSBxIIJE/5TzbKp5RiWjCleb?=
 =?us-ascii?Q?qSWGr261ocOw0W8VecW8hJK/urtMOR9DHnc+LUI9UFse5xnlzRNVwWr9gkuK?=
 =?us-ascii?Q?jMchGipf4bQayMfBLG4HS2qqVeNE/YW3A3QSW+K/4pqSN7D6zFCfRDfrG+0h?=
 =?us-ascii?Q?Wu/XbxCtmgNWaYG4PHUPqopP9Lc6wIEkErjQT+mqyIFOYbKqHOOJnGow0HAi?=
 =?us-ascii?Q?AlBECMj3urHxN21LVRsgnzfBc1OQdPbpmraik9hK+UhzTeQK6kPiyFE4shYR?=
 =?us-ascii?Q?MffVk/sHo7AvCpTCUQyioq0TtKJqs9teapMV1bx2hy/P+CxyGs2tum2wDbuE?=
 =?us-ascii?Q?4w7OzEcLP+LvKIu5jOcmSqH3BaK2sbDq62FEEM/zKZ6/rUV46pdGLemV0fHb?=
 =?us-ascii?Q?IVHpJrGcb4O2baCQbbVn1bo3DCbG0W1+HTTyX1LFcc3BRiPiOh+oijD1G1r8?=
 =?us-ascii?Q?ZCRu21mJa3cR5lN5rVjkZjCJTmHhbaJLl3WCSe223yYt1lSqo93kkzmjAdCP?=
 =?us-ascii?Q?9tLE0g7cZOcIHJXeLReqB9EyDdLWp/i6eY5weDvLEbUw2+YC5Kf30xoHbwBj?=
 =?us-ascii?Q?rrIr9+5gapuDYnj3VXOLejZZjP6BDEPLcN3OZUa+WozA+3aZcCLgZLCLd4Cg?=
 =?us-ascii?Q?/jr+pSXGczIACKdgMTbAeHD5et0qRMTn2SDWz4fSDY68phOzXAOciGHptDYS?=
 =?us-ascii?Q?14Jbwb8VlkC5GOy2miF16wyabF2defFPSr+BwOsQhdAwrMh+3zDq9+dLOYfv?=
 =?us-ascii?Q?AhLEkmyhvhiKqiWv/ju2na5vVnMOwLsPk41CiusgwqRgw5pjPfHhfHNDJSK9?=
 =?us-ascii?Q?oDSPC+o1SrTfaihEl4pAxCjnwMKH+jFkavkQ1oZ5GL/UpAR8UhsLNdKKWT4H?=
 =?us-ascii?Q?phJT9RszAYhYJFHQP2A9XNqRSUyU+UqQsyicEJNWmetz7Qfe8ZJAMt9rDfuu?=
 =?us-ascii?Q?5gFiIYzh+j+1hayxUJIJSeivB8v/7U9AXoFLs9s4mS86cbLKvkjpHBfLBavU?=
 =?us-ascii?Q?iEpD0QlLs1foHiC/LS482FzzJaPd3y16xdD8NTlRmX6S6sVpPnqNWjLFooa8?=
 =?us-ascii?Q?9x0c01ncPKonSLN0CIn+BIlY1dh4LoZiCv1XFmoMo5T1tEoFt9N8sUqOBkGS?=
 =?us-ascii?Q?LvIb6vlWJ+ctB7TeESn+oq/SnOcfBX09Yy9N1xOnKw0pM+P1ykouoUClUDI0?=
 =?us-ascii?Q?5IJv6+XboGQq+TkLz3hjrRZpU7MMasfJYrEuT0UfA3D5He16/93zmRVlrqor?=
 =?us-ascii?Q?flbpuxUoy0JLdN873iClZepf6h2zWad2P9hJtK8QDvllq+fxp2wnZ6MoQ7Sx?=
 =?us-ascii?Q?CXmIjCrblsxtFV65YL4GO2+QFDKQVO6Ub7r1oSWmbaWBsw1e/m/uUDZPo9lu?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f26658db-e8d1-4e1a-b9b3-08dd4471b6c9
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 16:42:14.6946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /FhOE62yDib9Ny14UwlB7jbvoYIsA06nZ3ZSEE3QB8A7LBJLMfrpD7i9kcSvpCBiQKmLJKOPaW/VCe/WcirNYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6534
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

On Mon, Feb 03, 2025 at 06:27:17PM +0200, Imre Deak wrote:
> On Mon, Feb 03, 2025 at 11:12:34AM -0500, Rodrigo Vivi wrote:
> > On Mon, Feb 03, 2025 at 06:01:25PM +0200, Imre Deak wrote:
> > > On Mon, Feb 03, 2025 at 10:45:58AM -0500, Rodrigo Vivi wrote:
> > > > On Mon, Feb 03, 2025 at 05:14:10PM +0200, Imre Deak wrote:
> > > > > On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
> > > > > > Quoting Imre Deak (2025-02-03 11:26:19-03:00)
> > > > > > >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
> > > > > > >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
> > > > > > >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> > > > > > >> >> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > > > > > >> >> due to dc6 counter has been removed to validate DC state.
> > > > > > >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
> > > > > > >> >>
> > > > > > >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > > > > > >> >> ---
> > > > > > >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> > > > > > >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> > > > > > >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> > > > > > >> >>  3 files changed, 4 insertions(+)
> > > > > > >> >>
> > > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > > >> >> index 554870d2494b..cc244617011f 100644
> > > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > > >> >> @@ -376,6 +376,7 @@ struct intel_display {
> > > > > > >> >>          struct {
> > > > > > >> >>                  struct intel_dmc *dmc;
> > > > > > >> >>                  intel_wakeref_t wakeref;
> > > > > > >> >> +                u32 dc6_entry_counter;
> > > > > > >> >>          } dmc;
> > > > > > >> >>
> > > > > > >> >>          struct {
> > > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > > >> >> index f45a4f9ba23c..0eb178aa618d 100644
> > > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > > >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> > > > > > >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> > > > > > >> >>
> > > > > > >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > > > > > >> >> +
> > > > > > >> >> +        display->dmc.dc6_entry_counter++;
> > > > > > >> >
> > > > > > >> >AFAIU the goal is to validate that the display HW can reach the DC6
> > > > > > >> >power state. There is no HW DC6 residency counter (and there wasn't such
> > > > > > >> >a counter earlier either), so an alternative way is required. According
> > > > > > >> >to the HW team the display driver has programmed everything correctly in
> > > > > > >> >order to allow the DC6 power state if the DC5 power state is reached
> > > > > > >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
> > > > > > >> >enabled by the driver.
> > > > > > >>
> > > > > > >> Yep. That's what I learned as well when looking into this stuff a while
> > > > > > >> ago.
> > > > > > >>
> > > > > > >> >Based on the above, we'd need a DC6 residency counter maintained by the
> > > > > > >> >driver which is incremented if the DC5 residency counter increments
> > > > > >
> > > > > > By the way, the counter that we currently have in our driver is the one
> > > > > > incremented by the DMC. I was meaning to send a patch for the residency
> > > > > > counter maintained by the hardware, but have not yet... In theory, that
> > > > > > one should be more accurate, but would require us to enable and disable
> > > > > > that counter as the IGT test starts and finishes.
> > > > > >
> > > > > > >> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
> > > > > > >> >for this, since it doesn't take into account the DC5 residency. While
> > > > > > >> >user space could check both dc6_entry_counter and the DC5 residency,
> > > > > > >> >that check would be racy wrt. the driver enabling/disabling the DC6
> > > > > > >> >state asynchronously.
> > > > > > >>
> > > > > > >> I'm not sure doing a driver-maintained dc6 entry counter would be
> > > > > > >> something worth implementing. Even if we have successfully entered DC5
> > > > > > >> and, in theory, DC6 would follow if enabled, this would be a synthetic
> > > > > > >> counter and it could be masking some hardware bug that could be
> > > > > > >> preventing DC6.
> > > > > > >
> > > > > > >According to the HW team the DC5 residency counter incrementing while
> > > > > > >DC6 is enabled is a guarantee that the display is configured correctly
> > > > > > >to allow the HW entering DC6 at all times. IOW this is the HW team's
> > > > > > >suggestion to validate DC6 at the moment.
> > > > > > >
> > > > > > >> On the IGT side, we could just skip if we are on a platform that does
> > > > > > >> not support DC6 counters, at least while we do not have a reliable
> > > > > > >> alternative way of checking for DC6.
> > > > > > >
> > > > > > >I think IGT would need to validate DC6 in the above way suggested by the
> > > > > > >HW team.
> > > > > >
> > > > > > I'm still inclined to think that we should defer DC6 checking for when
> > > > > > we actually have a way to verify it. The way suggested above sounds
> > > > > > like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
> > > > > >
> > > > > > In that case, just checking for DC5 should be enough for the time
> > > > > > being...
> > > > >
> > > > > That's not the same as DC5 incrementing while DC6 is enabled.
> > > > >
> > > > > > I won't object further if we do the other way though.
> > > > > >
> > > > > > >
> > > > > > >> It would be good if we could detect that PG0 was in fact disabled, which
> > > > > > >> I believe is a stronger indication of DC6.
> > > > > > >
> > > > > > >It would be good to have a HW DC6 residency counter, but there isn't one
> > > > > > >at the moment. Other ways may have a dependency on other, non-display HW
> > > > > > >blocks, for instance in case of shared clock/voltage resources, the
> > > > > > >display functionality validation shouldn't be affected by these HW
> > > > > > >blocks.
> > > > > >
> > > > > > As far as I understand by reading the docs, DC6 is DC5 with PG0
> > > > > > disabled. That's why my suggestion above.
> > > > > >
> > > > > > --
> > > > > > Gustavo Sousa
> > > > > >
> > > > > > >
> > > > > > >> --
> > > > > > >> Gustavo Sousa
> > > > > > >>
> > > > > > >> >
> > > > > > >> >I suppose the driver could take a snapshot of the DC5 residency counter
> > > > > > >> >right after it enables DC6 (dc5_residency_start) and increment the SW
> > > > > > >> >DC6 residency counter right before it disables DC6 or when user space
> > > > > > >> >reads the DC6 counter. So the driver would update the counter at these
> > > > > > >> >two points in the following way:
> > > > > > >> >dc6_residency += dc5_residency_current - dc5_residency_start
> > > >
> > > > Hmm I don't have a good feeling about this.
> > > >
> > > > I prefer that we are clear to the userspace(IGT) that is an extra flag
> > > > and not to pretend that we have a residency counter.
> > > >
> > > > So, we either are clear that we are counting the entries, or having
> > > > a flag that tells that we are allowing dc6. Which btw, could be done
> > > > by IGT checking DC6_EN bit directly, no?!
> > >
> > > A DC6 enabled check alone would be not enough and checking it from user
> > > space along with the DC5 counter would be racy as described above. I see
> > > this working by the driver tracking the DC6 enabled flag + the DC5
> > > counter in the above way; it could be exposed to user space with a
> > > suitable name, eg. dc6_allowed_time.
> > 
> > Right, the name and new entry in the debugfs file would make this
> > better because we wouldn't be pretending 'residency', specially
> > with no guarantee that it would enter.
> > 
> > However I'd like to keep things simple. Stepping back to see
> > what the use case from the test are trying to really
> > accomplish:
> > 
> >   * SUBTEST: dc6-dpms
> >   * Description: Validate display engine entry to DC6 state while all connectors's
> >   *              DPMS property set to OFF
> >   *
> >   * SUBTEST: dc6-psr
> >   * Description: This test validates display engine entry to DC6 state while PSR is active
> >   * Functionality: pm_dc, psr1
> > 
> > Of course, we already know that it is impossible to validate
> > that the display engine itself entered that. But we can
> > at least validate that our driver is allowing that condition.
> > 
> > This is with fake residency, with the allowed_time, but also
> > with the simple counter that Mohammed added, or also just
> > by checking the register directly...
> > 
> >  _MMIO(0x45504) & 0x3 == 2 // in idle scenario described above should be enough imho
> 
> The driver enabling DC6 is not an enough condition for DC6 being allowed
> from the display side. Some display clock gating etc. configuration by
> the driver could be blocking it. According to the HW team, DC5 being
> entered while DC6 is enabled is a guarantee that DC6 is allowed from the
> display side - i.e. the driver has configured everything correctly for
> that.

Fair enough. So IGT test case would check directly if DC5 counter is
increasing and DC6 is allowed.

Something as simple as this in the kernel code would tell that
DC6 is enabled:


--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1294,6 +1294,10 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
                seq_printf(m, "DC5 -> DC6 count: %d\n",
                           intel_de_read(display, dc6_reg));
 
+       seq_printf(m, "DC6 allowed: %s\n", str_yes_no((intel_de_read(display,
+                                                                   DC_STATE_EN)
+                                                     & 0x3) == 2));
+

and

$ cat i915_dmc_info
[snip]
DC3 -> DC5 count: 286
DC5 -> DC6 count: 0
DC6 allowed: yes
[snip]

$ cat i915_dmc_info
[snip]
DC3 -> DC5 count: 292
DC5 -> DC6 count: 0
DC6 allowed: yes
[snip]

Thoughts?

> 
> > > > > > >> >The commit log would need a justification, something along the above
> > > > > > >> >lines.
> > > > > > >> >
> > > > > > >> >>  }
> > > > > > >> >>
> > > > > > >> >>  void bxt_enable_dc9(struct intel_display *display)
> > > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > >> >> index 221d3abda791..f51bd8e6011d 100644
> > > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > > >> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> > > > > > >> >>          if (i915_mmio_reg_valid(dc6_reg))
> > > > > > >> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
> > > > > > >> >>                             intel_de_read(display, dc6_reg));
> > > > > > >> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
> > > > > > >> >>
> > > > > > >> >>          seq_printf(m, "program base: 0x%08x\n",
> > > > > > >> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> > > > > > >> >> --
> > > > > > >> >> 2.43.0
> > > > > > >> >>
