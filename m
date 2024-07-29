Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D08593F09D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 11:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFDE10E349;
	Mon, 29 Jul 2024 09:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PLX2UScC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D72C10E0AD;
 Mon, 29 Jul 2024 09:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722244169; x=1753780169;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3REhu/rGIWdw0zEI+fInqt+Oxh7e45Lio6wFLCe6HHI=;
 b=PLX2UScCBQLu9mrabhaPXyYhmVyICILpHoWTF4d09+7qL4ps7Gko7b3q
 3eEhjjW4fd32tz6pdX4TbK9DkF65RelT6ItXBT6iFDgiOPjmlSQkjfw1L
 OngQBPejsM5Hi1fro7ebqnJbb5Qi1sKiGfvWBEkejp+obN8m6RkXtfSuf
 UZt19LvAF5nWnQoRyGyWbfebQsAm9Ww26OBoMaNxNQeod6T1BZxDHIhfM
 HGAZgTfWPbR6kvm/cfOTlPONczsvktQDriq/cNPPWdqgwxbU8Xafyh/KS
 Hp3Yu5V0N+EqPkrFNJVAPa2zZj6LiR7RV8yR7j1UM6rIfxKS4EQxdyFVd w==;
X-CSE-ConnectionGUID: zY+n4tObSy+jn8gwnA1iBg==
X-CSE-MsgGUID: c/VCz6mOREGuimMWALg/Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="22897712"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="22897712"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 02:09:29 -0700
X-CSE-ConnectionGUID: YC+coUVNQrWhJrFRiGtX9w==
X-CSE-MsgGUID: pbXBv0VjRmO4SrWjuaDkjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="59005374"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 02:09:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 02:09:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 02:09:28 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 02:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YgX0UQQ+hRJJRpZUMrXRJQ6RYyylara9XWDXDJ5NzF8K9dqFVIozpYT5tJiWlLQFYKpUR19hpSgwodTy5QXzeow0bWATgqcrh1kPopTbXpZErKXAxf52l3cFOoLnsBxWfbsgr0TgniDUI+8w4brwRDexhP2gijjNg3flpS/zJGszduDq21wIUrKUJLUwYITZf7WFitQAjArXd7r3xlDZW7R6UBsF1FCj8yTYvlzOrGvwTWJrGMsuC7V08XuA+s/jIYAaWAiFjAgB8aMi1bsw0TihLzIL2MC67HABX40Z8JXCVVBad7tTG+RV8nIDBezRRvdI77dOI/dtx02v3UlnLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CEbY6XNWqLgKGITzIctCBvBOVOlHzm0Tl2FgYm4Q+Kw=;
 b=qc8SUqzsugqWWgCAn2Eq3iUP7szSNdxxbqJ5N3+j284UUbv7PLxUPr6koBxPomN+0jKor+cmzQgszU5wHmkxi78URoAU6HkrJ/oWpKDk6CpcP9uSEEmYZAafBmAjhZoxE3cH+8mkFGkGojJcnQMrJ9aGqsRg5Rs4y9catqtMaXQhR8fD5k1GFUJqpeaYUuGKdNQLI0ihRasFZiyCweZNXyTmJbPA9yc9cEvh236qMKJQvBhEdhmh6NeNkh/DEkey79QXau0rtTWUpJdMg2+p471d5yuAWc2hWnnp2O0V6QMiLIGe0ZkaKtLzoEfzVeFBHby5+/PiCYjiTlUEtw72Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Mon, 29 Jul
 2024 09:09:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.029; Mon, 29 Jul 2024
 09:09:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/bmg: Read display register timeout
