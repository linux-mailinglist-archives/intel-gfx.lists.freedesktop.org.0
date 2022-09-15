Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6E25B95F3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 10:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAAB310E162;
	Thu, 15 Sep 2022 08:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F4310EAB4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 08:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663229396; x=1694765396;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cGtybcat7o1uCX7krgtbpwqTkyiZcr6ZOmwJ+9O49CQ=;
 b=VJSRnIyN1Ic2aBK9Ds4Sg0L4pSiG3IILPbz1zNzW0TqK9v+9SmFXmBan
 +7SFUTS5eQ1tRtApjeWWCAi2vC6iG6JJ0E6/nai1Qx1IgbObkHPKaoe90
 J/nlUPMiNTafcsYLTAmc7DmQ2U/sPL2peXC1DHEUTQmBSFcahQbIBlGjp
 R1lXAujM7AuevH03tAe/5fGQJYZPwDdh246J0Z5lOrTjpDoml92gDQ24V
 DkUmIAgdiSK32ahURDedI2EgZAr4MwL7913m7AVgYtbr7Xgvdt2c7bvY8
 EZmH4rLc1b/i8hf799E6BPJnimBAmUYxZNJScUR48d1lOsYnvXrQW9y2t w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="297375137"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="297375137"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 01:09:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="679408268"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2022 01:09:56 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 01:09:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 01:09:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 01:09:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 01:09:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpX5heyeIyV0c3/oQr7GczXITC2Ph7ddmL1zncHjI8JYrg5sctAKEda4+9f1BYkpK6//obTIZX/RLBcOmgQcXb5WH/URWnF+sP0nCpsK/ySoRlPZZc0KryF3wtOCwuP02WqnYyG0AjIvrY0gUm9PpqHnHNtEO6HPoTKWOPEEh8T1Bim+oXf5QRteLC1IlrfJr5vUqpR7RmUJqgi7wnuiQysy/Y6sxlSQRHLO3HsIGSAgSHvkJRQiMmzphl5NYNEp5+D52Su6u9aWBaIJTno3dZPQ+icn+lqawGQl7fclwCfdRuj0ZW80/x5tXwrdmbHzRr6fx32FEfascdBO6QIxEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5Fp1j8BYrvFNmJFmWUoKLDSrtoGag9F9ScC7XyPez4=;
 b=WI2SMIpcS3GypP8ixgSceXQy33wS+cuAz0C25a0998luBs/9TA4mVLSKQev3spHgQaJIDLzmL7EJsqTW5cKBl5vqCg42vwc+if9kPJ7mDS6llTi45fn8UDsTx487AKgjcuvAH7HRVPrEvcHf1W8a+iQw9q9D8KDuqCnm4hY/NUjsprB2l4kO+isJ1FJaYePU75pmFYjBcfSyFcKF1Uez+CpufvtO6DzbKwPv1nBMgTyQnirev3PkZosS3pBMORB+Egyav6oxlK5UJThjwYOLXuUzwx1ZFc9EOw/cWAcb+K4ArHLh0o2QByOJoxdtMAy5Zx1UOF6WUgJh06wdIGutxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6428.namprd11.prod.outlook.com (2603:10b6:510:1f4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 08:09:48 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 08:09:48 +0000
Date: Thu, 15 Sep 2022 01:09:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220915080946.fipzdukq4ib2efdk@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220914203545.4057637-1-lucas.demarchi@intel.com>
 <500be188-d8e0-2bc6-4f54-13a8784c0321@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <500be188-d8e0-2bc6-4f54-13a8784c0321@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0016.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6428:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e5e9328-b87c-409f-5de3-08da96f1a853
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k6yTzHYyhTgWe3uCFvFsnhaS8YhMOhOUpXqn0bKfI7tV+TWQbqrE9FqmmOEq2rIHg/7XToODMJJIRrfduUCSXCoTuagqqxNoM6zR707QSXlH+CAofePkFXP2dXX0GYFZYMVFAMEgUES3mC40ieauLCTO7BS0FpI9LrAxLAkyLxhfzX3ASUYfSQGhk2c/u/4ti9NjA3w2W8WDGk5+hBxwIVytXthjlK6e3lYaVtOF9RolCZN+m+vTF/PhDBxTMIyEaLbysf7xFPaR2ey57FYC3VPAwBN8IhQ9J8Lnt7h4PtK1S5wqjzN+IWD32SjkA+Si5Oq0JDVBmoFFifsnYHIz/JdYbWkQIjGzpib1LUdlyW/xRoQoGquIT3nOemkW/74+BJhYdwZDx14TKwgxiLskJDOkexE6tvBxb8QXTQ2C7Ke8m+2QPHbUqUFke3WpnLMqmWk6zlMIO1u767qrA7MvpWHpAWlhqbWQ3rJAv8lu4Zqem/y9pi7L/n1pw9eeCfpGIKv7ayHvrW5drqN7hzXPk0yuZABkG7GMMdsGz+Wdmkl/KslNC7eU1W6PhHiO7CYxQ9fwSX1H0Q9rsrcBAGeJpA9rH2TVX1WEFCecES//Q0sM2jIxKx5En7+pWbwpN1rq4Pq0AJK4m2mU5IXm33QQCxqu/l7etrl5DHoKpeJ0cU+0pccYhSe11bK1DCqbTLh+amRF3te5G20QYp4oozoR9Zz4+G9mWGNSnSz6O2/Rzsw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(396003)(376002)(346002)(451199015)(6512007)(9686003)(6506007)(41300700001)(966005)(26005)(36756003)(66556008)(6916009)(4326008)(38100700002)(66476007)(66946007)(8936002)(86362001)(478600001)(82960400001)(316002)(6486002)(186003)(1076003)(83380400001)(8676002)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XMMEKsAmAREVHVhLx5orUorIGTowPRbooeBmP9BN2zUf7GcojdD1Wgjtjh+B?=
 =?us-ascii?Q?uQYdf6RBEkP9izPstgcUcnFk6BhHFsFBZnCmHqBGv1uNZNmlbtZhJ6MLJJHk?=
 =?us-ascii?Q?Lsi0b7C8HP/Ntf5q7wyTRAuP8xbth9E+gRTeTgRfQGqs6Ku0GUJyAr13sKU4?=
 =?us-ascii?Q?iCNtHwHb10o8X1mfZdfv1PxdGD45s0rr2yW6XuqKMIaMRDgzCFlp9jCnSTBb?=
 =?us-ascii?Q?XsuYs16lPSH6xPVhxWvv6wNZGmuOEJyN5nH3MKShPjfl2dmjjFScgX6TS4DL?=
 =?us-ascii?Q?aWOoR2KxQpTeMhoWLWnqteIoQR7TiWJpdCOS4WLpwjJL2WpvYTh2Ko8upEY+?=
 =?us-ascii?Q?D9Scp90gq9XXU+Uwhwtfkg5OPxb/+cgxnXYoKC5SIKTm2n5UvteJF+3AvDYy?=
 =?us-ascii?Q?yb5GJRGtTpOGuWqHGHC16z0+xph2HhmEI4IiYwP90rr4oEApq/0dw/XhpwHE?=
 =?us-ascii?Q?lTMPBQ+EbKgI7ROBas0MfgCfHMekpo1Yj18UzpgVY0T1APS45DaBtyjUiNx+?=
 =?us-ascii?Q?cBPzGTTUHJWHMuz7nCVFTwDXWnUYTM/0GUfEkRbCPoWGOpd4MaBeb+euD3me?=
 =?us-ascii?Q?N7AiINITu90p0vZ2ZY4kdcVsPFYQJlDdoNoOSIVdUTTCwkf46rrjDJQeo6p+?=
 =?us-ascii?Q?nNjnmotte6RoxLuH8TZ8fAFJseXwZ9OanDPahTb5UQPyqpw2woiv7xoTrK4W?=
 =?us-ascii?Q?A2owjW2fLh0ISJKCrflnTBbHTngTgXliRXqo52Xpp8lo29mt89GYik8eoKY6?=
 =?us-ascii?Q?DKsYekTmmknsEeb1rucxG0aeqzpwbrQn3JMjL1obBWHFjT2g+7Br3GBvACY6?=
 =?us-ascii?Q?5G6a6GR62R6o8wDzTq2Vq9oHt/AnyJtqsNfKXLLQI6DznsMrDZ6Rgls8iarO?=
 =?us-ascii?Q?o6bBBR8sfsn6Kv4OGamo2Mx9Fgbd1DdGNKOkorGu6UGoiAe7iFx8TI1Ya5uR?=
 =?us-ascii?Q?L53amu+MnNftCMZbsT/LITKh+nVR8XxafLDsoufKkls/iwd0frC+cZmTb1ma?=
 =?us-ascii?Q?CT6QkLBhi2xOvhtwipLFD6Ft5uBHREoQQ/GKifJU6egBjuzPXatKIWlFfAiH?=
 =?us-ascii?Q?4JR+2/oCgSQq+BXE3DZYqvcktpGFpZW/3p7BwKiHtBfN5fXy9uVP4kSed1Fw?=
 =?us-ascii?Q?f4mmJADEelYPc8dO5AIXuorcKg+pTRQq80i59yk7uUnv9m4QcI2H4YCJI8gu?=
 =?us-ascii?Q?i3ZiGrDOtxa8nBRxP9OZK7oAa5LlzyrCQUuq1JCP3s2EzIim8SBUkNDFFv+S?=
 =?us-ascii?Q?2Mt0m5kM/7sPpnviXtKDUvffVuUL8QthaxoNKF5wmdwAtYLrOJrZtMAt8+rh?=
 =?us-ascii?Q?07BOgR2jJEQIk3EpPEa04CeXfE+r363/unF8UrbYsso/qwDWCzbsHp/rNGi+?=
 =?us-ascii?Q?KmvH+HamnZIB+OZDBe81icJHsw+kj83fwLhZPwYKwBxfb3TluIHKYmmsxMd1?=
 =?us-ascii?Q?tkyeF4fJKRwmujga9nzdWwBCyD2guRHdF3FjVV6jl/23BtgrM34HFvdJUAJ1?=
 =?us-ascii?Q?DraKqKJjRq/doglgSEe7mOCPqUDcw1pEcu1HOJEgEElRg8JGelXd/zMY0585?=
 =?us-ascii?Q?sbRQ9XynpaujtsDXyD3LwnpPiEfLpnJ2A/ZchfDunCEqdubW0vLbMDtXYtWV?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e5e9328-b87c-409f-5de3-08da96f1a853
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 08:09:48.3181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FqNCwH3rIOwL8Q197Hjq+4xSEun9JPwNqZVKO7WHbkiTDN/dbNFX6vnFO1BxeJiuGgffnFlPgbTm5EtbDsnnYrDw4hQI6Wz1czs9/I9oFR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6428
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "HAX iommu/intel: Ignore igfx_off"
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 15, 2022 at 08:53:16AM +0100, Tvrtko Ursulin wrote:
>
>On 14/09/2022 21:35, Lucas De Marchi wrote:
>>This reverts commit 58f44e349cfc10a4f2208fd806829c8fd046480b.
>>
>>To be removed from the topic/core-for-CI branch. If CI's config is
>>setting that, it just shouldn't do it. Looking at a random current CI
>>execution, the command line is:
>>
>>Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 \
>>	rootwait fsck.repair=yes nmi_watchdog=panic,auto panic=5 \
>>	softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M trace_clock=global 3 \
>>	modprobe.blacklist=i915,snd_hda_intel ro
>>
>>So it should be safe to remove this commit.
>
>It's a patch which can silently bite so no complaints from me to 
>remove it - just please upgrade the check from a "random current CI 
>execution" to something stronger. Ack from CI folks would do.

Well in the commit message I mentioned "To be removed from the
topic/core-for-CI branch". This is how the topic/core-for-CI branch is handled
until now. We simply remove the commit and force push.  So there won't be any
trace of commit messages for me to write anything stronger.

To be at least registered in the mailing list what I used (no it was not this,
but linking to the execution for this specific patch serves the purpose):

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108575v1/bat-dg2-8/boot0.txt

<5>[    0.000000] Linux version 6.0.0-rc5-Patchwork_108575v1-g37b0cd34584f+ (kbuild@ci-worker1.fi.intel.com) (gcc (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0, GNU ld (GNU Binutils for Ubuntu) 2.30) #1 SMP PREEMPT_DYNAMIC Wed Sep 14 23:50:09 EEST 2022
<6>[    0.000000] Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 rootwait fsck.repair=yes nmi_watchdog=panic,auto panic=5 softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M trace_clock=global 3 modprobe.blacklist=i915,snd_hda_intel ro


Petri already acked this from the CI side via IRC today.


thanks
Lucas De Marchi
