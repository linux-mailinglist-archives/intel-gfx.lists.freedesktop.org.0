Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C55807A7B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 22:33:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3D810E113;
	Wed,  6 Dec 2023 21:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FAD10E113
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 21:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701898383; x=1733434383;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3r8d823BMsC7mQ71m2nUudprcGoxhOrqWhkTc8l81pk=;
 b=Y7fv89iy4Wo/GXHAuc6oKTggYRoS1k1pq9nJhE9haIQKS+A/HMvZa6Gk
 rZQd+aZdQCwSuzqT0Nc4nN7vjlWaVoqi5Px/OJMOhtnWf80hTPPOhRDmu
 pz9To4KQccQaYF9uzcukk3+wftXuTfwGN81fc4mKDxMjeGkzv1juvyNwf
 m1cp4pPb/IXfkCUmTRd3mHwmcxw/XX3E+nDp8vGW713yIAVx9dfucglR6
 dszjFVWfVMc4+nOhZfdmw67Y6oqfGTRi3dzPvofaJ1bP1YOV/eyGOUipD
 SiAIDliCE2CrlIFhcP8ol2fPZRA9o8SYDp1cw1vs/ocIafMNsZVENofD0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="460619476"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="460619476"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 13:33:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="862232311"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="862232311"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 13:33:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 13:33:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 13:33:01 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 13:33:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKixj5od38g0pZYTjBf+VKWcApO64ts3+b2b3K1kNqwhvPBbIiMITwXLD/eNFkeDzVeKGQT4+cDg5GoCFdYbyUG69hgrjX663SHO8ISohv/iDdE6j0LmuCyXMstafxReU8GufTX+l/xB734+neExh+XZdzTihRror88nXbKzz6xvIWg8/pi0SiJBKR7a+HQxqMFp0apoNqQd7EDIhC6jFiCY2HWUl4VkJbNCg3uLoJGjcp8exu/0832Sl74Ic7UwrkkQnl8ZjgW/ItxC1jwFsN/5M4JMpCOYjWM8i47BvZvABBJedLT0tRTBQ+YlXoZjZQ9j+Jx8JGCVw2PB08qgsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISiP2mH57n0A1qQxXrRmryjiEgoSuM949su6Mi1rsoU=;
 b=J+4R0fhCtwxxgPrKXZac6z3LeoTtGNDtOj3o4g3QPsN0iamBfO0omUgns/puoI8DmG7sGK4vf6oRmnefLQHq3FgpzJkAVi2CYLW8JXqTSzRqeBRDc683RYy02r2kIsFpzaB1RIH9W8EPDcjR+gT1tLxA1XExuFDiTJd7JS7dWeFKSmTi5o8SOo0MeV44JuXJQHArqM6Li3Jomx7YdnDYJyg3Ce/FGSOL6m5wvihlIERlIcXrrRwG22lTJAvgwUgOHmBjufg4WLdSAv539cPRH+2ZJHMaa6JUhNzEj25yBEnEHNtyk4iZzGS8jYxxCfqJ0yJ/8talaSgrEeXlfQ7+hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Wed, 6 Dec
 2023 21:32:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b%4]) with mapi id 15.20.7046.033; Wed, 6 Dec 2023
 21:32:59 +0000
Date: Wed, 6 Dec 2023 15:32:49 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
Message-ID: <rz2glyjelocov2rfr2hlwvdbxuvyqkl2tq4tvw3vlyj3seveet@xtxrlz6ctknh>
References: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
 <IA1PR11MB6347715548B24D15FA74549BF484A@IA1PR11MB6347.namprd11.prod.outlook.com>
 <DM8PR11MB5655D32D19885F66F8F232EDE084A@DM8PR11MB5655.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <DM8PR11MB5655D32D19885F66F8F232EDE084A@DM8PR11MB5655.namprd11.prod.outlook.com>
