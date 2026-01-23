Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CkGHOvHc2lZygAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:11:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1EF7A0C8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51D510EBB8;
	Fri, 23 Jan 2026 19:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YAA4xRZ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8728110EBB5;
 Fri, 23 Jan 2026 19:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769195496; x=1800731496;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=16nj/CaGaIzM6Mn2JlEf+n84bHOCgIxRqg5ImOKCufk=;
 b=YAA4xRZ66N/VLYpRAHLsiG0Nok/k5L1ndtZNG1YBGudyIkOlUrAIm0FE
 MJdI3oKy4HCnvgPTiyIjv3mVFbBAzM33ozn0mpw5Oo3RgwWAzQtjHAYg/
 NZzyz26OnGwijXCV7n2JnEEMAgwem3RJq+z05D3bcdoFZJYamhM5t15Ce
 tg1Gj25InjqeND6iTgFCuBktZEga+1Z5tmQvulBs12OwVqfkVaxYTK0nm
 PHwi6N4nhQqmprS+OtXcWFWqBP+fVQ6FFlaBdDhzhdhSshGvYXNs8+izI
 ycA9CrMBjWa+rHXVDM6a9bQdODBaJKjarRYrKtEdWnmjLwpGI9liRUwzM A==;
X-CSE-ConnectionGUID: aJBKXAfsRASryfg+MJIHMA==
X-CSE-MsgGUID: VVfbEFtjQbexH1YiDiWy+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70503584"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70503584"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:11:35 -0800
X-CSE-ConnectionGUID: 6eOQ4SG5Rmis+tuCMR704A==
X-CSE-MsgGUID: UdiwqdG9TNStVNyx/JDqUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="238350025"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:11:34 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:11:33 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 11:11:33 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.24)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:11:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wN8LzsvxxG0zNwHDOA0I2eCIb2wcMY8ofCY4/I7qOFPUIfaDKPG6f0sYPywi6PT2iIIkbaevv3LD916vVEaB76OyspyGjKBAW/esSa5AXuASjRdrtPeRshlBZP+ZGXYgWwZIoP9tYf3/4RZsVVXmofw4w1zAnxMpLsrxOQBi8KAKP7VfX4dZKLf4z0NCaVHNnht7DHvEJiFPG/dHdtL3U+DIpFyUHXeY66svO21+dE4lUTmNSeg4/JSJpJ9bS5YNQisEH1R7AGcifqf6jQllYBep6pm3BQBr+MbvzJdm4LOX0FCLzaHHZRljvBHzb8XxkIJjGe4b7ltdZDu1I6bQkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Ewq6zXL/WxzylerCLN3C2J+qAYiHJyMoRE6cwtevBc=;
 b=tA+iFdBtinXL6XJ3R+kp0iK1qu6aSX2u04hvkn2URSMxo7Njl8TT+eufg7ax143bexh0Kc9PFMGuvmWsPdhQUnqJ8mUpHAnsByMYe7cdZr7DvqmnosHA/sVRfBpaXR6QCZbuX5jQSooAN9XYGpeVjGIQ8dBher1+gCisfvHSM3JOD4d9bTbLFlxRCYc/r3UO8pcLo01ttpsyy3iDOqFvj/Qpq3b5p0qDxVHI0t+rEhGFMr/bVav+iaaKzxGmNP0BlK6fu3rmNkuWSgyXu8p3TrFUWKWGaM0JnEne7FcP+b8CrFJv0jE9m+/Iyrk/kSPOP49RiCBLMk5/cBm9FHuvbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB5232.namprd11.prod.outlook.com (2603:10b6:5:38b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Fri, 23 Jan
 2026 19:11:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 19:11:31 +0000
Date: Fri, 23 Jan 2026 21:11:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 06/14] drm/i915/dp_mst: Move the check for dotclock at
 the end
