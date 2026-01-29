Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8gapGximemnF8wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 01:13:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A627AA216
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 01:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB73910E0ED;
	Thu, 29 Jan 2026 00:13:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyctupYK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610B110E0ED
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 00:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769645588; x=1801181588;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eJ6w+jRmu9vViseht6S8ASJhE77AV5fKhePsxgjQip0=;
 b=dyctupYKDKUZzWCij8oFjrXn2rvu8n2Six7ohD88ZEs0/66YSodY+1Ne
 7FmDNpqjQ7FQbPmilNrp3EeGPJUJwK50wvqXBPmyFLFYRKnSHGfVPXB4b
 2Q/EdZdL2soVJbn6bhhpL7UGtNL+lLRnHOHudX9mQY+ZGfNRoFxnFEitu
 Kz/RRFNvT5WxrTD1lIyj0+uxxcYIc+8zEm0k5wuagFkLKjk4Q/D3tlivW
 bAuoMxsczEcRvX6X1FAgVOU3LXmvZhqWxtkQueGmcxOFYM9zQAJmOO3UM
 JX4xqcw6MlN24FbUROp2vR578lw2iwu7tCkK8tZRMrQzZY9iKiuX9dPCM g==;
X-CSE-ConnectionGUID: gxH4BHUGSPym2CAU19T7yQ==
X-CSE-MsgGUID: f5RY/0dPSKKY6lxLRTSJyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82242572"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82242572"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 16:13:08 -0800
X-CSE-ConnectionGUID: X8lCiwp/ShOrd9H8i+Wbyw==
X-CSE-MsgGUID: ijFuNlnVSlaO98iOP0VsCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208204367"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 16:13:08 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 16:13:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 16:13:06 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.34) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 16:13:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x4r1Q4orZSvKkp+YQhSRMJJoFq9rsN+pUDpEc44GqGXeLT386Lqo0ksBkDTlwVXLitGbKWv4JvCWePRjSoTEXE/VkkmilLR1hMNCFCgb2+f2cxJ6wJl0fraFm9it76nnPyZrY5EDIfUCgvdrAymI12g5mk8mJhDRS+vnGSdDsy0GWJqyotd1OAph5rWNkrFn87fjZ6f8KR+dMk8VQzVcYIQKdDpYHXGIhOTaJe/ADQ6KbyEzUgqK+HB+aQns7NdS43FgsRr5rvEgkcXCxGWd35LSXA01jNC0Sml+dc8Q3C6jArsZPUqht9JEOi2q0aqDu9j8zHLyAK8tZSJAxnTiOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SY+MkLn2HaKrOXqdbFX0dLKqat1QhaH5faXRvKkzWaE=;
 b=ca1tkA93Zbd7DHplnxbD5TiBlXz2/zaeB/Yk6hP4HTKYppxjUHU2KJKz3zg74/5SwhXQXYuNAfq/ZL7GNmGooY+57jMjCFfNYwqjq5fC/8Tde+7Mttlr/tkzr3BrnPElcLr3qxjDw13wppVK8mbRPdgGnvTUBZAmFhhyGHj3O3re16LcN4nMWq47HGbZJj3bYSka7zaTfV7C1uj7nRyVX3QwrTHQC8i6dlCDzgX2aKlohFQs92juzpsgBwrrjEDZOeTRsKue4/K0Is4oRmHmvnAlohUkBmHopEhjxo/t+hcEkw3BYzrA/TiYpyp1XDs3OZQlvB3ZujBjj845kAeCWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 00:13:03 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.007; Thu, 29 Jan 2026
 00:13:02 +0000
Date: Wed, 28 Jan 2026 16:13:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/i915/cdclk: Extend Wa_13012396614 to Xe3p_LPD
Message-ID: <20260129001300.GY458797@mdroper-desk1.amr.corp.intel.com>
References: <20260122-wa_13012396614-xe3p_lpd-v1-1-39d34a3a5b77@intel.com>
 <176912664059.185372.10158016819875139660@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176912664059.185372.10158016819875139660@a3b018990fe9>
