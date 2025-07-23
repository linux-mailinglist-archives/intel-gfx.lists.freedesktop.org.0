Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6BFB0F878
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jul 2025 18:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829AA10E82C;
	Wed, 23 Jul 2025 16:54:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItAxvvNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CB1110E82C;
 Wed, 23 Jul 2025 16:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753289671; x=1784825671;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=hmDUPDU31wlp8LxLxPbcSIsb4e6jN9V8566EkLv5wrQ=;
 b=ItAxvvNb7TWqVpRO4Ek/gPVhrDrcA3thkmYwIVjDKyih7cvBaPqLEP3L
 PLZGdlj/0rTLx+Yo6iRJLxQij3sRdFzFVXTKwWPhOV7Hhk6eSVVqDbPuL
 zNXdJ86L4PY4WAsHHyNyUxsiT1d5J0YAKwqCxqpe1lN06E0dRmymcBjvh
 tSpd6LmcZ7Cc4FTNY4kvy141BqXerBjcG1vuwIsja1HjteeU67smg/nZc
 hQsxEeOFlWQrgbw84uF3DGrn9PA6NkB0dn7uUaLCRcyZAxRIIEgxVSsFC
 FK3N7CZYfhXDGL2yfKJkLmHobOA3S/uBQX9tBM5M3HmOGjKDyVYFSIFbd Q==;
X-CSE-ConnectionGUID: 2iujM+h5R1iVPn9+siJzFA==
X-CSE-MsgGUID: MoF4f7N4T+qW4h/sIwrE9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55460584"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55460584"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 09:54:31 -0700
X-CSE-ConnectionGUID: E7MNyDqjSi6MwVwUxcAZSQ==
X-CSE-MsgGUID: z3Z90iH1QP2Ed7Pr3GNeaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="160171334"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 09:54:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 09:54:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 09:54:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 09:54:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gu0IPeJpb+M3gSM7VzZXTDh9D7XKiJ3mvpdnI+wlGXM1LQpAbMIYCUma9wR9hk71UYGn4PNziipXTsHobSX+VlxfppXh4UkXycXB5bnTdGrsagAqv94JV50kTICy8b5KQLsgbTEJfO82UCGNNY9fEBb/rKbjCgOVL331j1fQU8VpDMuS+nJBeBT/SZGnmk51eYkVrPKFxXCG4+cU2alPetjL589s0dRCY+76K7HXaUDKRfG1UWIGGY6Dq60N2HEfA0g/6Ur8498cNj8BGxdGYJbtq6mHZfiuc3EkK75y89JkRQ6TqXAXkQDc2vAFWPnhjqvdEVL0Krb4WrfuZs83vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SiDv7PL+hzxEPAvqHGHcwmf6eZTLtJm37Rvll+h26AM=;
 b=KjvVGT0Nua3IgEzDAGuD1+FtI5CicyubMbBobPw+i2/y8P0+y4Eoda1aZLKgKtVw+AShdhDJFyU7Rabo3J+PivO2+9KibM8Ys1IJOqwhiBJhquhXPT7afe0N8oBz+9nmZJCFasHShwlCDXH8MyxMvgeyaOUz0pn+oOqr7avRM6hEywDvYVKAwjIOj1XOkuY9lSBn1iWihUpF2PHEtNqxY5QGFJFF0fvjdIGwAFa4s4u6W1AtngLI1xrUbs7OfWal17h6f235sxyd9smUr82qLA69in2bylzWj5lUEVqLQkvgMr3BRf6jyhQ2GoOEwbUQxh/wK+XYw9GYi+OAzuOrfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Wed, 23 Jul
 2025 16:54:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Wed, 23 Jul 2025
 16:54:27 +0000
