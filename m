Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538126E2772
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 17:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B43610EDA4;
	Fri, 14 Apr 2023 15:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283D010EDA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 15:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681487567; x=1713023567;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jHNnQEkQq04WDy/4l/3y5kYI/P3/GVRt/qRjahhgChk=;
 b=N9iFIGgL/0jTU7uc0Ogrg8aVn0spKAQV0ZpvX2SsylNkvL6vDlcYHisM
 5/bceRXsCVSrLn2GLn7SspR5seiWI/gk8SdvOlUEIhv2Yc0EryoI6iOyV
 s38fdqHxrR8EmCdOEHeea8sp+ru8sGI7ZeCbJL/j/bGDi2YbYVE1zW1Eg
 LOoh5SpFcITb59M4j1sXoAVNbvZ+2mBZNIx37RdbjGltoLEBv8GmqKQJY
 7X7Mplbd99mzTyuIt5wMNLZjUwTPG5DTwZWMi5/FY53Ox1HWd638kYDWM
 RXJvLqMnKFJixdh8NMZUTDBsrdPF/hbbLXETimvv94hh+GVGxW6Tdn7jU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="347214205"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="347214205"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="754492788"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="754492788"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 14 Apr 2023 08:51:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 08:51:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 08:51:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 08:51:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AH1IqK1I0KhKOum56C7BWthcNQEKdCzRBzKaAJprZZOvN92PimWHNolSUlyoWIBizXKBnvXWAMPXFXj7lKmhfJLglP9l88YpkShUzubQu92dostTCPjUu8fA4pEOG6aLX4bQ199TOTjPXnh8IxgFxe7CQobtnVV/hp61vb1vE+KHpeVCdC3B3smnRMtrEX72Bp454f4Ue6q6rz6CNXWm3JCa3o5UoELm63YYzYllo3WGFSDd//reeuaM63hLoKxzvOt6dM6bF7kb+PXF9/jsvOZFJRq/9BK3pcpwMSTyrg0uiAHaZBsOj95ogmGmzxnzAx6IAibzlC26Kv7Ln+6HrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USp3/jGamEqxS6o8ATlu+eOkgLxeNpg9A7m41AmTVzY=;
 b=Uh5+xXNwFh390ZXYIOQY43WAn6FhqXoCii6YP0TR5iuLxCh0XsgwkX6EG4mz6WqLN6QDefmF46gd1bUlhUU96wZe27reWcYdmW+QTgwEmwS6FR2b5QgqaCS6liT/YN49CI/HvRQ4Cb0Xav3TZX6G9nxA1ah/GZVYuZPo9vbWUASGA8s/dVtAYnpuygR1UGzTkXPw2A2MpM5H/vlNv1jA8wP0LpawPSVkOW2mp8GxH5CsQIJLowPGe/lyhI/I//45ljrxH0Nh5Gn5q0FkVhyNrFSBm8CriFK/Xq+aXAXJ6C4A59gm0CR51MGy2MsO990vEsix7wGeLRfjI/pgR2tLNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 15:51:35 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 15:51:35 +0000
Date: Fri, 14 Apr 2023 08:51:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <gi54slbykiwpc4elze5rt2fb2dsevbjs4l5en5r2iguysxuut3@zgx7gksjvq3a>
References: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
 <20230412090911.811254-2-bhanuprakash.modem@intel.com>
 <87ttxlcv4k.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87ttxlcv4k.fsf@intel.com>
