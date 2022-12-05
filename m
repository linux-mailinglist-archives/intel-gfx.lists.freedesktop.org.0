Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572B3642203
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 04:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06DC10E0C1;
	Mon,  5 Dec 2022 03:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CDD410E0C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 03:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670212390; x=1701748390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8VNAvy40JLCzwZDLdUMfc+8Ra20H7nKTctlIBBUXuCc=;
 b=F+pPa+BYPMQJsGurlA0teNv5WRZxTpVKcaDC7ku+AKRA//7Pfk1r3P+L
 h/rwCJiKxhIId7kw6D/ePRHG4/vj07F2ccHOykkuCytX0kB5zjBbP/fyn
 FIHE9FqOzD6T2cR6IjwDFeMq1vjqL1JqIyivbsGJSXkd3AaIQakkHH0iP
 FUSSmaLI5TRJ5jzPuNQT0snJOrnuKBrV/y3XsilGJAIYMSPTUhgZduK1l
 4LyrV0aYt4qwKd3UvpsBRHQfJEYrHo0rKdJoqjH7J6IAbOuwpaS1BMHu4
 /ACxOLas50CMrOYb9rkPkvXQ0QthcD2CtacZienPqTETOw044K0TnM0sg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="316284088"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="316284088"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 19:53:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="714247723"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="714247723"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 04 Dec 2022 19:53:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 4 Dec 2022 19:53:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 4 Dec 2022 19:53:08 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 4 Dec 2022 19:53:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JM3VBVwW5toIFtQzvRUaGIKxTjWi8xT1Eyq/5XvdAyWlqvCeaoUOQswGfp3r01I8ZL/RR3b7ekEpnRCGoH6qJxSZfZAjN91C7TFhusO2hoycR8DT3z+zU3NX9b2cjMsfLrQ071B7A79jvubQNL7gwdZW4qib44NrEmn9p9sKyqFhxj1FJVJYU/V8MIZq1xcIPTKxswZcCw7zd4ALgekyqICk3WJgGObvs3UbRRZzzMQk+/cN8B02Bm58JaiINDhWgN4MxF9400OpgG9DfNSQz4pm/FC2OucXmpJvSL1BO4jJKHHLxhbKC8GBWEHPZ2iRMFlDxoDimM7HPJWLDgyKRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p647Fq26NN3nlxZlnhU8aYkMyxm1oeWIaZaYgNzYg84=;
 b=SKcw9Yt1/XGZLN0H8OC8FgcOWWxDhBzqMWp2skD8CcIeqSrYbY8bS/q54G9PbFfIGq+6t8qWavD/uMMqvmUUXFhkhF9TQY/zprWq6xUztrqs7XH3F8K7UbSguIpnWS/MUM+spH2Ht4PdPuEDRVF7hvd1FKcZdQUv4prgNVmaE3nhsJ+JcV9t6dN13oXKsAGzEVHI4AZqJYa7dDF0p+q6lNv24zkYOdSy0lZG2l4j6JqZl8xmwI1Mto4/gPGL0sapgU1txEkIWTW9pbi/gFMAINASJ1tzq/8LNRe0ldzCZj0lseFkKi/hOlrRDx7C0Kb3P7iVnAfiaGnqQ22E0KYaZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB5414.namprd11.prod.outlook.com (2603:10b6:208:31e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Mon, 5 Dec
 2022 03:53:06 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::83e5:2c2f:3b78:aa88]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::83e5:2c2f:3b78:aa88%7]) with mapi id 15.20.5880.013; Mon, 5 Dec 2022
 03:53:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIA7i3ow
