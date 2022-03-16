Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB6C4DA730
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 02:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A3610E0F1;
	Wed, 16 Mar 2022 01:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CA8B10E051
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 01:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647392717; x=1678928717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ytPD2APgWHQ+AbJzP4ZPaug9wmL4HOLp+qRgHnxHnOE=;
 b=FAMqqaqwkxHPKs3FwyhFobcFm9XkUajS/JIiS8CvwwgYKexhJgcpkRwU
 EtFHD9KyP49W5OjXMTlfQASRZm0UT270jjn862T34SCQBx7g55LCxppy5
 1KkZNATH/O1jXFnURJ7fHqNGsrnGOzF/x0JdfAP5LwlrTSxnJnrpeo+mh
 FHJqvPt1t6FPPyhPDc3RxgqcLBfsTVXfGF/Ib7PLsa0F46v5DhRRsAX1V
 MwySst7oP5gO06rnrvoZB2aYMBMTGY4IH67Tgi70cZD7ishA9SPutTMDp
 s8G1ydDu176XJdAxf2kYsotVS53EDXxpQtbApA0JU10fo+Tqgedw8DSd5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319676871"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="319676871"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 18:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="613458963"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 15 Mar 2022 18:04:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 18:04:54 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 18:04:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 18:04:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 18:04:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsj19YVQQdwk6AxSjGsCSJdO3b+sViotVjHumHJkdWSt/wsU3vWUgpAGooODF1dAZs8FXPRiduI/MRHqdDbEMPOb3yM0cwQO7Y1HbOi3xVmlRN/ENfG6iHaKSTGQ4NXEfjrLRV4IaDw8lNd8/+Kk23Wb153yVBz6hkDgXbpAspwvs3IUM+6XYvlyUXCdKFd1BnDUF9DwptMr4b/npQZzm71S6WUAw3Va90/P9HmDwj4r2E2y1mnFJ9vmL6P6/Q7p4Xup7WyLHr774BGuMQ3QTxp0jHW9w4bEcmrgXk+FPoKdB6pRpCp4A8LNStRr9lLz4XQBRQGuDSPe62p17JRkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86t0//odqVqVZVysvnMNSHYq0Y08EgEj6G675GibDQc=;
 b=IOtwpaOe2vgvpTOzsMPIbd00srBihJAxEV+qVqhQ4ESqbEBUz8pJPA8n6bfCuPNz4p9R7FNqz3I9AxbR9aNAqGrDESWa8n8UBXXOTtOpaj1olA0lqGLCii6xzNj6j58d8r67Ee4Wleo0dn9ISqrMZyuco7b9xoOhWV7H2hb65GdJQlgc2XBdiHYTjKerbWWbiXKkba7ghgIBptMXx1WngzzdBeKaHZEc1S5aHWtTNWspMw6FLv7kOSFfkArLh579PoXnxh9vdK4I3iFXhcy2yYdJ5A3k0stQZ3jDUTdisHLh1Kd4Fr+Q6F8MVy2/VSCqMOZiLwUrsbnN67ckNfxCtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 DM4PR11MB5342.namprd11.prod.outlook.com (2603:10b6:5:391::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.24; Wed, 16 Mar 2022 01:04:44 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%12]) with mapi id 15.20.5081.015; Wed, 16 Mar
 2022 01:04:44 +0000
Message-ID: <b2dd9821-d016-872c-6f23-cb71f99227ec@intel.com>
Date: Tue, 15 Mar 2022 18:04:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: kernel test robot <lkp@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220314170954.1537154-14-alan.previn.teres.alexis@intel.com>
 <202203151007.mYugtWwO-lkp@intel.com>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <202203151007.mYugtWwO-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0239.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::34) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 71148f0e-da92-4715-74f9-08da06e8f52f
