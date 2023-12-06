Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 142B58078C6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 20:41:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C1910E109;
	Wed,  6 Dec 2023 19:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB2C10E109
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Dec 2023 19:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701891671; x=1733427671;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2bYyVONDUSejH6Wms40Av7c8HcQpbov9uhZQJMA3sxE=;
 b=EUMUlK/EB9gUMqGP9gCuMdqc28XgH9T7A5Zg7xdP752cJiPVm4Nu19gc
 LS5MzKX+BNJi5/UiIZ4HG9YtH2rxKESg2+AqaFmwxzLwUranYtPMNb5sg
 oWcTATeLBtSVQyT1po9S1Xr9OIS9tDX7D3IHZNF29rD9NcewQ+p0jEt4u
 YcHBzBF7JzRdT805SmUX6SD71RECqa7ciyYIkymBD/G2+27XavVAUa81h
 AN8Lg7G9Flk2G0/x3ujUYokspciVJtoS5bXSIH/qK4Pir/4QHpq3ySv+X
 MO89tao7s5DkNoqZ7VHeJIVV5BX+7agEAT1uCYGi9Z6USP/48OsRkTHo4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="7471817"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="7471817"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 11:41:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="771406122"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="771406122"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 11:41:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 11:41:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 11:41:08 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 11:41:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXnoGsyRD6Qq2exMha0Uh5cOUB6XSoIdctN3OTUChVqmaT2MRfsJZ3RQq+aR92zuER7RWNi2gRLSAM9/iEfIFOin44Bv5j+LeZYI2d2hO1YwaMtlSlJ/01fjC+ikzilYj39eF44NivLFwu+xdhQHe4F0MQvVhMEPRY4AYZmvmKsE3oYs1pOTfHU2WiEXL+jHFYAEl/3hqSeW3VYeRCqz/pz5QFqHxc5Kz5rctI+aZxsaZrlc5va2722Fvj4sT8q23ly/wBLZO08iGrqbp7uk44zkuR31DkiZ/2SX6uqSxrr5zDZvFxIiEGxoeGN/9FbMkgDSqn7AIz1x+12SeG4UOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=99n5+ZK6F9+MLvRJdUJDDWQ6PRkYVPHIKwsm5jBBomQ=;
 b=khHIwzqWicMf/VFpIeUDFgVcK3GQ0gQQcRXM4aI3HHVvAt17ow/3IYOW9hJ7YfoWbCqr26EZPXwJ5sCuPBFfxMK5W/vQT27iB3RAn5OHZ+PT0n8oJzVWzSUX6y2ZB8W6JUv7GIWUJNspOEuGv7YNmeM4JyEnyCkx6s3uNbxJPODz6g0Am+ZK0NLOgkZ5WYZefP6ErSRAztfuhcAx2RgSKXJHNj7EanC/tbEUUqvKxULw8NDZ8V637qslcid75XjkNb1V3X4KZJkHtgVQgKORAGaeijHWBtXVTDRePOnJvp3yt5xz8CL/72bTxjICwD7J9KbBt4PfCZUB7Qad9efJkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SJ2PR11MB7620.namprd11.prod.outlook.com (2603:10b6:a03:4d1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Wed, 6 Dec 2023 19:41:04 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21%4]) with mapi id 15.20.7046.036; Wed, 6 Dec 2023
 19:41:04 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
 debugfs handlers vs. removal with lockdep"
Thread-Index: AQHaKBCdcJ3X/LIBr0Whn/O+c3SFRrCcF+aAgACPZDA=
Date: Wed, 6 Dec 2023 19:41:04 +0000
Message-ID: <DM8PR11MB5655D32D19885F66F8F232EDE084A@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
 <IA1PR11MB6347715548B24D15FA74549BF484A@IA1PR11MB6347.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6347715548B24D15FA74549BF484A@IA1PR11MB6347.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: rodrigo.vivi@intel.com,lucas.demarchi@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SJ2PR11MB7620:EE_
