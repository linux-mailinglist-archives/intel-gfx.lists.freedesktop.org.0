Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C3053C365
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 05:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5A610E50F;
	Fri,  3 Jun 2022 03:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBCE310E50F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 03:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654227270; x=1685763270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/pNgf8b+j10TbbM1zUMwSehuAvhUhw1HjlIBngUamJU=;
 b=V245d3S3F0ULJ9m9FaYNzY+mNUdSUzOz1HIot9q0jjn4brWXQsHF6DPE
 8mab/L9QFzS/qgMQOJnYVKSYS6ypPSBf+7L2upE7Zyu9nYOSP1qzFdkeb
 6wFHkwhQehRtUKFAuFDcUbjUBOkmrrCNwSThmVN5yKPezYu7LpOLJlyhy
 rOcqJLYuXLswhfOf6CcYpYFdlAO5iSv0qIeAnSVRKUQBaiI3cMNp55lBT
 06Y1kXhCpO5y9wBMcLlTKx+M0zEKkkcJMVqYpO0pPbb2YxmiA4zsRIeGw
 G2HyrcTyv72AQI5D5M41Qi1VHK1EqFnGu0atPqSByx4xD4Yy8BLXhVG9c w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362527891"
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="362527891"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 20:34:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="824552564"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2022 20:34:30 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 2 Jun 2022 20:34:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 2 Jun 2022 20:34:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 2 Jun 2022 20:34:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ha1rilOylmzXxGnYASLzsYfERxE2kTbRTYyKBCYuuZUTsWQN+uKEhdDxvs78MnN/7wOZ4gbj8ivaYc/c27T1RCo+AOeJGN6to11i79src0q9UV4pD/pMaLPHRaCNZ+WmqBgHjCJKHpMtfQMZZ3+v5RpHEU0e1KQHTL2i6/ElgqqXg6pso8mJkitfKbs8HYdJynypjm+dSAWy+qdFSM6FlGi9nuggFCOsQcbu23D3B3HoU3TS/pgbVz03XdwJf+0yiG6MrdVqppeKU5vhaQgXjOwF4ojHWxKSqGkSLejq0XTLRrWtwKjvAHco3BPg6LulfentjTIzJgaY7oG+UAPjKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZfJ1NAO8iD1Puxu3oPQv3bKS7BbVHIFRrnenBqEXCO0=;
 b=V/T3r9qr+BWTq/GDyh+3g9uFGNFXHTZzdH6SljafasRfdh8vZzQ+UXKmkeYigGrq1oGb54zorQgfmN4eXjyIgtHeOuvQv0M1BoGjBikAqB6tD3jgBOg5hTSvWzz8oprTRsfpYiQN9zB5QhkGUBMWiWr+35o/6PBt+2TbooQ61Mmu3Ewj4ufH6VLEDEkbtkjeya4/FP4qduEDeUWJO3WSuTD+FkD1iyp8GWVnD+K+8ZDxz3ip7nrBRxffNPwKGCMGmZVYFJnKQol/WUnjC7wah3G3fuaemtuI+JeiR63gOx00O8CGYqYOEd6BI5+AxX2TVccZ7g6ODRH0D8T0XbKGXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CO1PR11MB5201.namprd11.prod.outlook.com (2603:10b6:303:95::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.12; Fri, 3 Jun 2022 03:34:22 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d%7]) with mapi id 15.20.5293.019; Fri, 3 Jun 2022
 03:34:22 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC PATCH 4/5] drm/i915/display: prepend connector name to the
 backlight
