Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B25B25EDCB6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 14:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D534210E4F3;
	Wed, 28 Sep 2022 12:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F92610E4F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664368288; x=1695904288;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=51a5jrELDH4Gs974UT/M05yXFvyK5BEimTq5DMIP5Bk=;
 b=mfSF72wGHPfPjDWb9UWpC8hDhf/ilemJt0Uo4kvAdY8+hVlsU8pBOgmd
 X2B2BPcFd56GlDUz+Ii4NWvRtQp/k7KmMhnDj7IlAMJehBzuWewJ+yodO
 Vkcv1KJ+HZgIk34ltAWqgBWFuBwxxwEWWpGKgEJ8TpGed+i7zhIkHtPGA
 B+0dF6sJFgSlkl/qEK6b0G/vR5LE48sMlNq8XJ+pXFW6br4v6Q+q2hGbs
 EeupFBaq1LFkHrPx1cxrV4ZcxNqLPArYB6PQl06bJACrBNk/KXxaOANxg
 Gs/M8/V9dHOxNvmgyvogc44QnxeicYyQJjxTZrJpCUpILde1mUwbz8ccN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="303071286"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="303071286"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 05:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="624130629"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="624130629"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 28 Sep 2022 05:31:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 05:31:27 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 05:31:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 05:31:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 05:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AHFqHnjdTjBF5B3qT3vbEIeGUYdGtmCukwUcyBmWdAsD1LqHMG1NE42nQbK0126yp/T7Jw6rdodUXSZXIRcwB06Y7NviRTH8HONweIGcqZBzSemMm4FsaaULKBhjV3y2ig5iAwndqAyp3xi3OJh1fallfj2GpPpC7xH8y/3OgCNXmyUsKzK1Mg3LuOGHw9NrH5DTZyARy7hrkFod8Kg7qd6XVkeiEpKRJGNj+LNzfI7XY8koCfKcvbDsvswUMOQh2MQTo7xXBnLsBdt5HUuUTLN6tjoVypxBdH5w6/AJtFQcuOpQoqlzOd4GbFJLwQi+N9PGSHoEs3wbkRcJ66k8+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FjsnGtuFbPlnO36xazWlwiMXLUlgoLZbv32+4IWpJTU=;
 b=bouzfl0nh5pkNxH2cxw8CghhWZnsD7D/FmjBwvkoK3ywOOGcIivQ51MpfWHSRHk+05ZV4J6oCmiUQ5h8gTPqyOSzLz7Td+XR45cxq7lDtcv7VSUtIvMLLsygaDzj3CdjQ9z52GUxJemM/d73AGMvD0iCIKLPSLkDc6WYNK3pgOkR4b6alQrzr9FJXL4BUMm8d8D9gEdZ94n/1zwN8bObzaaeXtxcTm+ZUMG+4TuaBhHjwZK8lGJMvJh/h3yjPsn6BhXOGTBikrt7MC+oAql/j6kvDuhCPPdDopTWj5tJzH3w9FDW69T1Jdy4+Yg2DzeY/0ukIiZY4e5WMCWBPavmgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 CY5PR11MB6389.namprd11.prod.outlook.com (2603:10b6:930:3a::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.17; Wed, 28 Sep 2022 12:31:25 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::e1dd:b01e:569f:59f0]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::e1dd:b01e:569f:59f0%7]) with mapi id 15.20.5676.019; Wed, 28 Sep 2022
 12:31:25 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYnOb/nXPKOQaUxEK3uszLKYKWSa2dtiSAgACS7CCAVuSFAIAABP8g
Date: Wed, 28 Sep 2022 12:31:24 +0000
Message-ID: <DM4PR11MB5248484CA0AF528B0B32AB2EE2549@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
 <YurbEfhNA53uoNlk@intel.com>
 <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
 <DM4PR11MB52486B936CD17F347D2B7070E2549@DM4PR11MB5248.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB52486B936CD17F347D2B7070E2549@DM4PR11MB5248.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5248:EE_|CY5PR11MB6389:EE_
