Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1F75B7537
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0641310E401;
	Tue, 13 Sep 2022 15:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C266B10E359
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663083380; x=1694619380;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=P5ndsmXMZSW42LE18dQBjmm/qltB/1vx4g9YOQBHMog=;
 b=YckmNL4fhj/af3AUnNb+jvM/EKTfUMwXWW9mXasDp78hqLg1VM4ZaKaX
 4k3ULFm5uXA+PxvXapeJ62Vo0LgQ9ZkIuX/mDgnGv9ppqT2bwHeaVqB9n
 EmgfWl9Y0b7KqFP11pv9NyRDlXsdd8kzgsO55i+h5sbCf+hHsE5cMsEqD
 zzZGpyUFaqYEgs3l4+PP2SLJPitJH5VFhlMIkcf/vSpL3wC82z+bpRhcv
 Are07taPrzNJHwPzNxifSU1f5qjj2kff4ZFBWUcqazC9LHUwWEz8UPPpC
 MtPqmwIwkb2d5HTwoW+OuQMq2GEHeevvUny8py/AdkZ+s0/tueW4sgZta Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="384466296"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="384466296"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:36:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="646975984"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 13 Sep 2022 08:36:19 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 08:36:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 08:36:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 08:36:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XIMu5cdSBD5UN4abXh36qT0ObYH5ctI946frv1C+4LEvQ94+ChgQE9mLkiu29QbRjl9rnp61R60KIGHl3X28VF5sPU9tOgcGJfJFHkW5m+7aJJ8VoWAL8lle7FYDxnUNQttszLpNgjOLMa8A4CDXEGS7efeYJSQIAwlzMcco1w9Dbr5QnobHcquppnsNDthMNhWezXsnHEEgHsRaXtAHkLAF+c/u2Dhpnd93f/L5ZSpMWwQ7vvikKUaZdFrtYwi8zxdujKvR5zgDLTefiXIiqxinAXctCRQ/51eprXb0Mq1p871uX84CvUPrpGQmofxnVDwITXckQ//4KhZ0Jv327w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P5ndsmXMZSW42LE18dQBjmm/qltB/1vx4g9YOQBHMog=;
 b=lc7muT4iBjFjqjOiRFcRTZYcPbN9U7xUxsmKx3kfhcTL0WhzJyzJduzBAUvlxkLUPUva18kNeEKVMvsn/cEsB8e1GxztkkQaCCgTfgAirviEQkJZi2h2Urz5WBwm1bs4qWwVHOZ45SPKVYtxyO+t+Y+Sh6Kc2Hksy8+XdjMDip12Q8kmcvTZBJfhC/JYfhCPGaIfoBfBEUdomNRai3XPXcmjP08qBFTEryTrxJ5VYGu/kPhs6zlpPQHLx+ATaOt+xj0M5f1b0h6XVMtGDPUms6phFG7OcDdoU6/TMy2q6Fo4mUeePydIc4ae8gNAmNFezi2ONfDlqKbo4M+QGbZ4Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB6472.namprd11.prod.outlook.com (2603:10b6:8:c0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Tue, 13 Sep 2022 15:36:16 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 15:36:16 +0000
Date: Tue, 13 Sep 2022 08:36:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20220913153614.fxmdz4qesvaiummk@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
 <20220908-if-ladder-v1-2-9949a713ca08@intel.com>
 <20220913111702.unfmxysm26rgjxqe@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220913111702.unfmxysm26rgjxqe@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR11CA0060.namprd11.prod.outlook.com
 (2603:10b6:a03:80::37) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB6472:EE_
X-MS-Office365-Filtering-Correlation-Id: 80270bb8-fad9-4047-3e63-08da959db260
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lqtJeJ/4fBZ7vsNriY5kldOV+553JmJ811LBQTSFImm9SZraepSntlJaOUYmH9mZk8rNOaHd+TYBhKRgozHwm/2NZwAgifbjWns/BsFwaWZKpz880JzutkNDh5QbZ/5lADY8HkkX9lR5Ir9bB60oB0JmKNN/4TdR25voXZrhpKsqe5Y2G6fYhKceB7t9d9mOMB/0feOze8fywsT5ukRg4D6jp4DVVaS3R5AQ2H6+7B+xFIuDAFjlF2OP8iGHvXmrM5N9QpfHoiigpuShfElWu2uv09y5N/XaRouzJcwZ8+cBuFjKgpl6wbzzR3LlQM6sQBomVTNoP8oFc3OfOBQUKPqsZOSLbIEZ26KsSBS566sVOzgwXFkIq6FDE8l2Bp8mViCoh6UwMuM3TXkdUx2cltPcrLOG7L3L8r+PanJBejKWlbPKA04/xx1zWWCXdSPT9HFwRPOF+zkFEuoHpw6QUT69lB948YI86j22CgRINEzqgbD1kYX85bABvZy+LD7ELt5yGVENpbhRMor8Mo4VtutB1+SU8xAHGHhmCoXxLWUrCv3zF2Xx+LG0cAiju8wa+BV/66pX2uWKycJYW+1kJpXTvFkieh84g5tWizjdF1yeDbNlvTSkuyPAM/64T6GaekRwJEQugURUFPxwRFbnFiPhw3R7BLYvPOG6b9DJza42FBlzw3ZHWlVmOyweCh6GnK4BwjTX+Vof8qKElG7trA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199015)(66556008)(82960400001)(6862004)(38100700002)(66476007)(5660300002)(478600001)(186003)(8676002)(1076003)(2906002)(316002)(6636002)(4326008)(83380400001)(9686003)(36756003)(26005)(41300700001)(6512007)(8936002)(86362001)(4744005)(6506007)(6486002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tkR+7JuzRorBmDIhtxs9iuz8Xh2daVbHUnPFCRwxCksIOQXwWXFO1LzO6nYO?=
 =?us-ascii?Q?jCor36TSES/ac/krqn3gihHcI5yrwe8Ogfo8HZdm3nJiMlfOvaKo4PiDxZbZ?=
 =?us-ascii?Q?bMAUuotEnX9pZwfXzebAy0izwvORZxsmHwfX4AYAC+9nweyZQH6U+JygJK8e?=
 =?us-ascii?Q?EmZ74B3WUDIA3KrI1o6xxjcFK5JAQMzVdtik54Sbdxg0WkgqHG60kfvcn7em?=
 =?us-ascii?Q?fdw/vaiqIjbEjV272VFgXBqWtblFPsdqvu+rLyLXIBphYIMpHnERWEAgweO3?=
 =?us-ascii?Q?MD39HuUz5LDtr8bqZFlUiGHT7jgPzdtA6QSV5NQO6IhZVTy6dcaFwA9vJ9i6?=
 =?us-ascii?Q?fVZXnCBf/fwIfRIiAvqE+dy9qNQzmXD106q/xn6sMm60ECac63YC6/D/zcYG?=
 =?us-ascii?Q?d7NstX6yfYaYddoZtU+gvY0Lf3H1p2TB8wbw5MeaHHlyjz2NIEst8qDIref+?=
 =?us-ascii?Q?PGfWu5IXFm263zvgIDLbUC5ZMIWbXNnsl2vh2cP7pC11FkKEO+yPMZzkm6XS?=
 =?us-ascii?Q?XuuEze3GbcHMopj+ycPbV85L+qsGfMNQ0IUGLnHXntPIiJpdytYLwIMvFveJ?=
 =?us-ascii?Q?y4/plSPkBYdHiH++a52uVUscB8uUMZ7E+U8O3jtFhS5Eo7ScefpX38yXOPt/?=
 =?us-ascii?Q?SUIFP5LxA6TbKW+m8zHgYj7nnGQKae4PNoBbezCRNFOpgrblYCocU3Wer/nQ?=
 =?us-ascii?Q?a/uQXbJQqSYn52ZvuuImHQOZeGXd+opnjt8e3Ot215fKoZ6lxKjNXP3qoBEb?=
 =?us-ascii?Q?2+RsNqu9wxznO/vGjzzmOkYUb+0q+GrvRXMUiAKrf9TFcp7yDXO3MoG0NApg?=
 =?us-ascii?Q?DEd+Xr13ZHhMF+I0uytaM8lrpVnLMEoIg4CHibRdOyZKmkMqO/hlp6x6udUu?=
 =?us-ascii?Q?zz/3MhIt3UKXLe+4sUe5uh3aZ08I/2Ke5Iw/up951inAjXQuHTAOZVv3Ulfr?=
 =?us-ascii?Q?ns5iqsQdL5Kn+uHqMvByIzOWdP1Bq7GtW7gTYPPsCT+OdmTJnHlO1IcX8o66?=
 =?us-ascii?Q?7sMlIWEynXvoB+y3Kh4p77oYGbUXLh+g93ykcmDzn8I0IYEdA5J4qu6cZgiE?=
 =?us-ascii?Q?vxZvo539sOmK22DNWp2kgJ2orN7KHVgrf0EJ81BUsqkHqV3XrPbAWYgWEDWD?=
 =?us-ascii?Q?xFNVPwRAIsYAacle2MEDzKZrgp2VCq+WjVFi0uCQ7UtIIVkqlcvXC8/27MUc?=
 =?us-ascii?Q?nU/IpRpcMDCQus6SIIpQ4yeOBHIjOeFVgsk0TQLlj8ilRNSTdqd9wQ9KF/s4?=
 =?us-ascii?Q?ZEYTsIhIMqUtNtRw5hgw5v23lcCUEJ5H6cWZwZIVq64S5tItJ33pXteLWCgK?=
 =?us-ascii?Q?jlMm7fKaRzScApqUq2VCg4xRy6FTjnEZU992l/p1LBB/zKLL+L80RaFf9qR2?=
 =?us-ascii?Q?R/hjGvFaoOLUOAEkufahhSE866meFCJmgWE2YGirosbq69pvnF7rVQHl54oQ?=
 =?us-ascii?Q?Xhdo/iE3pvQLQafSV7HxDOB7s93LFy3x9b+2L58mtOrHou7R6uPE9GKMl9bl?=
 =?us-ascii?Q?PZA1iI0znPXQzOek/CUNIMd09Pso7aSG5EgK5QbHCo6S5ZfTUsYYVGMDpG8g?=
 =?us-ascii?Q?7LoX30Ktu10wcbhRdJ8yFrm0xU3OuW8IxNB3BfYWlkOsbRoJVpCmwwvWl1s5?=
 =?us-ascii?Q?MA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80270bb8-fad9-4047-3e63-08da959db260
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 15:36:16.3433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HJIej+GQ0e0fm1Mxn9maOrCShLZsA5PSQYivC21ix14kuHa2YDXesc7bLFLT1vFP1MQuIjz3ACO4suoUvoFvQuq+hl7OfCC+fnq72sqmF+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6472
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 2/3] drm/i915/gt: Extract per-platform
 function for frequency read
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

On Tue, Sep 13, 2022 at 08:17:02AM -0300, Gustavo Sousa wrote:
>Hi, Lucas.
>
>On Thu, Sep 08, 2022 at 01:08:15PM -0700, Lucas De Marchi wrote:
>> Instead of calling read_clock_frequency() to walk the if/else ladder
>> per platform, move the ladder to intel_gt_init_clock_frequency() and
>> use one function per branch.
>
>I think the split of current code into separate functions looks good. However,
>maybe the correct place to do that would be inside read_clock_frequency()
>instead of intel_gt_init_clock_frequency(), since read_clock_frequency() is used
>inside intel_gt_check_clock_frequency().

indeed, good catch. I forgot about the debug thing reading it again
later.

thanks
Lucas De Marchi