Message-ID: <aXPH3b8mP3bOotP9@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-7-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-7-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO4P123CA0184.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a4::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB5232:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cc66afa-aef3-4482-68a6-08de5ab337bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1HuJk4y+slsVFQ1Sce9gYweZJt8tl5JnRwxUflqe0kyZ/4r2d+jR1Og+Sk61?=
 =?us-ascii?Q?Qxz7GnBQabo1E7K9Ev8yyHwZ03JjsF44TVgwy0/rEwWk5dT22flQpFb4SaF9?=
 =?us-ascii?Q?o424YA34v+9/TJFbIWL5NxJdNmxELsFIhNZ0V5X+m/RzzBeZA3gAWWrvx9Hs?=
 =?us-ascii?Q?TJgEfCzD2DjJjqHnipS6sCBgtRHQrzarcawMm4KDAtC/8vOuKi28NsIMgmT1?=
 =?us-ascii?Q?F6YWLK7fzsWsJ8fu8l4C6lapimz6mtle68cT9/kp5aa6rj8UhGMYDQYsGN46?=
 =?us-ascii?Q?LHKjBSlnWoULZuS2layv4ixK+8FLnNNd14iEdN0j6IW56NV8BLY3Pn7LOVPU?=
 =?us-ascii?Q?rW2Rm3P9F/+2HbDojjv08V5uN4IEwF+0hUulIZEHb+B7klJgdQ37OQ4S1qkX?=
 =?us-ascii?Q?X4/Z5MIRKnrgiMqrQ2y/U+Yn3Sifi5a33SmIHknZ06ZbrBuR6tP3E4fKPd9b?=
 =?us-ascii?Q?HMgaA4REdQ7jED8UsgQ32JapbwaeVBfdN6Ahy9QAPiWcYc8q0oC3RgFLgtEm?=
 =?us-ascii?Q?0kc9hEncKop9zPcbUR+Bh1XbhZMWphQfDllguMMZIQNV9x08wgFlyVQbUkEr?=
 =?us-ascii?Q?czBj4IUy9Wq99F1sZvotYUZGW5bj4GBg2fmlq/TZGBzPZ5X3B2EwMkLZoUIR?=
 =?us-ascii?Q?dblDbjj3R38cLfW2wXi29y5eK27/6hWVHyqH/MaKa1HM2DWKKHC+Vp4iYZGh?=
 =?us-ascii?Q?XIXROkpsPAyBPWUFROVpd5HfceAAtj6EqXnaC82dLRpVxJ1XAnQd283iuJFa?=
 =?us-ascii?Q?3Cy06n967jIWTGEYfnesqwEFKyQ1wx9x/zSJBirc2FlkzBURL9TJU+D2yjd7?=
 =?us-ascii?Q?wJoCqrtwxx34bH0ZYNAyNFN1RViVE4ykIW9mp9Xu4dDygPqVCcICzeWR3V2R?=
 =?us-ascii?Q?l/372f0nlUhYAK3jzjQTQiLGfqVtJQLlr9awZzP6meaKO0zg7OWPk3NBBqV7?=
 =?us-ascii?Q?3kVN7ubSNiKCIDzTYNu2vkF3zi4FL6TXUZEGm6V1u470L8n0K/P+1XwCy0P3?=
 =?us-ascii?Q?ckxr7pOrxtgg0s6MMRxLYK/H8RMBmq6q73xyRTqE1mFHg0orR8jaQgSGQesR?=
 =?us-ascii?Q?CDvbskXsok9o+O3DOCd28ZUXtdzZzuMV4uGMbVc56L1+UVkdwbPz1dTpArAx?=
 =?us-ascii?Q?5j+HEOpeyQ9/ZJV1W1ZNtmmhHZhT+F1r5cTQFtJuxZAsns2Qpp+2GVAApQ3H?=
 =?us-ascii?Q?eYu7wkEZHOl4vMqLawu7JZX58T1T8DZ8QwWA0nsrO25ZtMxCZO8X38YVGOD2?=
 =?us-ascii?Q?bvC7z6CK9tsEAYmkzskSCJ6VYyJCxJbUCvhi3DU8AkYR2oJQdORx+HcU/THg?=
 =?us-ascii?Q?qfHSeZaQRYbroWzCmdUxKyIXIvggEP1ch+IgpcMw5CMWRuP4pY56gVBzAo59?=
 =?us-ascii?Q?Ikizs9bie2Sow/25knEbuNuL8UXNzqRWXzyTzuL0Y+NtN0wFFVljoz3yWOIj?=
 =?us-ascii?Q?YlH+IF3/TYz+RnRf7K13wNoqUHgeJujRxelqkZm6MMHuGGCzgR2qq/JrsyxB?=
 =?us-ascii?Q?qDsz6cu/xNP7KZ6kZHoHgfoLfn31foh8n/ddD5kGHDB4AUxBlqOUcrHH5jlS?=
 =?us-ascii?Q?EaQRX+Gl+G0dFQQMBpE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bv2i/tKcE6JBDN/4psthHDFXJXMOwl4AKiCSuQfhjNMV3rjNP4a4yek4YG6U?=
 =?us-ascii?Q?TyHXMMgDECSFr7uPBiWaxZZpSvxL8Xj30RTx8UkhYPkKw/713wYMWk8ntZ/m?=
 =?us-ascii?Q?icDda6NaxK01g+hi8Dc5zkmJlJRsu/J7zFp250zOPTHnjZBzjkGwjmTVhxiu?=
 =?us-ascii?Q?iQXqOwPl6m4ut9QNlhdfBZDnp5erAvExm2FTG7sNl19p0X0IIc6C3LZ4Lmk4?=
 =?us-ascii?Q?zjA2fbtqqmAMAyzPtnNEGnyXN262QTRyH/NBOV9lu0DxD8BdGLxVh32FB1aV?=
 =?us-ascii?Q?XxX17R2tvyHD0r0AkcpC1v203sniCa1eC763cv+H8mH6DVKRqYZzjrpQU/rh?=
 =?us-ascii?Q?ionNsJSvgXW5/xmB1CDE5Tb76B+FKfQ3sMkZKyooL5uCKra56CRDiZv1bqq4?=
 =?us-ascii?Q?2DLBIS+AwCoAx3O58cH8Abtwe8EqBZ9GPMwrnzzQ7/ACBwSMdo/4o6K9Imya?=
 =?us-ascii?Q?cam6u0Gttwu6qFT7Lcq/3oik6keyqN6+NAnb84lgrRLzxuV0icVR+Hj0J0v2?=
 =?us-ascii?Q?ruD9Cy4lBBNHoAne4kqFUJc81D51kt6oUz0qVV/sNPaftGQiCcQJaKeCpypL?=
 =?us-ascii?Q?Ha/jBYhYyJVVIPg3Xvkh5dP79vMSZXzyCgGJ8CxmdB7VgxfpDZxBd0LU+sEQ?=
 =?us-ascii?Q?+k9+PS83hbVi+UcmHvrWaEb+AtWFcAOVDCghV6J0mcutD/Tt1Lc7dHGYykxa?=
 =?us-ascii?Q?AryXKZDH40gUCy+OSM+IQcggN5IDDN4xnhLKMxi++uAIvUMVz4BecJFTVqhQ?=
 =?us-ascii?Q?arBFL4XoETAtIHZQBa1dPjOyCUrh/3BX1H4JhWrI+J0z1OZ4YcE74ubCCw2f?=
 =?us-ascii?Q?XLtjCjX7ggN6iX4h3oelLpheDCAzDGWHiYlZGr8u5QjB0FvfUWdPFlb2vksW?=
 =?us-ascii?Q?w+QXOZjdL5cd/JljYBCsTV59iLBPiUYBXIkDeA7twlPYdCnJkP9NNJ1UUopV?=
 =?us-ascii?Q?nn6xznqdf8JEOSrUhE0aXglurm6JwZgFWa/Uv+KiacYYzopeUXQFraV9H2fk?=
 =?us-ascii?Q?PJqK6qxbsbHhk3fhtW6DKvtFeWU9anJlvS+5yIBIdIkk2T59BXdAPpSJnpEb?=
 =?us-ascii?Q?PQzS8UiTF1a1doxD3gBSN0jbbm+IgHO0rBy28+3L10oIY/UxmHN++u+n6bFF?=
 =?us-ascii?Q?CpRbTpW2NYc3P2TAta4VnYigNKolc62Ac9Xf/wDPis8RFNBAqcLKBFgITkQN?=
 =?us-ascii?Q?V1ttTeDzxJfKvo8sqg9Ogby0yfBn1j990p0hTQDitLbNiTVXaY20uq/wO8cl?=
 =?us-ascii?Q?V83VI0nu6nv0Owmeg9wUcuvevuqMgzjE6Cur/m1BoStAXXYoomQ9fa6XDGx0?=
 =?us-ascii?Q?lzm+jCOyMramc0I23WyZudKu5gK1bfWCxnU7g78YId0PvYkyed3bJ4DB88Ar?=
 =?us-ascii?Q?Yk3IKOTeJ9X5TZktVUbzGA4uzJJAqfphNeqIln03USBKbptPmqWL+pS0u+MC?=
 =?us-ascii?Q?09RL5Tn+8kILLxKY0lCq6wN5ooVKZa4va2CajmeEavU7IeF8ZfqFp/Zp2CrX?=
 =?us-ascii?Q?2VZDe31MzUVZZAZTJkJcn7GIYd/XOho44YJVJ/+fVg1lfNpIcfUOXDzCc6Ux?=
 =?us-ascii?Q?V0AoQUhvyn9W1kfzUjPDTYF2GpuFhOznmKjx77tBejeB7uIPsrb5QJbSizN8?=
 =?us-ascii?Q?p492KRAjoJ+9UyPcSgjT0OalNsl2w81H7eWb52jDHHDnw3wzPEjNDqqB8ypJ?=
 =?us-ascii?Q?8vXE7wjwe8HdpnLeL1PGKmREN1wG1Lp4V995Bu3zilcC3Yf4oqQX9CF9Ap55?=
 =?us-ascii?Q?8sLixmw8Qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc66afa-aef3-4482-68a6-08de5ab337bb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:11:31.5812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JaS5E62NUoP7yw2jev9uy8JaXvCydsql7UYM4sxxaZZ6H46WadzQKYGH70vKx+JQfpj7XBfbtveTb/6Bs8K6CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5232
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
X-Spamd-Result: default: False [1.99 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.968];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AD1EF7A0C8
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:22AM +0530, Ankit Nautiyal wrote:
> Refactor the mode_valid to have all joiner dependent stuff together and
> place the check for dotclock limit at the very end.
> 
> This will help in the following refactor to iterate over the joiner
> candidates and find the best joiner candidate that satisfy all checks
> and limits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 24f8e60df9ac..31e2eae6e4b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1470,20 +1470,19 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     mode->hdisplay, target_clock);
> -	max_dotclk *= num_joined_pipes;
> -
>  	ret = drm_modeset_lock(&mgr->base.lock, ctx);
>  	if (ret)
>  		return ret;
>  
> -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +	if (mode_rate > max_rate ||
>  	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
>  		*status = MODE_CLOCK_HIGH;
>  		return 0;
>  	}
>  
> +	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> +						     mode->hdisplay, target_clock);
> +
>  	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>  		/*
>  		 * TBD pass the connector BPC,
> @@ -1513,6 +1512,15 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  	}
>  
>  	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> +
> +	if (*status != MODE_OK)
> +		return 0;
> +
> +	max_dotclk *= num_joined_pipes;
> +
> +	if (mode->clock <= max_dotclk)
> +		*status = MODE_OK;

This leaves *status set to MODE_OK if mode->clock > max_dotclk.

> +
>  	return 0;
>  }
>  
> -- 
> 2.45.2
> 
