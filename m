Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 870637E7826
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 04:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDE210E410;
	Fri, 10 Nov 2023 03:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF4210E410
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 03:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699587523; x=1731123523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V8nmLaLLyBgLPPTvM09G2RUz9YQwVb5+p1HU7A9rH90=;
 b=PCaZtduJZsW9S8Gcycft1KxhddEjmp76tyk6LxrZtwOj7gXq9ud2t9Cj
 IK8bN0lSulJmaIhiaTduUATnJy1QvgdcF13M6Ae4yk69ra+bbh2e/2UHm
 vw2OOe53kaho8GWXfcyZR47wweycliEbqeeTUmJ+dsB+Ri6LCUUzTlqPn
 qaO8L+VeW3JdfDbrlljSHOjd+An+3H4pfe+CGQ57S7abj0k4cmWnroGrH
 HcNuCGPP6CfjDN9u82TYypWdJ0gAv/vfSo2IbPmEwKUrxhuNuAHz+uCYM
 7XdYGHsBiCTk3eJal63LwCnLmVQQkwe+ejF0+Am3yzZabKbNWgDnkxV90 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="369457914"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="369457914"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 19:38:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="763640285"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="763640285"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 19:38:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 19:38:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 19:38:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 19:38:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 19:38:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Us+5rwRd0Fv2kKuUeLoVcukPeE+Tp7pDJ+ldBec/hjWR1KqTnL6z/GhR8hqT+tSP+8qH5UUogwf5xBu73iNCKm3tE2lbNrtQQ8kVufIL0taRnYIqekJrfTk5Z0BhX6pFZHj9pRD23SIM7BraRC2EbNSVkJ3j5/zrqR7Ik6fw1w+gteBMHEzIMbMZJui8T1aiUyK/6rBR04ws4/Ub0bz/vmUK0vXCHpSPEeOqNhvcG0e5J02PCW+lvctvvclO1eC26p3FYgctkTZgZFduEl8zax5ECaxo18kpG3qn0Ur50mNzfKRgOcgyFQwmm2AJIbXUphCvM2HT+wvOV2jIipFWew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SM9kMN2kIYIpZtY1avSMmNqYla96IJ+xxUJkDDkXpaE=;
 b=bfArP1jKzB59gm0bg88PPzHdNo5UQZGoCgHEnPPR2aBe0xZE9SUw+y4vKYi2gItyOcDd76KTRXNqEjU0uJsSb6jECHY83AD4H2opHEeMIU2t1/0Y5zaueGj/v6XzN7MJ5up2WlC+dhC6r3b42szKUS0+DBwpLbot+dTnfZEWGyQ0L/YLUKkL+cjokXjLuBAQe78A5deAtSrLwqPTcqJO8RQDZ6Yi/6OxOlO+UULJFponxHD2iKae5AMRHSs6pzmcVDTK+UUQf9GyJjDHAjqywyLYVixc+KtLLNp1VIWwHYZX2RYjOljNwmyhUiSVB6gBk7i5opa+oX2XgRrvmY+uUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB7246.namprd11.prod.outlook.com (2603:10b6:208:42e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Fri, 10 Nov
 2023 03:38:35 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%7]) with mapi id 15.20.6954.027; Fri, 10 Nov 2023
 03:38:34 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Krister Johansen <kjlx@templeofstupid.com>
