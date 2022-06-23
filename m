Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 929FB5582E2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 19:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CD910E30A;
	Thu, 23 Jun 2022 17:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E319D10E30A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 17:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656004903; x=1687540903;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ci8NahZl+fAcSL1z6yvieuG75kbe4vsyO8yIZbxuyv8=;
 b=iHoPQgV+mWfm5PqrTkEOAUCLq+as2zxKc1ZU2b53QV9+V3ga2vWQ7ZIA
 E+LYWLwvyjuCjaCkdVxDHEoZKr5jD/RhS/AqPgAfK0fsR/FQFbKU82wZi
 PZNBFAG/12egVHLB6EZgCU/fo6Bjew1ob1wUwzLRxymufv1YeiBxIjrhf
 zmDCkU7Zmr69x68XH8PC9u2m/x/cYE/z+FBRgufNjUaJ7x6enx0Q9xJGX
 zO5EOoN2231EXHCPyiNGFAZQ63zLAf8+6/UvSV7nN7SJV9IDEmgf54FTU
 rpzt+VbFOBWKBM+7kZ2bEkjQ4DHvVYJZNlOTGJWchKyCgKRhK4RToPSiw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="344774601"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="344774601"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 10:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="730947284"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jun 2022 10:21:42 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 10:21:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 23 Jun 2022 10:21:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 23 Jun 2022 10:21:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csCd5pgKKbzwaNzJm4tQQ0oPX5ldM4QDLQUzcy0des9aIXVf2wAQEfBUtfxCbhDAt0aqk2yQ4sQQ8rba6nH61f/4n/xS02P4qMKbZ7wa9QomKQJ7WJkxKYJeQC5lVxDnZiahzVgynk20cEXsXD2dUNIaTfDVpyj+Nj3aLzhaVr8fuKa5czmIai4tVcwCiepv/OERc+YzkGDYVzLj+BqYW9Sm0i5XVZB9FIK9wAluLHXaG/m+f3/D7goFFqMQSmyLB0QGhPLrx097v5dG1XTKvEGfKOYCov+OouYOuiEufOxR77DRPFPQ3m5UTTt+pYIyUsufKWhGzKGhfSNp6I8TsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMfiOuEruQ4gnT/VlVvZ1YjiE9tUHot58jyEiTyXCM0=;
 b=j9X5i0lca3XZQj8wWdN3VP/loNmlDw9HGdntAGx6tmKYDohEseQsObn1FSZrmVE3wYwJFb4B/tmy+4LFgqASknZg/Ks5f6CobhzyD3Rm1xrek8LfDn1cxCvxKnWxPvAfnuHKcvzAzdjVVM0f5SQjkxdHAchHT6MssszDWUGr2O2RApJVzWRQjgiX7Z3/GfqmzsPcpEQskjddZqq6gVP24SqjzNsz6ia560dgTe4w8IiDQEL1SXEWX4vrgPR802khvQ1JltTH25IapRLylKG9Gh6H76JtKogVqqAWAzkhmKEXD2ePvHo+YrjNoeWxCs3OQttLc2CFAsGeokZ1e3cnog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 CY4PR11MB1815.namprd11.prod.outlook.com (2603:10b6:903:125::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Thu, 23 Jun
 2022 17:21:40 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::bdbc:234e:17da:f74d]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::bdbc:234e:17da:f74d%2]) with mapi id 15.20.5353.022; Thu, 23 Jun 2022
 17:21:40 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
 helper
Thread-Index: AQHYhWmgH8j1SeUi1EypSLtLCiSFA61Z6EGAgAAAP9CAAXtAgIAAgg4AgAFZsvA=
Date: Thu, 23 Jun 2022 17:21:40 +0000
Message-ID: <DM4PR11MB5248CEEF733FACCE6543C5AFE2B59@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-5-tilak.tangudu@intel.com>
 <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
 <DM4PR11MB52480BDD4014D227789713F4E2B39@DM4PR11MB5248.namprd11.prod.outlook.com>
 <87zgi4rh7c.fsf@intel.com> <YrN+QL4K0zRMA8Ey@intel.com>
