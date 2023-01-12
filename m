Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1BF667E8B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 20:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E38810E33F;
	Thu, 12 Jan 2023 19:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F13EC10E330
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 19:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673550059; x=1705086059;
 h=date:from:to:subject:message-id:mime-version;
 bh=JtMX/hUmRH+AXfYzNy6dSqmx0aTcrEVPdn/dTxqDoas=;
 b=L4gd2Hn7l4sUcNQrsWpyiCJ7Qpp/PQisp4zLFOG13/kgawGW4SGtcIcu
 qLwFLNnjly3CclMVCPNbvAQQNDjr/CyRbYlrUCP51xAMdadxDWPmdvH0I
 rrtVC7GT2lxk/iMfJCoe8fyZpOMHAXAjRnymPtW5/I7Eyt4S5SKhN0t1X
 Fjr7t7ea/gH1rBSSubZpUy+kQ36VPpwECdfntY/2A0MGSlgdkypIG2Q0q
 PpPw2xqAQTZIopwzBvQFjMfVBy7hmIm20Tg5xxJwAc7hbY4psWrYTDnfU
 juJOiqCKq56LtgthIrNLoRiN7CrmLNAMqWRTPy/z11n4RlFrCO9Q6z/jl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="325052876"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="325052876"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 11:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="659931388"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="659931388"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jan 2023 11:00:50 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 11:00:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 11:00:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 11:00:49 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 11:00:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFOA50kAWxJttbxztsK5C1sbGGydgEW7QDzt82kwugExtNuxBxwd6zZ4jZNtOwkJgBi3D20FmcfQqr5t4f5EFYxRCflZrDhMGhDR1mPd+qPTNGRgxNF+83a/Xpq8+DN81HJ0yJY5WS4aZmSR9WdFi4S+B+6IZ2tvHf0F1rT//fbhM7JQ9QT8JotgYdZPp9zV6OQfOK0hlGLFr735FoccVwdPHqERir2OCEiGIhO3dew8KLXFQ2vioPUBWHSAw4bz+kJDrfevDfehfXW2AiPN3l6bpOkiqAXZaJ6b8sTgp5PjhIFidZ79RxaC1tudrw2DBCy1zzIdWCHLaCM/TgDvWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MwvR+dYW/baIDeezN2nXdErWKqKu9ep0AwnzwB+naRk=;
 b=ANb0lAgpoR68U5Wdo1x+5yWdlFJIntEiOe4PHzcHZH2sjkShGf39O3QDj3LTZ7py6OHWQgt2TVhuDtWWHP4MuCcemGFUwQ3HV7UPcEeY7IEry2glaEdiMU5spbU6R438+oir2eS6qzqd6Vq6Ltavgslu9qEj4oj61aMmyPvZyhD+1w+r2Kn1TI7q1JCU2TAnMh1bEso1teG1ObkKkOW6/N7MR3XlwvPN75iOm8pvyi2Wn7YlDsEXFyShDeMVVJq0Vrurh3zl2wIRUfxvBHse+7eRi5YHrY/MldSMPNKAu0IBsCxTBH0KpP8VbunkSjGnSh9+FsEzQAe9R2+RHrkYxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Thu, 12 Jan
 2023 19:00:46 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.013; Thu, 12 Jan 2023
 19:00:46 +0000
