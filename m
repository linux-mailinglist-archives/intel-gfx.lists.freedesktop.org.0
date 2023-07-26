Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2167640BE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 22:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C395610E4C1;
	Wed, 26 Jul 2023 20:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5176110E4C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 20:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690404645; x=1721940645;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=FTQjySuBV87NIFQM9BcTKTKEKgWubBzZzgZcMsDISSo=;
 b=JaJYeVAKX6CaAalRBtVcs60X2IubCb4MY7hqeiCv73e4LnW9EDcgqEY7
 bhwNPjSoT8pff7a7yWfP7dedDqOFl0eVFQVJ4arLqBdptV3aMHuc2HZjF
 xPWOBZmlY6NBCRNh+dvtJOP+ytRT/py77j4sV5s7bZizSwdya9N6d/sgh
 oWoDO/DLIChTNLXuaBksLRpkeg2LW1k7bbyFMKpfbakxeNVG5e0AoZs0e
 StVJEC3EHWNmGxYjl9jil86BVvlN8lqFN1Ap3HpdpTFTH6gUgz/+IKBxN
 8WLqSym3q5Ca9vEZeV2tw8ClRR3sR0rFd0gIQutSLdVMyDtyPwLrsAlmd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="365588791"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="365588791"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 13:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="792041827"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="792041827"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2023 13:50:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 13:50:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 13:50:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 13:50:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gJrqCnPC0kVjNQ4AeptSQ1SpANEZ2iZg9uyckn0/85CIE+RpClyBsgmVtVo2NCn2h0QQ/6IQ/hrOyVAPpU2N1vVYJ/QIYeyPUwLK7wzOs//4rsmkTo6AN2Kx0FH/XpnauauPDC8MnG49I1CK/FVFPFxK2TJbPfE/ixsBPWvOCrvwKFcXxeWhP4Dqx54JbgUVMudBUlG6NTTPkhBGelcz4bmVEJo0oqMAbaCy6Pr21Rd+OpopzV9RVXqBur26c8ZlRZSvpNq7BA8JpEjloLct9xuZMS8c/vsHbgIuXdXlKKwXhY14jY7zLLrDkykMN6KQHN82kp4hR1CggGE17bfPug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MoUFzHHjQdyVKR/y2+WSUf9LFIYFO5SBu9M8KZ9DVT8=;
 b=N3uv76S6aQMCww1FhVWZjIMuSv0jd1snz7Y6jlBG7mGpH5MYOILEbRqgKKvWqUYfUM/AU3Pv/j6HJENoBdknJGok6ji4Kmbknd2SyeJWtIziBbkq3RMOWMIVGFxc2Lhe4xqKG3Fg8lH0ojOPUm4V/RyO0kDDJ6/3mT+eYXU9FW5WlZJGOk7Bm/Tm3O9W6hEPhAStQ2hF/TnjMhDv4S4upyAYKOZd++iBgWaSdMZ2YYpGPDaR7IvjVJGEgUbIQN4qiwalpwQmNgZJ5YQh4e0PDA4fN3q9icr4yhbvrV8AqojAAAGo9cBcXC+qwk4It7n6jaCsLes94sMkF8WJhWLSkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Wed, 26 Jul
 2023 20:50:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 20:50:42 +0000
