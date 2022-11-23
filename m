Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B26F6360FF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 15:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39C910E206;
	Wed, 23 Nov 2022 14:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCE310E562
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 14:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669212227; x=1700748227;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=N++wxI1sgk1AMLN/S/suCvWViNMVZwKKDC50KdxwglA=;
 b=hEdqFd9XEgv7wp+3eTqQH50xCto/+zuyJd3QNwDKIs8kq6Orf1alCqf+
 ao2tQNlnQFLZHun45mrNesBQDtu1EpWJgXM9SlQtGMDRhyivRK8c3KytG
 HV0oSxpWiEJgxP8N3kpiEJZAXqyBlAnJeXgKRcrL984b/bR1uf3Tgc/vY
 c+EK2RexeIs6iFprRf16uf5g1HB/8GsClnxU5KNHld+/2SwaOm8cFGSIU
 iwuqJhDtimPW0xs4PwsLCcX6G6vbuFrXQ+7BHxsWdyQKJDGIgnNv7qr4X
 kTO8m0iaqSvzp1oFClIHeg63VAGtRQr+FJ73pNFLjgYSD1bwFDbAN6jwc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315891698"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315891698"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 06:03:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="705371049"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="705371049"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 23 Nov 2022 06:03:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 06:03:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 06:03:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 06:03:46 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 06:03:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNiXK8HkqkK+/Oyhc1LrMBO24+ecsuAe92tv+WdjOLXduyKFC3tVlrwAxASOqZ8H17edx9QX8iK1c94is4XYkyIi+LJLULTVarLfytLAT8Ljh8YbklusDBySGNFiZ2Xb4lb4rY52cXmvMgmkpwwYoEoYN5d31o3pBz3qwUq3953+6L3tvBOpBypiPcH+PIUYB/zMYf3a5xncNEfP4yRXAr0oIVRBepoVcJihxVYdi8wzEjEZhYAUqYXnw3eq5Izq2z7zAy1fUrs4lL4a2BR+sXH6PwWGtCyDWuK/m2naFjpJXYcNhtkpz2dT4eF0T41LWqZSH9GQgExckKX5NHOtgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Dyh1kmmMizLnE3i+28DftEbTOIlPmdr+9B97567W0U=;
 b=jzrAI50d4SPTIktlB4ShZnLf4wjl3+N02CkvpzJ45fhHwimVpyM0JG6WiETqfqBHa9XyMaOMvyqfDFSllbgLXVp5k13veaLitT0TL53S772UfgdXx4Y3SA6qRfojabZlY+p3fpIoggm0adIhMBEHUdN0nrVLjcFAXYSeV0m4EDQRveMwKjyOfekW2VD36KUCtFAwYJ0bn98V+YS5nsowV8FTuBGXNI06a9jWdVO9VR2rxPokX2RW5Sg8VEwT/pq7d9TJua8c3yLvvlfkO7W5dtfOGrL7Nca+vDtBzaCVL6+ctSddrGmUaZZKdh12SJY8AvvwW4T8+2RbgNLZVnhbXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB7279.namprd11.prod.outlook.com (2603:10b6:8:109::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Wed, 23 Nov
 2022 14:03:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 14:03:42 +0000
Date: Wed, 23 Nov 2022 11:03:35 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <linux-firmware@kernel.org>
Message-ID: <20221123140335.4xqxepev4bdvybut@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:40::41) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB7279:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b4705a9-6f1d-48cb-62d8-08dacd5b8752
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BSQzzelhgE68mo7vqJoCj5i5e+cjGfGXIJvsfQgHHvJRrOWjidevNa1tXyU3GoMpYfPBovjmvJ66GrWflQTAQOWs1tSHe1bFL8A339ZNiaE5y7hPHQcF0KjmFWT7EtNc6PTLrvNo1n6/mLR7y4u5M+J1nx2fnqnHP3Q7czcKjxF2eCx2Kn7MDLgfRuXL17u6ohw+r3JMMet2IaSRFwn+TTgUlS8NU9/eC6v6av8rJeghXTpbKGsl+SMOJvmGx3Qvk3EtY5ujZAf5xp+sAmRdzdVP0HaIpX812qyvGiylBw/dtVw2mFaAaO46mBt/zoHBx4xPaDu8pahFcW2RJt0iAqw3wF836tz3nOzCjSkfzTET0L4EEUOmz/5yAy+QwlC1x8Ilyu9ZH4dvNTp1FNZ7dz2ZokM+H5J0kuP1CbkCICyZ9pCBvXKigTzTPgPQVtzOiyz1zrdgQteka35c47taEBn5+Or1vPq67fKvTyP4QoOFdRPbsdTifEy2cIK1PCf95o90NDgzL6mB9Jw6i2y9XlFBiCZgppfstBjxaeEJhkkyOw3ZUUatFSmiQ+PmRVdZFsXSrTrC0EbsKmBFjMnlvIdqMatek0b4iTgWc38KcQPTml5gYsb0vk5vUFQYVgND2IsPN6QyV2nvrNA9amkwbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(136003)(346002)(39860400002)(376002)(396003)(451199015)(86362001)(38100700002)(82960400001)(66476007)(66556008)(8676002)(4326008)(41300700001)(66946007)(54906003)(6916009)(26005)(6512007)(9686003)(316002)(2906002)(83380400001)(4001150100001)(8936002)(186003)(1076003)(44832011)(4744005)(5660300002)(6666004)(33716001)(6486002)(6506007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mN6hZYCnLUzTkLDm1fAF2brmONNjx4cn6D+2JOpkNSdeTus5FbBKasO39p9V?=
 =?us-ascii?Q?+AvZTkH73NZ3i1DDl/Zf0WVyXmtUCqUBKOIZou3vS245aiB8W0vJ1G3hvnvQ?=
 =?us-ascii?Q?JqMnkLrfZwxtzQ4h7zzOaStBaH4ccJQ0+sa2yD5Nd2YG7dSPoe2aeknnA80Q?=
 =?us-ascii?Q?J8BM30NrtTIgYr/jmKa7ZmxX5HBixtA9P+jCCbqLM7W52n1lrPTBnKc941RH?=
 =?us-ascii?Q?8oJ5jTawrKXs9tOZNYLwKDq5nD2IgIwf842l/zyu7VvD9T1vZHycdWfBiEWl?=
 =?us-ascii?Q?p3YpmP75Q9Fbpgg31V8cVbvoJGAXl5jcgIkaAc8Dj/QmCQg95fgj2utd/Liv?=
 =?us-ascii?Q?L9hlokO9QWR6WIqkfg3S+PO3Y+r3ZX+ZUKgliIc1DrC4nGrzxAh91REWckYc?=
 =?us-ascii?Q?tcg/bsJ0UujPuzTIFtaCFL6cjr3vlHUgzTTpyc8Fw31p1TMhAfc7vbgnr3IL?=
 =?us-ascii?Q?XqYQ5VA2exP2DQ2T8qaB4PU1062BuYDhfX4R1dpmLjj+p3kzio9y81FMMyPn?=
 =?us-ascii?Q?Q+fW3nhD5yLJCuH+u/8gqVKO29r3MnABiHiBV77U5RyHYFHeCwvTQ+cwiqTd?=
 =?us-ascii?Q?DeB18GDTjHHsUXlDii7+ZCou5UNcj9gyb/nx8uEQt6TwFWrxVoQ4bnLd4xnk?=
 =?us-ascii?Q?Oz+9lYa2WzEI5jyNkjG7oPhf2vKPirUBaPsqHosmo+C2HQwzYoIDbaAvvUPy?=
 =?us-ascii?Q?bjLsCKzxH1WmasOUnYVlh0W0EEQz5wEqavy2exWoGVkllP0nn8gdN+2Sexcc?=
 =?us-ascii?Q?dEM69wlutA9CIC49cNZ1U0E17xsiZ9ntUBVhL31GtNoHiyTes4Ke1t1J6JPp?=
 =?us-ascii?Q?CmEsMzf3EzSqDewen/F11jUZ82E+MiO5Ris7UAATc/RvKhv1ERYqG0OhKBpP?=
 =?us-ascii?Q?fRjiNVJBf5Gbe7PKo9ahVQ/qdJKFs7Q7HKEIl013KY/JNP/bZViQm6Ct/O5X?=
 =?us-ascii?Q?Oc1zY1oPrOkFVp19xxNubQRC+KslOkhBj3MYh91Mpy0KI/TF1mD9mauf+LZJ?=
 =?us-ascii?Q?KToPOBy9xooR0OjVfC+QyXMAhFeL0WSEJvHgEF4VZ013qq6kKpwbwNJ2wZV4?=
 =?us-ascii?Q?5cU5a4aItyLeB1GpnFXQk7br2V5Y0G4aFBVg229MTOLTOdAuDsjQGZ+rAkwW?=
 =?us-ascii?Q?YcBUvtDngz5E5IJI3lnckd2m4I+fl4RDT5sx78tl18Nwb89OT3Jhx8BWxEfb?=
 =?us-ascii?Q?FMQzwyLmGNESUkvmdbyPqu3iJBdiPv0UdC1D4Zid/0kJ/N0D33pxiunEKV8v?=
 =?us-ascii?Q?9FhUnQLzFKsdQHF6Cc/GQmRIO/xA0TgTzN61YiMj8JUZD0OdMcQl/ZOGmULm?=
 =?us-ascii?Q?alejYmp2WkLMxZM8utgtINOoNJPwn82YUjthwHOIl6m4uaEFhxLNXxYjZbT3?=
 =?us-ascii?Q?wReRwBENxnv/BT1PanFsJWL6qpvg7btOBuPOatnOK36SUsZN/WMg0vT+bHpW?=
 =?us-ascii?Q?jI1Z4wpHIGkDFX1jaJuXwqCY9tHLkzNiL4Z62w5hdpb+0urCGa9PHlkbhfGV?=
 =?us-ascii?Q?HT7OZCODNwyq/+yCumNcqmFqhuOylowpSM3tC+bqLuW+SI6hE2rG6PtzKh7X?=
 =?us-ascii?Q?7ZpzNsOSwVJz/iBe+Uzs51FkrmZ03neTg9Dnhrf4i94876kq8pb1JYayjBvI?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b4705a9-6f1d-48cb-62d8-08dacd5b8752
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 14:03:42.4887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +iyaDVQT3DmwyO4RLKC8UsGwLM2Kjbka8UXQba/dMZo0Vx/B4Xv6k5dch24x28XNPKWmXX/WT57TnawgHYpNHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7279
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] PR for DG2 DMC v2.08
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
Cc: "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kyle@mcmartin.ca" <kyle@mcmartin.ca>, "Hutchings, Ben" <ben@decadent.org.uk>
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