Thread-Topic: Regression on linux-next (next-20231107)
Thread-Index: AQHaEy4yYl7vLy+WwEGiqew6ES3+AbByc44AgAB0VNA=
Date: Fri, 10 Nov 2023 03:38:33 +0000
Message-ID: <SJ1PR11MB61296405021B3F44DC273F14B9AEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129508509896AD7D0E03114B9AFA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20231109204022.GA2073@templeofstupid.com>
In-Reply-To: <20231109204022.GA2073@templeofstupid.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB7246:EE_
x-ms-office365-filtering-correlation-id: 296d3d0d-09fe-4eaf-25f0-08dbe19e83ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f6PFL2zXyuqP2b3ejMe6jlYCo5nCcxtOqtMvxFqLd9P+34oBLG+Ir8b63qS/IsZoiyoLomMF2yjsdxrrjxtd5Ncoz2rNeEQp1itBAxxRZNYMJIl+Hb1pQ6/H1X02vx1o6o5PsfuKydwNX+sP20rm0LXUPlzmdHUNtN9uHcIhW5aFQB/K8/1f72VTd7UcAuIFp0powzRfUYf7y+nKIQfkIWwyZ723+GfSF+ipbbqYiwPyH7hw9GQX6Uu/GfC9IOBMr+7w/v5CLe3651ZUWnVvrVD6+837ud41RDn9rmdQCO1oThryKybS/+g4hWoUVmCuTrYyfOt5J28qBmL/f36ID3f11mS/xopeHXnt5/Zunn2yH6sk9TYQTh5tnf/rCrZbf/AeLYqJp2yprZgEcxkTDPJVIf34E6Ga6l5VXZux5sJnGu55LXdUNNloHDRndCKcnajtYrw4/UQtzo55FJ1npYn5NGVlLULSkiVuMAth1tOVDClYPh4CrKXyACJl/P9TCOY/9HZxloW4rOsAJ89amFlAvYQf5k2YTAE+4MYkDaZsl5R2Ri65IcsBmqitmgFlGcTlJbYVfgKka4tswLtKkZcihzGO85V3DC14QEPGTEo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(136003)(396003)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(966005)(54906003)(478600001)(2906002)(66556008)(7696005)(6506007)(316002)(26005)(76116006)(66946007)(6916009)(8936002)(8676002)(53546011)(64756008)(5660300002)(4326008)(9686003)(52536014)(86362001)(122000001)(82960400001)(33656002)(38070700009)(83380400001)(71200400001)(66446008)(38100700002)(66476007)(41300700001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uIzyljmM1BG3pti394syyWfs70dgSrc/vPf3DSJTL7gq1LUxYsPEB6aLJn/1?=
 =?us-ascii?Q?2LXLVfmRmHryxUxNin8uyB8XNoALguzsNxWxGSyl6fbrYur3xLHgJ9DXDuw5?=
 =?us-ascii?Q?9onh5sQAjuK7AVtOaxeRUXM7kmsRKpG3nlParJVNewj8ixBk43QA6Y2kguh7?=
 =?us-ascii?Q?/PmxryGNvLEk4KM5T4XNFwHdjdpmwe9QxaUKSC4BjjZvpIrQDTKP0ABIo7ue?=
 =?us-ascii?Q?S13EMu5JybAJNPL3CdCII9rK8Kqw0M83eBujLYdOIkJea7Fq5jxb5UeL4uGo?=
 =?us-ascii?Q?qRFcrQDtg9UDtsybeEVC83o+QQgcgz7vYFpOxTA0noaiw08sdGYFtTRTy8n/?=
 =?us-ascii?Q?1s9OqX2322WviAchUhwlHAbOCh2RMWDa38uF5aGIYGH3pcjB1hy0I1xnFwsQ?=
 =?us-ascii?Q?Ei6sFH75OSRzt6B8AJMrwfWzO4fJAAbz0tsBoT+q+1FVYqZj5Rgtx3VZJdCS?=
 =?us-ascii?Q?GxuDOReujZuW0az1vU1tgApZbvxNb9a0GtiQEN115j4DQ4a5Nk/wQP5RlphH?=
 =?us-ascii?Q?WUnb6dIW3Nb2dDxqHRQcMaf8DnE5PI2eOD/AFj8BpnReKQ0AII+IJJA0tmrp?=
 =?us-ascii?Q?ktby3ynN17zTYt11PuZQKcWW6NCvIuMwNI0vjVPfuMvQ8Gk4FzMSnroTPVvL?=
 =?us-ascii?Q?63+JnwDDnaDydKcJwikzAWK9ZBZJ4bvWQtR78nkbwPsbfW9hXG9s1FTZ0xkF?=
 =?us-ascii?Q?atEvpSqp4N6/UAwnxOSjeckfpwTTCpg9Wn0lmS4JoUxAANz42v2cpt2TLItr?=
 =?us-ascii?Q?mH/lGaOpnnjWfeqs8nRmLa/TxNkO/9BfE9HiilhqTtI6R9QcpHsM1h3Mn0zR?=
 =?us-ascii?Q?SBHdESq+MztBNQMe2Ftwih2RgwG7/z0cHfJ6wr4byU1xyZk1CQwVzeOh4KOB?=
 =?us-ascii?Q?+biFdvuAdNsXc9lDUK98zdYxXi560AgYBgKzM8fJnj0zdAQL6/8ZkMxfb8q6?=
 =?us-ascii?Q?RCDUbpfApzTDamVUzyfs8p3Lo+g76Mg9Tq3bYx1QkHffy+JwwXiccvtZ4jdA?=
 =?us-ascii?Q?Nlkd4HQAnXU5uhHS5UPcs+kYHEDGTfvkFi46qAPIyxACyQgvT1H42VydxwwX?=
 =?us-ascii?Q?f3tbunuC9ataj1PIaVnYJtGEZ5m8nFTrxWL0lBnGDnyj3ojjL4WYQlZFbmKs?=
 =?us-ascii?Q?Hy9NqsMeAqiD/BQo+ILzOPEB71/YHEjeURY8e2QQKpUDERb+ZUOCBQSE9UGV?=
 =?us-ascii?Q?mEk7M0U7HrnFVZpV9EJ9OKEW5PJGyMgDhFHnrjagswCHufT/4j8J7yJ3hpt2?=
 =?us-ascii?Q?wlgp2vLpSJ7ITONanNm2/3fYnc2oDz5tA/aM348wQw66ZO2SEoHA5W+Wr3fe?=
 =?us-ascii?Q?paDU+Q0Z2zcJLSUJqBNz+MvjHzeavruNQYS0d6A8LqkNT0NrYIfHX4Bs2Y74?=
 =?us-ascii?Q?QjfcuqYaH/mrp3mx3G0bakCeijPqBRcaT9032J5Hjm72pklvldWef5nUk10x?=
 =?us-ascii?Q?JGRnnsswS+yKNANa+9MB8A/nrQZo7iFXEK4ELBfr+Am3VAIfiBhPbEiU/JX9?=
 =?us-ascii?Q?7tJA8aHQMo1tGRiiVxcpyPUJlsXqEquDx7tPLiE+YVq1V6jX8H2rKeNpamfc?=
 =?us-ascii?Q?30OurJrEaddUQ8xazskYVnY/vtVjLW5V0aVVTDFkDI6DwZ1FsW8KkuoKNcXh?=
 =?us-ascii?Q?+w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 296d3d0d-09fe-4eaf-25f0-08dbe19e83ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 03:38:33.7208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9jXoGCVGhv542rqDWQ4Lu9NZKg1rwFotH2++PpApobHc1pDcMEy13nFeR6u9VfG2qJgXDP42huCbzlKfXq3G5xKlwn9nPePA5Y5hsmMqz2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7246
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231107)
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
Cc: Miklos Szeredi <mszeredi@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Krister,

