Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74CF878779
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 19:37:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CB0F10EA6B;
	Mon, 11 Mar 2024 18:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tl0lhf8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1AF10E7D8;
 Mon, 11 Mar 2024 18:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710182225; x=1741718225;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=AjIrigMhSbO4VFaedidP0QNWLVnCDhhVGIzYhwj0aF0=;
 b=Tl0lhf8YyKseqelrW/ulN26k+7n0tyffmLdCmpHJcK1qMDEXFY31gkw/
 OT7jA5vnjBmQuRXxznke2L9TO/bEU1kFGVNEuScu6pp9f3RkHSwmbx9kM
 eWyktbEeGSEyCYXXKAKA8Qzh+U0G0IPgKJfQq98coBFpyj33Y3LiWLI8w
 Qm+709PsovY69Grv5FUeG7GmljyujuUyUCmRbKr+zAX/XDqo1Rk6c0GGT
 tvQtnWUjdZJekA9qdJyxLjs7+nGP4erSoDBWQa02nDkp8AijHT7eX7xXK
 ZGnjJcHAmA4Th4inM6f5K78zr6OHgU3N5j4ndTxX4h4eMc6lr0uONhOCv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8621573"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8621573"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 11:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15911097"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 11:37:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 11:37:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 11:37:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 11:37:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 11:37:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vmq2EKqWgB8PTA8ZjdLhPCm6Ko5f0hR+kReiyZDkAQ903mRKoRXxT4+kroTcsfITseCqfWhGdxpfZcWxu5TQm/WsNRBdwt2b3B1oZZue0fd5m2PReyHvgEF/yaePkZs7Pa4lkMBboGZGOdQdSDEL2Y9roQs2DCPTlCODuoUbwubIg4+X+YkfNxq5Vt+cPAEwyWxkin8hN3Z0lacXQ2MlFhkopAxxIxW3pzcoRoYyCKKbUy0NnSMmwe6/PtkmccfMjD61nReT3AIkcWQmUKBdSomqle41MjHz87+SuXIJSko9zxqxvE9WA7YdARd4ebWaH3xK94yXpy7M49GQQg8ZVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4cRK1h7P/UrWwlSO8PaMU75rWIYY7r+Q547wjKcF7EY=;
 b=W0qEQB4R9wBSSDHcUyKSfH9Z75IR7/B29o2oCUehvmjtNEz/QeD23+aRf8f1aHgPpr9FKCMfhYHlVxtaTOb/dyAXoLLF6IMUZzBBMfy+EgI2zKCEG0dBgvJdnhBahgm5w2ahc7iRyf5cDTZ8zPfQkiSsXHe7eDo6LwociPCWKaywDPx0h0npqvaGuvum62blb8f0Rk2i9CRu/VcnO3aO3cWuaeAX9w4yXbuLq1tTUhsGghc6z/bVi3i3rH7xl4HTvgzsgMemtISdUYrcMHaDJRcbAH958YvhKh/5swJfVD+EmkC8FOB8rfgg0yDWSOmWqxWUr4kUCn7tvRnbYz1xZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB5801.namprd11.prod.outlook.com (2603:10b6:806:23d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 18:37:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 18:37:01 +0000
Date: Mon, 11 Mar 2024 14:36:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Matthew
 Auld" <matthew.auld@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <Ze9PSQfcOpJrHx37@intel.com>
References: <20240307001554.162153-1-rodrigo.vivi@intel.com>
 <ZekKtpIobqZzyvDR@intel.com> <ZenTPngZUhMx5V4z@intel.com>
 <ZeogFEKNw4QYTG1J@ideak-desk.fi.intel.com>
 <ZessnpTxaTDvmvGz@intel.com>
 <Ze8d+ABttapojKHq@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Ze8d+ABttapojKHq@ideak-desk.fi.intel.com>
X-ClientProxiedBy: BY5PR04CA0026.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::36) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB5801:EE_
X-MS-Office365-Filtering-Correlation-Id: 8808c48f-58fd-40ea-8c5e-08dc41fa3d66
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vP54t5E9i2VNnax2nYSXwzONd/3tvB231CshnKp+8vcq3qqwOVGIjpyIFUSFFBPBS+JSiOxg/uQb1NiVWygASLeMXOgTiLh6rIl047UBCOdQsZlWdBLBoSBu2vQVx4NjC7BFLdhMkgijdl/P7Oo593CnWU2l4WInO/2hsrMOjWdBeEmbJM5CdK11nXRTnyxx7qiZEz7gHaLYqYC/r4NGCKXLGFIScQ2NyrHUX0ujWbVNF9RfJhGXRpxMBmwvQQVUfQ0vr3V6iLcS/mAja2Fxs5zr/ACcphp0+kKFgaZS6AW3G38uCKRRPbc+RRLcq+rzTVb0Lub32hMoDxemdoXZRYu+1MXVntUeA7noP+8Iwv1VTP6ZnEe1vpIBRH+qP8t5itY/pSECplzqZa93lLx74RzFiAU30GT1BKMO9Jfqu2yLm1yKTDdy++zo6ykSrHrQOdTZWqF8bEKdoK130xEgaoxzKOlaURjZ2iae8dtH1vIK1AmmdCPrN4nEmBhgGJIaGCoBsscGWEGTDtvTFSSZRIRbo7eRZ5utmvJg2AxduW5vGjgXA7f3h7ePIowjEmZlXB0DUflXTkXcnuGmKlaQcqE0vxxDyl94coxQ32iGCJ8mJuXlSfl0602Kfw9z3k5W0cvsryR7ZEP0jc3/gsaqY6CMw1aoqCrhW9gGGjtUkJ4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzloUVlYZFUzWWV2SXl3SWd0cTdTVlVaZ080NlV4TWpSNHkwNHQ1d0ozMHJu?=
 =?utf-8?B?dFNlR3dkckticUhYaXkzTzFWbVZlK3RHdUlYNHBJRUcwQ25HVEo4K1MxeGtt?=
 =?utf-8?B?SUtBVTlOSzEySWZlbkdpMnhPaWlnZTdJNERpMm1TNC9TZDBwdnVEQmVOVE5r?=
 =?utf-8?B?NlpteTFjREdoSzhpd3ZYNE94eTBPNFVOV0ZuN0FHbkU4aWtkSjZjeWZQbS9x?=
 =?utf-8?B?Y3ZXaExNbkw1eGpFVUpHSkNxNVRNd1NueEFPS2FVWVcrZlcraDg4dmxFdC9P?=
 =?utf-8?B?ODFXR0piZVd2bFZFa3d3aUZSakpOYjBBRzBGUWNwMVE0bU1CNXRtMllRb1Ez?=
 =?utf-8?B?Z3pvNGUrY3A5MlRpR2hvcWVWd05weHdDcm9BSTUxSW1GeVF0YVM1WHFjTm9F?=
 =?utf-8?B?dE1qdEU0VEZ1bm9MM05FMFduRDdDMXVoS2F6ZStkb2JGbzM4Y2VnZVlJN1VU?=
 =?utf-8?B?bUtEdTZqcUlHWGJTa3ZhSTNpcFZ2bUxQaXFIR3hMK0U5M3p5OUZ1dGpJMHNo?=
 =?utf-8?B?RWhxVkZEaklEZ0dORFJWeENjbCtFMi9HSlF1TWdBc3UrL1RKVXBFdzVQZURp?=
 =?utf-8?B?K21SRkFLNGtTL3hSZTI3SC93UlF4M0lNc2VlWm9pdnhKaWdPWjM2WkZjZnZZ?=
 =?utf-8?B?eHJCSllBMGVPaWZIc0lUOFk3aEN6R242c0RYdGdrNVgyMDVmQmxIRFA0aXJk?=
 =?utf-8?B?dnUxanpYdm1IMEhpalJHK1Jwak1sT0w1TXU0MFJkZnA3cHBEUTdDVjRrZXRi?=
 =?utf-8?B?aEFqeXBVL3pxTUJTYVl5cjJxcUFGbVh3Q0dYb0M4WC92dk81aVpyNXlmdDdt?=
 =?utf-8?B?dkZtNDk3UXBxV0xidGdHOFN4TExBSU9kcWJvTmNGWXZ2S0hXSXV5d0NnZkpS?=
 =?utf-8?B?aFZiejlUek1ZQUFMRjdYdUZ4ZW51SlN3Vy9YVlBBMzlFSVoyY2MyM0JVYlgw?=
 =?utf-8?B?ZlFVSmZzUkdqOHRncFlzd2RtY2l1TmoyWDJudGUveC9FR1NoendrNHN4eC8r?=
 =?utf-8?B?WlZ5QjJOVU51OGdiVHhhekwwdWc3dGxobXBoU1I2SlVwL09jeWg5MFRibmYy?=
 =?utf-8?B?MnRrUFROZ1hLMjdnZi9nNEFGZHhZUlFSVktaNzl5MldTV1I4VWNEL2N0SzBT?=
 =?utf-8?B?bVl1QnY1OUt3dWtneGtmUzZnbHNaUlZndUJ6Rjh2RTF5Wm9rSDJ5SFFWV2lT?=
 =?utf-8?B?RU5IMTZabE0vVVpCR1RWRE9wTnZoM3dxQ2FpeXZIUGlET1VBOVVLcDZaV2h3?=
 =?utf-8?B?VVRvVnRwWndWbDBaTlNiVFkydU5ncXBObWJ4MWNqR0h2ZkdVSHpzcEcyWXR4?=
 =?utf-8?B?MSs4RHoxVFBSV0JGMG9tdExUd085SU5KcDU2YXBpeU9xa21Ka29lUjNyb3hH?=
 =?utf-8?B?MWlmc1UxT1FzY2FxVEhsbEVTa3MrckJTTDRoUVREcDM1S1B4cFBudFlJK00r?=
 =?utf-8?B?WHgra0tNTHdja2lYU0tsLzR2MDMxQlRKOW9XVUdtdlNiaVVJb2daZStERUcy?=
 =?utf-8?B?NkFIVVJkQ2plU0lOeXM0RFNnSC92MU5YdktsMnpyNkdDZm10WkhMMXhHNkFG?=
 =?utf-8?B?aHdwQVFudVlnT2xubjg0dlg1M3R3NkdLUGdNZ21JZE1zV1lDcUhoTWdTeFE2?=
 =?utf-8?B?NzE2Ym1NQ1BVc3ZzRFBsbXRnUXIvMUN4dlZWN1ZoWmkwSTFjR1pPTk1Ka2Mw?=
 =?utf-8?B?L3V4MktxM3ExRXFpekRVK2tlZGNvb1VSeXZkZkdSa2pxMGhDYWlVQStiR2F1?=
 =?utf-8?B?UXp0WTM3ckozalpKL2hIUXk3ZW9CamtpSVpudkxibmpHT0ZjMEU0V2lYaCtJ?=
 =?utf-8?B?c3B0N2JlNlBicm9JQmY1M0kyRUlRL2tURTNpdkRTa2kySHBXZk9ySUpLczVq?=
 =?utf-8?B?bmhuQzRNMFkvRTJYbmVLZnZibDdHWlMwalllUEFhWkNXNHdKQ21weU5UYisx?=
 =?utf-8?B?Q1EzYVpVcTVWcjRiMWw0NjRtNDRuMC9KMmhmamkrWlNoc1hrSVRMWEcrTW1L?=
 =?utf-8?B?dUtQVU8yYlYwYWRmSnFHOFFYNXYvbjdFd1QzYlZMM2EzU2MyTTgzZ2dnanRx?=
 =?utf-8?B?M0g1L0VxSFR1L3I3YUJDUlZXQXMxZ09WaHR0S29MNFM2SFd6TEt6bUJMWVZ0?=
 =?utf-8?Q?7Zw7lyrS4x8OeaeaYI7F/K7bP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8808c48f-58fd-40ea-8c5e-08dc41fa3d66
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 18:37:01.0442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GW2R5f4YTG+rrnaJl+shpWV8Ehy9WskT2U6uztCOPQFuSiueT9KzIaYEClW9anTlV7Lt7RYi1jYy/SBVQlfxMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5801
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

