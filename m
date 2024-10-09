Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F054899637F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 10:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E61410E68D;
	Wed,  9 Oct 2024 08:46:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4iAZPWz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67F2210E277;
 Wed,  9 Oct 2024 08:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728463600; x=1759999600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=167NWkGX19i5qj5Y+812Z0kX0ZWxopeAhO28fWZ1cHk=;
 b=R4iAZPWzxWMCuQ9znPFfXKVzJ3yyyWkabOgl6HcVdEuq4d+O4mb5kFj9
 lq9bHyYP9eodEQnj6nqi/dcAVTitIuyxFIK7e7sMXtHjgWe/pUSb3z4lH
 wPyD2nYptxAZ/CmUjtYuFCQo7jftrFUVYgPkAypQ9BteI/CbbWZUlpo4L
 Y88Vj1XZJ1x2SXN9/cU6h7hVSlqIaaj5Pnk0NU8iku83VZU8B3cY8ETLB
 wsJ0bgy/pDoazc1T/i4wqDd7J+TQvNXb+JPxfDNFLUt9pmtV2qwnfWrwF
 IOlkcXg8XST65x4fzNfJ8qGkn47D22+lelXTd1fq5lb3Q56VMGV+Qg1pi g==;
X-CSE-ConnectionGUID: xt+r09dVQrmhD2iD4iLm0A==
X-CSE-MsgGUID: Jy1ufc9ZRA2YRmyU8QHgow==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27640875"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27640875"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 01:46:25 -0700
X-CSE-ConnectionGUID: ZiKRtfGCQqWKTdF31mvC/w==
X-CSE-MsgGUID: +GVQEIeORoihWbIEe+eHqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="75770705"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 01:46:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 01:46:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 01:46:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 01:46:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 01:46:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XPRj4fFkJ7+vgHu49Od6rHP3HP697ON+ANCe28MkP2Qg9ezT8rVNO8eK8iaVrv9Bty8L1r9KeCXzCnCJCnSbM56XjsyUoMWpIzHIjgMYsSPlGdAsZrKTnJzOOM/hVRq56OLkeKdbkDJbGIHdVE7GtsSn3vwwHzawpt3v8X/FUcEkd/ncl3TrNyet8BfZNFZX2JKXQzINrGiqRwKqej5ITJ9ghANrFRTkF7xd5FKK7fISGiLSLvwBWOlcjm36CFCgKrA2NSNhEdZsDUfmcS6BO8cDfX0CoSRdIjXVPJbPeGxq3ZGK1z/62CqE7x9uMPqVVxpzl8LUUsZ3un2gGZ/eDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p08pOHJR0u6EJNNqQ5foMKov7PnJIYwj6FrIsVX3/BU=;
 b=VuqvVVe3j9iZdqCgUe5U5QeTMrtxadgDgwQm6YkpLS1TAODKfOl5KkT8GGixb9+qe5LtadSiX1hVkZAw/uFDc+RlBmu9TEDVcvnZjoT4YBgLZ66/CWOsJkNu/89V3z+fGqGyb8PEbct2wmIcU7oWOzmPdMc49U3KXRbNCbfVdQEb7V0oY/rxA9ac05iTsBzVZrY65s64j77tmievucXxV98b7y4h6XlXm47TBgENeY3/fOTBevnOrIXLg2t4YBgc0EN/tshgFBsjvkKA+3x0tpGFa0ryIoPpmOANiAdQkSvmaM2mOvuSF0gGTt+VcsDgzHInSwSGl6i7ypFCvKqiRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB4947.namprd11.prod.outlook.com (2603:10b6:303:99::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 08:46:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 08:46:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915/color: Use correct variable to load lut
Thread-Topic: [PATCH] drm/i915/color: Use correct variable to load lut
Thread-Index: AQHbGhYrvlDZXXxmyE6xFO1YMH/e6bJ9/CsAgAAeCoA=
Date: Wed, 9 Oct 2024 08:46:20 +0000
Message-ID: <SN7PR11MB6750FEEFACE7052E8FA88077E37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009063753.1799234-2-suraj.kandpal@intel.com>
 <ZwYoymdhNQAh42UQ@intel.com>
In-Reply-To: <ZwYoymdhNQAh42UQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB4947:EE_
x-ms-office365-filtering-correlation-id: c4f30882-519a-476a-6f26-08dce83ed8b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?C+BvU0i34XZfEKWGYxxQCkYEeslcUbFJ4O69R2uSoDHW5XWMzEfZPteila?=
 =?iso-8859-1?Q?867T/1OMFEdy2nS3gynif6+KTVoFZPguRuVUuUKTK66AIBwS6eUpUDJ/bk?=
 =?iso-8859-1?Q?vsFdIJ1KsFx+65xy93+jUZ4hZEovlip4z3z8sq8CU61aYpfG3UH91zmtRt?=
 =?iso-8859-1?Q?cN3B0mv6QTwQN13OVaQPcz94ZlqocgnI7pnU39FN463lHLDNUTsrWURORX?=
 =?iso-8859-1?Q?zLOK1gNsoQj/gpkOlwofJy03mrlziJq7N6xaDrXix2RG2MOjI0E0cHXfmt?=
 =?iso-8859-1?Q?xjNkTyJSE6le9N9w3M4cQkynkPbaxdInYIDo+ZEjhw2HIDN+dLxb1Qw5sX?=
 =?iso-8859-1?Q?j7JoU4W7aQIa9LSL3UNOP7qJurv8HXF8FE6NRG+ABKNVENBzN4wSkZXs6K?=
 =?iso-8859-1?Q?jsBwfReHFUi06CUiKvZ2d59Hivr4lyCxt7rkJXCYZZ8BMsHVKF766zn2Cd?=
 =?iso-8859-1?Q?A7jb/Jk3pBfCT8yZ8Tn0e3NVBhsSXdrtRehzAWNgqVwySadSgo3FMOKrQX?=
 =?iso-8859-1?Q?YC9Ybbv3sA20q1iV0PdeGbwaAAbB3zjd7Pvt9FtzJfkKhf3NXvzgpzT+r2?=
 =?iso-8859-1?Q?UmIeunahCgG6e63pjEgU94+RkzHKZDy/m9gyBLdIJpLp0irI9pYgaAoGap?=
 =?iso-8859-1?Q?bEj0SpSAMxppRUJBwrhuoySMljnJ97PRFokowpkQqQdI3emzE+0YHC1YHD?=
 =?iso-8859-1?Q?fyOCWLw0JZA251neNecpJ65TWCsmjevQP0ceI43CDIuPsollzQX+TpiFIF?=
 =?iso-8859-1?Q?6LWWe6GIVcVcdXGEUv81gzfkicS0qULiiSXqhTSMstJFbMHskrKKY5sSoY?=
 =?iso-8859-1?Q?jopcSE5s935dV8zZUOpGBNLsN5kgtaqEop5JvMDXhEQvGafdf/IFlXXTQw?=
 =?iso-8859-1?Q?aFIf8PIG0QuznciMiFxaVwB8RnHMwF4bXuJdL/CpONKAAgQC2bxBvgcxrC?=
 =?iso-8859-1?Q?FtTj7FKNwtboCju9X5NPogIwxQzZl68g7fbJnNuJh7g07Kgvz2WNLmRcLc?=
 =?iso-8859-1?Q?LrKWibq4bJI3uZ83SQq1Yt751J4RlnikCtct7VKLW1eA1adjhspDxasTqY?=
 =?iso-8859-1?Q?PnZ9QebMVmb27mzg5YXrZSd18Nl8Jg5f02L6wiacLgejtcZXvhy0eBxFTD?=
 =?iso-8859-1?Q?tr7e5C9XATE3glxbsGP566s6/j9WLiKUDPW97wGDjMpBEsrtHmdbDkUrIx?=
 =?iso-8859-1?Q?OhxunppOz4MSKWxDiGpx4Kz15CJXmctp/lyv6F0IFIV6eZAJdOZREavmit?=
 =?iso-8859-1?Q?m+sMgfQ75OHBtU2SRXPTMMstDI47ZF5xV9QFJPrFIpzr+1i5jZ++QHtHr6?=
 =?iso-8859-1?Q?s2Lzxwd7Qgr2xxzp++WJzvBDGyxOtaPrwaE0pdn76hIjXGPrDN+E84uitF?=
 =?iso-8859-1?Q?bcpzQTakFMXlMqDr4NYtIFaGqozPQcAw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ghRzeqahILLYA0NHHeMUOB1LgvWM6/yrp4i2tYUEl3RXaHnJmz1WRu6w3O?=
 =?iso-8859-1?Q?1338SQIAgs31ReM4rwlYDR2VTDMaVU1kBESjLWEcbSpBpwCiUy5QsDvLMe?=
 =?iso-8859-1?Q?nGAT2qZX9+0dx1z93Dxa/x+SALf/o8kGnrYH2bskPg5ls4l8KsHqbsg7vK?=
 =?iso-8859-1?Q?A6nwcrc/FM1IBk1B8m1pwZflTQ40E7p3JqB8aVjECeSy4p722r/M+sP14l?=
 =?iso-8859-1?Q?cvOABuWSKWGrXQboHcXt1ZZNyjvkjCAGdWNWqsW+b8oO2fbMDE0tWp6gUh?=
 =?iso-8859-1?Q?CPDDYjqCxY0M8t82YALkcLYhPN11bT2cCMZIlY1VoEoJjwVYRmScElzvmQ?=
 =?iso-8859-1?Q?0YomtoBS1mtNgKGuuGsY246McUXUyjTS7QfmxcLtTnAJzIh4X3EAhZNjcn?=
 =?iso-8859-1?Q?7S9cKz7eBBOmoh0feTPidccPilrttc638eya2iee3NvXBpy9mbyqCYZFCO?=
 =?iso-8859-1?Q?SJRAAP4nlU2CvB1MZ1jETUpknmeKLrLBkX+SGBll5WEFs2O8QcqAnPIuii?=
 =?iso-8859-1?Q?zHVvIH+iC0UHVkehZ5wiobdCOQ58cB2Mh70CJB0xj+G4mmpSFOJ62K+Jc6?=
 =?iso-8859-1?Q?o8k4+q50CWapXPrp6Fb6BfqGudwr6qwfHuPKCniOBAJ/pus6VTUcQb26b6?=
 =?iso-8859-1?Q?4ax/950FDQgwigrhlW964xvrfELZ7M9VIGAmulOLAmNXRlIXZQHL13uYwU?=
 =?iso-8859-1?Q?+247vAkhdw5VcnVYKBHStQ+1KB/alJCq2Dv2x9T1U/DT9DVmkWbqC3Gbs9?=
 =?iso-8859-1?Q?0rJv3BB5uNQgK+/xbGC1HoNsYHco6ecQq6PlOkTcjUegJPRsYSHIkrz0nW?=
 =?iso-8859-1?Q?12ENHUPu1VOeQ+PQk764sz817a5eT0I+V6weSVpcf7IMDGbzfxpKGY9BzG?=
 =?iso-8859-1?Q?nrhS0W2/HyeM6t7kPQNm9PsSqDnLg5Y/76/ZEHxuKIj99IqqwvfZ8NX1gr?=
 =?iso-8859-1?Q?bHauTn+Q/Ch8Gqa/gpB4UMXTH51F6uO5Lhl+YeUtYz9KDxmghC3Ie1z3u0?=
 =?iso-8859-1?Q?99CMuGPWV51zpMb5bq13xSPAi34ZuHH3+lzywcXNlV/l/fumtrWf3YR7rJ?=
 =?iso-8859-1?Q?Jg4LitNAOjinXnDvN9s/FnZczOjMeVt9JdEar6PM1OZMy+zZE7Ly9mXzLR?=
 =?iso-8859-1?Q?7U4eivS9k/Tci/zJNFHvVG2eXZVvC+dehC/Wptu6O4+oXFlBmoDwueV9AJ?=
 =?iso-8859-1?Q?rHbUEojVimkR++B0+MiTUbTO8ot5Q527YSEx6YNrFDpIr8vYUgRKbkLhOD?=
 =?iso-8859-1?Q?wIH2MvnXWZjKXWpmdSJqDUbzSuRIC8zhUzbxSq4NhP2f0y+VVP5OzWZcuw?=
 =?iso-8859-1?Q?TMhv68qoPDJmJ7m+SKTpuUcSpKrkHI7LDGkvgCEIrkNjYGmpXPatIF+x4d?=
 =?iso-8859-1?Q?TnsgHTAW/Y991EQj10ApjCia6FOPpWR+wS3LZQRIpAQoarlhPKPLOWueHQ?=
 =?iso-8859-1?Q?tuFXsNs0clsvgRY3QKfe5y93VbYfHpHp0Q4q5YbdYWKYJrdvrotqiWY/NY?=
 =?iso-8859-1?Q?U5daavSlytNHTP/VnNHuP2JQo5jOE/Bm5afYn9vQ1lLkz006OW10YIdbuV?=
 =?iso-8859-1?Q?KUvshsQ03qO3/wXzguDZZRQQ643jVbhOoN38cnQnsMiD+CJjdnnrOYBQfe?=
 =?iso-8859-1?Q?AB7Nr4BP1kVMhBxCgEIl0dM5OiJIkTmDzH?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4f30882-519a-476a-6f26-08dce83ed8b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 08:46:20.0685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fIegvtRtW1FGeZZGupUHBkZeRMoTkKSGAt/Rockmso4mYWA7qOa7+rCDSzWOAagsLafzusnk0Uq0hvYRrc6QVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4947
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, October 9, 2024 12:25 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/color: Use correct variable to load lut
>=20
> On Wed, Oct 09, 2024 at 12:07:53PM +0530, Suraj Kandpal wrote:
> > Use the blob variable instead of post_csc_lut as it may end up being
> > null.
>=20
> Not possible. We always have a LUT for each half in split gamma mode, and
> if we don't then someone screwed up much earlier before we end up here.
>=20

If that is the case then the code line
const struct drm_property_blob *blob =3D post_csc_lut ?: pre_csc_lut;
wouldn't be needed but it has been added  presumably because there are time=
s
that we reach here with post csc as null and in that case we at least make =
sure we are
loading the correct lut hence the fix.

Regards,
Suraj Kandpal

> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index caf1af039960..22b7090c4f6f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1503,7 +1503,7 @@ static void ivb_load_luts(const struct
> intel_crtc_state *crtc_state)
> >  		ivb_load_lut_10(crtc_state, pre_csc_lut,
> PAL_PREC_SPLIT_MODE |
> >  				PAL_PREC_INDEX_VALUE(0));
> >  		ivb_load_lut_ext_max(crtc_state);
> > -		ivb_load_lut_10(crtc_state, post_csc_lut,
> PAL_PREC_SPLIT_MODE |
> > +		ivb_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
> >  				PAL_PREC_INDEX_VALUE(512));
> >  		break;
> >  	case GAMMA_MODE_MODE_10BIT:
> > @@ -1531,7 +1531,7 @@ static void bdw_load_luts(const struct
> intel_crtc_state *crtc_state)
> >  		bdw_load_lut_10(crtc_state, pre_csc_lut,
> PAL_PREC_SPLIT_MODE |
> >  				PAL_PREC_INDEX_VALUE(0));
> >  		ivb_load_lut_ext_max(crtc_state);
> > -		bdw_load_lut_10(crtc_state, post_csc_lut,
> PAL_PREC_SPLIT_MODE |
> > +		bdw_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
> >  				PAL_PREC_INDEX_VALUE(512));
> >  		break;
> >  	case GAMMA_MODE_MODE_10BIT:
> > --
> > 2.43.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel
