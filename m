Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDF1CD8A14
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 10:46:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF3710E142;
	Tue, 23 Dec 2025 09:46:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oou7AamQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8718110E130;
 Tue, 23 Dec 2025 09:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766483210; x=1798019210;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=xlqJlg7lBu4PFII1utjH1iuZDJqXS5z4hYltPi5Uv9I=;
 b=Oou7AamQ4zYbroTJeOfQNhZVZ2JrD+B+T1Wc6yIP9KT4eUC/mTfqJ10M
 gSTKjAR14aK0V/mUvC5fmXSB+StyxnwQM3LG8EgAUc5J7ytCe4opPZzJ6
 XFmkrz7aZT7Gka+zpfTeJ0rFka1cyPNvxLQSXktlfGlzXH0sM6wdV84p4
 fwdaiCkxl0/Pk5mvQgV/GdA5ur5wbC44NbRO2joSYFjDdtYJGVLynTtbR
 3eprIrnolT5czv34NsR4oepqnu67q+saMCIin88EgeqAXxeEU/Eas2BKo
 FSYrbM4pr/2a6BEEFeNRuGdKJhH2nbDIW7Ya4ewvXK1vSes3+K0L/nOKz w==;
X-CSE-ConnectionGUID: o6hbasAtT0+yM0fKRLeXkw==
X-CSE-MsgGUID: FFTMkcgHQn2EUM/6HBQ1Nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79450121"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="79450121"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:46:50 -0800
X-CSE-ConnectionGUID: 7CgoDK3WSt+AoP2SzobSng==
X-CSE-MsgGUID: kOlXgkUsQF+BiieCXe7T3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199404802"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 01:46:48 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 01:46:48 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 01:46:48 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 01:46:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YtBvFJMcbmt3vWcKz7c+3cBWbym1Y9c9Ics6LuBtBIqkddWOvSZqdn+DXfDsjDmlT/xBoVANsmE9V2Nxd/oiiQejXadxc9eZgWH0Tw4PP1Cj/m12w5alDIRYfgspmN9O4U8N2Ve66oaP/d+Msxx6HmRgj+aExxjsGt7ifD6P+TIFfmxTbR43D2UjXxeokZtXc2BgwO8yVVIzt3+LICP0D9nZf2dnwXVwgr/jlqezvyPCAHrNPig47nyDI41/t3lTQTvPktjM+T2v3WUuLWUJHvyuhjY5A1limj+HRBPTZw8n/VZ96znl/ZTMqT2TYSHjZ/iouwYXaN68NCMG7mTHmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9aCkpBe54ykGQRa9+L+kVQNpOOuIjTwD6GE+FQ2Mgd8=;
 b=cwqLg3qYV/4WdlXYNrFYSuNQdQWZhLITCy1IPFrVg0Djj+Xh27M/aA18r5xmPyf6I+ARjI0X5iuavdf19pL0bDzGBe0F4ebZHaA/x1+TRi0CZ1mNAckKsAo9t0QDI1xofBZ6aiKFkqZrYRYzy8T+RMYo75oWZiTbcQiwfFJltfcBzbU81BrOWFPDCnvSsvIU2NDvHUjlvjXIJSDLGXWlN2Sok/UfEwor5w5nBONLHyv/PquIP8RM0zSiHHsgvPVjjDzPSMuOwxlkznb99z6mQDo3W4Jg7JUu4L+twekM4EYLV3vvFFRi10davPkwZ+HIIl4vebtckLX+cuKMbiBo8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by PH7PR11MB8276.namprd11.prod.outlook.com (2603:10b6:510:1af::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Tue, 23 Dec
 2025 09:46:41 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e%4]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 09:46:40 +0000
Date: Tue, 23 Dec 2025 11:46:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
Message-ID: <aUpk5nfyg-qYn2Uc@ideak-desk>
References: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
 <aUk_5GZQrDIDN8fK@ideak-desk>
 <7ee37384-d461-4732-ba8a-5429af979802@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7ee37384-d461-4732-ba8a-5429af979802@intel.com>
