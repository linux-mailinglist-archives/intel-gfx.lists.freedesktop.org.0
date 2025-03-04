Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9779AA4E0EF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:31:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 333A310E5F5;
	Tue,  4 Mar 2025 14:31:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jeY5SdZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1A910E5F3;
 Tue,  4 Mar 2025 14:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741098707; x=1772634707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iLNDAMAufnWjAcBMm3war96p4mG++dqe8n7m2PIw9DY=;
 b=jeY5SdZyOzWUbNmWhay4y9UTi2rZeQi/PoiIM6JohIbBgeX9PaPybOZL
 FC2VmSt+2lptWzZ7Vn2ZeIfTUgldlKn9Bms1DT8WwWV0n6X4I3yGyP9eC
 qzQbuVr4AxwUHBffFgDZq8HBXlrbOEy8wki+J0HpE4oINsJzFJNfcTGC8
 oYigvmfWZeOjRRgVRhDzKYimYZuN/q36Q1KUuGKJ6VhQ/EMEOar+9niAO
 FiZJMtIIahuRGY18T5UpK0COZR3Cx2+qFWy8nqoZjLYqp5wef8qcHa5xs
 kzB/ZlewifIjHRDNehDKKYg/Bebp61MyHgZtGpPQL4rHFXwfNc8pIN1PC w==;