Date: Mon, 5 Dec 2022 03:53:06 +0000
Message-ID: <DM6PR11MB317798369C490821952A7C27BA189@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
In-Reply-To: <Y1t3J2vIoiaPhYuR@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|BL1PR11MB5414:EE_
x-ms-office365-filtering-correlation-id: db33c98d-d581-4346-e307-08dad67437c5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j/apg1LXYzGaLw26s4+33QwmTu7aDJI5Qg2/+8KU3wfrs4wxbUZ2FIL9s5UnpJwgm06YR/QdcPi7iScgvvFftvbhwIMYDXnRMvkOjykDBCs/5ifkGkNc687clLi4aUNFcfaT2RXQLDkMcPvuP8/5191kgT1lsWGjzuxD6AH6/QUegdtiJmki7VAo/N7/0EB6kN5kNrTL5mAoFNa90dw3KpQ87T0+1Gs0sx6cw/uxJyqw8Qk76DoQpkC0F1JBqv4Uj+5Xd3nZL9lU08OxJvu4j16V+rpLCz5TALDBeoI16loujAAQMRoTc5KsIXg5zl6EsOHcM1EwB+CGKeb7lpJAji8ZKrXgi0f4FVyrXQEC8pqAM7KRfpMONDA+tIS36NH3MlUp2dOZ6P/zO8ZhxKg5bZDhrh2spimnlCu3T+SsJ9zo4bKq3nRCOUR9LApViJXMLR6RbGaSJOWFjxGJZ1iOZVGUszkS2B603QAFqfoCArlI4VD2SnwZzF3lvNwTjcha8Ts1gG+fqSXbM+B+eviJzjvC+cCqOKkdvd2IlS9LspEwMako5Jp4MI81gZfq0J3vN6F1LZxKBTeXQyUjp785etjJOUWy0nrzbgkpDwGiIoL5sjq3IiZJ/xDD9/9FwAe0dHaemurpdOQ9tMPR/IbDYBQV2pcHMIyvlobtSqeJHex2rY+kG5uXfUFcqR2dNoS4sAzJ/7PEfBvogcDyvU97SltSGWXfioBN+iZKWqSdDtA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(366004)(376002)(136003)(451199015)(2906002)(83380400001)(186003)(41300700001)(66946007)(76116006)(55016003)(33656002)(86362001)(38100700002)(122000001)(26005)(9686003)(38070700005)(82960400001)(52536014)(66574015)(5660300002)(4326008)(66556008)(66476007)(64756008)(8676002)(66446008)(8936002)(6916009)(316002)(478600001)(55236004)(53546011)(966005)(71200400001)(54906003)(6506007)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jOpE0XDZWUouSYpd9Vwa3GSNzp3+rZJSM2bCet+ZVQgAV/v5tiBMMTIyxr?=
 =?iso-8859-1?Q?TGcXGQ3s//i1VoaHM2qa1UsfaqqDXyHavAKcY+RSdrQVKrrOzlYcbO/wPo?=
 =?iso-8859-1?Q?eSjOuIVI4ibnS5cu+aWoU9TY5J/GwcjGwu9YFLwE/QuFeYbLlxcGqv74SR?=
 =?iso-8859-1?Q?WrCuLbdh0Tu/Zn+4/Vcr2kT1sT0iB3eJu8Xw129+TLz2UBX/+RB5BQ5SI5?=
 =?iso-8859-1?Q?ryH2BJpViWMx187gAqw85nFzP9qmb1cmzWq4etLgoCO5I5XKMA/ZqpGnG2?=
 =?iso-8859-1?Q?IxI0fgHf6byfwGfZw3trk5eFYBLFJdFVIoXtDCvOqpmfKs+3oiVO+38sXi?=
 =?iso-8859-1?Q?goHUtI9oK+LcvKheWeFyFCkbEAGffo1Csh/m624YzQPB9AOsTr7wk0O0/8?=
 =?iso-8859-1?Q?q9xJdbVpnYh/FAJLTxVdAcXyEye9QPPkiaDhdAELABI+TJowqQo6wXTPxt?=
 =?iso-8859-1?Q?xZ6p+PuTWzUwIbOKdLCq4TYErC28uk9smtK3XmsC5HMVQS6pTG4z2ggubb?=
 =?iso-8859-1?Q?kXIOeVm/vb9REx0un+rKaq0WLaKF0TssBkyoDZcP5cMmlR5NqL36cKMYBM?=
 =?iso-8859-1?Q?Fotlb89rmOIM7UeGUD00w6Nf6mMc3799VDwXueqvuZzFDjyRAkynncRZdG?=
 =?iso-8859-1?Q?qdESaOv1cVnq+49B6WYtYEDDMVfGkCa5p1s5TXetaAhqkKpEbleVlVKqP8?=
 =?iso-8859-1?Q?1TQ/XbB4s6DEO6kPi35AUfu6x2HWxyNyMRIPRX7JJWWYQatdXxGjtCo1CL?=
 =?iso-8859-1?Q?Tmpcffd+NsUWxLaw9hV14uJd7zfvSCko+RudjtmDW/wb0JzAZY3DqfbJnc?=
 =?iso-8859-1?Q?a0EQd7sx43MJfZm2S436OgPkJUFbW++8+c70ejgGUZ7VO9vUzjExv80eDG?=
 =?iso-8859-1?Q?bKJSaSS1JmMfzxE06imIBlwEllMyuiXt4PBj7dXfaxfgPijL1RtQNnfswW?=
 =?iso-8859-1?Q?MgPCcflW/oBA8ju3ux0rSr8zJoxkqImCAD8UdsVhFFy9WIjsDMosxkoWZq?=
 =?iso-8859-1?Q?83hpDUGK7Ht1NtDQlQprANqpBwYqf5V6agUOvtulqhHLr6Ju4eKCy5trJp?=
 =?iso-8859-1?Q?t9jKdcJ1t7loQe1zPDzrUuWHkZ30hIFH2+EZ/xyL9PBi5f2bBNC6T5DvtW?=
 =?iso-8859-1?Q?SOMFR/TIHq7YxDS3mdL3wAMRXqnekGuxvOsSD4sZIKUm2KVjWDt+If+0Pq?=
 =?iso-8859-1?Q?m4PjkXnVqkjsEmCdBpi2fla9XSg/hLUAbWX4kxC5K8/LbHjW64W5KtQTQF?=
 =?iso-8859-1?Q?2Kc8EbNPpz5G1xiMSTK1TvmRRK41i3qrNM7tk5krk+U54+xVkKhiT/X65g?=
 =?iso-8859-1?Q?nhzpEwVnWdAUgEjy1X/inxILqIWTrM/Q5Y+bErvx/P+1o7Nzw5opBac48R?=
 =?iso-8859-1?Q?l0XGuBi0Sl8chkv3b7j9PyYwFTrWJUhlggrmfthCE5otx6BO/R3S4yjkgi?=
 =?iso-8859-1?Q?Okmw+65+MJwHQ511MQHWGL9tLQwgzfyuX/XrreEtohf6ODEF+tSVGAcqTu?=
 =?iso-8859-1?Q?xkogOsTn6W/NbsZa1AwG1XP0CDkjzS7jWz1heZJELLB12AvffEDph1ImSb?=
 =?iso-8859-1?Q?H2Zn9u35Jg6piOSs+ydBL1RXrdIn8TZiWBLiEdjZUIWTvFH6w7aNIX1j08?=
 =?iso-8859-1?Q?KI6ZtBS7JMw+RO0SbY8E2LLONb364RVCbw?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db33c98d-d581-4346-e307-08dad67437c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2022 03:53:06.6299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WvM6yBak6AQwX30obAslq0XjkrvmmAGFVmsdtS+jzqMb47gbmo2TjFfHWre3N62hYof8WrHK6QGfSirxcQmhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5414
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, October 28, 2022 12:01 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > Gentle Reminder!
>=20
> Is the igt stuff merged, and did this pass the test?
>=20
IGT patches are waiting for kernel to be merged.