X-ClientProxiedBy: LO4P265CA0245.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:350::17) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|PH7PR11MB8276:EE_
X-MS-Office365-Filtering-Correlation-Id: 74137e82-6c37-4afb-98ec-08de42082b9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7w0gax3aF3UzFKS79fD13/zBYiibnsiWciDkjcoQUsFj5CuieY0Tg/fq+7LE?=
 =?us-ascii?Q?RnsPm/h7hpjnjhuKSaY5W9koxWncZoM0hvQE7RCeTaXGh2Ucpu4zAP90puOY?=
 =?us-ascii?Q?+11d8w5yShmNMZR46m2jN0ucCX4nO1tYx5BUfT9YRAKg85To/1VSNIB0d8D4?=
 =?us-ascii?Q?fmX9SsNiI9FSOfMnH390TZ9ognZ6YgFu1SSoUsIO4SiDWGBu6ippDSMkIAjn?=
 =?us-ascii?Q?ba0sXmI75Hj18Y5MuLWCGpesmj4ALUJT69ntWuOVC6IRhHudoHnirfLWHHCX?=
 =?us-ascii?Q?3QTJcQuvb6pueLcHpO7MAfBApDaMcuTarVkziKWo7qI9XWL3wHHSi5QFrvm7?=
 =?us-ascii?Q?3bNvANJPzuUAjGp+9OsnfeoSJOC2uldPywOkHa3hIw9Yr4Z3xmSHRZS4Cbpm?=
 =?us-ascii?Q?0MK0E1p8Js5P7Q4Kddz6tNufGu32CgNajLbLDPBYgNpeMwhO09+IG56rrZ4E?=
 =?us-ascii?Q?zhuCaN7LkIcdm9eZSfUwgNwUtJofR8VL1NhCcxHNgNYdFuOfHpQGKcw8a9Ti?=
 =?us-ascii?Q?GTqF+zioir648uQg98bEWRNPBtfdChvIcovNKQEZVBBHciGXR+c9HKbMBEuK?=
 =?us-ascii?Q?Ss00O1nt2cIvkoQo3ilnO8RhmH1hqMy20f3+rgWg89Kk/MWvP1bo2khbKFcn?=
 =?us-ascii?Q?Fi6dQ7gHkea5A3u0x9QmowkDd9YKcBm/E0Kp2s8HBVWeSx21LI1ikuh+yLQG?=
 =?us-ascii?Q?AhHnZ0Xb4b8599h+qn5msqshM1X4V0Ir0oA3W7Lt6qH/gFxbAaHqx5+6dqYo?=
 =?us-ascii?Q?tn3r9LGd1AiFfWpW837yYFjaYyqgo69ntDJ4E6d8blrU6VwyH7VnIF4z/PsR?=
 =?us-ascii?Q?87XJYV1LDPpdEOYvs3qpnhm2vW/JhU7AIzLF0wKgkvLeEwxH7n7J0VlT+sFV?=
 =?us-ascii?Q?INB6jfdXAuLudMD/2UKzL1FAS0aGnMQZU5aDSVwCrtpBh21N1C7G+NXH07kR?=
 =?us-ascii?Q?fGPwAfrIb+Slpbu9wxAIliJZOUULHGMsZ3Zte6jwxh0NL4n+8ZFbi2ymFyZF?=
 =?us-ascii?Q?Q6e629nmNTwtX4baU7oRJ7w5eP49mX4AjZNvwGRfUtLyhsR+OuXeh6Kbwo6N?=
 =?us-ascii?Q?X0SrrzOJt8tmNoSKmeTpDu8Iui/awRrrfh6kNPxS6Qrm+7iTTr31UOs01LnJ?=
 =?us-ascii?Q?klgH+GbSjy2veYzP+QneSZUlwxh/0XblVGScQlDTCsCusberyClCV3am/h/n?=
 =?us-ascii?Q?9fFGQKmYu/UTue9U8fA3s304CerslDZhcLBySlhrt2y8k41g1CzCPnOKQsRs?=
 =?us-ascii?Q?FL/XEIK+unUUltnkb7iOzoFdRQd+etb3RV5eBvKVLDUWstIe/NpMc5DrFIj0?=
 =?us-ascii?Q?oomS+tX5xJv5t8HXLkMp+dQDkGPzu/vJLrm5vYPi8YUQ45+ntzSTGSwRnBCZ?=
 =?us-ascii?Q?dqIfSDLSZczKambyJZtWrLhsylU6rR9kBsQ2nnBUrYA2d7xDzq41S5fDkyP0?=
 =?us-ascii?Q?FfVpMf+U560aCWRjHg1H0F1aCux2pX96?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bt19JJHkWUmsiW6r0kaxPHQekpHzCSdTeTUY/McGZcsPjeVxQaliN72BFBHH?=
 =?us-ascii?Q?/NJueqpWE5dUNA/deHgjPganJSAIos3Aoivfb1Jav38ohy8rGw7FVXawEGI+?=
 =?us-ascii?Q?zFSDz3Rv774bv34z/PKO9WjXV1BLIYR1ms5IgASnI3PGJ5tQc0FTyJ3A4YPP?=
 =?us-ascii?Q?cmVvUBPje9smQ2EhvKfI/rI40wqr6qj2oNsHguJRgAGMKT0A6Dy6VQsO1zQO?=
 =?us-ascii?Q?5bl+C/vSDiQM8/NsACffICESTTT4i//F5XWooC7Vp7wU84buNivSIDHpuzOR?=
 =?us-ascii?Q?hnBPeOwzily9ozt23WlDcX6FBlCX6D4YbmvfWYGPKH9H257eOyU+Gq5JTaGb?=
 =?us-ascii?Q?X07inSgOANYFYlsvgr4qpTCXPnkNV3/YkpQopn49JF50OW2ZyK4P04LXNK2+?=
 =?us-ascii?Q?GFCqjwl8p4spc6wqjGyJbqE4Z9BABgvYnU7H+h3Epug2IS7PQ7BDD3KTj+tS?=
 =?us-ascii?Q?AQmK3O1DSPr4rqtrYvttMEoNKkwms+uLn0JMgvwH8YCFw95vUlj0MeN/Imor?=
 =?us-ascii?Q?v1QKRREFqFJh8Og2y/fuSu7L6L+KLAhSy6WU2gaSk4ARyoY1covk3HwNpwpg?=
 =?us-ascii?Q?l42UMIBHQEfSSJaGTTjps+xHmOTxqCaQMxNYPMdU3vW4gzdzDYhnvMs2lkHg?=
 =?us-ascii?Q?2T4KTjGt/AfSG2cpQPzrXwGmdtX5V0qP8eYQ3B93j8xJfZayzjll2VPORtk/?=
 =?us-ascii?Q?uYdbMXVV0lt+oivjSA21nY5ye+quMslBu0yGDP6lNX5SpAzOwk18cdV/gWNi?=
 =?us-ascii?Q?gMFdwjbqpI8tUxwRrPOWoiqwg+zsFN9LA5WAICO7Hmu9Ji602mO5LkKRigFP?=
 =?us-ascii?Q?3oZ2vgM4vGYsenFDGeAPfYXyjbXVeGma6u2L2iEmIPHepC6IFlGcO5aCis1I?=
 =?us-ascii?Q?jDSsAlR5FCcupJG9Tu7Wum6bth4KESLOB/e4XdpzXCl+EB4ZTBJvxZIUdImc?=
 =?us-ascii?Q?CP5HVahDZceL/9LXKTN5smc8QBk5WCuEd41q6yJFX/xhKUe8nMFe/CemPL0E?=
 =?us-ascii?Q?gV6+O0zbs4BuP8aUeHutsI8EnCqp/Meib+csvmH4lw3DsyXwUHp+yo6ZTWyw?=
 =?us-ascii?Q?8dCLxoKJKMMl2D+Otr19YaJ4ECaAUhEoNLeewsdCAXHZXeaySzJhrWAp/tbH?=
 =?us-ascii?Q?F+W6WqFTUm0+rYNgK7qaEINh5xI2rGkGmuB22XKIIrdrm84fNjX2hGfdAlil?=
 =?us-ascii?Q?nGtge9NHDOHg8hBYd9IIOwf9Xky5BpxkIbzOleg4APylcWkmitSSTVeOiiiI?=
 =?us-ascii?Q?YClWC8jpv8zaA3rguarDkF+BHPZWciMBzmnor41xU/T7KkyDCr4vzeXg6JDb?=
 =?us-ascii?Q?99yREmlmtwpbW8Jp/P3pcuHAEwR+hFgnvrzqy4TJ+ydWWF15V/B7kheqON2Q?=
 =?us-ascii?Q?oqB/4ngc31AkkgF7jzqcob1op9VEQGt0ikIQBcwk+hZbwBilP7Y4CRB5cVrv?=
 =?us-ascii?Q?WV75SpOJQxf/Eup+Mn57reAPaSu2sQOW1l+qL9hkRDzxGinfcNChtyN2aXmW?=
 =?us-ascii?Q?MYGY9Puui+0WsAeJEdDJSy7dZ7Yfj7qog6gUTdGxt0+hGYKU5qnjQzq6s7bP?=
 =?us-ascii?Q?aeIvc2maQ6kIgq5m8sLbt/gOSUy+s/bVNdsCSm2DgkDYnn/kjyxyMwSfrTzF?=
 =?us-ascii?Q?RhvaL6UPrMGdiLXpDtB7+nSR3ricSEXnQnTs9LiqAxRai9/fWNNRUupuIslH?=
 =?us-ascii?Q?vO+7wdMLGMli/iDxFWXIJNhP0KFnldDJlQytXp+nIH0+iW5mWz2iSZJvhjhm?=
 =?us-ascii?Q?YlTPUa+hoJ9qgcdPuojj9u6i37GbG0POOgNFXm3PDdHiYHt8ZVxU/MzKwUIV?=
