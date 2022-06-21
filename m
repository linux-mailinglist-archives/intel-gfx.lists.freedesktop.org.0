Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1421552AB1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 08:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C59112716;
	Tue, 21 Jun 2022 06:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A86112716
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 06:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655791293; x=1687327293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5bn1s5cZIT3C+4fCdLanBlRKn5T2e9zQpYnLOt5f/E4=;
 b=BDAH2sxalcE4PThiojEau3qyxFT1LBQCD/iNwnwKGEzUk5zQIcjCw8Z5
 ASUjYa5wJlXzuml5AvlSRbbuxs9I/pzDO1wqCQeYBXlSUdZe36tGEJrMx
 94eiacTloh07F1nuXnEYkvRs4YUyIDCRrYAPGFIuqQHVP/yhNL/AzLLLB
 NuyWI98GHwfEtZiLwLRYBJqieHLtlcLey4Mr1U/dE9p6DxOK5K9sp4KDy
 jEO0Cpv1MgytBDsRQvyBKd6peI66i8iKftQ5fdzmXzETYLNxNuLvU/dO5
 Cwe2ohNuMxkXinx3XHR4lrBGsL7NJN1EInngtkmozXZHbFn3TGHZNk72S g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="259856746"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="259856746"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 23:01:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591500292"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jun 2022 23:01:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 20 Jun 2022 23:01:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 20 Jun 2022 23:01:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 20 Jun 2022 23:01:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ix2zBle1nsOYNsx66eFiMzA+JZkn8KdFj+hnK+9xwAVeskGFQFPMa/LQCUFmjuGGPHqULX4Kf4mmhWJT+St5xeqYHWJhYVnVdoARMpUxffZXlo9sOKByu/59jVqWqjw/yS8opNpuAuuAhH+DzullJpTadYtsfubV0RIt1/WNfSRziLD2WfwqfPLTaCxwqjxyOZkUdVFB8YLNe8V0EGcbYwdWuFElYNe4RBTVRzWMYIJNRXUZ/88MI0cqRzo5yrjqf79H2S9oNPwuLn3ChaykIJtAsL8q2nuJ4WU3ix11B5S4WZZhmDP7/s/Xo4Eu+Y4dStFOPsXV2kqdoj6xCpqNEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4lwAHVeeIoU1dHkYa5huBftei6VmwsAVDMVF1SgNy1c=;
 b=RoZabQ6LLWCy+2GiPmYZgBKb7C9F2x1TDYtqw7ok1rivd8USjb3t+wm/3HGUb3uLtw2BYClknOo4xT6uYIV69M/S7f1oJ956fSENuJ6yaA1TP//LXGFYac8sdQofpMCsgYVEQRJNrQZs7JvKTh5FU7m4thJzu3tEEQeQYcUQY/cMzXKy5xYq4dyal8EqoVl/1SpdT3DbeA6WZ5gZpIHU9G2LqM/M+oucsdEbHkGz50YXFB31/cEpfh5YbwWCSC3hNkKdiuRfM8q+x2yZ7EsUmq5VaGg3eYX3yl7VyX4zt1OJ6igi8oB+Zg6VZonSGr0G4T80EbJ9nUNTryZLJakNEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (20.176.123.28) by
 BL0PR11MB3521.namprd11.prod.outlook.com (20.177.204.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.13; Tue, 21 Jun 2022 06:01:30 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::2d3b:ec34:e4d:85fa]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::2d3b:ec34:e4d:85fa%7]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 06:01:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC PATCH 4/5] drm/i915/display: prepend connector name to the
 backlight
Thread-Index: AQHYdovyfNMCz/B360Guboev3+AcKq08OkeAgADL03CAADyHAIAcNyTQ
Date: Tue, 21 Jun 2022 06:01:29 +0000
Message-ID: <DM6PR11MB31778B9F5ACB76E68A804074BAB39@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-5-animesh.manna@intel.com> <877d5zp03q.fsf@intel.com>
 <DM6PR11MB317731387DD58F011B998298BAA19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87wndynsat.fsf@intel.com>
