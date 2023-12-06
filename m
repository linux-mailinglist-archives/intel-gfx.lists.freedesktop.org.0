Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC5C806D4A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 12:04:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5706610E6A1;
	Wed,  6 Dec 2023 11:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FD110E6A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 11:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701860688; x=1733396688;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kj+Q1ZcvA2N6pdGfIeEkq45mOlfZjdUKt6W1zPk+nnM=;
 b=F29poR6RdgFFW2mq5vYEKdE6utfNhjQXTQXaw3piW0t67lM7zhBRzGbt
 furx7rhspvhUdO9nPI/fvq8LBpbTPIpDKxhevz9v3+NEtqq6CnrpEAcqE
 8qWvvkRuo9z/xI1xe5M87QanYFv0WpisqQKLP07VUq1rnzwnnC5HiCZhW
 7QZg/ESKyMK65zvAUl28ebsNKcrgQO1wKPzvxiZl0avPXzglHLygf90TB
 V+OwJH5kAznlsPwDUXzgQeDAGcesy9AO2h7Wm8L5vhRWu7SpCaqdVPG/A
 TEA7GkJHG5jHZal+x8WokQvB8wrL6IWbIH3Hhh9W4J4/gUQ5gFv8RBRSo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="396833732"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="396833732"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 03:04:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="805610109"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="805610109"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 03:04:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 03:04:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 03:04:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 03:04:45 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 03:04:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHYzQ+ccKzToaWbQ0OPhZxju/U3C8iQawR7H93u406cG0oHMN2yVS9y2sXA9wUkstPYPrvF0LUtT6s85d3wIAAejKz7wznYyUAyp/jFwtQGQM8hHpnpLocyth9e3j02bgJ6/XqOCn97dvjRDIgVkEtfM2Vh+741Xe+JSU6m20c9/NVueo8CL+FrK07Cu1R2KFgrTARm7Y7MpmY3QIgNXEJpbapa0V3lhoqJ4YLYNUyBTwufXx52XgWRHP1vdTYpJAndDmgnLfOV+T88BwPQN1cAxrRqGnvbQdqChGnpDhXRD2X0/NxSGbFDxrmqdUZmPIKMhxAE2fNLTvDXeNw0KLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kD1rK1NG+PO+5sZC3seZ6lVoNeuaod/yvnTWBm+Dbk=;
 b=WFXRzdK4AQNhdBsbZ60LSeXlaNFAvhlsTQxRUt+lII4EStX3OpbodHrdKKbkFps2lMcZ3HTKOGWQPEHWVLsXAl6zmvQcI5jrC8TQ8/qz6VcvH5IX2G3CIuJdowI3hqDhAJeKeSjkiM4Gy/fh+a7q6n0vNN6f0oQ5l8vUDvYAcXML36W0/BibS4kIVRKGGp0l2l+2+D9e7w/m2dfAGAl6OXCI7V7L+nRWH7Z6dXy9MfnFl3B0JghURsFlG1iF4pXeRapkI8GIe0czYSs+ScboPGhMfcSBngnVtCQNTP6KWgorlAny31AIM0amJueRuD8uBnd26VXfxbVefunsBCsH7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Wed, 6 Dec
 2023 11:04:43 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::adc1:50ed:7426:5e0c]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::adc1:50ed:7426:5e0c%5]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 11:04:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
 debugfs handlers vs. removal with lockdep"
