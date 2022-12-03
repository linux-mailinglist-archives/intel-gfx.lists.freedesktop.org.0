Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5C064156B
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Dec 2022 10:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D39C10E1B9;
	Sat,  3 Dec 2022 09:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4B410E1BE
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Dec 2022 09:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670060831; x=1701596831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WwRn80N4sLHLIYhwc5UylQY/ukPDMgqg1yTU0M8MxvM=;
 b=RAv9rlyVujTcfNELACxB3aDDl6Y805TAR14uVlllWZgLrygR8GDbkaZS
 5mFsn4doE3dzCksX8hkko94nIcypAUSc9eef60B9YsNF3miAW6xx5H3a/
 uvh5ZI8fvA6PQuBFEbrrOfnSVqjE+58Zrva9uoqHwuiB2DNtSUTMVRfvQ
 Up9aputdw6u2sYduIJ83M068PoAsDzq9h2pYeQqDTeHB0f8x2Kmw06wep
 KsIPHA+WzbWVVHWABdK/CYpplewNEC64irkvsUe0Yqm47wiGw3bbjQNIn
 zovlPspCFLC4ORraTTSB6qSnW8DosthepPPi5VtcxJL26e3bLHRarR5L5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="380401067"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="380401067"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 01:47:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="713890135"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="713890135"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 03 Dec 2022 01:47:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 3 Dec 2022 01:47:09 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sat, 3 Dec 2022 01:47:09 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sat, 3 Dec 2022 01:47:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEGJ4IB+/ZaEg7cY704hRluj44gBmOZICdoFcxKX7fJq8TKlA1uG43KepVTKiPzm8IreoEPKRRe16vZ8Lcjn+Kvy3mc5hCBDq3seKt2/YgJZnBCt8tvc6mBFjoNwKzWb6mfTrgjcdrCordodduenUUq63lhp/40OVn/nKfj1DlFsWrNvfune+3T/xECRprg/yvWB8F1MnVfO0ND0Pk4GJDDeNn0Mp8XJ8LscSJmYA6TMmJ4N0pZ4glrveGPuwSmSl3xIWnioQT/D3su+FouAw5tQ0y8c+LFbfXxT2SOFORukIUyl/iz1HVdQj1ZpjxVDR1lpGIh2L86yBwuPvzbGiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TTh1yxX/wmgX7v54t5ajvZYLvPLTxe8khTPlc7sruMA=;
 b=XWJWmy+EZykq72Hcp8et0GBTT3iWuOF49hYJwHTlZP2oukxCJ3WVG79wYFYWceSldSXnzgjq8cNgKfviiMBnAxarGGNoqn0ItgiM5CZtU9TlQHJHxEnfqbenD5dIgSMqbzJJFeiUPWt1X/HJYmd3MStUqIet4TvE5vZoic1u9JOJ/CPWfjuUBImtyI38VVkVXQpH2WEl3QPPnO4kRClTNJDz0lE2mNWhHkvd+g6cXHNc+DeHamKvCc7RPhWEra+aCDxv4gi3U8KdC2UZGqOtUrAOnIUw+8YCOmxH9OtRd0tjCkfcoyP749qoVqdxp2o7i1+1tJDAgzlsxzn3Nfbchw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Sat, 3 Dec
 2022 09:47:06 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%9]) with mapi id 15.20.5880.010; Sat, 3 Dec 2022
 09:47:06 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hwmon: Silence "mailbox access failed" warning
 in snb_pcode_read
Thread-Index: AQHZBsV2ZgW7F9dgmk+JnuKXeyjHPq5b6EWwgAACblA=
Date: Sat, 3 Dec 2022 09:47:06 +0000
Message-ID: <CY5PR11MB6211C5036EF25186C61056D995169@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
 <CY5PR11MB62116199075E689C273AD41E95169@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB62116199075E689C273AD41E95169@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ1PR11MB6228:EE_
