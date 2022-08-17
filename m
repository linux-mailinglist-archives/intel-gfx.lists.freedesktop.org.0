Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A65967D1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 05:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0333010E4AC;
	Wed, 17 Aug 2022 03:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1474210E4AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 03:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660708290; x=1692244290;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AesRZi1YHFvU2pV1x+W9MrBC8AmI1TteQsjuicxjTeU=;
 b=XV8yNBvMFBHkgZdV096OMr4Dcr9EK4yb7+Sjsqnrtia5i1CKKgDPrqav
 lV1Es0wgoXlw/oA4FnqK5/n1Pwe3ZSNqPWT/8aLGQbNrtZQW7JIIZ2mJS
 tpoEaoxj0J0dNeLO0qVFdaz6SWtsUojSAdYwRptJcxEnLkwT4sR86Yg21
 dGSqUVtmc9rXoF221NqXmcP/5/qSejFIb5qmhDmCGUIV3tcC5iH3mMAlU
 nRTEQk4HMGIH+UAmdL/eeq9J38dhWXGiXmDSPPLLlcO1r0bJhNQWvVcsC
 RFDFPQUwpQm1YVRwlYUK6gxMmAM91w4PscABPGyQ9AdmRK4wolGXB/B22 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275447655"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="275447655"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 20:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="667421679"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2022 20:51:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:51:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:51:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 20:51:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 20:51:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MpTCOHAKIkyELq84+uail+mtAP+JuaV/yt/oO7oyIOj1zyy3JwUR/+9CUr0bbcZX3JJyR98L07knQYLShjNnNpIa8YGBUHy3BohPNOjo76ZEeUV0NXNQCsZcbP6QeRRYNEOyCyf2qp4Us0S9Ujp4T35TAPblWFlJf32icvT1cs3sJobsRD3MG5bN2w24EY6ZRCswTTnqodBjAalu2RfOo+32l4v7iv1m97qDad3o0hLyvmks6omMSOdGB1a5Uvp9PkIRjLvAPg3ueQxQePqqqQu4Oyosl9r7UeXY/FHZWwTpULLNNVO6fUFDjvtAFv2Hu0n8i9euPbScEuOAMtvISw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AesRZi1YHFvU2pV1x+W9MrBC8AmI1TteQsjuicxjTeU=;
 b=H4jdhA3ZK+n6IQEGumVIEYmrd0v0wIM1sj4tx9URooEDbdfgrADpxv7vNddHW1AOfrl3o0/p7jdJuYF/HdZf/NIuXWnFGsNH3Awb4uKkTlXOUBbeQT8BTgUezkCeHL2mbrC2jhEbEEn8BbGGLcXAwuoxXhUFc9iNnnvx5qJqd6I6v25rprrIT3HuN7YueZeFU+jiw1w4G+SMFh/uYegyfvlAeHtFkB+2K4C5kXzbbT06gol4V3cShD33ULeQRCZXAVVHBJESKdSPxypt25EEPro3ill1Edoluy7b3nwyHm6AISXZ5L1qMmRQrwBet60qMxB6AWqSskETRUg4324E2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM5PR11MB1771.namprd11.prod.outlook.com (2603:10b6:3:113::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 03:51:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 03:51:26 +0000
Date: Tue, 16 Aug 2022 20:51:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817035124.uaugphodrgcq2zl5@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <4db433656df2476e337ad9b0e2db0c5704a3c8c4.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <4db433656df2476e337ad9b0e2db0c5704a3c8c4.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0092.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75012c15-94ef-45d6-2370-08da8003c299
X-MS-TrafficTypeDiagnostic: DM5PR11MB1771:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H9+Xquiuvu0XaS664kCM6fGNAtfbM8eHe7P+ufbBppkvoaRshOjK4evpk2E9LPGr53D8J5tezm+XRt2FBMENsCxwV4XUHU06XqfkVQw3dI7ikt+vcaq9/KZ5UZTQKmKRnJ9XV0P0ho+NOGM7cWqbSGZ84deXm49/ZO0rI35uGvxDYQ2/bXi2b655skWcYib8UUYQhCwGNlu1Lj8aNh6UJ+6snMORnOy55QQ6mep9V7p6sdnUmy2MzGKD0ICLq/IsO2Tk6rAZqBw3TOqDqUovVZ8wHgZfXj9k5fLf/8QvXAGYn9QcjwsyFLf2nkBMyouuevLt9pv5as2edA5S+2y9eh+6NjnU9nfcmGnDPwL+4unmFEmW+6+WxwEUJPmViegq3hqvVlJHw9KR/TAEUiKmKflbXHsH0cTj9hR1MJMNTWakv5p7bNImvaZrkkSrqFOmAzjC2Ae1iE/jwEl9lWE3z8qp1Sa/uSoLoYIV2hdkekmMzdqiT7qHaknmtPombx5x5w7aUz68oVwV5204WBhiB5K+im+6hu87+scN+ONhqdn2EptDhlsMRgo0fH5Nmj783NEgambP82EgXi/YF5aM3OHKPzlFWEuuiblcH8vgPO0p/vnn3waW5Slc5OaTr+xs1+hdkgZUqQS/NnWt/Sl/NHVKFvdTcTzblE654xmpvDF21VKTUHnU54WQ74SNop1Q5vrV8kUtPW/Tmh0qcfklU8xvHiy0YedZC+bme2bK8qEy83g3svTwR6KRTtTSuRGH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(376002)(346002)(558084003)(26005)(478600001)(6512007)(9686003)(36756003)(6862004)(5660300002)(8936002)(41300700001)(2906002)(1076003)(6506007)(86362001)(186003)(82960400001)(6636002)(6486002)(66556008)(8676002)(4326008)(316002)(66476007)(38100700002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m22Kl9HFPpiYBJ4mF3L3H89M4Ta0lPHRAPpNN0yRY18Ozy/EtNQ4WcHD2gXC?=
 =?us-ascii?Q?qOSt6GxjqrjwC/PV1q7JTWd6BAZWTbXkHxlvQzKQTy2BYutHn359V7RfzO1q?=
 =?us-ascii?Q?FDthCFlqrDG2wGxjRx+UnlWsAT7qoJ53pOCdkWqgt9IPuWQ4wNJSdQjjKYVU?=
 =?us-ascii?Q?tsJE9jffD/PdWsdfwzb5vQ3yr+od5Ye4ru1h4nN+uAc1wElWe/U+TNnXQ1Ev?=
 =?us-ascii?Q?65LDgaSJpmQft/+xP3X8dfCbG74R+ssg9nZ6/+giSjMuBPtGHZ8yKTCEJl6K?=
 =?us-ascii?Q?N2InvOqGrh+/gcu2h/rCWSZAvzpdNsJHC6RCUludYkozWu4lp4tklqJk+z9U?=
 =?us-ascii?Q?EtVlfFskCNSvE4/y75HKcWZ1oPmKY6Ypr+LaDkhAT1v30h7p0gRrS8SYrzSX?=
 =?us-ascii?Q?bwQoNTL/6vAwM+5Upq56RUhkiuL6sn/0VHbyqHoZXK4rN0cv0qxD/AlEaQ3d?=
 =?us-ascii?Q?Izklu+6Mja5yIImWn5PvPTs1lWFjBoqTHPFzFcN5xMdvaAp5s+unyp7STY6P?=
 =?us-ascii?Q?M3k1bIA0+A+6juf49dEao66dyidd/p6tb8j/GQiwOFuvtrQOgdp4QTA1cPH1?=
 =?us-ascii?Q?1slkxAgVE+sPx2iub9vO2RFHNrjJ/vRt4MxJDROJFTtEgWmPByIX6MoTvpOh?=
 =?us-ascii?Q?geHp+ZNlVT42hc1uVa8qy078Ab4qur0tsHXfXtmoq8ygQz1HWZDL0dRl6HLY?=
 =?us-ascii?Q?vblgZYCSbxKpPVwBzzXWc6ujQNJtKj9OxX20T+JGK/xPNzFj49ZRTvLXDlRr?=
 =?us-ascii?Q?55sONYKXsPZxlXYXTXFEvuJCagTGRIiO0Nu+YirMrKWfTjTwIbJGl6jxnqiz?=
 =?us-ascii?Q?DrbHLMTTgvWUxpv+wzOK/HYBueIjBZ3m57Xhr4LeQLLea1dfkpnRymw+H9+T?=
 =?us-ascii?Q?9VDHxsB6b3IH1Fp4WeSNQYqHpmGxl+azChKFo5niqA0xGB9vQnXPfEKBSw8B?=
 =?us-ascii?Q?g0//6stBvWcXdRegj0ooF8x5Wv2hYIXdtJui+GqU+5mAwSEAlYQDd3/iAExy?=
 =?us-ascii?Q?gwtbwpdiU1YBfWhyXVeRTh8Jv7/Sxk6Qe9sh4uTybcqvmhZQ5p1uIXWGgPln?=
 =?us-ascii?Q?XT/iIQx3XhyeR0ot92+d/f00uJGUaOkxSyfZRMBmOW6ADyReWJLQBB4lEFIf?=
 =?us-ascii?Q?TGRJ1Cpex/o0qhQvti+SAX+iO5EyNXBiqZpn0Ihl+d8tWsSvdpuL65acrcRZ?=
 =?us-ascii?Q?oO51c+q+b/DiT1EOt8X7D+h5fiDPt3IdqBeFcw+OUaWMfqClWytvN6t4cRDa?=
 =?us-ascii?Q?XiNDjPl++eGlqoGqfOTFHRRq56otQRq6Br68317diDCS2a1j83F3qBD4HnGL?=
 =?us-ascii?Q?xpwQuZiCk9eOttRkYKif0ItUT2nSulCNjJaRejceNX6wpGhFvTYHYRcxoldg?=
 =?us-ascii?Q?yvPI3tRKWt9w6JmamNAOnGLbQlOkEtbHieZpsoIhavoXKWn1GzPAmyQyPh6p?=
 =?us-ascii?Q?CYZ+CnAHufjE0ZgA9QBMER2GLXy6YY/msa1Hf2faDzwrnzSlaVw5tiQCfH4n?=
 =?us-ascii?Q?/CBdJ3x6NLn/SwD7ze5+jkUtRUyRQC1KhqZX7yvJ1SK0q14FCm6FETS8/ACg?=
 =?us-ascii?Q?PEkT025fORVsqvVyD8yzI2dkm5viCoMZTvRyiwvzuvRKca8v0Hp+BkOi7rnu?=
 =?us-ascii?Q?XQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75012c15-94ef-45d6-2370-08da8003c299
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 03:51:26.5573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xMZqfXshXCb9+5J9Bfm+VvGj/ZdFC+EYhqn81nMjgDuQePqn99eKfpRTWLfsvWwzZ+3xmy5gxczJGSHcwkQp3gxsI8LjnHRz2V7T6Xw/AEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/39] drm/i915: move fdi_funcs to
 display.funcs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:18PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
