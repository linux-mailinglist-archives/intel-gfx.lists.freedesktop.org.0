Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C12C622E8A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D294D10E5E0;
	Wed,  9 Nov 2022 14:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD7410E5E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668005797; x=1699541797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8daEXkaiXQcK6k258iyxbdczW8PsAjb6ZgvWRiaAGNw=;
 b=GHRiLbFBdzU8xpYUK0wJ+x11YTCCOlT+X0yTTZnRoboGq+vZ2IUF6Ysv
 Vfl7KtGNKjkXc9goO2Ni4y0tsJ6wawBufAbdcLOpVf/f4CioPvn7ZPIM4
 28tVTv0/ba8uQF8DSRLC/LRTSVSEjnkhnWqCsPaq2UBUHwaRArNNQdF33
 FWSxz9S+kxji44Y6AeHsEwFGmgW//1knkf7t1ISuUvZKjWe6oq7lOteHo
 0jR/zlqNx7/edETOGg02kcLio8fFOs/8nmtxAmZtJOjtYoo5kDScXSHOi
 XqQhjlJphmgDIqcs5rsIHLLsTv7/pvlfhvCWLuI7J9FmB1GNDzCODJ7a7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="397287507"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="397287507"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:56:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="761900910"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="761900910"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 09 Nov 2022 06:56:35 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 06:56:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 06:56:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 06:56:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MwloV6BnbKLvcIQTgreE8CUWjiqZqQl45mXqzTrK8mmcwx5pzfLnhevISQ+LtawVmG1qO1DJoPl6rBXG2r5uTLP0yt22GjNBgPeSA7PgZiU3dVk1+gwXaaXp7qRQri2UuIEkKIr522iSh+fMxhCtDZPor1mpIRQf0T1KK3fRb+ysrD3Tv1Uh4VztIwCEcp9GiTBmgzrojqHYhmMhWgsIz8GhiiS1FP3gHG959OEjPJLeH7K6Cr9XdD6QzUijNIs/sO4X1WIPFSEMk58mquJxPFnbbrnYHUJ64dUmhgeIb/v6sQG/WswtJk8oYf+D2RlVKR/d1L+J6Bzw2lcp7jYJGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8daEXkaiXQcK6k258iyxbdczW8PsAjb6ZgvWRiaAGNw=;
 b=MA2a91xHaABKDNistamFrZKz72V5lbagB5+TM1dklgPIr3l9aMvtPJhyGGPu8/wAvRA/iJH9Yst+2NY4uUBbXPEHBEMEulVbSSjiYMLiNkk9CBdw8+yzlwlKONoxScbUi6/eDc7GjmFTXVYxbUb9uycpgQ8YIKO8A0thb+82eq/fLJWGeS7uiu7enFsRUngiOwwRKcb8N1iYwFg5MOFNei7DAQKv9oq4byym3rJjyr+3xZSHGhbJM4SksmVUaoMZy73qliAseUMP1wRZctzerd0p0pym06Bav/toUxxFKmalKbiy8esHwzegQ4sx+Hapw/BBDzSv0DNnhaNi4pl+uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by DM4PR11MB6041.namprd11.prod.outlook.com (2603:10b6:8:60::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 14:56:33 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::7453:9aae:a7d9:d71b]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::7453:9aae:a7d9:d71b%9]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 14:56:33 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>
