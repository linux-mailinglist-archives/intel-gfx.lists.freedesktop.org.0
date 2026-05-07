Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CQ1Lw4z/GmNMgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 08:37:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF454E38DE
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 08:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292F710EF78;
	Thu,  7 May 2026 06:37:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGO9OACN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88DBB10EF76;
 Thu,  7 May 2026 06:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778135818; x=1809671818;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=pdmoCi/9jmnyu8v+LaNfnzc/LSiBT4/pZBOb2ifB5fA=;
 b=gGO9OACNz5ODJzl+E8FHfSZRiU2OmAmV8i3Ie99ammC59F+/6DjyMu+V
 BP63DDn/FO2MRr7dTdCu6enfTjpES6gQcOrxPepNS8+jNh4D5HxgsATqK
 llDZbxgq8axhGj1ozS/JkOOcgnmi9xkZdcm/6b0o1eZH5ETG0pmnbuxYU
 m6944k2pRm38tK31ILw1Yi66npjJ0dO//dcD0LxEpB0yN1pSk4duywSyh
 w4t53JGPa4sW5OVfcNlkxpUg28tDoiDw+OheIuYLiBfib0ZtHBZirXdE6
 IMZqauZh4sOU67JDAeajyhsbb9EvAjIMeeGF10JB+wGmwpbkRudxS9peK Q==;
