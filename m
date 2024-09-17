Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F8B97B106
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 16:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF6F110E483;
	Tue, 17 Sep 2024 14:03:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWogupsQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5FE10E481;
 Tue, 17 Sep 2024 14:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726581810; x=1758117810;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JYWiK6p6Dv3JDUmsuUzM3Xb5s8l9UuuzSE3yZiuDtMs=;
 b=GWogupsQw3iDdsxAydl9mw3mRpbSshqoKmdxzh/EDqiEx3WtE+/EzQlV
 NfxrZlxsiTXrXbis00eQ54k5SFXQHZbrp0DIyuCQBvhic1+fjyA0lmgKM
 c+OAV6L/1T8CQ1AaWL72BLux5R3VGydMO4rqXq9mpQ/W5YMSDsNZl3Kxn
 znqOy18D4Yd/9bLl6uvlMZ8x0zEmg1ZCiSvtVl1P9qHw4kIPLwy3pgCYd
 DSU9dgGFBILGTYdz1BOMe/k6M1nPbkRi6a/sDJi4prRgjBKJq+6hQsw1+
 aUOW8/AsbwRBE9F11y6Ei4gNMrL7Goc+N1ZpG7b8cO9bkZIuFu+U9Uhob Q==;
X-CSE-ConnectionGUID: 1ALlqtStQAia3N3FbC7O8g==
X-CSE-MsgGUID: HmZtcebNT9igY0CNt4jPig==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="29180342"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="29180342"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 07:03:30 -0700
X-CSE-ConnectionGUID: ovzNn1/ET9iG0FkHQ9B+aw==
X-CSE-MsgGUID: FfUZzyehS421p1tW38/tHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="74179492"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 07:03:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 07:03:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 07:03:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 07:03:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 07:03:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T/PUB+RaBvgANPiFQu8TqMgTcgmLZo2ehQ6VlZZgMW7mVZuEo+SP3E2KZu45rnHZKWOAh+/twFrvQB7qwyJ2qsUVbSJtQxp0wgiecxvPlQQmNDHcE73Pk0PmSxCC1utffgVkzfEjv7YWH1y/xwFJ7xiLnKLK06XTxNkPzaNbneD5UgA7qHBoUlUSitsOn/Z+6CpqhI2/W3JhwZnWL+xZUgB5RIeNR9+zsMQMCxB3hvzjGMczwTMZGsCD2EFTUSql6iqfHCzST+10+dUDOUU45+K5QNiGfnamEvKRidueJIQBhrhZruX3dRRLk1Wv0C+GzFYx54qbstqTZ0JBOy0TLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sEsiXrL6zYb7kWIUADWa2H6u06lgoGCYf1ourY2f1Q=;
 b=IQiJpWJmi4r6WoBB9M3D9NPLMT7IobLv9ASwKvt7ThGTXuIVY5ZwOXUQk6+a/8idg6Xqg+L1Zn10UJYhle6FtyA9nVAsbqEWizSgIZFOJmqaZE4elCEizHN+J+mr/2c0glohHeh+RR+gPauhwPMJEjUKk7O6Qo25nsgPH2JM5QnOkU4uqDuMOsnPJ2owuzj1ecZ5JYSB49cCjM7zYnVw071KB10qGGyEngmy7cG+xw4lfgbCCvNJ6FJRPmYmN4bev3MV6vrVrlW5yNbUF1rZG1BDo/C+NHa8uq/U2tJbtSaWQ9fcUKCdh7DqU/LEpfNMgxLueMwFcPptya9ckZ56QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB7822.namprd11.prod.outlook.com (2603:10b6:208:3f2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 17 Sep
 2024 14:02:23 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 14:02:22 +0000
Date: Tue, 17 Sep 2024 10:02:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Tvrtko Ursulin <tursulin@ursulin.net>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/display: remove small micro-optimizations
 in irq handling
Message-ID: <ZumL60VMIs2Jf0w7@intel.com>
References: <20240408125445.3227678-1-jani.nikula@intel.com>
 <lh5rutbeu54tjlp2o477nb4xuqyblgjh7nemgecizqrceidabc@hcuihs4fxh6n>
 <875xwfxapf.fsf@intel.com>
 <52605aa7-7067-4ba2-aed8-feeb7aa67032@ursulin.net>
 <877cbaczsk.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <877cbaczsk.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0372.namprd04.prod.outlook.com
 (2603:10b6:303:81::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB7822:EE_
X-MS-Office365-Filtering-Correlation-Id: cdb9e09c-652e-4abb-d915-08dcd72159b3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hcHUG/lbjsKcJfAKD7bXeP7yHuGy5rbH08QUozW5FT2YB7upKStkS5iyrC8t?=
 =?us-ascii?Q?UO7luSiCyYGE2WjGL/aP4z1dyFbFv3hxyBa7+CCZ92GRA0nsbApzwMneTSjm?=
 =?us-ascii?Q?p9hBza20XhxaPtmj8dhSu4JGYN0lkmT9nmHYKL7jysB7lvL9izyzopaDtlJE?=
 =?us-ascii?Q?+UZW+cFh+kmgLcIX9PyXhfyTaizg/qL4k//Ovs3nKyxUuP0LDBjnlpuJYOu8?=
 =?us-ascii?Q?y8cjALwN05OvNjLu4MSaO3axYk1NL48V5pGMBw4uGF1cFMZy4KkO+zLB/g45?=
 =?us-ascii?Q?2e7Fk/9ssI8jxuNsDwlxRIvhlTljtZbLNnrO2oL5YjbbP3jwtWI8tI/ewe0g?=
 =?us-ascii?Q?XI/vdP6gQFFT4l/YvbsgdecmAu0oFUvQepA3C4ZUyBgJ0gD/T1ZNFxljB+HK?=
 =?us-ascii?Q?8MmQtao+hEUSrG8bBoEZyE5nx/ixsDbeOJCxplHBJqD8ZTGh8vTESzAoTTqo?=
 =?us-ascii?Q?BCvDVtxoPJocdOTPaNq+N37CDNFOgmYgEK5IQwX35i97nxQNcdSnkbqCJcj6?=
 =?us-ascii?Q?jHB6QXpQBUQHQTK9spilbTGp/ZuH2vmiY2HymvylDsw0fyH+83zdNEFGpulP?=
 =?us-ascii?Q?ZsW1UxxtmAKLP0W9VIo0jvAEkZYY2UCSCKheZ9CCzka0awkWqhGaNj0lP8WH?=
 =?us-ascii?Q?axG5ohEBgC1kIp9vSOQAPgzWgL0Nrtmwf2d/uegNUDvBm7XMigDXcOlJdMtL?=
 =?us-ascii?Q?L/O5XGdkiSntdwyx6ZlfetAUIwGMQqO9L1qefaVKajMsv4ghvsTFBF9bN7JX?=
 =?us-ascii?Q?oyzeFWBL5e27fwb6b0mSfo+gEJDMzUv9hOk8bbXwr2MBuNF8iGw3wsV6iQfd?=
 =?us-ascii?Q?wHcenpw18fPJjiaLMde6AOxFWqg0XzpgZHaP2EMrr5LQ9h3ROiSQFEclEc8G?=
 =?us-ascii?Q?HPF00AK/TbNxqZQQlRAu5S7kOk5lHxUIlkVuL7Hz0nR+zrYVTeOo/kW0nJRd?=
 =?us-ascii?Q?OUSrqHZm2ZXyH4xlyBGv6+xzBRxl7X/Oks8S+r2ufOu42osq+teKDm/qS0+d?=
 =?us-ascii?Q?zT3aG7803cGTEnu0OhBUH/nEEoIdY97jZg+HykXIVE2TVK0xhU30UwplcukB?=
 =?us-ascii?Q?f9JxqP4bznj9U9ljP/nMDjwJbE2EzEWaMeYXI7yFIq5GaLQWqQM9SX6r9C8h?=
 =?us-ascii?Q?Rf3LDdPBGPeUxgt/aRiE+Zl98POCMRtld65gOLvR0QNy59cwZMCAKXdQC0OE?=
 =?us-ascii?Q?4OGhJTUOWBINFe8C0G19s9SahpnRx7qhGsD+eSBtvyty0UlNyPZJdgrtUevZ?=
 =?us-ascii?Q?hc/Hp1Ht+m39xiol3B7qgnGdQCS1w6YQIS7Ao6PMkYM6X6PyqiPLsQCX8CfM?=
 =?us-ascii?Q?HUGRYrbjeEYfQPHc+Psl4hQftn5YnqJEQFvflt/mdf1YPg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mj3UcmvSmUthr/zD+oHoqfKbv7hbMTwzvQoGvAzLFfBTLZkfdfArg2bjas+3?=
 =?us-ascii?Q?mn9sG/gnLfcU1x/uihvKFXn3vB97908FIftJQFkUW4XQpLvOOsPsOfqYuOI6?=
 =?us-ascii?Q?WKj5WKGCCt2pGmYMwAEnYLcOBMKBB6VskbGMwdhnBot1HFSC97h39tRLR/Mq?=
 =?us-ascii?Q?ANIkalBN3cUsYs5UyMPq01hz/aaw5D+qlaRZyuMEB4nFejIjva6esL1xokOS?=
 =?us-ascii?Q?pKJuaoyWS0oMuQtrDG3lz0mrix/hiZ39j9kCYywLZtC1P/L8O9U7NnWLOsr2?=
 =?us-ascii?Q?avot4uDOXwU8vTA679QAu/k812a9TBLr4EogiAUbcQ/ufQV8poT09lKKEuhV?=
 =?us-ascii?Q?EyE2g8FUw8PL1gGX3KUcQz/YUkVn0RRLVF9/Mq2ZUoIWoUjFRpQXdiNDAut0?=
 =?us-ascii?Q?ClCOSb3ogVW6oCNW0F6q7hcUmhqeth8qQFX7ZMYENtQoIUztHZmWD5z0PZHF?=
 =?us-ascii?Q?HgpGaC07hsfh8gHu0F1OSWMi7CVDy5fII1mALJGxU+criVRBff50NsnUNx+g?=
 =?us-ascii?Q?XXw+hL9+Jzq6v9EcCaL9m+Kqu29mT5MKretwu94MWdseTK1KxS7ZmItNiKlS?=
 =?us-ascii?Q?iUeWx8KpKeKPHmMnE7pocj27nU+ChjlAMkAZ7+mGOa+zuWX2Cho6xizFR4gu?=
 =?us-ascii?Q?laAzL4pDUiRBBMuq/3Ti/hHzTg/IMhhzk3CDPL0cCR2Ubim2yDOfuk9D6U9L?=
 =?us-ascii?Q?mup4z0U5NflzDDu7t+VPCxIfuyTsTGMw/V8EpFt4bCrvIO74U3NZFaShjJZo?=
 =?us-ascii?Q?EsvdeFXeKIoCsszji9IU0Wj8cqpg6l8U1hjFyg5KIq8jccTFk9oqHwjEoVZ3?=
 =?us-ascii?Q?WSl/KiQ1akNDTZmc0H1KXp3xukZDzAxf+BSsqla70Woq7HwyUxNao1pIGitp?=
 =?us-ascii?Q?THtl+SPdxDqE4Plak/qEd/XqmzSyo9hneTvRNPbrSeoLVtXv30r0PAwdOQX5?=
 =?us-ascii?Q?37tWPAXw8+5ylK+pAWARjdrv3gbFA8xVt45icZjwuGH6kfJURGkq9l5cowkQ?=
 =?us-ascii?Q?qUFtoVd+WmfeVKiOCnrBB32fIeJk3dnb+s3S5+gicLc0RUwEL2RJqg0CEo8T?=
 =?us-ascii?Q?b7rWIppa3+xxN49RoXgWT4Vy/b41LhmxiwN5j6mbuNgHrQWp26w0bajpjX43?=
 =?us-ascii?Q?54+KBcCrfKctSLt7I962eIi60NyAQKK3qQPvWztGZaHwz2tiLnGd+Nm20iIZ?=
 =?us-ascii?Q?+w+HF8BmphneF740Uv9rS3G7HWitDHca40Sdh+NOF088gLgNp0zd/MXYPXVF?=
 =?us-ascii?Q?z+tZhha3jMjeeuRPaG4v+OttlaRbAkHZK3zzTny0JJVebwWpRYvTB8wk6e4Y?=
 =?us-ascii?Q?czjrCG6FQBNtp3q5XY2s08YBBr2crqxKaahWlMDNV5bC0Lez/WWwLbLqqgOb?=
 =?us-ascii?Q?g58aoh3FINrsY55ekv/GktYgprSnDBLTRdRgCzROZLGnzMD61IfTsNyNrCB/?=
 =?us-ascii?Q?203X8ik3AbjXOu9r3YuCwsNZv20Lm3sDR3BrwhuNvbo1A/pG2zgd+/HSWU4L?=
 =?us-ascii?Q?QirlZz4mLcwdOtG0UZaUVH97VVnBUWOivmv244WllGzDz00nI4/wf1OkPZIo?=
 =?us-ascii?Q?fnIxEuRvj4kBphJ2Y94Bt+bXcAXPuqoj2NL01b9QhAHoDl5CdRKjrv50PgtZ?=
 =?us-ascii?Q?PA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdb9e09c-652e-4abb-d915-08dcd72159b3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2024 14:02:22.0985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lvMXJ2o4DXhulhYIJus+goOhXU1Z8nnlNvv4aZl+bu61G940wxQe9WpXQxTvy3KcDQeWRxizYUCNZgUp1LjUyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7822
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

On Tue, Sep 17, 2024 at 01:58:19PM +0300, Jani Nikula wrote:
> On Thu, 18 Apr 2024, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> > On 18/04/2024 10:49, Jani Nikula wrote:
> >> On Wed, 17 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> >>> On Mon, Apr 08, 2024 at 03:54:44PM GMT, Jani Nikula wrote:
> >>>> The raw register reads/writes are there as micro-optimizations to avoid
> >>>> multiple pointer indirections on uncore->regs. Presumably this is useful
> >>>> when there are plenty of register reads/writes in the same
> >>>> function. However, the display irq handling only has a few raw
> >>>> reads/writes. Remove them for simplification.
> >>>
> >>> I think that comment didn't age well. Not to say there's something wrong
> >>> with this commit, but just to make sure we are aware of the additional
> >>> stuff going on and we if we are ok with that.
> >>>
> >>> using intel_de_read() in place of raw_reg_read() will do (for newer
> >>> platforms):
> >>>
> >>> 	1) Read FPGA_DBG to detect unclaimed access before the actual read
> >>> 	2) Find the relevant forcewake for that register, acquire and wait for ack
> >>> 	3) readl(reg)
> >>> 	4) Read FPGA_DBG to detect unclaimed access after the actual read
> >>> 	5) Trace reg rw
> >>>
> >>> That's much more than a pointer indirection. Are we ok with that in the
> >>> irq?  Also, I don't know why but we have variants to skip tracing (step
> >>> 5 above), but on my books a disabled tracepoint is order of magnitudes
> >>> less overhead than 1, 2 and 4.
> >> 
> >> Honestly, I don't really know.
> >> 
> >> The thing is, we have these ad hoc optimizations all over the place. Why
> >> do we have the raw access in two places, but not everywhere in irq
> >> handling? The pointer indirection thing really only makes sense if you
> >> have a lot of access in a function, but that's not the case. You do have
> >> a point about everything else.
> >
> > The "why only two" places is I think simply an artefact of refactoring 
> > and code evolution. Initially all IRQ handling was in one function, then 
> > later gen11 and display parts got split out as more platforms were 
> > added. For example a3265d851e28 ("drm/i915/irq: Refactor gen11 display 
> > interrupt handling").
> >
> > As for the original rationale, it was described in commits like:
> >
> > 2e4a5b25886c ("drm/i915: Prune gen8_gt_irq_handler")

Looking at this one it looks that the raw usage came in place to fix
a macro issue, that we don't have anymore anyway.

> > c48a798a7447 ("drm/i915: Trim the ironlake+ irq handler")

Then, looking at this one, it sounds a good optimization.

> >
> > Obviosuly, once a portion of a handler was/is extracted, pointer caching 
> > to avoid uncore->regs reloads may not make full sense any more due 
> > function calls potentially overshadowing that cost.
> >
> > As for unclaimed debug, I would say it is probably okay to not burden 
> > the irq handlers with it, but if the display folks think a little bit of 
> > extra cost in this sub-handlers is fine that would sound plausible to me 
> > given the frequency of display related interrupts is low. 

Well, looking at the optimization above I always had the initial thought
on the low frequency of display interrupts, because I thought about hotplugs.
But perhaps an optimization in vblank ones would be desireable?

> > So for me 
> > patch is fine if it makes the display decoupling easier.
> >
> >> What would the interface be like if display were its own module? We
> >> couldn't just wrap it all in a bunch of macros and static inlines. Is
> >> the end result that display irq handling needs to call functions via
> >> pointers in another module? Or do we need to move the register level irq
> >> handling to xe and i915 cores, and handle the display parts at a higher
> >> abstraction level?
> >
> > AFAIR no trace variants were not for performance but to avoid log spam 
> > when debugging stuff. From things like busy/polling loops.
> 
> Bumping a forgotten topic.
> 
> Ville, Rodrigo, are we okay with the changes here?

I am in favor of this patch. Let's unify things. But perhaps study if
we need as a follow-up some optimization in vblank or any other display
irq and get that done inside intel_de_ mmio helpers?!

> 
> BR,
> Jani.
> 
> >
> > Regards,
> >
> > Tvrtko
> >>>
> >>> btw, if we drop the raw accesses, then we can probably drop (1) above.
> >>>
> >>> Lucas De Marchi
> >>>
> >>>>
> >>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>>> ---
> >>>> drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++--------
> >>>> 1 file changed, 7 insertions(+), 8 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >>>> index f846c5b108b5..d4ae9139be39 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >>>> @@ -1148,15 +1148,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
> >>>>
> >>>> u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
> >>>> {
> >>>> -	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
> >>>> 	u32 iir;
> >>>>
> >>>> 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
> >>>> 		return 0;
> >>>>
> >>>> -	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
> >>>> +	iir = intel_de_read(i915, GEN11_GU_MISC_IIR);
> >>>> 	if (likely(iir))
> >>>> -		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
> >>>> +		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
> >>>>
> >>>> 	return iir;
> >>>> }
> >>>> @@ -1169,18 +1168,18 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
> >>>>
> >>>> void gen11_display_irq_handler(struct drm_i915_private *i915)
> >>>> {
> >>>> -	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
> >>>> -	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
> >>>> +	u32 disp_ctl;
> >>>>
> >>>> 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> >>>> 	/*
> >>>> 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
> >>>> 	 * for the display related bits.
> >>>> 	 */
> >>>> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
> >>>> +	disp_ctl = intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
> >>>> +
> >>>> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
> >>>> 	gen8_de_irq_handler(i915, disp_ctl);
> >>>> -	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
> >>>> -		      GEN11_DISPLAY_IRQ_ENABLE);
> >>>> +	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
> >>>>
> >>>> 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >>>> }
> >>>> -- 
> >>>> 2.39.2
> >>>>
> >> 
> 
> -- 
> Jani Nikula, Intel