Thread-Index: AQHYdovyfNMCz/B360Guboev3+AcKq08OkeAgADL03A=
Date: Fri, 3 Jun 2022 03:34:22 +0000
Message-ID: <DM6PR11MB317731387DD58F011B998298BAA19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-5-animesh.manna@intel.com> <877d5zp03q.fsf@intel.com>
In-Reply-To: <877d5zp03q.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 46a86105-555e-42ee-f984-08da4511f345
x-ms-traffictypediagnostic: CO1PR11MB5201:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO1PR11MB520193357EB9CA8573AAA579BAA19@CO1PR11MB5201.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9HkD+SfwHAIQyiaQBgcGFo/FRU1MSRQkWA+hoPF87l4FXoB7lsNm8YWdVo2Hv4y6Xlqt25YPx7Z6gLWKdVV2s1zPgbxcvicD9YvBqcALxLofPixH5mDGxZcsCnluKp4wNldY5D6QRvymF+DOdIep9cTmbWOxIlpfYf0vGyEWfXlpw0619KYCFsDx0wUOSmjVB+5OIdDkRPziViisyUpTpuFz0ylJOAQ+t57r1CbyuQ7Y+mgzJOVCPF1mKsKmyewz6w+UQv+l1eb+0BaFP8dFOvrBXdhAPhc5Ljs3rsCWF+g1qsDe0SIJWzBR8pHt2MSvkWSTfoudOkj7caRdS5fcVK+F9CIhMtOf2JNYMfQ7ltKFBCWYN/smCDpfm9mmwYpodWjyiFGhpVK1iei0b79rjU3+cfrRzOoskRV0jF77GjyHkB0WXuqxoLj0aSpxhv2m4+r3WhF8Zj+utHA8n2yZP3do2xpvsRh5xmZzxGzEDcZiUyRrzo9oq3BJU+QEgdh2Sh73hH1TauMqqqz8/c5zqp/z+aE4kUJXKHZGw3Y93KDLX/6srzginWCOwswDtoI/gxHekBlsmnnHGx/ktZtbLLGI5N0MldIoB4JUzBkQAAH4uOoF+OL+SL0rV6mvBWpvTB8Ny4nO4x6vQ2uTjJc8nqwsp0W/U5f4wSIiGrtojEmME/aZ1sBSMtJta9ki8CClVdmgWB4R8DXcTHV4uiyceA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(54906003)(110136005)(508600001)(66556008)(64756008)(76116006)(66476007)(66446008)(66946007)(38070700005)(38100700002)(82960400001)(122000001)(6506007)(7696005)(52536014)(8936002)(55236004)(71200400001)(86362001)(186003)(26005)(9686003)(33656002)(55016003)(2906002)(8676002)(4326008)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5l6KVzlvqk/JS2u59C644JJCP8EU+38GtOqpwZUbgSfTfhjRrBzkV9oBtrZm?=
 =?us-ascii?Q?9bbFpZsyG/Q1M5RfcbcUmV053wbw16Wk+vzWHr5RtXF4mnCWh00259RjyvfC?=
 =?us-ascii?Q?HPpnwMg6nUTpGmOHNZtnyhmPhbQB+JU+R6ANU1uCRSu6J9YWcHdz5JM7BP+a?=
 =?us-ascii?Q?GzRbeEu4NS/d0jXSCcJEe1sHcNTGghdNZ8GvpVqDL1XdPdsCUjJOdZn6wKm5?=
 =?us-ascii?Q?7TBNS/7piT8PIKxIqPB1ErMTZrf5n+PPvH/Lg9He5DxcK7ExD+IlQ7XJV+PY?=
 =?us-ascii?Q?JoYbzAhPipXr3ZuA4XXfA93i10Ns5tqEmOtDTmy0V5Q7X0MF7lKmscgSORKl?=
 =?us-ascii?Q?O4/rXJvEdWFuE/FFN853Aa0/Dk8TN9W9xkTykW/5RAEhZYKYjE0lPYGCiQyL?=
 =?us-ascii?Q?NQjyDgyi1f4Ef3+Zk/AdlN1KOtvIvYqN65xItZxO0TwzlGyKWWH2N9sFsPBm?=
 =?us-ascii?Q?XU9AhhoJwOQKXy7n1Iehj+jPh415rBBZacpLkgRggb9ppEezWXkCRQ46Fvnv?=
 =?us-ascii?Q?1VhW+2BwbIP6jz3iR60SPceBQTH3Xd/aHufb4FDMtmIbzOukEQjzEMfp8SWB?=
 =?us-ascii?Q?zYGhH9mwDJdGwJWRl7PUkhF12hlf7ygHDaDNGyiWRDm/Z71tlVugE60XfcHi?=
 =?us-ascii?Q?ER3lrbvDc1mDHGPHZCUoUBoAX/neh6k2AztVqjFZnuoR+Aoh8mLNIPlQiQDi?=
 =?us-ascii?Q?f+DZCRN/idY2MtfVcmrjqO1VSC/xsO8YTjd2aIhWV+ogkvpC9r8SasqvTHFa?=
 =?us-ascii?Q?WFjokP20J31s6oykYQiYri3cyHf6fEqh/49iyGY3seYd1UzI0rp7hH24kLI2?=
 =?us-ascii?Q?n3EPE+wjtONWb7gU/OYS8t6yoEL+zOyGJCZpygmV5Q63/qv3XBNOGoww6rwv?=
 =?us-ascii?Q?e32h3UCpnKTEeg5FSy7oKc/QV9AsLXCjxCGcwQ42qAz5X0WXxbsD9ywZfFiy?=
 =?us-ascii?Q?vy0bGVsP+mnVEmluF6sFih/bgWjB5t/OACsNF4uB17P9kxR06Q/nj4sqSnBf?=
 =?us-ascii?Q?Mz366vhkL82eUU0qJTpdLljsPRvzk1/+9qY+OQ4ihqWZ6O4zjgHuCSs3pidp?=
 =?us-ascii?Q?fx++NWxqK3KXZFIBjnKKurheb1pEObsvWfrr2ftzJ7xgrA43zuMAVglR4Jn+?=
 =?us-ascii?Q?T2GBU5e72/IQON0Ia7Y/1m2zTJL1SDqRFrO28l7LbD/Qa+zGAkHwxC9ou95v?=
 =?us-ascii?Q?1LyYfASxMi7opl/Wqi/qhV15G7EpT9gfa8jFiMQjd2MRBStQky/sT/XqYy5R?=
 =?us-ascii?Q?O8543UwlSjrsm/Ht5XsNHDQQ14U7uoZLbHAhxml8eLjgvG1pqP847gPrPRm6?=
 =?us-ascii?Q?uTVLUCbbF6nC0FV113uyK6tiJHZqQBPk2hsq5KsNimZSW2OuC+kjA1RPK5Rf?=
 =?us-ascii?Q?lNXXnEUro1nof1lTNKPWMMjeJikhvETvd6wXL0ATFdFHMJx4pkm4J7dPpqFW?=
 =?us-ascii?Q?gcMfQrd6Zc2dyeJtXNixFmVhz2VK05BoJTi+zjIZQMEnSDgPSoCD3YLP6S/P?=
 =?us-ascii?Q?eIMU8ENF5OqTBt4wbHCzC6k7b/eSDnDZhiDlk4XroVpVLrliUbNfV8tPafZF?=
 =?us-ascii?Q?xM/7VKXOoLRBcR0ojB7a72t3SKW/+LqwXJ4w7HwWcSTVSEStGIPwC33jQBlO?=
 =?us-ascii?Q?H4OL2MGdq/EhFd/T8bbbzkrfWXzgmhvc70Zz9ZXD6o/CtIR2Jj0duaEbU2NG?=
 =?us-ascii?Q?i3yKu3OmklJ1RqESrYhxzU/FkNLpJyfUUX1QCAnjb+r1qz9AXFSEEm9UmCT8?=
 =?us-ascii?Q?Puqzu/KhDA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a86105-555e-42ee-f984-08da4511f345
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2022 03:34:22.4400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PfHSZv7WEvHi1zCmPWJurSpzOMg7dZ5vB5CxDjFAeawkD/DF6JAF/2KBgchQzDfoKFgFRRIeS4g30Ui8fTQjOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5201
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

