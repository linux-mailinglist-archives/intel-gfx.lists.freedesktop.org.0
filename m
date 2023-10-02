Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 618EC7B5380
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 14:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319BA10E063;
	Mon,  2 Oct 2023 12:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C8A10E063
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 12:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696251555; x=1727787555;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Qo54fZzSPeJ+9iizFGBnTDBHM8EuALjPJi4L8gHgDuo=;
 b=JhTgY/ZJ5RPrTKdLF1fR2a3AFVASQ0FafERvbjscX7O96UbmparGJ50k
 /GntT/y481w3lothyC8UGZ7e1oae1MgEbADINtDtAF7ef0i++mcXSMljz
 ZHVS4QjhCc0dlMHD5TyF2LAK0alenTqHBk4wK1DBa5v69qEqFCFlpalHb
 3U1Ktx9mJ7ebmRo9BVRm3L5rz7lgS6bUgAX0y/ig8Gfc3sxtZK6CuKTR+
 caV85pJ4Y9j86RwvLy8x4CZLkH+1kuKf6pEf2SasBrSbIcShm+win92tU
 isFDf0fntIizGbv6GcjX9q3xoFNt+4YfCueVJFn4dvEGIEG4RncnuGA2M g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="468911638"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="468911638"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 05:59:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="779922101"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="779922101"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 05:59:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 05:59:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 05:59:13 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 05:59:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UruqTcXLGUdZik8yPZ/ndb3GcC2iOcWiNIQREAR3UrwxdPDh96IXBARMN2dszsW3pWlI0+FrWjhiuFH6Q+uVt2QGjY6YduV+dm9pUBS9zVHYIpwOfRNhYegeqbzSWzkFrM4mf4EjbvXHchx5nFofEwv30xNMhDxLo7GJgSa8n2hND3lag+o9mWyrNGpWekvxQcuNC9Nh8N8z+poQPLINc4emoJlIS4K5wiemdBSXhrR//6AcfFBTDL6S7S5VRo08R12qvqj9tzsplVAnREwIhM0yxh7ykCoNEVXKTSfib95s3hmVNDIzkdaX8nwUp7JCcsZGZ+V3KFpzh+S6Cd9ijg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zT2JKe6WzO9HWK4HBjbCLumUCB93TXt4FUkndHpIpGU=;
 b=gjtKWU4YvNH/2eMhGBmP2Tc5/JlHfB/I6olQ0YU04Nw2dQpupCz/AlhI4y+kuAlgxqkS6j5T+Ulz/eQ/cj/DH5xuIGtzlFep7EAVCjI+++hg1y3tnQ/STkwJjElbuozckWtAGBCoLOGLgo+1GmzL6Fvi92FRcEvD1rw7RN3ujdh79n8ENEdOmyc2SStyA22nvKKoJKC+xi2zs0K2ZZaTZP+EflEQuphZzfF2DdtFsgNkgV5Kid97COolpsBREMOGAJ5qC47MkuGwmKcVyacCTpKOaYJ5x+vHdZg4IFh5OMlOw9FBSjwtXc6/87WHVxbc5y3kUyZFtwtO7ONNW7NdRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB5019.namprd11.prod.outlook.com (2603:10b6:806:f8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Mon, 2 Oct
 2023 12:59:11 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.038; Mon, 2 Oct 2023
 12:59:11 +0000
Date: Mon, 2 Oct 2023 09:59:05 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <thqm4hqbkgqxj5fh6olad5brvwvtlof55tjk3kfzzz6r65xcd4@pww7dj5lvr25>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR11CA0043.namprd11.prod.outlook.com
 (2603:10b6:a03:80::20) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB5019:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b43d79c-5b59-4200-3fdc-08dbc3475f80
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U4lGhzvYrlxtG+iE1vYAIhnHZYs7iRqApPYVNmBYyqOK/z/ywhvJS0V3WaQE8fT6z3rC2x8Zqo61f8+oPESootvTyksuiKT6rrEP6Fql/UhsKAzAPaBpbUYQWu/vHlaC5A0AKzXWyjzEOGftZppeGSCzNRvrclgcMOgvz1dyru2wXL2Mn0A1+2QA5fYiN6uipLigq5SzS2LFu55Ch0DCJZdXEKg+WtYFPn5BK46o3oOJaBNOfx8CWiv71M0g8EmkEyeCuMCbcgZzcu9HHLc8y5s/qhte+hErOjv/6qPbNCVoAuWTRLbR7bQ1C9c8BJq3PZKOX/QlkIznBbsSde5HU47JdsRnIRCTypr05adFmaw2J4Tm8uA1HRWE+ExWDwH3ATLS+5dTVHezsyYE60+HDi7z1t01eR1LG/R/YN5UCICx849bW1kFB6PxwyaTrrlgRsPLmt/BrjelKD/3vmYeO7KGI0P+/QE/0J7mTJgV8HSiuKeaHlPSCerysWYNc4/8u9Yt3Bw2Z58iqbaibH4P17qsUy9XTQszWjFaUtedlmKIwfans1FBT+eTGiOAa9gn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(366004)(346002)(376002)(136003)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(86362001)(33716001)(26005)(107886003)(6666004)(2906002)(4744005)(6506007)(83380400001)(82960400001)(9686003)(478600001)(6486002)(6512007)(4326008)(8676002)(8936002)(44832011)(38100700002)(316002)(6916009)(66476007)(54906003)(41300700001)(5660300002)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pf+S+mpCQWQliPUTzmQMO3QvRjl9Lk94hupXgeZbyRx/KT0jMfCmYngunZsJ?=
 =?us-ascii?Q?hHYD/ckMeDX75oF4LRyBlxBOQPSComeIQboz7aj24Zm6YJkLuk7pRoFTL2J/?=
 =?us-ascii?Q?t+AVISNW815ijPwDCAL2YjzDtMV8LWXpKxiEmvHKVD+lQc4TxjK8/IOJLj9f?=
 =?us-ascii?Q?yK2Ir2RFIoea9XcJ+PFDRNkfmsYEjSLlnpeMH54r3n1AQIJXF9jhOhMAR37A?=
 =?us-ascii?Q?cT4MU1CxFGIjTHVLmS+9/VkhvaCYYeVDV6/rKNqcXKxSUuqseVDWY9nUeRr6?=
 =?us-ascii?Q?MGMFhRziqf9X/PQKZC2hVIjN2FCo0BRfq1hui++GCDk0J4e2dy9L+04PuVmn?=
 =?us-ascii?Q?ixMEGgSIZNN1k4M73EcQpfEnQfEfu+EcpjMlhTujjYykvr9iSn62/YCQs9B2?=
 =?us-ascii?Q?7vUSj3ezbL5BMcUplixs+DLGkvOEcqJbS5tNVjuefhIyB/CNN4mA0y5f7Mb2?=
 =?us-ascii?Q?D4OwfWj8W4TDoFu3Hujiaic9hgBvTe3Fl2amVcu07wbSJtEej2C2MsBCkLg+?=
 =?us-ascii?Q?XuBK0rk2txma//u6AoGX9UK2csA4G4mQW/WxHxVw416uquL2uK70S/K5+vta?=
 =?us-ascii?Q?pCtxAOcEsmTPxdIsKreM1RbkN8GXoTKLmTLeQG7n6VGrxl2hyiKhwDl9q0+O?=
 =?us-ascii?Q?z8/ncThTwlwgVTmib5uoxuPhjrJUwIp4kdmiKV4q9buNEeQQrjFmoTZPflPa?=
 =?us-ascii?Q?zPUbhIPTo8qpqzLaXUkZRsDGUZW3dGpbigIxy0cUDWsmqWXVdS0pVGPGXx00?=
 =?us-ascii?Q?fksonVe2nDwV8iwkWqSSJew5xjy3w7pnSUzziYKCTx/dquLRodnI3e1D4exm?=
 =?us-ascii?Q?GRDUbsKP9A9bt3KuNm7+ZThpA8xRbx0wXrQbhzVYv/uH7YOEpoeievB6/IIu?=
 =?us-ascii?Q?s4Yz5jNGQMBYO1T8dQK7jQQV+k6ad1Rjc+/K4ym6cdANhH0myxQmCuBZcO2h?=
 =?us-ascii?Q?E3U9DsnhV9zjRRxXVht8JNxYelUettZfuw5q9+pc0rPPl8oAUh/fHutktX1z?=
 =?us-ascii?Q?HN56HY3xlFt2OYVavXXMG0rXc7y45A9/AKiNSJy/gQvD/ASBt/AThiUfO7SH?=
 =?us-ascii?Q?jSTyoGHJTeJbMIH7qDTXgcKt+1nskHFwO1ZXnbfq/YV0tRJXduz1ALMl6AH1?=
 =?us-ascii?Q?g4nF0a5VXFbmjytgmQTabrXsX0p+XF0vHaApckadPk2qOj0fO+L0spTqmBvV?=
 =?us-ascii?Q?r/sepPcjx2sl4yU4AG1k5Cn3KhRDe0pBSpDPkQaliWc1C/fyIDaONTB4YuQv?=
 =?us-ascii?Q?1D4qTgFVbFwqjKeecjru/bPNJX7QrUw7HZ5Sr+zLdbKqwhOE1PNpCsugUMpY?=
 =?us-ascii?Q?x5q0F0OZWpGvbiL5D9HFhmiH5yiXjzthhVnlNmZ8AuxK9emHh/F8w3MD7dtR?=
 =?us-ascii?Q?PTBpi8aJRqU1WlgWwetUl9pYCP4LFGViN8KKQtI2nzVzmFPZMNqEuT5OMXD+?=
 =?us-ascii?Q?V1ihytJlxiS90nrriAEHoYEoz+BXdj+aJdVCz+ZbVnEFfxUiZyRe+kVOWze1?=
 =?us-ascii?Q?mjc9iYIPuOTFusp3r79n2R2MNdTZcPvaxzRViryRjjv5xbaJBYc1bZd9LvXe?=
 =?us-ascii?Q?dIPpl37JYzX5QEKwMMW/9La0LDC/Rpyjo0EBhCAq+/nKHR2oBlJTEskEwM4Z?=
 =?us-ascii?Q?TQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b43d79c-5b59-4200-3fdc-08dbc3475f80
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 12:59:11.6280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YfFUq4bZ/cwOaEJ1YhZHQMVWH2dultBXQmuuWZMf3VeijU/qi8oBviyKsKd1jxHFlBig9WpUzFrEPQ/Y3jL0Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5019
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for MTL DMC v2.17
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

The following changes since commit 8b855f3797e6b1d207b7a2b8dae0e9913f907e5b:

  Merge branch 'main' into 'main' (2023-09-26 18:31:16 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dmc-mtl_2.17

for you to fetch changes up to 18b60f44e61c72eb5a5a36dc8e0381c77ba670b3:

  i915: Update MTL DMC to v2.17 (2023-10-02 09:52:35 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Update MTL DMC to v2.17

 WHENCE           |   2 +-
 i915/mtl_dmc.bin | Bin 52388 -> 52508 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