Thread-Index: AQHaKBCo8tj+xKo10UayTjmSdgipI7CcF4ZQ
Date: Wed, 6 Dec 2023 11:04:43 +0000
Message-ID: <IA1PR11MB6347715548B24D15FA74549BF484A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|BL1PR11MB5240:EE_
x-ms-office365-filtering-correlation-id: fda09b7d-6431-49af-c72c-08dbf64b26b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9wCg2WzFDPJpLM4NrKLpGSnW98wKw98dr5qb73U/O0L8MEnwEwtWN+aFZCvv2VMcvMn/oB9/1FV15lH150mJQKxtLz6sBYA9ebSQ28FgKuml6kfv+PstER+eiO0KcAAGg1vYupADySN9GB2aMXzhjlcAcUrN4yyCoWzjbB5xFukZdtyC0xhRe9uiQbwY9AP9aziHWeNM3Y1mMB4da+7X2ZwKzajz1TcFDwXEXP9XmDLdyjduXzvy5q5sSfJnFftj1RPDgzrKUM483MjGYsNF5x+ggE/3x41QZx0Cd3wL+q8KPr7rLG6UEYlFCJm0CEKq52zmt1Gi9xVn7PIAi9nGPIngxpZqw9wTS61jadkDZgMa7ypDgdITrh0p7LwXxiF3op+nqNd9vY4hJbaUzxluqqPhWnPav3w79vToOsQ73uGnGOp/6Fx+8g1P9z1W1+bNe1MIbgpgig3rBG5xFF69JADQboT7PulRb+9Uiqs4LrKRvZslYxqLtYlVvt0ClBDz3Lvgh6AnspCkQeoyhV4/oAYseoKcLrRN5cBExbYiupWn6GWDUX3egyqx8NYBr9m9bfr8ZXyV1qaYHAcyCNfdtlcxN4Iiwvp2c6lKDwN+nYzK21idfalCXXANzDirRQ5i5J1Oz4c3WDzH+H3C4j8akg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(376002)(366004)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(38070700009)(41300700001)(5660300002)(86362001)(2906002)(33656002)(6506007)(7696005)(53546011)(9686003)(26005)(55016003)(966005)(478600001)(83380400001)(71200400001)(82960400001)(122000001)(38100700002)(52536014)(8676002)(8936002)(316002)(66556008)(66476007)(64756008)(66446008)(66946007)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ji+wvFLMZp51TSSMAplHmSLNc8SBx8+l52Qz94CywCloGC6ookwGZMYApx16?=
 =?us-ascii?Q?7yAeG7Rsb317CXBsJbvxhvW22CiTXA31qgF72Esb7OpUbOTnyZI/M3KJGFM3?=
 =?us-ascii?Q?FzjPS6HC2c1A6P6ZIUHNRtCc7WZvatN6wpD5FjfrcfghMHdTbhAmq/8jPOzs?=
 =?us-ascii?Q?7vDhInfttPYypbQQ9gj2ZkOv7OiFSHc6jl7LpK4xQkij0WLuLC24R/PuIPVs?=
 =?us-ascii?Q?lzh5oigkELgjMXfJuOKPk70PpzGrIerKpGQLii76y48BMlUqG1Dqt4Mr+svf?=
 =?us-ascii?Q?LBwx4RceO98DYQ6yGJN1h2LAYjDp5AJoGqq1HHILkfMqXrvomIORtgixmBZd?=
 =?us-ascii?Q?yg3dcrjxZnmTxIey960zxKri+kJ7FGRP/Dj9qGbCgdBje8Ay1COJ4Hn5QpaK?=
 =?us-ascii?Q?J2F5zm0m+G2+abd0RU5uiVKj51Vl0acirhXEsCGVyFQ4yvXRn+6sK/qTasKb?=
 =?us-ascii?Q?xsbgKlKuU300DUl2tydryWR+HBMqRISiBdblxXYWXOVDRqMSV6aSPVXuutQf?=
 =?us-ascii?Q?PyozUOaD8CCeI2CQFLqTLcatZaiUUuRWMF8F1zaVQy4wGopYGIGbUUC09omf?=
 =?us-ascii?Q?cVkQVZCEUCuhw5gEVBeHr8ArgffGoW49yanhRDM71vUv3mle0JHZrd6y+uI3?=
 =?us-ascii?Q?ppiyg4fidtCJ4v+q0bFoqRYNyTPimZZENBgsGDCMdBfg9jCALCTaSXvwidnY?=
 =?us-ascii?Q?UW/AbFo5u93XxGd/gNah5lYY6BMx0V3YqdA1XDX98FOMbPk8CnSaw4pDf7wB?=
 =?us-ascii?Q?8XM79D5SgvHZQaChSvSZBYDIsYThJrUbNq30IJMBUzZibnnJAC4tj4gAwhjA?=
 =?us-ascii?Q?Munq7C5Blikz0EBWMfsA5j63f/4/6utBqU3jHuEo90yuA0gfXD/+mxADYUmR?=
 =?us-ascii?Q?tTS8QFH0uw4brTJE7IlGmpowjaGjqXTL5hax5sSI1Ru1RryPqFNDAdw/loHb?=
 =?us-ascii?Q?ok0Tms00YxIi/c/cHo4F6ONnmoU9F/ZJO2Q1Clq3a7L5heGcQADAZH0AyPUu?=
 =?us-ascii?Q?FaW9557kRPbYpbyprCUVGjZtvMd3gM8vcEr87EFmZtuHd1LApd6ShFayAfQd?=
 =?us-ascii?Q?ikh3lVYfMmfqbDufWdHLDl2SZxqwioRU9SKOCkQ8n4gxBjujWFwP2I4KZtSd?=
 =?us-ascii?Q?R7KSQauSGoSMcdQRnLX08D1+3jEuXo4kyuXoJyL6hqjunhNbl3xEcDd2dEdK?=
 =?us-ascii?Q?vHlcHaWs2ap9eAbWOaDcGa4RtHwzg5wgmz06KP4D3L6NBnpMzxYRnn+on5XD?=
 =?us-ascii?Q?4bP5gLR7e4hdPy191ePt2i/wGoSQAzFlAh4qoLD4X6l+ngu+TTTiy3gWcfEl?=
 =?us-ascii?Q?Zi5vK8xu7ADnB4kZITMn1OW6QEIkUPARtvfiFcCW0Cp2+Uj/+K2PSUyDKwpy?=
 =?us-ascii?Q?pljNOomJZKxEKUP8jXrlHtKzb2rtX2NPRfVMlxISYuurXrPavgqU9Cl+NkVn?=
 =?us-ascii?Q?Zk9XE8/0xGacE/szLsrgbYNfVF42SFKuBG8KcTFyOkpBHVIC55c52HDNiM8Z?=
 =?us-ascii?Q?wbnooFu9qSU1VQ0m5Lbpp+swigHcsh+f/1GHn5RST4ZMi/Qe+cgB3X/stzVM?=
 =?us-ascii?Q?IfQhAjdVh0St9wmyo5T1HwMGlJUurcfbYAxN4Xry?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fda09b7d-6431-49af-c72c-08dbf64b26b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2023 11:04:43.4943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: trOn0tb02NpAfe4AWWxD/0aZZZjJIFv+Dm7RBNJm7W7vBNLbLQMyCGM+3DBDdA/8cax7kJ1vpOILiqHCXSQfdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Wednesday, December 6, 2023 12:17 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate debugf=