> On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > From: Arun R Murthy <arun.r.murthy@intel.com>
> >
> > With the enablement of dual eDP, there will have to exist two entries
> > of backlight sysfs file. In order to avoid sysfs file name
> > duplication, the file names are prepended with the connector name.
>=20
> Fixed by 20f85ef89d94 ("drm/i915/backlight: use unique backlight device
> names") about a year ago.
>=20
This patches checks if the return value is -EEXIST and then acts accordingl=
y, but -EEXIST is not returned.
struct kernfs_node *__kernfs_create_file(struct kernfs_node *parent,
                                         const char *name,
                                         umode_t mode, kuid_t uid, kgid_t g=
id,
                                         loff_t size,
                                         const struct kernfs_ops *ops,
                                         void *priv, const void *ns,
                                         struct lock_class_key *key)
{
        struct kernfs_node *kn;
        unsigned flags;
        int rc;

        flags =3D KERNFS_FILE;

        kn =3D kernfs_new_node(parent, name, (mode & S_IALLUGO) | S_IFREG,
                             uid, gid, flags);
        if (!kn)
                return ERR_PTR(-ENOMEM);

So the condition check with not be satisfied and the backlight registration=
 will fail for the 2nd backlight device.

Thanks and Regards,
Arun R Murthy
--------------------