Date: Wed, 26 Jul 2023 17:50:35 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <xkl4onzpf4xwybliz7qiyi5a63ahm3ifobrzadosfz6v3qtqqr@dibuivsbafpk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: MW4PR04CA0183.namprd04.prod.outlook.com
 (2603:10b6:303:86::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV8PR11MB8464:EE_
X-MS-Office365-Filtering-Correlation-Id: d1820c05-2606-4351-6bff-08db8e19f9bd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3dHOWkcDwZEIO5XxrYCeJRj2euPPOVks1mX7140DkNX8YIeE5bAVdHbuLuIN2lmuWYQ7b6vekwBs5WByFJtRSf/iKvUnXz38RYLu9IA5wm57fFIUUzmceXK51Gy4050F61tlCR3rdE1iQ5PNBB1bQDPwRVN/03R/ay7InRRvX8AqdJYISdp25nVLmwjn51+rsfPLevVzanckb2C2S5xwhPp6AoH9OUne02lw7GsVJoeRUqn/3eGCugKSp0WxBYRu3mQEnsgTgmF2NTyX5CN4RhfZgkiMwXfvYgSFmzhAgBlLLCxdD29XO+l2B5jNV8aAP4oMVwOdlsG6JI6NLS7I1t5M0BJry3tTajPSCeuUstXpXD64Xd0wlEvcL5a5Zxoci83JejpN7L1VTaa5Tm6DVLRfVe5aeO2U2mvK3UCTM45SIE70KgAEtQCKWYckVWygWHd3vqLFiOsCPFVZOc5WTCabF2OyWC3LW+SpvuV2U0WEXPktkLa7FcKR/YaXIsOOPTyjX62jeDJ63DjU4IJ9rox+gNtFSdy4FTxAywgHSJFM+xkOtCtvOf0PN/7aWh0UR190O0ByL8Au6hi6eWLZBZnEr3oHCbVbEqSNvINhj/F3NSgNm+0w1Z38q5ZUnEta
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199021)(9686003)(6666004)(6512007)(54906003)(6486002)(478600001)(66556008)(107886003)(26005)(186003)(6506007)(4744005)(2906002)(66476007)(33716001)(6916009)(4326008)(316002)(8676002)(5660300002)(8936002)(41300700001)(44832011)(82960400001)(66946007)(38100700002)(86362001)(83380400001)(27256005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AR5jjE8yNMe2jBVRE4iAKVHAPZkjwT9P/at2vULvHU/njzeynIvL+KvQxTBb?=
 =?us-ascii?Q?kzS7LP9WS8ETdkXY1rAd06mKjvbrITVHXY6q2wMk2v5zyY7oxpGLuwxTF43O?=
 =?us-ascii?Q?3TYaniHA/UGjNze1XdCYlegHrCBmscobAdMOQ1SWpuGWXlbmG3GH1mgzLmmt?=
 =?us-ascii?Q?C+8/3TURW8BSfjKwhSUz42j7MOrc+Q2HjIORMyDIo1L+jRfw0+wVR3mtsRBB?=
 =?us-ascii?Q?mfBvNZIeEV5RZl/NqXgke5HZ7TOEtjIpgJvHA21BFS5ei/QTGmpPYUu6d+MA?=
 =?us-ascii?Q?dBvdEF0WL6sSkkCZxbHB0WFh4+IZ6LP/K2QbRa2nE9UGBMWiw3MYdWOEgaQ1?=
 =?us-ascii?Q?vxgRFfh5E0a5K3Aeo10up7eeKkKcCubpHsicQr6VOea5U+87iJGsXAwlhte3?=
 =?us-ascii?Q?fi9mI/MdgP32CjOOwcc9TqsWsCNgL5SxhOWB8UbCoAEUD+cx3j0MM1kVCfSk?=
 =?us-ascii?Q?JDcOD9XcylxRyuA1hF75OLWphUD8FnM1q2oewrSGrN2ZndkUgxIc/A71IelX?=
 =?us-ascii?Q?vG3Vv/oVOKeaBOpe/frA+Bc6EZdMaNKZKppRAZM6CFYQNLsUocSoDJdd/Rc9?=
 =?us-ascii?Q?26CE7UFCA2nqXywDok2xEZ9CyyO7pwef5Nuxl7ehcgz5gy6555kNmKodxCEW?=
 =?us-ascii?Q?yJVoU4VwoABgezaGy9khnVa3NmFnuUYRU8mh99tCvvD9X6uBQL6qxfI7ogzR?=
 =?us-ascii?Q?SM2TNAGxEH221AxWVQf6t4mIF1ly3QGxeTZuEPeoTBefw7uv5bLJi6c8khET?=
 =?us-ascii?Q?wpYodgJ7hq1NywSifUn3FYx6o+3YdREzoV1vSlYoy2FstPp+Gi6QCRrr5rs4?=
 =?us-ascii?Q?L1tLX0m3gChgw4yWA5283OwLiNQGK+STCQMg89NhUMLJvt4tHFdsO5I+BIwB?=
 =?us-ascii?Q?0bzZBSObk5FNwRN3cuBwFrqGoOervMIXxlTp0h00NCUWuWxwYpJ3PRqdN48V?=
 =?us-ascii?Q?rEihVF0Gl2/PF3u3XPIjNabTwRFigo9WjxphFYTkP6bnfxeE0cfaj4Ks24ZN?=
 =?us-ascii?Q?qOFwMzDD3Ws6tNp0B6pT1xBPHBX+6TEY8HZ35j90m7P0B68JsRmP9Wppjr6c?=
 =?us-ascii?Q?vtP2HPZClOCcDNRkCEx9yr0S+mpGyEHi2//aJuiCr5z8knHj4pEfWY8fM5Xt?=
 =?us-ascii?Q?IcJ8bn9+jYlpCPTJpWEu4S7EWasOE9gw2mylgcRxXQ124emUx/XJsWvUrhso?=
 =?us-ascii?Q?g2tvB4Uq6g32aRXN85abihvosVEdgdgC6PygmKTdwAWIUO9reSc4r7ODlTvz?=
 =?us-ascii?Q?kkNQID3PBqpAwJfEn1wLzc6ptIf2P6C1gWtLjknzyx9Q90k2wZCHzaSbY1D/?=
 =?us-ascii?Q?3Waz1vyeysISKCNkeC61DsggWedXbg0MeHBlECANPvlQjPgbU+qB3cjhf3I0?=
 =?us-ascii?Q?akzEF2opzo0lNsHJ1NY9+KyQPS8mSXJr2xSd0jObAyOZuOXX1fSyaNTJQznC?=
 =?us-ascii?Q?Dw8AY1dt9aVGsrtcLTG2UksPNNDTlOwiNbbPsiaokaqADFcnVR1LOIqgcvD7?=
 =?us-ascii?Q?f411RSMU3/r2cJ5sLUF7TTqvRX8TWCQLC+epXIehr2hDEF3qowoqNNEzqHLE?=
 =?us-ascii?Q?C9OD330dadbae0BuYx6nD9goUaO7Xn6ciopzR4SXiw1NLN6+AWu5FVbOprUK?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1820c05-2606-4351-6bff-08db8e19f9bd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2023 20:50:42.0684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Q0pNDw5fFxMYVGc9VoAPdIsvI06bztYjVGIGV0fsLQO8ldjnss4F+uvhu4+VqsGEPnZsJtmR0OvT18oL40dCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8464
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for ADLP DMC v2.20 and MTL DMC v2.13
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

The following changes since commit b6ea35ff6b9869470a0c68813f1668acb3d356a8:

  copy-firmware: Fix linking directories when using compression (2023-07-25 06:53:30 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware dmc-adlp_2.20-mtl_2.13

for you to fetch changes up to fd6e13ca2a1141aeede3666f72d2a006a3903fc0:

  i915: Update MTL DMC to v2.13 (2023-07-26 13:59:54 -0300)

----------------------------------------------------------------
Gustavo Sousa (2):
      i915: Update ADLP DMC to v2.20
      i915: Update MTL DMC to v2.13

 WHENCE            |   4 ++--
 i915/adlp_dmc.bin | Bin 79044 -> 79088 bytes
 i915/mtl_dmc.bin  | Bin 49104 -> 52164 bytes
 3 files changed, 2 insertions(+), 2 deletions(-)