X-ClientProxiedBy: BY3PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6796:EE_
X-MS-Office365-Filtering-Correlation-Id: b02d55b5-c4a7-4913-81d1-08de5ecb2afa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dOghmTmklAQ52e8PuE9J9RbVCZ51Ia1jhBpss6+O+zTAmWh3pdyOWU3nhOZF?=
 =?us-ascii?Q?qL4LgL2zlNfWxjmHSAQwRZCgMR6bT2t5aRmoTAy1YMLypmEe4LBNl8x+bOQY?=
 =?us-ascii?Q?8ZQi/ZMBKCc0sNQZ0Nd//xNGc1DFXPp0QokICwTFYo+gx1PkCUbZ3OWKa0T5?=
 =?us-ascii?Q?aJW5OH8I8JEGJ6KAF1C/BTZWqJr3kmnFPhH6O+E9pvJhEUoG7FYMkYNeu9M+?=
 =?us-ascii?Q?c9kgEM3mqn7T+GRY78DqHkuuGVPDdAd28xbBJ35ylahBZfxDnpGrQL27bCG/?=
 =?us-ascii?Q?gsW0bTzUGFVhS3l9LdZ6ErZ7tftM+y2jiElpJHsSt4NTOgG45J4DZpJ3aPMh?=
 =?us-ascii?Q?MuzGl9CB7eC4CK5SVPxtYLiZpft2QFQM908T+e+cJ8Wwa4b7sS3mDV3Ib7Dv?=
 =?us-ascii?Q?+rd1seAyB579Qd3X2xOp+4onTMfVtn7BhgieOJRCxy4rA6arvhtBBKFzQ2Ql?=
 =?us-ascii?Q?tmkUFWUGWDnIkOW1SN/ryyli0RbKOH+2ZMW3l46wppiV+J3JPEEx5DIWBkiC?=
 =?us-ascii?Q?y3pp/8ERf95BsP1T0XM7EB/4JOWLaMMeKaHKSQHWHclU7E+WOuAxeE53weaj?=
 =?us-ascii?Q?HMVrkgeL6260EQt3+B7u3IGzFSG0Kb4l4yxj20F1tM1e/W5GpTttxOL3Z6H6?=
 =?us-ascii?Q?8IzdOMfqm6WDuLMzaH/FhzXqLg1X/iy1x4wV9EIfOx7JIH806CIOq+un5h+Q?=
 =?us-ascii?Q?ap+WLMkmTxBplmQKHWxqWw4nOj9Q8XVdUz4vRC2FRX50fWJSOhs/1Tygc7Ql?=
 =?us-ascii?Q?TxU2jXtQ+F4g+44Bss1oTPLdlF31ptnspi/SUSWfSYdXfj9pYeN7t/YyN3gn?=
 =?us-ascii?Q?jjNYhHsxrGd1RvmzrTNua2Lqo/+OgXzxWBtO5IKWpbTJNE5J6n6UI9IEhxLh?=
 =?us-ascii?Q?TFPd54yFVGuOpAtqRv3CpWLjW/RnIOksLMiUPy8UHcIm9m4OiBhlBGbn8nat?=
 =?us-ascii?Q?NxSmmpswT2zdVHRL3PyjDVqoCDTIQVRFTjKmgEIuc4vxL/4AIsx27gBw7vnD?=
 =?us-ascii?Q?9ClXCiEqCgyDVnMpsXA2nO+677+ppSE0H1rHy553IXyae0JcLLV1VXOJPNap?=
 =?us-ascii?Q?T8fPQeHvyOvL1799IW6hy4ywIkVAPiFa4l6yzvaDi+EQc5GKU58b4hjoLhqU?=
 =?us-ascii?Q?0pKW6lHz2/JdUfyG/jc8qFPjurJznEdgqYYIiXES7eGyG3xQcfwDAnsB4YWb?=
 =?us-ascii?Q?im07r+jDzvH7jMCTu/uUasSS/xlr2TAX40uatvfjPKHmXnhdz/EXGxLLkS/c?=
 =?us-ascii?Q?WHNvMt4nzV+OrMuuwdNoTVSsYfHhepdoOWbgc9naEAWxVyX9r2hyGc+7L+k1?=
 =?us-ascii?Q?C3s6pZeE0j3fo/AZA5TccDAqFB6rV+UpqkTbxhtHUR5qo7fQfotzu4HkmCVG?=
 =?us-ascii?Q?I4VXvSa6vZNzVWbFnPe45Av8B3YHYsvQCZO4/XCOu/kJ9nwEjmB+3Pdd28bZ?=
 =?us-ascii?Q?qW7H69BVYgCJrealM55eNW3GLlcx/0NHiVL7xJ9tc5y0vFAzYhHldwyutbNW?=
 =?us-ascii?Q?0Lp5k7yn9KN9NDgvhT6VWtvCCRqMtQxSsSFJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yVidaD5biJzrofsVYsDkFhLvP8Q385E0aaUPpsib4szy4gosB0Oc4ewLbw/t?=
 =?us-ascii?Q?OT4T8wjQVuzAe1kmqjBAzD+qn3lqZS0rP+19oXx2xeKrZwV4HnlgSM3Div37?=
 =?us-ascii?Q?OeRjkFFfUhvGIJtZwJsfwvZ/qzfmZEZjWgKSCNifYwidE24feopSFiWuS23d?=
 =?us-ascii?Q?0PR4duX144HUcH6+GRYUu7N5ol3MhpWFTe5xeb/+8EhYVofUXQ0SuxDjstvC?=
 =?us-ascii?Q?Uuqm5jv6m6yJNcibZ9eWSQKqPbyMjJSmScUaoXeLg4lm8h1zN/eSG0+iDpOZ?=
 =?us-ascii?Q?qRF2++6235kGHyYCM2UrQp2IRo2BNZCthll3CvZNZsYmZ819T/jmtsYYj3pP?=
 =?us-ascii?Q?6NoAqVBiTP5kd3nQ7vS02++hY1le5JGhuDsscHcJByRsnsRiDeGTbdYR4rcb?=
 =?us-ascii?Q?XEfgMwi3s5lbESSl19Th7Gji3RvyX0aGW6fNkV026N6KX0A1Yznq/z5F6NZB?=
 =?us-ascii?Q?LocfNzo80d86ism0d9hmZvhlxRgcPRX/A4j/zkn87fcD0p5Sestfm0PjeySD?=
 =?us-ascii?Q?kTj+UYWopEt8s4/1fdl1V78sMh8uD4PS2DC7zL1cKPDqioq3hFlePVq5wbec?=
 =?us-ascii?Q?guZOQs1JTBWdlCswMViXPdc8Fp9wkU3BEbdRzaXL+pKvZPjRWW8YkMQG6Zlk?=
 =?us-ascii?Q?ln2Lqyv1rG6Gv1WM5slRwAPDFZNDri7+DqUz4GI8/Ail0DDYHFWU/18HlzL3?=
 =?us-ascii?Q?BllKkFZY3OB9in06mzkmTftcUI/Z3Yz8Sj74tprDyM/O1astBct9IblB5BUf?=
 =?us-ascii?Q?LUVlcXu4rn7nnnlGqEEmXherul/lFV9DXVp/B1k2bqKA+VBLoPEUPlsyzbwU?=
 =?us-ascii?Q?B5B+OeivxUfCS5kB0LusXkGoIjOE/82MV+jZJMczS8t2lz70G/xS+ePag//N?=
 =?us-ascii?Q?b/sp/80lFf3lLACGNZkObOVl/37ZJS234EU7cFqK72b+NEFTbLNt5V2+48y7?=
 =?us-ascii?Q?JdB59N2VQj+I7pts4IDdMIHxT4nERgrFScp47EtOp3silUho20XssfYq7S1x?=
 =?us-ascii?Q?k1jmKgUXrqjUNRsz89+o7YK2/Ps87bEmYw8Br7te32Q7zDokNLMBF26XKE0+?=
 =?us-ascii?Q?+C45TcFSxifw/zNO9iuOZjyOTAekRobnEkKoxboi/EAe9BLOk9lHMe2IPwFM?=
 =?us-ascii?Q?z9rGcgvN5HoxxmCrTp4uxzxpcCm0fga3XtQqfMTAVjDTjnZpVmGJ/o5pPPb9?=
 =?us-ascii?Q?x/sWmOX8AxWUiyXyVj5Wmw1yh5edD2tXJrvm3jsy6lWxqW0E6o9KUHwKaG05?=
 =?us-ascii?Q?Gi/8C3Wh1LchTeU1mDTz2cCTUxhSX1InJ36XEh9rGi13uo+94+T+I4Dcs7b9?=
 =?us-ascii?Q?qcSI0ezJMpJGe7XjeKa5oiAeNJ3FDTlEUYTO7hbBR8V4bCwULSEEWXAqBzEu?=
 =?us-ascii?Q?gY1yKJEiJVWExqkWCesEOgpzkIrsfuASj3opJNps6r3g4x2b55TmCCt5ICEa?=
 =?us-ascii?Q?SWFeYKkNckvuLJLuf+8FS2XK7ifV9Df/+7LqTY9Nll8gIUdD8v/PTeSV7NY3?=
 =?us-ascii?Q?2lrVLpgEpdQ8131NTbxOuokKbiSy7CzUHXaYtlsvdtjohm96zqvFbwZQga+e?=
 =?us-ascii?Q?2UMkmTp6CoVdtEC0WpkoQRlNBNmoLNEIEw7Z2MaMvxSD6RIwOh74Iy+W339r?=
 =?us-ascii?Q?kXrKO+IDrhaZ3TtQEu1qyMyKwbFOOrRPSjaSPDwTObrJuuqBjvzQw7JFh7Pw?=
 =?us-ascii?Q?/xOFqXct7jAFg9sL1fXt6nIlXYVzlGYr3kCf8NHnXErzwEaEkrE/vDozhzeM?=
 =?us-ascii?Q?uphPYuOKB70sSdGTPAWhpaDPYICr3yQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b02d55b5-c4a7-4913-81d1-08de5ecb2afa
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 00:13:02.8119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 75iMyZpg6691xsQxlvkX1+DqjTQLtamhYhCiVfQbcA21MBitpODY13OmOnIHYHBgds6aSz1/ihMOrINA8yhzI6w8p9CjKKKgk8mO98WsvgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4A627AA216
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 12:04:00AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cdclk: Extend Wa_13012396614 to Xe3p_LPD
> URL   : https://patchwork.freedesktop.org/series/160487/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17872_full -> Patchwork_160487v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_160487v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_160487v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_160487v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7]) -> ([PASS][8], [PASS][9], [INCOMPLETE][10], [PASS][11], [PASS][12])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk5/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk6/igt@i915_module_load@load.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk5/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk5/igt@i915_module_load@load.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk1/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk6/igt@i915_module_load@load.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk6/igt@i915_module_load@load.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk1/igt@i915_module_load@load.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@i915_module_load@load.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@i915_module_load@load.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@i915_module_load@load.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk6/igt@i915_module_load@load.html