X-CSE-ConnectionGUID: HXyht2nQTzykeQ8EiJm6vA==
X-CSE-MsgGUID: CLjM8s1ORTuFHW6qyuMgHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="79126817"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="79126817"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 23:36:52 -0700
X-CSE-ConnectionGUID: tCUT0W62THKRogVq7z4UAQ==
X-CSE-MsgGUID: Q/LjnXvqRh+MnuUVi61OIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="241357520"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 23:36:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 23:36:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 23:36:51 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 23:36:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e4+aD0aqABCGT3qMnpFXTl/Bv+28ye5uJBCiStNZEGIUbEuaOAzSLOV9sogiCDOns73g6V7AZV7Cli9NrXk6qqSyZrp3cAHrQmsvnVFPWa2EIiyZyNjKUvBDvTwles3x3ZYzol8LSzv2XoekCUhEv3rvSLGFHhqi1WL1At5wKS+jeT0WOf1bXB4flAGlVTNCW6jzBJ8avoNugWLxWRPlX8pFABcSBUhqxPuGUXjau/nfwY714xD8EQdpoivxs2Vm/A61FzjYJAAvZxjaKXwoJ0CCxwcU5Oi60QFtCjuoHd0iiXyl9HJ72qtLVil5Tfp8s0YdY1P9YvZobx2xZ1U06Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rjmpaVnKca78O8NgGk5BkmyJRyZJuS++F45zuTYiuY=;
 b=UBiaA631f1UQut2hgnKw9vjTEj5qwZJ1lm6bgfwjQiB+WQjzcr1LfEpiFkLd6eglsrOCuZO6xzrq1jQdd44sQx83Vj33tBfYVnqLYZ3mYtXP7naPcE16qsA1XfxZOlpW3qQLGIIG7nHUd8tmvjw76gM0JSKLx4/wmjxbrETCGI3ZRqONB/zD/GesQ8xoQPC7MaaXkuZ8DYFEeGZSM6zBmmj4Y8IPBv9bNFu2kgkiSXDUaYHEgZpzBtdS6PIPO2eyD0bhTt7ZpJsg5R2pj6EN8L6jfa7nrU5bBgVZQOzeytgW+pzLP0bcbvzP6HHN3BUuI4FFBFUZyZ+BCZnMivqfGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB6963.namprd11.prod.outlook.com (2603:10b6:930:58::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Thu, 7 May
 2026 06:36:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 06:36:41 +0000
Date: Thu, 7 May 2026 09:36:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Use rmw in gen9_write_dc_state() to
 preserve non-DC bits
Message-ID: <afwy8-SBZKGRuDTc@ideak-desk.lan>
References: <20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
 <aftDhh2hsfvW_kD5@ideak-desk.lan>
 <c4c2cdc4-93bd-4777-9780-4e8a5774cc34@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c4c2cdc4-93bd-4777-9780-4e8a5774cc34@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF000167EF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::66a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB6963:EE_
X-MS-Office365-Filtering-Correlation-Id: 6adb48fb-822b-42e2-52ca-08deac02ffe1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: wuKe6Vw9mmxdFYC0edz6NgzZWgOLniS1S7KacNANyosJ5tgqBAL6xEV5f1WRXrjHME3lIab5edWxe1tmM296rn1gI9RNtt5aedeLegoYM9Rsob9qK5BGLrT6YcJuFrpPN9fQbzSpfswvb6IkBKRR3HFnMRUSLgOKc3LZxriK0aoBHgkQShUBKJQwMX5ECSH1JWe/uuhg6wHQyqRCzVjDLeE+8dq2SCkfI8zGfwd0hpwJ0frvzvfUMbV8Jvq4juvU/TV0aJVs0QY7mE9jWuWXqQJV6trtRfLZJ6+x2BjQrHt4l91vFFlDZGMsEHCDJL6uXW9T059kqsZ9Ti2O6a5qelhgOug4uewa73T+Aak/ap9WlQyn4NziOYrpRnU8JW1xVj6OLtxyU3M1FR4b3ictBQz2WroWC+teBHIK9B+rttx8VpOjZMlb7XNz3OnDZ8AhsnO1erfAhd0PkMlnaCAUjwgVsn9Mlkqf+sX5kz3hpBp9AjGSQyTpU7KRu+fVkaKnJR62gNwIH0Bya4GIZVlNQMSMySkbkrhOICnZ+6G0fljv4JkFL4StHjk/B/9vv8gnHhGg9/mzBf8+fZJzCHo1ZH0QvNAWwBHsEYDgr7zu6rhtt9fTJSdWArrgjhlO8b++0KcyDeh2EmEC8lD/+Jn2gSuZFCXwML2fTnABkgsjPD1t1A+meYd/uYd6BKgh0V8y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P+akBqCUqRwN/GIXG0LZbq8vSJGL3XWEQOIwNzlIbXad3v9Bb4lpd5JLwRBB?=
 =?us-ascii?Q?zxelMVyxlvJwWrdXKaBSon6E98KRPlmVKVZBbUOro3bXb2O4fvlwd8U42MDB?=
 =?us-ascii?Q?pgEplGU3H9QOHnSM1G4ESqC3xCDv623/NABfReExD88GKb6HbKluXiH+2Oc5?=
 =?us-ascii?Q?pe8IB/MOd4ImBD1HUp+CWubbUexC7L3Ckwnoqic8pd1q2SMljIGxPFgSag6M?=
 =?us-ascii?Q?OUUdzQHIunzVJvRS5JbkR7BPJ9kFd1FvYA5IOC4+0Ir5Yp7b3WpB6pfZG+H7?=
 =?us-ascii?Q?bOl5KumJAvz+awY5I9rmXrp+Qk5m+nsshHMFAcERJILPztEdm+faZRgATYse?=
 =?us-ascii?Q?EQxzx03HR9iUEIFGZjCEP+Z6uD3LA5aWidpttaFd6dqc+L4Dw9gqc27rA11p?=
 =?us-ascii?Q?fq+LZ2NaDMDfpuZRgukZEHlt78zFxtW9WXUcGlfl0q6E9CfYIfRJpXZ+Kk5f?=
 =?us-ascii?Q?aCIusX7dcPbznKvl7XXlAXwni6vUSkagkTWzJYIBaMr1iyiQpkQvgTrhAaYr?=
 =?us-ascii?Q?PgiKnIseZYeTqnkDr3RoLFszsO2H+azXEWg0yVDlTLOvTAdT5yfRMszJ0/LG?=
 =?us-ascii?Q?jYhIsMWh+GOL9bUXBCdqfvTkRL5wJT2MV+C/ZV1TCtau6h4bElp1xVVhaxnY?=
 =?us-ascii?Q?XBD+oDyTXGIaY+s1W2tM6ark0Q+6ut4Ju2D3v1P0kIt+jzxZjrIuyxpvuQsA?=
 =?us-ascii?Q?OgGwHew81VehEhK2TasRCnf25iNw6wG0kh0uu3vLiUwz8T8BDkobPjT2MRnR?=
 =?us-ascii?Q?3wy9z+GlfQI5tD7cSXqOo3OIoY0kVC7+NWxHcKr9Iugc2lv0Cty+wbNe773e?=
 =?us-ascii?Q?I+VUDOFU+n4TgDQ3gqqujSh5RDIWA3qoMfgwYExpsM7almqlnVRCt0vIDpbv?=
 =?us-ascii?Q?3JzkQmiMOtZlYqR5YXUaQrnvpZduO2CbfBwnzey2w3AatjJyV22edrj9tuq9?=
 =?us-ascii?Q?Wv39TXZkB7w8ve4yWvyCyV/9SPMrsiRKIuouaHita6mpe4e3qSd/LzUYAbNU?=
 =?us-ascii?Q?yQNB84ulm+f5TsKJeQR3QDCofwH645sHZ8Frl49dPYJ2/lS8JurnFz4BloRp?=
 =?us-ascii?Q?Mt3VdxZ16o2oI3bqYN9c3pvWXo64Lyb5b4t6PFZMvX1IXfssGuTUhtmqbPAN?=
 =?us-ascii?Q?SBnWH/BkC7nFgDpfJ7MtxPEp2WqjwTRuCWhvy9jgL7Pf408m+8nquB+DUUW+?=
 =?us-ascii?Q?F7WLP3sAqasGu9qck/ycfwdB3OgXEg19IxgEsZLPJ3stry1x2rEKG7wK/xPg?=
 =?us-ascii?Q?ryCP+uQ1tigJb1b1KSIoNTUgZMkbgKNpMRZUZDMQ5MFm680Ghzhth3Y2wxjK?=
 =?us-ascii?Q?Z9hPuSiUsKXkM9RurA22w8VyCOvz6beF/zdQc+XTyUAulDLy9pbLyLkKz3KT?=
 =?us-ascii?Q?robIPear6LwhZpoCRCNJreWdJEXeY2Vbet47TUxY+fK1kBJivtORAsACpU+R?=
 =?us-ascii?Q?PNsj92+chm0g/VG5/DdUHP9es2D0QRfBnSO3EhVFrM6EEYvIBFL87HNlVNw5?=
 =?us-ascii?Q?btgEuoWEjdJMXVJ16qhfI9DvY4ibgUNlw2Mys/RcaUK+QME8ecQY/pCRNi2Z?=
 =?us-ascii?Q?33OEFPB3rI+zWsBNrDE4YoNyxyuc3dnIU9aUtVdilUfxCpNmcGYfhyo5yiQ6?=
 =?us-ascii?Q?6jgSgdgaCPKeavcTJYDknBi1hRPIkzeSoml1S4EYnRT4QIOVXH4w7tmpLrZP?=
 =?us-ascii?Q?vgq1g/IaknG5pDqfOe8DmFZnJXVNch35bWVyAi228TsxyCzuUEakTxW9TND2?=
 =?us-ascii?Q?yCOWVp0n9Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: oO1mlGW00OktrETi/Gc2JW2CX1AZioI3WTN3YCeKSK9Vm8SWI7m1c6hiDHtEJI0UbysczgWuEoOhUiCVa9C+7cfgX0V/Ud9KSH/rrG99o0nZ2BJ5k6T/CmkbTgtKL+FtJl3vaOtVVMKdoOS7stb/J6ghEy6/xGxLWH3VDC8AzBpIgcs37plAbzsGOtjge4MIDLiEqoTJ9bjfNtzf590ncbKwnhKSi5o5S6IDAFORpqAe6ikSINdcRnYSttsrWMXiHw8YTUoKbzJDNKYtuj5eBemK30E1K7iS0mjdaUCn8Ag9qoJu5NvgFFfx3XweTjYIF/0UmIQMFlxZjthGkJGosw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6adb48fb-822b-42e2-52ca-08deac02ffe1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 06:36:41.8740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AhTak1qHoTGkkAGMr0QCkSXQYxCJERri1XAV6Vts7j70DAyAO7PcsTSYX1jNDy3HsLvLBlPKNYQfPuVlXz5Ptg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6963
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
X-Rspamd-Queue-Id: 2BF454E38DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:replyto];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.995];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 11:17:36AM +0530, Dibin Moolakadan Subrahmanian wrote:
> 
> On 06-05-2026 19:05, Imre Deak wrote:
> > On Wed, May 06, 2026 at 06:33:21PM +0530, Dibin Moolakadan Subrahmanian wrote:
> > > gen9_write_dc_state() verifies DC_STATE_EN by reading it back, but it
> > > was comparing the full register value instead of only the DC state bits.
> > > That could trigger false failure messages and unnecessary retries when
> > > unrelated bits differed.
> > > 
> > > Use intel_de_rmw() to update only the DC state bits and compare only
> > > the masked DC state bits in the read-back check and retry logic.
> > > 
> > > BSpec: 49437,69115
> > > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > > ---
> > >   .../i915/display/intel_display_power_well.c   | 21 ++++++++-----------
> > >   1 file changed, 9 insertions(+), 12 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > index 6fbfd46461b0..75471898e323 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > @@ -727,13 +727,13 @@ static void assert_can_disable_dc9(struct intel_display *display)
> > >   }
> > >   static void gen9_write_dc_state(struct intel_display *display,
> > > -				u32 state)
> > > +				u32 state, u32 mask)
> > >   {
> > >   	int rewrites = 0;
> > >   	int rereads = 0;
> > >   	u32 v;
> > > -	intel_de_write(display, DC_STATE_EN, state);
> > > +	intel_de_rmw(display, DC_STATE_EN, mask, state);
> > There is no need to change this to an RMW, since gen9_set_dc_state()
> > computed the state passed to this function by the equivalent
> > 
> > (intel_de_read(display, DC_STATE_EN) & ~mask) | state
> > 
> > >   	/* It has been observed that disabling the dc6 state sometimes
> > >   	 * doesn't stick and dmc keeps returning old value. Make sure
> > > @@ -742,9 +742,8 @@ static void gen9_write_dc_state(struct intel_display *display,
> > >   	 */
> > >   	do  {
> > >   		v = intel_de_read(display, DC_STATE_EN);
> > > -
> > > -		if (v != state) {
> > > -			intel_de_write(display, DC_STATE_EN, state);
> > > +		if ((v & mask) != (state & mask)) {
> > > +			intel_de_rmw(display, DC_STATE_EN, mask, state);
> > 
> > Could you provide the flags in the register causing an unexpected
> > mismatch? I can only see bits that should preserve their state as
> > written by the driver. The register has also some clear-on-write flags,
> > like 'Display DC*CO State Status DSI', but not sure how even those can
> > lead to a mismatch.
> >
> Thanks for the review.  I can see some RO bits status getting changed
> while read back.  In one case, I can see register read back value as
> 0x400 while writing DC state 0.  In this case I can see DC state is
> 0,but other bit have changed.

I think there is no good reason to ignore spurious changes to any of the
non-RO flags. So I'd only mask out RO flags here before the comparison.

> > >   			rewrites++;
> > >   			rereads = 0;
> > >   		} else if (rereads++ > 5) {
> > > @@ -753,16 +752,16 @@ static void gen9_write_dc_state(struct intel_display *display,
> > >   	} while (rewrites < 100);
> > > -	if (v != state)
> > > +	if ((v & mask) != (state & mask))
> > >   		drm_err(display->drm,
> > >   			"Writing dc state to 0x%x failed, now 0x%x\n",
> > > -			state, v);
> > > +			state & mask, v & mask);
> > >   	/* Most of the times we need one retry, avoid spam */
> > >   	if (rewrites > 1)
> > >   		drm_dbg_kms(display->drm,
> > >   			    "Rewrote dc state to 0x%x %d times\n",
> > > -			    state, rewrites);
> > > +			    state & mask, rewrites);
> > >   }
> > >   static u32 gen9_dc_mask(struct intel_display *display)
> > > @@ -855,15 +854,13 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
> > >   	if (!dc6_was_enabled && enable_dc6)
> > >   		intel_dmc_update_dc6_allowed_count(display, true);
> > > -	val &= ~mask;
> > > -	val |= state;
> > > -	gen9_write_dc_state(display, val);
> > > +	gen9_write_dc_state(display, state, mask);
> > >   	if (!enable_dc6 && dc6_was_enabled)
> > >   		intel_dmc_update_dc6_allowed_count(display, false);
> > > -	power_domains->dc_state = val & mask;
> > > +	power_domains->dc_state = state & mask;
> > >   }
> > >   static void tgl_enable_dc3co(struct intel_display *display)
> > > -- 
> > > 2.43.0
> > > 
