Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 238E79F44E9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 08:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FC110E83C;
	Tue, 17 Dec 2024 07:17:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kudFImds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7D510E83C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 07:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734419841; x=1765955841;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g20ZnpwDtpoEyuKZ3n7X3lpPzDb6TQsPjYl/naS+ulc=;
 b=kudFImds+dLiaDRaw+m/eKc+lNhzIZKCXEymRpNmny8IA/pe99pots3z
 AJ3huYlxeWn9m1vMaM7kjwdX+lWrTmwtYHQssP7IlRDQBlRknxnh/ZFu/
 wTGzBfisfg7aUJ5YgOHNaSt/nnaeEKRCceg74cRVx0y43Pj40t/qbZNxM
 5VzBSlCn3AjhVPgtdwCcN23UtU/sFQu2+F1j9HqIozAwCoggYeMFAjoYf
 BNFMi/B5b4FIe61FXKE7bR+nEXz3GqM7hKcJdYSvZrfZThsQZoBzzf5Ha
 25iC9nkROBYepI3nbj9d/NCL0kbspHcA03Ey6zI2frJQSBFdVXhK4mBLy w==;
X-CSE-ConnectionGUID: X0q90EMKT1enPXrouXndww==
X-CSE-MsgGUID: zRdwJb61TPWkxVJbCdWr+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34867902"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34867902"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 23:17:16 -0800
X-CSE-ConnectionGUID: PlTlhHQ2TCeBpg1i+Qwiyw==
X-CSE-MsgGUID: HO4Jk9M2QC+hr/n8qIydUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102049188"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 23:17:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 23:17:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 23:17:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 23:17:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kViP1mgDd1ZoSfm/NTLUctHGuIMDn8V4YDFwAEmxU6X5PE0WdqBaO7E8PG5RN955DY9Dr11Qmn2owVIEMH0tPLeaU+yaJ0YImzl8rXDKA4/j61wenJzLJLlxqkIx+uJdzS6nnBAju8nP+bWCvme1dURpb9pkb0f/zXZlQPoSU0EuZaoNqu+aYH79nrVqgJBCCF+bnQpmDv7TSVEif+sKujHiFlzSZl9M7yz4wM3u4nnMyTe+ND8UF8fRl1vIVEytl8vRTN2/UnYX6amj3qjBIy0g8cY86USoLe1yXnY3OOJwwIbl5pitDWjzePX8pBCASJvv1rWR2bwXtf1UDT9gdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=75+Oe2o8HV1N8+SjgFuqDDzth7f8nw7AFfA7K0qVP7A=;
 b=yjltLNdp26h+SqjD/KQZ3A/CwdEj6fUMHVPtratUtOUdb8eVgBWrKxdQPtx694KQ2MiR3vSROdC60XBz33ZeIyr1e5mlpl+s+R1vAseFt5PyffQJq/lGA4AnZ+Nook58pe1iZ+csB/OLLBx2Qo+r/Afe2WgUnWLhCFjo/rf616PefPhBzfzWkR1dzehFENwfott1zxvUO8HaOrZjErIAPcdbRX+zowyy0aTv6HYl7pqvfV85LArIs41jsWp/nOG6lHktPVCPb5qBsdQnRlYgmD2B0AWXvjFbfNB5vUIyXIwBJxzxqRK7HihjUhk5RBEeyA/AgXzR5p17GZi4zE09Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 07:16:38 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 07:16:38 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 1/2] drm/i915/display: Add MTL subplatforms definition
Thread-Topic: [PATCH v3 1/2] drm/i915/display: Add MTL subplatforms definition
Thread-Index: AQHbTWxNwgvwVK0mYUWurrDIQIhb9bLovYAAgAFHpoA=
Date: Tue, 17 Dec 2024 07:16:38 +0000
Message-ID: <IA1PR11MB626682163F1B1E638E94A93EE2042@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
 <20241213143408.3051070-2-dnyaneshwar.bhadane@intel.com>
 <8734inub9v.fsf@intel.com>
