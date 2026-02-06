Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Kl+xHonDhWnAGAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 11:33:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6DCFCACD
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 11:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9782B10E040;
	Fri,  6 Feb 2026 10:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUq2uqnP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0737110E01F;
 Fri,  6 Feb 2026 10:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770374022; x=1801910022;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=pJcom7p9rilumwcS2eXIB0ga/Q2+BMu3GOPk7VQ4SkU=;
 b=iUq2uqnP6lUYxdhrlDuWt+JSsantxiyrxSDTVqAGOHfkzQN9s2X4I+8a
 G07W3o5js+SJezezMANYR17bNgtexSHgRorCANquq71O3t0gUYTMbKeOR
 9wCOu8TmiRm3Bh53/8XAQA36x/Av0Hx3DGmcPhGBoGbQVPRYma45dfLfm
 tE3BANoVjnzSWC62eIdmNK1ucaW5kTYVFzT0w+yyLYa0XKHPbKvyriIPB
 dfqA0EI8GRo6Zt5DA+ylKN7qcopwrpu8Ro+5Q++36C3VqUN1Cutx0netR
 sgca7FyfGVFrCmUfpddcrS6G8ENd3adXY5rpgYCLyLY+WxuOivu4HEkGj w==;
X-CSE-ConnectionGUID: q6cqi0yaTquSMLO1Fq/D2g==
X-CSE-MsgGUID: SfjOROSlQxGKnwNK6/mePw==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="89004509"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="89004509"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:33:41 -0800
X-CSE-ConnectionGUID: nS3IrZzYQSuwuEdYt2lv9A==
X-CSE-MsgGUID: 979451QdTFWThbjsFzdSZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="209929231"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:33:41 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:33:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 02:33:40 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:33:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JjPwf+n7zPg46NXO55w94ywgKvzAkFHKDgwIFI7HHLtS/nSsXSVuEUOScNzkn5vJvG3fmzcWroKzEmxD3Pk1FpeRu+YmATESvApD3CIyORvT7u/anah7V1vupL7ALB7IV7UJG2GMj5li7qUxRZqgUFblFDOe1oVlWXMKyqNXf48F/rnBFpG6EU8o5W1rXee3UuErVs164m1STjFlRDrBIEw0Cgez2Q3i1sXWU4kIwN1LqAS8eDCDkmTAl9eltZaooaaMcJMRS4Doc/kPndRooOaWyKye5oKWqV6D+TRJ5W3EHNt8+/bCq0U1ONTc1GU6/bNIg0u8pXoyKTNOMidedA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1g67WHcyC8hDqfQCU6QHSYj6SxA1XezPAbuzqUcxpOc=;
 b=DMhqfvogj4SFVf4uIP4y+wH03cUd7xGdj+/Hv6s6BNDfssytRJ8vdGOYg3gPRRQWYZ4qlkEG6+6xqxKrdBC0619oetPD4P1UqCXKfnLxTvU9wtPgGK+bvwK7WxU8DPEzgjAARpgoU9/IcTCHCLpegC+eCAnmfW6t6u+rx3kuvWzoB+KMDD+x1mQkhrRcAs3QAfGxnvSyOe3v1JXf+h8gIxJTDn/UEpRruoAnnObDZvyEWFsEd2WGrasjWU4lk2FB2pI3KR84MDI48lfKJ5IikTzr7MppQkkK7m2QyoPBJvg4N+QmpphxU/sq3qu+nE/3uIajRgmKk0c75XR8y8aP/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ2PR11MB8537.namprd11.prod.outlook.com (2603:10b6:a03:56f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 10:33:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 10:33:37 +0000
Date: Fri, 6 Feb 2026 12:33:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dp: Restore the missing check for
 intel_dp_has_joiner
Message-ID: <aYXDe0_RlCYif6jB@ideak-desk.lan>
References: <20260205083623.793902-3-ankit.k.nautiyal@intel.com>
 <20260206044753.808631-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260206044753.808631-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0076.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:274::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ2PR11MB8537:EE_
X-MS-Office365-Filtering-Correlation-Id: 84fcd0c3-8f84-4313-bcbd-08de656b2f67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pyGjIaIlCaffBDozTZDEuqtX1YE1mhDeUyokRaJMliKgdoVnqybmJmgTZXAy?=
 =?us-ascii?Q?kK8ufosvTW65DyvgDz2OjpNH6HmOCU05hqxQV2EXN5DEaENTlclJs4UFfyAW?=
 =?us-ascii?Q?ecIPUK1ZJmJg8uGGTRAbSeSUO29YZ3rxu1DIwD9a66t5eTkLcvC5vQR1FEoF?=
 =?us-ascii?Q?eTPPUelNbTCbOJT18w+xhGNohK+3ICkZ0u4VNtEf9+nAHZgspe0ehkx9lGU9?=
 =?us-ascii?Q?zu2FySLpl4/blmz7vGXNxsiJNUc2VALuuNf3j1raNh82c7xWLMlF7qlusUUq?=
 =?us-ascii?Q?tijkJxs5N75TpKFhVtri6DPyjZmzaoWkgeJsA/GAZ2pgOS/8MrkG5RFli/s6?=
 =?us-ascii?Q?BU95robcDWj67PMfdupa3bXBHgt4I2FtYk+yaYBgU57seqKhx4NlczXr/sk8?=
 =?us-ascii?Q?AAXb/Fdm43udDIRUy+DcPcX7n/40ULBO4fXS0XuFT8d6HNZhKEkpJnkXHgK4?=
 =?us-ascii?Q?ply5BrwW8UoMlTBzgSXHutCNfkTkjapyfBXrOeUAdrPaxBVPkFQcFpFwnk0H?=
 =?us-ascii?Q?wwwFDzLPYk4meS4fa5n3uLdz8aKwYVXibIczS6m/ZwEt4MsFFPBFUjOLT640?=
 =?us-ascii?Q?/GL8tky9LYrnCuR7NExSicySDQDvb809AxXeXR5HssR7GJb/CEG79DCpDpY+?=
 =?us-ascii?Q?YWb8Dbxkp3hiqL4QARluUihw3pD6EBwC35F37knhdnCrjsjS2A4t508SQFu/?=
 =?us-ascii?Q?U6mDZ2RUjzfAIjAUSmSo53sxNi1f5tryryP1dD4YLT+yC8XXnHc/0Q4XT8Ct?=
 =?us-ascii?Q?zpp78Y5sNPoXDrt1HrAGGJ53YJt9+MJYD+DKaKPZKwCiAF6kn2afAI4p4zJO?=
 =?us-ascii?Q?rlvNPhfT18VNSci+hH5T7ANKgzIKAsqaGtpNfRGHhQZM9pH+NQZfrU21v2bB?=
 =?us-ascii?Q?hszB0Xwb1EASsOOoUfg9AEPdHVoB+exu2wLwen6I/FM0lbdv8SApTi+/JTEI?=
 =?us-ascii?Q?s8fdBuVD1gnO9DTGA//sLvzLQerbVTjoGIWnmhZm0W3Z+WOBem6L7LCKGByQ?=
 =?us-ascii?Q?Ggc78TDX9WTPy5HEhz9E9ORvz8+M05Quo2ZN+e+Tjk8nlEdytBfYwGPwK8jR?=
 =?us-ascii?Q?4qfXYueGFcy8kZ74GtLkfx2P06PNF6YKiT8MGuwja0+KlmFomCHgoX7SH7r0?=
 =?us-ascii?Q?mCBuGJcTsXnFO9cqrHtWNTsG+01doyDx1qaJKwnvcDrbtWqG5oJLXxyVc6kF?=
 =?us-ascii?Q?BagI2UM9OPUrHn6QFV9ldyrxiKF1zxzrJhmZ7fcsZtBRSnA1H9H1YYM5voy9?=
 =?us-ascii?Q?idZ7rH7cgNiph26tr39/H3NzpHVGUZowms/mj9XKQKg+IhKaMavzW4zn6STs?=
 =?us-ascii?Q?z0sigdhhk1af3yVThb5kXYMRtNq7lYkE2YI9nr5FICFrCjgEJbbUw1u9YFZL?=
 =?us-ascii?Q?SE2P080HovzNddBdNVEDC//LPH0etegVTZhzizMShvhvnv5JFRczy+fuKcc6?=
 =?us-ascii?Q?wjGQSldoqICA31q4PqgHkbjLtfuBF0G25/ZNPHb0clrjzsClfD7XnnwwWwo0?=
 =?us-ascii?Q?N2uB1OSZou1kBvAh753yTfbjiVwEdv7TftpEgZmOXBP/rb4aQD3Id0JhQG7g?=
 =?us-ascii?Q?0LKzeIkkGxXrWYII+4E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U/KxT9LLyUccBh4oCJ90UbmfqUHad39Y5D1HJfIog7mS0lJPDEha6ZofA9T5?=
 =?us-ascii?Q?OvU1v07qKTHISg/p1RpzUVhQdSnkYAvVBKNyPat/u3p82ovhFnflSshVIh7i?=
 =?us-ascii?Q?0XSWqjB9TxhoG639pRY96OzRmhLo0NxgmOn7jAuxYtYqmnuBbbF+meDsdWHV?=
 =?us-ascii?Q?LlSuS0rcqt3Va6zXBrRVAA1B/nDbb5q3aa5fLLmx0iMzVQ6uASVjB26d/Lpr?=
 =?us-ascii?Q?lCE+p1WZyloKKj0rkXGSIP8et3rLbwmgMla47D55gvuyIJXd3tmBoETTICVd?=
 =?us-ascii?Q?M5O0ACxuqWHEsB8VZmJgJhuezEd8KFie4Uen/nowYFB+OCb2JWGeMYzpS5Io?=
 =?us-ascii?Q?7wIrl79x6UGjuRuhtw2q5DKtzHHD/Q1+NgIFm0cADZtLoP16qfUKVuJF0bsV?=
 =?us-ascii?Q?n4oDMlEe0UCNu0XnDc7ougRD7At0Gylmprszji2KvsWy3WIusk4jviH/20En?=
 =?us-ascii?Q?jHgg/YI0dBoOCoJCrt7CPYQ0fRB3S/ucdwnuT+akCu7zwyLZSl6dD+1j2oTP?=
 =?us-ascii?Q?+2mCKEaSO7Cp3P9CnEhrZ46zchPVYJcicSWPUl6wpiaSEoAL6i+4RA7KXQ/K?=
 =?us-ascii?Q?MvQEbmkiLlpoG0xMVneQ4NMUcF0PSpiNwCV0okxpIj6eZ3+zlol7p+TQnbKR?=
 =?us-ascii?Q?qs5acg65bvhDjlkjhm4g97aHemPrXyibKJmkOyVu2D2NGi/PKffKEDtOqbsa?=
 =?us-ascii?Q?2LvVYxfZIbotyI7fea51Ygzfd5F08Cfyk2dOCjtL35utup5588XXvk5VKZKl?=
 =?us-ascii?Q?sK7JZfbUJqD7sDYosyPz3vzCzFhjsRBRHGscBBtsjpB6o6FohmJ4EECgAEf2?=
 =?us-ascii?Q?Ys84w53izy06vdDMfaKMXINt+f7uHhZ62itsjqRfHKZW+vZWunogUXcZkZcE?=
 =?us-ascii?Q?2Ad8RlhPnxUHo7Ke3tj8qjai5797Tx78mn56ZxJIewiC4WcmErTwcg2eFlBj?=
 =?us-ascii?Q?6/CxFFzVmRblzkXf2OzfJjgR70s7xtNiv0fM4zhCfXka4+neRE3clVEvI0Xb?=
 =?us-ascii?Q?8IiY0cBGO/lhAseYci8E7kcNlS/KqJsmBFmbq+zUtAHS04q4IxGkaC5+y1pg?=
 =?us-ascii?Q?pKPow/pH7cbIpLjqIPTEfGn+Wn3Sd9euhYClE5rB+/DGGkPpWat6OTjHmXhI?=
 =?us-ascii?Q?/B2GUfG0U7f3nGlaTYJizlxjosB+V4TosrqURuiFs+s6YUCW75uSBMCtDVjw?=
 =?us-ascii?Q?c5jmn/g4vk0F36NR742gZOA+EA3/BdN+p3uBfzKnclq9gBt4hlUon1NHzjsK?=
 =?us-ascii?Q?PIoUKOfjd7BmblPMZc8brbZNHaoZuPmwF7cKWdHv3cOFiliHYkDDainyTgo1?=
 =?us-ascii?Q?Db4d9sdFUuErH5CDreNCNgYKOdrGPdkSbgFcDvbkJG8QexSIYB7UOdkKRgqd?=
 =?us-ascii?Q?N4gPXPXTPCAwfKGncy9cR4UcChApEfLi6JC444WpUlFKVzj/W5BmeO80HW+8?=
 =?us-ascii?Q?DTadfNQfcnDK0jRHuJyoZJUhlq3Oz8P+i0htE1ycZV0KkbkBk388Hb1UiEO+?=
 =?us-ascii?Q?Lr7p3eVRCDeIRsOooGGkcrVbaNKA0Fo94kZgoZdTThUhL5ar2nDCaUG9qeyM?=
 =?us-ascii?Q?2a5TrBsH9PVw3yV7lHodMx4e6RlLq0xJvUaHEJCNFH1zHB3m8ed8cVd6/gQY?=
 =?us-ascii?Q?jpXbAM2s6ZP3H4qZwFsh153sEb/j0p50rqbfp5qXF9j/mzIs65v+bWox1cu+?=
 =?us-ascii?Q?OaTh3D+M8DwM/Vuf465JjAjMLRj7XB/PgbCbLGZfAFhGkS7hf4YLIExgiKsb?=
 =?us-ascii?Q?5mMEHUqVEg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 84fcd0c3-8f84-4313-bcbd-08de656b2f67
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 10:33:37.0301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hKci7uUXbvX8A5yDqsCT1tJ18NSRUkTDrDPr0SKV2TkDawqVLACc0i/84n0a0Zn4Hn6T/y/kmuzas7Ziipb7ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8537
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9E6DCFCACD
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 10:17:53AM +0530, Ankit Nautiyal wrote:
> Commit ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
> replaced intel_dp_num_joined_pipes() with an explicit joiner candidate
> iteration. The previous code implicitly checked for DP joiner capability
> via intel_dp_has_joiner(), but this check was lost during the refactor.
> 
> Restore the missing intel_dp_has_joiner() check in intel_dp_can_join() so
> that DP specific joiner conditions are taken into account.
> 
> v2: Derive intel_dp from intel_attached_dp(). (Imre)
> 
> Fixes: ad121a62d566 ("drm/i915/dp: Rework pipe joiner logic in mode_valid")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4f5b89f80e55..7da4310b399e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1397,9 +1397,14 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>  }
>  
>  static
> -bool intel_dp_can_join(struct intel_display *display,
> +bool intel_dp_can_join(struct intel_dp *intel_dp,
>  		       int num_joined_pipes)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	if (num_joined_pipes > 1 && !intel_dp_has_joiner(intel_dp))
> +		return false;
> +
>  	switch (num_joined_pipes) {
>  	case 1:
>  		return true;
> @@ -7218,8 +7223,9 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>  				     int num_joined_pipes)
>  {
>  	struct intel_display *display = to_intel_display(connector);
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  
> -	if (!intel_dp_can_join(display, num_joined_pipes))
> +	if (!intel_dp_can_join(intel_dp, num_joined_pipes))
>  		return false;
>  
>  	if (hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> -- 
> 2.45.2
> 
