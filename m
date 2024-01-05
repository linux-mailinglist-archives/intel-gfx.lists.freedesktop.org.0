Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D56F825B5D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 21:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69D110E69B;
	Fri,  5 Jan 2024 20:03:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E3610E69B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 20:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704485038; x=1736021038;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=SnJno95CWcaN6Fuv4DutpfsyYLqZipzOTqoCgXDrqzg=;
 b=Y4BRAqjGJG0NwZPT6qwMsmlbU1ic+3KEqSE1f4TmcVLkka6At2VTLiTG
 4ccFNmT5PImKga2cq/jwUW3EXfb9aj4YuVbZEw9kueRmOtU/KuY4ZRdjV
 q0E033lobhzK1ZFe93tQ7nhFE+uNYT+Afd3ADamRETmLJTwfp0r+831OM
 A/ZQG1ZftoeFTLSRc0dCGTo4+0nVflmTwQKN7lgfYLkZNwRQCIt6WbgwJ
 UlNZPOL/T0+VrNk+0aZIsdbqc5z5l/XKExkEirFg2RZ0gBr99mfHNcUTA
 3pEyVOc5S2QWYTThIp7Ve9LEuIMXwKrQhLJIsyjdmzdRCPmEMXXjQ4+bl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="483749093"
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="483749093"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 12:03:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,334,1695711600"; d="scan'208";a="22583142"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 12:03:45 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 12:03:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 12:01:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 12:01:44 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 12:01:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kL/eOvHC2JlUEynqb+cSjyktqon/nZpTqrawtVfeEXLHm8JiQJAbzSRztrLT3FS8hPa9am/ecGm32f6cfddfL5x5fGEc3hPwen+pzYlqkneiaRT9SwQuJESrgWokqAeBknPExVDq6ovtcgOYdD61eAAQv7Nhf31T0Aaypi4A2ZQVzc90bBEOiyJNeSREVDKWCbXTCMehNKvTaQrcf9L31VrXy9OhtmacbovcPuP79EXjrtFJ4kpZnRHS+vwlB3fI/1BR25kPLAWJfWWXPNIQv/e9LrOWI8iTm6PhzpyFALtL97G3vhLtnzjCdsoHdgXjBBuAVfJYc+SfbrVx0Ztm3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WVUhtHcmvlWXL+Z/CfWxQZKXkbsJwQwDxo9jd6Jev2w=;
 b=fx0V/io6NTRGmEzgL0TOqzbdDgAI8AJz63Dag5i4Voc/l6FPu0vYjWmglAum/NEpXsXwgPUkIumAvWIdVVDED7v1LNtI/sZswKjRU7XkOgrdTnXgm2AwnlE6fGKHuLxI6pIm/TfxlsshA88AqYiY35Z19kFusBN7jNZfhFT6muwSTg+FQ4o98aidlmMWsJ7Rz7WsMU6AXuDakNSijxwiabxtP3bQLXq7WPUCclYEuttRTEbpaxeeX+z4G3CkvOIWr1tWyNUChf2sa7UKHxhpK0hwOVbxXT5sMPSPbZQ9rNpaSOilZrOV1PoGUXZ7xts1cOoq0teah5U//BmsUswYgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by DS0PR11MB7442.namprd11.prod.outlook.com (2603:10b6:8:14d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Fri, 5 Jan
 2024 20:01:06 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::c59:e321:133a:3515]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::c59:e321:133a:3515%5]) with mapi id 15.20.7159.013; Fri, 5 Jan 2024
 20:01:06 +0000
Date: Fri, 5 Jan 2024 12:01:03 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Add workaround 14019877138
Message-ID: <20240105200103.GI3529480@mdroper-desk1.amr.corp.intel.com>
References: <20240103053111.763172-1-tejas.upadhyay@intel.com>
 <170429355723.151.6014803042152779731@5338d5abeb45>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <170429355723.151.6014803042152779731@5338d5abeb45>