In-Reply-To: <8734inub9v.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SA1PR11MB8253:EE_
x-ms-office365-filtering-correlation-id: bf472485-f4a0-4e9a-daac-08dd1e6abfa9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XghQ11lRllXjmAv38KxiG42Ds1UdPxvK9VK2HDbb9okuwBzrAI8eJPOGOdtU?=
 =?us-ascii?Q?j5P8rKBVDplS0fBSurmEeyi5n8YnZtatU4jejdc6jGsqDUUGcyzExw3LHdeE?=
 =?us-ascii?Q?o98lKerNcPDLnk1Y9h36e3ZV6VqiWPQFslmOhf2+2LHVt4EQ00/OdaBaY9F1?=
 =?us-ascii?Q?3HXE3EyKM3CXLASC66hmFD+INK/pjgD2nHP+9hKq2AvtKqswohfnvTGQ3V/L?=
 =?us-ascii?Q?8ICSiBJqvXgH2IEDigC0FfkWfMosX4tfXP8dbIePId2xFnWXBnB6eZeoa+fC?=
 =?us-ascii?Q?38MFqjlh8U6ovtwrYDVCaGy//4B3A6uw+P6oAlYvJfVMD6sJ53HpVfLPH3MS?=
 =?us-ascii?Q?QcTBtiXaoHRvCkAg1+pILB3fvZ6cnlYHd5tVqTz1zUssyJi7nnNoARlHJbIq?=
 =?us-ascii?Q?rvaRobLLKONM82QXCAggv5ZFAEzCYow8iIsbkwg3D5d7NV9/BTAihyYBn+Bb?=
 =?us-ascii?Q?+5b0oK2ly9ojvOXxQb1lkMRJRdj+uR5MG8QCQp9/dksvn432PDiNatp3tLYF?=
 =?us-ascii?Q?TJfWv6SlqahiurNySOi+P4gEP8WVqt/Mh4owB2dJLNICDUu81SFO9DvcC/6U?=
 =?us-ascii?Q?xTOaolOa2nYQSbojZ6hzjTUue8smYAPoQBylGviM98mCw4QAFM/mCcqEjge2?=
 =?us-ascii?Q?yGOvMUuBGekTZy000WYiSMM0Pvrv5HIvixTXLhDJhwwoKGrDN0PUHeB+YaUa?=
 =?us-ascii?Q?Gvez4ItEP5VVFJxPc0Cck94V1+ZlMmuBHbDvnfw3PLtjWtKiicym9A6RnF7a?=
 =?us-ascii?Q?UK1fQYRd4hUvyzq06rX5Z/Wp4IknO0afi45CnXcz3Ye7KHGdncQgNUkIwTgd?=
 =?us-ascii?Q?QS+NBOHxDt1Vz6u/MW8/BC14vE2rl6GDcQlxNDW7qrOkSvzZ/0Q2W087+yuI?=
 =?us-ascii?Q?T+7kkgaM9xdrI5vb4qOvVuUK/QE8iyRUiIRnddAuy7JkiyVC+pHXV7nPcjQL?=
 =?us-ascii?Q?bNupCUD32b0HGl2X4WzR4tF8A6KCn5HE8BKYRo1leIYK/HaFoevuCumg7KFo?=
 =?us-ascii?Q?2syfqU12LLFVa6b+pQ9SDIPey7AWI5E8MWfUVroGsFA3O5ZHGNrZAqvKIdPU?=
 =?us-ascii?Q?sQyM4MK+SjXhlPcQXn2d7GIULPIpKl73t8/7V0fmFnHdYcLEp5lQxyfKqFTG?=
 =?us-ascii?Q?Yo2KOUByZk5J0dHCebT3nQh6vp8eP1Whj1NvE77o2mcfvmr6CQT2Id3nm53U?=
 =?us-ascii?Q?SMsmntqUa7TblqYRAAdC+hov6HL3N5Y0AYgyz7M9KXTOEk8lIp1R2azGFaiI?=
 =?us-ascii?Q?rIxqVg82EHaPsXqQDvhUrjLDAdaoouqnWzwRnU0q8OvuvifkYeueHgMJcCo2?=
 =?us-ascii?Q?piXWwku82LSdQHyXEQxvIX7ORjJExnAj91d2Zs9g/bCS7c6JAxltGPCElk7S?=
 =?us-ascii?Q?8uZcmVnDGlNVzJpJ1N5RuMfXXzRBVJIDxJCu2prbtV1+2RUa/I5Hc/uniQTM?=
 =?us-ascii?Q?CYluCo7Q0/zVlQQMiIM5eiz0zXfQQhz2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UUCYNuIQejZ5o9EiJBpVkOiaPfXZ4Hopj+M74rhwzEsFrg70YtS4THM5a99r?=
 =?us-ascii?Q?YqfxQ3aMIOV5s1dT3b3pNrnqSEHMXkMj6vAnYpfL/lbwY08q0fVUJGmZl718?=
 =?us-ascii?Q?844qSvnaVJ2xZG9c3sL6c3hqhOBl2mUm6NmVwSpSS/PHQwBKq+KUQ2T7bDmP?=
 =?us-ascii?Q?IcDG2nw1D5IeqTSKauDpgC3JBbtqEfrYRYADye3tuxneIdI/W7o9eNgBkoR8?=
 =?us-ascii?Q?0xi/5ABKAQQNc+5TtcHFU5RA95qj8jTQ1hHSx+I5njsP3TxXR+GaUMN+zVsF?=
 =?us-ascii?Q?P8pJc3YUOQNI+KdAH/qp8iDuQ5SIAPGPmDMI06SSzu2i0t7J78FRCCYFLM73?=
 =?us-ascii?Q?vwgscjt13rBPpyB6HgjtH3oQ0LBGdMWkfd646OvHypKjSL57FlfMVwkdoI/S?=
 =?us-ascii?Q?T46a8Is/3PRkKcJ4JS6Q3nFKXobwJdXX/Ie+Q+PT74TKc2KrejkcZ7o1wN7/?=
 =?us-ascii?Q?uXMdmre8PWCP1aaSuADmB22ifcI1ftSoiEh44fGHj7fDpBH/vAlFXfZV63HB?=
 =?us-ascii?Q?fnV1d+RKBBik3UVN9zZ96fkQ5aF8MkE0mP0VdH1pXsyl3X9n1cEIPXf7YHtg?=
 =?us-ascii?Q?bLWCE6w9GuEilk7dWy+8Su2EY/HQVQW69WmPwwgmcoETrUFsh7kLZN+fR+xR?=
 =?us-ascii?Q?GoyFdygmMyU8LGXHPL0+9oIF3Z4ZALKhVBvrzB814r9Ill2uNy/zhFb5mvR4?=
 =?us-ascii?Q?IEW83+gzemUYEzKYlpfQ+Y8L7sDbmapQmaXdMrrkv0U1jMj0QAxLTF4Rzw/z?=
 =?us-ascii?Q?6H/nQV8fwCDRm6QaNV8fnI6FcMqHGV9/pp5NckXjf9eTU0AmpasEZ+Wvm6bi?=
 =?us-ascii?Q?FwFOTGJfvDnDF7AmmEAf/q9K/Q3JiNW7S6alWK5Ji0jjXyhF2jqEhaU+eF/H?=
 =?us-ascii?Q?+5P2a07AcvR7J6qBCqAL4Ld9PG0OWNGwsbc498sFIxjGJrECuw9D/jvlAG8u?=
 =?us-ascii?Q?hyJMUqOfD4YRT9Doh4pigsKWO2n+BKwt/MpZsodtEMnrNGDA9BekTkIQQkan?=
 =?us-ascii?Q?JLJ4FGMx5vsFpfyUd0j9Obm8JutmP/Ut/DJmY873BoZvmC/jCNo0gi7TF0Qg?=
 =?us-ascii?Q?Z7M257rZVXWIbuXdeK5TAIT0592Dr/4X4VnRKUAxsapzc3OYV7FjYeLZk0eH?=
 =?us-ascii?Q?LnZIZ7+h7yS4QzUHYgZj/lzoqSBaFs0mdnZJWOnT9dV0iWjqi9qFEsy6pAJu?=
 =?us-ascii?Q?kGdL66j5pZ8XZwnFnAF1+OMoTaLSDezic1a4kwCFq3akd/3mdPwEubAoNjPg?=
 =?us-ascii?Q?RhNtz/Ho16NryERfbWapVPRC5h4Z2k9umnVgNDNYFjlGHYHaqyr9MvFSzyqe?=
 =?us-ascii?Q?eNB9USwpR80O+Q8mzTf3blgLQVaKkGKGnybIUQg1AUMRug4C0NTR0oix9EdT?=
 =?us-ascii?Q?bqesE9zP+FSUk/HcpXdyAbuS4kobbygrxl0hjG6d7HcaL7fhflnjmz9GoKBC?=
 =?us-ascii?Q?GuY0YnuvevjScZOoXX/n2/ARyZGX5IwbJZ5P/mcjbA3qyu+cWHjGoZKYvyKY?=
 =?us-ascii?Q?Fw1+AO69gfUSkg7b6cvnA4hgXD6FWRvRj4KmKTX6vZekNn1smKqcz6oNJOxV?=
 =?us-ascii?Q?5Ue/I50KsOUoejTtW5Q63Z2NbwpNhzw3e6hj23F2KUeJZV5OSlUvBoW1iC0V?=
 =?us-ascii?Q?/Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf472485-f4a0-4e9a-daac-08dd1e6abfa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2024 07:16:38.7071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mhaYDN2Xvm7ebsy36e4ZKC/HUAu1jfxQRq3QMd8YQMnxaNRcNYhxPszixDfR1yvQ7VAiCMeZy9N2ndyW58rGDiFiLqshyc88vajjYNa1Wuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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
