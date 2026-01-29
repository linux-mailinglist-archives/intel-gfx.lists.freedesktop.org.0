Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIDmBJa9e2mnIAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:05:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE38B423A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:05:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9015510E03D;
	Thu, 29 Jan 2026 20:05:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EMbcVB/c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D656610E03D;
 Thu, 29 Jan 2026 20:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769717139; x=1801253139;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=M3NrpdHOBtNiQBvIP6fwIuyypH0y0tYmfHFwLMreKVw=;
 b=EMbcVB/cKghqmay63YqKAIqXqNivWoQIlbOy+BIbhYTMpyvCQMO/ey8b
 Ms7ERotmNn6ZwXo0kiov+Ac7drLWJGLf+q8ilS/bBB4LbZdC0IEZsrimh
 /jmAq9I/lG/XUxwblwCMAnRKc7PTeZOhRDJLeCsFOI8/5PdqxgmM/FE9y
 Kupbn3gZHnIEspdXyqt8pukP4synkckJh/xpZG/MUYCi3XoIYr2GK1ROp
 1C3WInrJ3FGXPsbJC04up2aATKG9cqTrhgrfHht3Tqe5gHQIv3ol7UJGG
 QYCjyZbHymqe8s7XLBmaRZYLWymftEEx/zbM5SXvJENvCxudiU0ImQ/yT w==;
X-CSE-ConnectionGUID: kvsqhHk4S4SZrUhWqFVWhQ==
X-CSE-MsgGUID: eLEbXo5gS+Wdfw4gCTrObQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="71006200"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="71006200"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:05:39 -0800
X-CSE-ConnectionGUID: G7cBYcI8QYqWNgo7EMZmyg==
X-CSE-MsgGUID: I8cf7UjFQGyMVkY+1lvA1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239395633"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:05:39 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:05:37 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 12:05:37 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 12:05:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bEw5Z6N6X75kBnYiNlQLJWf3fO48XMSki/n9SyAaC4n5dT9GLpeLrx1Cnab/zoQ5JzI4mBhkRA79XS1JUnzPjV2IuOwSBFBJlxs7u7rzblP1YHoN6aB+VF7MkXvFdqGnDagERZT4rfctJAbMMGCvG+M1PrIUY/RuCKlkQURl2ZDuDWxgtUO1AHgeoNKkStHY2+R3vpt57sUuPQXtGEZ2wDLgB8pJgkBjKtXmE9LQ0MRTA/ey22s0AshSWTBGpZ1yah8M2ZCSoBJb12pwmdyg98Ci7ov0Vs3NJy1EcJq9ZcIAvkDuERYwWB4ior7hSiplnU1cskeYRFcM3hvqCSw6hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZiPv8ZQK5fGC2xwghpV4uz/BjaYeeW4FBuEi253GwP8=;
 b=A2y9CP+YhAt2AlVNva7PiZaBPwrczbXXI7WZjytpH/AZYnaSoxfLV1j21sDgPzFzjGggALMSqfv4AZu8jfUdYp4j+LJ8cj/pmVnqjq5NfDdqIXFuLkWn0kReanuAZMs3r5IaP1ul4hcGKiI/ApeZVnZ2E0oHZnOxDhLQ4+IihMcWP3/sdJ+w4Y2h6cL37t5JCByy7JkoQfUmcwaqc+qiybb99w4EIbjTVFpeldJptxtoHGMhqhfehJOh7q8LoQ/Sq/ntXteTAie+AjzD61jdvUYMlVFlRvxUguxzz0GzoUKtSE+JQ2yMFBMM/FztsoltaPr/CuYZalebh6PmwrlEZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7446.namprd11.prod.outlook.com (2603:10b6:510:26d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 20:05:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Thu, 29 Jan 2026
 20:05:30 +0000
Date: Thu, 29 Jan 2026 22:05:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 11/16] drm/i915/dp: Remove unused joiner helpers
Message-ID: <aXu9hRGHbRFBjNax@ideak-desk.lan>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
 <20260129171154.3898077-12-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260129171154.3898077-12-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0016.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB7446:EE_