X-ClientProxiedBy: BYAPR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::16) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|DS0PR11MB7442:EE_
X-MS-Office365-Filtering-Correlation-Id: 81033b71-762c-4f1b-b7d5-08dc0e290d4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GCMznp7gH3fUD1HLcrmNLD7pryaLVVTCP94ue0Hqh3xB+CTM8vdmwKlcTSINh4EEny0up39IeJGlqJW5fSvP0PA6JljYBCDfUKULkJ9enCBsIIxq5kIKt+wgp2KxTrkMXba9I2fUY2Qu3MD1JXCzpmicqtKSb03dl/DFy73bMmU7wa93DyGjxN/Z24IS9NCdpKLvAAFSK4AYhebM7+PFRrMZekUM3Udu19EuqelvN4xLLNhNJTz1jwBzcBoJZ5+vHXcZcYyWR0FsLJ4cA+rEEJ9xAh+f8hjpsY63fg0QH6XD+fuM1FIfLVMVLvSfhU1dNguLRLBkiTqKwAvPBdei8ikoLJaxtxb/MSo1QWpl8CWqrOtBkmLHa2vYJ7s7Hb+ThSwkf5X0ygNscIIk88Q6TN+69w4XmmyiZYPBLpJjluKK+2OTVdtIyP/Lv59javMyuXNVWjTkII4yj3J8AD1eVzp/X5FEZO+7dFXnxqAag4POcXSyQs9e5BkNZcOzyMMQfJ3BYlwhRNxuyr8caRD11YYMyaNc9csmhSDz2kOmI2ba8gizTU0K26CsbBscrl1D0yoqIL1oemD9SRrhLJMxuYGeLpWY0lNPgCh7fwhlAcE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39850400004)(396003)(346002)(376002)(366004)(136003)(230922051799003)(230273577357003)(230173577357003)(64100799003)(186009)(451199024)(1800799012)(66946007)(38100700002)(6666004)(82960400001)(4326008)(478600001)(966005)(316002)(6916009)(66476007)(6512007)(6506007)(66556008)(8936002)(5660300002)(6486002)(41300700001)(83380400001)(107886003)(1076003)(30864003)(26005)(2906002)(86362001)(33656002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tsnT8DI+WBKnDNCKkcGsj/7U02eYSBOfAoixPNwkETHRbzVX2w+jBnbeG9xB?=
 =?us-ascii?Q?ZtPh/13STtdDiChy0VgIacexWxKIgfzGhLWHLhWj0309+qMSWYKfPs+Bc5Yg?=
 =?us-ascii?Q?s9tE4F/Qw5QX15OrGzh8/7qHntT+jVQ+zOh+J2t1LHdgeZgs0oZTTjzij4YH?=
 =?us-ascii?Q?wZrB4G+GSC7vU3wD26sc2I+VF5y6Ufshp6448ILPwIUtT9HPKIPou12Lwrv2?=
 =?us-ascii?Q?k2gynUpz/YLKLKnE/RDKYcEzP9J6gdVKZldJ2+eplR4oAMrkUb8YlWMqjiRl?=
 =?us-ascii?Q?GuabR8gJvIDstv7wYmr1VOpO/G/cSd6VJ7HgATmWns6v11FEkRjGOJDFYelK?=
 =?us-ascii?Q?vor8SNHgqe5cIlj0uTuBusdSVZyq3b2OdmUwMkI6U/RwmW++bsff9gI5FFP7?=
 =?us-ascii?Q?3LPkje0gLORqwmd9aT85A+6m/nu6cpbWf1oah67Jyc/TnsbgInY44lGiua1K?=
 =?us-ascii?Q?zKpKxVd/Jxpjzz8hZ88seTosU58goenxrIozMxCy/ImL/gFZpHfcCgZCd8m6?=
 =?us-ascii?Q?tiFitgF1yw83Fr5MtD77oSurlSqIG49WHyG+jFWWgB9NO/jzA2AQEDwKJZA4?=
 =?us-ascii?Q?g958Slp04+Gxg6ExYACzThzAf7BeNEUyaGksFrA6/+dZgtGTDd7B8ld5d3r6?=
 =?us-ascii?Q?yOqaSfQMXgXDJmZ8w8+uzKncVJQF7ugKdjqPobgOvIKk0jnlBY20oXZ2dj+R?=
 =?us-ascii?Q?alHNw657SEhrFcqln2kT9rUfXvWADJEpRyhXmF4tX0PpA3ttDgFUErleKpnb?=
 =?us-ascii?Q?tUliiDGllOrIgZfi2D47cQDU1qhBqbfRFmlL3c6eYKIEI3g110R4nCD5GsOC?=
 =?us-ascii?Q?KOPRHyTEJenBxXi1NJxJ4L37n8swFe6IwNv/t4qhv6ueOKE2OUeYxM4vWHVj?=
 =?us-ascii?Q?vd8vIp9RDuCBU4DcXaI9UAubdyPuvt4fg+5kQzFJpAjjSmUUaHOXwCi0xS4y?=
 =?us-ascii?Q?hbne6p5PpSFcapMLi+ZGstoq64uv/g1DKm5glHRkui7D7M7JKQAQu5C/RwdT?=
 =?us-ascii?Q?YSa0zA6BZEf9FSdInPGNJMmzEnGP8VcTk++BkNDPZgMr2NqDFA2yCGnZjEYb?=
 =?us-ascii?Q?ZoX2ZUKlh7MCjgGvUNN5nLKUvKywhEnpWgWO0WIVxiPOcu/iyoc7heZB6DtD?=
 =?us-ascii?Q?2spN6D08nJs+fHsKKo82hALU8qFd1sigKJ3Cnhjc2yvFUFjVW63U343b+3Yk?=
 =?us-ascii?Q?F47ug43ho/mtXCw4frgsRXjQgcD6CPpeTHCNfuAQ+b5K/oepQOqz9wOIelIw?=
 =?us-ascii?Q?pDQJlOmfcLMIU5DDumFF/PcbPCwrGv9q7NoDPP5A0TO/FIJoUmWLR9FS3zN3?=
 =?us-ascii?Q?wTN5iotecxNMVBeJAH1El5C8n+gi6Rh4OPXtttyQJBcuTDQQE6AkJdcrL8ix?=
 =?us-ascii?Q?nKSHBMpKxAy+vXbVwYSnx/m5mnIkDQCK3oioQPaqGXa+tujCSsDoFmNMXDZt?=
 =?us-ascii?Q?Ev+c0QmwtzhZBe7QRwVBkgr0OwjKi4XuMihj0O4pjtO03ydXXY3lcHnq87IL?=
 =?us-ascii?Q?/W+oOQ3uY7QSkUNlBqVdPOHnkSofjIFcrt8BLSdf1kZOhQWQQhDgroPRl6I0?=
 =?us-ascii?Q?iLBk7XqFGnG2B9Y5aX4bzwQgECQ/dK3e4IXD5yZe4G64QYl0T3YYCcFyvAiG?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81033b71-762c-4f1b-b7d5-08dc0e290d4c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2024 20:01:06.2200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BpdhyXp58UCsU7NDvv50S/mpOCkoaaJ9H2TiZ155NIJSjgcZk2lGvywAW1vFm7p5XjdJBw7Pe/ZNBCteOkFD6KgXrNEOMuhZnStyFzEaHgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7442
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

On Wed, Jan 03, 2024 at 02:52:37PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Add workaround 14019877138
> URL   : https://patchwork.freedesktop.org/series/128143/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_14072_full -> Patchwork_128143v1_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **FAILURE**
>=20
>   Serious unknown changes coming with Patchwork_128143v1_full absolutely =
need to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_128143v1_full, please notify your bug team (I91=
5-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in=
 CI.
>=20
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143=
v1/index.html
>=20
> Participating hosts (8 -> 9)
> ------------------------------
>=20
>   Additional (1): shard-snb-0=20
>=20
> Possible new issues
> -------------------
>=20
>   Here are the unknown changes that may have been introduced in Patchwork=
_128143v1_full:
>=20
> ### IGT changes ###
>=20
> #### Possible regressions ####
>=20
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][1] -> ([PASS][2], [ABORT][3], [PASS][4])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb2/=
igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-snb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
>=20
>   * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
>     - shard-tglu:         [PASS][5] -> ([PASS][6], [INCOMPLETE][7], [PASS=
][8])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tglu-=
10/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-9/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-6/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shard=
-tglu-5/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html

There don't seem to be any CI logs for these two failures, but adding a
workaround on Xe_LPG wouldn't have any impact on platforms using older
IP, so these aren't related.

>=20
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b:
>     - shard-mtlp:         [PASS][9] -> ([ABORT][10], [PASS][11], [PASS][1=
2])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-mtlp-=
2/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-mtlp-2/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-mtlp-8/igt@kms_plane@pixel-format-source-clamping@pipe-b.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-b.html

<4> [574.849114] i915 0000:00:02.0: Unclaimed read from register 0x44418

That's DE_PIPE_IIR, which should be a valid register for the platform,
so we must have powered down the pipe between the time interrupt was
reported and when we got around to handling it.  Anyway, that's a
display-side problem and wouldn't be caused by this GT workaround.

>=20
>   * igt@prime_busy@hang-wait@vecs0:
>     - shard-glk:          [PASS][13] -> ([INCOMPLETE][14], [PASS][15])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9=
/igt@prime_busy@hang-wait@vecs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/igt@prime_busy@hang-wait@vecs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/igt@prime_busy@hang-wait@vecs0.html

No CI logs for this one either, but as above an Xe_LPG workaround
couldn't affect a gen9lp platform.


Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

>=20
>  =20
> New tests
> ---------
>=20
>   New tests have been introduced between CI_DRM_14072_full and Patchwork_=
128143v1_full:
>=20
> ### New IGT tests (5) ###
>=20
>   * igt@kms_flip@flip-vs-expired-vblank@a-dp4:
>     - Statuses : 1 pass(s)
>     - Exec time: [7.92] s
>=20
>   * igt@kms_flip@flip-vs-expired-vblank@b-dp4:
>     - Statuses : 1 pass(s)
>     - Exec time: [7.76] s
>=20
>   * igt@kms_flip@flip-vs-panning-interruptible@a-dp4:
>     - Statuses : 1 pass(s)
>     - Exec time: [7.84] s
>=20
>   * igt@kms_flip@flip-vs-panning-interruptible@b-dp4:
>     - Statuses : 1 pass(s)
>     - Exec time: [7.79] s
>=20
>   * igt@kms_psr:
>     - Statuses :
>     - Exec time: [None] s
>=20
>  =20
>=20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_128143v1_full that come from kn=
own issues:
>=20
> ### CI changes ###
>=20
> #### Issues hit ####
>=20
>   * boot:
>     - shard-glk:          ([PASS][16], [PASS][17], [PASS][18], [PASS][19]=
, [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [=
PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PAS=
S][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][=
38]) -> ([PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [FAIL]=
[44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50=
], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], =
[PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PA=
SS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS]=
[69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75=
], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], =
[PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PA=
SS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS]=
[94], [PASS][95], [PASS][96]) ([i915#8293])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3=
/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9=
/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9=
/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9=
/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk9=
/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8=
/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8=
/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk8=
/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6=
/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6=
/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk6=
/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5=
/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5=
/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5=
/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk5=
/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4=
/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4=
/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk4=
/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3=
/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk3=
/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1=
/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1=
/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk1=
/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk7/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk7/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk6/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk9/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk8/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk7/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk7/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk7/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk5/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk4/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk3/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-glk1/boot.html
>=20
>  =20
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#8411]) +1 other tes=
t skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html
>=20
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-mtlp:         NOTRUN -> ([SKIP][98], [SKIP][99], [SKIP][100])=
 ([i915#7701])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-mtlp-8/igt@device_reset@unbind-cold-reset-rebind.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/shar=
d-mtlp-7/igt@device_reset@unbind-cold-reset-rebind.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@device_reset@unbind-cold-reset-rebind.html
>=20
>   * igt@drm_fdinfo@busy@ccs0:
>     - shard-dg2:          NOTRUN -> ([SKIP][101], [SKIP][102]) ([i915#841=
4]) +10 other tests ( 2 skip )
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@drm_fdinfo@busy@ccs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@drm_fdinfo@busy@ccs0.html
>=20
>   * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#8414]) +19 other t=
ests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html
>=20
>   * igt@drm_fdinfo@virtual-busy-idle:
>     - shard-dg1:          NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#841=
4])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@drm_fdinfo@virtual-busy-idle.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@drm_fdinfo@virtual-busy-idle.html
>=20
>   * igt@fbdev@pan:
>     - shard-snb:          [PASS][106] -> ([PASS][107], [PASS][108], [FAIL=
][109]) ([i915#4435])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb=
4/igt@fbdev@pan.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb4/igt@fbdev@pan.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb1/igt@fbdev@pan.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb7/igt@fbdev@pan.html
>=20
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          NOTRUN -> ([SKIP][110], [SKIP][111]) ([i915#328=
1]) +5 other tests ( 2 skip )
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html
>=20
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> ([SKIP][112], [SKIP][113]) ([i915#932=
3])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
>=20
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [PASS][114] -> ([PASS][115], [INCOMPLETE][116])=
 ([i915#7297])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2=
-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0=
.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.=
html
>=20
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][117] -> [INCOMPLETE][118] ([i915#7297])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2=
-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.=
html
>=20
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> ([SKIP][119], [SKIP][120]) ([i915#769=
7])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_close_race@multigpu-basic-process.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_close_race@multigpu-basic-process.html
>=20
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#7697])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
>=20
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-mtlp:         NOTRUN -> ([SKIP][122], [SKIP][123], [SKIP][124=
]) ([i915#6335])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_create@create-ext-cpu-access-big.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_create@create-ext-cpu-access-big.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_create@create-ext-cpu-access-big.html
>=20
>   * igt@gem_create@hog-create@smem0:
>     - shard-mtlp:         NOTRUN -> ([FAIL][125], [FAIL][126]) ([i915#875=
8])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_create@hog-create@smem0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_create@hog-create@smem0.html
>=20
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109314])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html
>=20
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-mtlp:         NOTRUN -> ([SKIP][128], [SKIP][129], [SKIP][130=
]) ([i915#8555])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_ctx_persistence@heartbeat-hang.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_ctx_persistence@heartbeat-hang.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_ctx_persistence@heartbeat-hang.html
>=20
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> ([SKIP][131], [SKIP][132]) ([i915#855=
5])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@gem_ctx_persistence@heartbeat-hostile.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html
>=20
>   * igt@gem_ctx_persistence@legacy-engines-hostile:
>     - shard-snb:          NOTRUN -> ([SKIP][133], [SKIP][134]) ([fdo#1092=
71] / [i915#1099])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb6/igt@gem_ctx_persistence@legacy-engines-hostile.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb4/igt@gem_ctx_persistence@legacy-engines-hostile.html
>=20
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> ([SKIP][135], [SKIP][136]) ([i915#280=
])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html
>=20
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> ([SKIP][137], [SKIP][138]) ([i915#280=
]) +1 other test ( 2 skip )
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_ctx_sseu@mmap-args.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_ctx_sseu@mmap-args.html
>=20
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          NOTRUN -> ([PASS][139], [ABORT][140], [ABORT][1=
41]) ([i915#7975] / [i915#8213])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_eio@hibernate.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_eio@hibernate.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_eio@hibernate.html
>=20
>   * igt@gem_eio@kms:
>     - shard-dg1:          NOTRUN -> ([FAIL][142], [FAIL][143]) ([i915#578=
4])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_eio@kms.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_eio@kms.html
>=20
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4771])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_exec_balancer@bonded-pair.html
>=20
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4812]) +1 other te=
st skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html
>=20
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> ([SKIP][146], [SKIP][147]) ([i915#452=
5])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_exec_balancer@parallel-contexts.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_exec_balancer@parallel-contexts.html
>=20
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> ([SKIP][148], [SKIP][149]) ([i915#633=
4]) +1 other test ( 2 skip )
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
>=20
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> ([SKIP][150], [SKIP][151], [SKIP][152=
]) ([fdo#109271] / [i915#6334])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk1/igt@gem_exec_capture@capture-invisible@smem0.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk5/igt@gem_exec_capture@capture-invisible@smem0.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@gem_exec_capture@capture-invisible@smem0.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][153], [SKIP][154]) ([i915#633=
4])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_exec_capture@capture-invisible@smem0.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_exec_capture@capture-invisible@smem0.html
>=20
>   * igt@gem_exec_fair@basic-none:
>     - shard-snb:          NOTRUN -> ([SKIP][155], [SKIP][156]) ([fdo#1092=
71]) +70 other tests ( 2 skip )
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb6/igt@gem_exec_fair@basic-none.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb4/igt@gem_exec_fair@basic-none.html
>=20
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-dg2:          NOTRUN -> ([SKIP][157], [SKIP][158], [SKIP][159=
]) ([i915#3539] / [i915#4852])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_exec_fair@basic-none-share.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_exec_fair@basic-none-share.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_exec_fair@basic-none-share.html
>=20
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [PASS][160] -> ([FAIL][161], [PASS][162]) ([i91=
5#2842])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl=
-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][163] -> ([FAIL][164], [PASS][165]) ([i91=
5#2842])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk=
8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-sync:
>     - shard-mtlp:         NOTRUN -> ([SKIP][166], [SKIP][167], [SKIP][168=
]) ([i915#4473] / [i915#4771])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_exec_fair@basic-sync.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_exec_fair@basic-sync.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_exec_fair@basic-sync.html
>=20
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> ([FAIL][169], [FAIL][170]) ([i915#284=
2])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
>=20
>   * igt@gem_exec_fence@submit:
>     - shard-dg2:          NOTRUN -> ([SKIP][171], [SKIP][172]) ([i915#481=
2])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_exec_fence@submit.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@gem_exec_fence@submit.html
>=20
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2:          NOTRUN -> ([SKIP][173], [SKIP][174]) ([i915#353=
9] / [i915#4852]) +3 other tests ( 2 skip )
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>     - shard-dg1:          NOTRUN -> ([SKIP][175], [SKIP][176], [SKIP][177=
]) ([i915#3539] / [i915#4852])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>=20
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> ([SKIP][178], [SKIP][179]) ([i915#353=
9])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_exec_flush@basic-uc-set-default.html
>=20
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> ([SKIP][180], [SKIP][181]) ([i915#328=
1]) +4 other tests ( 2 skip )
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][182], [SKIP][183]) ([i915#328=
1])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>=20
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-mtlp:         NOTRUN -> ([SKIP][184], [SKIP][185], [SKIP][186=
]) ([i915#3281]) +3 other tests ( 3 skip )
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_exec_reloc@basic-gtt-noreloc.html
>=20
>   * igt@gem_exec_reloc@basic-wc-read-active:
>     - shard-dg1:          NOTRUN -> ([SKIP][187], [SKIP][188]) ([i915#328=
1])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_exec_reloc@basic-wc-read-active.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_exec_reloc@basic-wc-read-active.html
>=20
>   * igt@gem_exec_reloc@basic-write-cpu-active:
>     - shard-dg1:          NOTRUN -> ([SKIP][189], [SKIP][190], [SKIP][191=
]) ([i915#3281]) +1 other test ( 3 skip )
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_exec_reloc@basic-write-cpu-active.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@gem_exec_reloc@basic-write-cpu-active.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_exec_reloc@basic-write-cpu-active.html
>=20
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3281]) +3 other te=
sts skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html
>=20
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4537] / [i915#4812=
])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
>=20
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          [PASS][194] -> ([ABORT][195], [ABORT][196], [AB=
ORT][197]) ([i915#7975] / [i915#8213])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg2=
-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>=20
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][198] -> ([PASS][199], [ABORT][200], [PAS=
S][201]) ([i915#7975] / [i915#8213])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tgl=
u-6/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-4/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
>=20
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-tglu:         [PASS][202] -> ([PASS][203], [INCOMPLETE][204],=
 [PASS][205]) ([i915#6755] / [i915#7392] / [i915#9857])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tgl=
u-8/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-4/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-5/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html
>=20
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>     - shard-tglu:         [PASS][206] -> ([INCOMPLETE][207], [PASS][208])=
 ([i915#6755] / [i915#7392] / [i915#9857])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tgl=
u-8/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-2/igt@gem_exec_whisper@basic-fds-priority-all.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-4/igt@gem_exec_whisper@basic-fds-priority-all.html
>=20
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> ([SKIP][209], [SKIP][210]) ([i915#486=
0])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][211], [SKIP][212]) ([i915#486=
0])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_fence_thrash@bo-write-verify-y.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_fence_thrash@bo-write-verify-y.html
>=20
>   * igt@gem_huc_copy@huc-copy:
>     - shard-glk:          NOTRUN -> ([SKIP][213], [SKIP][214]) ([fdo#1092=
71] / [i915#2190])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@gem_huc_copy@huc-copy.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk7/igt@gem_huc_copy@huc-copy.html
>=20
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-rkl:          NOTRUN -> ([SKIP][215], [SKIP][216]) ([i915#461=
3]) +1 other test ( 2 skip )
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_lmem_swapping@heavy-multi.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_lmem_swapping@heavy-multi.html
>=20
>   * igt@gem_lmem_swapping@massive:
>     - shard-glk:          NOTRUN -> ([SKIP][217], [SKIP][218], [SKIP][219=
]) ([fdo#109271] / [i915#4613])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@gem_lmem_swapping@massive.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk5/igt@gem_lmem_swapping@massive.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk1/igt@gem_lmem_swapping@massive.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][220], [SKIP][221]) ([i915#461=
3])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_lmem_swapping@massive.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_lmem_swapping@massive.html
>=20
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> ([SKIP][222], [SKIP][223]) ([fdo#1092=
71] / [i915#4613])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk7/igt@gem_lmem_swapping@random.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@gem_lmem_swapping@random.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][224], [SKIP][225], [SKIP][226=
]) ([i915#4613])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_lmem_swapping@random.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_lmem_swapping@random.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_lmem_swapping@random.html
>=20
>   * igt@gem_mmap_gtt@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#4077]) +6 other te=
sts skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_mmap_gtt@basic.html
>=20
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-mtlp:         NOTRUN -> ([SKIP][228], [SKIP][229]) ([i915#407=
7]) +1 other test ( 2 skip )
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>=20
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-dg2:          NOTRUN -> ([SKIP][230], [SKIP][231]) ([i915#407=
7]) +13 other tests ( 2 skip )
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>=20
>   * igt@gem_mmap_gtt@fault-concurrent:
>     - shard-dg1:          NOTRUN -> ([SKIP][232], [SKIP][233]) ([i915#407=
7]) +1 other test ( 2 skip )
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_mmap_gtt@fault-concurrent.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_mmap_gtt@fault-concurrent.html
>=20
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg1:          NOTRUN -> ([SKIP][234], [SKIP][235], [SKIP][236=
]) ([i915#4077]) +3 other tests ( 3 skip )
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-13/igt@gem_mmap_gtt@zero-extend.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-17/igt@gem_mmap_gtt@zero-extend.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-19/igt@gem_mmap_gtt@zero-extend.html
>=20
>   * igt@gem_mmap_wc@read-write-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#4083])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_mmap_wc@read-write-distinct.html
>=20
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-mtlp:         NOTRUN -> ([SKIP][238], [SKIP][239], [SKIP][240=
]) ([i915#4083])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_mmap_wc@write-prefaulted.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_mmap_wc@write-prefaulted.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_mmap_wc@write-prefaulted.html
>=20
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> ([SKIP][241], [SKIP][242]) ([i915#408=
3]) +3 other tests ( 2 skip )
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_mmap_wc@write-wc-read-gtt.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][243], [SKIP][244]) ([i915#408=
3]) +2 other tests ( 2 skip )
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_mmap_wc@write-wc-read-gtt.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_mmap_wc@write-wc-read-gtt.html
>=20
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> ([SKIP][245], [SKIP][246]) ([i915#328=
2]) +3 other tests ( 2 skip )
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html
>     - shard-dg1:          NOTRUN -> ([SKIP][247], [SKIP][248]) ([i915#328=
2])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_partial_pwrite_pread@reads-uncached.html
>=20
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#4270]) +1 other te=
st skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_pxp@display-protected-crc.html
>=20
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-rkl:          NOTRUN -> ([SKIP][250], [SKIP][251]) ([i915#427=
0]) +2 other tests ( 2 skip )
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_pxp@reject-modify-context-protection-off-1.html
>=20
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> ([SKIP][252], [SKIP][253]) ([i915#427=
0])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
>=20
>   * igt@gem_readwrite@new-obj:
>     - shard-dg1:          NOTRUN -> ([SKIP][254], [SKIP][255], [SKIP][256=
]) ([i915#3282])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-17/igt@gem_readwrite@new-obj.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-19/igt@gem_readwrite@new-obj.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-13/igt@gem_readwrite@new-obj.html
>=20
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> ([SKIP][257], [SKIP][258], [SKIP][259=
]) ([i915#5190])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
>=20
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-glk:          NOTRUN -> [SKIP][260] ([fdo#109271]) +32 other =
tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][261], [SKIP][262], [SKIP][263=
]) ([i915#8428]) +1 other test ( 3 skip )
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
>=20
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> ([SKIP][264], [SKIP][265]) ([i915#407=
9])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>=20
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-rkl:          NOTRUN -> ([SKIP][266], [SKIP][267]) ([fdo#1093=
12])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@gem_softpin@evict-snoop-interruptible.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@gem_softpin@evict-snoop-interruptible.html
>=20
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> ([SKIP][268], [SKIP][269]) ([i915#328=
2]) +1 other test ( 2 skip )
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
>=20
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-rkl:          NOTRUN -> ([SKIP][270], [SKIP][271]) ([i915#329=
7])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gem_userptr_blits@coherency-unsync.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gem_userptr_blits@coherency-unsync.html
>=20
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-mtlp:         NOTRUN -> ([SKIP][272], [SKIP][273]) ([i915#328=
2])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_userptr_blits@forbidden-operations.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_userptr_blits@forbidden-operations.html
>=20
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> ([SKIP][274], [SKIP][275]) ([i915#329=
7] / [i915#4880])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>     - shard-dg1:          NOTRUN -> ([SKIP][276], [SKIP][277]) ([i915#329=
7] / [i915#4880])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>=20
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3297]) +2 other te=
sts skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gem_userptr_blits@unsync-overlap.html
>=20
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg2:          NOTRUN -> ([SKIP][279], [SKIP][280]) ([i915#329=
7])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@gem_userptr_blits@unsync-unmap-after-close.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][281], [SKIP][282]) ([i915#329=
7])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gem_userptr_blits@unsync-unmap-after-close.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
>=20
>   * igt@gen7_exec_parse@basic-allocation:
>     - shard-mtlp:         NOTRUN -> ([SKIP][283], [SKIP][284], [SKIP][285=
]) ([fdo#109289])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gen7_exec_parse@basic-allocation.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gen7_exec_parse@basic-allocation.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gen7_exec_parse@basic-allocation.html
>=20
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> ([SKIP][286], [SKIP][287]) ([fdo#1092=
89]) +5 other tests ( 2 skip )
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@gen7_exec_parse@batch-without-end.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@gen7_exec_parse@batch-without-end.html
>=20
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-rkl:          NOTRUN -> ([SKIP][288], [SKIP][289]) ([fdo#1092=
89])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@gen7_exec_parse@chained-batch.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@gen7_exec_parse@chained-batch.html
>=20
>   * igt@gen7_exec_parse@load-register-reg:
>     - shard-mtlp:         NOTRUN -> ([SKIP][290], [SKIP][291]) ([fdo#1092=
89])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@gen7_exec_parse@load-register-reg.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@gen7_exec_parse@load-register-reg.html
>=20
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          NOTRUN -> ([PASS][292], [INCOMPLETE][293]) ([i9=
15#5566])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk7/igt@gen9_exec_parse@allowed-single.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@gen9_exec_parse@allowed-single.html
>=20
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> ([SKIP][294], [SKIP][295], [SKIP][296=
]) ([i915#2527])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gen9_exec_parse@bb-start-cmd.html
>=20
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> ([SKIP][297], [SKIP][298]) ([i915#252=
7])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@gen9_exec_parse@bb-start-param.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@gen9_exec_parse@bb-start-param.html
>=20
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#2856]) +1 other te=
st skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gen9_exec_parse@shadow-peek.html
>=20
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> ([SKIP][300], [SKIP][301]) ([i915#285=
6]) +3 other tests ( 2 skip )
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@gen9_exec_parse@unaligned-access.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@gen9_exec_parse@unaligned-access.html
>     - shard-dg1:          NOTRUN -> ([SKIP][302], [SKIP][303]) ([i915#252=
7])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@gen9_exec_parse@unaligned-access.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@gen9_exec_parse@unaligned-access.html
>=20
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-mtlp:         NOTRUN -> ([SKIP][304], [SKIP][305], [SKIP][306=
]) ([i915#2856]) +1 other test ( 3 skip )
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@gen9_exec_parse@valid-registers.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@gen9_exec_parse@valid-registers.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@gen9_exec_parse@valid-registers.html
>=20
>   * igt@i915_module_load@load:
>     - shard-rkl:          NOTRUN -> ([SKIP][307], [SKIP][308]) ([i915#622=
7])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@i915_module_load@load.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@i915_module_load@load.html
>=20
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][309] -> ([PASS][310], [INCOMPLETE][311],=
 [PASS][312]) ([i915#9849])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl=
-7/igt@i915_module_load@reload-with-fault-injection.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [PASS][313] -> ([INCOMPLETE][314], [INCOMPLETE]=
[315], [PASS][316]) ([i915#9200])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tgl=
u-2/igt@i915_module_load@reload-with-fault-injection.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>=20
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-dg1:          NOTRUN -> ([SKIP][317], [SKIP][318], [SKIP][319=
]) ([fdo#109289])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
>=20
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [PASS][320] -> ([PASS][321], [FAIL][322]) ([i91=
5#3591]) +2 other tests ( 1 fail, 1 pass )
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-dg1=
-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>=20
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-dg2:          NOTRUN -> ([SKIP][323], [SKIP][324]) ([fdo#1092=
93] / [fdo#109506])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
>=20
>   * igt@i915_pm_rps@basic-api:
>     - shard-mtlp:         NOTRUN -> ([SKIP][325], [SKIP][326], [SKIP][327=
]) ([i915#6621])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@i915_pm_rps@basic-api.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@i915_pm_rps@basic-api.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@i915_pm_rps@basic-api.html
>=20
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> ([SKIP][328], [SKIP][329], [SKIP][330=
]) ([i915#6621])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@i915_pm_rps@min-max-config-idle.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@i915_pm_rps@min-max-config-idle.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@i915_pm_rps@min-max-config-idle.html
>=20
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#6621])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html
>=20
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> ([SKIP][332], [SKIP][333]) ([i915#618=
8])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html
>=20
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> ([SKIP][334], [SKIP][335]) ([fdo#1093=
03])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@i915_query@query-topology-known-pci-ids.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@i915_query@query-topology-known-pci-ids.html
>=20
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg2:          NOTRUN -> ([DMESG-WARN][336], [DMESG-WARN][337]=
) ([i915#9311])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@i915_selftest@mock@memory_region.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@i915_selftest@mock@memory_region.html
>     - shard-dg1:          NOTRUN -> ([DMESG-WARN][338], [DMESG-WARN][339]=
, [DMESG-WARN][340]) ([i915#9311])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@i915_selftest@mock@memory_region.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@i915_selftest@mock@memory_region.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@i915_selftest@mock@memory_region.html
>=20
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][341] -> ([PASS][342], [FAIL][343], [PASS=
][344]) ([fdo#103375])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-rkl=
-4/igt@i915_suspend@basic-s3-without-i915.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
>=20
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#4212])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>=20
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> ([PASS][346], [FAIL][347]) ([i915#252=
1])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
>=20
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-=
y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][348] ([i915#8709]) +3 other te=
sts skip
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a=
-2-y-rc-ccs-cc.html
>=20
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-=
4-mc-ccs:
>     - shard-dg2:          NOTRUN -> ([SKIP][349], [SKIP][350]) ([i915#870=
9]) +11 other tests ( 2 skip )
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a=
-3-4-mc-ccs.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a=
-3-4-mc-ccs.html
>=20
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [FAIL][351] ([i915#8247]) +3 other te=
sts fail
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html
>=20
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> ([FAIL][352], [FAIL][353]) ([i915#824=
7]) +3 other tests ( 2 fail )
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html
>=20
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][354] ([i915#8247]) +3 other te=
sts fail
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html
>=20
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> ([SKIP][355], [SKIP][356]) ([i915#355=
5])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-dg2:          NOTRUN -> ([SKIP][357], [SKIP][358]) ([i915#953=
1])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>=20
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-intern=
al-panels:
>     - shard-glk:          NOTRUN -> ([SKIP][359], [SKIP][360]) ([fdo#1092=
71] / [i915#1769])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-inte=
rnal-panels.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-inte=
rnal-panels.html
>=20
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panel=
s:
>     - shard-dg2:          NOTRUN -> [SKIP][361] ([i915#1769] / [i915#3555=
])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-p=
anels.html
>=20
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> ([SKIP][362], [SKIP][363]) ([i915#528=
6]) +3 other tests ( 2 skip )
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>=20
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> ([SKIP][364], [SKIP][365]) ([fdo#1116=
14]) +2 other tests ( 2 skip )
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>     - shard-dg1:          NOTRUN -> ([SKIP][366], [SKIP][367]) ([i915#453=
8] / [i915#5286])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
>=20
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> ([SKIP][368], [SKIP][369], [SKIP][370=
]) ([fdo#111614]) +1 other test ( 3 skip )
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
>=20
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][371] ([fdo#111614]) +1 other t=
est skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>=20
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         [PASS][372] -> ([FAIL][373], [FAIL][374], [PASS=
][375]) ([i915#3743])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tgl=
u-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.ht=
ml
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.ht=
ml
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.ht=
ml
>=20
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-fli=
p:
>     - shard-tglu:         [PASS][376] -> ([PASS][377], [FAIL][378], [PASS=
][379]) ([i915#3743]) +1 other test ( 1 fail, 2 pass )
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-tgl=
u-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip=
.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async=
-flip.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async=
-flip.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async=
-flip.html
>=20
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> ([SKIP][380], [SKIP][381]) ([i915#519=
0]) +11 other tests ( 2 skip )
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>=20
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#5190]) +6 other te=
sts skip
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>=20
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> ([SKIP][383], [SKIP][384]) ([fdo#1116=
14] / [i915#3638]) +1 other test ( 2 skip )
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>=20
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-mtlp:         NOTRUN -> ([SKIP][385], [SKIP][386]) ([i915#618=
7]) +1 other test ( 2 skip )
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
>=20
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#4538] / [i915#5190=
]) +1 other test skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>=20
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> ([SKIP][388], [SKIP][389]) ([i915#453=
8])
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
>=20
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          NOTRUN -> ([SKIP][390], [SKIP][391]) ([fdo#1116=
15])
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>=20
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> ([SKIP][392], [SKIP][393], [SKIP][394=
]) ([fdo#111615]) +2 other tests ( 3 skip )
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
>=20
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> ([SKIP][395], [SKIP][396]) ([i915#453=
8] / [i915#5190]) +4 other tests ( 2 skip )
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][397], [SKIP][398]) ([fdo#1116=
15])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
>=20
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip=
:
>     - shard-rkl:          NOTRUN -> ([SKIP][399], [SKIP][400]) ([fdo#1107=
23]) +1 other test ( 2 skip )
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-f=
lip.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-f=
lip.html
>=20
>   * igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> ([SKIP][401], [SKIP][402], [SKIP][403=
]) ([i915#5354] / [i915#6095]) +7 other tests ( 3 skip )
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_ccs@pipe-a-bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
>=20
>   * igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs:
>     - shard-mtlp:         NOTRUN -> ([SKIP][404], [SKIP][405], [SKIP][406=
]) ([i915#5354] / [i915#6095]) +8 other tests ( 3 skip )
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_ccs@pipe-a-bad-rotation-90-4-tiled-dg2-mc-ccs.html
>=20
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> ([SKIP][407], [SKIP][408]) ([i915#535=
4]) +61 other tests ( 2 skip )
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf-tiled-ccs.html
>=20
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> ([SKIP][409], [SKIP][410], [SKIP][411=
]) ([i915#5354]) +2 other tests ( 3 skip )
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
>=20
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          NOTRUN -> ([SKIP][412], [SKIP][413]) ([i915#535=
4] / [i915#6095]) +9 other tests ( 2 skip )
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_ccs@pipe-b-crc-primary-basic-4-tiled-mtl-mc-ccs.html
>=20
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          NOTRUN -> ([SKIP][414], [SKIP][415]) ([i915#535=
4]) +13 other tests ( 2 skip )
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs.html
>=20
>   * igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> ([SKIP][416], [SKIP][417]) ([i915#535=
4] / [i915#6095]) +6 other tests ( 2 skip )
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_ccs@pipe-c-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html
>=20
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#535=
4] / [i915#6095]) +7 other tests ( 2 skip )
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html
>=20
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][420] ([i915#5354]) +33 other t=
ests skip
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_ccs@pipe-d-missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>=20
>   * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][421] ([i915#4087] / [i915#7213=
]) +3 other tests skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html
>=20
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][422] ([i915#4087]) +3 other te=
sts skip
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
>=20
>   * igt@kms_chamelium_color@ctm-blue-to-red:
>     - shard-dg2:          NOTRUN -> ([SKIP][423], [SKIP][424]) ([fdo#1118=
27])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@kms_chamelium_color@ctm-blue-to-red.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@kms_chamelium_color@ctm-blue-to-red.html
>=20
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-glk:          NOTRUN -> ([SKIP][425], [SKIP][426]) ([fdo#1092=
71]) +92 other tests ( 2 skip )
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk9/igt@kms_chamelium_color@ctm-negative.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@kms_chamelium_color@ctm-negative.html
>=20
>   * igt@kms_chamelium_color@ctm-red-to-blue:
>     - shard-rkl:          NOTRUN -> ([SKIP][427], [SKIP][428]) ([fdo#1118=
27])
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_chamelium_color@ctm-red-to-blue.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_chamelium_color@ctm-red-to-blue.html
>=20
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - shard-rkl:          NOTRUN -> ([SKIP][429], [SKIP][430]) ([i915#782=
8]) +2 other tests ( 2 skip )
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_chamelium_edid@dp-edid-read.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_chamelium_edid@dp-edid-read.html
>=20
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-dg1:          NOTRUN -> ([SKIP][431], [SKIP][432], [SKIP][433=
]) ([i915#7828]) +1 other test ( 3 skip )
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
>=20
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-mtlp:         NOTRUN -> ([SKIP][434], [SKIP][435], [SKIP][436=
]) ([i915#7828]) +1 other test ( 3 skip )
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_chamelium_edid@hdmi-edid-read.html
>=20
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][437] ([i915#7828]) +3 other te=
sts skip
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>=20
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> ([SKIP][438], [SKIP][439]) ([i915#782=
8]) +4 other tests ( 2 skip )
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>     - shard-dg1:          NOTRUN -> ([SKIP][440], [SKIP][441]) ([i915#782=
8])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
>=20
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-mtlp:         NOTRUN -> ([SKIP][442], [SKIP][443]) ([i915#782=
8])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-fast.html
>=20
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          NOTRUN -> ([SKIP][444], [SKIP][445]) ([i915#711=
8])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_content_protection@atomic-dpms.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_content_protection@atomic-dpms.html
>=20
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> ([SKIP][446], [SKIP][447]) ([i915#329=
9])
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
>     - shard-dg1:          NOTRUN -> ([SKIP][448], [SKIP][449], [SKIP][450=
]) ([i915#3299])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_content_protection@dp-mst-lic-type-0.html
>=20
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> ([SKIP][451], [SKIP][452], [SKIP][453=
]) ([i915#3299])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_content_protection@dp-mst-lic-type-1.html
>=20
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> ([SKIP][454], [SKIP][455], [SKIP][456=
]) ([i915#7118]) +1 other test ( 3 skip )
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_content_protection@legacy.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-1/igt@kms_content_protection@legacy.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@kms_content_protection@legacy.html
>=20
>   * igt@kms_content_protection@srm@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][457] ([i915#7173])
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html
>=20
>   * igt@kms_cursor_crc@cursor-offscreen-128x42:
>     - shard-mtlp:         NOTRUN -> ([SKIP][458], [SKIP][459], [SKIP][460=
]) ([i915#8814]) +1 other test ( 3 skip )
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-128x42.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-128x42.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-128x42.html
>=20
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          NOTRUN -> ([SKIP][461], [SKIP][462]) ([fdo#1092=
79] / [i915#3359])
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>=20
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-dg1:          NOTRUN -> ([SKIP][463], [SKIP][464], [SKIP][465=
]) ([i915#3555]) +2 other tests ( 3 skip )
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>=20
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][466] ([i915#3359]) +1 other te=
st skip
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
>=20
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> ([SKIP][467], [SKIP][468]) ([i915#881=
4]) +1 other test ( 2 skip )
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_cursor_crc@cursor-sliding-128x42.html
>=20
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          NOTRUN -> ([SKIP][469], [SKIP][470]) ([i915#355=
5]) +3 other tests ( 2 skip )
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html
>=20
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-mtlp:         NOTRUN -> ([SKIP][471], [SKIP][472], [SKIP][473=
]) ([i915#9809])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
>=20
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][474] ([fdo#109274] / [fdo#1117=
67] / [i915#5354])
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>     - shard-snb:          [PASS][475] -> ([SKIP][476], [SKIP][477], [SKIP=
][478]) ([fdo#109271] / [fdo#111767])
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb=
7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>=20
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          NOTRUN -> ([SKIP][479], [SKIP][480]) ([fdo#1118=
25]) +8 other tests ( 2 skip )
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>=20
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> ([SKIP][481], [SKIP][482]) ([i915#410=
3])
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>=20
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-mtlp:         NOTRUN -> ([SKIP][483], [SKIP][484]) ([i915#980=
9]) +1 other test ( 2 skip )
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
>=20
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-dg2:          NOTRUN -> ([SKIP][485], [SKIP][486]) ([fdo#1092=
74] / [i915#5354]) +4 other tests ( 2 skip )
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>     - shard-dg1:          NOTRUN -> ([SKIP][487], [SKIP][488], [SKIP][489=
]) ([fdo#111825]) +6 other tests ( 3 skip )
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>=20
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][490] ([fdo#109274] / [i915#535=
4]) +2 other tests skip
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>     - shard-snb:          [PASS][491] -> ([SKIP][492], [PASS][493]) ([fdo=
#109271]) +3 other tests ( 1 pass, 1 skip )
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-snb=
7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>=20
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-mtlp:         NOTRUN -> ([SKIP][494], [SKIP][495], [SKIP][496=
]) ([fdo#111767])
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>=20
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][497] -> [FAIL][498] ([i915#2346])
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk=
6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>=20
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][499] -> ([FAIL][500], [PASS][501]) ([i91=
5#2346])
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14072/shard-glk=
1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-siz=
e.html
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-siz=
e.html
>=20
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][502] ([i915#9067])
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>=20
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> ([SKIP][503], [SKIP][504]) ([i915#410=
3] / [i915#4213])
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>     - shard-dg1:          NOTRUN -> ([SKIP][505], [SKIP][506], [SKIP][507=
]) ([i915#4103] / [i915#4213])
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>=20
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> ([SKIP][508], [SKIP][509]) ([i915#972=
3]) +1 other test ( 2 skip )
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-7/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
>=20
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> ([SKIP][510], [SKIP][511]) ([i915#922=
7])
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-1/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
>=20
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> ([SKIP][512], [SKIP][513], [SKIP][514=
]) ([i915#9723])
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-16/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
>=20
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][515] ([i915#9833])
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>=20
>   * igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vga-=
1:
>     - shard-snb:          NOTRUN -> [FAIL][516] ([i915#9841]) +3 other te=
sts fail
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-snb7/igt@kms_display_modes@extended-mode-basic@pipe-b-hdmi-a-1-pipe-a-vg=
a-1.html
>=20
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][517] ([i915#3555])
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>=20
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> ([SKIP][518], [SKIP][519]) ([i915#355=
5]) +4 other tests ( 2 skip )
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>=20
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-mtlp:         NOTRUN -> ([SKIP][520], [SKIP][521], [SKIP][522=
]) ([i915#3555] / [i915#3840])
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_dsc@dsc-with-bpc.html
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_dsc@dsc-with-bpc.html
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_dsc@dsc-with-bpc.html
>=20
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][523] ([i915#3469])
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html
>=20
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> ([SKIP][524], [SKIP][525]) ([i915#183=
9])
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-10/igt@kms_feature_discovery@display-2x.html
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-7/igt@kms_feature_discovery@display-2x.html
>=20
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          NOTRUN -> ([SKIP][526], [SKIP][527]) ([i915#183=
9])
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-5/igt@kms_feature_discovery@display-3x.html
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-rkl-2/igt@kms_feature_discovery@display-3x.html
>=20
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][528] ([i915#658])
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_feature_discovery@psr1.html
>=20
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> ([SKIP][529], [SKIP][530]) ([fdo#1117=
67] / [i915#3637])
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-dg2:          NOTRUN -> ([SKIP][531], [SKIP][532]) ([fdo#1092=
74] / [fdo#111767])
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>=20
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][533] ([fdo#109274]) +2 other t=
ests skip
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
>=20
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> ([SKIP][534], [SKIP][535]) ([fdo#1092=
74]) +5 other tests ( 2 skip )
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>     - shard-mtlp:         NOTRUN -> ([SKIP][536], [SKIP][537]) ([i915#363=
7])
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>=20
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-mtlp:         NOTRUN -> ([SKIP][538], [SKIP][539], [SKIP][540=
]) ([i915#3637]) +3 other tests ( 3 skip )
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_flip@2x-nonexisting-fb.html
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_flip@2x-nonexisting-fb.html
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_flip@2x-nonexisting-fb.html
>=20
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptib=
le:
>     - shard-dg1:          NOTRUN -> ([SKIP][541], [SKIP][542], [SKIP][543=
]) ([fdo#111825] / [i915#9934])
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-18/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interru=
ptible.html
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-14/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interru=
ptible.html
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg1-15/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interru=
ptible.html
>=20
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][544] ([i915#8381])
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_flip@flip-vs-fences.html
>=20
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upsca=
ling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> ([SKIP][545], [SKIP][546], [SKIP][547=
]) ([i915#2672]) +1 other test ( 3 skip )
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-u=
pscaling@pipe-a-default-mode.html
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-u=
pscaling@pipe-a-default-mode.html
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-u=
pscaling@pipe-a-default-mode.html
>=20
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscal=
ing@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> ([SKIP][548], [SKIP][549]) ([i915#267=
2]) +1 other test ( 2 skip )
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downs=
caling@pipe-a-valid-mode.html
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128143v1/sha=
rd-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
128143v1/index.html

--=20
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
