Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E37933D7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 04:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2868010E55F;
	Wed,  6 Sep 2023 02:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F6010E55F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 02:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693968598; x=1725504598;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dyn1/d2W5d4L2noY+Jqv+Z6Fvtx5YZLzwskya72G320=;
 b=DwEk1Nu81UQwRr1pCFMaWKeJ06kUpIavTFi4Ac8Y11dcRrNBPenQ6n2m
 QrDqdP8qRrhwXbp31Ulsg88xTo5/v0g/g4hnQZJhxXkWsSR/qD+4V+zGX
 2FUBEpQUIvpZ5jyZGz6aN4TFfJoOrk3j8a3SWrJAXkT98pWRRN7hC2nBE
 mcOgVG8U58U5D8tCHnOX2SrAmZ5T0v24XrXlCUlX6JlvfbsqBC9ATblVJ
 AlLYq4ho6HBXX9mUef57gk/cwPyHYfdC4Ka2nCOK0Y076KsDx3U7LfRey
 I9R08nHNFzm3G1gFWfFqzIemr2NYYQWtiGojbFJWIZUrXmgMDoFI3Zkur Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="357261876"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="357261876"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 19:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="915094511"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="915094511"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2023 19:49:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 19:49:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 19:49:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 5 Sep 2023 19:49:56 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 5 Sep 2023 19:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sh3sOxSflgSqQeIME/oek+e2sfQGa0EprzDAVYnr1KSFW5zi6OsYQt2EkbNPxtYeKcfwHiLxvuMyBQUMsUqnaJJaZvIiqFZZO4MSf73uuyfDsMVQtQNBjeKO5bkEcodAKI1Voh7hjATb9W8nqH8a0H9DN/Icwm7JiBb8HDTNcSjvGxsVGy2nDECcWVviHMxp9gNJIcPmG4KRez0H6nZBDMqUKbCMo3BDPUh9kjs8zvAFMeYq04PVu08Z1C99mvi4HzBjioHiIZ3Zvf3O6msj/nV7MjBg8QOTxVxmSf+khvKKggsZgFGpLQVMqm1Uqv7TuNhKjlPTh4iB7Fr97l77zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0zC+T8+8Y2YlPxLcfeRXMGY7rVaQKtnXGA63wtqtxvo=;
 b=l+QEKTzKx0E29q3mGRfXhYLOL7Ujf4PRnm65I6j4GV+e3firGrL95MBO3wtW/5gOoQzvRJ05nxPpcAzcUGiyE4I45Ov7yXNnofKB8BWPl2gHV2852NvTIw2EKbTXscn+2eMMOB5KYCAP1wMrwVv5DoEhEOhOkw+HvfzbyQ3qTDXGEGfP71pYmGOwx11E572cgeoR+kEJQIhLzlh/wpXjoin+bZTJof9oTATmfQ8jjMJV4ZOcmLp8WPeiAI+Qf6OGh9cFS32Mg3D5qbDzLQvdW1HlbI+LIQ+Att7QzmIl+yTCAkSVbxSv8NoVixrY+m0BliXqylK9JJJAJ66bRY7Ung==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB8131.namprd11.prod.outlook.com (2603:10b6:8:190::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Wed, 6 Sep
 2023 02:49:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6745.034; Wed, 6 Sep 2023
 02:49:49 +0000
Date: Tue, 5 Sep 2023 19:49:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <bybk5m7d2u3str4ozmr6ezurt7jrdiswcrx3hncjt5yslcympo@yudjfjkgsr3s>
References: <20230825081638.275795-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230825081638.275795-1-luciano.coelho@intel.com>
X-ClientProxiedBy: SJ0PR13CA0134.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB8131:EE_
X-MS-Office365-Filtering-Correlation-Id: 38be86dd-36d0-4560-0e34-08dbae83efd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: voBWGOy0bcBQi8A8oe8iarOQqp20XCdUX0TFIf9FNCRsC6OCgdh3y0cBLbEVHLBk/zRERQ1RDEXl7mB13wnuiqfXL7vhu5KfM/u2tQR7WXRFXqstzZBtzjsR9KTjTBoDtzY1XKHQEyys3Ks1Zw8fV2A2BDhRF3yuAzhmgONQWFjd9eBCOHUgBOPWlW0tjmQArh/ic6MAjtvhzcJpTo60nWltkN2nL8nRJuWOTuuLcCwpKRYPuuiMnh49/7TVBUw6wH6Xc9clc/ziTRLy4J7eEfCt3dXIoZJNvYwBMBBrpP4h7sGs3xjfxa87QELQ8JLD1taQ2lm3PNKKiZgzwm2yby7VHW4cFSOIbXu49CUx6l3jZ79lfLSJkuF5MBOlq0fvhKtYYBOKYXk99RhWs0dYVAF9tUNBiu3hnkb0WYAqfNkIkF0th5XaVkAent83gkPryqgj3dyrXeQ8mCgn/Y+R7k+DjOdBvzDpp1RgRTg1xbFSQRHqMfJGEy5i9Dkbj55lXmJ2IiOuplfGhO0pRz2ds2WdvcU7hd+C5fzKV2rtF5/qz8c/adBt96qjErbGYd8D
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(366004)(396003)(136003)(39860400002)(346002)(1800799009)(451199024)(186009)(6862004)(2906002)(4744005)(66476007)(8676002)(4326008)(8936002)(41300700001)(5660300002)(316002)(6636002)(66946007)(66556008)(86362001)(82960400001)(6666004)(478600001)(6506007)(33716001)(6512007)(9686003)(6486002)(38100700002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fLjcyaxkMCTqgZc1kbJQT+GKEBXnieIhFf9IOGJjoUJfDnRE9+e4cINEKMRq?=
 =?us-ascii?Q?kl0rMMSkbtNmn2w+JfGHXdd8B6+3q2B2ADGfe/CBYSemz0h/FwxmwB/Yuv19?=
 =?us-ascii?Q?NBmrSPi38L3JrPK+LSQzue2Iy3+2bxCz/P9z1WeDLRGbN15rSKx5iMU34b5q?=
 =?us-ascii?Q?MCSwIekvpcrREsjVoVf96v1uozI6QtzGt59r5BWiBSDP6i8qDYRJnaPu0Oju?=
 =?us-ascii?Q?a7kSxu2hhfGiKG3mnoi2I5/rYZlihS6j8Y/RGjggEoDZ1jiiHcuxHk9jTBZM?=
 =?us-ascii?Q?umHlxQa+C19zNGuuruz1yO+ymzPMITnYwrohfRmE0byiavEeIo587jws9+Oc?=
 =?us-ascii?Q?J7pq3Iv2N0yo0Y5Bm9uNiaOd1iITSxa/jM/1oVCdH4S10uiawYM1TP0ArJyy?=
 =?us-ascii?Q?NgJ3g1z7QCQVczOfxHMxaLSpQe4EJb6pIzheY/DDQTeZrO79jYTYyHyk+PgH?=
 =?us-ascii?Q?DmM6oaxFCh3vKp/+1zP9l92mKU0I4UxE4pdzr6r/ZsPrn3JnaDCf4Bc8lQa4?=
 =?us-ascii?Q?5dSQZnKW3t/uRFnFnEq/CY3zeF8w1FWdwA1q5P6yAiTqsD41jE7XqyZMp/2w?=
 =?us-ascii?Q?3T6g7eDtcXXkyQH/R9wXz2PeAgMkTPd7ISD043KWiX13U//VQgJCK0PqkwRh?=
 =?us-ascii?Q?20v1rTCPJ59/sOAhvnF6lUNHDdfAdjMBeuI2LDwHcl/lOQIA0VtENKXujA2o?=
 =?us-ascii?Q?3JWUQ5BV5RsG/0xitK5FDPsompwvNvfTQZL8kFW0xQKAZttEqaFPoXwGqoP1?=
 =?us-ascii?Q?kfeLo0qYDXYHFM6xReYHMtAjMKpRqAPR3PXcwYrx8JsFZOcKK+eNzWrrxJqk?=
 =?us-ascii?Q?lv2ECXX2xx2Kp2qqsx4fgin7Nt1kBMjMFhWB90mKbCTx6hT5lDYWFdHAdWuJ?=
 =?us-ascii?Q?+Fhx43JcN/+v8pKXU6Uf1J9GLh1KgxQGTqWDZg5d2kj5p+5leB8PZbCvs5eQ?=
 =?us-ascii?Q?54R/hincBHDWU9vRddHzr5RaVHiK5+hNY7Cf0d9geKU6/FRb6L4d3lyoL8BP?=
 =?us-ascii?Q?YNgF4RVOSxZ7Sf1BCZf8MNlAjdvKKB37nGqUhKDL2khtS65ArOBeBO+sa7kp?=
 =?us-ascii?Q?2KhBTHDN92fksBZEmfXuPIG/UJZ/3cGGiB8K1bR0Dz00vHsd5EkWnqmiyGrp?=
 =?us-ascii?Q?vuLPDrQgC9kqQRQWdq+6YQE45cSrE62Gnrv2iPiNf8j+Rz3BnqOWLzxFlZwQ?=
 =?us-ascii?Q?n7pRv0GpyUZPramHWn38V9rPZgIWXjj9u6idOzuQkiU75uTx3ogv4VZ+ST/m?=
 =?us-ascii?Q?tpmlqy5qplXD2GlWs72GT0rynH7o/23epJc+FFA6/uGdl5KKW2n08s/Fp83Z?=
 =?us-ascii?Q?O210/rE55Hnf5a9W+77P8aBXDKXdoCgHYss3GB2gNGPrr3uCIVm8Hs1YeFrP?=
 =?us-ascii?Q?oarP/jTgiALts65D7OWerrZbgxZcchn9kEdq7kpDbE/h9z52AN20HRorrMgy?=
 =?us-ascii?Q?DCeCLl48sYQnDClUU50+7nMPI7KOBZBEr1k2euGTu1tQQVRsCPgLQIWK6YFq?=
 =?us-ascii?Q?UC7rLdElDhJF7niMoRVpMDhpL3GB6KT5SKf6j6Ru5LLSxgjVxu1L3j6QADmp?=
 =?us-ascii?Q?l15a9SKeynWLTEbZkaAQwqgIR+zt9zK0c/knhPw5i/edS6o8cZAzSiVSkStK?=
 =?us-ascii?Q?Lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38be86dd-36d0-4560-0e34-08dbae83efd1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 02:49:49.2529 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: arzCV7wo3HnJsNaWOUXJUjrx2wbEycbZfXXd9mE0qPDLipe/bIMrzP67yK8fcRtWYxC42rJAoOYxkme67G3px3LmgqR/PkI+R0nGHuzppE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8131
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/4] drm/i915/tc: some clean-ups in max
 lane count handling code
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
Cc: suraj.kandpal@linux.intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 25, 2023 at 11:16:34AM +0300, Luca Coelho wrote:
>Hi,
>
>Here are four patches with some clean-ups in the code that handles the
>max lane count of Type-C connections.
>
>This is done mostly in preparation for a new way to read the pin
>assignments and lane count in future devices.
>
>In v2:
>   * Fix some rebasing damage.
>
>In v3:
>   * Fixed "assigment" typo, as reported by checkpatch.
>
>In v4:
>   * Rebased;
>   * Renamed port_max to lane_max (Lucas' comment).
>
>Please review.

All patches are reviewed. I looked to the CI results and none of the
regressions seem related.

Pushed. Thanks

Lucas De Marchi
