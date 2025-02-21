Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E656A3EE2A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 09:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B63C10EA38;
	Fri, 21 Feb 2025 08:16:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LlIENnDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59AA10EA37;
 Fri, 21 Feb 2025 08:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740125802; x=1771661802;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D8ovq59AsuLfAzb6R2PLBFzlSnINjBnxOvT6unmM4Gk=;
 b=LlIENnDtTLjiKN1u+TmJ/ZnNgPxSyM9IkUUOry1ExbejVeUj8XcAW1Nx
 IyJlnQGu63zNfoLXgwZL9TyV8PJRlGk9S8nQj9sqJiU6BdAdSs/obWmEf
 IxGdulHmn2e6huwO3WTxTvf8ggybq+sQaNJrZYogpZZY8CUtudDSXaE7P
 65Zkl9hUfmm4MwL3pwkcNAroNUGfYD/fondFS5UW/JQEsXk8y1Uj794WC
 7kGeNDyH1f8EcPhdXxf6mJeQ8LTTrhINPyWEp/Sm/zMx3xtrN3ZIYFfLj
 Pz3IopvA2fwzdOx+adEyiMOpu7p8S7DumzewjA8JCqEpF3y0AcjCmVZtV w==;
X-CSE-ConnectionGUID: 9X3DsQ+VSj6uZ/uoJ2l51Q==
X-CSE-MsgGUID: yDouzq94Q7+Ar/1CvzrpAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51153071"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51153071"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 00:16:41 -0800
X-CSE-ConnectionGUID: QD3IHfj3SK2DGUvX/JcWoQ==
X-CSE-MsgGUID: uMZjmI50Rh2s0/pJccm4xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="115836626"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2025 00:16:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Feb 2025 00:16:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 00:16:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 00:16:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zAbnCIdZ7DT8M0t6SpN6pL2hmgPHCUa9DdxbBsuX3AVBkCaK31NGKV+W+I5JjCPDnzQkuGD8aD9aR5xyLTWe8bOjzEE3RvOOOIf/toAKkecXf2nZa3Xi27cuoiZ86Qjm7U3qzwBym30aWpPK/bQ66mMdLTrtGtIq0+VXLWTZjyGImBPpzIyr1sP+aZOKLi1eOIjbYUUaHqFBi0z0VIEIPnSrqurf+CInsskbgyKWW5iNcYzKTfid7ehjWOXuQ6P6zYktes9K6Oz8rFsNrC/WyQXymqDkX+vGJybsORWvD6nXHxXtamrXxgFjbd+gyyeFptt4skzm/LAF+54xWPOvaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utUVpSlanUGeAp/x0dm5xPl1SJZTc3eBicLuVEFlZss=;
 b=nGlAsjX5g7FLaKZ8TSJC7M36Scv9WQbuqX1dKawnrsE2MGkppqqxKyGhaRvDfaoncvHJbV/OVbuG7VESv6mO27HYXse4V7J2SfB5yukWbN/SptS4i6AbHS6Q5Ify+sADjABIPO2KvvmFiYeX3V0IqSMWE25j1AcW6Qa0ziKD4aRzYGBqU1Tw7eenWZ5LMz2oaWgrsaFUlRa8iOTfOLFkbcS+Pq+8bAxL8Ku65ywWijiiNdX/jkA0egrR/cdJzt+rlQ2aHoCC78k1/gU35K3b1dnSGzb4cCqYthkJNI/+vn83Aeb8IvZmXPNhChbC1+SL6I1LNPknvkGZ4a2l1afAsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB7021.namprd11.prod.outlook.com (2603:10b6:510:223::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.20; Fri, 21 Feb
 2025 08:15:54 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.013; Fri, 21 Feb 2025
 08:15:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "20250221015637.507741-1-william.tseng@intel.com"
 <20250221015637.507741-1-william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for DSC
 1.1
Thread-Topic: [PATCH v2] drm/i915/dsc: Change rc parameters calculation for
 DSC 1.1
Thread-Index: AQHbhAPihhhzikqTIkmeWiHNP9CS/7NRHG9AgAA+hQCAAA4NkA==
Date: Fri, 21 Feb 2025 08:15:54 +0000
Message-ID: <SN7PR11MB67508DA3B95EA075E2209C92E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250220032603.434570-1-william.tseng@intel.com>
 <20250221015637.507741-1-william.tseng@intel.com>
 <SN7PR11MB6750624A2D50BF81D2E32D82E3C72@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SJ0PR11MB58942BE06812C8FD1E9B7DB5F1C72@SJ0PR11MB5894.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB58942BE06812C8FD1E9B7DB5F1C72@SJ0PR11MB5894.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB7021:EE_
x-ms-office365-filtering-correlation-id: b375f815-7805-4afe-5c48-08dd524ff650
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gVo5hRIvsx5W/bqOs0pSYa3zr3xTKWWRZfs9BWsHPzps8rc7MWYDCNvlhApb?=
 =?us-ascii?Q?ePw1Bsbd/9TJYmr/jHPSDWkJDSFySXbO+ngKtcCXCZCgjyZo/SMMLI3KVd0i?=
 =?us-ascii?Q?4F6oZFw7maYZAqzbH5y7uxZedOucMZkhElHIlBm1a1Xuc8eTBIcL86ucvltd?=
 =?us-ascii?Q?2lGLyIVnae8wIEm5uJKuQ8V+nZv6rJILzSli20KLykRPYoOh4H2sPMjX5g+5?=
 =?us-ascii?Q?y9AO7d0eXTxuxVCO5ofs/xsp/ot6NXkEtYD8LhORCsPLqD9UhFkS9+3F9y+V?=
 =?us-ascii?Q?0AE9ks7+ImMoflQIaaLKW8kn0sgDlMutF/xuOvGXMDxSeRWaVwqT5OwxyVv2?=
 =?us-ascii?Q?haDi0HfvEc6P1BsjcbcDgRSQVJdZSaEgp0QRxiDIcyXArOoPg4evSjjFDpGl?=
 =?us-ascii?Q?nYoDHX+N0xA+xt4wgniBtX0N8rM5RPTgrAcWq3XrepOmEPPQaxWf14yl3z1G?=
 =?us-ascii?Q?dd2SJq7bahFche9rek/CVj7pwCmlwtrWuHJaV+BlLLnGmwowSczy9etpCyD8?=
 =?us-ascii?Q?V9QGmTEUoA8WlRGCv0GepI/Hoo/3jIshNMjjpyYcTEJofvm3S/rLJWz+Agsy?=
 =?us-ascii?Q?dtq8qlpnfItBKLvbsv0PspVVKeLM8neDYzv4heaFMnaEeuP4sO8r4BIUQR7p?=
 =?us-ascii?Q?cMqWEWZbBin/qebrpVOA81KICplAmLcUfBZHMIPSHwwbZL5vYqsEsFK/VLEt?=
 =?us-ascii?Q?f1+AloxQ7G7TjPqhfadqhnfxyPoa/xVk6HuAN8dlXduxTHgvd9B6r23dw5eJ?=
 =?us-ascii?Q?YZKyYJESkXzCx9adJXXF4TUmTtDOJ0rdiTOJdDUePkibVsqYrJvCNVkcMR/q?=
 =?us-ascii?Q?HoV4rgSBLIE3wQgSKJtTH1mO8D0OnjEcGvtNMWUoXaDuJgOyB0zFe0sLu9Og?=
 =?us-ascii?Q?IJfDS/G1g1RcOCudi7ScuJljx8W3SLmDDbG7yRBTBJMStsEouW7MHps3g3Y5?=
 =?us-ascii?Q?QCZkOr37Dx/h5QnIS746Lk7BNGG2HgQ4xBThUvbgAR/GYuuadYsN+CtDZPS9?=
 =?us-ascii?Q?GRER5zR4l1hwA7CjQEK2Y/KYL4bPXkpky64ecQorT7oenfdRGyeEYj/u/hHS?=
 =?us-ascii?Q?L6lfZ7/Z+Auh9XBaYbABxKKTbWEXghDa57haFdcHZKoo+SoXGdFjzOHMfC+C?=
 =?us-ascii?Q?SH0SmBYTgKU1Yrpy4UBxK1djjUEa3BrzRTbIjXHNFzGvF/a++6DB2c8nwuGt?=
 =?us-ascii?Q?nPBM1gyE8RLcK6madqSX+cD02Af996I5PJtWAyhPZm11OwDcuJjco8TwiUkR?=
 =?us-ascii?Q?KgcG2+HAXCPDW+jsDytYzZraBjeuf/Rc5atg6+7iB0zIKLEhcRhzawPeh515?=
 =?us-ascii?Q?snQBfJ52vPkSpaZAM7LQxe+QdSlrae8hOF31wzN47DedUUS2qaJxmCwOjBFE?=
 =?us-ascii?Q?2F1G8xOSUBxlXXBntKJSMJ8ZLUma?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2DdJulosaTh89kmX7oSv/UNGXHYnFm3xZ/63dqDOtZccvdPbXHGpY7jXNblu?=
 =?us-ascii?Q?GSvwoO1p7AunbaLOJ7+wOHC89bwxXMeFzVAGqomKfzvnYyIG0AdCeh9ZgBdj?=
 =?us-ascii?Q?fwsUjD7YwAUc3MqfaHTIpabLIQTKWDtESlASxgHveRFzNbix0tvDBbBkxVsr?=
 =?us-ascii?Q?8oE98EudbUyc3+LAh3+3y/QrY3Me2PEneW8Qzv7NQmSzQBgL4qw5NA+QN/oT?=
 =?us-ascii?Q?iFFi7hgDWY7vrDUpYe2fus13SZ0NcQVfClXPqklGSy2x9UJZV0qFZ+H485A5?=
 =?us-ascii?Q?u8vOphrzQFGE6vMLVxCu8zMhokF8O8siD1TdzB9M/M0QVZ5sb5rOXhdFzUkI?=
 =?us-ascii?Q?sB40Qxyl+JZ3Fx0GYIIAf5Fz4mUzb8DtI48Snz8hY8XORYD5cS1pqWOJzJRM?=
 =?us-ascii?Q?aTXZJVxyitC8Wn4fzQzOpDph5/YMECHYxbY3jgwCH0a6p2SdcBnprZM6aSAw?=
 =?us-ascii?Q?03PbnqumPibol1tSXVI35BHS2LHzf2BztLURai2PQ07xntPOFOl2orZzIzfF?=
 =?us-ascii?Q?OnL0nKDnsqgaCrLT83c2lQs3OvdgJUvVrU4g0veq2QYQXjTIKQIMnr+uk2vI?=
 =?us-ascii?Q?wXHaONvudPK5wV6W7rThDfngPx13qZPUr6t997ybund/fSyhNU/0RTlw56X4?=
 =?us-ascii?Q?iUCMOwuJSnNICbwFo/j7+OWYpFQBpWUUlQtY4SrLaSaT2k6BEOZ5+R6ZG2BA?=
 =?us-ascii?Q?2yGVpCI8DNHPu3Q70wIC9DwoR7HCg3dWm5ESjmWisfUCwtGsTpBaSzZv4MmA?=
 =?us-ascii?Q?+otyzShSspbeIT+oMiokzoQAkJ4oD2YDghOjkl5FCuuT/dxbEPpZEjXUWDEx?=
 =?us-ascii?Q?CDQY/u2UOAqmzXuhwCL4rr6/E23+F5fgVzMTdwVxZlYjACFQQ3cjkynVVDdS?=
 =?us-ascii?Q?+tRQoX1vloJoR0M6z/6d+FAQ2+4VWhExy69VU7PdMNNPVkyNy3T2XqILE4uY?=
 =?us-ascii?Q?5sxPXqf4JbLDpUX5QzJjDZW3t6IbXhoaRH2HS22iSP2rlwrMYckSaxOiSlZk?=
 =?us-ascii?Q?hgmSL3AEke9bKptSfT29WPibTpu3nl3ivKiJ01ATfNom0s2cfw9WNaVHHius?=
 =?us-ascii?Q?khQnS8F7qYP4f0cZJG7lEiDFXN84Xt00j/qaDqR4Xa3U++/LzhbJ6mOekq3W?=
 =?us-ascii?Q?qm8AAHZE7mq4pLC3O2I2C5B1PpJjyKsP9czYIxoQwpZXwa0sj2LDGCjrrp0q?=
 =?us-ascii?Q?4W683NglGfb0U6dB+aGDJn3//LBHNdK3Ngkqce6sQHVtnvCkukwbeNptph0v?=
 =?us-ascii?Q?myChjpmpCTRIa/jqBOU9RcD4HWFMc+ECSrDtheQgfpflBp6QX9VJt+JY6Z6A?=
 =?us-ascii?Q?VWS6wtIZylqudDynqX2JXOltyIZ4BvvuUsO7MOYCTEelmSZ+Hsy/40+Zj4fc?=
 =?us-ascii?Q?GcwHmUH1IGSSsZchWVacBBPPfnYWn3hjp5yeHCscMxouRRkRE7XK6TyLMMAD?=
 =?us-ascii?Q?90bWUtVXqZow1NrMKcU2dzzvCy8Iv+IU9SVsxB5yxT0XmSovvyYW1uRLC9ze?=
 =?us-ascii?Q?H2UrgOjQFjC8WydvsuSei1kIb4oOzm3V6+pb8cL7I001kDrRvZ/CkfKy3BEY?=
 =?us-ascii?Q?AZNjE3nndtkfdFvwBQMJOlLXDIyri1Nfrecm94JD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b375f815-7805-4afe-5c48-08dd524ff650
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2025 08:15:54.4506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +EmmS9YYByGQSDfRCt1igS2Cu1AWJljewg1wS4Vr4uGZ7PdSA/BdlhDOyu7ydPZ2JKogr9uRNUhzT/DO/ni0YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7021
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
> From: Tseng, William <william.tseng@intel.com>
> Sent: Friday, February 21, 2025 12:53 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
> Subject: RE: [PATCH v2] drm/i915/dsc: Change rc parameters calculation fo=
r
> DSC 1.1
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Friday, February 21, 2025 11:43 AM
> > To: Tseng, William <william.tseng@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
> > Subject: RE: [PATCH v2] drm/i915/dsc: Change rc parameters calculation
> > for DSC 1.1
> >
> >
> >
> > > -----Original Message-----
> > > From: Tseng, William <william.tseng@intel.com>
> > > Sent: Friday, February 21, 2025 7:27 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Tseng, William <william.tseng@intel.com>; Kandpal, Suraj
> > > <suraj.kandpal@intel.com>; Heikkila, Juha-pekka <juha-
> > > pekka.heikkila@intel.com>
> > > Subject: [PATCH v2] drm/i915/dsc: Change rc parameters calculation
> > > for DSC 1.1
> >
> > I think you missed one of my previous comments in which I asked you to
> > send it to the intel-xe mailing list So that the CI can test more thoro=
ughly.
> > Also this patch is causing a regression on DG2 + DSC 1.1 config my
> > guess is it would cause a issue on any Machine 13 and above with DSC
> > 1.1 when input bpp is 24 and compressed bpp is 18
> >
>=20
> Sorry for missing the comment about the mailing list intel-xe.
> I will send the revised patch to it next time.
>=20
> As to the regression concern, I think it won't happen if DSC 1.1 does not=
 support
> the case of input bpp is 24 and compressed bpp is 18.
> What do you think of it?

DSC 1.1 does support input bpc uptil 12 so it should support input bpp of 2=
4 and compressed bpp of 18
I don't see anywhere in the spec where it says otherwise.

>=20
> > >
> > > When calculating dsc parameters, the rc parameters calculated by
> > > calculate_rc_params() is incorrect in the case of DSC 1.1 and
> > > DISPLAY_VER(dev_priv) >=3D 13. It turns out to be some noise-like
> > > lines are displayed on a MIPI DSI panel supporting DSC 1.1.
> > >
> > > The function calculate_rc_params() is implemented by following the
> > > Table E-2 in DSC 1.2a and creates incorrect rc parameters for DSC 1.1=
.
> > > As a result, add the additional condition
> > > (vdsc_cfg->dsc_version_minor
> > > >=3D 2) to get the right function to calculate rc parameters for DSC =
1.1.
> > >
> > > v1: initial version.
> > > v2: modify the commit comment and change the condition
> > >     regarding DSC version checking.
> > >
> > > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> > > Signed-off-by: William Tseng <william.tseng@intel.com>
> >
> > Needs a closes-by tag
> >
>=20
> Will add closes-by as the line. Is it correct?
> closes-by : https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719

It should be Closes:=20
My bad
Also lets refrain from sending new patches/ revisions till we root cause th=
is.

Regards,
Suraj Kandpal

>=20
> Regards
> William
>=20
> > Regards,
> > Suraj Kandpal
> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > index b355c479eda3..b0a7a2179844 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > @@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct
> > > intel_crtc_state
> > > *pipe_config)
> > >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> > >  	 * parameters
> > >  	 */
> > > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > > +	if (DISPLAY_VER(dev_priv) >=3D 13 && vdsc_cfg->dsc_version_minor >=
=3D
> > > 2) {
> > >  		calculate_rc_params(vdsc_cfg);
> > >  	} else {
> > >  		if ((compressed_bpp =3D=3D 8 ||
> > > --
> > > 2.34.1

