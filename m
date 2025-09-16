Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 223F4B59C83
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 17:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A382510E381;
	Tue, 16 Sep 2025 15:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDBAFVtU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04DB10E381
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 15:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758037889; x=1789573889;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dQx54IRQzP0X8x+8uMXYnHKCy8UBKF2NSMmB+PyCwuM=;
 b=SDBAFVtU1TTaMK3NX46UsyvzALkmWifhPIAEEgHKXruZ9jO/aA3RGAGy
 zUivSv0483+Wb8m9X9JvbUhNOBycW0ERW/LrBTStX3S+8Psj6SrSDu6MK
 gv22CIqGhLLMkCOdk/wCYqirmRgYRDDMlWvCmsyI2V9Rs0N3/QyuwI4vC
 QPITZBVtldpbE2tmfScTrcil2NSVO62JA9YJLQPO9h3IN0ZQjviOeeL5l
 jRvvbnqTZ3aBgALdfc0qq0Xok3LLvKNxlVdqRHB2xlJomPbZvRJ7xUv7Z
 GQOm6cG5QExXKyd2chvA72ynHlbY/M4V6rhrGlEYtzDANiL8dGYIlZXB3 g==;
X-CSE-ConnectionGUID: 1p5ZJr6dTd6tOueLCBPFVg==
X-CSE-MsgGUID: kiHut6HQSo+3HUPEfnHMbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60433132"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60433132"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 08:51:29 -0700
X-CSE-ConnectionGUID: 7g/zUprVTd+hnwHTVvq1FQ==
X-CSE-MsgGUID: zCvbhnmwTCmG6D+J3J5Wig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="198671839"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 08:51:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 08:51:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 08:51:28 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 08:51:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CRWUxM8ASNvbwiHJYgTtfFn6I1y1NvFcxFHqaiyO+L2sxoAhViJyA+XVd1MV+KU9Pkh6wvIM0/NJFNYhu9PSZ42b5vuLSSzM4j7jtQL4hOGBW4sJKoOiuOKjfkTUVPU3klymOE/BdUilILid6+vF3IKn2w7oZPEAAJyA6QLM8IhL7C+3qlVGNMHgj6pTDUarN9KNLFrbo87T9NBOFGKRTJyPHGdku8Yt/y2tB1YvgAEaT9mr2bMtRiVuTuof2WkK8tRJY6ALWmLvGXSGJ8acM2mOclPf+TZ63eE6s0Ao4ILIxcksqlQrxioCtA9N1B843Ud/c8eKz1RdqPUdluMZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cc15HyFEl+DcAo5boH72imyokikCm/hw0KC+K/iGgMw=;
 b=CZUNGT0OXwZlrRyLyxKUzfF1tVI5s7KdBEpXUwWjxTKwJdz7a5Do0uQvaqjASyWL5DgvIzgU5JYkF5ek8XjSIxRq5ED7ssX4IGXJQ01GKVwQPehmt5HXQ3rr9tladLxtNb2wXOBb71UF7w733nsZOGy96m10UXHUJi1vuNSxox5z6Wddr57ZfnXDaKXpbI0nt2i9CyjmlVdgwyPP8bNVyA9nJR3l7p2pg9k3pSFjkC/QpQAeNAGH+ZuTkmTiYI1Yo3cpo/BGmTQoVhCYq76ACUs2rGyrMkPbu/bagNpRPERJFaiQYJDcSzthS3W+7apYkoZ4KZmrJcdR1Vrjc34lBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by BL4PR11MB8800.namprd11.prod.outlook.com (2603:10b6:208:5a7::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 15:51:22 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 15:51:22 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dmc: explicitly sanitize num_entries from
 package_header
Thread-Topic: [PATCH] drm/i915/dmc: explicitly sanitize num_entries from
 package_header
Thread-Index: AQHcIWQecBM6ertQf0CrEbafq77wr7SWAJrQ
Date: Tue, 16 Sep 2025 15:51:21 +0000
Message-ID: <IA1PR11MB6348042953CCA5FD293863BBB214A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250909083042.1292672-1-luciano.coelho@intel.com>
In-Reply-To: <20250909083042.1292672-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|BL4PR11MB8800:EE_
x-ms-office365-filtering-correlation-id: c8c4b4fc-de5a-4dda-38a2-08ddf538e246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ri89oAe0U/+G2Ozo9VqPaApqkwfLJaMEJartaiNLTBAIFYI7W1qMerO8Igv7?=
 =?us-ascii?Q?Kq3O+bNPkXRAYp3/W/7zsZQQuixEeX9qf1btrlu0l6KPDoJrEoUVGl8V/oVh?=
 =?us-ascii?Q?R4ucu3SBOSsYlZ4CbooL6xSvExo3561kGn1IJRs20S9xAeMZXyziRy/Nf0g1?=
 =?us-ascii?Q?aOeKqiAZRm1Nx2ecXJrj4/FwFR5UjlD5xeUtkv79vhuvN4xznHJCSxln1G9M?=
 =?us-ascii?Q?AcajzVNlk/Py6R2T2QMAdCns6Ofn0kgZwF38VLNGS4FpLUDmp2CHLnM0o20t?=
 =?us-ascii?Q?rMoiMCZHEKVM9xRZIbOxRSsnbOi9FE+U97C6X+RdwJvFzKnX+MRk8oco/Le0?=
 =?us-ascii?Q?HGIR3uDb3ZROzEb26OhkNyp5CN6IuGYw3VUtLUN5kuM/LKfL+p+o6ZALVAjA?=
 =?us-ascii?Q?vAfovwhjnrvayk257nwiFiOZD0+GniLfwpRqQ6HTCD8oY0PULPKDSpNr9fWY?=
 =?us-ascii?Q?f/Njd9VdxVDjQ2b4agv8Z+vPO35R50X3SLY8tEErIuFbbOZ9tAPSrt5j4Dmg?=
 =?us-ascii?Q?BEjSo+lFL77nLWFmNrHNqVmHc709h+inF+Xi4khxe8yAmcWQ4uTm1mitdRHf?=
 =?us-ascii?Q?qqDByIa838/jd0RCBT46bgg97yrAUtolE6H3vrVmeWJ9lJIT7BEw1Nx1ldA0?=
 =?us-ascii?Q?Vi/mPwmctdFzfaQ2daOVNIVfzd+jP+FFhcaui+DYKOW0VB4mLXgpMX+Sk/4m?=
 =?us-ascii?Q?ueNZjNEPSn3eVGKN4DVrO/BPTw74LYJdflsrYHUj5862X/5iF7Fx5keFXhd3?=
 =?us-ascii?Q?Q0RNaP0bos/hoG0kw3QKCtBjtftTqK5gYsTg85pduXhGzVP9gIIxkbMKPYOx?=
 =?us-ascii?Q?BckM9Zhm42Rb1+OINe2YDHidfcIb99DH1yiQb/NXvSC1W0e8yhGT47CFN1qt?=
 =?us-ascii?Q?AgqELzOgZKa24kMNNkVutBF4lQSktXKSZLLIlx78bpSDVDqRNB8kwNzLwiIN?=
 =?us-ascii?Q?Db3zc9dPfRlmM/W6nnNXcQzYR2q0Sav3rKXd4/JjxpX5vTUndQm6cRJhE8zq?=
 =?us-ascii?Q?ti1bEsAxoc1b5703K5ts4pzfhBRBSC5kf74M0lfId9hebmog/mRxvAljOnNb?=
 =?us-ascii?Q?f01vgRHmu2yWwml6uyPNz2gToZLB0wMarJ3JN5NptaTybKRgGUqGSs17RxkP?=
 =?us-ascii?Q?LPl+RSbhsBYohNcy/Nb65oVjr4F7Laauzb5NyQ1w8MPIbSmdjNfhFcaTO6Ze?=
 =?us-ascii?Q?81uL4PTqNwzgjNMgvTa6MBONcRUbA9vsA+i/qUyPSBq/EFoW/Zy8/PBnBhmk?=
 =?us-ascii?Q?UpS8wavtlIDOHTlfIZACdAJIBEBSmYAXGkLm7b3cuI12XoYpViIdgHNrdoz7?=
 =?us-ascii?Q?FS8T6gGVWU+rEnDOQLhhugVYQ/jDQUwVzFNOm1yRjtyFyFUhm2U/DnkisQ39?=
 =?us-ascii?Q?qEtciCJih80rh3v5AFsZXW4yCzGSgSf9JRXbL482s0UhSnLauPX/ElcrCf1/?=
 =?us-ascii?Q?xGbppeBgmpLeHL/xKxRsd2SJwk1Slz3pSaQ0Js73jAArRQTQ9i6F2Sd9khpp?=
 =?us-ascii?Q?wP1jauq+xBkNDZ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DyS13VZb9qHTiTls/qoZtQzH43wFKr/4naP+jiEnUAyaUtGILKdGWLmaaM1/?=
 =?us-ascii?Q?8DGtCPvTTqyYW0ddwugwEialcFwGVvU4cdMGGoVX+fsYzU212qR8R8Hz4IEr?=
 =?us-ascii?Q?GFSs8uU1oTbP+EwN8PEgDwUcm1dcZc07emUk1SN3iOJKtjTYBpmwbdHcYiGs?=
 =?us-ascii?Q?1cryqKFvybPG+O6QnAzCiQD/rWoSajYQTevbLdXfqzsMrtKcIP3dVgYseCIv?=
 =?us-ascii?Q?KmLXLPjTso0jiES5pCyV7BPwP5xuRI1WLa5j2TKGf1X6AzcV0GSPP1uFbgfo?=
 =?us-ascii?Q?pInFCoXi6t5EU2GS744f0KrvGuj0CLaUxj1N/bpHZH7RxHebK5sFTyPyumVr?=
 =?us-ascii?Q?v/2vb8cI/NWSE+UT6e4ST1hXsbKux7D9SHd6N1CrpIdbbPgBtef26el22HLR?=
 =?us-ascii?Q?AacxrRfXCweDyp0iAHJT44UKLRcq+d0deLWGEaapMqEW+GCDHBJO+StNBZGW?=
 =?us-ascii?Q?tuxMEajosVC7K9xRug8fvKvXP3yYbxw6dvs+L5ltG2UUQmrnRXgqvRNf8FQK?=
 =?us-ascii?Q?KcEhA4hP63FsDZt88kKwQHDDHNoFScmxBuVsaSwBzBgmEIbUuAuOf+OD7B0j?=
 =?us-ascii?Q?4TSLNE0upC70avOicc1L1kGd22v94jNvnlDtLCVGaLadmTLBTg8N6mRR9B8m?=
 =?us-ascii?Q?VmZa9bEpzGcBECUJ5696151RcLbcc3EPKYQNKazm8ojvLcvoFfPQBUB+gWwQ?=
 =?us-ascii?Q?igLRFQ8mKETuW8BE4vzsQkp7zAwsaWO5BzZg+dX42r0pW8Jm78bPSe7ShFVS?=
 =?us-ascii?Q?5hm2GNgfnWrIElZQ0ay8Nqgi2e9LriOpPoQqns1UogTte4ooL9sCL/7CoZbl?=
 =?us-ascii?Q?CgK1qJDkTnXegEeqcumCHT1po4bp8itSqohQj7F8CONk1LD5UjA07nOK6lrP?=
 =?us-ascii?Q?mLIUNZchqn6YTDfxYuYn6Wn5Le3E5XhfG/sQTrKf2SRUMM81Zw3pcRN8l6fa?=
 =?us-ascii?Q?LULezy+zCMA2HktuYwjTHsHBfgr1WE5Fm4lUqiZtcVgI8St1wApt3UmYUGHv?=
 =?us-ascii?Q?kCjMBoIVxJvoFE5OyYYaIXI8hH2HaOokKpf1m/yJ8362Kwm7Kv/z0cLitAt2?=
 =?us-ascii?Q?2plREy3dTfLzL6PkpIXvfJGLQOoaUQ/Tm0T49rRQcWGeu1AzHLiU63Wt5hb1?=
 =?us-ascii?Q?KD7EVhaYR+C3y/p9QTMfvhW7Bkl6K7AojzlS35JQ5PmZlh1KVZu0XbUoIUDe?=
 =?us-ascii?Q?G6xi01Boienqks7kQ+sDMYXx93jhtsOe/uOL5Bnr6mLbGqt4WgyjSKSoQdeV?=
 =?us-ascii?Q?99LBH9fOyR99uQ/GAbdHbBA39ZR96mtrz/15XCYGh1gWda2hsgkwu53KLdID?=
 =?us-ascii?Q?1WPPf82+t55NgPv8S4RwD9bK4zfvrhDuCemQSEK5JuWvft1tloODIOcdY8p3?=
 =?us-ascii?Q?s8cBaCX8lkW6xT3TvRjc/AJbEpIQMSYqrcocr0jt2tug8oycqz4N4Iq5JW9R?=
 =?us-ascii?Q?zazk7ByHcM+X12raVfMluprQRwAvXQB/+b0fdQkf99qhop4kwG6tmoBr/DwF?=
 =?us-ascii?Q?t28bzLk4sGZCIfSdki0S4JqD217jt6+fKDJoApiGUjtCfrBbYbF/hf5fBoFa?=
 =?us-ascii?Q?Z/DiRTLo9mMkakY5HgUoxzRQY5e0UkzG88kjABoBjQGr1Dic6u+QDw/1GLGO?=
 =?us-ascii?Q?++3T9BFUWnM95rSIMzH9xk4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8c4b4fc-de5a-4dda-38a2-08ddf538e246
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 15:51:21.9371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9ZnFCnSk+D2LHdqXkluDt9fyfq8WPDbnil0HfvP1BCLsbeN5mYv+foQ3Fo/MffCQ4XdhGNTZuzTdJYZ6F0H5YGjJZ4/h5tqLfWCe4mzIy1LW2k5z5xCz8mqTI0URXTk8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8800
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
ca
> Coelho
> Sent: 09 September 2025 14:00
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH] drm/i915/dmc: explicitly sanitize num_entries from
> package_header
>=20
> num_entries comes from package_header, which is read from an external
> firmware blob and thus untrusted.  In parse_dmc_fw_package() we assign
> package_header->num_entries to a local variable, but the range check stil=
l
> uses the struct field directly.
>=20
> Switch the check to use the local copy instead.  This makes the sanitizat=
ion
> explicit and avoids a redundant dereference.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 77a0199f9ea5..517bebb0b4aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1141,7 +1141,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
>  	}
>=20
>  	num_entries =3D package_header->num_entries;
> -	if (WARN_ON(package_header->num_entries > max_entries))
> +	if (WARN_ON(num_entries > max_entries))

LGTM

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  		num_entries =3D max_entries;
>=20
>  	fw_info =3D (const struct intel_fw_info *)
> --
> 2.50.1