X-MS-TrafficTypeDiagnostic: DM4PR11MB5342:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM4PR11MB534272B3E75516101E88A41A8A119@DM4PR11MB5342.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DEIMKtJDwpXkcvayXX7n79Y/jDMIh/hDWEq7T8JKQZEM5e8XLS4/Kh3EFyS7n5WYlg/M251bpMU6eeo9lgR78op/+qUm8q7YYoDSbdHcS3pM1pxbCsqgbQZEZVFW8tk33V2oQGZ8ezwHfMkDqH9DnQysM8+QXWg1U1OGKvrsIcTQXfzWiFRatNJbBNMAlmsArxh3C8vn0QX82X1sdPv/SWr++R1B/Ng9PikGqE97F7ut0LpdWoCIZDR2/q0kzX3jDCf2e/ohwjZXG+sn+akns0vlHP+PDwCvPOysfSZmNOzOoHP3qVwp0R9NY9lbd8LvZwt/yXlApy/ZTugtneNOi0pipQyKYAU6VyCY+rYfQevuV5IMrq1tL3AfjRX+cQx3ww7+18o9o7wxpK99u3lmccl1mgu4JJ2LblZIkRqNkFFQzQZPWHnB3EOQsNXh3p2b/fdHID4HoExRd4di4vq/2YK+pZ+Lx8CXn0EevUmm3xRtJvmc1up+VuMQE+6EOYQTZwvkqvpJg/hP6AfvlCeUeg/IzZCfZwDwOMX/CXDJ+RpipS2RKEpRjRjTsmwb8knxQXv6pUsuq9mqht1kPfmsbCVGL08naU1qc+9lFBsuTNnVc4yWy4WP4XY75YB9Sbhe8BhEOMZTLX14S2j9RfFhtcrwjgZbH5RvStJ7pEI/zZ/V2aXUDAzmur5MNFSmoqxWTIsd43smQkEKmY6zcR8OGz/c67zhp9ta3nHndyI/4qtzi+cEpe3ZM2PhIDGjKYPS5S8O2WVzbqiRWIdF/W447ryliMgBSQ2UZdb3AxAEo5Qzhp3jApl493S17nBTwCzvUdDC/Id3SvpvZ5JskRPkIm7OVt8wkI80JmeYAZdLsFQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(30864003)(31686004)(36756003)(66946007)(4326008)(8676002)(5660300002)(66556008)(83380400001)(66476007)(316002)(8936002)(2616005)(966005)(6512007)(86362001)(6666004)(26005)(186003)(82960400001)(508600001)(6486002)(31696002)(2906002)(6506007)(53546011)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHJLUmtRUWRVYnJaV202RTc3Y2xkbWlPaDVDSzA4UENkWEcvWGFNYVlTdGNF?=
 =?utf-8?B?akdLd05iYWlpeU4wUnFvWUlkNWRRcjNyR29FNFVhOFhJaDFIaitPU01Ycndv?=
 =?utf-8?B?akRncDAvaTZVbWRDMHVrRDB1TDQ3MEhZNGR0cFM0U2NBZ2U1d2NMdjRTQ0VR?=
 =?utf-8?B?MkNZRGFpendBOFM1SmJ6dkxOVlRGVjdLaXUyS0swajFTUWZ5OUlDSHAwdzZq?=
 =?utf-8?B?SUVkRytvRXVsbnJKZm1nQ1lrS3o4NjVkOFJVSGU2ekFCRGI3Wk9sZkZNWlBM?=
 =?utf-8?B?K01zNHErcVFsMTVqT1kvRGFvRjN2K3VZZFRGcXZxZUFQLzRiM1VRUklzQXU5?=
 =?utf-8?B?NUQwOWlGa0Njbk9tdEVyVHlaME80SkZEU205ekdjdVNKS0ZKNUVVaEJicVBj?=
 =?utf-8?B?MllLZlQzK0M1aDFicnFUZjl0QnZqQzRlZ2tSS0EwVng4NXRjS3pGMGxLZTg5?=
 =?utf-8?B?OTBsMURHdDFzRFdaY0hEN2tPNmVUWGdYcTc3UUUzejd1YUpsVHJQM3NmU2hk?=
 =?utf-8?B?RTIrK1N6bnV2SDUwYytyNXJaWkdGWldlL2R3TVgwekVWVWgzOC92TkhRelhz?=
 =?utf-8?B?dHkrZ3JEMWFlRmZsVzhHUWFwS0t5SVVzVWw4dHl6MVBlTVpwL1RMaGp1ZVRD?=
 =?utf-8?B?UzUxelNRTzhFTk1HRzhFVUdYQnJtWVJPd2dyOFBLVGxqNU0yeGhTN0dVVHE1?=
 =?utf-8?B?YVF6WHhmU3FYalNFNGdqalN1WHpMTVpJVk9ZdnVCc2tid0VsWStBaXBZMnJ4?=
 =?utf-8?B?U1F2MGhDTTFleFZvTlBxMytqeGpCWmgwMHhMVW91bjRGS2V4cncvZVcwd25Q?=
 =?utf-8?B?U3VPUW80ZXV6cnpmTkx6SUlVSnlOSFFLdnVtUGw3TjhlbjdFS2toa3BlTGx0?=
 =?utf-8?B?NDVXODZLeW0zbHFKWENONjVoUEdNUk1aNXNVU1VDV2MvdytoMWJlTi90Z2c3?=
 =?utf-8?B?cHVDako2RjcwV0ExTDB4MmRYUDFoZGg5VkhyTHQ1NWlkTnVwQUsvZzZ5YnFz?=
 =?utf-8?B?RTVVbWZ6SUNVYkxISUxWT3dvbWl1MFBUSUVNUU1WcXVkQ21oL0YzbFN4WkNE?=
 =?utf-8?B?SWc3MXB6cDIvR2ZqbHIxK2FlamtlTVh0M0RyaTRIaFlYZ2ZlbStiYmJRc29P?=
 =?utf-8?B?YXR4SDF1c2hSOUlqeUIxdzl5aXpMUUdjZUlQTm5Kb3RFNm5naVEwSlU0QXVu?=
 =?utf-8?B?MHhmcGJFbzYycmlUaFRxRTJkQWovVERvN1JLNVBvaHV4R0lTbTRkaDkwWHhL?=
 =?utf-8?B?aHFpaDNvb1VtSmMrc2taWmZobThlcU5JbjBrWk85ZkNNbWJYS2xvS3ZVd1pz?=
 =?utf-8?B?bURMR0g1ei9KZjhvQno0R0NnSXVKaWczMmNZSGRrczUvQTZwUkVWalRlUWwz?=
 =?utf-8?B?eVNMbDkwN2JrVDAyQzRNR0w1WGREUy9JRzJyY2ZQUnYxU1pqVGJod2E5NFRl?=
 =?utf-8?B?SjRMNlBQYmpXNTdJNFRRSm1EdS9FNm1sYWtzTjhPOHdDMUZ3di9CcGk3VTRt?=
 =?utf-8?B?QWtDSk8zM1lXUkVMQ2dtbWtoazNaK0FIdDFPZTVRQVdEeHd4aWhYdEx6cFJ0?=
 =?utf-8?B?aVR6alBxZU1vM1l2T1ZsY3dNNnRBeEZ0T3F2em5KMHYwYnVKTGpvVVRXQW83?=
 =?utf-8?B?WlNMb1NpN2Rrd3cvZzN0cXhGV0xrTGZjeG9qQ1JnYWx0eEQyTXBqbXEwRmZ4?=
 =?utf-8?B?OWVxMGZ5aGhSbGVWMGNUcE1CZVBjMGFlSnI4M2RKZm0xbGIzdDR6MTVXdjdl?=
 =?utf-8?B?VkJUNzg1dFVBMlYvN0wxWjdhQnNaUU9rUXZIZ1JITC9pRm9JM3FRYm5YVGJS?=
 =?utf-8?B?ZUxwaHhybXNWdFpwcTNkK3dLajdySXUwYnA3RlEydVNOWkNNS3hzWHBGemtl?=
 =?utf-8?B?TGZjOGtBWkJmeWREc3ZnTlBRRWVrY1ZJRHRoUnRadEpEa25KSWZwQWd6Yllw?=
 =?utf-8?B?QlFRNzF3VlQ5ZE16UWFMckJJdUdONTdyUU0yU0FjS1duaHhMU0hoT21yTjhG?=
 =?utf-8?Q?d2Yu+e2QLXM5Wk4TkxvWcED81lY3Es=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71148f0e-da92-4715-74f9-08da06e8f52f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2022 01:04:44.4084 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KVstSmREpIVCrloMhvsxPs9GI7/O7LDam8CHXU7BZSC7SWdtACquiKP+499XwtQK6rMN1kC8RWhiT1OdNjOlYT+apR0zrVzZu0hre+i5sfISIToSiLxQzhhmZxE2/TxZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5342
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 13/13] drm/i915/guc: Print the GuC error
 capture output register list.
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
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an actual bug I missed - will fix this - would cause a 
compilation error when enabling "CONFIG_DRM_I915_DEBUG_GUC"

