Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0745758C239
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 05:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F284A14A873;
	Mon,  8 Aug 2022 03:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895D814A87B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 03:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659930939; x=1691466939;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Vlihymp0Rbc0pfkGbe2BLkJ88vpM5eIp3cZ3jgribaM=;
 b=ULR2W9aNNcCd13esL7lSrpD4UGXWnlzBh7H2LZgyrGo44IKSjpZnQ4mL
 i1TCgxg8/jckssK3HUEFNFOO5ZcqOjJDDlqwdbximYuItYltZKxYTIA4m
 dlOSNgkOTxXNfemaNaYsb2aH6F97oSSHOnbk+Vc0FLagIxTd+f43rqId6
 h3Xn5wiDnv/Xo8z8aSdV8ewvqqKUejJ2yBjHbKGxutCLO1NWmRHBuvT1W
 7EeHIexyYMy2elTkhF594ZJkrcQ9ECB2pJua3mE8XGs04r8ZTSrm0NgF8
 vpp+6ID1g8QpS93WFhQQVj/lzx5SMGhyXcnf4QXDtqRC9EzYXjyV33ZmF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="376789613"
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="376789613"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2022 20:55:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="663755865"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 07 Aug 2022 20:55:38 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Sun, 7 Aug 2022 20:55:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Sun, 7 Aug 2022 20:55:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Sun, 7 Aug 2022 20:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZkzMuwcZjgJbtetiInfBfrHxmmbJyWpdhxWZ0TK7Dwsoy51RnRNPKiXsuQQPNDC9aK+bHBnZJRxTHViV1rHCQk2AQzQ/FVVwj+Wzb4DuED4hjl8oK5JEetzBfWY6ATUD8v2MhJKvwy4e02DcjupQgVzRGzFf/USA7pToDKrLMHnzY10VQBIhQ1kBIDwnkIVmsPQZoG0sNqZfl662efjSFpDxVt82CESvkFSU4enhJ368nLD1Pjx3zy5UzARpXhvcY+V9TE127W6JUqkSL70xMszQs2JeEfAhWPo4lX8AZo1qcU6w6MJ/L3f+HPVImiMAV5UAnboJwLFqSf8nYa9uzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q7s9w1HwuuIxV5U/C4BXNUq8IZflaENKgTuX/0P6GiE=;
 b=ITzDsIxHLlCxnhvTJayELpLVDhhJjN2tUzz3OICk4uj9G07morZyC1Lwj7HiI1a8Sd8jW+VeYSnnSQKxTUwcqwvP0bydjR0uTlZ9AtWnbgHBNFuTI0WrSuVKDi0Q5gp1jeLe/5YaLjYjAVvg1wJHtaxrMCL8daKEQbxxnapgVL/oN2suG0MRcO/BrdMpbTA/vF0ps42q79bTDcRnczwTmBA+WvcZs/P+N78xCXs2LOMJJtBmZ5LuGSW6fiflsgsENrcDbDkLFIwm8mYD+U91jNwhcDJFlGaayzn04YALKfoXtKnUVrotcf/1fTMclTSHZatPZfAk9M92MEOQbnmkgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.20; Mon, 8 Aug 2022 03:55:37 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 03:55:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915/display: add support for dual panel backlight
Thread-Index: AQHYpxHxLhgyy+9ly0Cu9FgOeCjM2a2c9CAAgAA434CABznZIA==
Date: Mon, 8 Aug 2022 03:55:36 +0000
Message-ID: <DM6PR11MB31777312E8E8ADD233050626BA639@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220803082010.2952698-1-arun.r.murthy@intel.com>
 <20220803100936.2955769-1-arun.r.murthy@intel.com> <878ro5qwoa.fsf@intel.com>
In-Reply-To: <878ro5qwoa.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 57467af9-3117-468d-9701-08da78f1da0e
x-ms-traffictypediagnostic: DM4PR11MB6477:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gY3KE0OAqNJOC9SjD5iB6XbjzHxAgGvuaGwP+VzWgJOYCYHEkH+o9gJ5gdASANiPE5Aqzy+Sg1KtssvdbpMOUdpMHOdHI1Ku4DkezHRMSIcKjGy9inOrlzl+azJ+ZtQyssRqF4k5K0XkADw8l335T6oLnWzGQvX+hi0UAuEj5wQ0FYZOs7UxUGuENIvWUsIOF8JahdKaWkI1k4LoCZq4KpqQ3tpblDuykcVRSZqONR9/y3GFNslBu8kvN271EGIrv0WANMlCPEKc0WRW8tPvHMvfCX59q5trMWd8v1s3TspxunX5+mkyXQxAztnsTXHdFSzYOaWv1W4KQJbxdc71BT/zVNyOtpfhIwKFCKGvoSMiLFxuDSjJNMPVszRa39hWXuNT/uY7iYel/fvAo7W7Q5eRZ3v/wPbCtRoczgG+M9AaYUn43zNqMmUP22W4tfoMsxzDlR4EB6M6Hy3eydYkACts+c/CzQVWgsmgAlKvbYEWGW8r4pLAy0Qe81ZOWoNc+JZn5vUbqOTUC0JDCiHhhvA38HRfd654PeGilakyVEgVKGHkmFyk3gx1cXOK2LqLg3T9BTniq/9Dst3un3EDvijz4LzxNX7uKoAgnDqBt7QDH5L6nMxIdHFAyNfkwTdBObonx4dnnjzbKlpRLE8DygXoS5UKCfwFngcR6il+gOB6dti4AHFlj16aQ1GUVXOMQ334byLC4v6++gMqu0fXN7RXJ6x4rEupO0zGSZkky7HE9qlNCN7bVm/0QHKjZCJhYR1pImCpCgDqmOJEcirqhf6HTeiAAHI3/aMsVVOGogu/7+yAMBnJbYaNGsZIhJga
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(39860400002)(396003)(366004)(376002)(478600001)(2906002)(122000001)(83380400001)(9686003)(26005)(186003)(33656002)(41300700001)(55236004)(53546011)(6506007)(7696005)(55016003)(316002)(110136005)(38070700005)(8676002)(64756008)(66556008)(66946007)(76116006)(66476007)(66446008)(38100700002)(8936002)(52536014)(82960400001)(71200400001)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+GxXt2wqFFEv8UN4FY2qSKoucm4biZDga4hjRY7miesDzoCZ25/l2alyLCqt?=
 =?us-ascii?Q?valWiZb5T5WWsWkzaiiNiToax/ImGhLC7f1za4p6idNvJjwbqzTXmp15+NCz?=
 =?us-ascii?Q?SaVn2l4ie2NAL1So6PL+VYIxDyZEEGFWLFcsz37v7Iy/38kWifLXUfmi+aQB?=
 =?us-ascii?Q?E+is9DGvU6PDrWcDk+SR1GwtH5oJJd4mNLz0UCqhQJGQ6Br1Pu+qdojpk4T9?=
 =?us-ascii?Q?mpsiH8VdMn9L62tN3ROUcIGNjxIbJDyLAhte8XAXd6/meQp2PLJsgidmz1xW?=
 =?us-ascii?Q?GetWGleyTI6hj6JSryn5viTeNY7wS3XsDVLvUXkSUbLc2M319qj2UDVA06D8?=
 =?us-ascii?Q?pw6n8/q4+5oDdFguV2Tq+pf82d/COaKUubP3JjFsgrHwhUtOQ7V8I2ZHI/WY?=
 =?us-ascii?Q?rEialWiPu/DaX6MRrT+K7/TFHqI2r1Ty1EF/1Q5C+LxYPqyrKso/934FddFW?=
 =?us-ascii?Q?kGMYA+i14AnXnqsNkjZQLs0rHIoLmZS8FZREAOnMrmKXOxHuD0Bx0JfZvi6q?=
 =?us-ascii?Q?jVqWHAWN1KvOzLhcbGmk7w9PzJFs6jjWTg9X5+ZYqpC+mmAqpNcaNNQqQYLA?=
 =?us-ascii?Q?RI30RkXYUdT+qJhN/6u8fyDEVph85cdHkdZ4O19VhnHUrt/8H/c4bJz6xznd?=
 =?us-ascii?Q?yej1KnxZ6JfYyxg0LzVylFspKoyBIou1GC9pa6xVO50oASmBneqed/7TjvAD?=
 =?us-ascii?Q?Q8fNVj1OwA9QXlZ+AUNWSiJjuWoso6Vln4wUpcXdT/3R3jwxZokOrsPexGqB?=
 =?us-ascii?Q?iW/Lpw08IA3XoiHarxrYIulSg5cDTXu7lexrwlwsSPEycO7R6eJ2DY2f3IjZ?=
 =?us-ascii?Q?al1Y2ZZkPJP73pKcPDlUlXPLaEgZ3ExU3kwDA+yWYySFkZ4xMTQBcfpnnCNV?=
 =?us-ascii?Q?O7hB/XySVEpnarwqVIlY5j+xETMzyuqvFU9DqnZ3A28x02a6z6m04CvfNzOy?=
 =?us-ascii?Q?nnAa/UahuRl0kkuuHczfrvogaAzVeZRFFneITeeeymtfcg5Usuf+97n94i9N?=
 =?us-ascii?Q?PNHZPFUx8IVIFa1Epnj2XCczUCl352Ov1gS7/87QPOgOE+QfDBJ5F7IVeILh?=
 =?us-ascii?Q?u+qxVVNuIFsTm7tSJkW3pLuKk4Wi8KZXn8T99QQJYW/hDkPQbYsdQi2o5NFQ?=
 =?us-ascii?Q?lkHV0N5AqOOla0WCM5GfQDylgr/lXz/QnNtT8RPEmVltTwWvZ5OvRxAnmqoR?=
 =?us-ascii?Q?lXgxMM32lMeO921nN1xC33ovrvB3BTU5lxGCJSaDnxUQtFCwESIABqGFLPUg?=
 =?us-ascii?Q?sxFjStTrk/fkRRNTJlOuxXC21Xnr9BgH69nAaAgaWA6i/YuVne73w9UA0Lsp?=
 =?us-ascii?Q?LkR2urOSOVM4hSf8ezR0M1XsLiE1rF0nQSHTb09O/jb/FWGGPuUOtXVaobRe?=
 =?us-ascii?Q?sHZt9dV6XJCeMEb/20xKuiTRxzQ14t+snO5CgHmX2Ic2G0yhk5rimnxPuvF2?=
 =?us-ascii?Q?8k5Q6rIYmeuzzvM4mwxEqO4pUI1OoYf5CarySj05YhKJBhDVYbQTaRiPjCxI?=
 =?us-ascii?Q?h82cb29q1s8Eb4IafP8qs6dXr32carc2TPYRe8h46MVqVFI6UjXttPaTPzo6?=
 =?us-ascii?Q?nl4pAQ2RTN6n7kvNourLYDBWPnxGwUGrnp/Qgyb7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57467af9-3117-468d-9701-08da78f1da0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2022 03:55:36.6562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gDQj7E1hGG5dMByXNnuhhHqXfO8yxNEIiUis8PYSzM7tbqA7aXxYRMwWmDXqPFfvR6+vRYrsvwOGCfh5Cp3AOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display: add support for dual
 panel backlight
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, August 3, 2022 7:03 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv3] drm/i915/display: add support for dual panel
> backlight
>=20
> On Wed, 03 Aug 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
> > backlight device names") already adds support for dual panel backlight
> > but with error prints. Since the patch tried to create the backlight
> > device with the same name and upon failure will try with a different
> > name it leads to failure logs in dmesg inturn getting caught by CI.
> >
> > This patch alternately will check if the backlight class of same name
> > exists, will use a different name.
> >
> > v2: reworked on top of the patch commit 20f85ef89d94
> > ("drm/i915/backlight: use unique backlight device names")
> > v3: fixed the ref count leak(Jani N)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_backlight.c    | 27 +++++++++----------
> >  1 file changed, 13 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index 110fc98ec280..0f93b2ba907b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -971,26 +971,25 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
> >  	if (!name)
> >  		return -ENOMEM;
> >
> > -	bd =3D backlight_device_register(name, connector->base.kdev,
> connector,
> > -				       &intel_backlight_device_ops, &props);
> > -
> > -	/*
> > -	 * Using the same name independent of the drm device or connector
> > -	 * prevents registration of multiple backlight devices in the
> > -	 * driver. However, we need to use the default name for backward
> > -	 * compatibility. Use unique names for subsequent backlight devices
> as a
> > -	 * fallback when the default name already exists.
> > -	 */
> > -	if (IS_ERR(bd) && PTR_ERR(bd) =3D=3D -EEXIST) {
> > +	bd =3D backlight_device_get_by_name(name);
> > +	if (bd) {
> > +		put_device(&bd->dev);
> > +		/*
> > +		 * Using the same name independent of the drm device or
> connector
> > +		 * prevents registration of multiple backlight devices in the
> > +		 * driver. However, we need to use the default name for
> backward
> > +		 * compatibility. Use unique names for subsequent backlight
> devices as a
> > +		 * fallback when the default name already exists.
> > +		 */
> > +		kfree(bd);
>=20
> Okay, this is getting tedious.
>=20
> Please think about why this kfree is wrong.
My bad, this will clear the existing backlight device pointer.  Removed!

Thanks and Regards,
Arun R Murthy
--------------------
