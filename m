Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5489A19C7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 06:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C96FE10E799;
	Thu, 17 Oct 2024 04:39:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXHfGqNQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7672210E03B;
 Thu, 17 Oct 2024 04:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729139961; x=1760675961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EaehTBryHmaF1uo1y+WO31Vg7TkUv3GpZPnO38cyyBk=;
 b=NXHfGqNQ+BLM/St1f1AhbUra4P0tbQgH83lLxGC6ysVtEavwa0onAcLM
 Yloo5CPSAraGvJMj+pAJp1P9c+ihwVj/6swDLTzRHLjBmIOtNJPwqvvul
 rthLdwQsX9/1CP3esAgWqK2NaIEwYA8JK0b3pxzbjGJcGG//jFqHzq7TR
 VzcyoCZpLFIhIf+Q4HRaz51lhHffQ18ms1zBvy7ud7MLMoge39cxsix2j
 X2+bmICWkkcCULFalSuBVdw7eqhOxAgzxKkW3JM4nSmLagl0MVOl42Zif
 87ljxci5kHsrIYKqv0jTwtYjVQRG1yTZAKyHFhiTObnVHUCy5eAYvq1PQ w==;
X-CSE-ConnectionGUID: T4anXfICRH279EQHI9p0fQ==
X-CSE-MsgGUID: HlEWokjlQUecbTOmirxIxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51156339"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51156339"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 21:39:21 -0700
X-CSE-ConnectionGUID: Muy3H5NqTzmbffcLdbI2wQ==
X-CSE-MsgGUID: GOs0o9b4TiuiQHIBY8+bww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="82387270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 21:39:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 21:39:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 21:39:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 21:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pDripe2zU4DCFHd+L6zNoBr8+Ed7TLwdgBxheSSsfBy9gJKx5OnkFPcsJ+EK2RetPer+1hK/gRJyz3l8VVSRuvmu3eWKHNkiltkOwpq81pqZcfqPhSsiPIjnFSnBOu5HQrOMy9zSDNwvn3HiGtHkVhcYcZ1JHRMu4tF8Ayy47qrNBCeRdYrcu3GjhyEFA/4RiIhvzOtayDrhIE7mgHl7Yf5nUx4WcLYJS4D5H+lehmVaLXdFzgAB96GQG/RBS+D/LHxdiqInV0kVBGDTZm19dj+WeaXrb3fV0DT2tXeSn5XjTKvhBuQEKLc9EW0Mh4+yIlOBFt7HNjKnk69OPO4UEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZaMebLdZhpfYmbIncQi3pMHM8EnaL6meKLtTSWkGD3A=;
 b=WePz/Cqj5pT1dgcgqXfD1ZUHQmqV41Mz4ZRpBbx0p5gYKfgYAFQf+ch1Q9eaSfcosiyEI4Aj876gS8CmKJdbWxyALaeYtVgSeWdtIKOjIn9Cy/iPSd02+yL/Am/tueyvZ60RbbT9HFvg+VNWgvY+FQXxCVFBVZrAmlHQte980czOAgtPf+66Jjv/oyCCeXtLmhsIMwTtKT9CzmoGI7mDf4awV8s0h009FbGi57OKFUdVygSejz8fa8vaCkGRDOlK/79Z9K26Iq+GqMo5giAOaGDnS95qmGumUGuKDmErqh28AsUjTwiZrvNaOP40kqSS6B44FQ5KDJ6k4lZeqhQv1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW5PR11MB5929.namprd11.prod.outlook.com (2603:10b6:303:194::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Thu, 17 Oct
 2024 04:39:12 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Thu, 17 Oct 2024
 04:39:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 5/7] drm/i915/xe3lpd: Add new bit range of MAX swing
 setup
Thread-Topic: [PATCH v3 5/7] drm/i915/xe3lpd: Add new bit range of MAX swing
 setup
Thread-Index: AQHbH1eYyIfZJpeZMkqKuywNL829wrKJlhsAgADIGzA=
Date: Thu, 17 Oct 2024 04:39:12 +0000
Message-ID: <SN7PR11MB6750008B7A8D82E641755C3DE3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-6-matthew.s.atwood@intel.com>
 <20241016164232.GZ4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241016164232.GZ4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW5PR11MB5929:EE_