Thread-Topic: [PATCH] drm/i915/bmg: Read display register timeout
Thread-Index: AQHa3pInE8LUUo7k8EeRPVVjJWFJbrINbw7w
Date: Mon, 29 Jul 2024 09:09:25 +0000
Message-ID: <SN7PR11MB675008B59AB930E2177CA5C6E3B72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6186:EE_
x-ms-office365-filtering-correlation-id: 63cf7cc0-78e4-46e1-b65b-08dcafae24ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?z2CtOm6Ngo4KJR6o91tFobLBDaiuAxeDUs6Gw/+MDExPF8uwqS96uSYyuNEh?=
 =?us-ascii?Q?XY64JuypGffHL21x6f1G5r3cmTDv3JSRJZrh/geQy/Ghkb2unLSVvWA8Wzqk?=
 =?us-ascii?Q?N0PKgY8mUqIyRp+xFZc89ILn9SuHP1z5kEV5C+Wxo5Ha1gmME/fc8besxEob?=
 =?us-ascii?Q?twg4+kw/oQzcucRp3lSERVyU2RtiuZfpDXcVKqBhjwn/KroJ7LQqnIhkx3Ox?=
 =?us-ascii?Q?Y+UTAv7DkQeSP6gi53u4hF6mQS8jh5ePFxwrkJVBzH5/ZiPKlHFGc4Y9RnW6?=
 =?us-ascii?Q?PGdL1M6lM6RCrrFfGv4NQ/1RKbj1kD6/pFL0c0AutSJ3n2UrT8PCg+IYt1Si?=
 =?us-ascii?Q?BIw7+iwN0Y5Mo7tJnH5SpvAsjlPpbU+CQS/YUNd1umAKYTPK4VQNlegCCApb?=
 =?us-ascii?Q?Py4Q8QGJJKuk6riCy063rVLFdpqImGXSTr1RLANGZR/39Wr/OaidS20V1p3D?=
 =?us-ascii?Q?UhovUXK3S4OKNoaa9P+bc5KagGBFUTQuiu0wI/HRYjOiYsFMa0CMl2P6PP0n?=
 =?us-ascii?Q?Apdeau5TRjvtxMTh8IXFDORzosJCI1DRu4b3izYTZNDHJiHMH34sii1DBUc0?=
 =?us-ascii?Q?A827hdkYcYo/hhNueXMZ3KRulQMQ79HxV8iwZYInK6+mbl6ZT9IZEYVRLs/I?=
 =?us-ascii?Q?faJr80Os8FDDT2QnvO6u01CwGJXvthhSNk1sr1TltKmZqoeTOPJTBAUDLjlK?=
 =?us-ascii?Q?6/+uIQoLEnDLipp2EO2esUfm0j5aIVck6eNTtOc2ktUH9O8q3p2vk7Olwqh7?=
 =?us-ascii?Q?hM2c+uWXb72a5gGTZqWf3U1RyiS4w1aUGBosU0aDNRonQAV40hiKdQkq845t?=
 =?us-ascii?Q?4RetJMPplHEuCkAwd5EaGDJgWVC3YZ13c51sv1PxKhXebnkyeiQsRyGD1zTL?=
 =?us-ascii?Q?cR5xrK5ytOurAJPCnREovp6/5oginz1/HyZ1ZuEl7neS/ERQtR869R2JbGAi?=
 =?us-ascii?Q?a4qSttm3iHOP572c8MQPVroBYIRw/BbsSO1MC8OYBwKjVr3qt4GYaYAL8ew3?=
 =?us-ascii?Q?e4jNsSIxiRd+Q7MEXvPNUYurMSIvAlq/vjCZeDfpRC/z0NXQFcb8hXC+pHJB?=
 =?us-ascii?Q?LN+6t5zDbxHHJx6vV4d70+9ayTZG+lXR3oD4EKRJYMqGBFhPqe+3lgCCJvqt?=
 =?us-ascii?Q?sRZSKe3u1kPKQtmXBCLCmtr73SdEXJexN3CZatu+Gda81+x3f/PSolfolIBt?=
 =?us-ascii?Q?1pofS5PEpiC4nkQ4rwBlN474d0CPFkEcT42bypM9Jf8+L+6vB3vZPWzfp+Sk?=
 =?us-ascii?Q?HdL0vtoEnj/sJBO4eOCAoHmxorH6OXWRUU/92NGz4CqdDixs3q58HWhdr7Rx?=
 =?us-ascii?Q?U0ZPW66VUcdLtMHPIIWYvYhxN1nlHtQupzOiDWgwwku4l46TAOqfFtMvTIr6?=
 =?us-ascii?Q?DhmOnGaCFaAGBhsrWtH+NrKyUtv/TuuGIpzxDJF/sUgDkLaj4Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VDaFSr6Vg+QLBbLfqnGGkhv+I90DeSqHANWcJC+ESW8GfVdihjgkyh8ulDkc?=
 =?us-ascii?Q?da2xWVij8WQ8zqxnC+0mj9axtyg7nfgu1menqLAgELbd3VIQPoVbtoX/aoEG?=
 =?us-ascii?Q?61lOFmZIl4RR+0RRUNd/DYjnGbL388f/Vv8oNNrs56Wl/S70d2fTKZ5pbcm2?=
 =?us-ascii?Q?gsaFdGljz70Ag6TqWqKjB8Zt9qev64r6KtBlZNXbnTVIIEtxRQyZoK0CPMSr?=
 =?us-ascii?Q?SQVB0IJgsOiqCjmDK2kAj1MeFBUCYbPbDUkkh/LJVVVKh+t/E0YUr9ncOUiw?=
 =?us-ascii?Q?t4ziYZLhhqjxF/zhjXT+p/mIZBKyuWE04nx7Xi6zzXtTJWaUTacTk5CnbsVZ?=
 =?us-ascii?Q?9jcs0QbyKb1HtQ1fCQCz0FmVmiyNIeYiu7uZpP7uvPumk7NXMT8l8sef09cl?=
 =?us-ascii?Q?JfkI6tPQQLgTq4nOzFbYVZ9Ek67PAFx7+0ciiSzlLOov+3Xac3Dc+EwrxcjQ?=
 =?us-ascii?Q?SmJWqzEklqsj1pXkLhW7k29z19p39Lp+C14XHI15+WFgZPqNHAxkBgvvonrC?=
 =?us-ascii?Q?lyrzIacJxTmaAmUYaSTPUlDOTzJ3JJuv9WmyMAzUAVZTsH+hcgvVQFAcjgCZ?=
 =?us-ascii?Q?MdIsJnWsnE8A/guRhiJmxqozjahmTrmvlxBjs8/pOyUp5TJ8ko9A3Wt5SjxE?=
 =?us-ascii?Q?YfZpI5e6HUQ+6BCoNhb2B02R8TRFhe0Wv3dJt/PSB/FC/uU45KvYiQs5oLgc?=
 =?us-ascii?Q?JdHSt3XvKg4cyAJyxIiu0qYc3k9GZ4jU+VywwVoAsPeLPdVPEv2e8UJSBUFn?=
 =?us-ascii?Q?Nz95MU6UULvnvixVKGBB9fjvPd6XscgEH2/HKxHPv9W5CNTb6hMHQEXXScPo?=
 =?us-ascii?Q?DqtsoXZeq65M5BjnhgSc+Z4BYJLpmycg+5ozIR5C9CliGDsGAgzXifq4l1Dq?=
 =?us-ascii?Q?t2to1KJswyVcP6P57BHfnCTClz6H5MrNImDe740pQhhhddCT+BD5ItkQ6qUn?=
 =?us-ascii?Q?iflwgb/PMa0lAvTz/2sadKqJeOXw1yEDf/gKoEgAVnEJRSnxKdb5fWmayaVs?=
 =?us-ascii?Q?e69rhDc0igPPzsSp90JU8PmSz4QoYTELNCGcI3mlajI+UBgkQ5BlA8c4zy2/?=
 =?us-ascii?Q?X8HG87pWI5U2cvHogHol/nUD7SMjmeOAfyTfWxtftx9//WtK6Ib9sJar7zcg?=
 =?us-ascii?Q?eOvY6VquurT+xClVutTT2ElJfF4ariMmX6nKNYPO8xAa/yioxhdBKpa1xusP?=
 =?us-ascii?Q?uRN6N95SOFj9xJ3LpgDOMmQySFciPaUIFQxNPgr5TSSP+7GLNqXcS3Kb8Lkp?=
 =?us-ascii?Q?RuW8s837oPRhB0OeF9tgNoZOLL/sk0pk1ah+Ufv6CvuZA7dOO0yq6LivoFm8?=
 =?us-ascii?Q?LW7atH4UW2CMPd5wmmVrkZmE6l79wrYwoDhhcKWZP/ilyEFYlibnj0WkjJgy?=
 =?us-ascii?Q?JeqlmRwsWVbXc0ZuB/6ayq2YSIaPQqljPaJerklgff3pg6H0o8sFAhJYlS3y?=
 =?us-ascii?Q?6E6+qa82gNJw+O3Fqws6mKDXzMXyq5CT5ue1zJMg6/ptYfCLqa3osOc2r1x4?=
 =?us-ascii?Q?6bPS+IHUXpEsa+UnUNpBMOODOlApOlTJoDHGOIPvmGQqvyohPCYtGZwqgzSo?=
 =?us-ascii?Q?Z/KPa2RBeW+P+Vb5uGiSnOg7B10/iTG39H6Fxzdx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63cf7cc0-78e4-46e1-b65b-08dcafae24ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 09:09:25.7963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wL0HdVxWRWADZQtjAAEj6WWRl8dbwWSBqD4i6Xrj2ViBebh+JetgEX7a67PNGv2Z8x2UUwJ/ixC+g7F7RGBOxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, July 25, 2024 6:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915/bmg: Read display register timeout