X-CSE-ConnectionGUID: YlF0Yl4ZSI2VmC60aV4UYA==
X-CSE-MsgGUID: tEA4CS0XQgiew+vp8HBGeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45944661"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="45944661"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:31:46 -0800
X-CSE-ConnectionGUID: DPnGJhQTShqgPk9kIZUT3A==
X-CSE-MsgGUID: 7poMzkukS6mqh1avLBsSWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="123393162"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 06:31:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 06:31:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:31:45 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:31:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CNnfICBgBU0qz3p0NK8qZIJxBsMBiEqaS+1WcZOD/bZXn5TxdSJ02+gxfdbKfFsDyo7UNM9KQeh6/HvFjsw3nKnSlcfh9hdND84VaKg/hTx5dFP0DlvhXVhgGvXpiSj9JBUkxefy0H9wR0qGvZtezidxpaggAR4LJ/jXC7LvOxe60dnjJlRNPYDpe90rECstCV4ZmUgP6XXw7aTcJjPH3txy1wYRtKOog/priOgPwOlCMlQ+9S49reEpyKUxtQAd2wf4U1Zt0uSQVDxqDh6AEF/itmezYHhSzTbWvOmSuEvH+Mi8UyZR3W0Hhij8sBdNRPXAHrrgAM15XINklwAZdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Puspld9ipWX9HI7vc5+IKL+QvnEITcH6OPgrLThA5Cc=;
 b=bNPWF4QBm69KD+ehSDksFDpEyb1uzgoK4uWo2mzPJyXfHLbETntqChuFzpMJIrvxZPQWT/RjL7fGzT7RQ2FxTzDhToGONF3S3N8miFspXwWL+vL0MonQAxxqt4tJKbbGFTDkLhNr5xyFmSrWvNBgjCgOva674wsQ8UkTJ8+ZX6X9XdMARvfFsujF5Y/zv2Xo+bDPZq5p7aXsHpnO082wJxLtWmQmrKAMevAcZYOYa4r+ywZ+47+0vKpfCzbn3UFGKxjnIdSdjFHOfCka5cyv5KdTATHVHmXbIggZ2fc5JIWZXpxIPMinh9rPDYhoobGZvLTsjaNEBqzfuO36J4k0qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA0PR11MB4735.namprd11.prod.outlook.com (2603:10b6:806:92::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Tue, 4 Mar
 2025 14:31:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 14:31:43 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Thread-Topic: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Thread-Index: AQHbh7KQuXh93mOwdkOymrAx9GKN8rNc7RoAgAYngUA=
Date: Tue, 4 Mar 2025 14:31:43 +0000
Message-ID: <SJ1PR11MB6129C464034F1BE273FC3C3AB9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
 <Z8Hk7sSnEyyj1Rtf@intel.com>
In-Reply-To: <Z8Hk7sSnEyyj1Rtf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA0PR11MB4735:EE_
x-ms-office365-filtering-correlation-id: edfc89cb-ca2f-4af3-f481-08dd5b294917
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?FEVKatuQPFZuMH4FlYIVFP17IkgZJ+WPgkaXIA4Vl14fBX06+S1MlzGA2c?=
 =?iso-8859-1?Q?l/MCkWUPKLNy8aexG/zu15EKTgP0LpzdiKPV+W7OpxfMSN5QfJS8ftMX3V?=
 =?iso-8859-1?Q?7rUfQav/t6mALM9qpddCQ1T9sweADv/cXT551YlNSNvMxUxQA1nH77qdmU?=
 =?iso-8859-1?Q?PnGsj+SbT/DfmKfWx3A0jb2NCMZ0AcmCT84xGiQGqzxPl+KzWETLMAN4dd?=
 =?iso-8859-1?Q?Md1sPveAgvuehEV7NXa/wdOiJyNEXoyOCYGja6JBkTducPs+p2ioEtJJvq?=
 =?iso-8859-1?Q?cmLg313epraawYY0C9+Byo/4fpI68gQI7RrI95r0q5ZUR8l6tr/frY3T/A?=
 =?iso-8859-1?Q?2ShGmkJL2gmdaBduKv4qDwKIkQfFzj5nUmmVZxnfPDRRVn2WP/I+lJJ2Za?=
 =?iso-8859-1?Q?JtUs/IMsFfhT9GSYdxUF0hVX3E8S1TuPklZpf0vo9rWwQwJ3mBZrf0A6Mj?=
 =?iso-8859-1?Q?mBGWTSYsSamfWMTDby4vvmet905ZS+IuJdJJMe4AUsDzb0ZQDs95ijCFMn?=
 =?iso-8859-1?Q?hvhwVsfwdSqClckz/gtsmS06UgHeZ8RM41M5D7nq9o7YXt6kLNCMihnTTS?=
 =?iso-8859-1?Q?BbbQomIgfQMsf+3/uMGBFmktAcj55OqWW53INOZUrlX7YieCI1m7rcPj4k?=
 =?iso-8859-1?Q?tWtlxjByEll4LNXwjxQwh+SCqe739plMF0fPMe/Txz4bucWAjfG+GKnM+8?=
 =?iso-8859-1?Q?MeM0BKWxUcI4ZiQCUk6gFx+IcOHpHnY8n6bmcesNl35uj9Lex87BK3/YkO?=
 =?iso-8859-1?Q?tlQAZOFDZlE0q0NQzY9GTRoE2VadsuiYnmsr6thLxZ/DFwsz46q7WkPST2?=
 =?iso-8859-1?Q?7hdOzxI5DONG2se2jf/wMkR7G4LWLlNSgPTbFeqjmI6KXT3R9OHjo7f2Gc?=
 =?iso-8859-1?Q?3kC8boeu3ggWuJsAxWze9bRdFTx+SU86BnKfdLAdzq/6lfq6fUle2+RgAR?=
 =?iso-8859-1?Q?8JKJBo/zfNZftqMRjlGF4nIKqY7vhTlVyVKvHuhqR+C89hjxnrvZR5inUh?=
 =?iso-8859-1?Q?bP++ha7HrsmI7p27U23UkV7CnCLmihfITWiOZCcQv1YQYW8wOFbH7VPif6?=
 =?iso-8859-1?Q?NSPig7gj1IDpNynZD1fwCi0M1t9e0tAljkUw3fvotLYv2ADWNH/wCIQEAv?=
 =?iso-8859-1?Q?TC5p56yDE9x6WLvzekFVxjmwJsga/mIBmVExZgs4j1lqOUsM33fsTyyZSg?=
 =?iso-8859-1?Q?4QbAsgvKg9U3fKFlzoAreK+Do4bMVdvWZpkWhVs2dexyFjhtSkgs1DE/5c?=
 =?iso-8859-1?Q?+69njYUNIiFLmI0+iJHBibyLSKaBuktZjEuGI5xE4U9v0b5tzCIXK2ts02?=
 =?iso-8859-1?Q?xFACa6/dCGDIwV0YTKSV37S1CMPwFVuG8hsfbJtP2c2wpNUsINthEw8m/Z?=
 =?iso-8859-1?Q?LdEJkldMddMKHCj0xn7//mm6SS+GrXpDdMYlAe+6TeyBRUxrynWTzilRC2?=
 =?iso-8859-1?Q?3kJszJlxjcu+VxTFwbMBMHqUpdhOiFwf78mtVQhvNSVbA++Roskn0sa+8t?=
 =?iso-8859-1?Q?S6h5rre78r3L5V8dk6GCGt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3jrQZ+Jl/DXuTpVOx0zffvAvK+W0hQMAyDrPMC2EO0yaP16WjUA771TYpI?=
 =?iso-8859-1?Q?uohd3qfRIWogKM2tvH3ja05sLPlQVLaD17ZWJiRHmLT24ZsOTMp76uDj+Q?=
 =?iso-8859-1?Q?wX/Divq7wfpwaIwtBmCbKPbtgIscMQMxEIGsaNFQ9wioAz1c7NQ8nhwMS3?=
 =?iso-8859-1?Q?FVjjVAQGWA76pal/dgCkDIQ7NA/q12QWQgHKLgi5ipEVfU9ghJXnYBEaiT?=
 =?iso-8859-1?Q?gAB58Gfox49NAHiKviehlPqhj6nDqmVjUy9Ne5D1j+h3ADlDFj/8ZOS3qU?=
 =?iso-8859-1?Q?GLVBncAnxdhqomMoJti613mdiKSTxmgQnFdGbMu4NNia8m02K4tJfVMT5Q?=
 =?iso-8859-1?Q?i0L1m0eUoxvif7flITdzWoxas0694Csmg+qzLr3XSgiczhwTXGvNh/66ln?=
 =?iso-8859-1?Q?R4y48TCn1sbBX5FrlOKQ07vjrbDue/krVMo2z9ZpsDhR16RjrQVotWHi1E?=
 =?iso-8859-1?Q?zvEKJsAscNI8oLHitSmh8/i43knBnDB1I3HvhnZCrYNmETV9fl4Uk7hCGY?=
 =?iso-8859-1?Q?gVsbJpIfJv/Z7cPSfBKt1jiSl/XOS72uA/S1K9PnU1+PIu6pMoJc3h9e4P?=
 =?iso-8859-1?Q?F6qtc+AIfMA6Gtkqb4qNUam4MbNZ3s6DnU3lA3KQ6/n4jhfyVLTBDrTSKB?=
 =?iso-8859-1?Q?uHWQFSSga2zEA9g3LGWuBqkZxSQzW8q88wYeZq3afTHzOB1EPB+3yqANL7?=
 =?iso-8859-1?Q?3aVBfHeyP+xKoxAP2a+F5m9fUwQQ4RC9pEvoFBZN2Xb3V8hi2GSKvNrfMr?=
 =?iso-8859-1?Q?oD0t9ol2FuJdtPm7I7p1732nMBzEkVTad3iRUt3H6AyUycmi7FUSgfv+or?=
 =?iso-8859-1?Q?zKcVdO2J8knKTAdrGZvR5LXPKjXSKFqWS0rBGldsoCxBVtmwDeQDIIAT7Z?=
 =?iso-8859-1?Q?PM4s40VSr7PV5l6kpsNssWJC+8s7/zySoT92pl6g52srD7fnYAY4V8Cxpo?=
 =?iso-8859-1?Q?txl4MCrN/kCXYw3WbrZrVKJY16D+zS3JpItmwupfLaLTOCyayBZnJ2B/Ap?=
 =?iso-8859-1?Q?iLBjryTF3g+wJWvDQTItRQoxFS70grGZNkZeEzJLQW217MebIPmyMyOv2n?=
 =?iso-8859-1?Q?7Uaxw0M1eiA7o/SRabliqdvKgtXXJl7hPUKEqY1N4uQkf++Vfc8f5c35e5?=
 =?iso-8859-1?Q?CLZ/eYrTkwX6juDqqqI5XpWavVU3hD6Kle11EIosCqi2VzWZ4cQO3aKmCW?=
 =?iso-8859-1?Q?CwfM9uIvce3CE57BWMg/Gh9G3YRMGStA886tDIokgqguYJOpPZOkH7ZEUd?=
 =?iso-8859-1?Q?YXsd3ugpYXA0d/3a25zR04nzQpoyHgXH7Su/RtzdAz05G7vYzuWGfIL1cq?=
 =?iso-8859-1?Q?2Zc5oWiZpYxeLAH/5OZwij/BOPIMPVOSIxF3tHjcNjb8RCyIiE/2TAVpSe?=
 =?iso-8859-1?Q?TbpZB7Zq70fdSvQWJFqxqyz46gBZ1HHoKGwr1lIBkcthJpC5YwD+Uwmtln?=
 =?iso-8859-1?Q?HRIo70m9nyWal8i0O+CaHec7JFd3n2oyy/ThqOUYA5gFD9k4ZQYbBp8S2L?=
 =?iso-8859-1?Q?4TCHViqBX6k0Amz5+K62pDo8BIcd2ATrduUZzDRtjg7LSkn+K/oc1Bxpo1?=
 =?iso-8859-1?Q?HBGaz0+fd6n+yPURkMn5KMdeJhtEwca9pF1dJ4vM96fI09I/6oDBCUweOQ?=
 =?iso-8859-1?Q?fWd1Lbc9SWgDeRDB6/5GiZjuSkHqGlnIdL9P7op0vehJDXCrq3jKCZ6w?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edfc89cb-ca2f-4af3-f481-08dd5b294917
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:31:43.4364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oqPNbGXf1dn5PvmJLT4DBYq14GLiPyLjvUMU01lWYbhiGVAKl1UzYhtngWtxChn3cEzlNVaP5IVzVYCMgDX+TXfg7iQoxOgMCUqBD1wfXDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4735
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
> Sent: Friday, February 28, 2025 10:02 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT =
DSB
> programming
>=20
> On Tue, Feb 25, 2025 at 11:39:05PM +0530, Chaitanya Kumar Borah wrote:
> > >From PTL, LUT registers are made double buffered. With this change,
> > we don't need to wait for vblank to program them. Start DSB1 for
> > programming them without waiting for vblank.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 919e236a9650..9c3fdfcd6759 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7352,6 +7352,7 @@ static void intel_atomic_dsb_finish(struct
> > intel_atomic_state *state,  {
> >  	struct intel_crtc_state *new_crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_display *display =3D to_intel_display(state);
> >
> >  	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
> >  		return;
> > @@ -7408,7 +7409,8 @@ static void intel_atomic_dsb_finish(struct
> > intel_atomic_state *state,
> >
> >  	if (new_crtc_state->dsb_color_vblank)
> >  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
> > -				new_crtc_state->dsb_color_vblank, true);
> > +				new_crtc_state->dsb_color_vblank,
> > +				HAS_DOUBLE_BUFFERED_LUT(display) ? false
> : true);
>=20
> Using chaining for this is a bit ugly. GOSUB would seem more appropriate.
> Here's a quick 1h effort to implement the basics for that (completely
> untested):
> https://github.com/vsyrjala/linux.git dsb_gosub
>=20

Thank you, Ville, for sharing this, I will give it a try.

Regards

Chaitanya

> >
> >  	intel_dsb_finish(new_crtc_state->dsb_commit);
> >  }
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