x-ms-office365-filtering-correlation-id: 0f36ec17-9124-458b-30f4-08dcee65a5f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nt70voaclL6Zj+YE/80CrEx8BNoYd8sxSyxswCEdVpoYy1eNj7DQCJx96IAD?=
 =?us-ascii?Q?sr5FCVdANryiw1gtncqluX/UoR0HuxQkHP5hENhSdyOXe579JWdFQk9pLWvs?=
 =?us-ascii?Q?2sFuIayE7qtbqfA5IeT5pLS5+n08roDrBkPmU6jppzQ3/Vl3/2+tiIbbfUUf?=
 =?us-ascii?Q?ohZI8YezV1BBUYNIG8+zeDvbI+WcTfrNwUKRAvcAc7Gzow5QHCWCVBmjvxvX?=
 =?us-ascii?Q?CrgbZsI7tk8X4UJuP6jD5IK1Ondw6zFHQO/HGCr9MyQqj8TZ74mA98mAcOLn?=
 =?us-ascii?Q?Tpy0zt5Td0YanZgZlibzKrCVIOjU+CakXvFb1aTtNhMIk3/lblwaZjt/WYmK?=
 =?us-ascii?Q?GMlfn+6LjN8xsYoU7mncfXtzJDcvUeHfhC/GYR4yKrqX1+orFU7IeKbGjpxg?=
 =?us-ascii?Q?gYBEivN/Bn/WgkVFN+ldBSk2XKcjheQytmxF470UVlntE+DAoMjt9sKrTBUs?=
 =?us-ascii?Q?mWvUyORoe3Zm87vRSnk4pNigcuQm8KYnXzTg4R9Jo+VgQcuRDJF43PX0eF2r?=
 =?us-ascii?Q?VoUqdHxzX/N6M3YTz6ARIyejzQjZZHd4NcnILD8VK936AFjTgb9c6CnuSrMX?=
 =?us-ascii?Q?emwpbVOc/HTPN1loh0afJNH7ddW7nVkR3/9g2q5gBhYv+V5MrEIfE/THlWSf?=
 =?us-ascii?Q?+G4bRYuc4bXgC9fZ0KrfN3A+svS3jWB+iaeWobDWZeYlLeDGEok/anOCvs8M?=
 =?us-ascii?Q?oi9/i1hRfJsPdHbY+s6gGHwnWjHoxewwo56mul/5GCfuyJPRMiNj5TfgBSd7?=
 =?us-ascii?Q?yffxoYN09GH68Vd0QCqdxQ1kXoBzYhzGfTelrgC4OSqy1g7arRP3+nE5bu9g?=
 =?us-ascii?Q?QaNHNtTZj6fx8aOJJOrJ4QjV9ScBckcxHUdw6pnw4CFJ1qxWYstt0s7zMeR7?=
 =?us-ascii?Q?HsQeATTvmozCV7KNLgpiBR3zTt811z8aSHqYZHRPZEgbMHUrZDcwNWxs8uAR?=
 =?us-ascii?Q?a2kptBzFL4dxM5wK0wyCrdg39S/nOimQkPTCRXgBsWSIPAkg6iVtrmVN/HUM?=
 =?us-ascii?Q?8vmqwIyTu73lyehI6SHjAoMC0EBAToJLjojzS6LnqSdr2qSfBxuqRvrG0KeZ?=
 =?us-ascii?Q?OjZdx9JbJhTMxV2jhbBzNruKXtRtxcIeR2XhikzCUFc/5Wjb64BxO566to1G?=
 =?us-ascii?Q?ZFY5NZilumLreNpNyY4+s7f2IFusa756LpuwhiiUKicodMcQsjCJqRhss68H?=
 =?us-ascii?Q?sTj1Ug2avAVpoy/cFwef3jE3QERkz407Z/14u1H8aFZHzfRiF9X8uky3G3nB?=
 =?us-ascii?Q?AL2zZc4qNSGVuFrwpXVBJWQZ9K2OYuJB6VdAZRaIuXWUI140i7JcpJW1daoH?=
 =?us-ascii?Q?CfVTwkSE9d4P9fzodUTe0iuQVqICyt2ZF6MCNMfHAWcwjLAwO78xRE7MLXr6?=
 =?us-ascii?Q?oS2lfS0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HdfSfBlI3vND0+N3H6wzAMGRc17KCqcXBjWsV+ZO8bdG9M7WwtKlBLtZuQMQ?=
 =?us-ascii?Q?kUGb0PmUQF+RZ3ee9m9VW+6fuG7fF5X9Q07Slk3Ow9fkhhGs7OaVCVei7E8N?=
 =?us-ascii?Q?yZmjBFjColztPmNL5UNOT72T40/SmsampxyHxfsPCIhzUiUPtdjE6SwdvigJ?=
 =?us-ascii?Q?g++210++3pfadzFFyTWe4mW4Fj+I4xW7cbR0ElMqRRpmgp5iCcQUr51LGqYz?=
 =?us-ascii?Q?z1fo/xCJy8nOmuF++rjzL9X4eorv7rW3Zby8KNY+O5imH3TqpeuGigfHlQXY?=
 =?us-ascii?Q?JFVhSKZYXySXlKZf6HteWkaFfc2HQzNsa/fdE2S4WYg/tJvoPpqHb5GPa+Lm?=
 =?us-ascii?Q?Url4/4vS+ZNIOu/THi+TqVxungzecOdS8D1ofA/qt41he89N69m693gz2zoq?=
 =?us-ascii?Q?jdkZbv2PeecP161uRr6HdVaJ3oryjUeq3juNgi+M9ZsrK03SxlfQQpAkv76i?=
 =?us-ascii?Q?hU/j3isX2iISNTgZAUy/F0egYukxvzyrkwvrzbegmYpTih4UOj6lkzNZ2heS?=
 =?us-ascii?Q?v/UZFK7He6v29Uek8TuUK/47Dkgx9mDb3VD2KF3SMJ2tpCyZxmbKVbI8Pl0+?=
 =?us-ascii?Q?BfqerlJpoOYp7GuZGAaG+aJs0LG159GPU4qMX+oUnQDdhbmFH8UuCrYq9CRs?=
 =?us-ascii?Q?EbvfjWz91F2UIGB9SzJuLSAtYDLV/2M2lVcLQxguD143Rq3fc5w+3R10sKDC?=
 =?us-ascii?Q?oSBfSSlbznnB57vk1PoVKG7q70fmTmEfnchyEn5pLE8gVK+Zha6L0O27aXUd?=
 =?us-ascii?Q?X/GRpbrs/JoYrs+ZOLnviY4ZQISTG21stGgz5SGwZO9m277sTl9shePCZuCO?=
 =?us-ascii?Q?VJeg/EkL+YrxeVfjhk/OlUDk/zKr2GmH1LKr7D1SQJlf4Ne3L1Lf1rbk923W?=
 =?us-ascii?Q?YKwPnTyUUThRYAdgxA9SDfkyxQ08LC2qBFy5F/bzizciRrqmHgZ7KoLv8SPF?=
 =?us-ascii?Q?hgePDhHdgkOR/5iuTfDZhvM23E+PBMySL6m1lHo1lOLGzpgJ/ayv0wipYj1e?=
 =?us-ascii?Q?chrnygp0ZckL4SLwJAA4tZmyvA2huWasJFsaGlKzyjkk6A0I+BukoadUBOxL?=
 =?us-ascii?Q?QH4gnxa7q7pgUEhwzNZHNVSldakaV9ywV1w/2WKVQnl+xIfbAaY2qG+iczI8?=
 =?us-ascii?Q?sq1LTm+e3HriHiMCVS3aPE9LN/MbrIU3Swqyaefd5x8DuXpS5dySuAlvr7Lp?=
 =?us-ascii?Q?+dbu4XAl7A1BPl0pGeGMRMQCH3Xr4emUC/jBhEkTDLX8NFv8Jpjd0NxDCwEo?=
 =?us-ascii?Q?8WFWR9y27rW2276XuA9xBe0dyBrNQMsBYYBZG3fE4XLZyPimOyezPDBsD8wT?=
 =?us-ascii?Q?Sje2O8HKGfPvPjiwjIPz7NXIkfXv/CjGBVuvbFi9nvtTbemG7bglEdb8q3/N?=
 =?us-ascii?Q?KPM5SkqWqnPTrawrsISe4O+m6hPBet2Go1I16p3QOSFOqFqnTdBB9PibOo9V?=
 =?us-ascii?Q?++IZCWGOSzJWNF5Cyn8TFeoV0MFgkbUI9VP3frDNy4V6Ajq/1cKX1zTsX0Gf?=
 =?us-ascii?Q?L61jfX8uM0r9FcSZ9KxiEZarFEW7B7zKlROng4ZWSu/kR94fF0CBltzx8ouu?=
 =?us-ascii?Q?c4o5OdEhQktGEhCDG02Wu6OPOGIMJS3YLkucQTz8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f36ec17-9124-458b-30f4-08dcee65a5f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2024 04:39:12.2692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q97x4H9vEw4iWMZR7JHGZmBrswscvqJ5W3wh7UmbeZ9uawmMSCpeZ4F/OZ9KachkcpmfIyrF7n5ivnXGvIMg/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5929