In-Reply-To: <87wndynsat.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5cec146-895d-4aea-9c6f-08da534b7c57
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL0PR11MB352180EF4E7DBA9D5DE72D16BAB39@BL0PR11MB3521.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6TmfKvRr42+rWcerLUTDKeaeDdvWJuwQ8k1nSuV+tJHYKCJQp0JuZCVw0zSXiRNYWJSnfg//Hu6dFLWNH91bDojGOpu5TfbEWEwRUlZ/alHJlI9obgoQc7P8d0+//een19HSC9pFPggtcQMxrWIVdrTBebMRJlQQXsh4yoj0i1gXIG2RPzfxMyc3MTF4O4zXDupIvGChPXABWK7G6qODOCO187+VmwzUczDUs/4+c04jP4S1ffygX1xV2OiZ991eYQpx/CBUXt9V0EyJyUTdXEJkSfW+rWsbrtpO2R4imAH8dBsBrikBMBbHu/LbIZDwbYip8dBD33AaEBAwSC89L1mcbBYWKnWeQEDRjPZemNyMrs3LWPIwjznSH/YqeJ96X4zhYuhZlS+69C7SSc07U/3WtXZwlGBmQpwTMHuZ/YFp5rogsCPSF04fkxGkPt/NqDeoAOAr90Lz6vr35rvM2Mg2/Q4dhScY7iX73c8Ah/9XwPi7h7yNN0RdIicWcV7vxXlFbKta1ozXYwSw63Egqu0BOxntPahzHQ9hyTQ2JWMoDDBRDzTYOsv0zC2phLaz+bl8qmdJ87R9dveMpuBGGegf4rrVYZV7eydLEW7CO8njujGi7mq4sYBiqh+jcKGs30uzF2poZM6/JJMhOQDQctCf07FUeWXBG2Bj1cb5cpaeOsbWula/Fmqgo4B///MRIK9wzB77XFf0U6Ft8ovrjjY8s/5rX/wrwCX8dO+pA20=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(39860400002)(346002)(136003)(366004)(8676002)(83380400001)(55016003)(2906002)(76116006)(66946007)(66556008)(8936002)(66446008)(110136005)(38070700005)(186003)(52536014)(66476007)(54906003)(82960400001)(71200400001)(64756008)(478600001)(316002)(33656002)(4326008)(9686003)(41300700001)(6506007)(7696005)(5660300002)(26005)(38100700002)(86362001)(122000001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xTpm19f0KVWSB9WalECYA/wXl/QI8tKi347Upi63tOj3lbtZecaa/WU2FYr9?=
 =?us-ascii?Q?0nr86hHVyXb7gkCZXNWc1xX5DaVJakblesQoBgC3idG0uGK35dASqFNOss2V?=
 =?us-ascii?Q?ah6WMy2OlBsrnuSzZaL8IxdkCo4xYRvBfL+WwfZ4FBL9JXQTAji9huIuz/Dz?=
 =?us-ascii?Q?CnsjIRsnRc96BaHSK9n7z/Zfk+NYVgxAc93S74fSPbNv5YsSg9aGjjqr4/sX?=
 =?us-ascii?Q?/R9fD4vZd0EB4LenJq5K3k4dI3qgjsrJs1DxD3qcHxes6K9mN6PSku49D24g?=
 =?us-ascii?Q?qvR+WW5I6LBJDUCB6Fq+bn4YSK7VXGBPr8kxUBbKr1VQblNj9404QJAIKpXv?=
 =?us-ascii?Q?LdTA8JppGS2mhcuZ9WL3Pt9jnREbQezeN48gl9z0Cr/JxKCcVHXYV2td8u/Z?=
 =?us-ascii?Q?BZ32sTBVidmgyououRlMbmauDPqiuKsb5Pzj0HooUkRt5jwC8mqknt6YpwmZ?=
 =?us-ascii?Q?Pn4B+ftGIi4/ktn19WkNSvhQj7hs5HuUaFMAvITnJr6e5u/fSxpLlqZUTTEN?=
 =?us-ascii?Q?JtDzglSa8A//VqKqpEXWIdsI5yL7ApUfre1zzsnhoiOgtbCP2UNo69WV4po8?=
 =?us-ascii?Q?8AKC/6jDI+zSCE/XOi2sewn1/oZd2S9VMmSAiklZgRzYnuoPlnLBcpgqCX3a?=
 =?us-ascii?Q?TghxUfAA5HsbMFkLCoe2YPXmo2+uOX/nSMsgBnLFY5+dygJ0oeca/mXwVRxK?=
 =?us-ascii?Q?VEFoLPIkd0KxHNNmEQOFkb+paU3Xb01L9vm/4ziUl7CC7MJIyr4jb5MVInw7?=
 =?us-ascii?Q?b82PhD3EW3XspqE3/leuHyCvn4YdnOVM46LpVPXLdJWG+sCX3q0L2SIwFxdP?=
 =?us-ascii?Q?xjsBYGKkn4XAHH9ziYbVckRdk4M5+5JdTlwSrhUr4ZtUoWRF+QVfsjZw7c7T?=
 =?us-ascii?Q?LruaeLmuxq5x5TCCAZDioOufXlTrTgFpweFXy2Pt/hpIFX9R+njvxK+LlbRt?=
 =?us-ascii?Q?jwMW7/KFwv7i+BxkxN2eFf4MHWn/VReLnjF1MZkdvzqcLcwvPUegpKqycRFs?=
 =?us-ascii?Q?JbcADZMrmHXtedJv7l00ZuWvi7kbqxddy1L083N26sbR7ivBpd5CeH3+hj60?=
 =?us-ascii?Q?bxbhOyHvw0qvUrzcOb+rTm83PYeicU/w050lQJy0dGbKAPXJTJekP4XgGgwb?=
 =?us-ascii?Q?ni075leL8pZW2HaBqupWcwQC7zg6I+TF80eQE4MB2qztWGPTG9r+AtZPhGGR?=
 =?us-ascii?Q?iTa8ugfk7q+4V2wnyTm7yx8OdieLbptCC1IsIIWod8hF8iSW3w7RKsb6mBlP?=
 =?us-ascii?Q?agYGKJJ25i2KfnPAdQKNSwnWBw5Ag58lPvyffTJ3/LRFysgvRiGaY+yfesEB?=
 =?us-ascii?Q?jE5b32qu1kFQM/2PP5EsbXzMatQC+nW8xogsFk2Yo0Wq5/v6hFvBBdVABREN?=
 =?us-ascii?Q?3wrhYxyQq4gViwlhdAQQJaa37qVFIN3p7CmR4GOewWpKEP8FJE8vHLHyK0M5?=
 =?us-ascii?Q?wicsSvEf+hHVJs5XXQSuRzc70yEr2MGnv9eiQ9LPFOZUqkltEToC/NTSVCzY?=
 =?us-ascii?Q?1EknOIHF0IZhdszh4E71428/bS6ytVSeDTct1+JzynzyMjwgbZeitNXoerg9?=
 =?us-ascii?Q?Vd/B4J8fx/o+0HT3hFlifFxB8do2pGTQncV5FWBCD8bLnz//Be4Nas87TADR?=
 =?us-ascii?Q?c0BQv9G4i1mo867DL+MWyqG3ql6G6ynrdTNL3sHJKtZmzA7wdntYDrrcRL8g?=
 =?us-ascii?Q?vnbKwPuYe3wtvv6s127r3pXT3dOvkIfp5ikD3A2ayGHCp99ml6h5V1OFxR2q?=
 =?us-ascii?Q?ECYNkcsGng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5cec146-895d-4aea-9c6f-08da534b7c57
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 06:01:29.9646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 942hwXAKSCHnGniLofHmfvRK85wcQbhz+TlHX+E4Nxe20wxq3TZDfItfWK+OC7l1ndVIxGW0KB4fmcef4Adsjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3521
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 4/5] drm/i915/display: prepend connector
 name to the backlight
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

