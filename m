Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2884375D282
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 21:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05BD10E6F1;
	Fri, 21 Jul 2023 19:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8592510E6EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 19:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689966021; x=1721502021;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aYY3yGtdN9ifrtVXpP7kkI2S0d2Syx3e8AKu5gmWkdE=;
 b=fJSUWnOfqnm74lWZlJcpPoEozVdOJU5ipOy986u6hMOk7dOCYWOlfODP
 h7Ibafbn2qFHa0fss2ClOkmWFlsr6Xxk5VyYhbIbHbWYkdcqh8W67ajh9
 rGul5P/CuXMgulG2mzj61vMcv/kYYbxLoKk7sJqC0BRt1xu7TTblqla1m
 QaQHcrU7gIykqNK2uaJx4xiB0wKutk1f6LWJmAafI6pXW6ApEFKuZN9ep
 m6R7L1wJZUbZOz+CT5kWcyKRvWsZ5DMl4+JgAONMdbYEJehyJ7gDJ8fnZ
 G6bYi00LCuM9PCrCULeApsDviTeEcq8HBrvlm8vnoDAfxis8A/PJ74eJW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="430888124"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="430888124"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 12:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="795058725"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="795058725"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jul 2023 12:00:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 12:00:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 12:00:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 12:00:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 12:00:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fzey8dp+7ehEHTKEQVIcXcEJX+PwrDkVBQyIGoSWwrMZqnGaPl7E/yKkcXGcQI8jlrpe6S0xprlDLCxnKTb1+XAaFsIvOQVrxf1HpK2sTV0fIhHg5tP2MmqsF0hqpeP504Mjj+/GRRYO1YPXCIsfnZTjnxNe5Kk9cN7t/07WgV+xxsrUJho+fjwc/upIQ9oLcXJU1M01Chc7IZ5ReL7KoxQwgs8mK4DON2LW2pGUc3jcZBPTLQIv/C1emGF7z5zJYwxn3szxgQvtOoMJHcLw5JQ4Y9V1MZrOWP/Xh68vunsucoef5w1hWb8N9lkMmgh1VUGvBllz3V+o3ZsZg+UViQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TmgNbCXXuCPQ5KqRkMvyiElspVxpc85tG2MPaC1XqW0=;
 b=jBnQHchpPEMyq4Zzpy8EGnsDsc8UYrgFwWWLkbuhPOEOwx1eKJoZ8NAxxu+IkOnHfPd654B+qdW9pR+wrhZY9xxGLjmvcncV9mLeldRN0w/k0Dq6fbIUX7jNnAJyjkMW2b86tcIwns0DCr0K8ldMOUS97owAVMAkdPDcLxB20mJyDf//3wpeeeNQ4FXbRbtEymSJN7hK1oEOSXrzfXdkwTILE3rprV6u/1ZkVUUJ8vgnrFledZftimX6ndRhqysH+jdSpV1612w8oFPByRNH5vXVLRExvkDLtmJ7tMnkHlwbEC+EcGdjJjQ7PtPn95T55kdd38SbwU8yQGoU7rKx6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Fri, 21 Jul
 2023 19:00:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.024; Fri, 21 Jul 2023
 19:00:17 +0000
