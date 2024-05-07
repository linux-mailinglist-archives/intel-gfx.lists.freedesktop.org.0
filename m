Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204BC8BE093
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 12:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA6510EE98;
	Tue,  7 May 2024 10:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QImqK0Gl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7385E10ED51;
 Tue,  7 May 2024 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715079594; x=1746615594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zA6jWQmseXWMFQJTLSFg3J4yaaL9x2tv9d3BzFczzgE=;
 b=QImqK0GlhAW0qbDgga0EMXspftLNp5onmb/gnaokgxAoATeqZctLbhbk
 oKLuyKg5JD5y+GNi/jEBAhsWUyiTzXeGJ51i+QJRc94GPP6BoVcnF1zzG
 DEVItVKDWA6+y7B5SmdXkAxu4vYGi1XtM11hK0vBfz++yXxY62Pnx2uz7
 IteoqRcnxWzRh1mdMiaQJmB5z3tIOHMkVM2LcVCZYAKH5FNAdehrS/Mpc
 AoSVOKwuz9F9+R0/IgOl/4QpH6tg570cjlX08Dr0ZehWVRvCmFlIkKPsX
 qyRmU2jj4sP+aQlDnuT+0bpADEHN0Vk+VTbC0E3j8FJfp29Vm1F7TLxgZ g==;
X-CSE-ConnectionGUID: b9FECL7hThC0CXgdJ58VpQ==
X-CSE-MsgGUID: iTqNTy42TuGNn4dri/+bKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10719486"
X-IronPort-AV: E=Sophos;i="6.07,261,1708416000"; d="scan'208";a="10719486"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 03:59:53 -0700
X-CSE-ConnectionGUID: Y1IfkWLgTEGY7eOrI/oTtA==
X-CSE-MsgGUID: nErJwg5/R1OiUw15hqsX+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,261,1708416000"; d="scan'208";a="32953104"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 03:59:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 03:59:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 03:59:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 03:59:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNwBtW8Hy0MJp4d/+omBLe0O2zwaK1Gg+hY4n1Br7l/bdB9LWVdSXehQrpxFmmrFxD1v149lP994zLoem9hQa12ENq/s2zlTa5QHiZcOwbVr31QqvRHxMn4oaF0CCy6Vu1/JdtrO+DJPlBL9yROWu7vsf9xCC02GOCRJEpHUOtEWq+vv8i1RJbkpB4vc0ljMkra5a4mPksV6w8wIJ+Bl74vKMac9CuFRWeBsK0OgYL7rrRoMg7+tYWmQRnMPeC6ESv8Sss/dRDPMfNw1dwOkiQQ1M7t9xoEfnAUgLNSLstIuBkvzkPI2B+RIahuNg4ajyOoxVf99VQntGh/Ln4NEAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mB8uANUZ68G77uBtVXiyWyx+nquMyoJunAW4sZeYluU=;
 b=kxkFAKowuC9pExKl2cUh2y9F9QX0cPEZ92bUIMf7J9cI6qOA5I17N/p9MsNUlV/qh07Hkl6oCVgEKpnzdfXxiF8Qx+mGGy1MoL2WCcZiloS7QBSRr92xtvdMFxXfU3gGqy1GSW3K+pz6zFWpy+BS2lOtv6nwcaDYsfew2yjmcGaieJ/e+4heAx1Bz6boBeMIcjlsQyibkqm0dBU/ohpHDjBodoonv58kMORdAcIpF9IzUSkHXiF4XHUsVE3/WqKeMiS3CXmdi3fbqPm6SWMPREMjsZOC7DfU0MFXonRUn8YWx+gabDwq2aGrhVEFL4VcNNdYn0U/FUvykS3hNY5OUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Tue, 7 May
 2024 10:59:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 10:59:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [v3] drm/i915: Implement Audio WA_14020863754
Thread-Topic: [v3] drm/i915: Implement Audio WA_14020863754
Thread-Index: AQHan52a8JXy0ZpDekOygeoIFZXdurGLl0iAgAAD8lA=
Date: Tue, 7 May 2024 10:59:48 +0000
Message-ID: <DM4PR11MB6360BCCF881545AD9934989EF4E42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240506101817.2590328-1-uma.shankar@intel.com>
 <87frutlx7u.fsf@intel.com>
