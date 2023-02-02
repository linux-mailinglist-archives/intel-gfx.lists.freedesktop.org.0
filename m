Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A026884E2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 17:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10CB310E57A;
	Thu,  2 Feb 2023 16:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0D4210E5A7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 16:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675356960; x=1706892960;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=57qmGusZTLgRny2zJhF6QU2iCLrbMtK8IL5egfFeXK8=;
 b=YRpszZLYyqGTOafmBjXsrYXnVH7295JCQXn2277hoK9plZNqlMpwW8DP
 kVcQd0NMRuNIlG034PV3R+kZQ1MImYNzx/n3Ptqr273TKcxBD61qjuNxD
 2IM4t7Rq8yjVfIQZy/vJCECqa7WCnRg/F+7zLutyvuuRTKfYyfNlahgCQ
 +Ca1aFSgNawHYsnLBpNKnVe/N1zJpLVRc18aPy1XkTDROY8/rhvk2XliI
 uDG8NWecCD3zSH++cFh8rXhh6wI8vMw4/tDrer78hnWN7J7AKmsyW+gPC
 5wudYkm2mOhP14DpBmwpkfMVuk0hVugURaZj2AQgeCWKDdh3M4IrEYZ13 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308841106"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308841106"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 08:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="789353311"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="789353311"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 02 Feb 2023 08:55:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 08:55:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 08:55:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 08:55:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 08:55:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEEZJjeAu20qSuiPL1R7F3LB9LZb00siV5gHLrWfkA5RJ1FhdTELv+p6AUGVSVLBrWi9LU0m2CV8OpVOwotmRFnGTK6jbARTwI+OgLql9PJQKB3vNwsD0tN/ct3uW0z4WB1w6AxHDmRDHMHpeTGxlPdcnCX2toj4D/8fmJmhx8yq4K/v+Q/yC+q/2xSjKTjYHthBfUPz5OJSafOgZQxEw+WlR7ZEKxhrNuOheeykXmK/y/QC91kA0gD27LRgWXwHRAcSFV3lUB31WxL+Q928F7nVQ85yLlNBzCqXwStQcPiI642Es4mJ/GZbRIZS8qkfH2B+iUJp9166Pxop5kUfAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPNbZr9Bg3H3YlP1+CtW9EhxnNgX61mk72adKNVBXpg=;
 b=jfTVDbdYykNlaESaVmF+j48DXt0sIuUSdqQTcvXrrW+zxNVNRggrPimnahdQiFTFxb+bulIyOghrXoNKN0yvGHx3UxKlUWK8BiYLqonJYwRElyGBSp3vN5O3M64CMaypsAijMfbSwjrTsWLV1/rRvUUhzyDLb+yUAPqsOG+bPW6xsxwrFBCFVcZ6OtJsORFgNjiqFJybwQSip8zxm/NhbNjwWrfHxqZdrutT3aRA6p4CyJ8seMNS+/bor/lZquxVE8VKw2jcMRvfTToKYc64n1pHP65VYmb6azj1Faq+pen9vX5+Uk4LMYRHXkEnFPJkQiN68wRck4HzT17YgVfLMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BN9PR11MB5497.namprd11.prod.outlook.com (2603:10b6:408:102::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 16:55:54 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6043.038; Thu, 2 Feb 2023
 16:55:54 +0000
Date: Thu, 2 Feb 2023 13:55:47 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <20230202165547.xb4uet45aywmt6js@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR10CA0014.namprd10.prod.outlook.com
 (2603:10b6:a03:255::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BN9PR11MB5497:EE_
X-MS-Office365-Filtering-Correlation-Id: 83aa50b0-4dff-4433-dc63-08db053e58cd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9PlrbO4un8L86D+NSXxZKkXXa67ZBYidS9Gim6F74kOFvDvuVIpSMs/wtNEhExwijMahI3YtkivmILw1pPn4ziKN9eDYdYtDazossmRaCaAAsh91jLD+c7rKPllnnYOB7jl8/NEm7LtuARN5uL9JzDIZWJq76Xp2rT9l/y9uInsHOLeKQYAvEbNcdf7bUlGWf66Si4W0Z8OhZgxFsYw9HY1Iz+2wg8XaGTJrESsejteChI5Gb4FyN53Htjj38FY+KhgTcUjWiXnD2wN0yZXo/Ys5zxVUWiCqF87PY7R4S0kX+d15V33UdxswSNsaFV6rdHtCWFusWYLGyNkDYsdgk7i7hUSKoum1jrsu5zsRaPBlTlPsxa6zPp1t3Sv2Gsg8UyoPMd2Vu6nmyXXktXAVN9ytETnLHiDhdwCcPRg25/100LBr+i+tMYy9LM8+DvfWi131wDEZCruRd819wAnfEGmvYtTPvpRCd4GNODa/1uOp7qy5jvn68035Xuv02HcV03ssVnduBOBMe2i8ZpCuop1RbySW8CNamW/5eZzoZO4tfj4MbynNd+LBC4bOSurNkYXcaOYJ/8VQut3PiBuSsW/4HwyT+iAdPDaUU1SPJJklMptHJE7kcCm5t7RWQLqpeBp7ME8ufbR0DA3JcR6vxw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(39860400002)(396003)(346002)(366004)(376002)(136003)(451199018)(2906002)(478600001)(6486002)(44832011)(4744005)(9686003)(107886003)(1076003)(6666004)(26005)(186003)(6512007)(33716001)(8936002)(5660300002)(86362001)(41300700001)(66476007)(66556008)(8676002)(6916009)(38100700002)(4326008)(66946007)(6506007)(316002)(82960400001)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FVZFcNli+R6oHMFuifc99+0NsLLOZBk7tBlSnlm4fNp3VMlWlXfVRl/PbQQG?=
 =?us-ascii?Q?h+xYGxYvfCzNgEjxkdqgvDsg/rtotacB3+KtneXDu3nWU3aiifpwnsFGT5Lp?=
 =?us-ascii?Q?Ev3QcAnXlpSpEHyGPl3gKDpxv41/1uiix4KxNzv+sMC/4ZbhyH3ivZrzfg+m?=
 =?us-ascii?Q?2xdww8Q8seVStLojajADBlPksC8zw1GJN1LpdfDQJYi/EBQwWdbwIOCwhwkh?=
 =?us-ascii?Q?Y/r/E5duU32Umth4I+ojTzbV+sMJXSsnfMHvlVMSNSqO91qxpn6iR/rKd+i5?=
 =?us-ascii?Q?zFXLyndIYKF2oh3X6Jf4X3qWrJOXgcuZJ04pom5UFSTc2u8y9U8dGGM6V1Tp?=
 =?us-ascii?Q?hEtuuQywP7AqsXBt7wTwxisPydcjGmrrhAljf8WE0/sXz2P2Y0m9buKqL/ID?=
 =?us-ascii?Q?b2PrS7PgG53xgD8crtfSqyRNxEMPbKjs0iH40P7yuehwMYVnOW48DhiyskRA?=
 =?us-ascii?Q?mENuZ571vYByKA2TaU0Z2XoauhUulro3rXtDDuyNwRYuInyC6ZWxKmBsSp/Y?=
 =?us-ascii?Q?fYaT/mhxrQ8vzDglMbuwCMlEtGYroydKBr7v+ruRiqUQeiKufyb+9UMPYMo+?=
 =?us-ascii?Q?Thddma43g2YBh+fjur7IPFhq+SAxwNCWIwIu639FPnLx7lHgJh7E6Dn4eT9c?=
 =?us-ascii?Q?V0g5IIs46qM77XdRPUvAJZSOpNab56ovZxhU0aJXNnmDhPIFltpE+iRXpNpj?=
 =?us-ascii?Q?RBZgzCLsm6OWbmeaN36P0uDEAOl0IgNcJmayfextXNX0fDnSMjIAx2DURduk?=
 =?us-ascii?Q?6BxmX6XCjtmozTrrrTIPygbhoBTsCIZrKhwApkT8qubisp381Ggow50ew82x?=
 =?us-ascii?Q?Mj1EzC3Pmpa4sq/gFzzNtvonvEkgcNv3xZ+6ZsxxiV1UMO1DsuIqaobfM8fB?=
 =?us-ascii?Q?J/OFNUbyMkY9DCg9XfzMg4wiOPK1BQ1fEDYUc23d7IW+EeCzEG/3h/555cm4?=
 =?us-ascii?Q?Hjn4DVmleV2ZWf358rWPZeB8Ibo3AX7TBsU/t5Cf8w2vi+DCtspzh1dx2u5D?=
 =?us-ascii?Q?hMl7h0GTiPmIZ08wUgLfUSuL8N5uImYqt7Ecm7hQFlGvopkKQqz6dJnKdwBv?=
 =?us-ascii?Q?NtTZtG6RXNWN4+hVB1O1SSlDtrXWyvZgXRVMQM+MDwoeBP2hP5MIJbOM0dnb?=
 =?us-ascii?Q?TzIfQB2CuHbxtM88PnPn8yXlvBQkC3BlHTB2xCCss1EebiOyVm1JqWxHl5Vy?=
 =?us-ascii?Q?gOmM8dqyHOzPDEkcQjNdmny5ZjWjFSDqshxnmv2C/BUTGQOwI/GaQpv69oOW?=
 =?us-ascii?Q?w9seY8P0jaHqdaGKfw55x3m0OrCWxP0YYCErTKTjqkN1VEu8JNBH09+Z1nhq?=
 =?us-ascii?Q?34XMAH09/tadBjXpdqdtgjgx4eBPGCl3I/APFqTflRMUNe6QQCrRmtIJwS+r?=
 =?us-ascii?Q?/KLuBpn+Q5zMZWL16qFUMH4Op+YJm8oh5mQ8XSsV5dughm0BH4vfSyhqPqNC?=
 =?us-ascii?Q?6iiG8BQp+yaV5UWN9Q4sozh80TJoyU0A0MZ9VDvAqr/EKEn+EJWdW+kYvLEN?=
 =?us-ascii?Q?vQnXVckaWayfGJMURpz3B++nmOOAsT/ZBQCcDUmTfjbp929RcjUaVPF3q18B?=
 =?us-ascii?Q?f2m8qvWhscSKVjoNq5od1BJYKJXwvmyf6GJXA9RATlr9xWD+tSp9xigUiNjK?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83aa50b0-4dff-4433-dc63-08db053e58cd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 16:55:54.1398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nP+qPImbWjJk7b8WD3zqhVb1RSKHoWJFgIcS/nnD6ONg0mWRCEt3P7yesyxkrETlZQ3hJFQbr+8JKY6Qut4Q8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5497
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for ADLP DMC v2.18
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following changes since commit 5c11a3742947810ee8bffbd476eb5a1b0c7999f2:

  amdgpu: Add VCN 4.0.2 firmware (2023-01-25 07:40:41 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware.git dmc-adlp_2.18

for you to fetch changes up to a5046f435699b88a20fe9f5803da2a5c2f604a7f:

  i915: Add DMC v2.18 for ADLP (2023-02-02 12:58:28 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Add DMC v2.18 for ADLP

 WHENCE            |   3 +++
 i915/adlp_dmc.bin | Bin 0 -> 78500 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/adlp_dmc.bin
