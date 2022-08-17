Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86DD59682E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 06:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE9E10E593;
	Wed, 17 Aug 2022 04:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38C810E52B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660710642; x=1692246642;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5z7uumeKXju0MZbjEq9K20//eNPatGssBQzn4OzWuLE=;
 b=Wn9/RSOOPwjRmvVb+YILbtN5PZ3SXjgI1BP0sNUovqYG77a14DNS74Po
 FZ3tt/kTW71N6jxNO0nYPEkOEm+ExhAuWO+LlcfPdqwhuntNMU/52TecC
 megSP22zea+Ccbr0GRIv5zn4otXD/T8Hu1/hXXhW4Ro2nWYT5qu79AwFk
 +qVi8d4InWNeayRU/PwBlLGSrf3ZzIMHUwbfHqm9nxnNq4lNqS3KGrNjR
 Ck9VdZm9gCrrz2lhhj2lZDrpjFcrj9ZdyNGgsHiyzJ+sWyLokSCdRtXmj
 +9waY1RKuyXNmmFrZes2sv4NnLsMk60KTOS2PBms2/ZSgQMbo0dzf54S7 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="272789669"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="272789669"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="636199738"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2022 21:30:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:30:41 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:30:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:30:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:30:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LBD5Dz+FXR1NVgeM4/+3HqON7oOP0rOpMBxhjk9M9yj0CUrQOg30Og/iOyx2qWyLNghjBEjptyh9kM3Iu3m3zi/W7PN3EgIOoVQHrh7pBrr3cr8O75vKuLRz2KixX9+0hw2rM0nKySTERBPHJ6aI05V5r5d+WdPyYw9AIl7KGlSvrYzQv4VvZ+uQiGpIgV6n96D+DH0WvPADlLF4doEaZWNuLy3suOoz+F++ewijmt+iEHlEwop9GAqgq61E4FF90W3z2qIXK5Rjyqff6QSm741J0CoZUFZTrTVLHzetuKX4ZK6Do4UYUB4CvIhICZJoJuOpMm2TfmTSyXM2imZbvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5z7uumeKXju0MZbjEq9K20//eNPatGssBQzn4OzWuLE=;
 b=dXyLA4dT2kmtxpjuTxs5aCWLxKGEbLrmjUHLOGj2V1gzOdBLcXD2CA8KczI3TsNCc6OgEihLQN9O4FJK6wnxHHHHpVIY73PvnjubAGdN3xIy2681sdcrz7RjGxW4/gCnA2YvP9IYrxOze7beqClpJXsS7ycluDoIU/YLqvJwGu1KLfzjZ+/UQuxmOVSRkq86+0YoP49HaRQkK4HIjBkPaey8e3JWWpOkQk9HjsbY3tJgiMDRmQgTmoVcShRVxQL4siMqklAiUysE+dA9+RJyngafqx/b1gag9rv2u2/VxNvS2ne5MYDaH5ZiKS9TC2f/GVq85NXGiktVCZ7757uYBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB3998.namprd11.prod.outlook.com (2603:10b6:208:137::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 04:30:34 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:30:34 +0000
Date: Tue, 16 Aug 2022 21:30:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817043031.5gma2lhjtoqcmw3d@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <fddf8e996d424e1c3d17ab382a9501c8ec279138.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <fddf8e996d424e1c3d17ab382a9501c8ec279138.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0098.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ced601a-2b89-4872-81f3-08da800939bd
X-MS-TrafficTypeDiagnostic: MN2PR11MB3998:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m01VrR2VheVqK2V3meMlBvv0xAmO7R/eaDsG35ow74kiV3wQV65Y7CFQKKS34zVvhhsj7QoPXeUK8k8OW0Y70I2x1hlYJOKEekOcz1CRZuJvzdtMTw+L/X4rtj5EyPYI7aCchS9eNfUSVlOFLC7oCvUYU/MxPjqERRWQ8LO7RpmiFkOQWqohqDPkvC3JSO03vuJ+e08yuns2qv6bDRiizFNezLH2ZgVV5iUbDGBP5bGZONRH/xUpADejZg5rJ0KzDGzrOoGOwgddZmNClyX/c4XUzZHSTFVQLcSTnuCGe5Pbbmrd2gYbopTuhapN7eikGzT1yFd2KUd9nEARyR8c71bseqn75ol6ne2olPEU7iVywqFHVZqSWU1jyudRUtQBDbF+wFhRrlD6R+eTzxyM7ud8HTZjxoAdvS4rd94idyFfNAnpfZzmQ2521z5r/9sIRcBu5V8f+I4s5OYBqkQMvxkuHpm77AAxbrzY4QRcfE/eoaW7i4ENmpHIVIaF2MAPvoWdBIqsTzg4EJ4I8H1FR3xnVZVuJ4sjzBe1YsjTCHrnB3qT08zZR4QF0t2NaLbzkmWiJyyhdD7GcRP8yMECo60otGf1TAxzw0H7sO0DsUge2fcFuxIq61Z0Bqa3Lhl2qdpX8xFn31uAg3J9WqY9G8Z4dSG6q2KmooKj8gcxpH7xK8fH4d3DYIs0xsVmc06Ch3eyxCt6I7+gkt9TukakBHAK5ZnRb92qGteDfb3TFaNbUCX75gRQKInB9UFK/lC8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(366004)(346002)(376002)(39860400002)(8676002)(41300700001)(2906002)(4326008)(316002)(86362001)(66946007)(478600001)(6486002)(82960400001)(5660300002)(6636002)(66476007)(83380400001)(66556008)(8936002)(4744005)(1076003)(6862004)(6506007)(6512007)(38100700002)(26005)(6666004)(9686003)(36756003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z+BRpUPRlXBcouduSOefy3TdFxp8y2+Lnq+IpCTGL2PgSbFLtPzDi3SY13uL?=
 =?us-ascii?Q?kj6cOP8UGGP1rWC1SbvoAHmzzGCCWzpPovWqMPGwBiASKIFWD/Q4P6qBV+ul?=
 =?us-ascii?Q?tFjBF2KM7DRRwMCktGdQAuPQVraj0dxjzarNkCYFhnQoZN8rKxu4Wr7n1mA3?=
 =?us-ascii?Q?rMrgtJfn3ZeUmyvXUPhPkrCJIBgkoffeuGkTNKcRyfumrN4CY83th9DDaefc?=
 =?us-ascii?Q?GGMsQLtn0cZARA53Djn97swQL4uqss6vkarEqxANAjSVGBWDeldiX6h2QmIq?=
 =?us-ascii?Q?lHO/hahKuKJlA6V9to5Mem7DsYmfoFw73WngV2TxD2pwjazQ0SBT8ziqXZnT?=
 =?us-ascii?Q?uQNDcC3a8408oQ7lrZqwJ04u3fCJVNYu9BuZcMAC/YcdBXrX8y8SrGN9+ILL?=
 =?us-ascii?Q?pesYePnt5sR82iuSpROpLcQgeYOu30WiS2zGM0w9ZeR1eH6gtqxFzrylen17?=
 =?us-ascii?Q?UNad7Ks4MgMlEkYgw8m41aFsiq/YlOLHnoxfDp4R/oH6JIaPwhKoerVmU1iz?=
 =?us-ascii?Q?544Szs1Bn0ac+F+UlFs2AbXQgMNvgxduqD6iUfWJvvKz3W1KqL5YxeCxUnB+?=
 =?us-ascii?Q?DTtfbrt/5sdIUu7CEAH/3ZFWTD8ZeOQUdSJ/OAc0n+c9WQTglTKYkXBMnvhm?=
 =?us-ascii?Q?V4yNNv3QwLmXZXwSJYA6Z2cJO5KXI/xI/FmhrZlqt3LqZRVxVcnhWNO4Ftnc?=
 =?us-ascii?Q?fi7k4i2kC0J0JFENl09Lh/o0BocrhtXgY3kYXNgS7/qRAKApzY2MA+It+eZ7?=
 =?us-ascii?Q?tbfDoBOsq7FVxxk16NJI7ab03IvlwEsuHx7nBds0asRVkRTAu+/fC0+Z113R?=
 =?us-ascii?Q?QcKsulFSSDgQIE1o8hLsEiO1RrulLYRdUX2QAcLTOvbDNISL8a+tgAtNqrhY?=
 =?us-ascii?Q?gJvNWlnwENaQGObA8eqB5xcWpX+v3YHi/m3cBdQxeDvpBGxSKVumhDVYJOoM?=
 =?us-ascii?Q?pyWLO0zpDjNPcdfW6zD8KwUCy5o2tma45UlLlUSQp+Cbsf6OJnRC9iz6Sto5?=
 =?us-ascii?Q?mbUbKqQeWFYtHlH+s8xGd00pIAeRbzzo1q/vpYIYsdf0foef2RfHpFZG+2Ck?=
 =?us-ascii?Q?+zU/J8f3oT0Re4At3bOfNZKy7U4O4e05i5Eqhfg3pVM/sk7uS1+V/dYtrIdh?=
 =?us-ascii?Q?ANHceQUJDd+pno/z0Gvx+s0+myEmxPoEDxf7KwB36w4eAyMDlW4zv8HVtGlB?=
 =?us-ascii?Q?PqKSJUEmYqDdnJz4Y8/nrl7WvNM7rg3ZdDPEtzAtSaQyJ+Cer8oMpLGeEp0M?=
 =?us-ascii?Q?K9fr6/WWBsxIH+dhaVB7QcOAZOXmC9a3HmzlRBRthiTrqbDtZQjINTLxnHZU?=
 =?us-ascii?Q?9q2/6uUzbSw8BTnoH++J40GAqfGKwRaUIIyZg6j+HR3/yGmTtGMfenkv9m/l?=
 =?us-ascii?Q?WdzHKNin2bkhhcPXXBIAIgaCQFqY3WWrrnCsJtEJV6gXvsjeChIo5Uq6yqLo?=
 =?us-ascii?Q?df/GIMMQycGEjjLddK5/iUdHOmtrOvrNPB8yntIvChwASQpHgYJS0NcBXEr2?=
 =?us-ascii?Q?Y7fQKoSJz1+Rjzh64wgu/ml3FFa646aqPgNmnJR6ol45fVT1kdBciG2DyHZ7?=
 =?us-ascii?Q?ckDiyMct5H8EQ1d2iXyFQZhzT5KOk0EWqCDINfo9uZ/0FzXEyEmdw4niDigv?=
 =?us-ascii?Q?uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ced601a-2b89-4872-81f3-08da800939bd
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:30:33.9846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K5+1TjPNJ5qI4mnv0vlN9RqPUkhzNPmvbc9OnWMevszFkp+kT/fT8cYHplmSCfJtSE5UIL7Msy+sM466MmdgdUyCrfOz+UmitE5pV9j4154=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3998
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 23/39] drm/i915: move backlight to
 display.backlight
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

On Thu, Aug 11, 2022 at 06:07:34PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Prefer adding anonymous sub-structs even for single members that aren't
>our own structs.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


For this and all previous patches (except patch 5, for
clock_gating_funcs):

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

