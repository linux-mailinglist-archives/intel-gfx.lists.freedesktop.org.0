Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4958868E0D5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 20:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31F510E191;
	Tue,  7 Feb 2023 19:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DA810E191
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 19:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675796665; x=1707332665;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7R14I2OnxcJ2Z76nzRVIIwDimq0L1KOvKopaYVPG76I=;
 b=WQVAqOveYuPnQ7F/YK2F36qEwiwhO4LlqEhk6ebyUR5AHoltCVXUA3L/
 IxHLqpk3BnnY9BItfel4X2aCgkk8sooMxVWWrvsjfpMt8mdAEYnvqQsMN
 wYru0KdxKLKWKXXcuSMsaV0utjdi6uNRY3yUIE8ZqmPPeoUwOK5J7adKQ
 laq3tw1kcxJhmxwDedcdsyMAl24NmuhyZpp+h/29oGqCLp9SwLezT9P4q
 S7A7lS3Z5IULbwQkuKTuy7o5YkBDXafQfNr2tfoFQzFZJ2oRQdieofQM+
 2ZxXcsq4FMdaXPUow6Rjn5NLDfab2GsAjciwc7W7UhU+NtDRF6DiAkbWU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="329619648"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="329619648"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 11:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697392641"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="697392641"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 07 Feb 2023 11:03:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:03:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:03:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 11:03:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 11:03:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JNRmLhB6TYlguYTIzRpBK1NjSsegODMsh4rHSpmbjH7Sytog0VDlapCcP2UaV+8nSSxHwRgkI7E726Szvx94WYT6krC8c7SlqpGN1/FnVanoWXgipsfpvcOuyXj/WAENpgrPktYkRrwRJjy32R1IYmkLWyHyop9TTtGKTTtNeZKBhh76Fjjd5+EUzgD2b//mcyWjjIB6MM9fYmZqB+VaaJgZqtnuUISYFBAfybGma/q4RXG0nh2TgSdUkki2Unn3H9uBFIOi5MEAR4669zkEQkhBRgLxV/dTV8AbxQPor97j08h+nWecCwGTIfk6j2vePuk1zuX6pvVQjZg6quW4uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i2/jTuWaTYs0R8zQ68oPU02HDeGcR53m2s0LFDJjAwQ=;
 b=EPe0CJtMsXUmkrSwhxYgpJE59qHFh1gTze5FBMwkztCLQh36OIx39U7GeoNrFgG/VkNy8br8ABA7PPnuF6WNWdvv48Y/fyx8hRtfqX0eJhJWUsU+uM+he0iT5L9KSki6c/6g3pva7Ba0Ibmi6hW7752JEBoQDtkoP5ZjxStQm691PWSjfkr8oz5bJ2KDx1jkOekk6WIK9l8JTql/GCI2DM25mrwthkQgxdHHCq0RXzvlki3YW8WAbIqEL/uJyJHdNMwCp4BJOLezcPlQrk/waCzf7yNtctDGqcFdlOfHi7PMjK6PcbEaXWC5RY3Vql5NwIt3RfJeXZQOP24JiXnOQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA3PR11MB8045.namprd11.prod.outlook.com (2603:10b6:806:2fa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 19:03:46 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 19:03:46 +0000
Date: Tue, 7 Feb 2023 11:03:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+Kgj6vz9P+WDMRQ@mdroper-desk1.amr.corp.intel.com>
References: <20230207124026.2105442-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230207124026.2105442-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0112.namprd05.prod.outlook.com
 (2603:10b6:a03:334::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA3PR11MB8045:EE_
X-MS-Office365-Filtering-Correlation-Id: 253748f9-7e9e-4940-a507-08db093e09da
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 31cLQVTVDWqI3UJh2rvWwSW2PtyGbq+QPJI6Zra7A7xcG3PnW6CeK7QieL/GDLdVi3NaUUc3KJkCW4gJDDzNZbZhf6Bwo5sk/VnSythLf1BF4veKshb1FCtQ+JVNCMvdox3JTAGjUbmoIsCW+awiHDelIMdX0p146VbPUfCEq8NMY/FWBt0xHmxySK441iQmrkTuRWOSWDaRBQAW06dOaFGZtgWsEqwIROaWtw5FVoFuhNU8CE2D+Tfn6+2IsJn7Iqf+JDh132g8OuA4u10bBAuf7zVMKbG6PQ+airJof9jv7lcZbjXNICEP7ioh5kQJOK+1/XFP/J+QDO81DEqA/vr3lsbD0Gk4tuvX8/dPU8WZh2ulXOU1iko085qTkeGPGzxB5BKBxikaULUaEv2X4Y/ci45fbE/Ehrq6oZKf9TtcwCmTayTszEEv8xMdIonEQL+lxMCXq1w113RTHK3+YgQnSdlP4AT20K5QVolOBjmfAmn/oQtw58jKa9jGvD6186hlZJ0ihBotbOj/upyrbRfufk5GxsD2aVydw+O0ANOELG9oQtC8z/bPhrZtRzA2uJRu6YwNjl+DGM60O1B6ER/i/ttAGopMgDHzn3+Bthv6+9WMVMhBMYQfqOJSnT0LVCF3IjyAtg1ZmatZL7Vb1Kwt6DmWsxzpTKMnANc9bisRGaj3Z8azYNn7RsqE6zpH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(366004)(396003)(136003)(376002)(451199018)(5660300002)(8676002)(2906002)(83380400001)(316002)(6636002)(186003)(6486002)(478600001)(6666004)(26005)(6506007)(6512007)(66476007)(38100700002)(82960400001)(4326008)(66946007)(66556008)(86362001)(8936002)(41300700001)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GDs8qGdb2HRgs8vR775ie7ZdLQlzCzoe6pYufqZz1+SEX1vYI9TZ7pX3TyOn?=
 =?us-ascii?Q?RPaA/oXFUs1CHcHTBrfEs8OtaKp9OBIntES7pqoLpUuukpYPd1hdXC5ff0hY?=
 =?us-ascii?Q?innx7yoZ6P24P7NXB0LB3m2RUesD5MTP0rd8NU+aZONnW0GotRegPNRcYq8z?=
 =?us-ascii?Q?cHt6R0IBe7lqezT6Fs8UZ5LOc55ght8gA2tmakWsyCHf/A+6Xiil19gLYtzS?=
 =?us-ascii?Q?Y3iJfr571nZAqay05woJUOhHx2hHmMbhJTacLkGUz8auBBZj12L7s7jPzyU0?=
 =?us-ascii?Q?LOwNU7Ykchnv2QSCbPNWOtyho/mdOesIhYn0IdZ7ex6EWFkFbwGnNg+H0MJG?=
 =?us-ascii?Q?hGQPe2VcMp8mtVoX15kQgkK9TUBctdTfJucxRgeP5oay0+5olJnVj1P1ljH4?=
 =?us-ascii?Q?GfD0UsgY9HZEAEU9BKaLdAKigvr5CGZSIg54lsJgreqxS/ZDbe7L00/wz0uC?=
 =?us-ascii?Q?cQ9cAKcCr9DCQjR3nCUiXOTnQdAL1zpx8mzJ5a8XmuAMTe2wFY0FfPT26a8l?=
 =?us-ascii?Q?bSIANKILxju1SvogjxnQj24PGy0YmKFGwtXuctXAuCGx0DOAonoRE4AVuYwk?=
 =?us-ascii?Q?4yc0lsOQ9wpv00T58wU5VkMFleqN/1SYa+/ravqM5CvCf8/khRErXXpL/mEG?=
 =?us-ascii?Q?d0+tL88Ju9nUpqCpiuAb7gm7PYNKKSi+66oslrXFxv3zYZZKpZ2L0rKCdetq?=
 =?us-ascii?Q?Ij3ggQi7Ty5XWtJ10lME1yDRX6I4iuULSFFypBl80g+aS40PKNtMBDU6Jz/c?=
 =?us-ascii?Q?w9cnJj+Cnhruqwzmfw2vgnk3Ul8hIfCKpo1t1Eypx6X772QB5wlKkSJf3ak2?=
 =?us-ascii?Q?Lszw1E6wA4OggOxSBaajW1t2acizy8ziLjdoC6rnuCmD8lFPKmuY3kSGOkUT?=
 =?us-ascii?Q?XwDn5QR7mo/We6V9o4HGKBMQBHkX5zwHg6Q+mAWdsiAlltb61TlL2y2Db++4?=
 =?us-ascii?Q?vjVOysiG+ebQ3a72EYXaFZOwtt6yW1shwDQO8j+L618TnYBo94L59zPiqOzz?=
 =?us-ascii?Q?FMYY+MYWS49b503ulVdXTOel3+fypJL4k5kLDEftYH6Vk+HezWkh1/9llXcG?=
 =?us-ascii?Q?ocDh9ra6afATxGoGn4rr5JbGoHNsLbw+5fBADjOg+KuyshEpKuYbHcnefruU?=
 =?us-ascii?Q?t2QjJK8futCD5ISmk3bpMOf6Nf4IcJ1mzgsfbLISOi+4PIfoUU9b6nsDJCX/?=
 =?us-ascii?Q?88uqGKH1lbX5+RtcT46pC8FMu+zygs4Pc2WVRSlIjo+HEoEkGtmA6zXXIqte?=
 =?us-ascii?Q?ZrvtGxcSdzaXV5NyrFnVEst81vExCae2jTcnpU53WUDLEuzm/0I9SGSsl+s2?=
 =?us-ascii?Q?KFj2PH7OSb8myLVBffTp55sAy1DkK0XnEknLSfMOzRwoXc6VHTFRrCx1Kcz9?=
 =?us-ascii?Q?XmWd/2fvi342IzuCyORa7t8ZBMqjboLty+HK3F3Ct9j7v5Zh0ofNyJdaX2qO?=
 =?us-ascii?Q?IKpSM1ZFk7iH7rz/EqLZaBuR0I4EAlkOQqVdKpP9sR3Pv/iTXNNtVbRHRa3D?=
 =?us-ascii?Q?4sWeG4WOQpT71HiYJlvHIMb6iP20ZWf4KtiV2tlqIBnamyriFADQnYmUOpKc?=
 =?us-ascii?Q?/H7vr9N4Z5lDdTdrLYs2noEY8/331mOj4OR42ddYyqfmTaXj3y0FhMQlFqjp?=
 =?us-ascii?Q?AQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 253748f9-7e9e-4940-a507-08db093e09da
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 19:03:46.3503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IoyINBSBMPj6Yr2urBRuoYxqIHGdwy2SWjIQXB+FwKYIpLY2JjwRbneXFR4Y/iMyIwjfzhCga66TCzGvAU5pddYMm2LfusmAUHRaeElGIx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8045
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: add sparse lock annotation
 to avoid warnings
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

On Tue, Feb 07, 2023 at 02:40:23PM +0200, Jani Nikula wrote:
> Annotate intel_gt_mcr_lock() and intel_gt_mcr_unlock() to fix sparse
> warnings:
> 
> drivers/gpu/drm/i915/gt/intel_gt_mcr.c:397:9: warning: context imbalance in 'intel_gt_mcr_lock' - wrong count at exit
> drivers/gpu/drm/i915/gt/intel_gt_mcr.c:412:6: warning: context imbalance in 'intel_gt_mcr_unlock' - unexpected unlock
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 169393a7ad88..a4a8b8bc5737 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -364,6 +364,7 @@ static u32 rw_with_mcr_steering(struct intel_gt *gt,
>   *          function call.
>   */
>  void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
> +	__acquires(&gt->mcr_lock)

Are these annotations supposed to take the lock itself or a pointer to
the lock as you're doing here?  Or does it matter?  It seems like
there's a mix of both forms elsewhere in the kernel and sparse.rst
doesn't really specify which is expected.

Assuming it's correct to provide a pointer to the lock in the
annotation,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  {
>  	unsigned long __flags;
>  	int err = 0;
> @@ -410,6 +411,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
>   * Context: Releases gt->mcr_lock
>   */
>  void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
> +	__releases(&gt->mcr_lock)
>  {
>  	spin_unlock_irqrestore(&gt->mcr_lock, flags);
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