Date: Wed, 23 Jul 2025 19:54:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
Message-ID: <aIETuYrNqyCKV-wk@ideak-desk>
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aIDhTEcPoL5Y8Aoj@intel.com>
X-ClientProxiedBy: LO4P302CA0024.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF57F27BA08:EE_
X-MS-Office365-Filtering-Correlation-Id: 8520d7cb-8fcc-4b66-f0b2-08ddca0995c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?exCGJjV79weXBKqbgAsSPDfx57bzGSTODLJlobAEQNLEgoSK7M/duzoVNJW5?=
 =?us-ascii?Q?0YninMyKOuC2T8LzBOvRUf85LBTQA3c49TPFthZYupTVoS2TUIBj6z/neVe7?=
 =?us-ascii?Q?Ai3NEHmhowD0AT8ViWaLrw7wWjM00TX1voagYs7kAhhiyTk140rS6QG7PzfM?=
 =?us-ascii?Q?0CelGESoGQy7ZhKaTu86Cppp9eEPzWkBU9YhJAhXMb6C5J9jCJi8Cix9+uID?=
 =?us-ascii?Q?KsBiSj2yGnK1L8yrMZk0eJvNTMpRFcDXGgR+28m0QBhHeCQ5iA8sicd6KV3V?=
 =?us-ascii?Q?b0m6vgJ6HgkciMLgf8KiS1qupiD2nFWkMmlBZafebDqCKIuEzdNwAcR2nmUh?=
 =?us-ascii?Q?j3JXBntpPtAtzCCYItWMqwRkNqxixBnKBBVPqqW4e2xyYjPGSlJ8EyoCfgsT?=
 =?us-ascii?Q?z0m7VqMHfaxhYWbM13oiN31nYYlCBQ4YyP2zvYpEpahAw5jfORpxfG83/u+W?=
 =?us-ascii?Q?I/BjCiREebYSQQXvhEQy1nPFidOKfz1KiF3w7oXDPP8IpzUQNpo67YFLPmeS?=
 =?us-ascii?Q?1e03mj8tiQ6nZRTflDI8IZzBzgc/NkygPVtLlp0C7O2+SSbEMtZx6dOtOpWS?=
 =?us-ascii?Q?vZIy5xnJdhlxQN1lYFJUdjoNO8JkPjqupbH4jGuK0f1Rb9FJmQgXbUsD+3XC?=
 =?us-ascii?Q?kK8oSUvZU+VMj3DReCpdAGvTEDj8sRElr7jYWPUYHq76yvXpevsdc8B3RliG?=
 =?us-ascii?Q?DPhVJs6+ImKVrTvs7t8MLMLg0KH1rLtW0LSW2D6naNiTMxO384ZmRMxkIzo7?=
 =?us-ascii?Q?uj3unqw/7PaSSlZXZ40pwGZLvW3n7B8JGCNvzwzoarXSb+RBVGikh0itrOOb?=
 =?us-ascii?Q?wFl/gYnVnFemIKLEgxs0TtVbOEj78n3DiR91By3mmn2C24O/1HQNRLeRtQFw?=
 =?us-ascii?Q?mHoq/dEpVHSfoQ1HKbB5d4WUwMDA+RTObvzUz4Ckvj446cTnHCckJzyJkmmY?=
 =?us-ascii?Q?yUteutzbIcGU7kMGnB00G5o4Uu/GazjsxUOXLUfX1IWMYVZa/UCbCkxe3aoN?=
 =?us-ascii?Q?9nNxknYnKZcDd9sw1FIBPCzZYBZjQk7L+5Sd6xFKyvk892SKETAETdLXYqay?=
 =?us-ascii?Q?oYShbAI54G61AFeCLX2ILVtROQgLKTBH07BH8kZHa+Y2cYy5ngj2aJgRuKxS?=
 =?us-ascii?Q?a/ejzzzm7dB2knL/qXMHo2hD/4wUtoyw+enFQv+6voGGZFIxJDT0c8Bqnc6T?=
 =?us-ascii?Q?AKlLVia112xXTH4Zrb+5/2atzl2UHf1XrMtCBKEKTjuk6lBNDeyhJrXcSjFK?=
 =?us-ascii?Q?p0GccbqFgvyX8+VtoBB452Yf0wSeRqLgux7+3GpIwycP2tflXEaQCCcP/PFp?=
 =?us-ascii?Q?miJEkKB2nXk+V29uqFwLQuZ/SGvBG08/RRt8l6SSgUzQWZ09SWja19P2RjZy?=
 =?us-ascii?Q?rMJk/2c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w3urMabuN9flFGDKX/wa6aO6wGdmxa0gU+BKU1emEnX1rPS3tIDpZcOHG1CJ?=
 =?us-ascii?Q?dcyeK4w29xFIfJMP8nxx5O1BZbfAXWUZ2w6dvjFjXpOG63ucg3aLMqBhHteJ?=
 =?us-ascii?Q?C3Bken8upQmr86Z44PXd47jS7f7xac7zfC/PMuWiuKuMPfIKWk7p8u/Xp4hN?=
 =?us-ascii?Q?o9l6tS90WhbzqNFrHlN6c0OQ37XUUO4NEtFM/jjmXp9G5MyT9JmCuvny1B0f?=
 =?us-ascii?Q?vD/ZNvk7nEw6YJvlZyA0Y6P7sCEk+yTJ94kNttPRNov7/iVCPO19ZFa1PmXh?=
 =?us-ascii?Q?1UYOpbDwXD/2B9LY0yNF0wt4P92b+PpSXNfIEZ3wgrm9YezL0wm1+YRrKe8i?=
 =?us-ascii?Q?D34Mhonuka+AXkPcOm+j5suYcLeH4sdM8p6jIis9VQ3aV5fN3B83kPlg4RbU?=
 =?us-ascii?Q?ZJZM6aPaRWk25ez6CsDjUt0Jad9hj/j8JjHJdMxQ4TnA3aHTRlM+43kxOFDu?=
 =?us-ascii?Q?m62ZB3a3iUm3sEhfGzMzqKARgoZs/boW40Ncx+MS05KMJqc3blgkXPHn1ngt?=
 =?us-ascii?Q?rCt1fdEK0ZSoJbOIZ2dFHYoXrXAcaUKS2BLIzOXYR8vPuUTltZwYWLton1cL?=
 =?us-ascii?Q?SCUNG/DnHAl+dTDp78k5q3oETm4K7E6yvVpoIp8raZFqml2kEqK0z0zfRYCB?=
 =?us-ascii?Q?gHeyqlgYkPRNQg+fdkwmcLEBVkxGe/HSQvZUIGS4/sOW5msr5vuzmVYNz5+y?=
 =?us-ascii?Q?i1pydA4iOeB6eNCkJRQBRqEHwY3qASaHlPV9PpjLGBssE+ih05SjYXfwfltY?=
 =?us-ascii?Q?Sch7U0DMpMX4ehPPRIBwkTGIK1pHu5brxAcq6Cclkz8zCifVi4HAB3QRf0xl?=
 =?us-ascii?Q?XOGZ3JQSm9+ClDPWXdT0Oy+MwzaeevghMyq1a3bGWPJDY1GJ/ok2xTC/Ti4n?=
 =?us-ascii?Q?Yx/6D7mHgOIwH+mZ+qULB0Eqc8/iAXQPoEFY48esiZQw0sqtqRkZn0LN/cas?=
 =?us-ascii?Q?xxlUAMwLs4pGwm28ioB/FWGJE5zUiOUcx2HU2mFK6CCn8hooFxz3XinQK7Ys?=
 =?us-ascii?Q?4FPRjjtGiG17ndOxUUNfeifEqXh8EzZZ8pkF8jBrFAZlGNFmk1Ns3XextZXE?=
 =?us-ascii?Q?C6PitvpYlZdylxFiXhup6bM3TqqoARpE4rGSM03gahkQC/jvr12w7rswP/L9?=
 =?us-ascii?Q?X4thHwmpY+tCKXPxy4ukyhtWykzvGkatLNW/dHUYnv8aMCHUKTyaDU5b3+pw?=
 =?us-ascii?Q?Wb36z3zDeZtFQHgCoVhLe6tIOz4M3Knl9TuTelUS2FA05Fkrx1vu/Jn5wL74?=
 =?us-ascii?Q?BEvHERF8pboyE/1vD4XPNNfMQjj6vKo4OZszJgrCVkG0GezPWmCe9/bH5wxl?=
 =?us-ascii?Q?xQ0jHVGFtbgbgK2qKz2fu1kF61UP5HbHPph6EbOp6A7TDaO7hbOu7ArrAq4F?=
 =?us-ascii?Q?MH4eSfPVErbR5KB9bHxpdhA9QbxXerf8VYKFdgrgZ8sR3V5ebm/wz26BfqBe?=
 =?us-ascii?Q?/I9N7e5ixvd+Zb34cn+ZllKsvnaLVU7iVcPUfzv5NdE1z8XW5qUrG1x5ohhX?=
 =?us-ascii?Q?pYaxHWeVsDRLyMH1JUYpszbm57Ghc5VtKnC8eGUqaHwLCMHuEp7I3z0lGR2g?=
 =?us-ascii?Q?Rgy8HakIY0fFB2g+rpfU04vT7R9/VUMDgb6067qQ353SsG4qrZmfuY1XQjFn?=
 =?us-ascii?Q?iN1ih/KC2sokEhWBGtzv/h6l6tM7UIUH/4u1SwiN5bSS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8520d7cb-8fcc-4b66-f0b2-08ddca0995c2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2025 16:54:27.4780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sKui2TQ3hGD4zCxXzcsHdNkq4MwtHJL3BOtSzZSZTY80JVp7rn7L+oeilnqenEOkzabRzJGG5GK1BQXM5z7Ggg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF57F27BA08
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

