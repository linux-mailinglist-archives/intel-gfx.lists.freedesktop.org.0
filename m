Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73948CA116
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 19:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65BB10E2CD;
	Mon, 20 May 2024 17:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rm9wfe2O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7637810E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 17:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716225269; x=1747761269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UxpNhOsKLe0TXRsdxlOTVgX7xdwDkGbu/DwnS1aAOGw=;
 b=Rm9wfe2OIToERSbfC/q7ZVOhAT5zMjR+7zfFzxix914NTSCYJydscymK
 CRC/oLopKzGuSDkVbSck87sU6gengcvIXr2bA5RF9B3Dmnw12s6d0k2J2
 nxA1RQ5Yh473zkkC2niPVwqD7gCFYG5rEp673CU9/nVMSluddLHYugVz0
 NYb2Y1Vf2gslFGIQhnh4uyBIblaBtmAIsk1RdcMBhyVXvasoqYaD1mz68
 As9oNYLr4jtVKgebciwGQW+xMzXrykYOrp6rlmXft7rdWalz5qUHWc0WD
 xmSHwdPDy+OqN6lHBwUU6rILkOhiafYYB2QZAE0l+pZz9SZcjP8RB1m8+ g==;
X-CSE-ConnectionGUID: ztAYSM0rSi+zsGpUdbGohA==
X-CSE-MsgGUID: FZZkuUr+QoWpCauima4VsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12218463"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12218463"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 10:14:29 -0700
X-CSE-ConnectionGUID: Clhide9fTs+L/Q+q+x3/bw==
X-CSE-MsgGUID: 6Rpe2CDpTUeyM3/ukyYBsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="70032294"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 May 2024 10:14:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 10:14:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 20 May 2024 10:14:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 20 May 2024 10:14:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ut2reEGbbhfwHzn2aPXQO4PRm+n/RJvWD77bgX7UkD37NfvBBZUXIn6ws4tJ26RuTGwSc/OYvrpVS2bCWdn6nRC0Qjg2shPC4Mqvza9ejVPchRighV2UPyGowyExFMGrKSHfZJ7pRMnUoAnTa1SeW15iAP3cqlvl2eRu3TH38frWPCzMWpLgYXO+s9ITtehDT07uhMGCzWASL62DLkHf/pn3/OqDvKiONVnLjAlVxu2fGtMoj6qbHMAlyily+XN/T0oaBDk9KoNSASABM93nSgh3JuT41PCwzQ/WDX2XPZDUj5cATHp3pReWxJJN16ZgfKktUkyY37LGmr+DkiRhOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBoPgDd1hxLGqiLKhyR6XW6FPwMLBtr3DR6MSBSvTjw=;
 b=gJg6wWc730+ulsEF/WuR9Eql+h6V8MceXSh1KZcTNJfiFkGd7o0tREkUoQgwknERiK/yyPBCfL19fZn1uX/LbtVZCCF5QMN0jYGCa2w/NVWcG9VD9nwtiJa0nLwSjgLcQMFfc2qrdYTKtEKWp0SoAVweOFUS2xitLi0yF/kiWdPFe28tUPb7GEtsmue58txyy5JMT6F5ph3rn69VG9R9PFNHrcxE+v3dTXCsSWvBLy9VjBuGSenERlH4/+bJS3Rzt80F4NEDvhhQmFdHKiYxadXCU1DnbsOF4V05injMYOT4W0BRubjUOlqRwb4+A0h8DiVikwoVwhWNcgue87otug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ2PR11MB7714.namprd11.prod.outlook.com (2603:10b6:a03:4fd::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Mon, 20 May
 2024 17:14:26 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%5]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 17:14:26 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, "Srinivas@freedesktop.org"
 <Srinivas@freedesktop.org>
Subject: RE: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Thread-Topic: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Thread-Index: AQHaqsx+LbYi3KYPSE6juBrwTd5b3bGgUxoAgAAJRHA=
Date: Mon, 20 May 2024 17:14:26 +0000
Message-ID: <PH7PR11MB8252A72DFD040402FC1A9A8B89E92@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240520152410.1098393-1-vidya.srinivas@intel.com>
 <Zkt83jwHX2bvpxqX@intel.com>