On 3/14/2022 7:26 PM, kernel test robot wrote:
> Hi Alan,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on drm-tip/drm-tip]
> [cannot apply to drm-intel/for-linux-next drm-exynos/exynos-drm-next drm/drm-next tegra-drm/drm/tegra/for-next v5.17-rc8 next-20220310]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Alan-Previn/Add-GuC-Error-Capture-Support/20220315-010958
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220315/202203151007.mYugtWwO-lkp@intel.com/config)
> compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 3e4950d7fa78ac83f33bbf1658e2f49a73719236)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # https://github.com/0day-ci/linux/commit/90c08c10562cba1ebf8b31788e7a9550c7637838
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Alan-Previn/Add-GuC-Error-Capture-Support/20220315-010958
>          git checkout 90c08c10562cba1ebf8b31788e7a9550c7637838
>          # save the config file to linux build tree
>          mkdir build_dir
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1497:2: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
>             __out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
>                     drm_warn((&(a)->drm), __VA_ARGS__); \
>                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
>             __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
>             dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
>             dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
>                     _p_func(dev, fmt, ##__VA_ARGS__);                       \
>                             ^~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1502:3: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
>                     __out(ebuf, "  No matching ee-node\n");
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
>                     drm_warn((&(a)->drm), __VA_ARGS__); \
>                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
>             __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
>             dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
>             dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
>                     _p_func(dev, fmt, ##__VA_ARGS__);                       \
>                             ^~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1506:2: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
>             __out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
>                     drm_warn((&(a)->drm), __VA_ARGS__); \
>                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
>             __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
>             dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
>             dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
>                     _p_func(dev, fmt, ##__VA_ARGS__);                       \
>                             ^~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1509:3: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
>                     __out(ebuf, "  RegListType: %s\n",
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
>                     drm_warn((&(a)->drm), __VA_ARGS__); \
>                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
>             __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
>             dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
>             dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
>                     _p_func(dev, fmt, ##__VA_ARGS__);                       \
>                             ^~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1511:3: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
>                     __out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
>                     drm_warn((&(a)->drm), __VA_ARGS__); \
>                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
>             __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
>             dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:146:49: note: expanded from macro 'dev_warn'
>             dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
>                     _p_func(dev, fmt, ##__VA_ARGS__);                       \
>                             ^~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1518:4: error: no member named 'drm' in 'struct drm_i915_error_state_buf'
>                             __out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
>                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1442:19: note: expanded from macro '__out'
>                     drm_warn((&(a)->drm), __VA_ARGS__); \
>                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:435:16: note: expanded from macro 'drm_warn'
>             __drm_printk((drm), warn,, fmt, ##__VA_ARGS__)
>             ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/drm/drm_print.h:425:21: note: expanded from macro '__drm_printk'
>             dev_##level##type((drm)->dev, "[drm] " fmt, ##__VA_ARGS__)
>
>
> vim +1497 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>
>    1449	
>    1450	#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
>    1451		do { \
>    1452			__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
>    1453			      (eng)->name); \
>    1454			__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
>    1455			__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
>    1456			__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
>    1457			      (eng)->logical_mask); \
>    1458		} while (0)
>    1459	
>    1460	#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
>    1461		do { \
>    1462			__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
>    1463			      (node)->eng_inst); \
>    1464			__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
>    1465			__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
>    1466		} while (0)
>    1467	
>    1468	int intel_guc_capture_print_engine_node(struct drm_i915_error_state_buf *ebuf,
>    1469						const struct intel_engine_coredump *ee)
>    1470	{
>    1471		const char *grptype[GUC_STATE_CAPTURE_GROUP_TYPE_MAX] = {
>    1472			"full-capture",
>    1473			"partial-capture"
>    1474		};
>    1475		const char *datatype[GUC_CAPTURE_LIST_TYPE_MAX] = {
>    1476			"Global",
>    1477			"Engine-Class",
>    1478			"Engine-Instance"
>    1479		};
>    1480		struct intel_guc_state_capture *cap;
>    1481		struct __guc_capture_parsed_output *node;
>    1482		struct intel_engine_cs *eng;
>    1483		struct guc_mmio_reg *regs;
>    1484		struct intel_guc *guc;
>    1485		const char *str;
>    1486		int numregs, i, j;
>    1487		u32 is_ext;
>    1488	
>    1489		if (!ebuf || !ee)
>    1490			return -EINVAL;
>    1491		cap = ee->capture;
>    1492		if (!cap || !ee->engine)
>    1493			return -ENODEV;
>    1494	
>    1495		guc = &ee->engine->gt->uc.guc;
>    1496	
>> 1497		__out(ebuf, "global --- GuC Error Capture on %s command stream:\n",
>    1498		      ee->engine->name);
>    1499	
>    1500		node = ee->guc_capture_node;
>    1501		if (!node) {
>    1502			__out(ebuf, "  No matching ee-node\n");
>    1503			return 0;
>    1504		}
>    1505	
>    1506		__out(ebuf, "Coverage:  %s\n", grptype[node->is_partial]);
>    1507	
>    1508		for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>    1509			__out(ebuf, "  RegListType: %s\n",
>    1510			      datatype[i % GUC_CAPTURE_LIST_TYPE_MAX]);
>    1511			__out(ebuf, "    Owner-Id: %d\n", node->reginfo[i].vfid);
>    1512	
>    1513			switch (i) {
>    1514			case GUC_CAPTURE_LIST_TYPE_GLOBAL:
>    1515			default:
>    1516				break;
>    1517			case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>    1518				__out(ebuf, "    GuC-Eng-Class: %d\n", node->eng_class);
>    1519				__out(ebuf, "    i915-Eng-Class: %d\n",
>    1520				      guc_class_to_engine_class(node->eng_class));
>    1521				break;
>    1522			case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>    1523				eng = intel_guc_lookup_engine(guc, node->eng_class, node->eng_inst);
>    1524				if (eng)
>    1525					GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng);
>    1526				else
>    1527					__out(ebuf, "    i915-Eng-Lookup Fail!\n");
>    1528				GCAP_PRINT_GUC_INST_INFO(ebuf, node);
>    1529				break;
>    1530			}
>    1531	
>    1532			numregs = node->reginfo[i].num_regs;
>    1533			__out(ebuf, "    NumRegs: %d\n", numregs);
>    1534			j = 0;
>    1535			while (numregs--) {
>    1536				regs = node->reginfo[i].regs;
>    1537				str = guc_capture_reg_to_str(guc, GUC_CAPTURE_LIST_INDEX_PF, i,
>    1538							     node->eng_class, 0, regs[j].offset, &is_ext);
>    1539				if (!str)
>    1540					__out(ebuf, "      REG-0x%08x", regs[j].offset);
>    1541				else
>    1542					__out(ebuf, "      %s", str);
>    1543				if (is_ext)
>    1544					__out(ebuf, "[%ld][%ld]",
>    1545					      FIELD_GET(GUC_REGSET_STEERING_GROUP, regs[j].flags),
>    1546					      FIELD_GET(GUC_REGSET_STEERING_INSTANCE, regs[j].flags));
>    1547				__out(ebuf, ":  0x%08x\n", regs[j].value);
>    1548				++j;
>    1549			}
>    1550		}
>    1551		return 0;
>    1552	}
>    1553	
>
> ---
> 0-DAY CI Kernel Test Service
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