In-Reply-To: <YrN+QL4K0zRMA8Ey@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b3007c0-89e8-4ab5-a38d-08da553cd630
x-ms-traffictypediagnostic: CY4PR11MB1815:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uCl/hTN/h1NNiu93bE5Qi8+zOZ/SZWHjbL/7md+LsRShMEjqOwEgoeWIxcaWFSxIzxV57ogBdjJgjyKYHULtVcmyWZ42ATnDW8sq8qdchLIzMi4Bi9lF1YXDyhmXV1U0Bb99hKqG49nt++lk8P0FnIBwmgCJkEwSckjGVCb8amEpkuQD67RRFvs/ToSXrKHxA8tcmW8FnLJsHS59GjgJ5o6DWS6JdSVS4lamZobhm4tBHiCETNmney0Y9hwv51NOZkoMJKPQelGyTfA0b5LNX98CG2ufmxH4p9Y0S/L5MrzixAMInCZ/Se1NcvGXtEIlHDbusbRWoc4DjHZPjvPt6Dx7SJQNb4A1M+Fv82ZJHmuaYeON7oA4sihcjgKfJDZLCTnRPt8QYYcHvPvEZQpL3hDTSmu4FEsn5eAYNqSSiA8hGRCRHhXbqEA4wmcCngQXURcvROfBRoiDMwiR7EBp08BzjWdaoR7o1Y01HzTWFltVTdWvmhWS/ovMKnjWxGp1L655XOvGPlmQa9VZYjGMAYxsJyUodOoxn3cdHUjDC2ynW2ioJxVR/4UYS/NZEC3yzyDz2088JDlJsXuJBuVOuyuwQ7giwxhQ/Cd0TYd1rwayJWxas8L198WdqK09azRgP7FK+y+c/056HjTpL7abJkStF1MyjUMDPMQGd4SSRhtbE8GeKg81JUpnjx9/sZ+P14bq/ewW7GtUF3IH7eNT+h+lyCJKt14gUO0KlxXzZeUHalZfle0Gb3vfe3S7TJWNg2cObbrxvUwjKNOyJg24/PM3zX/izd8q4KIe4lE3nJs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(346002)(396003)(136003)(39860400002)(53546011)(86362001)(8676002)(8936002)(82960400001)(110136005)(66556008)(71200400001)(7696005)(6506007)(2906002)(66446008)(66946007)(38070700005)(4326008)(9686003)(64756008)(5660300002)(316002)(66476007)(478600001)(26005)(54906003)(52536014)(55236004)(122000001)(76116006)(38100700002)(186003)(55016003)(83380400001)(33656002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jfK0ehiJbwyq3gf92DbmHVtCVFzMzmjdRzfKZcwJeI+JrydCC6M3yekxBqFD?=
 =?us-ascii?Q?OJkzOKJxTbX2/XlF8vm22rIajsuJRaXuWZM1EfoLUkiTO0Zz+kYmbHqp+r+W?=
 =?us-ascii?Q?wPl+1p51at4DnOCXI+Mm1Venk2kwIy/2YvMVgOiSwXYuV9CY6q9jwjep9Nov?=
 =?us-ascii?Q?XZAd2kss6pwb4DKJ9DBSTYRngvK3G+uIWTjsGz+iYHiPtJ6UZqsyMcwQlheI?=
 =?us-ascii?Q?HieZYST82BxBXN+qL++x19vjCKBLpYmnj/yxtq022Y8ZIPjbUEBRPfEy+TfD?=
 =?us-ascii?Q?UuGc8zimzVLJAXU3lh1Fhox2SeF/LZLOjhhQ9VZqHYgNFcTiAG1h8rUhzXkf?=
 =?us-ascii?Q?iyAoZQV9AQuIXgk9bBDY38m/Qs5NAPfx2Jkf220DAPJb/lZna5qlcwNlF/s/?=
 =?us-ascii?Q?aRDoC93a8TuA4kZQKKHEBHU/W8tqxRuK+RixTpC36CYJ+iy+F1v0q5x8AOxP?=
 =?us-ascii?Q?OlIls95GHF+2vLj0ujGpNXmNcJiibQ1t7bzYlfX7zfro2+os45R2cssDp6Xn?=
 =?us-ascii?Q?uWxym4uKgMEyReXy3C2sVSDSjKnZH2khzMG8+Eo6yJNpvc74OkGv/qfaZwxT?=
 =?us-ascii?Q?Yb8LmZ6d/WDIRfyO5ENf8OKmqBZg+Mwdv6XZeciD0pCLpkE88/SyLuodSyic?=
 =?us-ascii?Q?sN+P5Q/lCXOKHmWEDwPcpmyu7MUTUaZF2xhSsSqgy6h7NxErAV+OLNPOgAaf?=
 =?us-ascii?Q?GkEwPgqAnye06+opHjsC0R/+Q4YhmW+UodWHmMemw+g0Mcy71B09Z7E37Sah?=
 =?us-ascii?Q?MSQ5hr2BgtbNd8TTTWt/0m7Hgm6iII58I+l7fnvZXpEmKNAIGRZPoYAdfYav?=
 =?us-ascii?Q?cL7fLuI3SoavfpPlGz3Pzc1RaqAmrtpzjS9BRD+fnTBGSw+A0FRZEJeeyHDo?=
 =?us-ascii?Q?LZ5ZCNtfjNq1nDR9kXbYLXbasAZ+QUIQz/eVvKe2xqBhRmcG6XPdjBLXRiod?=
 =?us-ascii?Q?8Qx89Fv70lf8fALyMqI9UkvMugKWQO3/V07QiU9fm9kqQaJEcRenei2Tbukb?=
 =?us-ascii?Q?AdAV5zm1yR2Kir61n5E3LTEvlQdJUo5A6VRUIw+BxRfMtxLpijk1WJ7rOV/i?=
 =?us-ascii?Q?/MNm3qGkbguGefbZDBcXIY2UaKpyLlqqLY0QdmpL8NX2qe/Q9ueM9P0ZLUwo?=
 =?us-ascii?Q?Z0EKe7g/oB7ivyKpTezOy4CYc1asGnqaEc8tzj1CvKA0IKX+iQzXVZk03I6N?=
 =?us-ascii?Q?YW97cUkePFYfOb4L1aTPSVzY4o0mZZuwTcZUJ3VUQytblliDkWKoklXF8ICH?=
 =?us-ascii?Q?NXXtkd0Nse12Y9Ct+5htPOmf25btvD/r7udDgdrW6QDW32LEZiGVwJic0tvk?=
 =?us-ascii?Q?lxWmxLwxlleOM+Iic5rbD5mdo3pe5Rg8Utziq5vplmi/f7U2hBWUCe9qWLHH?=
 =?us-ascii?Q?hH8NDEdEz73JnoVOmgtiRFEpROJnK/2sAl2n96hLd9H8fQY4I1Yc3xApWv2x?=
 =?us-ascii?Q?J2JmntLhju4Q5Enka3QV+JtJIe/NHKFmNwvIqnwJmdeXacmxe/l3lb0ekOOl?=
 =?us-ascii?Q?NZfdWBbf1aniM7S0/UrfYAZXColvXXXTVZJyOWcIEULicX7N0X1BtxK7MG+9?=
 =?us-ascii?Q?4PFfWdk+5fHESTM6cA4Ko3zQ2pteE5W6NkfG6dVNp2cU2qrOMypbnagLffC8?=
 =?us-ascii?Q?gsTcnY0ZMt4mX/toFKsKwCEpvYrixRkwsvrHEecJMTdfchofe6DN0bSFEMaq?=
 =?us-ascii?Q?F4IK7NED+L9nV2xPLTk0PBEPcyd3f234dK2s5zAulhna04PeHp3odd9cvqqr?=
 =?us-ascii?Q?GkvNgwxE9A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b3007c0-89e8-4ab5-a38d-08da553cd630
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2022 17:21:40.5632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3h6lMfXuSo2KKA63hraW8VnJ5Z7q83vRQZ7bkyQ4R0kNaX7UwnshWC26Rd1iB/exzz/VCsVCZWPC5iKqBBVmjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1815
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Thursday, June 23, 2022 2:11 AM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Tangudu, Tilak <tilak.tangudu@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; intel-gfx@lists.freedesktop.org; Ewins, Jon
> <jon.ewins@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
> Wilson, Chris P <chris.p.wilson@intel.com>; Dixit, Ashutosh
> <ashutosh.dixit@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Roper, Matthew D <matthew.d.roper@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> <sujaritha.sundaresan@intel.com>; Deak, Imre <imre.deak@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allow=
ed
> helper
>=20
> On Wed, Jun 22, 2022 at 03:55:03PM +0300, Jani Nikula wrote:
> > On Tue, 21 Jun 2022, "Tangudu, Tilak" <tilak.tangudu@intel.com> wrote:
> > >> -----Original Message-----
> > >> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> > >> Sent: Tuesday, June 21, 2022 7:47 PM
> > >> To: Tangudu, Tilak <tilak.tangudu@intel.com>;
> > >> intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>;
> > >> Vivi, Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
> > >> <vinay.belgaumkar@intel.com>; Wilson, Chris P
> > >> <chris.p.wilson@intel.com>; Dixit, Ashutosh
> > >> <ashutosh.dixit@intel.com>; Nilawar, Badal
> > >> <badal.nilawar@intel.com>; Roper, Matthew D
> > >> <matthew.d.roper@intel.com>; Gupta, saurabhg
> > >> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> > >> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> > >> <sujaritha.sundaresan@intel.com>
> > >> Subject: RE: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
> > >> helper
> > >>
> > >>
> > >>
> > >> > -----Original Message-----
> > >> > From: Tangudu, Tilak <tilak.tangudu@intel.com>
> > >> > Sent: Tuesday, June 21, 2022 6:05 PM
> > >> > To: intel-gfx@lists.freedesktop.org; Ewins, Jon
> > >> > <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> > >> > Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Wilson, Chris P
> > >> > <chris.p.wilson@intel.com>; Dixit, Ashutosh
> > >> > <ashutosh.dixit@intel.com>; Nilawar, Badal
> > >> > <badal.nilawar@intel.com>; Gupta, Anshuman
> > >> > <anshuman.gupta@intel.com>; Tangudu, Tilak
> > >> > <tilak.tangudu@intel.com>; Roper, Matthew D
> > >> > <matthew.d.roper@intel.com>; Gupta, saurabhg
> > >> > <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> > >> > <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> > >> > <sujaritha.sundaresan@intel.com>
> > >> > Subject: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
> > >> > helper
> > >> >
> > >> > Added is_intel_rpm_allowed function to query the runtime_pm
> > >> > status and disllow during suspending and resuming.
> > >> This seems a hack,
> > >> Not sure if we have better way to handle it.
> > >> May be check this in intel_pm_runtime_{get,put} to keep entire code
> simple ?
> > > Yes, that would be simple without code refactoring.
> > > Checked the same with Chris, he suggested unbalancing of wakeref
> > > might popup If used at intel_pm_runtime_{get,put}  . So used like
> > > this,  @Wilson, Chris P , Please comment .
> > > @Vivi, Rodrigo , Any suggestion ?
> >
> > One option would be to track this in intel_wakeref_t, i.e. _get flags
> > the case in the returned wakeref and _put skips in that case.

@Jani Nikula=20

I did not understand the suggestion, Can you please elaborate ?
Did you mean below or something more ? please help clarify.

8< ------------------------------
linux-desk:~/Code/drm-tip$ git diff
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915=
/intel_runtime_pm.c
index 3759a8596084..ce272c569a89 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -369,12 +369,16 @@ static intel_wakeref_t __intel_runtime_pm_get(struct =
intel_runtime_pm *rpm,
                                                     runtime_pm);
        int ret;

+       if (!is_intel_rpm_allowed(rpm))
+               goto out:
+
        ret =3D pm_runtime_get_sync(rpm->kdev);
        drm_WARN_ONCE(&i915->drm, ret < 0,
                      "pm_runtime_get_sync() failed: %d\n", ret);

        intel_runtime_pm_acquire(rpm, wakelock);

+out:
        return track_intel_runtime_pm_wakeref(rpm);
 }