In-Reply-To: <Zkt83jwHX2bvpxqX@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SJ2PR11MB7714:EE_
x-ms-office365-filtering-correlation-id: 9d0c7b04-6756-44eb-de4e-08dc78f04d62
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?WDSruEf3Yvwtj7kGzammonFJiey9X2Eiz6HH0VKQrB865bHas3LMfGkvAE?=
 =?iso-8859-1?Q?T1By2S8prmK15KTJBHMfAvf2VLQKos900AkVXjbMEF3CuhgxXAGZEEar9e?=
 =?iso-8859-1?Q?hZGzJZEk3XFs1DILLAtSIOjVN1K9SbU+KxDC7iPPBkSjkcqd2sIj4zIQcT?=
 =?iso-8859-1?Q?zBl41DVayAMvXq6WVF7xeVysjcq4u/68fyAAQY3qYof9cCEnmHsDc1D46r?=
 =?iso-8859-1?Q?8LID4hjIOpCRH6RS5+n4fMe3iSEnVpq1LfgZat5DtAoSWVKTd2aisvhjtz?=
 =?iso-8859-1?Q?TUDWVrbpMgpyPWQ2GV3Y+wY6dU9zH5Uk7wIOlVn/2TYlyK156JDIeoAKb6?=
 =?iso-8859-1?Q?nKYsJ+CSMiwK3wds3FOcwJzOX75MqIFWWtsJrmnbIv16YtDGdJUNGbgcj0?=
 =?iso-8859-1?Q?qy7ek+zwEBs1K94qVxq6NFjlOFhvTBTjbAdf4tkGc3sfG1QyUxkuYey5gq?=
 =?iso-8859-1?Q?IYrjgy6rD1Y1iAf/CuJOECAPLE8Vr3EIgHOWAsh2iBgS/r1wSJbFfBTwPK?=
 =?iso-8859-1?Q?Oucbehl5iS31OCw4pVEYfMAaF51LR+8JhwHX2scssxlkA2EtFZSkGZTTbJ?=
 =?iso-8859-1?Q?jD4/Vhg8CFJD3Gx33XDkmSyf+z4lVDkrdObMUSHgIsMaeoBXeW2DhWflcy?=
 =?iso-8859-1?Q?WIGP8K6z51NtwnFaQ2mBb8C0eCEGoMOiOZAEphuPqm3L/C8Es5VxcVIXBv?=
 =?iso-8859-1?Q?PKNlqJNHHm8JykXGJC3ytwBcTLkoeIsLuuaJnWByoyTVxX0Ct4OoIhmc4Y?=
 =?iso-8859-1?Q?aapgrKDATX90c9xIRct6B/xZ1Rjhjkroh6t9uhXZUeyQdNUVjjm4ZIenEd?=
 =?iso-8859-1?Q?rSNE80XPOvcTOVJAiXL5Pft3KINwR4xYtRbOJDvvx1737+jhZ0JUWL76om?=
 =?iso-8859-1?Q?pFvHcIf/hdOWtrzCMTzDsl64CO4t6gZMqeKTfVUC3uG0e2imhoe2zPUvxA?=
 =?iso-8859-1?Q?7JaytAZVpO1IyLykAXt4YpYUIvVKOItxRr9DwARIhzQEvznebtDYpVh77j?=
 =?iso-8859-1?Q?Ued3lWd8lvIrfFI4pcMskpsSKFw6qn7v704E6chxLbLXF7Yz5FzGXxF0kJ?=
 =?iso-8859-1?Q?ttooraCNQTxUsm7u2eeiRVUhyVoTxd1P6jwbfpSraHNH/EejMlcp9Dx2CS?=
 =?iso-8859-1?Q?2VemfNagc9FGKOe6R4iNI/dmTS+0KbbIFCx0ymVtBhWceyjZ3inqAVB1OW?=
 =?iso-8859-1?Q?c11zEn+zrfnoan5I6TSiwgbAEK+iZ7q61gUpf9ktMgSe2KefNR/1cqlxWT?=
 =?iso-8859-1?Q?RFe2zJmpq/rHZeopCxzEQAdWuBIWBVf5cqKnqE9pgN45ihe4N2gDIKlQdq?=
 =?iso-8859-1?Q?wVceRL4xu7tohGwl1js6gMU7TDemY8au4wUH8PGOdNxX+ReKb7eJbLfJSy?=
 =?iso-8859-1?Q?dOiLzX/zErFS2Fhj/0uGq1tG/lv4Wujw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3Y+kapZAhnepBNggr6G2hihNyPPz8O5dTo13CR50dWaf5CvOMdI+3y1xn+?=
 =?iso-8859-1?Q?U+NFeiyU0/e0V0arQovXAkKUm1Skfe3R75FP9oI2aPpFVuHdANqULf6/92?=
 =?iso-8859-1?Q?AwpczsqLSETmTjQuE6ne6pyO28LAQwxoemKAd+WEJTZS+nnI989KOCWB6L?=
 =?iso-8859-1?Q?zNqN+Q7y7Hkc9wZNIy38MFnoFltnjkEAMvlS+UgQcrNO+0Blj1UnqrQ6/5?=
 =?iso-8859-1?Q?MfT/iOAZhoTeycv2VCcGMUshfRLH+cb9neA0QuSbZSiaTwKwAkTakIkmNm?=
 =?iso-8859-1?Q?jEyr1BYZ0bLTtbqS05L3aaSU1xyQxobf4aByMu4pRp2zUbcPo8WkdFDN6t?=
 =?iso-8859-1?Q?5siYpJc7gDzSbt+08lXhtrz6tNfECo+MxdxFyvDZv/D8SH23RMzUESjI47?=
 =?iso-8859-1?Q?Zp/L8e+qtu2l/Jdd38HrBHboJ/VEOY89qA53Xg06ona4WBuV+plEQRiCi+?=
 =?iso-8859-1?Q?L2a6PFBQWVTsb9Aak8W4P4Tx4I0OqEOEDprMLtq35xDJND6tzBD6aGzIl0?=
 =?iso-8859-1?Q?/KK/9OICT1pV8d4r0YjgJ3Ra26VypCgkEBgSUWexlVQOK1jmexd2p1K9b9?=
 =?iso-8859-1?Q?whDBnRTjAs1vRMdDDKIklc5Fnkouf4CtKLAbQtwOy/nGCTJ8uHU1d8FBmm?=
 =?iso-8859-1?Q?C+FqVJZnGEZMozn5OqUgNL64qDDl0WnWmQWt1sqdBy9qEttXRyDeQzJIWQ?=
 =?iso-8859-1?Q?zfo/WlPGRuSEwoXx1AKcKtQb6z+BB9xMllHG8Kg8JNghIpT+FQbwic/Ca7?=
 =?iso-8859-1?Q?qgsJFuGZXcoUCQvwK2vO742lm0ABsSeN2yLcdSPju2DJJZpTWzyHYp2mNy?=
 =?iso-8859-1?Q?ySGbVe+GrzIpG59JraA8cDwxVT9+iYt/N6uYiGMVusCIZFkjF/i6Q+7THN?=
 =?iso-8859-1?Q?hoC6IxmVcRTfnC/0NcAmf7VinBTkeoYlLJ+ZPqZr3kHd+bioxBwROt6btl?=
 =?iso-8859-1?Q?MjkNN2pN2hE5bTC+OII7y4ZzTVPRbBV8Wch3DGajNUqtyuSZAzjxQzRcoM?=
 =?iso-8859-1?Q?jPixzwZTfk+YpPTfjiPRC1UOFuOgfa7o1YYV3KEgDjituf7s24+dJrmvkI?=
 =?iso-8859-1?Q?hHSHZeKDeMAtm8Gvawuu20LsUZM3pv9HKp/VQo6sr9kRTiifZCHZJzUNEO?=
 =?iso-8859-1?Q?Mfk3aMeUoT7bGgT9DTr83gtGz2g9/RJ9Uan4GMfDcPyAZ1u3dTXlquuvic?=
 =?iso-8859-1?Q?79/9lOgjvI0wws05lWjAg/Z18U5DN2tZ/5Or5Zr5N6FZwljFV5bJ9yNmQb?=
 =?iso-8859-1?Q?LGjBpf2QrufX2yp9Sq8k7E/drpoq42LLc5OwYW00ADmLSCejHiyT2Bh1S1?=
 =?iso-8859-1?Q?0F2hxujAPt6n2V+D4kYSffH3yeEGFrfWS+AEnpRzMPy62PiZ4Yci2bl5I/?=
 =?iso-8859-1?Q?0TTbQr8PHCDodlbyl70FCBjDkhxPM1dkhVN6IdkzysTHLn4Gsqx9S23+PS?=
 =?iso-8859-1?Q?cFR5xD/1py/uK4ay7qYY6nrmIxa7XLpjAF0RSe9hyKMoSJpi7omlYdPkW8?=
 =?iso-8859-1?Q?PS5fJYcaRGNZ74HNogcA6zjDlWOnGh4r5fcbtsysFX5/dbZGEw3o0vZWTV?=
 =?iso-8859-1?Q?4YDSrVDyMvnaG7mga0yqtz6I+yvVS+X4bkkLOQUXWnHuyPZK1fA267VUf2?=
 =?iso-8859-1?Q?Yp+7PQuPxgohH5YFZpIzeWTJckDZWlvS6n?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d0c7b04-6756-44eb-de4e-08dc78f04d62
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2024 17:14:26.5017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZkVmMxWwGGHcBhlKKDdXw6kmeOjKYp2wQyHbqzMjIXt/oi02ciMcoegtHjhDoZU5UFtsM+usXCpXYWjYU360pKlCWPU73RLFsXktuleiisU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7714
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
> Sent: Monday, May 20, 2024 10:10 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>; Lee,
> Shawn C <shawn.c.lee@intel.com>; Srinivas@freedesktop.org
> Subject: Re: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
>=20
> On Mon, May 20, 2024 at 08:54:10PM +0530, Srinivas, Vidya wrote:
> > In some scenarios, the DPT object gets shrunk but the actual
> > framebuffer did not and thus its still there on the DPT's
> > vm->bound_list. Then it tries to rewrite the PTEs via a stale CPU
> > mapping. This causes panic.
> >
> > Credits-to: Ville Syrjala <ville.syrjala@linux.intel.com>
> > 	    Shawn Lee <shawn.c.lee@intel.com>
> >
> > Signed-off-by: Srinivas, Vidya <vidya.srinivas@intel.com>
>=20
> The format should be "first_name last_name <email>"