X-ClientProxiedBy: ROAP284CA0276.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:10:f2::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: c46307cd-d2ca-46b5-f119-08dbf6a2eafc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PZM/J/p5/dv8mht1+NoV4IHh2n5i8FZ0IkHSiKfdrV36OA6hkpglm5j/bBKeBZw/zLT+o8aDOn6hG8LuD7Y6Rm3sqAHHmGZj6XzT/Lv7RaxICzkpNnFvhdFCmkMSItZOClZRmi+YTCR7CyefPfq/CWfjcn6ewkLrKQzjjNeRLHghjxfk025wbDMWEnefAmtPlfov5+4z7DTZF9osp77Ywdz3mLfwX3//xk5VGQfIJ1/qmFoOidZf1THBBNFkwuzex4iI6SWZmGwxljJYZ0qn/9hseb+biueULMFseCAAj4AkeJ06zJpm8uZdM0oqc7dQTEVvgGoXFyEqnnBaPICzYOMWo2KP4yCrk2ETiemycxWMj0B2QXNl6oJM7mW9zoG4Kh5busF0T1LrYI5k6HNLm2AV79hqXjbz5UZ1iP/Vzgp+qCmcHsYRnNLHILcllyq8Eogb0nru5h/Fplx8+C8VqH4oLDC0QqpzzvscsF1ihgHXSihrAcOxF8YfeEe68raPE6J+cLB2csIuthpiHIJaLJvedzk6Ox95xTQhyePHPyJplJj3ZuOfw1VPnNztDzP1TqinCVw2/GoMCTcG7SefAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(396003)(346002)(366004)(376002)(136003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(2906002)(5660300002)(41300700001)(86362001)(6862004)(4326008)(8676002)(8936002)(316002)(6636002)(54906003)(66476007)(66556008)(66946007)(33716001)(38100700002)(82960400001)(6486002)(966005)(478600001)(107886003)(83380400001)(6666004)(6506007)(53546011)(26005)(9686003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yTC0O7z/AYMBJvoqJ4nSKbjUWs+6g2fQWxS39bL9j1wj8tignr0oH4h1whI0?=
 =?us-ascii?Q?GBVhZaqd5WT0NGm2PR8lC4XFOHPpdYhL7fT47cocFdatxGQaRn3Sy89iOKs+?=
 =?us-ascii?Q?HWy1jDIpp7qZSOgI6L6e1orsiIy2aia/C5tL7krZrjUadlb8jWuzZX1KoH+N?=
 =?us-ascii?Q?Sy1YlEfzJ5yqpaLKy/44OqMO/pxClkm50Bj1Hi2lUxFPEuHkphyfB5zRv0ve?=
 =?us-ascii?Q?X/3zH8jbccw8Ktx538WjOu9USAGStZwTEIyEH7CEA5+6jwM9ZU5b07SXuo8v?=
 =?us-ascii?Q?SZdrshXeyEWFYFMc7/MW3BZSdc07wL8KAu9RLVR7ckO3a72Stqj5/TsS1mMu?=
 =?us-ascii?Q?LXPalqf0t3x69nIX7//GaKH0SBmMFk47jP5v4c51ADWR8xxmrDeKx5sNV0EP?=
 =?us-ascii?Q?iKOrXmspmunEjKnlCrRbC225osj3KlBnvOtpO6dfp/uCGICJth4weticPF+H?=
 =?us-ascii?Q?1m7ssEN579WOi9guqcn1E7KdW7HQc7VTd3VQIY7HgNqMnMKxmcagitx1xZQb?=
 =?us-ascii?Q?FDLkkXQNIneyqQysrqLindorGrrasETFC84Qp4f9z+B7oJ6RuRNccOrPIrwm?=
 =?us-ascii?Q?XcDP+F/Q6yPzpjt63j0O3/7pa2G8WDZPrhzQHKPZvq8zrJgGe3J3XN46xoD5?=
 =?us-ascii?Q?6Q4t0YOM1d2V0DSaTpHUzu1D31PjiuvAKYhL2iBPqHhgME7ombW2LwZSMHJF?=
 =?us-ascii?Q?CdM/EIUFMd703/nr2Ug0lkFLhYCl1AiFMSTcvL8h+XTDALPExQ8VeiikQ0ku?=
 =?us-ascii?Q?kzhBVbirF86kFgwAp7HdjRsBN/bPnoCCwocvcS3hEU2JjzUu9tOdacMjPkt7?=
 =?us-ascii?Q?0WsTg/o/wLVcryLVC8Il2BAVY15ew7FksZQurweC59li2PdcbIYA99X/BB4r?=
 =?us-ascii?Q?L4Uy82D5WyVvvhnkcdlFerUJ/HuWRspvnUEfe9YN6rzK8OzaJ/QZXcQAgOTe?=
 =?us-ascii?Q?/RmPgGFbdFObMWH5qyY1rLKQ330qhQw4+lKlaoZseYL6AzjBwfxRUXi/Ba42?=
 =?us-ascii?Q?+C2gqiIwhe/Jqo6Ihy1JB5lOqmWRgMt/x8OfSgitsRsX74K7DmfdYcSB2gYS?=
 =?us-ascii?Q?x3D2D9rE5g3YqS+Nl1heLf9m0mMkP8vcTRkvxuTauEFHlFRvaE92wyboDsFU?=
 =?us-ascii?Q?EakUrgVv2Evzio78M7CDYRirnjAeujipices5pimLiWqr+8Sx71Wz8wrCehs?=
 =?us-ascii?Q?jOgI3iggC766U6WQMcSwZhYvDwsuvJdyXHVYAiD2eJX9xPF8jwXRQmYB9mzV?=
 =?us-ascii?Q?pZqRetJ0eP4BNGU2Rf8+Ug+9O1Dt3zrpsp/EAnUThrMn/NorHENbLfBlTnzc?=
 =?us-ascii?Q?x6G9WtDR6UgaoMkzD4Po9cLAhdT5crPKmO0PgUPRIu3NepFR3pkiHnF1cfdJ?=
 =?us-ascii?Q?1NOIJrY3fQ+w0OrZSG8aD4pJIBIZz+qBRxeVljk38j4CbHbhQzQtXDytXoUa?=
 =?us-ascii?Q?y+t0qyLuOQu0DuzHa2QLndsCmGpeyODL2pciBCOqZHMnN95HA4cUDX+KmQUl?=
 =?us-ascii?Q?9y2d88fOJ/umSwvWxOwwcpH0VP3Cxijm2pirQiXwmcSDssYaB1GIeRfkIGlX?=
 =?us-ascii?Q?AQZbYPPxytg1tS8/xm8tMUiPmx8BqKuCHKyAODthu4IWBTKD64Y/bIAF16Ym?=
 =?us-ascii?Q?NA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c46307cd-d2ca-46b5-f119-08dbf6a2eafc
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 21:32:59.3847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4OUW8HYkU37Y43fehUoPNhYPmhaHeHhvQhidHKZbc46++ZZSDpr/Q8r6VkxB4KcLWHtCD7S32CaiN7fiBROZacCMobA0iF8S7PZQiVz0gz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
 debugfs handlers vs. removal with lockdep"
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 06, 2023 at 07:41:04PM +0000, Jani Saarinen wrote:
>Hi,
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Shankar,
>> Uma
>> Sent: Wednesday, December 6, 2023 1:05 PM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate debugfs
>> handlers vs. removal with lockdep"
>>
>>
>>
>> > -----Original Message-----
>> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> > Chaitanya Kumar Borah
>> > Sent: Wednesday, December 6, 2023 12:17 PM
>> > To: intel-gfx@lists.freedesktop.org
>> > Subject: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
>> > debugfs handlers vs. removal with lockdep"
>> >
>> > From: Johannes Berg <johannes.berg@intel.com>
>> >
>> > This reverts commit f4acfcd4deb1 ("debugfs: annotate debugfs handlers vs.
>> > removal with lockdep"), it appears to have false positives and really
>> > shouldn't have been in the -rc series with the fixes anyway.
>>
>> Acked-by: Uma Shankar <uma.shankar@intel.com>
>>
>> Hi Chaitanya,
>> Please get the full CI run executed with this change, once its green we can plan merge.
>Just commented on "issues" (no real issues ) on BAT and asked to re-report but we really should use sometimes by-pass shards when we see regression on this magnitude.
>This has big impact on core/gem tests https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=module%7Cgem%7Ccore
>Even on module load. I am leaning to break process and not wait to Full CI if someone who has merge rights (eg @Vivi, Rodrigo, @De Marchi, Lucas) agree here?

I think this is the convincing link:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127359v2/index.html?testfilter=module%7Cgem%7Ccore

Applied with ack on irc by Rodrigo.

Lucas De Marchi

>
>Br,
>Jani
>>
>> Regards,
>> Uma Shankar
>>
>> > Link:https://patchwork.kernel.org/project/linux-
>> > fsdevel/patch/20231202114936.fd55431ab160.I911aa53abeeca138126f69
>> > 0d383a89b13eb05667@changeid/
>> > Reference: https://gitlab.freedesktop.org/drm/intel/-/issues/9802
>> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
>> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> > ---
>> >  fs/debugfs/file.c     | 10 ----------
>> >  fs/debugfs/inode.c    |  7 -------
>> >  fs/debugfs/internal.h |  6 ------
>> >  3 files changed, 23 deletions(-)
>> >
>> > diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c index
>> > a5ade8c16375..5063434be0fc 100644
>> > --- a/fs/debugfs/file.c
>> > +++ b/fs/debugfs/file.c
>> > @@ -108,12 +108,6 @@ int debugfs_file_get(struct dentry *dentry)
>> >  			kfree(fsd);
>> >  			fsd = READ_ONCE(dentry->d_fsdata);
>> >  		}
>> > -#ifdef CONFIG_LOCKDEP
>> > -		fsd->lock_name = kasprintf(GFP_KERNEL, "debugfs:%pd",
>> > dentry);
>> > -		lockdep_register_key(&fsd->key);
>> > -		lockdep_init_map(&fsd->lockdep_map, fsd->lock_name ?:
>> > "debugfs",
>> > -				 &fsd->key, 0);
>> > -#endif
>> >  		INIT_LIST_HEAD(&fsd->cancellations);
>> >  		mutex_init(&fsd->cancellations_mtx);
>> >  	}
>> > @@ -132,8 +126,6 @@ int debugfs_file_get(struct dentry *dentry)
>> >  	if (!refcount_inc_not_zero(&fsd->active_users))
>> >  		return -EIO;
>> >
>> > -	lock_map_acquire_read(&fsd->lockdep_map);
>> > -
>> >  	return 0;
>> >  }
>> >  EXPORT_SYMBOL_GPL(debugfs_file_get);
>> > @@ -151,8 +143,6 @@ void debugfs_file_put(struct dentry *dentry)  {
>> >  	struct debugfs_fsdata *fsd = READ_ONCE(dentry->d_fsdata);
>> >
>> > -	lock_map_release(&fsd->lockdep_map);
>> > -
>> >  	if (refcount_dec_and_test(&fsd->active_users))
>> >  		complete(&fsd->active_users_drained);
>> >  }
>> > diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c index
>> > e4e7fe1bd9fb..034a617cb1a5 100644
>> > --- a/fs/debugfs/inode.c
>> > +++ b/fs/debugfs/inode.c
>> > @@ -243,10 +243,6 @@ static void debugfs_release_dentry(struct dentry
>> > *dentry)
>> >
>> >  	/* check it wasn't a dir (no fsdata) or automount (no real_fops) */
>> >  	if (fsd && fsd->real_fops) {
>> > -#ifdef CONFIG_LOCKDEP
>> > -		lockdep_unregister_key(&fsd->key);
>> > -		kfree(fsd->lock_name);
>> > -#endif
>> >  		WARN_ON(!list_empty(&fsd->cancellations));
>> >  		mutex_destroy(&fsd->cancellations_mtx);
>> >  	}
>> > @@ -755,9 +751,6 @@ static void __debugfs_file_removed(struct dentry
>> > *dentry)
>> >  	if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
>> >  		return;
>> >
>> > -	lock_map_acquire(&fsd->lockdep_map);
>> > -	lock_map_release(&fsd->lockdep_map);
>> > -
>> >  	/* if we hit zero, just wait for all to finish */
>> >  	if (!refcount_dec_and_test(&fsd->active_users)) {
>> >  		wait_for_completion(&fsd->active_users_drained);
>> > diff --git a/fs/debugfs/internal.h b/fs/debugfs/internal.h index
>> > 0c4c68cf161f..dae80c2a469e 100644
>> > --- a/fs/debugfs/internal.h
>> > +++ b/fs/debugfs/internal.h
>> > @@ -7,7 +7,6 @@
>> >
>> >  #ifndef _DEBUGFS_INTERNAL_H_
>> >  #define _DEBUGFS_INTERNAL_H_
>> > -#include <linux/lockdep.h>
>> >  #include <linux/list.h>
>> >
>> >  struct file_operations;
>> > @@ -25,11 +24,6 @@ struct debugfs_fsdata {
>> >  		struct {
>> >  			refcount_t active_users;
>> >  			struct completion active_users_drained; -#ifdef
>> CONFIG_LOCKDEP
>> > -			struct lockdep_map lockdep_map;
>> > -			struct lock_class_key key;
>> > -			char *lock_name;
>> > -#endif
>> >
>> >  			/* protect cancellations */
>> >  			struct mutex cancellations_mtx;
>> > --
>> > 2.25.1
>