X-MS-Office365-Filtering-Correlation-Id: 60e52bee-0ea6-47ab-194a-08de5f71c0ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4LHR1WTUrveo0Hm2WrTNJZvjaz49UIoIzqt1ct53DmBeiEny29RtEQq/kUQX?=
 =?us-ascii?Q?Xe2eBY+P1rE5p22fkIw7FnQ8XgYppvkkCFmS+2UkR6NcSt2Kpa2aJejciHJp?=
 =?us-ascii?Q?nIyb3a3fanATmobq4okn+wNamnkTD17b/nXgkxILpMl9kuMbu/kUS0APYbFA?=
 =?us-ascii?Q?MQr2K1vDeoainhnsFj4AhtY3hjIVJqSWfvxR8tsKHlDrGwa+2LQOHI7kN6K6?=
 =?us-ascii?Q?G7xSBA/Cv3FOxji8bdDq4fXXS0VuC/z4/4Ytf89qWioW5C8vnCmnls05kRP7?=
 =?us-ascii?Q?9eIW+2Nqt3ZkTeBL/8fSH6Xy6wQDI5dRN3jagyO8VP9Cl8JpH/BLmd6XuD2r?=
 =?us-ascii?Q?mfqOQo6pdPEgZDTThvIeU+A3jn/CJrz3wn4bLQqeBtsig7ENMH/yi7ZVmZp7?=
 =?us-ascii?Q?b7dOAq4+23wfIJESukvhP892JHU3cwnIG/EyxWETQH0zepm4gL5M+bd6JQxV?=
 =?us-ascii?Q?mIKkoZPD0twL+F7ZRU1JQWX2/UwgnO5tcjcyOhKNKZ+46GvNxmcjbp04pXC7?=
 =?us-ascii?Q?dosNa5U9qHnnoj67FRTTTIHdItzy8l/+v9BBPzkjWaSJEj92e6nT5wn3zaZV?=
 =?us-ascii?Q?FF+Cdlg9FpuAKh3RK8w6BkGx+0yWWK2W0xaEGfEjp1cc95Xv2BAqGBrIyT1l?=
 =?us-ascii?Q?1PDuqqwPW6WgcIE1Z+iD+thn44Zp6/KTGsMNYKhjMHo84gv0BO955Scb9zV0?=
 =?us-ascii?Q?FIhj0SHcL0HCbdzVJO9N0M1W8HaXz6sQ6NZW70ASmzh2NcPCNGKB/4VTu0Vd?=
 =?us-ascii?Q?eD4yj7C8QU/YskzqzYNBcrj90aS0nMdthDzI4MWbZIoDYWm7L6Ylul1ntjDA?=
 =?us-ascii?Q?b0lOHbLw5UmrbKg1H9DZ+y8SgYByTyZ/KCOpWBsNj4/+zu+mL8dYtE9GcCIT?=
 =?us-ascii?Q?b9OUA/MNi3J+4hvT0wqeWFnhpCtu9IqcB3doSAF043pm47K7jfeb5lIjAx/V?=
 =?us-ascii?Q?c9wJtPxHDXqHgPjEBcHlGRDc/H3BSKdxrKE1VBbYdMS+n6lT/K2iC1AGI5pD?=
 =?us-ascii?Q?KD/Vpn3vvwPkisLTUVqnWyb34oh+LlObWHkHL6GsT4qgo+N57Z1nen7T0stM?=
 =?us-ascii?Q?n0hRXBGHsCK4opKMnI299uO9aU+KnsJ0j4GzbfHYxXbB68ruGrMzzirZP9+7?=
 =?us-ascii?Q?pbAqqUpaIB5jTmTXrmVGGPqiztFvt0s1hScw0ng0jYvn7x6g/lWgoQSvqydy?=
 =?us-ascii?Q?mLRLZLc1o0cloGO/x9pWzXylhhtdwfFKKrRrYimXcaSy6vjazhlS8ZNAmsSO?=
 =?us-ascii?Q?hWgbtgbyjMSgIZO1PpGxWL1Q/jwHP1MtIj5J2gMVX/K8bDsRCEkjlzBIQfvn?=
 =?us-ascii?Q?cAkbvqDfFD6gOR9/L4h/4gQmKRUO/GsTsYXXbWVKMPOlITeP87LYae4Lw3or?=
 =?us-ascii?Q?li3dQC7oo6OxP7VDHlzdoHvnlDYkJ493ZNFOZij3Zm9scLkYzqSgj+qRwYfY?=
 =?us-ascii?Q?ktU/lLc/hUrfGaiVzOLo4AafMqMaasKEVGmEpx1LRMiqJyPPuAmahgu7P4sY?=
 =?us-ascii?Q?ygxXJkzJPmhYewOnH4sfBFu1FM9frQ7WrwFNR5UlYkOCYuT2W4LDdEPYA2y4?=
 =?us-ascii?Q?978meWsI1rdcS01FJ+Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m0TylzD0eGKge9NkoWwEmOt/+uIsX+H9bIv39Q7hN8otuToR2DTFvkEmTzgv?=
 =?us-ascii?Q?nVwOREoCy0tJ4nVlgL12h3uGBcTyf8jwRo9zNsbrnk9cxakVvChVc+oa7p52?=
 =?us-ascii?Q?NHfs1upF28dICovSMoiGoK24PvSL0WWrRXBClgDXJLIVErzitfPY6xehXO91?=
 =?us-ascii?Q?B3qIc01z48mkVAhmgwy6rvgPjiv8I4zmjX5swt03TdzCnabjhvRUPAX98Zlz?=
 =?us-ascii?Q?nh9jwnA+b+psBfaSaNptUxy5fxiGrSwAsts4sQQSdATR6Ccs8vwl5P5QAhj9?=
 =?us-ascii?Q?HOEHdPDL6dvPxMiXMSFnkkWnxNgAXgO9YkHpOsSBO62B6Qw2NtPr7nh7KXbD?=
 =?us-ascii?Q?yYK67sYo9GXGW16ShrlLyTXVMHi/ke/NZZ5qwHnODL3Y7AB05hYSrO8RiUSV?=
 =?us-ascii?Q?AIHdJMHcaPfx8wOi9PChpBAVq2fJnXBg1NXxRvhT5S72cmpUqkSMJhXBhy2z?=
 =?us-ascii?Q?FAnW8MhM9EGalP1NaM9Pk+Fd6MDRRfonTBUakZj2Z47hzwhmm/TQtMQ6HlXV?=
 =?us-ascii?Q?jHi1tCFnw/Z3iLb9BsOjbMN4R39xx/47XwPvfW/Hpjnrn7wYVUl7776ZXxhB?=
 =?us-ascii?Q?wvYIhZYsGfNRCq96G2/lxg3OkxgZrUslOLUt5cRe91kBiz6WOb9d4EYb34w0?=
 =?us-ascii?Q?ssQLfmC372gtZ8xoWMTWZYWl2rVP0q4JnZ90+F9shNEXk69p/BcswJ21YKZB?=
 =?us-ascii?Q?DnLM8I0CI7qA1NpSgM1Xgt9LiKQx/Pv+gxbOwq55RIdERCne/DPmuKJvuGsO?=
 =?us-ascii?Q?qhk5sQFQb1LwvvMkFtP7kHLZR/QWvZh7vvCr7GhAQmSmbgoG5J3bkhH4SqkO?=
 =?us-ascii?Q?XzB8idBoPpgmnW1/++YM9qKPZ1XA05l+I0c5R2Rtypug9GU9UTdi/ATU2Qkq?=
 =?us-ascii?Q?BS8CES6OK3uTuVNG2rC1TUqvj/lnpmNDiSwEfMK2lbB9ecMZqIo/YRdCCQR0?=
 =?us-ascii?Q?V8+8bDdVl7T594CqT7C9iUHwzDHH17aThx0RHBQgmxvsfvZ0XS3Q3P/b9hqm?=
 =?us-ascii?Q?sebTZFWWmVvat/xYWiKFLw+nw49LbrjAgbndqssQ97BvKzR0AG/obc2OJBB/?=
 =?us-ascii?Q?VJ9WPZ/ZAHLtFl0BdPltPKpyEtn5seYJcjXtYbqHeLeK5VvyeNDW+IrKW3eb?=
 =?us-ascii?Q?cZlaHfU0M3ccXkwY7Zh4/K3i57rWDoslOdZZ5dgV5dqwpBfqO6ft6EjestY2?=
 =?us-ascii?Q?Rh66jXEr4bfq2M4IWtS48hXQyh5aB0z0AagYImYNd4FZCREhyBjJX27Lrast?=
 =?us-ascii?Q?HT49FM+ISpfDcEkBtQLjebEGeDhyL+9hpdSZKhAf0IVEpI2n5BnKMEuw8yVy?=
 =?us-ascii?Q?LrDJW9uVZKvLXNub6/3RPSWkAW4aJG6pkCvsaW9P1Y9zqGcVEHm0NGtXrYOZ?=
 =?us-ascii?Q?g7O+rwBLI93zVYltlhB2z7365LoNyDsMakuYxogvyZG0OCIVk1JLJ1yPIMGl?=
 =?us-ascii?Q?6CUhWF6qcBAXhGEAjRMBB/QODLDlc/OPH6CtSBAFzBnpSBM+ViiIkeIPjbkr?=
 =?us-ascii?Q?Pb3yz/92I52WHjv5z7OSDCa+4E9ZFud4wnVfQnK9qy6CY/jaeBY8T7Vvdg0e?=
 =?us-ascii?Q?gRXoBtYC5o5rCL02X9C7MLkKKNHi8Izcfznuq2DWDszpA4kN7Sb8hKgHLd9w?=
 =?us-ascii?Q?SA2oYsB/NtQyFU6iY9fKM2d85QBr3XCUoVv/kdlE15Yzf6+UqY/l1Ec7WV0Q?=
 =?us-ascii?Q?CYCJiAQXB4KYIDx44sjnzOA+9q+aCfaXQUUoy6G3QleVtuxgm3kxVSHhbsQv?=
 =?us-ascii?Q?4wbtAFyD2g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60e52bee-0ea6-47ab-194a-08de5f71c0ac
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 20:05:30.2972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xq/wZTNJG5NHIkE9nlo1h2q+zIaSqBDUPNJ3ah+ruay8oEMBkp/TVeQ3TFrgCu+S8s/3VpojO+hA8TrgI0ZO8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7446
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
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
X-Rspamd-Queue-Id: 6DE38B423A
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 10:41:49PM +0530, Ankit Nautiyal wrote:
> The helpers intel_dp_num_joined_pipes() and intel_dp_needs_joiner() are no
> longer used now that joiner selection iterates over all candidates.
> Remove them.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 37 -------------------------
>  drivers/gpu/drm/i915/display/intel_dp.h |  4 ---
>  2 files changed, 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index febfea641e56..ae1aef445cf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1376,43 +1376,6 @@ int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>  	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
>  }
>  
> -static
> -bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
> -			   struct intel_connector *connector,
> -			   int hdisplay, int clock,
> -			   int num_joined_pipes)
> -{
> -	struct intel_display *display = to_intel_display(intel_dp);
> -
> -	if (!intel_dp_has_joiner(intel_dp))
> -		return false;
> -
> -	num_joined_pipes /= 2;
> -
> -	return clock > num_joined_pipes * display->cdclk.max_dotclk_freq ||
> -	       hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display);
> -}
> -
> -int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
> -			      struct intel_connector *connector,
> -			      int hdisplay, int clock)
> -{
> -	struct intel_display *display = to_intel_display(intel_dp);
> -
> -	if (connector->force_joined_pipes)
> -		return connector->force_joined_pipes;
> -
> -	if (HAS_ULTRAJOINER(display) &&
> -	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
> -		return 4;
> -
> -	if ((HAS_BIGJOINER(display) || HAS_UNCOMPRESSED_JOINER(display)) &&
> -	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
> -		return 2;
> -
> -	return 1;
> -}
> -
>  bool intel_dp_has_dsc(const struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 6d409c1998c9..ebaa35d23c9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -153,10 +153,6 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				int num_joined_pipes);
> -int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
> -			      struct intel_connector *connector,
> -			      int hdisplay, int clock);
> -
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  {
>  	return ~((1 << lane_count) - 1) & 0xf;
> -- 
> 2.45.2
> 