Apologies for the mistake. My gitconfig got messed up.

>=20
> We also probably want
> Cc: stable@vger.kernel.org
> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for
> dpt")
>=20
Thank you so much. Will float new patch with this added.

> Although the patch won't actually build unless we also have commit
> 779cb5ba64ec ("drm/i915/dpt: Treat the DPT BO as a framebuffer") but that
> hast the same fixes tag, so should be fine even if someone backports thin=
gs
> that far back.
>=20
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > index 3560a062d287..e6b485fc54d4 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct
> > drm_i915_gem_object *obj);  static inline bool
> > i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
> > {
>=20
> Maybe toss something like this here:
> /* TODO: make DPT shrinkable when it has no bound vmas */
>=20
> DPTs aren't necessarily so small that shrinking them wouldn't have any
> benefits. But actually implementing that would require some actual work, =
so
> not suitable for a quick fix.
>=20
> I can add all that stuff when applying the patch, no need to resend for t=
his.
>=20
> > -	return i915_gem_object_type_has(obj,
> I915_GEM_OBJECT_IS_SHRINKABLE);
> > +	return i915_gem_object_type_has(obj,
> I915_GEM_OBJECT_IS_SHRINKABLE) &&
> > +		!obj->is_dpt;
> >  }
> >
> >  static inline bool
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