> Sent: Monday, December 16, 2024 4:48 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [PATCH v3 1/2] drm/i915/display: Add MTL subplatforms defini=
tion
>=20
> On Fri, 13 Dec 2024, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > Separate MTL-U platform PCI ids in one define macro.
> >
> > Add the MTL U/ARL U as subplatform member in MTL platform description
> > structure to use display.platform.<platform> from intel_display
> > structure instead of IS_<PLATFORM>() in display code path.
> >
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_device.c   | 21 +++++++++++++++++++
> >  .../drm/i915/display/intel_display_device.h   |  2 ++
> >  include/drm/intel/pciids.h                    |  5 ++++-
> >  3 files changed, 27 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> > b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 68cb7f9b9ef3..5dc689a8b1ae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -1357,6 +1357,16 @@ static const struct intel_display_device_info
> xe2_hpd_display =3D {
> >  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) |
> BIT(PORT_TC4),  };
> >
> > +static const u16 arl_u_ids[] =3D {
> > +	INTEL_ARL_U_IDS(ID),
> > +	0
> > +};
> > +
> > +static const u16 mtl_u_ids[] =3D {
> > +	INTEL_MTL_U_IDS(ID),
> > +	0
> > +};
>=20
> We don't have arrowlake platform definition. They're all just meteorlakes=
. Do
> you actually need the mtl-u/arl-u distinction, or do you just need mtl+ar=
l vs.
> mtl-u+arl-u distinction?
Hi Jani,=20
#1 No, don't need arl-u/mtl-u distinction then can be one-unit mtl-u+arl-u =
vs mtl+arl.=20
I was trying to make readability on conditions to match with specs descript=
ion.=20
>=20
> I.e. could we just have
>=20
> static const u16 mtl_u_ids[] =3D {
> 	INTEL_MTL_U_IDS(ID),
> 	INTEL_ARL_U_IDS(ID),
> 	0
> };
>=20
> And call them all mtl-u?
#2
Thank you, this suggestion looking good.=20
For now, we don't need the arrowlake-u as separate and can be club with met=
eorlake-u.
I will follow this approach in next revision.=20

