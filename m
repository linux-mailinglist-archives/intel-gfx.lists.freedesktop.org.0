Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3007663D700
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 14:42:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D902010E454;
	Wed, 30 Nov 2022 13:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CE710E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 13:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669815769; x=1701351769;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XL22MPDheKaDGPX444qSz7/Fr2RRNlsZcNe1LryOlxc=;
 b=P+vtolMUL24mD7mYynke41fwmtkVhRXotYHUKcenPvyhsu7pqv7Ee40c
 vpSHBC5Z1TpJ3o+r7Tj1yn4LylK2f0KzdSGHkcZCNKK9TA2AYglLCsPUn
 5cHRft+1+UPY5xwUVTvgcovGoLEaWDvya1Mwe3emUDi2f7xuz6KBjjgCt
 92d891dzdrN46R3ahYgdCnBjH5vkMzcEBcT3C+5Iie4CuFeEXyC95dcli
 WAPdRPoPJuQM8XgbN2jio7gX170T2bgmX79FOAE/xosW7FXTQnzc+08PB
 A33AxACQx5DhGskFW9qF4Onx6FvuGcophNIx4HQDEg+rRHPQuDwPKNcx0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401676710"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="401676710"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 05:42:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="594667822"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="594667822"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 30 Nov 2022 05:42:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 05:42:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 05:42:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 05:42:28 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 05:42:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l/Cjri5kHPmA9ysyijS8ElKfkKIq2OUxA4BrTr1fJ5ieq4uNWiKP5BlO3NO/KZg0+c0qn3BQH68Ow5LLVjzfgGDdtYj5dzaWR8Z8t+zNbjhY50M+TyaYZFV/2BA6ig3+Z714nUARxg2VWaghNbOsZDJ0/PEMICNeWZ3XEsBa2ANUlXbQ57mwawxmnywivS8ffIEPPu8Cdzb7zpbg9MraNmvrRnXId+S+aJPRTnKJKbW6lhDRI/mnklqXyUduHOEE/CZZj8fUi529b3D7Xo8oVcwpXZB3RQseaqhKZzX6DLrSilsFcPDQDMDehQoV+Lb9fWs3CxdUL1R1DG03la+ldQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XL22MPDheKaDGPX444qSz7/Fr2RRNlsZcNe1LryOlxc=;
 b=c7MtjxbJ3UpxaSBSGwCjkyV8/bRuKT7vg6Hfqecm9mLyeWYoER28oZD4GmzotCawXF+h0wO8bmKc71pyW1ufX8cKmV1qhGF2uEq2ADsl2OLCAVZ32Kgqxl3i1TsUHjzGofFg0LqlzLyGfBQn0BJs2+vskeAQgO+m9IXjNZdeZWGu72ZJLNqfakIyERsYZmXl27emIxdVBxBbFJTPBr09oI/CzMtUm+/aFXp6pUOcsYslu4Xh70NjMQ+w8RsPeIkHUUHzulZgYmg4yqFsFzBuM6PVBEic5U6NBattBBtS0HIgQrf2kDUOOXN/B8QYq0Nk0Hd6NfBGONWzbkL4rSXaKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 13:42:26 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 13:42:26 +0000
Date: Wed, 30 Nov 2022 10:42:18 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221130134218.eyp4ax2iwbv65prv@gjsousa-mobl2>
References: <20221124162123.16870-1-gustavo.sousa@intel.com>
 <20221124162740.ee2yu4asowpzfgpl@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221124162740.ee2yu4asowpzfgpl@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB4902:EE_