> -----Original Message-----
> From: Krister Johansen <kjlx@templeofstupid.com>
> Sent: Friday, November 10, 2023 2:10 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: kjlx@templeofstupid.com; intel-gfx@lists.freedesktop.org; Kurmi, Sure=
sh
> Kumar <suresh.kumar.kurmi@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; Miklos Szeredi <mszeredi@redhat.com>
> Subject: Re: Regression on linux-next (next-20231107)
>=20
> Hi Chaitanya,
>=20
> On Thu, Nov 09, 2023 at 05:00:09PM +0000, Borah, Chaitanya Kumar wrote:
> > Hello Krister,
> >
> > Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> >
> > This mail is regarding a regression we are seeing in our CI runs[1] for=
 some
> machines (dg2 and adl-p) on linux-next  repository.
> >
> > Since the version next-20231107 [2], we are seeing the following error
> > ```````````````````````````````````````````````````````````````````````=
````````
> > <4>[   32.015910] stack segment: 0000 [#1] PREEMPT SMP NOPTI
> > <4>[   32.021048] CPU: 15 PID: 766 Comm: fusermount Not tainted 6.6.0-
> next-20231107-next-20231107-g5cd631a52568+ #1
> > <4>[   32.031135] Hardware name: Intel Corporation Raptor Lake Client
> Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS
> RPLSFWI1.R00.4221.A00.2305271351 05/27/2023
> > <4>[   32.044657] RIP: 0010:fuse_evict_inode+0x61/0x150 [fuse]
> > ``````````````````````````````````````````````````````````````````````
> > ```````````
> >
> > Details log can be found in [3].
> >
> > After bisecting the tree, the following patch [4] seems to be the
> > first "bad" commit
> >
> >
> > ``````````````````````````````````````````````````````````````````````
> > ```````````````````````````````````
> > 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5 is the first bad commit
> > commit 513dfacefd712bcbfab64e1a9c9c3e0d51c2dca5
> > Author: Krister Johansen kjlx@templeofstupid.com
> > Date:   Fri Nov 3 10:39:47 2023 -0700
> >
> >     fuse: share lookup state between submount and its parent
> >
> >     Fuse submounts do not perform a lookup for the nodeid that they inh=
erit
> >     from their parent.  Instead, the code decrements the nlookup on the
> >     submount's fuse_inode when it is instantiated, and no forget is
> >     performed when a submount root is evicted.
> >
> >     Trouble arises when the submount's parent is evicted despite the
> >     submount itself being in use.  In this author's case, the submount =
was
> >     in a container and deatched from the initial mount namespace via a
> >     MNT_DEATCH operation.  When memory pressure triggered the shrinker,
> the
> >     inode from the parent was evicted, which triggered enough forgets t=
o
> >     render the submount's nodeid invalid.
> >
> >     Since submounts should still function, even if their parent goes aw=
ay,
> >     solve this problem by sharing refcounted state between the parent a=
nd
> >     its submount.  When all of the references on this shared state reac=
h
> >     zero, it's safe to forget the final lookup of the fuse nodeid.
> >
> >
> > ``````````````````````````````````````````````````````````````````````
> > ```````````````````````````````````
> >
> > We also verified that if we revert the patch the issue is not seen.
> >
> > Could you please check why the patch causes this regression and provide=
 a
> fix if necessary?
>=20
> Apologies for the inconvenience.  I've reproduced the problem, tested a f=
ix,
> and am in the process of preparing patches to send to Miklos.  I'll cc th=
e
> people on this e-mail in that thread.
>=20
> > [3]
> > http://gfx-ci.igk.intel.com/tree/linux-next/next-20231109/bat-dg2-14/b
> > oot0.txt
>=20
> This link didn't resolve in DNS when I tried to access it.  I needed to u=
se intel-
> gfx-ci.01.org as the hostname instead.
>=20

My bad. I realized it too late. Hope you found the logs. If not here they a=
re.

https://intel-gfx-ci.01.org/tree/linux-next/next-20231109/bat-dg2-14/boot0.=
txt

Regards

Chaitanya
> Thanks,
>=20
> -K