X-ClientProxiedBy: BYAPR05CA0069.namprd05.prod.outlook.com
 (2603:10b6:a03:74::46) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB4781:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a5dbe95-35f9-4cf1-1734-08db3d001fcb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9gIyj+eRpVbYq4pCmogGWzA3YBkRXfCz/uY2jli3uJqlX1y+8NHhhAC7dLMw7xBFdyxkubjNZT2vbswcYdYq/EVxJZBOWMvhzWvEXg383XPYD1c/F5gNpc/xVAHIVrtDjygj6i4xgJUaSJ3ohOMvDFM1IcHx0Jxb0EZhVltbD5Pgj37IyHAgtSgIAFJiMqpSwJDH0qipRrKdU3U7mx4cNcw3LquCVWs6/3oysTCJpuIkaGev2Cw4NWZtMJGEcCFf+nSeX/+ktnyib04+CfOENdQ8y/5jCe8fQ6eAWpwoaNfhKM1EGJ1/109xU0wUgagi3xwdHVlZhhyG5nsQkKtJezcb/27t68MFtTsVpIquOXflQWfO/gLcMdS5nULzQhUg+W3WsNWTEE5S3D95R53JODUraVnyfbFpSibOWGQYuDdsvRuv5FiNMu3HlBBEBumylwmVmsdmKeLygyXCO5fKqiZMhnGVS9I6L7skOjBgKm5jP4oaXJv9bhbLi+bu9IMxPfkn2AoO0zARQ/sPYeA/ybCdwxcmGlSbCUfk8InFFRYiH9Xtwm2setQQW+w8b1w0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(366004)(346002)(396003)(376002)(136003)(451199021)(9686003)(26005)(6512007)(6506007)(6636002)(186003)(83380400001)(6486002)(6666004)(5660300002)(41300700001)(82960400001)(316002)(8936002)(8676002)(6862004)(38100700002)(86362001)(478600001)(66946007)(4326008)(66556008)(66476007)(2906002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N5njBwu3dbIUCj9YJeIU5hj/hHLsWj6UokrkXDnzT3SIt4nlBBKCU4UJzS1J?=
 =?us-ascii?Q?wvBuXL0Du7sbSnCbXYb3gkIn9ZWIwiIXPE+aWr1JWY4gRBirFlaNidCeRVHj?=
 =?us-ascii?Q?HFaZkb4JkKiDopulFDZixGzog8CpBBVXDFOoCHgIVcfWj9IPlTOrWdvkeVpq?=
 =?us-ascii?Q?rLzoKQyj78aRzKjYRfry6kIbvylJvP/G5K2ZtuWuCxZlzBNN9BIV36gh7YaL?=
 =?us-ascii?Q?9uUU3n3Pdt76LJxTMHLy47Wgs9bP8tZ2GEcYftNNGzaJiwgO24sG0CEtw88S?=
 =?us-ascii?Q?n/PXEGMdinnQqSQ4sLomsm8s/4fw85vsq2c4qOr0ddP791bdTRChF5mOkHbt?=
 =?us-ascii?Q?PUyvvXrTuIjpnv6xGQwgGys9PDJQ0LIDJXDn3j1aRpLr4woeGGn8EjYTNIMx?=
 =?us-ascii?Q?N9Rkt/AsYSnNiNi5mGb+xTVr/VdE+5fm0gdcRdMfowNkrht7eSVnhdQTOces?=
 =?us-ascii?Q?JIK89DWSbhUuomGU4ut4VdRO9PmQWqm8Lc33sNX5dFVjTGqNRY/kqzt7Hngx?=
 =?us-ascii?Q?yfYU5itVY6bQyNPqzeOnqL0fMljFtJfZzVnSE3EBWw8zZB+E2H2bExLmp459?=
 =?us-ascii?Q?6vXF5xyTH55jM7QKR3oUeZlDmFNQ0pl/VaCRe1Q5y2ts3hxz9xkFVgpXury7?=
 =?us-ascii?Q?KYbIu2xJ2Z4Q55fH9tfVBAae+rrMWmq9RM0dqJaGKRZexW2+1LQnjSei5bH/?=
 =?us-ascii?Q?8E1ITS9y1Hv2tKDjtda7K/RsKQoTQ5gjnaOsvV6R5RhOcov93xcMnSU8yQoZ?=
 =?us-ascii?Q?N+4hym5mgsf1tR4m3llxbqfgFS6mcqMb4qqOPKes+c/uLuxm2Jc4rKWGHItP?=
 =?us-ascii?Q?l/Jij8iAonmIqYvky0h5c9XHsPHWzSI15nJp837uoeKYtgbZrbohWQ8C5Ifk?=
 =?us-ascii?Q?pBGUJUAxtC/b0IcMOHVsA6QVx8lpn88M5hukfV+YXogiCIuQN8LvlylW2CCH?=
 =?us-ascii?Q?hfItW4ijTOOzZ8PErdib4HDE4rwTSouSUghvdSKSoLyYEOqxjTabepv1OCGs?=
 =?us-ascii?Q?jrdzbFA+GD2mllZwwp76DORmQ0C+7hrFUDBmvP8E83y4NO/j8CU2XP8U7AKi?=
 =?us-ascii?Q?9uXVfxxU8fB+UJFFF679p6mnRBr3Janyl3rRSFbegq+1ngFshKz6f+iqkYWY?=
 =?us-ascii?Q?/wkMmW+2fVNKN5Aiv21ezedfbATbwQrMHPFghoRelJyffSPtwojjyJaoBcGH?=
 =?us-ascii?Q?UIlPkizivEMe+XGmVaHHoatiMciMw0OdQ2HU5hExlIyc9wuXo5+3I0GrGAhu?=
 =?us-ascii?Q?10XGZtzTuLHDQVxxsJAox2H+xgfloS0mPeEPI5cgmbh3ivk2o2SBz8oZiA1w?=
 =?us-ascii?Q?U3eEiAEZLCN2JMSQBoFMVNrUu3jCdT0oIn0jxxdnZemk3/UjTkOhSNNIdV8a?=
 =?us-ascii?Q?UoJ/DUdZVsIkg4bdTxqFvi4RQbYTHSOWcTPTEdK219xPaDW3TRJvg2qMKZx4?=
 =?us-ascii?Q?HCTi1p0V+Zs2fkQ5O4JF7qpoRjfktgMvFmeaahWXu62fK0F04pYxPAMLqhNc?=
 =?us-ascii?Q?jIvkL87nxUh1mhcOmJfbfLUnxO1Q1NCL2EFXjAlbtaxQWWFeevPITYUY9pI0?=
 =?us-ascii?Q?yyC46Xrc8ngLhDiRebwex7XD2EymSy5vio4s98BMfqS+iKnVgyOfs8dk4oa0?=
 =?us-ascii?Q?xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a5dbe95-35f9-4cf1-1734-08db3d001fcb
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2023 15:51:35.1206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T2Ryz/IKYm9xNwiRjS080CY5IRKuFNIcQ7gZduEbmfiNBUmtFDLRaNwC2S9KkC5VJ2TDkh26/UpF063a2C87Os9fBHANqEyA9rQ6bkreWmM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/debugfs: New debugfs for
 display clock frequencies
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

On Wed, Apr 12, 2023 at 12:22:51PM +0300, Jani Nikula wrote:
>On Wed, 12 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
>> +
>>  static ssize_t i915_displayport_test_active_write(struct file *file,
>>  						  const char __user *ubuf,
>>  						  size_t len, loff_t *offp)
>> @@ -1065,6 +1080,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>>  	{"i915_ddb_info", i915_ddb_info, 0},
>>  	{"i915_lpsp_status", i915_lpsp_status, 0},
>> +	{"i915_disply_clock_info", i915_display_clock_info, 0},
>
>Maybe "i915_cdclk_info"? (Also, disply has a typo there.)

hijacking this a little bit since I saw the new version of this commit
applied without the display_ part. Should we consider moving all the
display-related debugfs files to display/ directory?  I think that would
make it clearer for the xe integration while also cleaning up a little
bit the various files on i915. Downside would be synchronizing this with
the tools reading those files. I guess it's only igt and CI that care about
them?

Lucas De Marchi