On Mon, Mar 11, 2024 at 05:06:32PM +0200, Imre Deak wrote:
> On Fri, Mar 08, 2024 at 10:19:58AM -0500, Rodrigo Vivi wrote:
> > [...]
> > > 
> > > The difference between a wakeref (aka wakelock) and a raw-wakeref is
> > > that the former is required for accessing the HW, which is asserted when
> > > reading/writing a register. A raw-wakeref is not enough for this and is
> > > only taken to prevent runtime suspending, for instance held after
> > > dropping a display power reference, until the power well is actually
> > > disabled in a delayed manner. During this time any register access is
> > > considered invalid.
> > 
> > ah okay, so it is not just about the GT, but also about MMIO accesses.
> > So the ones in display looks better now. Thanks for this correction.
> > 
> > > 
> > > Both wakerefs and raw-wakerefs are tracked.
> > 
> > Indeed. And also it is worth to say that this patch doesn't introduce
> > any change on that.
> > 
> > both
> > intel_runtime_pm_get()
> > and
> > intel_runtime_pm_get_if_in_use()
> > 
> > calls
> > intel_runtime_pm_acquire(rpm, true);
> > return track_intel_runtime_pm_wakeref(rpm);
> > 
> > so, can we move forward with this change or do you guys see any blocker?
> 
> I also think intel_runtime_pm_get_noresume() would be more logical here,
> as it's already known that rpm->usecount is non-zero,
> intel_runtime_pm_get_if_in_use() also works though. Either way:

Well, I can also go with the noresume version since my plan is to merge
this through drm-xe-next anyway along with the rest of this series.

However I will need to move this to the top of the series,
because xe's noresume is introduced later. And introduce
the xe compat layer version of the intel_runtime_pm_get_noresume()

A stand alone version of this patch with the noresume would break
drm-tip build:

../drivers/gpu/drm/i915/display/intel_display_power.c: In function ‘release_async_put_domains’:
../drivers/gpu/drm/i915/display/intel_display_power.c:649:19: error: implicit declaration of function ‘intel_runtime_pm_get_noresume’; did you mean ‘intel_runtime_pm_get_if_in_use’? [-Werror=implicit-function-declaration]
  649 |         wakeref = intel_runtime_pm_get_noresume(rpm);
      |                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                   intel_runtime_pm_get_if_in_use
make[3]: *** [../drivers/gpu/drm/xe/Makefile:185: drivers/gpu/drm/xe/i915-display/intel_display_power.o] Error 1

> 
> Acked-by: Imre Deak <imre.deak@intel.com>

Thank you.

> 
> > Thanks a lot,
> > Rodrigo.
> > 
> > > 
> > > > One thing that crossed my mind many times already is to simply entirely
> > > > remove the runtime_pm from display and do like other drivers simply
> > > > checking for crtc connection at runtime_idle.
> > > > 
> > > > But then there are places where current display code uses the rpm
> > > > in use to take different code paths, and also all the possible impact
> > > > with the dc states transitions and other cases that I always gave up
> > > > on the thought very quickly.
> > > > 
> > > > But you are right, we will have to comeback and clean things up
> > > > one way or another.
> > > > 
> > > > But I wish we can have at least this small change in first so I don't
> > > > get blocked by xe's lockdep annotation and I also don't have to
> > > > workaround the annotation itself.
> > > > 
> > > > > 
> > > > > >  
> > > > > >  	for_each_power_domain(domain, mask) {
> > > > > >  		/* Clear before put, so put's sanity check is happy. */
> > > > > > -- 
> > > > > > 2.43.2
> > > > > 
> > > > > -- 
> > > > > Ville Syrjälä
> > > > > Intel