x-ms-office365-filtering-correlation-id: ec30b40f-df4e-4277-3701-08dbf69348e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u2CumTestz5tMMQaCSC/wFU9c+v7sJkonXtjL6Y9fw1MdBxGKcolRqNbF3A+fdpY5lB5IpzxBabK1/+YpTTzWHHVNz3D3x9KCVLQ9DUcTxgvuALmCdbyPaNW5AnfUm/gu0Mb2KlUHV6KorK5GRmzJQhEKFtDODE6uvAhCwLIiy8B1M6GowCw7LAiRCkrdqf+xgL3NVMV+0uAjlUPAsuLDQ4nyrf6hO0lWbQ97HUXti7uzp0KPqCCgC8bKnIM6323gi5FsTmQ4/GEdIN8kDMTaHCH487SRswIGsqxRLsGOd7LrSsaKlhK8bo/3Z1xtlpNgVev+ivdymMOnFGPNt7TJgQkow0rExnmnrynt93UOfKnQ6TaRcwF3/8ZipkkwrrCxapzdNKA0+Pq+Ls1M8H+ZL4h+WRiz7vNykzhl6SxIBPymuUqSAut/nM4eb9c9X2TMuSaQzxMSVbpiW4FyhX5sk2jw08PCi8aZ6cNq4D4Qt/wqZe0XD9AO6EOa5HXINHMn55JLcVgUmX29DMH8AAAK4v2OFYFiS38dKv2UAmE4fgv5bv3RXygDiRmGVR1/xHMKWW8zmEISnw3qbU41ji0Hc4SL3GvLRdpck2IXWTaLRE1OPqvs3xQwWL9sTTPBKhdc3m16zRwYCXIyknvHp2TOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(33656002)(38100700002)(82960400001)(122000001)(6506007)(478600001)(5660300002)(2906002)(55016003)(83380400001)(86362001)(26005)(53546011)(52536014)(9686003)(41300700001)(66946007)(64756008)(6636002)(66446008)(66556008)(110136005)(76116006)(316002)(38070700009)(8676002)(7696005)(71200400001)(8936002)(66476007)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?021TNIs7rhz/WQ9mxPeEHsF++xEQz3HafRXAx/nSnsl8TA54Cthb0pPDECif?=
 =?us-ascii?Q?95b3CJv2MWMcmqpR9Y4/xh6v15uAgxbe9TCLX7vk260KlJiJdTah6bOEyeWR?=
 =?us-ascii?Q?wsfzN4CUyxhlAHj4WP9DUnEABCgSrbrE1XVvZcigJ2XxOXeW2e6LoFneiRt2?=
 =?us-ascii?Q?82Y5iHHpot+X7QaHJ6UZSo9uUX+EnQNFPr5b7FCSIetoPbCeACt/AtmulU+0?=
 =?us-ascii?Q?+k/zNWEuKpyt4bRDetg8mYQlge/3wC8a1X63cDv9IVOTlQ97Lb1TCAYTJB6C?=
 =?us-ascii?Q?yTLwJksQerylusNLMWIfAGqB2+hRNJsLx7xggOg0acs45R4P9h5d+AuUXOn/?=
 =?us-ascii?Q?EARSKeH2ENCIusH7eqMErL7BoOR900JVXq9kdEHZDfc0awrX9G015Rb+hFmt?=
 =?us-ascii?Q?6zLfoeudQPJlXkqbU1/esl/MlW/FhO68Q9yWC6c0ULj05MpLHDNwzDBfoRxO?=
 =?us-ascii?Q?NQbMg89FUg02WIrPYC5gBC/QirNjaDze1FJbwo7GBqpySEJvNm9i7FPdF2Mr?=
 =?us-ascii?Q?kNUZpDO5xek97EyYXhpv158OQREecNBlO7xsjvrrtQco9iQaAgEr8dxBqym3?=
 =?us-ascii?Q?sGYa/gapdDogB+zCREz9VZwZEnCMeQlcMfBtqGYC+gm6MwkvU/S3fRIcpPCu?=
 =?us-ascii?Q?I7MUedpJZ+4Xm+ycdy+q2UmvkSuqsW40tCzsuuscxgrneeb0/waZ6CS94Qi9?=
 =?us-ascii?Q?3AwhDcV4ufolKs2NYnDhbONjhZTcp23GiPCnb6Yy5GnGIlyCpSrle8Hgz13q?=
 =?us-ascii?Q?WBlmb90t9mqM0Wlgil3DlxkatEH4cHEK78CrgIzl579p84ehDEMU1ZAIcV8T?=
 =?us-ascii?Q?74M0a5wUZScIRDJlxrdEa9CTAkqWpIBOIGp7htdNd27bbv4JYd3t3IlkJ8EZ?=
 =?us-ascii?Q?JuYzRXzlFSQ26wMuyCtz8MoEQeiocAhTUwfb2ytVfJGhGUNEyagXf5tCpXFW?=
 =?us-ascii?Q?m29yX3rulMv2xN4PIfsbIJUIEZyyuSpXrJYtXk1nJonLdsQQOo99vBhPlCe9?=
 =?us-ascii?Q?kGGjBJFslR1EbcU2knps1LgI06SOnC1kSTfyYC6xU/kMKC6pmU9mpT+X/eEk?=
 =?us-ascii?Q?evJFqg+qEX5wsmsV5Zj7nDwnp1iUBrUFBp6Z88p8F1AaiRUi10VsztRTACaA?=
 =?us-ascii?Q?wqDtF1uiI1HHitJN9eqXq9tzDW7x6EcQRh4+VDWuUFaSRUuxYUkmD7rigvsT?=
 =?us-ascii?Q?S8f2s16bAtwLUgV31ieWBcrz50nD3QMm2fbCkSal8NH4jf7/m8/0JD32eSvD?=
 =?us-ascii?Q?BYplDn2pXcEJbrO3tnkYbmdxTJdIfwQOh94ScScNjxYBGqhSRpvRFAR1FtJe?=
 =?us-ascii?Q?dLrovaYoBUJ9SQlC4M9hIMh4/zEyUVp3k9N2an6apw9XkFJQwsynOH/U0QWW?=
 =?us-ascii?Q?Re3IsT3Tjmli9PmXQGYALvqwZZg2grBFO0ynMKxZDdjWbL3UEvzB6B6lJual?=
 =?us-ascii?Q?zB9wSlW8cd/4pLNxwN+M+4t7LP9o81cSWYcYNHAb/xBgD1b9wXKsVmXiM215?=
 =?us-ascii?Q?aO8abMRhKff+jk9S9Fm7o/rJF/4UciS6mWr8eQYJvAqGI9O8mjUaJya1bO5A?=
 =?us-ascii?Q?6Suanrev1nhjyxlHYkYnui6eCoj27KUpHQvVfHTC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec30b40f-df4e-4277-3701-08dbf69348e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2023 19:41:04.6172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7QQSpb19ru+YLY1tPk44Opml2lJP3+mllzjKDgkGkzYnMn/dRUMlKhwdrDQ/2MNkFxx/fA/0WLSSWDt3E9B23A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7620
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

