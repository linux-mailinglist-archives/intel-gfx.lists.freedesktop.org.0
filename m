Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA985637D99
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 17:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875C710E0D7;
	Thu, 24 Nov 2022 16:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4873C10E13A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 16:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669307271; x=1700843271;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YrndyRYotDbnFeshQJvR5dcktVV0Kvw48iv06wLgE7o=;
 b=DAKRpa9AxqKr1wSsd15Fm5ceFUzh6JSz/2G7PIff0073IFZi0KLYgMu4
 EMMrBdpIL3UGcbgkjhSyWAWsA+XzcmiKoEQ0hB2j6Lgp7bjJ5FBHVUwgs
 cc6+dPBRTOlaQrsh3JijmVnY/LVtenwwuEy8rVrb1+XfgfWk9PFSJH045
 2PjBJGOXK2T+gzQs30tbyjU7sPiIfG7xEedD70Uz7dA7Bqo3EPurI1RMi
 shRPfUsC4TS+4h3cf6YOS/ZTx7NtOi+a1XinPqxzUzpNHSMHCbhiX9Rai
 DBt1p3Uj2+LgwXvhA+QGMOkr9B0TUSovf7QL61XuNJwMT3KsuZwy5rIvi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="311967718"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="311967718"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 08:27:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="673289522"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="673289522"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 24 Nov 2022 08:27:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 08:27:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 08:27:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 24 Nov 2022 08:27:49 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 24 Nov 2022 08:27:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mH6bUmU1oCBH1kQHEEBOtiX3z3gfYDPbAJ3vvPnsbGz5SfSDQ/3hScdxsxsgGqe0/pVfAmUcSayIjyjHfJm3ZcQovMdPyrTcTLP0p4HHPmG0ysqHnLCv3NXUy1uhM7OxdLZicH9+1I+VvgFpsF4OOxwZZw2+g8ms3q8njw+g6XBre8kfajxY8EEixPreR5RaTD4GJamJwUamrTxQG50wb4cFK5vo0uV7kGslv0UIKRHLYqgCww1mLKmOZdtZqxs6Pdddx1ZdPvPuXbVLwGD7fA4OWqXNnjT4eJ1P+5TSShXUyfmi8zhtmQdcGfHzjm1F0cvonz+iDY0fGmtKqFs7ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YrndyRYotDbnFeshQJvR5dcktVV0Kvw48iv06wLgE7o=;
 b=YHdEBnHstyExleo3nfIICU7stcW3mlftN+oWqla6pfsxl/IPW4l3K6wJqKydhdm4W8I7K3vWJUjcPdpCC2HNmuRQks8FzuC2TV2s0gRgMBPc+v3Gba03lNEML0BqIcVf2iK0vrf4PyfYmUH08j0b0WGynYuGeCfe3sHwg0y2ZwhZkILx4tq/hbnPRTbqKdFTF2NJAzJbmEMZgMlDfjCPjpenqXQcPABKffiTqLNbAhZDyVXK9k1BOijcZT8hdyP+204pKIDuEItw7zhKcskuI+lUQ7d/QwcJVyXY7Lu4Eba2Rh6fGckz3WVQjTSTVj7ld9ddB2qyUM31tywK+spCOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM6PR11MB4723.namprd11.prod.outlook.com (2603:10b6:5:2a0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Thu, 24 Nov
 2022 16:27:47 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5857.019; Thu, 24 Nov 2022
 16:27:46 +0000
Date: Thu, 24 Nov 2022 13:27:40 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221124162740.ee2yu4asowpzfgpl@gjsousa-mobl2>
References: <20221124162123.16870-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221124162123.16870-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR02CA0066.namprd02.prod.outlook.com
 (2603:10b6:a03:54::43) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM6PR11MB4723:EE_
X-MS-Office365-Filtering-Correlation-Id: a5e80b52-89ed-47e6-3740-08dace38d241
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5vLEHOFKTPcaWVSPaTatJDCWYA4iKenqcZOyHOdbKFktHn6YdTZeePweQ0gI52JM9yA5pYpTjRD7QQWQ/i+8xbcxHeTT9QDqWINp9GFFjXXCjq4swMbixMBnWkB2hnN3K7BGpKotjUI1sSURLs57kejAy4Ae4EMflfCHc/lcBa0loIqBBYi0DBkiyNtYwmhGPKrSYNCcvGkvTsySXP7DERe4QFtx6Y5raySYLajZ7FHueGZYeHgb7xcLqSE8meN+go7MEFIRIVCf68LT/vvaZWkf1CGCgbXBH8WcHUnZAYDdV0m6Ub7lafK2rg4LIhRsLPMqnWcqYDTyIviXndsNSL6pLwhhvya/AXaEEfzifPuA2Y67hrLNWGiXOHIxbZ94ZhMBoeiw/KaQDYVftCj1P2mjS9g0cb96z3iGCgrRFr131GVOXXXHOgyc6myRDIOgvt/3mOAqWGiikpcYuDBBiMBwPRSk97rt8L2dIc5TfuXu5VoL87ewBVMqeEwnT1Sy81vaf5dNWIpFkTnX5Q1UUA5090Y1B9NpLHDYrJ2krFEnuuFvOg1kuP3xoj94yep7YvcOdA9TzX8dbaSt9nviqrmUCazEixx0kFjMCsxZDid40sSxogC3VqWbskYhs1LXWvywSD0J8AoB8YQP2rAGPA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(6916009)(316002)(86362001)(41300700001)(8936002)(558084003)(66476007)(8676002)(4326008)(66556008)(66946007)(186003)(1076003)(82960400001)(38100700002)(33716001)(478600001)(6486002)(6666004)(9686003)(26005)(6512007)(107886003)(6506007)(44832011)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MgVS/RBr6VNTZo47n5sNhXOtaIPCJal7ZxIWBsAv7SYX9TrTayFZlbQWQ9op?=
 =?us-ascii?Q?uNl2WiaQecQVIImYsuke4gPAwgPeRhk6/WyqDBA0ZWBwUMS80+wanZb2TAND?=
 =?us-ascii?Q?hLll4F7AQ0Gyb/rSFouiP3cVOTaVPXcpq9P4edMfB1Beqaw/WZA9ijO/r9Zc?=
 =?us-ascii?Q?C+gBUJfYflUtyPRKRMbqWCMOED+X/mQ2mVMXRk2OOnC6DHjBhbJVad7oWEM9?=
 =?us-ascii?Q?hWlC59FtGneYUkSRKWrT4w61zradz8nxJLKrB8p/yPZR9lAtMvJB21o2RORR?=
 =?us-ascii?Q?mCIAI87D/OqGLM0MosX4uxeaOuqAJ/7xuIgX5XUOtaktxC8244pO8Dzn9zl4?=
 =?us-ascii?Q?T8lqD6bJIoTVX8M3dSBGVjbehklTlEoemZ9+IQLGxcBzMn6qwIJA1pLiUokv?=
 =?us-ascii?Q?i81B/Pgg+NTZAbBF2aSjdNSlXEQq91Aw4wRYqz9Zn4I0TTVEg40WS71AmXxn?=
 =?us-ascii?Q?Oc6cbMIePX728hFBOv0IpDmI18p8O089KQb6p1d6bPfQMH5giLX2bHcA7G4s?=
 =?us-ascii?Q?baSGcYq+k3BfR9+K58v+dmg04YupcSGscAPthNIKpmJ74naocMleCY8OcDPJ?=
 =?us-ascii?Q?I0aMHAzV3TV0HaIdBCiGZL8V+F8XS12kgO/F4bIVRQ/jQBAJiv7CRlNvpVHe?=
 =?us-ascii?Q?dKzMD2YrzDJxzAvEAhO+NstScO4bOc3NcdawnFl/lHRDWyI7iZterpUtKVRV?=
 =?us-ascii?Q?OTvm8XzQ6UElHTj7Gl0VW4XggurMMQGJoCmuUlF5UwoGnXqEgXc6df3aYL6X?=
 =?us-ascii?Q?UMi/qk5erpk0Jm3cmFpiTKzAfRDfOxFRX8T0YVUUCcfmcN0OKb9eNgqYLR2K?=
 =?us-ascii?Q?GE6XKSQD2VkOJwF16H/w1/QmmJ1Ycjz0lGdoUFSHBYuXkTv2rpOnNx50Xe8f?=
 =?us-ascii?Q?EkD/2nY6hq79wKN5gGFdZekJzqoMbVVHbnU0ExS5LDvC6zThc5f1GWtytlA1?=
 =?us-ascii?Q?c7K2UgBAdw2x5cF4h65zduI0wwGTFUk5y2SPIwY1Lj/RiFTPnGhz11zpbJU5?=
 =?us-ascii?Q?tpyoDpU8sj2cLnNncXn+csfviDKro7hXihQ6rmCyOc0uu6vJsAoWSvv04He0?=
 =?us-ascii?Q?nMebACPD9+OxNI2qZ+/DwbyNamApnCfwi1bO8XHstvZ6MYQY4Y16CTuM9INu?=
 =?us-ascii?Q?DxZbGAYSKXuHfQ+9Moj4xfb/yD1iik8iqZ3ws9TO6BriwAjcAPz0NXHFHXe4?=
 =?us-ascii?Q?wmFJ15fq89twY09wS9tM5t/lJKGcISIqzAXqGv+xRUlqL46eA5y9jNgSupSE?=
 =?us-ascii?Q?nTSf5DRfNlGiDsaZJdkpyZimEW3uXKz2DYPqhVMEYJy57oJOgKTygFcwv4rg?=
 =?us-ascii?Q?B+rtcyluEIVUfYWkO5ItaRiCDPdjVXkuHZfPSH4FJBIGo960GtyyBsSrvTl9?=
 =?us-ascii?Q?C14j8chtEGD9SLS9qGyxkT1+OqZx6WYcfZh2CRi+Ldp5zn9Eae7+DdxO8QHq?=
 =?us-ascii?Q?v2M7QDBwGdnHWa46jFnehBlmBGDLSF3n7yrUWQrnI1AOfS5trntmZOHUrt3K?=
 =?us-ascii?Q?z6mOopiPaZ/5XdJXIIxh+IHI4zx2H8EYBKXOD5etm4YIOjzWhAvIhlJ0pVCM?=
 =?us-ascii?Q?rtG1uzqoHJhFiqPk2+5FTykGEh010840M3J/v0CwojzP7ZgDQK6PRVXvUwnl?=
 =?us-ascii?Q?/g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5e80b52-89ed-47e6-3740-08dace38d241
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 16:27:46.8732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qSRG0piEfiKrDI1N4U432RSe4m5AA1n/dIR3DbSBVSROfSlvVVTxsx+JQmd0AlTPHXQC5qKGB4J/iXH5G8yMzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4723
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just a quick note: firmware PR hasn't been applied yet. Waiting...

--
Gustavo Sousa