but in future if we separate out arrowlake-u, then we should be careful to =
replace (arrowlake-u || meteorlake-u)
wherever needed.
>=20
> > +
> >  /*
> >   * Do not initialize the .info member of the platform desc for GMD ID =
based
> >   * platforms. Their display will be probed automatically based on the
> > IP version @@ -1364,6 +1374,17 @@ static const struct
> intel_display_device_info xe2_hpd_display =3D {
> >   */
> >  static const struct platform_desc mtl_desc =3D {
> >  	PLATFORM(meteorlake),
> > +	.subplatforms =3D (const struct subplatform_desc[]) {
> > +		{
> > +			SUBPLATFORM(meteorlake, u),
> > +			.pciidlist =3D mtl_u_ids,
> > +		},
> > +		{
> > +			SUBPLATFORM(arrowlake, u),
> > +			.pciidlist =3D arl_u_ids,
>=20
> You're defining subplatfroms for meteorlake. All the platform parameters =
for
> SUBPLATFORM() *must* match the PLATFORM() above.

>=20
> > +		},
> > +		{},
> > +	}
> >  };
> >
> >  static const struct platform_desc lnl_desc =3D { diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_device.h
> > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 9a333d9e6601..87a614e2dfab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -96,6 +96,8 @@ struct pci_dev;
> >  	func(dg2_g12) \
> >  	/* Display ver 14 (based on GMD ID) */ \
> >  	func(meteorlake) \
> > +	func(meteorlake_u) \
> > +	func(arrowlake_u) \
>=20
> The naming needs to be <platform>_<subplatform>. We don't have arrowlake
> platform, so we can't have arrowlake_u.
>=20
> Either we can just put all mtl+arl u's together in meteorlake_u, or we de=
fine
> arl-u as meteorlake_arrowlake_u with meteorlake being the platform and
> arrowlake_u the subplatform.
This is good note to take for future,=20
If they are very specific need of identifying arrowlake-u we should use thi=
s approach.=20
For now, removing arrowlake_u and combining with meteorlake u subplatform a=
s per comment #2.

Thank you, Jani

BR,=20
Dnyaneshwar,=20

>Jani
>=20
> >  	/* Display ver 20 (based on GMD ID) */ \
> >  	func(lunarlake) \
> >  	/* Display ver 14.1 (based on GMD ID) */ \ diff --git
> > a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h index
> > c6518b0992cf..f29034ccb36c 100644
> > --- a/include/drm/intel/pciids.h
> > +++ b/include/drm/intel/pciids.h
> > @@ -811,9 +811,12 @@
> >  	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
> >
> >  /* MTL */
> > +#define INTEL_MTL_U_IDS(MACRO__, ...) \
> > +	MACRO__(0x7D45, ## __VA_ARGS__)
> > +
> >  #define INTEL_MTL_IDS(MACRO__, ...) \
> >  	MACRO__(0x7D40, ## __VA_ARGS__), \
> > -	MACRO__(0x7D45, ## __VA_ARGS__), \
> > +	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
> >  	MACRO__(0x7D55, ## __VA_ARGS__), \
> >  	MACRO__(0x7D60, ## __VA_ARGS__), \
> >  	MACRO__(0x7DD5, ## __VA_ARGS__)
>=20
> --
> Jani Nikula, Intel