On Wed, Jul 23, 2025 at 09:19:08AM -0400, Rodrigo Vivi wrote:
> On Wed, Jul 23, 2025 at 12:38:08PM +0300, Imre Deak wrote:
> > On Wed, Jul 23, 2025 at 02:59:46PM +0530, Dibin Moolakadan Subrahmanian wrote:
> > > It has been observed that during `xe_display_pm_suspend()` execution,
> > > an HPD interrupt can still be triggered, resulting in `dig_port_work`
> > > being scheduled. The issue arises when this work executes after
> > > `xe_display_pm_suspend_late()`, by which time the display is fully
> > > suspended.
> > > 
> > > This can lead to errors such as "DC state mismatch", as the dig_port
> > > work accesses display resources that are no longer available or
> > > powered.
> > > 
> > > To address this, introduce  'intel_encoder_block_all_hpds' and
> > > 'intel_encoder_unblock_all_hpds' functions, which iterate over all
> > > encoders and block/unblock HPD respectively.
> > > 
> > > These are used to:
> > > - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
> > >   and shutdown
> > > - Unblock HPD IRQs after 'intel_hpd_init' in resume
> > > 
> > > This will prevent 'dig_port_work' being scheduled during display
> > > suspend.
> > > 
> > > Continuation of previous patch discussion:
> > > https://patchwork.freedesktop.org/patch/663964/
> > > 
> > > Changes in v2:
> > >  - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'
> > >  - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
> > >    any HPD pending work at late driver removal
> > > 
> > > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_encoder.c | 23 ++++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
> > >  drivers/gpu/drm/i915/display/intel_hotplug.c |  2 --
> > >  drivers/gpu/drm/xe/display/xe_display.c      |  6 +++++
> > >  4 files changed, 32 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> > > index 0b7bd26f4339..4e2b77b87678 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> > > @@ -8,6 +8,7 @@
> > >  #include "intel_display_core.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_encoder.h"
> > > +#include "intel_hotplug.h"
> > >  
> > >  static void intel_encoder_link_check_work_fn(struct work_struct *work)
> > >  {
> > > @@ -37,6 +38,28 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
> > >  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
> > >  }
> > >  
> > > +void intel_encoder_unblock_all_hpds(struct intel_display *display)
> > > +{
> > > +	struct intel_encoder *encoder;
> > > +
> > > +	if (!HAS_DISPLAY(display))
> > > +		return;
> > > +
> > > +	for_each_intel_encoder(display->drm, encoder)
> > > +		intel_hpd_unblock(encoder);
> > > +}
> > > +
> > > +void intel_encoder_block_all_hpds(struct intel_display *display)
> > > +{
> > > +	struct intel_encoder *encoder;
> > > +
> > > +	if (!HAS_DISPLAY(display))
> > > +		return;
> > > +
> > > +	for_each_intel_encoder(display->drm, encoder)
> > > +		intel_hpd_block(encoder);
> > > +}
> > > +
> > >  void intel_encoder_suspend_all(struct intel_display *display)
> > >  {
> > >  	struct intel_encoder *encoder;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> > > index 3fa5589f0b1c..e1d3aeab7c00 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> > > @@ -17,4 +17,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
> > >  void intel_encoder_suspend_all(struct intel_display *display);
> > >  void intel_encoder_shutdown_all(struct intel_display *display);
> > >  
> > > +void intel_encoder_block_all_hpds(struct intel_display *display);
> > > +void intel_encoder_unblock_all_hpds(struct intel_display *display);
> > > +
> > >  #endif /* __INTEL_ENCODER_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > index 265aa97fcc75..c69b535497bf 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > > @@ -971,8 +971,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
> > >  
> > >  	spin_lock_irq(&display->irq.lock);
> > >  
> > > -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> > > -
> > >  	display->hotplug.long_hpd_pin_mask = 0;
> > >  	display->hotplug.short_hpd_pin_mask = 0;
> > >  	display->hotplug.event_bits = 0;
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > index e2e0771cf274..9e984a045059 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
> > >  	if (!xe->info.probe_display)
> > >  		return;
> > >  
> > > +	intel_hpd_cancel_work(display);
> > >  	intel_display_driver_remove_nogem(display);
> > >  	intel_display_driver_remove_noirq(display);
> > >  	intel_opregion_cleanup(display);
> > > @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> > >  
> > >  	xe_display_flush_cleanup_work(xe);
> > >  
> > > +	intel_encoder_block_all_hpds(display);
> > > +
> > >  	intel_hpd_cancel_work(display);
> > >  
> > >  	if (has_display(xe)) {
> > > @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> > >  	}
> > >  
> > >  	xe_display_flush_cleanup_work(xe);
> > > +	intel_encoder_block_all_hpds(display);
> > 
> > MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
> > be blocked only after intel_dp_mst_suspend().
> > 
> > Otherwise the patch looks ok to me, so with the above fixed and provided
> > that Maarten is ok to disable all display IRQs only later:
> 
> Also probably good to identify the patch as both xe and i915 in the subject
> drm/{i915,xe}/display:
> 
> and Maarten or Imre, any preference on which branch to go? any chance of
> conflicting with any of work you might be doing in any side?

From my POV, merging it either via the i915 or xe branch is ok. Adding
Maarten.

> From my side I believe that any conflict might be easy to handle, so
> 
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> from either side...
> 
> > 
> > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > 
> > >  	intel_dp_mst_suspend(display);
> > >  	intel_hpd_cancel_work(display);
> > >  
> > > @@ -471,6 +475,8 @@ void xe_display_pm_resume(struct xe_device *xe)
> > >  
> > >  	intel_hpd_init(display);
> > >  
> > > +	intel_encoder_unblock_all_hpds(display);
> > > +
> > >  	if (has_display(xe)) {
> > >  		intel_display_driver_resume(display);
> > >  		drm_kms_helper_poll_enable(&xe->drm);
> > > -- 
> > > 2.43.0
> > > 