@@ -505,6 +509,9 @@ static void __intel_runtime_pm_put(struct intel_runtime=
_pm *rpm,

        untrack_intel_runtime_pm_wakeref(rpm, wref);

+       if (!is_intel_rpm_allowed(rpm))
+               return;
+
        intel_runtime_pm_release(rpm, wakelock);

        pm_runtime_mark_last_busy(kdev);
----------------------------------------------------------  >8

Thanks
Tilak
>=20
> yeap, this seems to be the quick path at this moment...
>=20
> Imre, do you see any other quick option?
>=20
> In general I don't like much the big wakeref infra we end up creating her=
e
> because all of the historical unbalanced cases we got.
> We should be able to get something cleaner and use the rpm infra as other
> drivers are using, or improve in the rpm side itself whatever we feel tha=
t we
> are missing to deal with these cases.
>=20
> But back to this specific case/usage here we might need to duplicate some
> functions to be called just from the inside the resuming/suspending path.=
..
> and/or moving the gets & puts upper on the stack...
>=20
> The quick hacks will solve our short term problems and continue bloating =
our
> rpm infra.
>=20
> >
> > BR,
> > Jani.
> >
> >
> > >
> > >> >
> > >> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > >> > ---
> > >> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
> > >> > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> > >> >  2 files changed, 16 insertions(+)
> > >> >
> > >> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > >> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > >> > index 6ed5786bcd29..3759a8596084 100644
> > >> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > >> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > >> > @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct
> > >> > intel_runtime_pm *rpm)  }
> > >> >
> > >> >  #endif
> > >> > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm)
> > >> > +{ return rpm->kdev->power.runtime_status; }
> > >> This is racy in principal, we need a kdev->power lock here.
> > >> Regards,
> > >> Anshuman Gupta.
> > >> > +
> > >> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) { int
> > >> > +rpm_status;
> > >> > +
> > >> > +rpm_status =3D intel_runtime_pm_status(rpm); if (rpm_status =3D=
=3D
> > >> > +RPM_RESUMING || rpm_status =3D=3D
> > >> > RPM_SUSPENDING)
> > >> > +return false;
> > >> > +else
> > >> > +return true;
> > >> > +}
> > >> >
> > >> >  static void
> > >> >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool
> > >> > wakelock) diff -- git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > >> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > >> > index d9160e3ff4af..99418c3a934a 100644
> > >> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > >> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > >> > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> > >> > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> > >> > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> > >> > intel_runtime_pm *rpm);  void
> > >> > intel_runtime_pm_driver_release(struct
> > >> > intel_runtime_pm *rpm);
> > >> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
> > >> >
> > >> >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm
> > >> > *rpm); intel_wakeref_t intel_runtime_pm_get_if_in_use(struct
> > >> > intel_runtime_pm *rpm);
> > >> > --
> > >> > 2.25.1
> > >>
> > >
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
