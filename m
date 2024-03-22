Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A1B88746E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 22:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032C810EBEA;
	Fri, 22 Mar 2024 21:29:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZ7qp7fb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A0610EC44
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 21:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711142944; x=1742678944;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=F7YHItOQ+N6oJ184vZUMnrB/deMo+SiopjSS3PakLYo=;
 b=NZ7qp7fb4zxy6VheDf7UYlwnqAxF7X29tZSElxWpz9oCOyYN532m9uoJ
 F5oXRWS4QoHjhl9tsL8OMBGwnfAe5GUa6PEIyIAsgMtg8snTbS4/1+f+T
 wZ6ExvuD5wVjU5psLoqIVeF2iKSEC4FFPud6in2yZfoh6KnssMz+w14oG
 ufYuWNVcBfW196EwRDXTwUVQK0BML3XI4ntld1JD8hgOLqJ60lsz9TwjR
 ftZpwREHP97jTDD22TgiisWFMphGqkiRVyFekRHTF2yixxGS/wuaPk2Sb
 PEm8WEOJ57UCyORqncdtZvNE9VTqWZDjmwBiUyQ54eneJrFtCmBKbqhZh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="6418115"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; 
   d="scan'208";a="6418115"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:29:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="19715716"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2024 14:29:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 14:29:03 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 14:29:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Mar 2024 14:29:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Mar 2024 14:29:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQwluy/Tdre19hq7Ly0zX3AoO9qgrTxIxqWUE9pLAMwcwYwnplxcRv7HjGP7dqKFnuBw9+Hn6xz+qzF8JtMJSVWFiaN9ZEI6tUFqLEdNSb+WvEdTZils5BZjLtWKNPy1OC/OzM6t79oKZJbwzvDVfMeOvEwwF9uBRdlYVyPtePB+y1afxk0DWeRDqRVexHItyL8hsK5wFT7+mU/8EQFb5+8ioiJSvih//aTF5dGJR8gWhRb0/lXQD8zPaLrsr6tJvZG+jICdUMy+fDqJRhmXMtzBRYGJKV9vEH5dCK2il8IWrAlxnjm1LGBRiBNs2vzzSTUoZIASVZWfZtBzy1ihGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rRFkwGNwr8oI4/4f19qyihmoQfoS02qIQMfKAay/ezo=;
 b=leAGNs+fDwOAJ7n0Q4rZqQsB05B4OXasUGDDk3MUefixqqofBwAskvKafm3gxiv8KUGUH1eyQNt+kILUNC1OfZLuh4kooPPGr6WNqZc6/RunVwpaQIBwk09KBk/ATqDzX2h94sJ3iJmaO18aQRNwxS/vEl7PsvRmJ0XuOEmSms/BQbg+SAoFLQuojBzcQt3uKj+r4csVRwViR+IgNQjX4zmga5eiRUB6LB+NeWKlpzxWVQEZY9BT1ovDiQp/SZjxS1r9Syz1eMgo7ODav0UKHzBlBgu/iXOKxpl31VV1/Ctap8w4lbl0xHr6eH6JaPqDbpNpOR8tEszZovIwKM3m/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6849.namprd11.prod.outlook.com (2603:10b6:806:2a1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.23; Fri, 22 Mar
 2024 21:28:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 21:28:54 +0000
Date: Fri, 22 Mar 2024 16:28:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: [CI 0/6] drm/i915: cleanup dead code
Message-ID: <rxzqvbsnj3a6henvxh3myalv6zcvjgtjvekhw6nz6747r4wxva@qzlipk6rhdtc>
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:74::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6849:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e2a861b-f73f-4cdc-9785-08dc4ab71308
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I1MpHNhOti0vVOdStpWPdqBsZFE7ZK0vDBA4OakO/FNs2DCWSSLtV3i9W7cKjC86wYpurpw8UsavbIhbOANELmeo+nV2/00N1N+wXfidIddkoysGcaN2fM03msc+D6kO+HTkRV31NQ4WDfCGtFDyKIfOapRkDs4bVfA07yfKxVxMyzB3kcibWKbuAZdPyL/flVrQXsS4gOxyXAItgMYjEVruWPOsO823tntnhiDqBLVxgMZP5jitlfmmGVbpsfggLRuusvYDzUUE7Tg9rLTjYP1FtH+m7GUjJGXn/2vsbKIVXHl+smq/sTBMgrCdVswZojK/kMSMr6lrEytnXu8PulhfypmgZiHdSpqGSpBF9l/B7C4+Jo3xrKhPDYmnLTECadJebJVpgln/jaSdjPmEsOjR3rkeTe1PlySI8xqG2cFw4AK02GNrKskRtKDiuoh9uyQsGSuXfFicCHjdOrPRWuAKa8wcQgInXg/2DZjCKPgVaiylvpkE9r9C/3XfwSMPAfi4K58FC33rKdyuLUYj6raztNeyrBnmYjrNiNot10rEfXta2lGIO+E7f936uXdy66nN8j7PR2HvFa+7bFJd8lsM8hcWk1fr/J57DMy1bpzQ5Wk8hPYJdcNleMMWptlKZhBb5Qs4MqAbcILLfAWsWMn2CZAOOSSYnuN63+NkHDE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7MyvANWD82qsLvW6e9GFlpdcHW2K7hRAMhJpYhpm1y0y0KM6FlH3f1w5lGPu?=
 =?us-ascii?Q?RmrCutYTsAX8fUm0X9DHpcKlWGqp3w8K5BIpQtQX3xcxBrbWxBZM+PNp7+6q?=
 =?us-ascii?Q?edlkkJMglvfdas7esESnfh33NzJoDSqj9Dheb5L7UJ1gcJoKnuSgCRLOE9UV?=
 =?us-ascii?Q?CWtCp6lM5Qg3onhg0+/7IDwn2IGNp7iCLnZZrC/30n3DITTeBDvrU4fHulpr?=
 =?us-ascii?Q?HD/hw4ZKRgFjx6ionTetI2D+RnTrhhwZp/xqO7cEDH2/bWCOIcjh72YiRLkz?=
 =?us-ascii?Q?xZTBRfQJVJv+QXXAmZiQuuxo/NBuAQf5dSecXBflnh6L5vvV+x917OpnUYeF?=
 =?us-ascii?Q?nfMgdL4W6epAgL0Ce0lPiMoulHDarcQQ9cpBkZ8592KXM1FkCtcu+sGn2cGC?=
 =?us-ascii?Q?8vx7ydYiDsY9pbnH8x4Op4TUk6Ho3Xh1qHi8ocgQV68DAWr0Jmr+/1FJi4zt?=
 =?us-ascii?Q?VG+28Ao06eQsGZQ1KK9G2vU4N+tJTruJBsHRhTcXIAkDLz594p+PCdShDWy6?=
 =?us-ascii?Q?UqEHOJ7kiLaRAIIih9GhAEBCzSdEpFXrQ4Ky20px80bwKvjN0m2bMEX2Z1mu?=
 =?us-ascii?Q?qcRwJJw6CP6dcUkwXBBwwXSwZN0Cu+zHIswL6l6Ngz7a9LL22K6AT0pmSKNL?=
 =?us-ascii?Q?JF/2+1EOF6UHd2Ar/fyo3DI89fimql1UafqXIV3WvgMRGPqbOnjeb8F0YCEf?=
 =?us-ascii?Q?V/0B4flC/DOOPHkkXoBoLC7XI+51N6vpKo6PIx3Hz5gtUZBKu44gFHDu6n9O?=
 =?us-ascii?Q?4nM9CJRJLR1xsIBsliXEKLdE6jYhmISAc+eBqpo56UPGa3mc67uMFhQu10G+?=
 =?us-ascii?Q?/jVD5sIHCJ4DqU32W2OENSZ6hXEeL9KeQ/4Hv9u6ZreIjT3PPCkq+rI/McF+?=
 =?us-ascii?Q?D47CJP3DGQSfRIGkEgfQhrpJ8mJ+4GV22hE9n40YhFKFZQl4DkCh2cyQ2HId?=
 =?us-ascii?Q?S15As4rq71SKS+g+H3SaPhe/rEXsBMMKBNAponEDEPAnS0KXdAnD2y/fzvDI?=
 =?us-ascii?Q?5GA7RsLPOn5MgC0cHOD3rXaID8sFPQ9BqXkiGLidoFNwT6gqraiPyrtcxasO?=
 =?us-ascii?Q?qmvXibbGTGM0xCnyrdANuKnUrZtahHmZ4obDcHoe0vn2llLc84wbOMfno22g?=
 =?us-ascii?Q?xLGwfHQ7c3AzX5RDzXCAkOOkL9aMz3fIRsaRP3vY3xNgK9210FYBVBJzQLBD?=
 =?us-ascii?Q?dq7wb17WT0n9um1Tb7KI+Xf96HWzyCpujm8hd2iqTY9w+jcPubUp7kHVJUk6?=
 =?us-ascii?Q?45jyMZtqnMV+sqv0uZDZWpP7TVFW9p3jW8Kh1HbdB8Lc5OUQsEhJfNDRvY6G?=
 =?us-ascii?Q?PONh7ZrXWaI4UwjNwsQpHGGFTk6Y5F3Avd3KLyU0rExewu9jvJ7M+XLhDkdq?=
 =?us-ascii?Q?RUhC6qusq60eSIEwzTZUtFNpTWwbxoC5eMKrr4AuAQblAgwnlqd7P+LubBG0?=
 =?us-ascii?Q?wryZkzzGxtE5sJYCqNmGT5ZgwpYF3hEAKSzsFTNweFKWw+gIDYHAsjpMHfyT?=
 =?us-ascii?Q?cwlVpFkdkXTfnBAdV8fMa6DMST66R9vP9mDBoL47UEQKDxrjtyMyEdlrTY1r?=
 =?us-ascii?Q?ZliZiu/2Ys1Ubi6GePMGA99w/QVzkpd8/SEQg5kzN/yIpLq6toAvgwLG2m41?=
 =?us-ascii?Q?3Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e2a861b-f73f-4cdc-9785-08dc4ab71308
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 21:28:53.9875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q/B1EU17gICZHPM4UPkmFv9UD0NzLv9t6M0HnIYRHuK/Komkz6gAYuchbp7mylhrsrMPHmQAlfZjOShHRjdTUvhp1dSP70IRBVPFSbRlwKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6849
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

On Tue, Mar 19, 2024 at 11:02:57PM -0700, Lucas De Marchi wrote:
>For CI coverage. No change from previous version except the rebase.
>See 20240312235145.2443975-1-lucas.demarchi@intel.com
>and 20240312235145.2443975-1-lucas.demarchi@intel.com for details.
>
>I will probably wait the drm-next backmerge anyway so drm-intel-next and
>drm-intel-gt-next are back in sync.


Unrelated failure in CI. This is now applied to drm-intel-next.  Thank
you all for review and acks. There were minor conflicts with
drm-intel-gt-next due to workarounds applied there (and still not in
drm-next).

Lucas De Marchi