Test results can be located @ https://intel-gfx-ci.01.org/tree/drm-tip/Tryb=
ot_109443v7/index.html

Thanks and Regards,
Arun R Murthy
--------------------
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Monday, October 10, 2022 1:24 PM
> > > To: 'intel-gfx@lists.freedesktop.org'
> > > <intel-gfx@lists.freedesktop.org>
> > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > buffers
> > >
> > > Ville,
> > > 	Gentle reminder!
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > <intel-gfx@lists.freedesktop.org>
> > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > buffers
> > > >
> > > > If no comments, can anyone merge the patch!
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R
> > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > gfx@lists.freedesktop.org
> > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > buffers
> > > > >
> > > > > Gentle Reminder!
> > > > > Any comments?
> > > > >
> > > > > Thanks and Regards,
> > > > > Arun R Murthy
> > > > > --------------------
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > > Behalf Of Murthy, Arun R
> > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async
> > > > > > Flip on Linear buffers
> > > > > >
> > > > > > Gentle Reminder!
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > <arun.r.murthy@intel.com>
> > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > > > > > buffers
> > > > > > >
> > > > > > > Starting from Gen12 Async Flip is supported on linear buffers=
.
> > > > > > > This patch enables support for async on linear buffer.
> > > > > > >
> > > > > > > UseCase: In Hybrid graphics, for hardware unsupported pixel
> > > > > > > formats it will be converted to linear memory and then compos=
ed.
> > > > > > >
> > > > > > > v2: Added use case
> > > > > > > v3: Added FIXME for ICL indicating the restrictions
> > > > > > >
> > > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > ++++++++++++++
> > > > > > >  1 file changed, 14 insertions(+)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > intel_async_flip_check_hw(struct intel_atomic_state *state, s=
truct
> in
> > > > > > >  		 * this selectively if required.
> > > > > > >  		 */
> > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > +			/*
> > > > > > > +			 * FIXME: Async on Linear buffer is supported
> > > on ICL
> > > > > > > as
> > > > > > > +			 * but with additional alignment and fbc
> > > restrictions
> > > > > > > +			 * need to be taken care of. These aren't
> > > applicable
> > > > > > > for
> > > > > > > +			 * gen12+.
> > > > > > > +			 */
> > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > +					"[PLANE:%d:%s] Modifier
> > > does not
> > > > > > > support async flips\n",
> > > > > > > +					plane->base.base.id, plane-
> > > > > > > >base.name);
> > > > > > > +				return -EINVAL;
> > > > > > > +			}
> > > > > > > +
> > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > --
> > > > > > > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