Date: Fri, 21 Jul 2023 15:00:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <ZLrVvWOoU1BvpBsX@intel.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <CY5PR11MB6211C557FCF7EF65F3CFD64E953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6211C557FCF7EF65F3CFD64E953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0193.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6950:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ee30810-e730-4e14-0f0b-08db8a1cb8e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IPI/nuKrBw71ErgWBDlgjZWDx4Qetfceem+iVtPW85W6ghoO+d7NnEwdFlREcr14bRTTxznPwbvekCR0z12oYTPVx2k6OV5ev4/xKuljA9VKCUno59vrdQh9s8AV/IEI7QrUm0TUSuZmoU4TI0T8Ans1jbE0a98zjQSF3UbjJwc0V4RrX3p3ZfWjwYUBjUhDZvqgnCSTotBMAB+ebIiCEsJE8C2Fb1lIT6xqGHo6TOrtVZKa+dcK9Uz4dPmLLtMHTf6OAWXUIIbVj64HaYwKLts7J6TJsIAzkB9OKDz+66Vs8xItFQ6y43HkddfWzzvFTnraL2arLLUaGSQaXaWLai+YxFf3vB3LB0PEiMKB9HTU1nPlgOEJ5qRpZAeO5HFSenrmU7PS0EPQ951WtXidnEXWZJVBcY3lFlw/pSo3SDZxE+6878vlmrJ0vHU6D1gZRhd8j5ksX0J7YwtoWZ9JaO5mEBfpDlWEQWJIIgWRmhH0CgsHOYEbIDrAosXlFCCOaSNJ1whv3SpGiuzlFdpp+u6541dIXKDo6q7Js/8Byufxt2VroFHJH07tarSSlrX6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(39860400002)(396003)(376002)(346002)(451199021)(5660300002)(8936002)(41300700001)(2616005)(26005)(83380400001)(53546011)(6862004)(8676002)(6506007)(186003)(6636002)(4326008)(316002)(66476007)(66946007)(66556008)(86362001)(6512007)(6666004)(38100700002)(6486002)(36756003)(82960400001)(37006003)(44832011)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hqdOiAP6n2wOE8j+2vx6AHpEx28DslinH3EWem7A25x+scrLVYhmemRSXbDB?=
 =?us-ascii?Q?/8s3j3YL/s7imfK+5DbKP7AaGPJzFR0vfyNE+tCMMQ3bj6AsUevdufdXmTaG?=
 =?us-ascii?Q?e54zP2UNmT4Kt6vh1lRLzXuMnAIiO5Rx0fTQCFJ0qaav7cf+dnsVJqUzl5OW?=
 =?us-ascii?Q?tc0j6e4w0y+RZlhOOeLp1aTnfrixSLiyelTq1k7UWdtIwOWmth4MzpEAVGzz?=
 =?us-ascii?Q?ROv79YxBVCibO4QpMANIZgW78w7wn6QscBdnED5e6pbTomoOO9bz2KVFtjHn?=
 =?us-ascii?Q?vT4YHgU6iWT+zgAR81TFs3yA9Vu12peIhnXNlWO+Z/JqfNE3Va9eGCfadwGN?=
 =?us-ascii?Q?vcAoFmhNeGIB9UTsquKZDDW+3ViNXMtynYkSPFcwyxXrU3C4tPMXfe3YRFjn?=
 =?us-ascii?Q?1KpdKUQnQ5KVCXzpfWgZU2gYpgPMSAdwMJGyOVojVc8hVRzdLNg1XkxclD5h?=
 =?us-ascii?Q?2AQ0NYzz5watdY+ii+fmmPXJJ18YVsvutXDO8m9JLdrOfmbjSPFA9D7dmeOS?=
 =?us-ascii?Q?LvLL3vsjnvZrAbr30RL+npmNgmXSdJ3S5biNDQr8QStlWonOf2zrB4thBuwB?=
 =?us-ascii?Q?Jif4lM3q+P60TE4kMm6nFY8uZSNKwJVcJlQy3TtqMfMuHXbRxQXvT+UDnye2?=
 =?us-ascii?Q?3GfXQc1Wuz9DouQsQHDcS57//59zo4FsJRpH8Yxcce31N+Cz2BBeS2nmSHxf?=
 =?us-ascii?Q?/9mN2IRrYKhPywiAnzL8f/oF+pIfcfz9uIAAPgt7O7VHNqidbChBO3PCx9W0?=
 =?us-ascii?Q?HhDsXcmFwTH7+KtNn8l/fCoFV3YM4l36Oxo4OImZrzSZBqeqrPXW+dxrU32Q?=
 =?us-ascii?Q?p7+HMsVewsWUhxakn1bITwkBtANQSmQnLFE5x2wS6pLAQ2Nygp33eMWDrBWg?=
 =?us-ascii?Q?nGZ2oSw7IJbIRcPhKlCKVeOhE2jkVCyxt/GYhKTZnU9ZCCAHRjKEA30UvLF5?=
 =?us-ascii?Q?KWvTbcUnrMfK68OIdSxZxi2qpcDQr1Obs0E/YcSAb+PDh7BKxPhF7ogkMz3b?=
 =?us-ascii?Q?tJnfdxkLupex+WdXqG2CkoqUAzh9UMU6Mqst3cQ2ZFRKpxkDo/FxixLPSl8s?=
 =?us-ascii?Q?MQ5B4d0gZQo0vVV54nG4L8lN1SN7oLX0p7lG6Ueb28b2Bb1ZRalG0PKkURAu?=
 =?us-ascii?Q?7JPXWpt2GsjZSdJxX/kpo2rRhnN90MtiXMZAowSo1AM8UgYJckFMxpwgGaka?=
 =?us-ascii?Q?ygSeDJ284HpjXSljsBGgyS1/ly9xmYZ17x7GiPmKoUkIo9iHy/tuka+RwxXI?=
 =?us-ascii?Q?A56LPAEH6RN+6OJZq87beeqV6VL0EG9yoYtNjQNBOBeP/t5fV2Zo6OlVcNGJ?=
 =?us-ascii?Q?mzDEJ1eskuw13Bbq3CKj+YJsdD0n9A20MaJbZNS+GBhSRXFqACnnNNYwPJnG?=
 =?us-ascii?Q?k/WYpufQxpyP4xpbmwpaffnZO4io4fO0XkBrW8fWCGC8kiy7hyvhRRumH7bs?=
 =?us-ascii?Q?KWFhfEg1HGaE7Q1j/zCLHkuIr+BLamQGsPoKIjNypKwJx1tZ/qw4Ba3me0W1?=
 =?us-ascii?Q?LLYU5BbgQoV6OoLaRvwCQsaVVdlnKwiYpmEGipUBl/jwWKlvM+UBfRKCojCk?=
 =?us-ascii?Q?bXpAi57DywPSlbOTeqrtPGRxDByRlDVSxLa2y9Ts/cUlU9KaNM1DLGeiB9m5?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee30810-e730-4e14-0f0b-08db8a1cb8e6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2023 19:00:17.0861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2h7hqZRqhWRWKaZNkOc/IeWj4Gta8/3KTj7p1oCQugy4bwTw4AnrcmP1iOwMD8LHEK2p6NSg1XhURfS9VO2wpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed
 when we are really allowing.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 21, 2023 at 03:39:35AM -0400, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Friday, July 21, 2023 2:34 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>
