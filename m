Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0314C632E14
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 21:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F7610E1A9;
	Mon, 21 Nov 2022 20:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C71610E1A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 20:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669063264; x=1700599264;
 h=date:from:to:subject:message-id:mime-version;
 bh=N++wxI1sgk1AMLN/S/suCvWViNMVZwKKDC50KdxwglA=;
 b=Owu8uPpId8CApa8YKf979ObsXd1AxNT+wkeRRiqmO5J9UzQflc6PkDCc
 wiLzjkKEV5eej509SlAFy8+Y/e0mLI3uSWD9T1m1LahCLzZQKyckIjDsn
 +FXTOwWejAH+u5nUgoXmckf29XS8VLMrI7VBROulDscMqq4jjmiEDi3lc
 HBDWWDrvZIjHRIO96nb3zGYxeRX7J2EvxmIJbdDsioChHNDKlY87JWo4j
 BtH8acrrL2yWu8914jahnb2yy9TVkqElaTHOkxwyxm0z9hEcBy4mfkna8
 /FFgHvhNYC7G9Nlo+n2AnIWlS8yYeFFhRwn/AArrny8B7xF/Wk0PFsqbY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="399948721"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="399948721"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 12:41:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="709945277"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="709945277"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 21 Nov 2022 12:41:03 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 12:41:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 12:41:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 12:41:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CF8x+3X/qedFYslpqYLET1el03N0vKRwx+hWY4XQIdiIF7txkMGOapSgnb7wyiNJxRIYswndqAwsWqndDw5m7xgK18/mqv1kPT/Z9QM8y78vU4IPLrfwBSunua4GNgZ8aqPe6R15fhgkRKMA38NfCUR9nM6VJVlh1ur6ckXRvN+bdEVwvt64jeLtXj22LrMVkcLsF5BWTHLihqr+LJBXGO5WMZ9Wx0nvhsE2J3fhvbxT1JRgcbFA1EvzzGC/W4iD/7lA44783ipGTKZzMFoGyRR663r0iGve3YC1hUuc7jmhKRBsegu/n4kynKkgFqnoBc5I7vbEb9xu3ICG+m7pKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Dyh1kmmMizLnE3i+28DftEbTOIlPmdr+9B97567W0U=;
 b=cYIfys5pSPm7IiGZ7cxJcthp8t9xDyXd6v09dsQEx88pzx+fgO0hEogV4ZHslh7FoE8wVURxDOZceMX9QU10WbBGacZUXJ8AzmT2wBtzOj/MUU5fffq7HFaWsBCIuwM1ajuMM4VZoQ8PPk56kdPsV3C0u6YEUSD5RbPrvLT9zgeBeTmJwnOiyQGO5woKg3Jsnz/2pF8cRiKeAEo94Bme019GHoqUsklwcmnWIMXNVftb1SkJbry00xM2h5/HKzb1DGCTsMZMRgJCik7Ru65i3rrQiyQmpp2RbW2xfy8pLHmOdhVWKnlk6OlqKWzfOjLGPe63giugyl8/mCh/3tDDKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW4PR11MB5935.namprd11.prod.outlook.com (2603:10b6:303:18a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 20:41:01 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 20:41:00 +0000
Date: Mon, 21 Nov 2022 17:40:49 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221121204049.z6h3geoowcwygggd@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: SJ0PR03CA0234.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::29) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW4PR11MB5935:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ab49a7e-6fde-44b4-5643-08dacc00b353
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yJ8eVvzZ3YjsH+tD/VvUnpXlVNIW5IJPIcHSPIJ1lKr0q38sP+ORPmYy+LRVAz1/m8WVNSqqBHEzuZVqeV4l26RR2prLGXBoAnVDrmEQYBK8NgTKHu0t7j05G3PakYEP8lCs4UWqsOoUyH4z4ckFxghxOfBhCGTAvONWf6DiB6/taoD71zadBJhDp1PT1jgYrTUJX053L3ueAZSGGPAUKvrsPDxd19lDLiklIcXPEHGnTdYqICRWLEulLDVwJzrBazV4X7Qn9lkgoXbicv4hR5Zps5SGTpqRzJOQDbVkNUhW3fYRk3DHbWq2NsTHOyHIJLcD7kskD2z0pM5Vh+ICjuzwvYDipTgcq3kKrTZmc43L7EpDnW5RiOWLn0PILt3+b2dlBVn6H/p/NzobECWIZWEwpCTloWXARjwfwmukQWq3aU/ZgnKnmWM+oXPshTkNj4nKGsJPsMFo8GLyLiwZpZdZms9tmeUfEXCVsDytulpnxcSGEYz/768HVbroYoIHMB2Xr7z4KbulQWadgdlk7JgBWy2iTZEPfmEQwfkqENu4aQosQX2gLIgzpQIHBeEC0caNZw6DXhHs16VPa7YI6hAWuezpNIRNHUUwaQcsWunIhgPnzmMr3XyR011f7j5d
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199015)(38100700002)(41300700001)(82960400001)(44832011)(4744005)(4001150100001)(2906002)(83380400001)(86362001)(66476007)(8676002)(316002)(66556008)(6486002)(9686003)(66946007)(26005)(6512007)(186003)(6916009)(1076003)(8936002)(33716001)(478600001)(5660300002)(6506007)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DmYPQyJ8HBJ8FqtKdYmFNONQwYTmrAvVgLsxo9NpEEnSs7XGKcSRWvQZmslG?=
 =?us-ascii?Q?RAXtIsF48h1Wx5Y3UDqw0Of7VX8RrpnJoopItgVNsXCOuyfx1ax5TqWmlowD?=
 =?us-ascii?Q?vLTrpOWrRnfO1U3GSD9rax7VmeaA1jeIrejPIa56E9E+9dh2d4No8J0fVXZG?=
 =?us-ascii?Q?HeZu4wXyPBCLeRg1F9+biJusSZf7tHogNHChHdDf+lNTc8Mwcpcm8lafpSXG?=
 =?us-ascii?Q?g/557aG4ifpd1WoHr5n72V2jG+5zM/7hS6hXwxs6dKj8120f2Jdq+QamBxcm?=
 =?us-ascii?Q?ks43GZvX6YJZjwvB6SiuTig16oZMr8/5HrwhnUSrj36XD2jc7sm9CwnHY6zW?=
 =?us-ascii?Q?SS4qvqV/zcvj0EFvxfWp43K3UDIucneByIZh5BCDGoXxZQqPHGs0i6DUUvZt?=
 =?us-ascii?Q?S0fTkmwJf1HcnjDlbwh3nK99j7eYr+xZ5ml9V+2DfgjydEv0a6VGhNCAioIw?=
 =?us-ascii?Q?PRuXPyVWw7FxCcG5GYa39au9oYDuwAaWRcuGN6a7sRDz9763tgizWTysSM9k?=
 =?us-ascii?Q?b8/Zy18PySODUKLJlXXDuycXVy1hFsJ7weXPVbBhHmmnfHmlaYRtXl/KcCQ/?=
 =?us-ascii?Q?D/XHcnMtxPzJgQtHYU4uxSuDv1GBgkyBymuHt6khb4kno7Uv0uKZqiVQLUNb?=
 =?us-ascii?Q?Zz1VgMKEuTBIY7YomWREsQKHodit7e1GDN91P//kznmmF4qS/LybhqtGFN00?=
 =?us-ascii?Q?R6A9+iPzUldaYy7t3S+hw5ffmdl17ld4763fMVSXMBAeG6btN4iJFkbUvmhK?=
 =?us-ascii?Q?6Lr1ee3BhXRp1LtfwN06qCzDMRarqzKgog4Pm16UoD2ik6x4UNGWIqXZOsFa?=
 =?us-ascii?Q?okmHBHHNJi3gkKJ/xDq4BlabbT3h/tCUYEd7k8WaYVPcLIw5XL4jriQWQXMU?=
 =?us-ascii?Q?rXu642DHHoK3a/dPW1OTBzH/ONoCTokPvZTOyRrQhrEWVtqaR1tXfbQyevXZ?=
 =?us-ascii?Q?RzUBt5xeCm44EXqF0VuRyFy6ppRMMJcqDuTjE4bjxk+oSrZL+RjLK1Nq3w1Y?=
 =?us-ascii?Q?NIUCB2QrBQoTw+IFU1WG8JJJfPXFtklxMciI9jSKWgDE8CN8Gvz0SZ8W7sLO?=
 =?us-ascii?Q?/GKE12Vxrao+/ffnyt7ArIgUohYevctlZ3+W70swV+umf5gnSbUvQ9mkTCmp?=
 =?us-ascii?Q?KjLfvzyy30Y0bW+CoCMmMk7BnM7OYMzGYq3ue9GkLq5zO3joJHWmBJ2crgHp?=
 =?us-ascii?Q?pmpCo79j9cjuB8/4YWbC4zpUqz38FrAhOkSsel4dZZwms/dEIHFROgOO+IUU?=
 =?us-ascii?Q?w3D8jjaSKyjUb47mEf5x3yCgKgTb0qB971EwztkWnM/KYEM6pPAsyW+psIQT?=
 =?us-ascii?Q?ycc9fIulzXqYv2y/Hs6bOQWfCO/aMoN5+EkSwxRInJYGH9KrOhXD2KRXrzxR?=
 =?us-ascii?Q?IU9qR0X0kkMWPRRJyOw3u98OXcfGmx0SrTeQZ+ZUvrXBCDq0PRDIgMqwy8IZ?=
 =?us-ascii?Q?TTznm61DtGpeQUxcIXwLXCazFm4JTGUC77i7vPJKl5fjAa3gazjNq6BnPWD1?=
 =?us-ascii?Q?iVSZCMH/5pkQefgZNCLz3oGL8zlpcxCZC9NV8NVji5gb/bmTkj/dviwFgJhB?=
 =?us-ascii?Q?BMT/Asefhzu8HZwyGrDE8n5Xs/LfCkdgY/Zt1dTGB+Xy71vPAFEOUsWTHDtv?=
 =?us-ascii?Q?iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab49a7e-6fde-44b4-5643-08dacc00b353
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 20:41:00.8558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kjJT/JQrvBSaJ9wFqfeazX2fX6/hjq8I4bjvmAJENzKSHeE83QwgX3BxEHVtTESiHUAt0CM2SzoGgghAV+1vPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5935
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] PR for DG2 DMC v2.08
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

The following changes since commit 391fb47caabaae8719fb72ba4891d1fc27ca1923:

  amdgpu: update green sardine DMCUB firmware (2022-11-17 10:42:59 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dg2_dmc_v2.8

for you to fetch changes up to 7f6279b3dd76ff955278fcd9e517eab85a4c97d6:

  i915: Add DMC v2.08 for DG2 (2022-11-21 16:38:26 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Add DMC v2.08 for DG2

 WHENCE                   |   3 +++
 i915/dg2_dmc_ver2_08.bin | Bin 0 -> 22540 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/dg2_dmc_ver2_08.bin