Hi,=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sh=
ankar,
> Uma
> Sent: Wednesday, December 6, 2023 1:05 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate de=
bugfs
> handlers vs. removal with lockdep"
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Chaitanya Kumar Borah
> > Sent: Wednesday, December 6, 2023 12:17 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
> > debugfs handlers vs. removal with lockdep"
> >
> > From: Johannes Berg <johannes.berg@intel.com>
> >
> > This reverts commit f4acfcd4deb1 ("debugfs: annotate debugfs handlers v=
s.
> > removal with lockdep"), it appears to have false positives and really
> > shouldn't have been in the -rc series with the fixes anyway.
>=20
> Acked-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Hi Chaitanya,
> Please get the full CI run executed with this change, once its green we c=
an plan merge.
Just commented on "issues" (no real issues ) on BAT and asked to re-report =
but we really should use sometimes by-pass shards when we see regression on=
 this magnitude.=20
This has big impact on core/gem tests https://intel-gfx-ci.01.org/tree/drm-=
tip/index.html?testfilter=3Dmodule%7Cgem%7Ccore=20
Even on module load. I am leaning to break process and not wait to Full CI =
if someone who has merge rights (eg @Vivi, Rodrigo, @De Marchi, Lucas) agre=
e here?=20

Br,
Jani
>=20
> Regards,
> Uma Shankar
>=20
> > Link:https://patchwork.kernel.org/project/linux-
> > fsdevel/patch/20231202114936.fd55431ab160.I911aa53abeeca138126f69
> > 0d383a89b13eb05667@changeid/
> > Reference: https://gitlab.freedesktop.org/drm/intel/-/issues/9802
> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  fs/debugfs/file.c     | 10 ----------
> >  fs/debugfs/inode.c    |  7 -------
> >  fs/debugfs/internal.h |  6 ------
> >  3 files changed, 23 deletions(-)
> >
> > diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c index
> > a5ade8c16375..5063434be0fc 100644
> > --- a/fs/debugfs/file.c
> > +++ b/fs/debugfs/file.c
> > @@ -108,12 +108,6 @@ int debugfs_file_get(struct dentry *dentry)
> >  			kfree(fsd);
> >  			fsd =3D READ_ONCE(dentry->d_fsdata);
> >  		}
> > -#ifdef CONFIG_LOCKDEP
> > -		fsd->lock_name =3D kasprintf(GFP_KERNEL, "debugfs:%pd",
> > dentry);
> > -		lockdep_register_key(&fsd->key);
> > -		lockdep_init_map(&fsd->lockdep_map, fsd->lock_name ?:
> > "debugfs",
> > -				 &fsd->key, 0);
> > -#endif
> >  		INIT_LIST_HEAD(&fsd->cancellations);
> >  		mutex_init(&fsd->cancellations_mtx);
> >  	}
> > @@ -132,8 +126,6 @@ int debugfs_file_get(struct dentry *dentry)
> >  	if (!refcount_inc_not_zero(&fsd->active_users))
> >  		return -EIO;
> >
> > -	lock_map_acquire_read(&fsd->lockdep_map);
> > -
> >  	return 0;
> >  }
> >  EXPORT_SYMBOL_GPL(debugfs_file_get);
> > @@ -151,8 +143,6 @@ void debugfs_file_put(struct dentry *dentry)  {
> >  	struct debugfs_fsdata *fsd =3D READ_ONCE(dentry->d_fsdata);
> >
> > -	lock_map_release(&fsd->lockdep_map);
> > -
> >  	if (refcount_dec_and_test(&fsd->active_users))
> >  		complete(&fsd->active_users_drained);
> >  }
> > diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c index
> > e4e7fe1bd9fb..034a617cb1a5 100644
> > --- a/fs/debugfs/inode.c
> > +++ b/fs/debugfs/inode.c
> > @@ -243,10 +243,6 @@ static void debugfs_release_dentry(struct dentry
> > *dentry)
> >
> >  	/* check it wasn't a dir (no fsdata) or automount (no real_fops) */
> >  	if (fsd && fsd->real_fops) {
> > -#ifdef CONFIG_LOCKDEP
> > -		lockdep_unregister_key(&fsd->key);
> > -		kfree(fsd->lock_name);
> > -#endif
> >  		WARN_ON(!list_empty(&fsd->cancellations));
> >  		mutex_destroy(&fsd->cancellations_mtx);
> >  	}
> > @@ -755,9 +751,6 @@ static void __debugfs_file_removed(struct dentry
> > *dentry)
> >  	if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
> >  		return;
> >
> > -	lock_map_acquire(&fsd->lockdep_map);
> > -	lock_map_release(&fsd->lockdep_map);
> > -
> >  	/* if we hit zero, just wait for all to finish */
> >  	if (!refcount_dec_and_test(&fsd->active_users)) {
> >  		wait_for_completion(&fsd->active_users_drained);
> > diff --git a/fs/debugfs/internal.h b/fs/debugfs/internal.h index
> > 0c4c68cf161f..dae80c2a469e 100644
> > --- a/fs/debugfs/internal.h
> > +++ b/fs/debugfs/internal.h
> > @@ -7,7 +7,6 @@
> >
> >  #ifndef _DEBUGFS_INTERNAL_H_
> >  #define _DEBUGFS_INTERNAL_H_
> > -#include <linux/lockdep.h>
> >  #include <linux/list.h>
> >
> >  struct file_operations;
> > @@ -25,11 +24,6 @@ struct debugfs_fsdata {
> >  		struct {
> >  			refcount_t active_users;
> >  			struct completion active_users_drained; -#ifdef
> CONFIG_LOCKDEP
> > -			struct lockdep_map lockdep_map;
> > -			struct lock_class_key key;
> > -			char *lock_name;
> > -#endif
> >
> >  			/* protect cancellations */
> >  			struct mutex cancellations_mtx;
> > --
> > 2.25.1