s
> handlers vs. removal with lockdep"
>=20
> From: Johannes Berg <johannes.berg@intel.com>
>=20
> This reverts commit f4acfcd4deb1 ("debugfs: annotate debugfs handlers vs.
> removal with lockdep"), it appears to have false positives and really sho=
uldn't
> have been in the -rc series with the fixes anyway.

Acked-by: Uma Shankar <uma.shankar@intel.com>

Hi Chaitanya,
Please get the full CI run executed with this change, once its green we can
plan merge.

Regards,
Uma Shankar

> Link:https://patchwork.kernel.org/project/linux-
> fsdevel/patch/20231202114936.fd55431ab160.I911aa53abeeca138126f69
> 0d383a89b13eb05667@changeid/
> Reference: https://gitlab.freedesktop.org/drm/intel/-/issues/9802
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  fs/debugfs/file.c     | 10 ----------
>  fs/debugfs/inode.c    |  7 -------
>  fs/debugfs/internal.h |  6 ------
>  3 files changed, 23 deletions(-)
>=20
> diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c index
> a5ade8c16375..5063434be0fc 100644
> --- a/fs/debugfs/file.c
> +++ b/fs/debugfs/file.c
> @@ -108,12 +108,6 @@ int debugfs_file_get(struct dentry *dentry)
>  			kfree(fsd);
>  			fsd =3D READ_ONCE(dentry->d_fsdata);
>  		}
> -#ifdef CONFIG_LOCKDEP
> -		fsd->lock_name =3D kasprintf(GFP_KERNEL, "debugfs:%pd",
> dentry);
> -		lockdep_register_key(&fsd->key);
> -		lockdep_init_map(&fsd->lockdep_map, fsd->lock_name ?:
> "debugfs",
> -				 &fsd->key, 0);
> -#endif
>  		INIT_LIST_HEAD(&fsd->cancellations);
>  		mutex_init(&fsd->cancellations_mtx);
>  	}
> @@ -132,8 +126,6 @@ int debugfs_file_get(struct dentry *dentry)
>  	if (!refcount_inc_not_zero(&fsd->active_users))
>  		return -EIO;
>=20
> -	lock_map_acquire_read(&fsd->lockdep_map);
> -
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(debugfs_file_get);
> @@ -151,8 +143,6 @@ void debugfs_file_put(struct dentry *dentry)  {
>  	struct debugfs_fsdata *fsd =3D READ_ONCE(dentry->d_fsdata);
>=20
> -	lock_map_release(&fsd->lockdep_map);
> -
>  	if (refcount_dec_and_test(&fsd->active_users))
>  		complete(&fsd->active_users_drained);
>  }
> diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c index
> e4e7fe1bd9fb..034a617cb1a5 100644
> --- a/fs/debugfs/inode.c
> +++ b/fs/debugfs/inode.c
> @@ -243,10 +243,6 @@ static void debugfs_release_dentry(struct dentry
> *dentry)
>=20
>  	/* check it wasn't a dir (no fsdata) or automount (no real_fops) */
>  	if (fsd && fsd->real_fops) {
> -#ifdef CONFIG_LOCKDEP
> -		lockdep_unregister_key(&fsd->key);
> -		kfree(fsd->lock_name);
> -#endif
>  		WARN_ON(!list_empty(&fsd->cancellations));
>  		mutex_destroy(&fsd->cancellations_mtx);
>  	}
> @@ -755,9 +751,6 @@ static void __debugfs_file_removed(struct dentry
> *dentry)
>  	if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
>  		return;
>=20
> -	lock_map_acquire(&fsd->lockdep_map);
> -	lock_map_release(&fsd->lockdep_map);
> -
>  	/* if we hit zero, just wait for all to finish */
>  	if (!refcount_dec_and_test(&fsd->active_users)) {
>  		wait_for_completion(&fsd->active_users_drained);
> diff --git a/fs/debugfs/internal.h b/fs/debugfs/internal.h index
> 0c4c68cf161f..dae80c2a469e 100644
> --- a/fs/debugfs/internal.h
> +++ b/fs/debugfs/internal.h
> @@ -7,7 +7,6 @@
>=20
>  #ifndef _DEBUGFS_INTERNAL_H_
>  #define _DEBUGFS_INTERNAL_H_
> -#include <linux/lockdep.h>
>  #include <linux/list.h>
>=20
>  struct file_operations;
> @@ -25,11 +24,6 @@ struct debugfs_fsdata {
>  		struct {
>  			refcount_t active_users;
>  			struct completion active_users_drained; -#ifdef
> CONFIG_LOCKDEP
> -			struct lockdep_map lockdep_map;
> -			struct lock_class_key key;
> -			char *lock_name;
> -#endif
>=20
>  			/* protect cancellations */
>  			struct mutex cancellations_mtx;
> --
> 2.25.1