In-Reply-To: <87frutlx7u.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6231:EE_
x-ms-office365-filtering-correlation-id: f2d03bab-5e0f-4898-5366-08dc6e84d016
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?XSpwiJU/dAlxshJGu1ol2OHf/oXsfSmNNOYnFfnA1TIyJkeqod4Tps9c4mN8?=
 =?us-ascii?Q?0O14liWdAY82mRXVVbspIfQTlt9OM9YKpkAV94RGN7Te2ff7z9uWygBjHAMl?=
 =?us-ascii?Q?c2ptigFbNJuhiEqUgTZ8AwgtdUVjLbJgGiB8DUlw3qYj9+VZCLyJ/bozjnie?=
 =?us-ascii?Q?wUJDv779gCt4PS2cBkcYGFrbFHt/dNF1lzRpHe+HE+w9wJJfNqtWOUnZo+Yw?=
 =?us-ascii?Q?72LCLd2l/F4serAMDviwq9EKbA3Ln6MJDXtT8s04deS4f+LiL43OhSQ5ruwD?=
 =?us-ascii?Q?MAGSt7rsVRQ3etTihK5O/dv20fjgjR+3lHNKx9jSweH0BIAtkbzkZjXNaz8U?=
 =?us-ascii?Q?VNKGiu2YhpjN9HPSDnZmYawwdhUCZFifyQkXMzUwv0hbR4X1dN6utgWTJKTZ?=
 =?us-ascii?Q?h9PxO9sTtwcUsVm4a+urXr/DeD3fbtBod+3AQS0DLp9yZIs7tXnVlEAWWnDC?=
 =?us-ascii?Q?DDP16nnSk417q2u757BG6tsqxgQJW5PLQqnE6FONv3Fxqcbe/1C+Qr3O6als?=
 =?us-ascii?Q?SeWwUvg44wZkEvf4YL/dmXtakShQjoXLKjhuBp+cF0zvcASQf7BIr8sEhj3E?=
 =?us-ascii?Q?TzVKNj85s0GJgZQE4P5V2u+lmRzWpds116xIuYLp0o88mO+v0Y3hbbGAUegy?=
 =?us-ascii?Q?KnSaeYiDOKIdXhYfH5VeVGsi8nc46zRp685muVFmWlLNPQNh8I7UPi0XYGcS?=
 =?us-ascii?Q?Uxcm67UK29B/80Gi7j/hi1nej7RHHs0Zl0pMcA7bmssvc23i/WlU7o71c7EZ?=
 =?us-ascii?Q?h5/cl9mrggZDY1rUPaWtJRL0f8jr1QaKDhU+G6INjolyPh4JRp2098R52gTX?=
 =?us-ascii?Q?joT7XaX+CVfO8QslYndaCMygFVUSM4JL1CsdFhLbyirl5aXSwJAjpSJ1RYvx?=
 =?us-ascii?Q?YqFI1Bl3uCKGHlWUUuYjsTzO9UTvzsaHjM+B0waFIOaH2IMZPg9qSjNkWk0v?=
 =?us-ascii?Q?DX52TBIEsl5gyj4J1fifU1ozwmnyrZUPJZmo0pwYIsLqhao9fNFdczosRmNo?=
 =?us-ascii?Q?cbj98DTWH1UpSAPZPrhX+2ekXVWsb3mHHPQho+rZBRtgei32hAtg3+7/MV0/?=
 =?us-ascii?Q?uf7m4njSHZeyc4iS2Q80hD9348ocT8CuEspvi+RvslaSlji35zXfxV/qeaCn?=
 =?us-ascii?Q?hR8v3D80JYVhw/zYP9msHkXYaoSHpzgSQabtTLFD38UAoggSOvbh0B5RBzVK?=
 =?us-ascii?Q?l98rgZBMmG5IJbru+pqWJ5jI1RjM6l1PgrqNjQq/7WdSCvx5ZZOBBfmij8ZZ?=
 =?us-ascii?Q?WJ3hHorLKJHoF7GU2ZJji4016DqVEluJQ/9mgilZ3+sMw2IyrtRzT0045S+k?=
 =?us-ascii?Q?zs9A6FoePNDuv3q7glDpswT/BootSh5cjCIeGiMEo/zuTw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CddFfRe3GT6ZnlJ92S8CODAtF4gLsnCsL7jMjkPqKJXrPRfnpPordDu98J+8?=
 =?us-ascii?Q?hRuKnKVB0KX6X8N7/PXxAgqAF6N42R3bEZfM/W6tJw8MFAzUTHs9GZvtxLty?=
 =?us-ascii?Q?8XXQ7LmMZ+kWwsrhWgcOC3AaiZHfsIEABbh174z/7AKyi9tKFcWwXN49GEXB?=
 =?us-ascii?Q?w2Fan33o3xEfXH3nHtDrD+9uHmnj4GX+6iOmH3gok61biOg4h1I1+93evO9m?=
 =?us-ascii?Q?aNpVIdYcNgClZuJl6l1fLsj1fyVt3p6KEJc1zgQOk0tX20kd1+jvHwPo949I?=
 =?us-ascii?Q?ZkNFolDOONf5bi2vnWy+luvoxCQeEtHPMaxrLf7MU80xDxEDc5807aOHJJCE?=
 =?us-ascii?Q?AlVQfSgNKIAJq9QdrP+hNX2mV2b/tDSeZZTCGrr4VMojsFgv/KzUwurXIMoz?=
 =?us-ascii?Q?I4+Z3kwtKjjKdxw7ucH8T50BG2LTtswUjYaDr0oyYZpToW6J7/OUVnWX6OcL?=
 =?us-ascii?Q?SG1ppQuHWAZibTXIJvzcfSrNn84WZvXtY3pL8qhCi0YjKd7HCs2JIpzj80rH?=
 =?us-ascii?Q?QSAbzDsBugLg4gqQEL+e4rE/DwXPHlbSccDkxEx+6WS9gkysG1DMJiXYW4+B?=
 =?us-ascii?Q?8goeaeeixMmwJUvSxxzrnxGu0VXrWUe2Y0HHgETYehZOAcR/ZofyV+Y1/BVo?=
 =?us-ascii?Q?cpAPYKtFZMevqspA0p4hAdZYU8gyFrOt8J4sFN7I8fvVLssvErxxFnqg3AEd?=
 =?us-ascii?Q?iimDOMYkbcSP0HyRnmu8zTVa9zi9glbnqqXwFm3QFXa/dyluIO78fkN2ATwS?=
 =?us-ascii?Q?B9InX0bgM+HIbti3FetqEyw3fFdUx2p+MUa7ENXdcHHznG85qSWXJyzo9pRS?=
 =?us-ascii?Q?bw/H8FTGH7h5fLoQefJeXLbARw2buSnpwUaSgEGW2uNG9EZAWdFmZ7tV1NWE?=
 =?us-ascii?Q?LrJT15X6J6LoQKr87rq5zB8uovmwZkO4uJ5i/X3aDrF1fn0TAc/miz2oyKm3?=
 =?us-ascii?Q?eHvyuH/5KVaaIPSEjFvwbPClUWMCtYdTM416xlcs6M28ntDgXDsXOX9dinIc?=
 =?us-ascii?Q?HIi6u6IR2miKlqHVqjYx82nAsHMQ7pzw5pOpb5d4qAQ/NDpZDo/gAOzwpXwk?=
 =?us-ascii?Q?Mt/S6SwMXiABD9jbMkLOwtFlfVDcjl9LCKR73poiZCBFlvGRvdBkPcQVw2VN?=
 =?us-ascii?Q?RIuo3jSJGpv7LFvcCIxsWOrEU2T1/iCxYb4YLS5yp15c010+Ms2iUTZpI0jv?=
 =?us-ascii?Q?oMfscOXWAH/0YDlLf8gkR+jECWpoIzeF5knkmYA4kiDCFyBOpkxP9Ida7gLN?=
 =?us-ascii?Q?SyYdjewUwOA8hbSzoOsPC/pFJpo2hrbQJhzoqSe609WLrg8JHaEJznFBTse3?=
 =?us-ascii?Q?EVXCLk5IOIaTZeKF8zdUItCie4ZH3ufIo8qIIyWHIOdL1rvn4COLK14Wxaic?=
 =?us-ascii?Q?OYVp3T9NWoB8/aSzuyfRuELmOd20F8A2nMRyoL221f+cHU1pWXjR9TT9Cygp?=
 =?us-ascii?Q?FM4o4bVD/TMvhjAmuptgMqE5VJZh3v3vNZtyW0le0mQrueRRCsP7Ek+LdE6w?=
 =?us-ascii?Q?OsfYVg63Fms+lBWoo3pY3j/zBaUyeJWfphESXI4TdPX1S55X1M5PUVcmG8iy?=
 =?us-ascii?Q?ub6LWF6J8VClQixSJmYebCRtwpGGTr78zA3+bOn9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2d03bab-5e0f-4898-5366-08dc6e84d016
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 10:59:48.5105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v12AX+6I/ymAOXK3agAamOyO3s0HFsQ1nA/JkrKvhajFjbqlXcuVtswjDeQJS6I2R27ESEvUTOqfqFja2PNHYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, May 7, 2024 4:12 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Roper,
> Matthew D <matthew.d.roper@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: Re: [v3] drm/i915: Implement Audio WA_14020863754
>=20
> On Mon, 06 May 2024, Uma Shankar <uma.shankar@intel.com> wrote:
> > WA_14020863754: Corner case with Min Hblank Fix can cause audio hang
> >
> > Issue: Previously a fix was made to avoid issues with extremely small
> > hblanks, called the "Min Hblank Fix". However, this can potentially
> > cause an audio hang.
> >
> > Workaround :
> > During "Audio Programming Sequence" Audio Enabling - When DP mode is
> > enabled Set mmio offset 0x65F1C bit 18 =3D 1b, before step #1 "Enable
> > audio Presence Detect"
> >
> > During "Audio Programming Sequence" Audio Disabling - When DP mode is
> > enabled Clear mmio offset 0x65F1C bit 18 =3D 0b, after step #6 "Disable
> > Audio PD (Presence Detect)"
> > If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave =3D
> > 1b)
> >
> > v2: Update the platform checks (Jani Nikula)
> >
> > v3: Limited the WA to LNL and BMG, added a helper (Matt Roper)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c     | 18 ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_audio_regs.h    |  3 +++
> >  2 files changed, 21 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> > b/drivers/gpu/drm/i915/display/intel_audio.c
> > index ed81e1466c4b..cb055c16dd98 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -183,6 +183,18 @@ static const struct hdmi_aud_ncts
> hdmi_aud_ncts_36bpp[] =3D {
> >  	{ 192000, TMDS_445_5M, 20480, 371250 },  };
> >
> > +/*
> > + * WA_14020863754: Implement Audio Workaround
> > + * Corner case with Min Hblank Fix can cause audio hang  */ static
> > +bool needs_wa_14020863754(struct drm_i915_private *i915) {
> > +	if (DISPLAY_VER(i915) =3D=3D 20 || IS_BATTLEMAGE(i915))
>=20
> Why do we need to check for both display version and the platform?
> Especially weird that it's || and not &&.

Hi Jani,
WA is applicable for display version 20 and any derivative, but it was also
needed on BMG (which is based out of MTL i.e ver14).
Hence added this condition along with a ||.

> > +		return true;
> > +
> > +	return false;
>=20
> The whole function is just "return ver =3D=3D 20 || is_bmg", there's no n=
eed to have
> the if and two different return locations.

Yeah right, will drop the redundant if.

Regards,
Uma Shankar

>=20
> BR,
> Jani.
>=20
>=20
> > +}
> > +
> >  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */  static u32
> > audio_config_hdmi_pixel_clock(const struct intel_crtc_state
> > *crtc_state)  { @@ -415,6 +427,9 @@ static void
> > hsw_audio_codec_disable(struct intel_encoder *encoder,
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> >
> > +	if (needs_wa_14020863754(i915))
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3,
> CHICKEN3_SPARE18, 0);
> > +
> >  	mutex_unlock(&i915->display.audio.mutex);
> >  }
> >
> > @@ -540,6 +555,9 @@ static void hsw_audio_codec_enable(struct
> intel_encoder *encoder,
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
> >  		enable_audio_dsc_wa(encoder, crtc_state);
> >
> > +	if (needs_wa_14020863754(i915))
> > +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0,
> CHICKEN3_SPARE18);
> > +
> >  	/* Enable audio presence detect */
> >  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> >  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > index 88ea2740365d..7de82cd3380e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> > @@ -164,4 +164,7 @@
> >
> _VLV_AUD_PORT_EN_D_DBG)
> >  #define VLV_AMP_MUTE		        (1 << 1)
> >
> > +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> > +#define  CHICKEN3_SPARE18		REG_BIT(18)
> > +
> >  #endif /* __INTEL_AUDIO_REGS_H__ */
>=20
> --
> Jani Nikula, Intel