x-ms-office365-filtering-correlation-id: e81cfd85-908a-476c-beba-08daa14d5bb8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZQzGJLJ+Lf4BRlO9zAERs57WsSzU7X+xYx5Z9u5RqjY2e2hq4RVSaw7wKderiqhiV4O2DVeiPbl8mY9l9rNxLgNqLblYE2mjx0f0pVtfZPqg00AyXPbPnru/reeB1tk5ON+IuQtDSLoLRYVqjcn9Yfo4b8zB3toW+ljcAG36ZH6/AQCkXXtOC0gFA74fcGpg04xDX/Ft60EyT5L2Q9FghPPhfjgk64l8P2T35VKb/NqVIF/i9c25UpnCYUED6FJH6bvMP5qmH3m12vFKvjETCeAtMBtxbiNCgBS+boqQPpgLbz5A05osFYZ6oLuMqH09c16+4JuI7m130KDN9aQ163RNXEjn6Kyl3WV93BeKPaO6oAF2uzjCZX1S7dy/Q9+cjAL2Ux1KN3yFaQE2ytn3jXz19MweuE28TlobgXa7ojU8T/xYT5L7jSmrfb4PYhqb5Mg6WTJ3UjDddoqaU0I4Gx+Ho7O8quH+uN2ABW55W1tXv85V8SJrTiWWLEtrGPmT18TZTmauRV6mPlBQzqMUlbsLegMN+bWRrqE7YmFc79VRYwuZWQlJ5YE6ji+Yl/dHL1DlIfPWHw63mg7A+P1+wDG7soiG/n1cN4m0cslkGcSi9fyNaWN0nLGldKqLAF/ZtvuiyhiAJufVHD5xlK2FuKxybat/G8C9Gcqzm9epHj7BmcHom0VKoHAB0q1nUCQ4V+BWJy7KFUdh91tzU7yBNA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199015)(8676002)(55236004)(53546011)(6506007)(7696005)(9686003)(26005)(71200400001)(186003)(2940100002)(316002)(2906002)(41300700001)(8936002)(5660300002)(33656002)(52536014)(4326008)(55016003)(478600001)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(110136005)(6636002)(54906003)(86362001)(38070700005)(122000001)(38100700002)(83380400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wegyrI0HwPMCQqqpTSAYoLW7L33gkRtr6OOSTwGOvDRB4NltrfE6pg/uyjC3?=
 =?us-ascii?Q?c6S7FfrMoW2t0lStn4L41ULCAqjB9sN7S4sNdJc5W1y6BO4668jegdDXcChp?=
 =?us-ascii?Q?bUABj2jnZsdHqf3/IEfrrRfqVBOTddpIwtfGCYY4MzSm3AJpi++ijGY3vTB2?=
 =?us-ascii?Q?CW4ZdIS5dUWAbaSsM3kiMkR8VJ7vLjXhB573CBu8NkmfyD682xhbftLJvU3m?=
 =?us-ascii?Q?B8RD3cgUozmYx9kbOoJUfSQcdJcUsT1T5XF8+bgZ/ZcqXzC6yAbMrgQcHqru?=
 =?us-ascii?Q?Ym/l/qbxSxet9KV9DQicZhYH7hUhUC5JOqBgnL7w4QezJjK+1M2XvjKcdxgF?=
 =?us-ascii?Q?UGVU+PDMPemC395Fg/3yWGcDxtXBniuMqUxPlMXn2dnRC/LWL/xrtfH+a9yZ?=
 =?us-ascii?Q?W6ONCENguxskVviBMJotVkAHWX07LPZYLIyp3ZAP3PJFwk/wj/fnXmuAuCIl?=
 =?us-ascii?Q?teDkpHwadGyZxntis1dkL7qjofHdW7wWkb2uS+hNvjflvKLyvpOcWYPHbwxs?=
 =?us-ascii?Q?g/uhqDafhBaGhNCrIROcc6RCf9PdB5hikazs++cDtkGuFW3HfaGgbuBagyni?=
 =?us-ascii?Q?wfSxcEZAbNgh73tKXHE6Dq6ttleBGWcLYvpg2BlnPPZ2y7UVu74CIZ7Ahbr2?=
 =?us-ascii?Q?WsEwCjfDdJJL9vXlitbLkZbP8ZRzFJDxooljWdS0cKa0HV1eRg2zC5dFIZwq?=
 =?us-ascii?Q?3ktV3vxK6mwFv6NNA+iU4RWV1z8Q38FrdfqaSFW0ez4m6R6iQis5QxLMUHpV?=
 =?us-ascii?Q?mIqCt+JnnuzJ7DyI2z6rZkoZzwwPwzW7rbwxEHE+8kR3wSrAPBqXXY0JDbhA?=
 =?us-ascii?Q?rpeEW5wxyaVP0Kw/rXIpUS+Jeg3h7N6eQDKIyyH2obXEeShhKvK2gO8gRWFI?=
 =?us-ascii?Q?WRPFte9xYohr1h+d0y0YCWO8kVM3n+NbOQAi/08+WKNKziVX9SOtQmLx5GCi?=
 =?us-ascii?Q?ctY0Z9S821nr04Sy4ZDh5MXr9/+0mTVfqrATTdUbWHrvL2hzCMmByfSESpBc?=
 =?us-ascii?Q?6sPwtJHV4Fa9H91htjUQew0XT4d0rskszDYscvRjs4KePwm8cWfuApVVjvB0?=
 =?us-ascii?Q?W8+GJIXILqPsLyq3Od9jThlyA/yVqgExvGXBd4sX0dAdSSHm/M8tWWeQE8+1?=
 =?us-ascii?Q?PwCYLeCbaf8X4xw+ZnjlzaQkmiLhqJINQE/eOmHmo4cdw8FqUp5BuO9+bmua?=
 =?us-ascii?Q?3+ogItiiBVBI74iDWDQzZti8WhYxZW3HXDSV0n/i3KtooZHCj3w1iDnzvqkI?=
 =?us-ascii?Q?xTYYHmPdPnstDkdrdfU9PPLbKwE9Miu+d29fG+9LPcZnAOVPFD768R+AvZEe?=
 =?us-ascii?Q?ndadLUmIXLCSNYJakK3H9Jv1gfh6SGXckYmn0SlJ6uR3Mn8B8MBwmZGp79y9?=
 =?us-ascii?Q?yFnWF9sok//9Iu5jVPJW/3CEyykb8Bw43mOzUsy1rni9O7jgFgO9R2+ALpec?=
 =?us-ascii?Q?TR2C7uW6VJtmfd/VWTPbUtplZNYOIv6pC88Xbicfjw6Xfv6wlVkEj1FQ/T7/?=
 =?us-ascii?Q?5vetHACXdLPgXQbMklSKxklWTxuH00vYhGsoZQhebSnBD6vERCvhWrmK7fel?=
 =?us-ascii?Q?Bs8ks5mdoS6MJF8E2vZMJEh4MOqfzEIzKFxEQAQV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e81cfd85-908a-476c-beba-08daa14d5bb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2022 12:31:24.9265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A51cn0wjqLCDLeQyuElYxGDwdSTCgB6sJezUl1038oFRZ4Y1ny4wduWfLnoAgVKO/G5O6/Mso2Btuh3/7XLruQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6389
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+

> -----Original Message-----
> From: Tangudu, Tilak
> Sent: Wednesday, September 28, 2022 5:46 PM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Cc: Wilson, Chris P <Chris.P.Wilson@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
>=20
>  @Nikula, Jani,
>=20
> As you know we have reused i915_gem_backup_suspend,
> i915_gem_suspend_late and i915_gem_resume in
> runtime_pm_suspend/resume callbacks ,they use runtime pm helpers
> (intel_runtime_pm_get/put).
> These need to be avoided in callbacks as they lead to deadlock.
>=20
> This can be done in two ways
> 1) push runtime pm helpers usage at higher level functions,
> Which requires code refactoring
> (https://patchwork.freedesktop.org/series/105427/#rev2    is partially
> implemented following this)
> 2) Add is_intel_rpm_allowed helper and avoid the runtime helpers
> (https://patchwork.freedesktop.org/series/105427/#rev3 is completely
> implemented following this)
>=20
> Hope I gave you the context,
>=20
> As per your review comment in rev2,  the below is implemented in rev3
>=20
> """"""""""""""""""""""""
> v2: Return -2 if runtime pm is not allowed in runtime_pm_get and skip
> wakeref release in runtime_pm_put if wakeref value is -2. - Jani N
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> """""""""""""""""""""""""
>=20
> Rodrigo and myself want to trigger a discussion, if 2) is a proper approa=
ch or
> go with 1) which requires lot of code refactoring.
> Or Is there any way we follow 1) with less code refactoring.?
> Or Do you think there is any other proper approach ?
>=20
> (Please note rev3 is not clean, d3cold off support need to be restricted =
to
> Headless clients for now , we see some Display related warnings in headed
> case ).
>=20
> Thanks
> Tilak
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Tangudu, Tilak
> > Sent: Thursday, August 4, 2022 11:03 AM
> > To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Cc: Nikula, Jani <jani.nikula@intel.com>; Wilson, Chris P
> > <chris.p.wilson@intel.com>; Gupta, saurabhg
> > <saurabhg.gupta@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added
> > is_intel_rpm_allowed helper
> >
> >
> >
> > > -----Original Message-----
> > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > Sent: Thursday, August 4, 2022 2:01 AM
> > > To: Tangudu, Tilak <tilak.tangudu@intel.com>
> > > Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> > > <vinay.belgaumkar@intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>; Wilson, Chris P
> > > <chris.p.wilson@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> > > Gupta, saurabhg <saurabhg.gupta@intel.com>; Gupta, Anshuman
> > > <anshuman.gupta@intel.com>; Nilawar, Badal
> > > <badal.nilawar@intel.com>; Deak, Imre <imre.deak@intel.com>;
> > > Iddamsetty, Aravind <aravind.iddamsetty@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
> > >
> > > On Thu, Jul 21, 2022 at 03:29:48PM +0530, tilak.tangudu@intel.com
> wrote:
> > > > From: Tilak Tangudu <tilak.tangudu@intel.com>
> > > >
> > > > Added is_intel_rpm_allowed function to query the runtime_pm status
> > > > and disllow during suspending and resuming.
> > >
> > > >
> > > > v2: Return -2 if runtime pm is not allowed in runtime_pm_get and
> > > > skip wakeref release in runtime_pm_put if wakeref value is -2. -
> > > > Jani N
> > >
> > > Should we have some defines instead of the -#s?
> > Ok will address this.
> > >
> > > > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/intel_runtime_pm.c | 23
> > > ++++++++++++++++++++++-
> > > > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> > > >  2 files changed, 23 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > index 6ed5786bcd29..704beeeb560b 100644
> > > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > @@ -113,7 +113,7 @@ static void
> > > untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
> > > >  	unsigned long flags, n;
> > > >  	bool found =3D false;
> > > >
> > > > -	if (unlikely(stack =3D=3D -1))
> > > > +	if (unlikely(stack =3D=3D -1) || unlikely(stack =3D=3D -2))
> > > >  		return;
> > > >
> > > >  	spin_lock_irqsave(&rpm->debug.lock, flags); @@ -320,6 +320,21
> > > @@
> > > > untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm
> > > > *rpm) }
> > > >
> > > >  #endif
> > > > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> > > > +	return rpm->kdev->power.runtime_status; }
> > > > +
> > > > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)
> > >
> > > why not static?
> >  We need is_intel_rpm_allowed for rc6 helpers , the helpers use
> > pm_runtime_get_sync, To avoid lock issue we need to use it here too.
> >
> > See this patch " drm/i915: Guard rc6 helpers with is_intel_rpm_allowed"
> >
> > >
> > > > +{
> > > > +	int rpm_status;
> > > > +
> > > > +	rpm_status =3D intel_runtime_pm_status(rpm);
> > > > +	if (rpm_status =3D=3D RPM_RESUMING
> > >
> > > I don't have a good feeling about this. If we are resuming we
> > > shouldn't grab extra references... This seems a workaround for the
> > > lock
> > mess.
> > >
> > > > || rpm_status =3D=3D RPM_SUSPENDING)
> > >
> > > and when we are suspending and we call this function is because we
> > > need to wake up, no?!
> >
> > As we have re-used i915_gem_backup_suspend, i915_gem_suspend_late
> and
> > i915_gem_resume , These functions use runtime helpers, which in-turn
> > call  runtime suspend/resume callbacks and leads to deadlock.
> >  So, these helpers need to be avoided.  we have added
> > is_intel_rpm_allowed and disallowed rpm callbacks with above condition
> > during suspending and resuming  to avoid deadlock.
> > >
> > > > +		return false;
> > > > +	else
> > > > +		return true;
> > > > +}
> > > >
> > > >  static void
> > > >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool
> > > > wakelock) @@ -354,6 +369,9 @@ static intel_wakeref_t
> > > __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
> > > >  						     runtime_pm);
> > > >  	int ret;
> > > >
> > > > +	if (!is_intel_rpm_allowed(rpm))
> > > > +		return -2;
> > > > +
> > > >  	ret =3D pm_runtime_get_sync(rpm->kdev);
> > > >  	drm_WARN_ONCE(&i915->drm, ret < 0,
> > > >  		      "pm_runtime_get_sync() failed: %d\n", ret); @@ -490,6
> > > +508,9
> > > > @@ static void __intel_runtime_pm_put(struct intel_runtime_pm
> > > > *rpm,
> > > >
> > > >  	untrack_intel_runtime_pm_wakeref(rpm, wref);
> > > >
> > > > +	if (wref =3D=3D -2)
> > > > +		return;
> > > > +
> > > >  	intel_runtime_pm_release(rpm, wakelock);
> > > >
> > > >  	pm_runtime_mark_last_busy(kdev); diff --git
> > > > a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > index d9160e3ff4af..99418c3a934a 100644
> > > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> > > > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> > > > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> > > > intel_runtime_pm *rpm);  void
> > > > intel_runtime_pm_driver_release(struct
> > > > intel_runtime_pm *rpm);
> > > > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
> > >
> > > if really need to export please follow the naming convention.\
> >
> > Ok will address this.
> >
> > -Tilak
> > >
> > > >
> > > >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm
> > > > *rpm); intel_wakeref_t intel_runtime_pm_get_if_in_use(struct
> > > > intel_runtime_pm *rpm);
> > > > --
> > > > 2.25.1
> > > >