Thread-Topic: [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
Thread-Index: AQHY7OzjTcnnu/ZrJ0SBOdEj7fo7Mq4oPmYAgAADgYCAAAemgIAJvOmQ
Date: Wed, 9 Nov 2022 14:56:32 +0000
Message-ID: <CY5PR11MB63662E95DAFF9E7D5D572033ED3E9@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20221031055117.1043830-1-alexander.usyskin@intel.com>
 <Y1+W5ipudusyL0NB@intel.com>
 <MN2PR11MB4093A0C8F12980AEFAAF02DEE5379@MN2PR11MB4093.namprd11.prod.outlook.com>
 <Y1+gQbGwHhY1U5q+@intel.com>
In-Reply-To: <Y1+gQbGwHhY1U5q+@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|DM4PR11MB6041:EE_
x-ms-office365-filtering-correlation-id: fcdc5df4-d0a2-4e18-8350-08dac2629771
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nE9YRolG67wTHbEVy4YkBXAYD+0Wox6iLwDrE/HyMML4fg7Z7E8ZsW5GFpSUK9UYFZ6R1K8ppordd2OgEgDu2CPc4nwan9nypRMMEq24gOawgwh9Cf48QGWagGPpp5XHTJ1JQiF6pwDmSk4gMG+gqAjHdU8nT8JT0YQUv4smat8CWXwqELzjfsIdPACpOdIV0W5ant9RK+J0ZAyER5eafiEqweOie8DBfWRNiZTCfmbzuPq0YZ6dEp3jqc+XKoSM5yOfZa+RJBWdBrYo5RU6Bbsw3u8p0IuFgktZ586BK2/nYPqYMUQrrYkeQ5YsYw5rKq+akQAsajmxHendDph/D91C8qhXzjbcmueKkpSsRYUzaUjgBINVZpr8QNq6bmI42PqUlJDCi9j0XM7FfEgj14RhFDzbsl2nxS70DkoywZgy17u+Sd7eZ3W5W8u2BHu9/Gf1heZ+uitfY9ZNmffV24H6Od+I/HZHvcXbXAeN6xiWKfwF9N65xlnHlK+grcDRDsM+pkJBVqSMGunZwad/ANRGHTW2Yit62RGE9LnoOIIuNogBes5CFeY+FtGqRNrl3Y5enes2FD5CUBL3kaYgVYRlC0smGDYpCbGLfV/G0DTgEDpIi7BRZteOiqvXUIFPH2lqZqztbnJS4MpczOO6cEPaJhPfhokhCZnDZ2K+qX3xgY3HetOlOfd2udd9ERSNNxwSbhDCtpkAK0ZPSaXueOH/K6lX3g3eKQuVqFWjfD492ktyK5n5mXIOssyVXQi+fifC+oAwliYE8B2ZcWir0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(396003)(346002)(136003)(451199015)(7696005)(83380400001)(9686003)(6506007)(122000001)(186003)(5660300002)(38100700002)(82960400001)(2906002)(71200400001)(26005)(110136005)(54906003)(55016003)(6636002)(8936002)(4326008)(41300700001)(478600001)(8676002)(66556008)(316002)(52536014)(66476007)(66946007)(76116006)(64756008)(66446008)(38070700005)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P0KrpOPMywZNzs+qz/qa86nw8XBlwewZKbcakSa23q9qveSi1hicmXOyYExz?=
 =?us-ascii?Q?x17CzmxT1yPtOxOyD3zsFW1tOsiy1D8sHFcicM4+ycoV5dOto9KI1AvBolWT?=
 =?us-ascii?Q?Q6CyV+TeJH4VWpnKhqwHVXGF24/nF9HSTT1u1+VFXYrwV3gziivE8t+DImnC?=
 =?us-ascii?Q?vNclW8Vkg5uIF0KsV822vlNlwI7LFDFNyv85MHWXwl5tLaMWmXy+vEoaUt/T?=
 =?us-ascii?Q?kootceSlxdPxK9nKFRHu+5FafgguhzRnSjb2GUTcrLa7yWcOf2F3j5oHkYwO?=
 =?us-ascii?Q?XFTnoLXs8uqQfPH2kJAaPX1P4cAoH5Bj+UUdhsiXqYYHAtdasPza6Qxj3Ffg?=
 =?us-ascii?Q?wsp5JzwOereyB5YTNxQhUqR2q3Qk6P/bEWbY81LOPAZN9NXHGPLqhKL2K6iv?=
 =?us-ascii?Q?KyWz/yFUSdK87EubC7WgGyxG/YqGqUKkuppne1EQ1fbBExjvtG1ZYPLVWFGM?=
 =?us-ascii?Q?tsaIgJgHVr5mkJqZjy/pbpnPnAZy/ZLUpZe72GYBJGwC5S6lUG+GKvD1eKAY?=
 =?us-ascii?Q?+fB4ApgHWbDfk5e38jK5MhqX1xv3Tkcz3M/yAtPgaxXCISYU0BkGM6YzDohd?=
 =?us-ascii?Q?ya7ZYdvMD+Ve+wcJreh23pokTMM9/15NLh2Fp5NzJNcfwxf/NaOX8RXVsEa9?=
 =?us-ascii?Q?leKD9zHdhc5XWyA4pRNBZQ2EBesctMDSn8AiXX+1unLGE+bIcc7DB+ST7fpa?=
 =?us-ascii?Q?VcCTR13lG/FHQvs/23CMolzU5CUW4pmhuu2EalmZ7buo0P9AeulU2rY3NQeW?=
 =?us-ascii?Q?M2/V8EOcy2WQpFOq29xTNmd1uXQ0erMCiSslwBoYwMvo2HRZpsaNzpXZFVxt?=
 =?us-ascii?Q?HBzj/1oAQOu4itLs9qRRUe/8UBNLVNAfvCdX0VY8PginxkXEiVscFjdG0PDz?=
 =?us-ascii?Q?zLb4g/pT67rlkc4DlX+D8l+tpJIopwhU/+QXDdnv8wijDL7upfbKGVg8BGV7?=
 =?us-ascii?Q?hF+eVLfvpKqgSqC35WoNJDaWDBQPdYSJGo12FM0e+BwMAu98UPvciSdMsQgZ?=
 =?us-ascii?Q?tDzp0Guc2I0fur7Bn1XupLaR4LI+kmBX4JmAsk6Hr0R5Doh9I4IzHB5tSR+E?=
 =?us-ascii?Q?S7QVMzgmqoxdjoi5xlNHVyk9lxVNZ1jLSsWK1oG7K+1biL7lQqnJW1w+sY+U?=
 =?us-ascii?Q?C8KTGnqdIdKMfaZ6GH3G1ft71WfPzKJ45/oSbwGwBSefQ2MrIvH/kJ3BrSWL?=
 =?us-ascii?Q?Ltea+WL00VhWnxJk147yCNmkSOhu/9n8RrJD0sbOlQzwrKsWrRBn01iXplkp?=
 =?us-ascii?Q?GKNI9nS5BaM4Bryvx+JmuYub147R/hCh402ktrzZNK5d7JYpxwTg9s07ZP4Z?=
 =?us-ascii?Q?+5nPPhhd/8AeqIEPisDKb6vm7kQTxLDenGSyjPYMhwy6nUqg7YbmptXnzMOR?=
 =?us-ascii?Q?Pu8f9jnPnsJ+FXc3L37MP1PmwaUB+oaqATjE4E30Bk399A59CHLv7cQVu39P?=
 =?us-ascii?Q?HH1+AKIG5zIv6mg5wU8wTIFKq41YxeXsFTrLqaG7UeFwAMR8BU9hcGKiya4S?=
 =?us-ascii?Q?SkMEt6NweO/cQ7GQFTBWsH4dn4ab1qIvw+yXErjYqHlcU0UyiJVzzZQ4OPOy?=
 =?us-ascii?Q?FClnYIJ7Eqypg3rHImVOYbxiIIyq9Oaqq5CgyDLTChHOq4UWNLxBwW5GNxaO?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcdc5df4-d0a2-4e18-8350-08dac2629771
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 14:56:32.9572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O0nxCToNwmH+IwaRH5LVV3v4Gs7Q07vEkaAwVT/CwcJfqRrx9yanN9xtB7QR1oxMPX3dZSoGI+b1xPsJ8yhgf9DfvIzYylHtljyJTfYelPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
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
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Daniel
 Vetter <daniel@ffwll.ch>, "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > >
> > > It looks to me that we need to move the gsc out of the intel_gt inste=
ad of
> > > workaround the initialization.
> >
> > The interrupts are handled by gt, so where this should go ?
> >
>=20
> Ouch, I've seen it now. But still this patch brings me more doubts...
>=20
> is gsc really a per-gt thing? if not why the gsc irq is in the gt domain?
> if yes why the one in the second tile not operational?
>=20
> if it is not a per-tile thing and only the irq is in a bad spot we could
> still move it outside gt and make the irq to be redirected.
>=20
> well, if it is really a per tile thing but it is fused of, do we have hw
> ways to detect that?
>=20
> if it is really a tile thing and we don't have better ways to identify
> we might want to do with this patch, but add a bit more information on th=
e
> reasons and also double checking if by avoiding the initialization we are
> sure that we are not going to reach any case of attempting to utilize the
> un-initialized gsc.

The GSC is present on all tiles but functional only on the first one.
There is no way to detect if GSC is functional per-tile.

Good point about double check, we have also interrupt handler.
Should not fire without GSC running, but better to protect here too.

We have code that skip initialization of one of the heads provided by GSC.
I'll utilize the same path to disable here, so that should be safe and alre=
ady broadly tested.
Will publish new version soon.

--
Alexander (Sasha) Usyskin

CSE FW Dev - Host SW
Intel Israel (74) Limited