X-MS-Exchange-AntiSpam-MessageData-1: KmR8nGFdoX1DFg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 74137e82-6c37-4afb-98ec-08de42082b9d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 09:46:40.9113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nPgcj4tK2LsSJ+1Uc/71GDhQByq8CF+2p0Zls3iCaygYbQNM/L3q5rh4t1Wf/ikOL4jO1OYkDFUTBiuUw8jHVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8276
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

On Tue, Dec 23, 2025 at 11:05:59AM +0530, Nautiyal, Ankit K wrote:
> 
> On 12/22/2025 6:26 PM, Imre Deak wrote:
> > On Mon, Dec 22, 2025 at 10:14:43AM +0530, Ankit Nautiyal wrote:
> > > When DSC is enabled on a pipe, the pipe pixel rate input to the
> > > CDCLK frequency and pipe joining calculation needs an adjustment to
> > > account for compression overhead "bubbles" added at each horizontal
> > > slice boundary.
> > > 
> > > Account for this overhead while computing min cdclk required for DSC.
> > > 
> > > v2: Get rid of the scaling factor and return unchanged pixel-rate
> > > instead of 0.
> > > 
> > > Bspec:68912
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
> > >   1 file changed, 41 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > index ad5fe841e4b3..b91cd009be9d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > @@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
> > >   	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
> > >   }
> > > +static
> > > +int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
> > > +					      int dsc_horizontal_slices)
> > > +{
> > > +	int dsc_slice_bubbles;
> > > +	u64 num;
> > > +
> > > +	if (!htotal)
> > Should this also warn as !slice_width below?
> 
> Yeah can add add warn here..
> 
> > > +		return pixel_rate;
> > > +
> > > +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
> > > +	num = (u64)pixel_rate * (u64)(htotal + dsc_slice_bubbles);
> > Better to use mul_u32_u32() to avoid the casts and 64-bit x 64-bit
> > multiplication.
> 
> Ok sure will use mul_u32_u32 to avoid casts here.
> 
> > > +
> > > +	return (int)DIV_ROUND_UP_ULL(num, (u64)htotal);
> > Both casts are ensured by the compiler already, so no need for doing
> > them explicitly.
> 
> Got it.
> 
> > > +}
> > > +
> > > +static
> > > +int pixel_rate_with_dsc_bubbles(const struct intel_crtc_state *crtc_state, int pixel_rate)
> > > +{
> > > +	struct intel_display *display = to_intel_display(crtc_state);
> > > +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > > +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> > > +	int dsc_horizontal_slices;
> > > +
> > > +	if (drm_WARN_ON(display->drm, !vdsc_cfg->slice_width))
> > > +		return pixel_rate;
> > > +
> > > +	dsc_horizontal_slices = vdsc_cfg->pic_width / vdsc_cfg->slice_width;
> > The above looks to be the same as crtc_state->dsc.slice_count, aka the
> > slices per scanline, could you use that instead?
> 
> Apparently we are not filling dsc.slice_count. We are filling
> dsc.slice_width and the pic_width.

dsc.slice_count is computed for the given encoder and dsc.slice_width is
computed based on that (as vdsc->pic_width / crtc_state->dsc.slice_count).

> This parameter seems to be unused, perhaps can be dropped?

It's slice_count what is computed for a particular encoder and the rest
of DSC parameters are only derived from slice_count the same way for all
encoders.

> Regards,
> Ankit
> 
> > > +
> > > +	return intel_dsc_get_pixel_rate_with_dsc_bubbles(pixel_rate,
> > > +							 adjusted_mode->crtc_htotal,
> > > +							 dsc_horizontal_slices);
> > > +}
> > > +
> > >   int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > >   {
> > >   	struct intel_display *display = to_intel_display(crtc_state);
> > >   	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
> > > +	int pixel_rate;
> > >   	int min_cdclk;
> > >   	if (!crtc_state->dsc.compression_enable)
> > >   		return 0;
> > > +	pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, crtc_state->pixel_rate);
> > > +
> > >   	/*
> > >   	 * When we decide to use only one VDSC engine, since
> > >   	 * each VDSC operates with 1 ppc throughput, pixel clock
> > > @@ -1066,7 +1103,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > >   	 * If there 2 VDSC engines, then pixel clock can't be higher than
> > >   	 * VDSC clock(cdclk) * 2 and so on.
> > >   	 */
> > > -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
> > > +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
> > >   	if (crtc_state->joiner_pipes) {
> > >   		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
> > > @@ -1084,9 +1121,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > >   		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
> > >   		 */
> > >   		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
> > > -		int min_cdclk_bj =
> > > -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> > > -			 pixel_clock) / (2 * bigjoiner_interface_bits);
> > > +		int adjusted_pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, pixel_clock);
> > > +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> > > +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
> > >   		min_cdclk = max(min_cdclk, min_cdclk_bj);
> > >   	}
> > > -- 
> > > 2.45.2
> > > 