X-OriginatorOrg: intel.com
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, October 16, 2024 10:13 PM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH v3 5/7] drm/i915/xe3lpd: Add new bit range of MAX
> swing setup
>=20
> On Tue, Oct 15, 2024 at 04:11:22PM -0700, Matt Atwood wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL register
> > for DISPLAY_VER >=3D 30.
>=20
> So the only change here is that the register field got larger, right?
> I.e., it's 25:20 now instead of 23:20?  In that case I don't think we nee=
d this
> extra complexity; we can simply do a one-line change of
> PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK with the larger range of
> bits.
> Bits 25:24 were previously reserved so we were never writing anything int=
o
> them on older platforms.  Extending the mask won't change any behavior on
> older platforms and will just allow us to stick larger values in there on=
 Xe3
> and beyond.
>=20
> We have lots of cases in the display driver where fields get slightly wid=
er to
> be able to hold larger values on newer platforms.  As long as the low bit=
 of
> the field doesn't move, and the upper bits were previously
> reserved/unused, we simply extend the field without adding conditional
> per-platform logic in those cases.
>=20

Ohkay make sense

Regards,
Suraj Kandpal
>=20
> Matt
>=20
> >
> > v2: implement as two seperate macros instead of a single macro
> >
> > Bspec: 70277
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c     |  9 ++++++--
> >  drivers/gpu/drm/i915/display/intel_psr_regs.h | 22
> > ++++++++++---------
> >  2 files changed, 19 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 55f3ae1e68c9..847662930cb8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -314,7 +314,7 @@ static void lnl_alpm_configure(struct intel_dp
> *intel_dp,
> >  	struct intel_display *display =3D to_intel_display(intel_dp);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >  	enum port port =3D dp_to_dig_port(intel_dp)->base.port;
> > -	u32 alpm_ctl;
> > +	u32 alpm_ctl, alpm_swing_setup;
> >
> >  	if (DISPLAY_VER(display) < 20 ||
> >  	    (!intel_dp->psr.sel_update_enabled &&
> > !intel_dp_is_edp(intel_dp))) @@ -331,10 +331,15 @@ static void
> lnl_alpm_configure(struct intel_dp *intel_dp,
> >
> 	ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
> >
> > ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp-
> >alpm_parameters.aux_less_wake_li
> > nes);
> >
> > +
> > +		if (DISPLAY_VER(display) >=3D 30)
> > +			alpm_swing_setup =3D
> XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15);
> > +		else
> > +			alpm_swing_setup =3D
> PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15);
> >  		intel_de_write(display,
> >  			       PORT_ALPM_CTL(port),
> >  			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
> > -			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
> > +			       alpm_swing_setup |
> >  			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
> >  			       PORT_ALPM_CTL_SILENCE_PERIOD(
> >  				       intel_dp-
> >alpm_parameters.silence_period_sym_clocks));
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > index 0841242543ca..3aeb2af1fbf9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > @@ -294,16 +294,18 @@
> >  #define
> ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK
> 	REG_GENMASK(2, 0)
> >  #define
> ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)
> 	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_S
> EQUENCES_MASK, val)
> >
> > -#define _PORT_ALPM_CTL_A			0x16fa2c
> > -#define _PORT_ALPM_CTL_B			0x16fc2c
> > -#define PORT_ALPM_CTL(port)			_MMIO_PORT(port,
> _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
> > -#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
> > -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK
> 	REG_GENMASK(23, 20)
> > -#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)
> 	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK,
> val)
> > -#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK
> 	REG_GENMASK(19, 16)
> > -#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)
> 	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK,
> val)
> > -#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
> > -#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)
> 	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
> > +#define _PORT_ALPM_CTL_A				0x16fa2c
> > +#define _PORT_ALPM_CTL_B				0x16fc2c
> > +#define PORT_ALPM_CTL(port)
> 	_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
> > +#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE
> 	REG_BIT(31)
> > +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK
> 	REG_GENMASK(23, 20)
> > +#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK
> 	REG_GENMASK(25, 20)
> > +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)
> 	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK,
> val)
> > +#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)
> 	REG_FIELD_PREP(XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_
> MASK, val)
> > +#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK
> 	REG_GENMASK(19, 16)
> > +#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)
> 	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK,
> val)
> > +#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK
> 	REG_GENMASK(7, 0)
> > +#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)
> 	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
> >
> >  #define _PORT_ALPM_LFPS_CTL_A
> 	0x16fa30
> >  #define _PORT_ALPM_LFPS_CTL_B
> 	0x16fc30
> > --
> > 2.45.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