CI might be confused on this one; [10] reported as a pass.

> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-dg1:          [PASS][13] -> [FAIL][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3:
>     - shard-dg1:          NOTRUN -> [FAIL][15]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a3.html

These look like fdo#14600 (looks like it hasn't been seen on DG1
previously though).


Neither of the issues above are related to the Xe3p workaround.  Applied
to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17872_full and Patchwork_160487v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [6.28] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_160487v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#8411]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#11078]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#11078])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#3281]) +7 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9323])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#9323])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#7697])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#6335])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_eio@suspend:
>     - shard-rkl:          [PASS][24] -> [ABORT][25] ([i915#15131])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-7/igt@gem_eio@suspend.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-1/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4525]) +2 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4525])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#4525])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu-1:       NOTRUN -> [ABORT][29] ([i915#11713])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#6334]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#2190])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#4613])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#4613]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-snb:          NOTRUN -> [SKIP][36] +28 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb4/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-glk:          NOTRUN -> [SKIP][37] ([i915#4613]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [PASS][38] -> [ABORT][39] ([i915#14809]) +1 other test abort
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4083]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#3282]) +3 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#13717])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4270])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#5190] / [i915#8428])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#3297])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3281] / [i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3297]) +2 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk10:        [PASS][48] -> [ABORT][49] ([i915#5566])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-glk10/igt@gen9_exec_parse@allowed-single.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk10/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#2527]) +5 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#2527] / [i915#2856])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][53] ([i915#13029] / [i915#14545])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#8399]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         NOTRUN -> [WARN][55] ([i915#13790] / [i915#2681]) +1 other test warn
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-rkl:          [PASS][56] -> [ABORT][57] ([i915#15060])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-8/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#4387])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#6245])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#5723])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [PASS][61] -> [DMESG-WARN][62] ([i915#4391] / [i915#4423]) +1 other test dmesg-warn
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-13/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#7707]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][64] ([i915#1769])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#5286]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#5286]) +7 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#5286]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3828])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3638]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6095]) +24 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#10307] / [i915#6095]) +66 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#12313]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
>     - shard-glk:          NOTRUN -> [SKIP][74] +99 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][75] ([i915#15582]) +1 other test incomplete
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk10/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#6095]) +31 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [PASS][77] -> [INCOMPLETE][78] ([i915#15582]) +1 other test incomplete
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#6095]) +29 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#14098] / [i915#6095]) +67 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#12313])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#6095]) +163 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#6095]) +95 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#13781]) +4 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#3742])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#11151] / [i915#7828]) +10 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#11151] / [i915#7828])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#11151] / [i915#7828])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#12655] / [i915#3555])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6944]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#15330] / [i915#3116])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#15330])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#6944] / [i915#7118] / [i915#9424]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@legacy-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#6944])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_content_protection@legacy-hdcp14.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#6944] / [i915#9424])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@suspend-resume@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][98] ([i915#7173])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-11/igt@kms_content_protection@suspend-resume@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#6944] / [i915#7118] / [i915#9424])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][101] ([i915#13566]) +1 other test fail
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-tglu-1:       NOTRUN -> [FAIL][102] ([i915#13566]) +3 other tests fail
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#13049]) +5 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#13049])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][105] ([i915#13566]) +2 other tests fail
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#13049])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#4103]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#4103]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][109] +26 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][110] +35 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#9067])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#9723])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3555] / [i915#3804])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3804])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#13749])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3840]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3955])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#2065] / [i915#4854])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#9337])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#3637] / [i915#9934]) +3 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][122] -> [TIMEOUT][123] ([i915#14033]) +1 other test timeout
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#9934]) +9 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3637] / [i915#9934]) +3 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-snb:          [PASS][126] -> [FAIL][127] ([i915#14600]) +1 other test fail
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-snb4/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#2587] / [i915#2672])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#2672]) +3 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#2672]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#15573]) +3 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yuv-linear-to-32bpp-yuv-linear-reflect-x.html
> 
>   * igt@kms_flip_scaled_crc@flip-p016-linear-to-p016-linear-reflect-x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#15573]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-p016-linear-to-p016-linear-reflect-x.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#1825]) +50 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#15574])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#15574]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#5439])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#15102] / [i915#3458]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] +22 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#15574]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-abgr161616f-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#8708]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#15102]) +7 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#15102])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#15102]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk10:        NOTRUN -> [SKIP][149] +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#5354]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#15574]) +7 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#15102] / [i915#3023]) +22 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#15102]) +17 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-tglu:         [PASS][154] -> [FAIL][155] ([i915#14867])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-tglu-10/igt@kms_hdmi_inject@inject-audio.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-10/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8228])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8228])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#12713])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#3555] / [i915#8228])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-11/igt@kms_hdr@static-swap.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-6/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [PASS][161] -> [SKIP][162] ([i915#3555] / [i915#8228])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_hdr@static-toggle.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#15460])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#15460])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [PASS][165] -> [SKIP][166] ([i915#15459])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#15459])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#15458])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#13522])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#6301])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][171] +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][172] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8821])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#13958])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#13958])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#13958])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [PASS][177] -> [SKIP][178] ([i915#6953])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#12343])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-7/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#3828])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#4281])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#15073]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg1:          [PASS][183] -> [SKIP][184] ([i915#15073])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#15073])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#6524]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#11520]) +4 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][188] ([i915#11520]) +2 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#11520]) +9 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-snb:          NOTRUN -> [SKIP][190] ([i915#11520]) +1 other test skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb4/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#11520]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#11520]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#9683])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#9732]) +9 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1072] / [i915#9732]) +25 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr-cursor-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#9732]) +10 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@psr-primary-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_psr@psr-primary-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#9685]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#5289])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#3555]) +2 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu:         NOTRUN -> [ABORT][201] ([i915#13179]) +1 other test abort
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][202] ([i915#15106]) +2 other tests fail
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb4/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#3555]) +2 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_setmode@invalid-clone-exclusive-crtc.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#3555]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#8623])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#11920])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [PASS][207] -> [FAIL][208] ([i915#15420]) +1 other test fail
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-mtlp-3/igt@kms_vrr@negative-basic.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-mtlp-2/igt@kms_vrr@negative-basic.html
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3555] / [i915#9906])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#9906]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#9906])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#9906])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#2434])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-rkl:          NOTRUN -> [FAIL][214] ([i915#14433])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][215] ([i915#13356] / [i915#14242])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-glk5/igt@perf_pmu@rc6-suspend.html
>     - shard-rkl:          [PASS][216] -> [INCOMPLETE][217] ([i915#13520])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@perf_pmu@rc6-suspend.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3291] / [i915#3708])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#9917]) +2 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][220] ([i915#12910]) +9 other tests fail
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1:
>     - shard-tglu:         NOTRUN -> [FAIL][221] ([i915#12910]) +18 other tests fail
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-8/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          [ABORT][222] ([i915#15152]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-1/igt@gem_workarounds@suspend-resume.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-8/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][224] ([i915#13356] / [i915#13820]) -> [PASS][225] +1 other test pass
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][226] ([i915#13729] / [i915#13821]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-snb1/igt@i915_pm_rps@reset.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic:
>     - shard-dg1:          [FAIL][228] ([i915#14888]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-14/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-12/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
> 
>   * igt@kms_async_flips@async-flip-hang@pipe-a-edp-1:
>     - shard-mtlp:         [DMESG-WARN][230] ([i915#12935]) -> [PASS][231] +2 other tests pass
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-mtlp-2/igt@kms_async_flips@async-flip-hang@pipe-a-edp-1.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-mtlp-3/igt@kms_async_flips@async-flip-hang@pipe-a-edp-1.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          [INCOMPLETE][232] ([i915#12761]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x128:
>     - shard-dg1:          [DMESG-WARN][234] ([i915#4423]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-16/igt@kms_cursor_crc@cursor-sliding-128x128.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-128x128.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-tglu:         [FAIL][236] ([i915#13566]) -> [PASS][237] +3 other tests pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-256x85.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [SKIP][238] ([i915#13707]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][240] ([i915#9878]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-snb:          [FAIL][242] ([i915#10826] / [i915#14600]) -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-vga1:
>     - shard-snb:          [FAIL][244] ([i915#10826]) -> [PASS][245]
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-vga1.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-vga1.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:
>     - shard-snb:          [FAIL][246] ([i915#14600]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-dg1:          [FAIL][248] ([i915#13027]) -> [PASS][249] +1 other test pass
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-16/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-19/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-rkl:          [INCOMPLETE][250] ([i915#6113]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg2:          [FAIL][252] ([i915#15389] / [i915#6880]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [SKIP][254] ([i915#3555] / [i915#8228]) -> [PASS][255]
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [SKIP][256] ([i915#3555] / [i915#8228]) -> [PASS][257] +1 other test pass
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-8/igt@kms_hdr@static-toggle.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-11/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [SKIP][258] ([i915#6953] / [i915#9423]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [SKIP][260] ([i915#15073]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-12/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][262] ([i915#14544] / [i915#15073]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][264] ([i915#15073]) -> [PASS][265] +2 other tests pass
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][267] ([i915#3555] / [i915#9323])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          [SKIP][268] ([i915#3555] / [i915#9323]) -> [SKIP][269] ([i915#14544] / [i915#3555] / [i915#9323])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          [SKIP][270] ([i915#4525]) -> [SKIP][271] ([i915#14544] / [i915#4525])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@gem_exec_balancer@parallel-bb-first.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#3281]) -> [SKIP][273] ([i915#3281]) +3 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][274] ([i915#3281]) -> [SKIP][275] ([i915#14544] / [i915#3281]) +3 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@gem_exec_reloc@basic-write-read.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][276] ([i915#14544] / [i915#7276]) -> [SKIP][277] ([i915#7276])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          [SKIP][278] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][279] ([i915#4613] / [i915#7582])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][280] ([i915#4613]) -> [SKIP][281] ([i915#14544] / [i915#4613]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@gem_lmem_swapping@massive-random.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#4613]) -> [SKIP][283] ([i915#4613]) +2 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_lmem_swapping@verify.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][284] ([i915#14544] / [i915#284]) -> [SKIP][285] ([i915#284])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_media_vme.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#3282]) -> [SKIP][287] ([i915#3282]) +2 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [SKIP][288] ([i915#13717]) -> [SKIP][289] ([i915#13717] / [i915#14544])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          [SKIP][290] ([i915#3282]) -> [SKIP][291] ([i915#14544] / [i915#3282]) +2 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          [SKIP][292] ([i915#14544] / [i915#3297]) -> [SKIP][293] ([i915#3297]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#2527]) -> [SKIP][295] ([i915#2527])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          [SKIP][296] ([i915#2527]) -> [SKIP][297] ([i915#14544] / [i915#2527])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][298] ([i915#14544] / [i915#6412]) -> [SKIP][299] ([i915#6412])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@i915_module_load@resize-bar.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          [SKIP][300] ([i915#8399]) -> [SKIP][301] ([i915#14544] / [i915#8399])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#1769] / [i915#3555]) -> [SKIP][303] ([i915#1769] / [i915#3555])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][304] ([i915#5286]) -> [SKIP][305] ([i915#14544] / [i915#5286]) +2 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#5286]) -> [SKIP][307] ([i915#5286]) +1 other test skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][308] ([i915#3638]) -> [SKIP][309] ([i915#14544] / [i915#3638])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-270.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#3638]) -> [SKIP][311] ([i915#3638]) +2 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][312] ([i915#3828]) -> [SKIP][313] ([i915#14544] / [i915#3828])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][314] ([i915#14544]) -> [SKIP][315] +9 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][316] ([i915#6095]) -> [SKIP][317] ([i915#14544] / [i915#6095]) +9 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
>     - shard-dg1:          [SKIP][318] ([i915#4423] / [i915#6095]) -> [SKIP][319] ([i915#6095])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-12/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-14/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][320] ([i915#14098] / [i915#6095]) -> [SKIP][321] ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][322] ([i915#12313] / [i915#14544]) -> [SKIP][323] ([i915#12313]) +1 other test skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][324] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][325] ([i915#14098] / [i915#6095]) +8 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][326] ([i915#3742]) -> [SKIP][327] ([i915#14544] / [i915#3742])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_cdclk@mode-transition.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-rkl:          [SKIP][328] ([i915#11151] / [i915#7828]) -> [SKIP][329] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-single.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-rkl:          [SKIP][330] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][331] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_chamelium_frames@vga-frame-dump.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-dg1:          [SKIP][332] ([i915#11151] / [i915#7828]) -> [SKIP][333] ([i915#11151] / [i915#4423] / [i915#7828])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg1:          [SKIP][334] ([i915#6944] / [i915#7116] / [i915#9424]) -> [SKIP][335] ([i915#4423] / [i915#6944] / [i915#7116] / [i915#9424])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-18/igt@kms_content_protection@atomic.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-13/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          [SKIP][336] ([i915#15330] / [i915#3116]) -> [SKIP][337] ([i915#14544] / [i915#15330] / [i915#3116])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-rkl:          [SKIP][338] ([i915#14544] / [i915#15330]) -> [SKIP][339] ([i915#15330]) +1 other test skip
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@lic-type-0-hdcp14:
>     - shard-dg2:          [FAIL][340] ([i915#7173]) -> [SKIP][341] ([i915#6944])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-11/igt@kms_content_protection@lic-type-0-hdcp14.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-6/igt@kms_content_protection@lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [FAIL][342] ([i915#7173]) -> [SKIP][343] ([i915#6944] / [i915#7118])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-11/igt@kms_content_protection@srm.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@suspend-resume:
>     - shard-dg2:          [SKIP][344] ([i915#6944]) -> [FAIL][345] ([i915#7173])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-8/igt@kms_content_protection@suspend-resume.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-11/igt@kms_content_protection@suspend-resume.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][346] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][347] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_content_protection@type1.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][348] ([i915#14544] / [i915#3555]) -> [SKIP][349] ([i915#3555]) +3 other tests skip
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][350] -> [SKIP][351] ([i915#14544]) +10 other tests skip
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][352] ([i915#14544] / [i915#4103]) -> [SKIP][353] ([i915#4103])
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#9723]) -> [SKIP][355] ([i915#9723])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          [SKIP][356] ([i915#13707] / [i915#14544]) -> [SKIP][357] ([i915#13707])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][359] ([i915#3555] / [i915#3840])
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][360] ([i915#14544] / [i915#3955]) -> [SKIP][361] ([i915#3955])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          [SKIP][362] ([i915#1839]) -> [SKIP][363] ([i915#14544] / [i915#1839])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_feature_discovery@display-3x.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#1839]) -> [SKIP][365] ([i915#1839])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_feature_discovery@display-4x.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          [SKIP][366] ([i915#9934]) -> [SKIP][367] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#9934]) -> [SKIP][369] ([i915#9934]) +3 other tests skip
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#2672]) -> [SKIP][371] ([i915#2672]) +3 other tests skip
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][373] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][374] ([i915#2672] / [i915#3555]) -> [SKIP][375] ([i915#14544] / [i915#2672] / [i915#3555]) +3 other tests skip
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][376] ([i915#2672]) -> [SKIP][377] ([i915#14544] / [i915#2672]) +3 other tests skip
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][378] ([i915#15574]) -> [SKIP][379] ([i915#14544] / [i915#15574])
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-mmap-cpu.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-abgr161616f-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt:
>     - shard-rkl:          [SKIP][380] ([i915#14544] / [i915#1825]) -> [SKIP][381] ([i915#1825]) +20 other tests skip
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg1:          [SKIP][382] ([i915#4423]) -> [SKIP][383]
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][384] ([i915#15102]) -> [SKIP][385] ([i915#14544] / [i915#15102]) +2 other tests skip
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#15102]) -> [SKIP][387] ([i915#15102])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][389] ([i915#15102] / [i915#3023]) +6 other tests skip
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-rkl:          [SKIP][390] ([i915#15102] / [i915#3023]) -> [SKIP][391] ([i915#14544] / [i915#15102] / [i915#3023]) +10 other tests skip
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-rte.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [SKIP][392] ([i915#1825]) -> [SKIP][393] ([i915#14544] / [i915#1825]) +14 other tests skip
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-blt:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#15574]) -> [SKIP][395] ([i915#15574]) +4 other tests skip
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-blt.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-abgr161616f-draw-blt.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][396] ([i915#13331]) -> [SKIP][397] ([i915#12713])
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-dg1:          [SKIP][398] ([i915#15460] / [i915#4423]) -> [SKIP][399] ([i915#15460])
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-dg1-16/igt@kms_joiner@invalid-modeset-big-joiner.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-dg1-19/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][400] ([i915#3555]) -> [SKIP][401] ([i915#14544] / [i915#3555]) +1 other test skip
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_plane_lowres@tiling-yf.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          [SKIP][402] ([i915#14259]) -> [SKIP][403] ([i915#14259] / [i915#14544])
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_plane_multiple@tiling-4.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#15329]) -> [SKIP][405] ([i915#15329]) +3 other tests skip
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][406] ([i915#15329]) -> [SKIP][407] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          [SKIP][408] ([i915#5354]) -> [SKIP][409] ([i915#14544] / [i915#5354])
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_pm_backlight@bad-brightness.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#9685]) -> [SKIP][411] ([i915#9685])
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][412] ([i915#14544] / [i915#9340]) -> [SKIP][413] ([i915#3828])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][414] ([i915#15073]) -> [SKIP][415] ([i915#14544] / [i915#15073]) +1 other test skip
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_prime@basic-crc-vgem@second-to-first:
>     - shard-mtlp:         [DMESG-WARN][416] -> [DMESG-WARN][417] ([i915#12935]) +1 other test dmesg-warn
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-mtlp-2/igt@kms_prime@basic-crc-vgem@second-to-first.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-mtlp-3/igt@kms_prime@basic-crc-vgem@second-to-first.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][418] ([i915#11520] / [i915#14544]) -> [SKIP][419] ([i915#11520]) +5 other tests skip
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][420] ([i915#11520]) -> [SKIP][421] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          [SKIP][422] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][423] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-rkl:          [SKIP][424] ([i915#1072] / [i915#9732]) -> [SKIP][425] ([i915#1072] / [i915#14544] / [i915#9732]) +10 other tests skip
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][426] ([i915#5289]) -> [SKIP][427] ([i915#14544] / [i915#5289])
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#5289]) -> [SKIP][429] ([i915#5289]) +1 other test skip
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-rkl:          [SKIP][430] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][431] ([i915#15243] / [i915#3555])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@kms_vrr@flip-basic.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          [SKIP][432] ([i915#15243] / [i915#3555]) -> [SKIP][433] ([i915#14544] / [i915#15243] / [i915#3555])
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@kms_vrr@flipline.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          [SKIP][434] ([i915#3555] / [i915#9906]) -> [SKIP][435] ([i915#14544] / [i915#3555] / [i915#9906])
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-3/igt@kms_vrr@negative-basic.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#2436]) -> [SKIP][437] ([i915#2436])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][439] ([i915#3291] / [i915#3708])
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-6/igt@prime_vgem@basic-read.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-2/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][440] ([i915#3708]) -> [SKIP][441] ([i915#14544] / [i915#3708])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17872/shard-rkl-4/igt@prime_vgem@fence-read-hang.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12935]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12935
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
>   [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
>   [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15573]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15573
>   [i915#15574]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15574
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17872 -> Patchwork_160487v1
> 
>   CI-20190529: 20190529
>   CI_DRM_17872: 75950b1567cb40a67e93cb3912e023219745ff60 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8712: 8712
>   Patchwork_160487v1: 75950b1567cb40a67e93cb3912e023219745ff60 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160487v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