> > Subject: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
> > really allowing.
> > 
> > First of all it was strange to see:
> > if (allowed) {
> > ...
> > } else {
> >    D3COLD_ENABLE
> > }
> > 
> > But besides this misalignment, let's also use the pci d3cold_allowed useful to
> > us and know that we are not really allowing d3cold.
> > 
> > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_pci.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> > index 78df43c20cd2..0c4051f4f746 100644
> > --- a/drivers/gpu/drm/xe/xe_pci.c
> > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > @@ -794,6 +794,7 @@ static int xe_pci_runtime_suspend(struct device
> > *dev)
> >  	pci_save_state(pdev);
> > 
> >  	if (xe->d3cold.allowed) {
> > +		d3cold_toggle(pdev, D3COLD_ENABLE);
> >  		pci_disable_device(pdev);
> >  		pci_ignore_hotplug(pdev);
> >  		pci_set_power_state(pdev, PCI_D3cold); @@ -823,8 +824,6
> > @@ static int xe_pci_runtime_resume(struct device *dev)
> >  			return err;
> > 
> >  		pci_set_master(pdev);
> > -	} else {
> > -		d3cold_toggle(pdev, D3COLD_ENABLE);
> >  	}
> During s2idle , d3cold may get disabled if won't restore it's state in runtime resume.

I always forget about that case... please disregard this patch.

> Thanks,
> Anshuman Gupta.
> > 
> >  	return xe_pm_runtime_resume(xe);
> > --
> > 2.41.0
> 