X-MS-Office365-Filtering-Correlation-Id: a5fca40f-29cc-4925-d4a5-08dad2d8b79c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kln/lshUM1bUKCWciORZU+a58nAPR+hvmnjMVHBAIKoPwjgTbztjlH9dirjD1yIjyeXJza9MtG9Du564yMTQhTlIiJVd0GJ3I1xf0oYnTE/KPDj92wwnesXMAimb5L0USEGNVlNuc3d3jLHb8fXqWMCB+QSow/f9dDxtKp10m9/ZkTPJk26y/cD6RGoxlJlD0+XSx+M6KFK0G1E4ZIpg1/A5eGpOtCCQcwCWksVcMML5/p4QSB3yrH2JhbW/whkXOlp4S6gbf7VNInsa4RFIfPfkJdLGQWY5UtmqninU13imaBgmLsZLN2Pg6eLfBSnWLVLdIjhQK+koj4qV0NFUl6vkt1JiSdEUWu3eLlOcY6+TN6Was/KXYiEQb5kkR1YxRjbVfrYXFxqpvhxbFmZ2FAgj+F1MhhrhWTgawrTpcbjcV7dHFqIyHldK4hky9se/AYL/FK6DOa+QMqG8b2YCvBtlQ0yt5mJBgrCSFW9MlW1eAmF1hnYNaUMW1apvdwuEWnPlUSEeeAt+ZAb4uAxiT115TyJHkxzMLkGuzPfnvlGO485/5m+YE/eXkVzlEUXvCz27QVOm9AdanUVXzPJCsh5zo5ZH6VJAsLItcyK7kDS93CLJ7QN7RGBshvpboczZwzX3nFlWa6T3Oug0nYXnzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199015)(38100700002)(82960400001)(2906002)(4326008)(41300700001)(44832011)(86362001)(66476007)(66556008)(6486002)(66946007)(1076003)(316002)(6916009)(478600001)(558084003)(5660300002)(8936002)(33716001)(6666004)(107886003)(186003)(26005)(8676002)(9686003)(6506007)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xUUBmxUW3Lee0b8H21bJPCOWQOsiwFrEkGeGn6YXpHBYdJOyJlX9H1R2SpZT?=
 =?us-ascii?Q?toPbN9YAEb0QgRQnIvo60pm3jgh8Z2nuFu67mZbne81eGL5kBmFz1PgBOtVr?=
 =?us-ascii?Q?TsmRGJDjfZBldKnXaYBzG/BB1BSC0Sa+vEr2YgJJwKCcDNa9Fv3PmFcXlRXj?=
 =?us-ascii?Q?k642arqGnvWrjWjP4dmddfExdc15wZVTcKTTbItQ2CVtc7Sy3lArfa4L0dg2?=
 =?us-ascii?Q?smOFNv1gnYG3O2N4XXKCjhoNaMdk9Jsf9tzsQGrS6FfCkzCyfxACaMimZ1K2?=
 =?us-ascii?Q?32WsqzfImGpnXUhy6FDbyskyp7AMfgV6wLJFABY1NHqIyLfI92D9DwSUh3UC?=
 =?us-ascii?Q?dOLcQDYmcuX36C1U1FC4CqE+Re9f00Z3TYlgo0xh5j1oKxG8AYIs8LxiRoGk?=
 =?us-ascii?Q?EEefiejInLp774xisE1Uf9CqyjuUom3Qf8hCmFHx8ocrT9+LQhv3gKrIUSU7?=
 =?us-ascii?Q?DhSg10FH6sMy7swah10NQOMvc2dZ/QvsrzT/lqARJ2Z4l4UdJ+C+szdr3Ae0?=
 =?us-ascii?Q?964o/pGDSJ7Gq3dnGTkUaGgyL+WPy8eQvtPaNi6c9Ynqh4W1sdYBJRPaAtWx?=
 =?us-ascii?Q?wNiDMEaU/c9PWuJ17mEdNG+oOxrKbIiJaa4hryRwbk7AUwyFwYzKGlUbBKwX?=
 =?us-ascii?Q?yZjLAsMeBASThsvxesEXzKIS27LF45a/Ef3zuPQ2tGqWomJKitvyRvEA3Tsu?=
 =?us-ascii?Q?RLsOWKg61nkS70LSQW8j6UoZut+qyMSP+vpUw6e6T9Ka586PTt9Ua45SdROM?=
 =?us-ascii?Q?n+McrR23n6aBb69Eqfxvwf25wQxDa8MZ5J7vUWXg5UK5cuys+p6s9vuR90f9?=
 =?us-ascii?Q?NYVgrpplUl5iXhqAzeXJSe3WFSIF6py6NWPpUksVuTXaEGOr8xp6fIhOLiRO?=
 =?us-ascii?Q?mX8oBph7womKVmfz1xPE4wCrOvdamRxtOM6tERAefbtV2Qww2lkpB9Kdy1o0?=
 =?us-ascii?Q?5Wujccb9UO0jlR4oI0JCJFDJRWQFWPGGTWnQ0RPdjhVFA5k2krOsgeaP5v3K?=
 =?us-ascii?Q?nGfcBonu4rOjj/2OzBbScs0BtMF49VpLLyugfmflztSQoER+CponZFkLa7M9?=
 =?us-ascii?Q?SYndmzKsaYbToDyyLyHII6keU2cTa8qX1zK0XuudwxQQlltCKEKsGAOcaoU3?=
 =?us-ascii?Q?CC9x2B2hhh9BSYu5VxkMqQ/GNWzr0i7paHBaeUnbWkti0HIBgOkEJYQeuo3F?=
 =?us-ascii?Q?F4nT+aI6IpI8lEYV/MuBJGe1D7vilJA1I6zPi8dv+vzoPpkkAcv8pQAMTZpm?=
 =?us-ascii?Q?EiN0vQvQwXj8CHh/2SNiZhtLIvdY6gg1oCKHqKbVC2raDhDAzoOkQqVZ3v9r?=
 =?us-ascii?Q?z6OjmEMqOnJIMBOYiyoFBh7gI9eB3/So6tDLQT3KlbnKCTGFdu9aPnwckcS3?=
 =?us-ascii?Q?YCP52xJJP67f/H/Jm8uLyz/fgSwUpVRMhgvc35Cpv9PrLA2Sd9ESXZ+RPeEy?=
 =?us-ascii?Q?cd+VU379tQACsQQnKn44p27sfw1G288D3lUmpnQNeY3pjd2sEY+dnc0hDObx?=
 =?us-ascii?Q?iw/FWP4a5b21eUgU4teD7MKxlEcvPo6/VVkpejXqg/3H60rtBw8fqnelmOVw?=
 =?us-ascii?Q?RsvLKD8SLdpIDCcLFOUDfgJs2RgzFE6XN85XAZtCIHcD+hmJgBmm3HV7t90P?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5fca40f-29cc-4925-d4a5-08dad2d8b79c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 13:42:26.4436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dOvSogr0cQCJImiRUQ4W4xF7od7/xch00OtNJLJicNYNghbu7fW4E4sp24qBHse8pvInBQPU+NQgdRZrFjcBkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4902
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

On Thu, Nov 24, 2022 at 01:27:40PM -0300, Gustavo Sousa wrote:
> Just a quick note: firmware PR hasn't been applied yet. Waiting...

Firmware PR merged into linux-firmware!

--
Gustavo Sousa