Date: Thu, 12 Jan 2023 16:00:35 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230112190035.uxlp7s3wamyez6yn@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR11CA0046.namprd11.prod.outlook.com
 (2603:10b6:a03:80::23) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB4828:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b9f60a2-831d-4a61-b023-08daf4cf4fa5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3wv94Vp9H5HmyV6vv17Bvo0prNX3lPCTgzOJ7Y2qnZScONOXII6sarM4C/60BL5UCivvutFq0s9NGc265DYYMqFPB08qj8qAANh5jjHZw/c6hKgzeU6CU00RemFuGzJn9yAEw/F2iEWATY0dXIOCEa2nBJ4AtRib3MvUyGzfp80EWjSWATQllwiy6+7WujkhTRJTZ0W/TQS0MCnNsJePZKkzDfpHSXBVTPB6VfAUd3cH1dPQIbu5JLcLU9POsMeGSw+xt9SJ3yp1zHbOh4e3GP5e4cHbC/OPxZc+2j2IYv43j+n/vGeaNz+YrLHoW0v3BoZ5zEGvEn9x+BSaPtgCEW4ilQNqA46WU7fuwmdT2LGWToXu7acqnPS4C+XBAM2SpjP18E5Lg4/dDHV/bPfSXpp+d6QX8LCVQK8Gp4jogmJPfo9GmSI+S8ZCO5U1u66YYYBsy4CZjzJtdYKPDS/r/HycxdZpIHCzZCHt4rk2ULNkmZY4xMWCygdT78VxomD2/2DX8G138DxfCH5wFh6oKsBHfBVv8hPucF6LZjtGsEZbYLW4AcPSH2NBZxd+Bj0wZlZK8ReFBTkEv66ZstMIKB+Y4TaXoUckF4zoMJ3eyOUIYn+L/LQOPdgr9qOWR6xLK/9Oz2q9+GwZK4bvizZCJA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(39860400002)(396003)(376002)(346002)(451199015)(9686003)(6512007)(186003)(6486002)(26005)(478600001)(1076003)(316002)(66476007)(66946007)(66556008)(6666004)(6506007)(6916009)(8676002)(38100700002)(8936002)(5660300002)(41300700001)(4744005)(44832011)(86362001)(82960400001)(2906002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6YpkuJcshtWDOADLuTbttq9JlGY5HoX06zqUFfMbA9ZSoHg7f77b2NKDpYxB?=
 =?us-ascii?Q?F9p7bV+FvXdHWCC/trSu5U/grrPY4uA8yfM+3Pvw2LuON9hkJz4NTkMzgVZC?=
 =?us-ascii?Q?ea6gv6YQYzF4vtzm3zeZdDyBXeE4UfvuoBj9Vh1MhpnVx2mmfKFGg7JLoEOM?=
 =?us-ascii?Q?ETz1BLPKbCg51aHr/lgb9Ef0REtCOo1syUPZfvbtqXw9s4GE11h3cqfSdSg7?=
 =?us-ascii?Q?t5wBhMGEgJUTMBiiVgLtk+KgIfiUwqwk6J+kANnztZRQqw/Cmpoh9j9o93Vo?=
 =?us-ascii?Q?byB0rm3zYWpfrsyeIl9+OTYq8vZKWJBK6KHtM88VnWyAFA/ai6x50vQql9wG?=
 =?us-ascii?Q?XdYTRzmHkGCU652wVG78r+9JwRniq922lgjN57fAKzFv7AAK6VElXG+/rYFA?=
 =?us-ascii?Q?HKNoc7EKD6u4HfxZbr4gxGPAJEJ4z+5X29SmSDrngFfntzZsHWi1H8JLpIHp?=
 =?us-ascii?Q?HIwQi63gewg9HnK1CYkyNMI+WREbifqvEvutBJcgU2YH323UyK9VH6zWNRFV?=
 =?us-ascii?Q?ZON0oQytn7AG/bIF42LQlTwhY36AF2xk6qBV3QsSitdLikSelgnwFRVjNliI?=
 =?us-ascii?Q?a+kPptI7cnQkcuiJUkcPcA8W5kUpkQ4IaJxVNxpLfA4SWuG5CMaYgoMhraHr?=
 =?us-ascii?Q?UVZI0dVP2dQpMzLwasFE/ClsQCuBErZHjprZtNhes4Pa3Sshhe1AAzntH4R3?=
 =?us-ascii?Q?NryXWJVSe+dMpVaJQhuMbqjoNkRI3ZhJc2sMdgGp/JnzCYchbvSnW/gowGFV?=
 =?us-ascii?Q?5b9jXV1FTaKms2Eq4gkeTUMlnjOroHH2DY9OZOIALeKewS68QFXfimFwpUPH?=
 =?us-ascii?Q?DAR3j5ST6Ppi9Hpe3vTCoccgSGWb0CdlPWeRYAc7+pvMTXSGQSwzF15AMcX5?=
 =?us-ascii?Q?0jezebjKVNAeM0YuWIIHYLNsbv213gICce1DI8aG82EB4WFYYBVRNYQ/bbVL?=
 =?us-ascii?Q?rD7vVVYVli/0sOrDpYX/+aYw76WquHttITDDU1zDOGB9VMd3o3jo/x567qhF?=
 =?us-ascii?Q?xou8MyByYbM14k2OmTLmUkv//Xs35rXq20FFZrKhHUjuoKSVLVlEc1rP1T/c?=
 =?us-ascii?Q?YRuZbT+EuKpgbPBolM97aAcJq98BUP6nqaxDKNAnW36CrPXTIIKyO2I6c1uv?=
 =?us-ascii?Q?W81Q0PR3982JoLU4wL8XcxoLB8A/xL1J2v9Se4i32JIlVU1iUmbTK0Fqf95s?=
 =?us-ascii?Q?AFtDLC8CnEnHhBTBVa0AcZRYw6iTaaGFN8O/FpsWUtwlHRIQWFVCGsMPLpWJ?=
 =?us-ascii?Q?NBxedS1pNdIXkxQeeGGRi4+/0Fb64cfFjXvnM6RRHGM04P3abMj8Cxhc5GL+?=
 =?us-ascii?Q?o12nxXP1Ye8dJ85qjfvZGgsYhfanVq2IYcYVysl+LnWTaHGwcTI/BRRpSZ2m?=
 =?us-ascii?Q?ky7/WLSMhc3GGm1mtBjfeU+Ig3FDPPsIkGH96flcyRwpLhh2zJ968V8qlgf1?=
 =?us-ascii?Q?NmdBeiLvgecVNrGOpoixZSsOQxh0cjGBjLtGrZsJKiDGsevF424fHJ8euJnD?=
 =?us-ascii?Q?ksRYoj1W6qIg1aoLa7hKJh9/e9R6WowvegyyY0kw0baJTScBYIjMr2sM2WKg?=
 =?us-ascii?Q?es1/S0ARMqYQNJQ6AVIEeHU0wXGGYWP1WiRAASTdBzcaHAGwYble/GB4qmKW?=
 =?us-ascii?Q?IQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b9f60a2-831d-4a61-b023-08daf4cf4fa5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 19:00:46.1293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a1vUNPBiFqX+A3JLqdKnHiVGQ/CRMxDXhKYGpgE0GNjEK8wSz5annJu2UqOr0JUdyo6hbHN2JN1qlLoPY7mC1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] PR for ADLP DMC 2.18 and MTL DMC 2.11
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

The following changes since commit a1ad1d5b50626f2d126adf1964ce0e98cbb8b39d:

  amdgpu: add VCN4.0.4 firmware from amd-5.4 (2023-01-10 10:08:40 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dmc-adlp_2.18-mtl_2.11

for you to fetch changes up to f065a88545ff3ad9dd8e653dc88b7bf2c7d34b84:

  i915: Add DMC v2.11 for MTL (2023-01-12 13:32:17 -0300)

----------------------------------------------------------------
Gustavo Sousa (2):
      i915: Add DMC v2.18 for ADLP
      i915: Add DMC v2.11 for MTL

 WHENCE            |   6 ++++++
 i915/adlp_dmc.bin | Bin 0 -> 78500 bytes
 i915/mtl_dmc.bin  | Bin 0 -> 48512 bytes
 3 files changed, 6 insertions(+)
 create mode 100644 i915/adlp_dmc.bin
 create mode 100644 i915/mtl_dmc.bin