> On Fri, 03 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com>
> wrote:
> >> > From: Arun R Murthy <arun.r.murthy@intel.com>
> >> >
> >> > With the enablement of dual eDP, there will have to exist two
> >> > entries of backlight sysfs file. In order to avoid sysfs file name
> >> > duplication, the file names are prepended with the connector name.
> >>
> >> Fixed by 20f85ef89d94 ("drm/i915/backlight: use unique backlight
> >> device
> >> names") about a year ago.
> >>
> > This patches checks if the return value is -EEXIST and then acts accord=
ingly,
> but -EEXIST is not returned.
> > struct kernfs_node *__kernfs_create_file(struct kernfs_node *parent,
> >                                          const char *name,
> >                                          umode_t mode, kuid_t uid, kgid=
_t gid,
> >                                          loff_t size,
> >                                          const struct kernfs_ops *ops,
> >                                          void *priv, const void *ns,
> >                                          struct lock_class_key *key) {
> >         struct kernfs_node *kn;
> >         unsigned flags;
> >         int rc;
> >
> >         flags =3D KERNFS_FILE;
> >
> >         kn =3D kernfs_new_node(parent, name, (mode & S_IALLUGO) | S_IFR=
EG,
> >                              uid, gid, flags);
> >         if (!kn)
> >                 return ERR_PTR(-ENOMEM);
> >
> > So the condition check with not be satisfied and the backlight registra=
tion
> will fail for the 2nd backlight device.
>=20
> But the file isn't added by kernfs_new_node(), it just allocates the node=
. See
> the kernfs_add_one() later in __kernfs_create_file().
>=20
Moreover now that we will be supporting dual display, wouldn't it
be better to have the same file naming convention for both the
displays?
Without this patch, the first backlight would create an interface
with name intel_backlight and for the second it would create as
"cardXX-XXX-backlight". There wont be any similarities in the
backlight naming convention.
Would it be better to maintain the same naming convention
across the displays?

Thanks and Regards,
Arun R Murthy
--------------------