x-ms-office365-filtering-correlation-id: 86ecd2f7-0c30-43b4-4be8-08dad51356f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uhQEiWdKn6vSrFnKMjQeaxco4NfKr/MO/HWzi9DQ2C1oD7NQ/4ZfEYHLvYnWK1b19x3xJEsHYSaGOSAFufJ0QUEvqzj3pbbzLVkOEsDJ40cbYYtPNLZxSy6tP1ux6OmmqDBaajxdgtkNNsQkkXZ2zOpvlZNAJwUMmeN3+ulv7WGFx+qiM9AOk7L7g0bFjJzrjvlp0sLbz8orT8gRSqCpgCfFkwYFIdcWO1YwJL1skzKxOtBaWr1itV6nlvzLy1O0lCBJqcLKJyp3+KPARyBpM5V0kLVIdu/b+CAsC0VFydBjnGqzwjdw5ioLa2lGb1RUfJZWMv1ckmf6z9JkJo3njJfJleb7v/5KLbIfCSRoKEvw6Y3DmLCA4HBE96Cd3KQ6Fh43tyBJGzQRMjF+efF9BUhc+5UwBnrIUw4RspQM0J4NLaAArUXTqy182HttVeiK2xy/OA/1X/0nxFamSU1tP2IjnK0G1n/PVy/0yz2MbYw/WfSAAcW+VrW+aw3cORvU5KAcYYQ+fMoLKhktrLX9+zToLzwle6hs4O1ovFk3mZlJEk1jCY70AqynTOazFip6LAGNsFWhbojDCbsjCNYMkANj4/jPwTa768Z+ZlSEVgRduoqlCXy1LDPJ6OAQF/NOCP0HEu2JE3zGDNv2lblnE4q/5NYb+v6A7B/WEgfjgD6/Qr2V+k54Spy2jY+0uuFaboOYg2hfHTz04AsjD8G7EQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199015)(186003)(2940100002)(38100700002)(54906003)(316002)(110136005)(82960400001)(33656002)(86362001)(55016003)(26005)(38070700005)(2906002)(122000001)(53546011)(7696005)(83380400001)(6506007)(9686003)(55236004)(107886003)(66556008)(478600001)(41300700001)(8936002)(71200400001)(76116006)(5660300002)(15650500001)(66946007)(52536014)(4326008)(64756008)(8676002)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GZNCMQb0rMkGonz87UBnqU835jFcJR7McAD2ekHsyBEx1+vpNZyTYR78XK4w?=
 =?us-ascii?Q?B6Iw+enCPbaZatVky8SLR4bDqRcDJibLT1ONWEk1wuAg5PY1XDlLH6UXsrOL?=
 =?us-ascii?Q?YwkMCCHfi8k25UdwigZZV/ZHlOSPDwJepJV8xgddpC12jnmQ6Xjq0sjvlFb2?=
 =?us-ascii?Q?q4mECQV5dtyudNBLLb+rLBnU+pzwAyTd860qOiL4/q2aJFGQrolDYFXEoKjf?=
 =?us-ascii?Q?lw7IwwaFHkQYpzvU/YnDO3XvVPjhuS6jLQ5Me+/H0rXCZFtosbX/3ZsMAQvt?=
 =?us-ascii?Q?BXUWLO0eT+Avntm2lENZkCcEgfWvVuaJKMM59ajAyT5uuRDVVd5fdmnr8Fco?=
 =?us-ascii?Q?DNdWAb5IHT34uPvkzp9en2EjDyIVR37L9rwmmrfFsw9EG7bcobGY+iDM4QN7?=
 =?us-ascii?Q?xz/X4suPVtsJPWOEQE1WZ0ZdDvEt+Q/8k697uDorvq/4mjCl5zb8LU8CFbx9?=
 =?us-ascii?Q?epTVuj7LZovZ3ENVIZe0tDlzU74Wic/FJE5N+fVgFUXB/pdP1h4kudjYRTX2?=
 =?us-ascii?Q?eojClT8tAQpZ47YU9yd1EFWeB2PV6+vtVJHh9e66jVGkWnkCLw/QsCnO4WUZ?=
 =?us-ascii?Q?l5unsETYJknvPwQ2GjKjV+ih28OTJXgfTPf8trqly0GlyWjXzDjCa/PuzyZy?=
 =?us-ascii?Q?BhYLq8IdWXC1/tzOW0/nnPf5M4k/OB4ZpR3suXLB4wE6RnlobP8dUdPW0Tix?=
 =?us-ascii?Q?BAhrRi4Bh6n7My7o4cxkXrWvgTdu90hJZDw7PfDiJ+ZKe6C4vdClEDykIbWv?=
 =?us-ascii?Q?wfQ8dED0v+jdyDFSzQRp6ln5afTui7cnx25TMz9yLUBIrSm5HOHK6u0X67i4?=
 =?us-ascii?Q?FCtRQgbDJtEVYeeDlxnIN2qCji/dTe1YRUAV8Z9spO8a7zac/qX0cwEpuKzr?=
 =?us-ascii?Q?qgl8aZBnoMIPNBrbJ2KT6AKT12Zui+6eFYb4GAk1SV45HkXWiX/+Z10aCPpm?=
 =?us-ascii?Q?udAkOv+OOndUlAfor+laLGA/S6evPuMptNtFkMRgl0l+rhZ7lZizem4ToWrL?=
 =?us-ascii?Q?oncljdYYi0O2uLy9Yc6yTWAP6ij9/nN2pv4L6368/Y0CDwiRcD/cxNst+KwM?=
 =?us-ascii?Q?N8rTm/9FFLQN9pCfYUvGPn+UmzES7OVkAodwqYXpemkRfWQEcgH8tLqCOfB2?=
 =?us-ascii?Q?yGCsDC+MO7UTkyfhedecSKi3szXWeS7+k+RWJnxgkwRxOa3E53NNp6xudZW1?=
 =?us-ascii?Q?RF0Q23CFzVbuN2L/Z1GGV/4/Fh8K11Ls747QtI2Zo290XyBmrEm3PDWH0usi?=
 =?us-ascii?Q?DQxgbAjsUJhVyB5MNuMmk47n3R/HFDmVVjeTh5qpIRceur2Tdv9Dt3+euuXg?=
 =?us-ascii?Q?XozCssYPApCnUb/kAjURSA9NEFtNdcQF89bKOfPYnXpCLKLe2F+cA49sKFqh?=
 =?us-ascii?Q?Jw5HLCOkRVJWJhYFHD31p0BN1wT7i3fLp2oQgK+QjHnMz1GAQAQQ0NGzLM/a?=
 =?us-ascii?Q?0K9Ydy5Rlj6nmzBQNKFf4vYkkVSglC5vh/i9A/wCr3HydPWDbViTtBfFmVq+?=
 =?us-ascii?Q?dHHguegVN/pI276J7a38b/Oj2KBaYU9YSWBYYo63g/yJQBreecns46k9c+YG?=
 =?us-ascii?Q?dEMU+n8fbcGE9kmBVP4qYiwYooF5tjXBC0ltJ62C?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86ecd2f7-0c30-43b4-4be8-08dad51356f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2022 09:47:06.5979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pt9P3Ito0T0oTZfLLu73gnvkfZjYJn0RgaeJoZkucOh4ynA7DU7Cc6A+z6VRFSzqQZjuSkgpkx54ZUSTFtBgbE2nMx+W6VK0kFN/pwEZlIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Silence "mailbox access
 failed" warning in snb_pcode_read
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Gupta, Anshuman
> Sent: Saturday, December 3, 2022 3:14 PM
> To: Dixit, Ashutosh <ashutosh.dixit@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nilawar, Badal <badal.nilawar@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>
> Subject: RE: [PATCH] drm/i915/hwmon: Silence "mailbox access failed"
> warning in snb_pcode_read
>=20
>=20
>=20
> > -----Original Message-----
> > From: Dixit, Ashutosh <ashutosh.dixit@intel.com>
> > Sent: Saturday, December 3, 2022 8:45 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> > <badal.nilawar@intel.com>
> > Subject: [PATCH] drm/i915/hwmon: Silence "mailbox access failed"
> > warning in snb_pcode_read
> >
> > hwm_pcode_read_i1 is called during i915 load. This results in the
> > following warning from snb_pcode_read because
> > POWER_SETUP_SUBCOMMAND_READ_I1 is unsupported on DG1/DG2.
> >
> > [drm:snb_pcode_read [i915]] warning: pcode (read from mbox 47c) \
> > 				mailbox access failed for snb_pcode_read_p
> > [i915]: -6
> >
> > The code handles the unsupported command but the warning in dmesg is a
> > red herring which has resulted in a couple of bugs being filed.
> > Therefore silence the warning by avoiding calling snb_pcode_read_p for
> DG1/DG2.
> >
> > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> > b/drivers/gpu/drm/i915/i915_hwmon.c
> > index c588a17f97e98..cca7a4350ec8f 100644
> > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > @@ -293,6 +293,10 @@ static const struct hwmon_channel_info
> > *hwm_gt_info[] =3D {
> >  /* I1 is exposed as power_crit or as curr_crit depending on bit 31 */
> > static int hwm_pcode_read_i1(struct drm_i915_private *i915, u32 *uval)
> > {
> > +	/* Avoid ILLEGAL_SUBCOMMAND "mailbox access failed" warning in
> > snb_pcode_read */
> > +	if (IS_DG1(i915) || IS_DG2(i915))
> > +		return -ENXIO;
> AFAIK it is specific to client specific parts, how about declaring a is_c=
lient
> intel_runtime_info flag to distinguish between client and server part. Th=
at
* intel_device_info*
> will also cover  any future platform as well.
>=20
> BR ,
> Anshuman
> > +
> >  	return snb_pcode_read_p(&i915->uncore, PCODE_POWER_SETUP,
> >  				POWER_SETUP_SUBCOMMAND_READ_I1, 0,
> uval);  }
> > --
> > 2.38.0