>=20
> Log the address of the register that caused the timeout interrupt by read=
ing
> RMTIMEOUTREG_CAPTURE
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 7 ++++++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 ++
>  2 files changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 5219ba295c74..8e22f7ac3db0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -905,6 +905,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>=20
>  			intel_pmdemand_irq_handler(dev_priv);
>  			found =3D true;
> +		} else if (iir & GEN8_DE_RM_TIMEOUT) {
> +			u32 val =3D intel_uncore_read(&dev_priv->uncore,
> +						    RMTIMEOUTREG_CAPTURE);
> +			drm_warn(&dev_priv->drm, "Register Access Timeout =3D
> 0x%x\n", val);
> +			found =3D true;
>  		}
>  	} else if (iir & GEN8_DE_MISC_GSE) {
>  		intel_opregion_asle_intr(dev_priv);
> @@ -1710,7 +1715,7 @@ void gen8_de_irq_postinstall(struct
> drm_i915_private *dev_priv)
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
>  		de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
> -				  XELPDP_PMDEMAND_RSP;
> +				  XELPDP_PMDEMAND_RSP |
> GEN8_DE_RM_TIMEOUT;

Do you only want to log it for display_ver > =3D 14,  I would expect it to =
be logged
Even for gen 8 so maybe this isn't the right place to OR it.

>  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		enum port port;
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 0e3d79227e3c..858ce8a5d929
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2396,6 +2396,7 @@
>=20
>  /* Display Internal Timeout Register */
>  #define RM_TIMEOUT		_MMIO(0x42060)
> +#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420E0)

Maybe RM_TIMEOUT_REG_CAPTURE seems cleaner.

Regards,
Suraj Kandpal
>  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
>=20
>  /* interrupts */
> @@ -2574,6 +2575,7 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)  #define GEN8_DE_MISC_IIR
> _MMIO(0x44468)  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> +#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
>  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
> --
> 2.45.2

