Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 640EF78C492
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 14:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A70410E041;
	Tue, 29 Aug 2023 12:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 181F710E013
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 12:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693313799; x=1724849799;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=X0gZq++bjki9cXJkKxY0wYaozrK1WP9D0nOHol++QP8=;
 b=IfkBAneKJM38SihHj5r9Jb6bIqLFN/RCI/9RyW2muLHFHsmtvb7ETiiT
 ABMDM9ae/CzK2cjU58yBq1DuWvSj/Ceoqlww8a6pujly7jASVPCEAGO1h
 jifUJeSZ4NFvRte264q/H+SfasCX/D+OewG1zkK39ma6QWOYna5mWGDA6
 1AXEzNLaiaIawSZu8rO+pzxpQtl33kdbA0A4j6VvO35cHrh4vkHo9PWXN
 Qvl+5irnfhcQDm5EjerMonKH6/MEh2nLg6M3I3tu0byO0Fg3vzLZonnVa
 /thSMv6GfzwzBGvxuSNJ0MuI5X5f3xlVBhHZm7RuXSib9iqrkDQXLrQHG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="354872305"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="354872305"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 05:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="1069461141"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="1069461141"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 29 Aug 2023 05:56:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 05:56:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 05:56:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 05:56:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oU6Er0yDJX9O9iwSjttfOiEWNZy7c5yG9CMYW6Oca3rqOWCRUFL6sCQBLXGXslniQP8biWV2TlU8rzB+iHJPD6j2jsO+tguI3hyOYwBQ7IzwsVq+g8nibyeF7pxf/wDCLccQpWxFxBphFsKcDQ3eSIZMHIAUI8AV6+5KhqoK+Uws8SS9WHsA9xXofAK57eQ4pdz1cI7Pa7lwYUTvcLTpaPPxRTLjp9uFZ7cDF3R1f3pXFIW6kK0crgE4NwnU0N9GrtjvcXi3K6HZxMEJ0HDv5pkiVDcqB1o71g7H/FANWrZCM2m/aO4lr9/8CTJaSFX0THdz5UutVUd8sNgE4qcVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zdRojlY9xufWMjt6h8mqmp/P1TmTO/ih2d+kiq4Csng=;
 b=lxjwEJTVqjwTYEXQvpveoxVaZsY/M8SjS5YsVdDNFVHZsS6W5ovauiKeBc6X9A9Tou9HDt9RQqB9obREGzHmYs7Z0xHD09J7EYnhO7+xgS3Ak6LV36vWqr+Pxr6RHESeyJVUy72hGDc1wCLgu+f/xs9THGC/RovgW2/j+14jN6yEGiL38YCGVlaQJWR6dVoovOxYwv9haVJGmox2+WhdrmoxYqx6W+y3G85Dj0jNhpl0CH0eD55ZTBhESDgyudDJmdRyca/NZGwB5Xk8toy4PUWi9d+E7/Hnbrcr6tWIO+I6P5Z2AspPVTuwXNk8BNdlDAnOqqBwbTg8p1JWS3/BNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CO6PR11MB5665.namprd11.prod.outlook.com (2603:10b6:5:354::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 12:56:32 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 12:56:32 +0000
Date: Tue, 29 Aug 2023 09:56:26 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <ssndxmkgnqc3nkhe4l6ohs6kbrufiiv4vxukecuiz5ayki34y7@iw77itt3adlo>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: SJ0PR13CA0170.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::25) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CO6PR11MB5665:EE_
X-MS-Office365-Filtering-Correlation-Id: defd0189-8d79-409c-09fa-08dba88f5e5f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NrI+vVeBelL+lxC7mLAOmwTWjTNXKCeNdO18hJ2IGDz7G7HWd9TM69M7I8qpsuQYtWK0lC5iOy+r0hjnmkYA37RqtQ/smoGIpwHfpXEXBI+aG/s+c4FUqOZiFLCcaP0Q1mVNXGA+F8+g7UeFrMAyOpReJS3V33+dxWfBS0wqSMNa+h+SH7avXV3e6va5Kd+Re2joJ3boN/ZcENY/k9hoP6YGLJVZJnO27slffB67eyZxdfpEe/XMN5xS0r8ehTiRXq3Xw8dgJ2G5etY02XRVIXpY5h7Qtj20U7Zsdxa6CXLhREdPBVnLwFD2bFcRyQhG3SQCqoDSRXGNWil6g/uupvrn3V+L6hto2Aziu4yX3BajT2qGPrgiar+HFdvSi2EIULf5aGgZLWQ6o8lKGtp0HKoAQJaJ0V2r8307d8k++aLhsZXfF2UlOzEB5uIFaoNNx/VYfX5OSBJktUhaFKLjcF0nSu5jEEZmOQ0jANFvrmSyre82c8EHDVeRIVVuzQCKwI38tXyOPl5q/fEiI7HoJVHcOsMgCprAtIQOwd+qsIE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(376002)(136003)(346002)(396003)(1800799009)(451199024)(186009)(6512007)(9686003)(38100700002)(316002)(6916009)(41300700001)(82960400001)(4326008)(2906002)(83380400001)(86362001)(33716001)(4744005)(107886003)(26005)(5660300002)(8676002)(44832011)(8936002)(6666004)(6506007)(966005)(6486002)(66476007)(66556008)(54906003)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BDy5kPClKM0neSVRKxDL18HXew2d5vcs29ES5gkXkWhF+W+oMz5OPV+fblf3?=
 =?us-ascii?Q?YhRHvpylsrpCYjHyLQTaGdjiIVdNmWYBsdQ4Jl8HdGeQ9jp5bmimgRaKTjA0?=
 =?us-ascii?Q?0WIhTMEe06DQcBZOB6fUaSoxjODg1SH/J5rxOzUaJp0OFvhRKLG9vrhjcEzx?=
 =?us-ascii?Q?C7yEbKOBRATTK4Zqyd4zqM0EAkzgRiPbOyfPqnvNuwaPTf+HbYqYnVAI0OYM?=
 =?us-ascii?Q?HX015Bl6LBGje8al4OEHTVyfJjHfO+TvxV0CrTxjS7lviVO4MCvA5yI+OFTG?=
 =?us-ascii?Q?XFqTDMIcKz9Cs+7tCUfwtCmBCYXoFAyT7vZrW51mBvc+bO4b/WW8iCS2e3E7?=
 =?us-ascii?Q?bjZOa4lUIZrC1ZYCiFuA62AR6sbgvaWCnxqcW1QtbxdSqawJ66YgmbGD5ohm?=
 =?us-ascii?Q?T8C5EWYHBlRv/qVvQF3jdgzyKIEMmaVGRPhhQhkI+eFs50BXLLwU9s7Fa96y?=
 =?us-ascii?Q?UmoxxSO2wcv345Yzj+BLpGRQI128yCwlwsh9JuqiJK7X/1Ky5pDgKF59Sdc8?=
 =?us-ascii?Q?rVo8p7R68OZH+lUwOAXvm8EMmjLi7aZUiluXda0s7pVTQKt11JjGiDmEwioo?=
 =?us-ascii?Q?7NsqjnNOeO2LsBG8cXdlSJaUByUR/7zNMeMAqwJEKDJ2r7uoUYyEfwVWp+ZQ?=
 =?us-ascii?Q?6BFNcSmXfPxaf+eY/gcfdO6u+ocUamqN5Nlj3SXgiqwFRNSiUpOwprY5mrIA?=
 =?us-ascii?Q?KakAqUTi7ZfWB4s9KyC7tjtse1JMENlLk8fMTEQ7YJedYgpcc5sj0V8ld7J4?=
 =?us-ascii?Q?WImMan2lq9PgaIbDif8XMpiuoah9q+memgAlLKlbemWj6/wGXMrwGFFWZiLZ?=
 =?us-ascii?Q?AcvEpq2dUL9I7Q8UdA9Q2aiWd+53f/FbUtH2OWLNDt43w/I8zaJYasMnskwy?=
 =?us-ascii?Q?EkwBueCvGS7D9C3QXm3jBXdAeRlg0T3edjjmYYfkdyyKloOHfEUcjax+TfGK?=
 =?us-ascii?Q?IHdaWTCo6OtVryIT3/gX7zJafoJVmRuViSo1SfplAiIw3Q6nS4a8AysrV2hS?=
 =?us-ascii?Q?6iUNhBF3ezl7aBXadD3iE0bd5nY6BEOQ55VWiOGQ0lFICKyYzTHRxjdyL4ny?=
 =?us-ascii?Q?FjFV/QtvXC41M7dAztQoEUA3CgZauOh7fXZb5tS5uMiW1lPccZ4do92BQ1sv?=
 =?us-ascii?Q?SKNf6avNYkzr29Xqxm43PjJgtP2WcDR0dXXRmm2c5AtWxddsdhRIE27Bikrb?=
 =?us-ascii?Q?6rb3nQGyRZLXDNDQHKsfWR0OjKVRjIDJaDzeekEF2F+5l43HynLYlYgPlX12?=
 =?us-ascii?Q?k0p/sCh2GwqSQPeZil1pRZsJQmB71CFbOfh3T5x/nBpKVY6moLz3R0kNc7lJ?=
 =?us-ascii?Q?O9rJBytcOG54x4N/OBBgRTccG5SJa6jDbrWfrRJvnDYd47+GdvH0gN6ZNP0N?=
 =?us-ascii?Q?nDTfl6uXmObSVVeZS7AsH2hkNuzmEWaS42HrdwgdNXG0KKD8FdahuhOG//Zq?=
 =?us-ascii?Q?M2g+QYK8IYpU0jkvMxL380Sa3re+lVxPvJB3fZsi++r632K9qiVmYr8AIhBE?=
 =?us-ascii?Q?zJGcgG6N2D9thGURStHgra9aF3/WR5LHXTjpCtcCLnvzS9BSIiGCBnXhuDL8?=
 =?us-ascii?Q?voXH9qwapl1aMX/KHfyfk9aEiwtXF/KH6pk+pdBfSuQLnApeFPphseHu6Sez?=
 =?us-ascii?Q?sQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: defd0189-8d79-409c-09fa-08dba88f5e5f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 12:56:32.2100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9GslYeFDKoQC7VnP3eMAG+I+WEysef3bNs1WqxbegctpHmpEAQjD/ByKm9ysR9QsOTAs8txfVItBp7gLpXym9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5665
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for MTL DMC v2.16
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
Cc: kyle@mcmartin.ca, Josh Boyer <jwboyer@kernel.org>,
 intel-gfx@lists.freedesktop.org, ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit 659dfe6435b77a075d9896ff34250bcaab55d75b:

  Merge tag 'amd-2023-08-25' of https://gitlab.freedesktop.org/drm/firmware (2023-08-29 07:27:29 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dmc-mtl_2.16

for you to fetch changes up to 49f9e3479fb564ab96ebbfef327743b0ec2a7620:

  i915: Update MTL DMC to v2.16 (2023-08-29 09:49:34 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Update MTL DMC to v2.16

 WHENCE           |   2 +-
 i915/mtl_dmc.bin | Bin 52164 -> 52388 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
