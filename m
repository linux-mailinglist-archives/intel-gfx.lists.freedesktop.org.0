Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512C394D872
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 23:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6081710EA08;
	Fri,  9 Aug 2024 21:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pjsb2aES";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B433610EA08
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2024 21:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723239562; x=1754775562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ybNqq5VN+gknUvQ33eY6rFZlpoPFMyQ9HQryvhCUPw=;
 b=Pjsb2aES4fXelVYaY9Alstv37JvQU18Y2kSuvb3ktx4kpgV8aoFxka35
 uF1n2x6VCL/Wbi1UHB/ioLRaBHkItkDhe7Kb0xUB+yw03e4xzcY/DalZr
 Qao0q8QGeoPRDVztMAvpZO3QrJpzmraR31bJiuRy9ZcOQbmV/efDls62M
 t09pLp3IulTdRbYeLrfHPzPglb9O0YAAJmvKOLlnugY8aDJqX6nGsiw7+
 ai+Xt0FaY/dhT/CT7hnQW+MvOhDvy4BzbdCmROpR7LKyU7gl3HWyfZyX4
 dbCQNOFD2t6yZlWeTbDWWe6JHXU/u7LiiF5t6yCFo52ZwrAAy5w6xjNNg w==;
X-CSE-ConnectionGUID: /MQQ2sgSSmySs27UShMwBA==
X-CSE-MsgGUID: mMpf8TQIS+qBoqSYYTNiKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="32109059"
X-IronPort-AV: E=Sophos;i="6.09,277,1716274800"; d="scan'208";a="32109059"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 14:39:22 -0700
X-CSE-ConnectionGUID: Qs7mtv4ZTRO5yokyLk2qHA==
X-CSE-MsgGUID: 02FnkA/eTd+gh02TRLoE1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,277,1716274800"; d="scan'208";a="80908694"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Aug 2024 14:39:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 9 Aug 2024 14:39:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 9 Aug 2024 14:39:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 9 Aug 2024 14:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IBtt7qInAMWMf0VpVTG4eGOYkbsenEYN+52Zg/33WqREzuIHOdt4wDGE6EFX5/zE4qoFEzA37/qAEf3fImzd59n9G7hW6J4v+5L4qfyP7tSaSFtLpwlV9cnKHUYCx1ejKSK+KfRdktNn2pqUaYv3fr1lo4f2DEiOXCrE2OsfhXNs5JF3lnu6zPjxdCYZ+LBLwDwYMbWOwuohOumXe54xQXEufQopeY7CGQ58Ycfyv6mIxgDEZ2vGWLpdoW6SaUByf7jhK53LRezcznGQAsBlvIVg6+RGULVifQ8+b70nnMFsKOFcfWUbglZd6mEvynMmiJ8tipYjgve/cNyr2m8Jtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7oXBBFvHX3YhO7KvbwhQUQ/n3ntKIa7GPWHrlp8GfE=;
 b=VHFAZXDEmf6Xnnf0hYd/LwXcoKfN601ZYMzBo7MyIW3KTwlmUdleuRcDNklQW9kfSf+qt0GSzIwjDWQSYDUJDvDqzyyez5QboZhFijgujci99VCZ4EKBNfZYOr1tAZ5lBDL305/IUjt4/Z0cV8BODc9pWQ5z0cK2fBLdyqVBBtc5gEsxqI2iTLcRFmfQYg0zhDt8FTCtwWVRmcgz1ZS0T/WrOmv5nFXgxz8N8qClc/vR8FRSMXQeWl9kzbrioirhEZPx5ReB9STRX6V4cu229EdwZvkMgrnLJDLbLD54+BIl3HwWphQHhtqWFBR5WHE/5u1XkvTZGSsA1HSyGPsGQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH7PR11MB8251.namprd11.prod.outlook.com (2603:10b6:510:1a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 9 Aug
 2024 21:39:17 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7828.031; Fri, 9 Aug 2024
 21:39:17 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Narvaez, Jesus" <jesus.narvaez@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Narvaez, Jesus" <jesus.narvaez@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent
 taints in CI
Thread-Topic: [PATCH] drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent
 taints in CI
Thread-Index: AQHa6dSs+jG9t8dv+UijF7KCH80P67IfdOwA
Date: Fri, 9 Aug 2024 21:39:17 +0000
Message-ID: <CH0PR11MB5444A9A2D05F8E115DF635EAE5BA2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240808204943.911727-1-jesus.narvaez@intel.com>
In-Reply-To: <20240808204943.911727-1-jesus.narvaez@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH7PR11MB8251:EE_
x-ms-office365-filtering-correlation-id: 908fd51a-4301-43c6-a532-08dcb8bbb87d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?/PbwUNv4byqHkLyBIdZ43d0GSgBUGPNvyNgg7Vi/NQ1IVxunkanmcwKdd7cJ?=
 =?us-ascii?Q?CCzhXVvKhvOI/0eZ5YL0BQn1wQ0JZqgkSZGxkpPZS5SExjmSbibzs3Z6s/5o?=
 =?us-ascii?Q?xSGyOWatUtOP8p/EZwfRGqETzs/rBVuKaco1MdprP+7xPjkb3ARCE6ysEF2M?=
 =?us-ascii?Q?KYwpTv9pXHfwOYDFeDAj8Rt+OpNw1J1WRLgzKSk+qan9nOn4epeV59H3a/Sq?=
 =?us-ascii?Q?W98HsQ4Fz5UDyTxo8/KEO4GUcnN5zjv0VbdKVhovEAnVsS9z+nKcCrcwTEGM?=
 =?us-ascii?Q?wgn7Kp2hxHO2da/dij2LdTTDk4Pk/KbC7IhCfUqImgpkhM4iAzzv4vVzI1as?=
 =?us-ascii?Q?UP1d0GKrNiC/Zey9QfPM8YCO71hC3MzCbD6hedJ2RJnoTQlquIc91NroLtk2?=
 =?us-ascii?Q?uwrHU7HorUQwfj8azxPmJ1BBxEjt0hTmuqUosA/Jzpr8oQSdJxVrOLtP4uh5?=
 =?us-ascii?Q?25Y+6wcLAmh8mQ/7LQ5KAmqlzdR5bkaVZrY9wVR1xYZqitqLbolm16uz3jeW?=
 =?us-ascii?Q?O8Gr8N2smDB4apKl2CZSmkUb3ePqwlNUcEVE7Kjr73rwzHZIF6RPyFOBTXVU?=
 =?us-ascii?Q?XCtHNupkGOEbHWDN0uoSFFfboUB8rJdQPxsmBdF9AXtay/DwNd6m3vz7Gn79?=
 =?us-ascii?Q?/Gvds4nh803cvUwU7mNvHst+q+lDApQ5+rfmdMvBMJ7sPRJkzWzukveyHNxp?=
 =?us-ascii?Q?Jxoj5vzQAgpAkoGNonCW/AW8luOYKKra1wbFwxOwmMIe3nDlznnDue/21ak7?=
 =?us-ascii?Q?5wQW3GPENGxe/9FbujqZ3v2s4hkqdPWvni8E2AFUFaICuxNjKpOJKliGPUIS?=
 =?us-ascii?Q?9BY/vsvvO76QRS/llJCrbdoN7mNglarcKu3Ni6XEjitLzSVy1HI53wChXxIA?=
 =?us-ascii?Q?aWr+HkJ2376ZJT1BUV8TyuFCY9n8MToF4dKnSBUPDxBabq71mPM/WkoWiG39?=
 =?us-ascii?Q?DZE7KB1JCx2i+sxz/4icYCDtYnnsQQ3+xYbXs7xdFZlADKUOK1HmGz5WvJ44?=
 =?us-ascii?Q?Y/g+56+2bg7/DHTyUe+zyu9ca+y+ad+ScnsA9toqD5YT3hoT5MYPLNJrwmRz?=
 =?us-ascii?Q?wdG1BiVpebzI5jtvDSJGbVpTflmz138xuE0vli54dW22dY9OrmYJxJUkvSjP?=
 =?us-ascii?Q?Ml1YFg1+tO3UcS8FjbaCLgY8v113Q45AGTVjOYIDZRoTc1JwlvFKzZCqwEiP?=
 =?us-ascii?Q?+2NCKpQVkrRSp+TT4BVyqLxUfjzfAB1Xr5gGV2CpYYrJu24nPotKEVRV43rI?=
 =?us-ascii?Q?Uf+wARZcloxblvOwbc6xhokrc75di57Pof1/vYAY7FTxKPQ9AYM7u+D//cM+?=
 =?us-ascii?Q?/7U28Opj+8PawHWjCn/h6gP5KIItV+v40PLhgYu6BThgk1dvQkGQS+PHrnUd?=
 =?us-ascii?Q?24OoVTR4K7F4MWyBboqHPz5TNMXMo+Y+uB6VDK3HJlzTfHBZZQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lyMngHBJMF8KEQrwfDQa1ui1BYKiQwcQvmDkHoqMwyik/BlJ6HeLZAjx0hEb?=
 =?us-ascii?Q?Agm/o3iCEVVpIvplk4ch9doe9dxBr6Chcgq6FQTVynYFmyHh6XHcRlH0u+6g?=
 =?us-ascii?Q?1uBNZ48feiJ8j9GhD+GAc9yWomK/Yf05eKmVaWh3eY/GqP8aBdl/VCKiFgvF?=
 =?us-ascii?Q?SDsmiivnBd3wE4uleeCJzH+286Wv8gVytF9ZxB/hM17+U+m3t8N4wjfK+/MX?=
 =?us-ascii?Q?bz/hzN1eJTUv6efhMP8mnP6XvOXpIBISNcmr7SEphhm3ae0DEks/Gva+AY5C?=
 =?us-ascii?Q?Ac1GwCMUGPxnVkdbuw/7c729wG8zdyrM2VhlJwcLOUdClCRa6BvWoDAjDIJe?=
 =?us-ascii?Q?kVN3851Tt/oomZqr4YSNbELRUZWB3yRwxgk+qe+KfY8LV87lQf4Qqi8+tsse?=
 =?us-ascii?Q?pHzYEYJglJ0V3yCPOHB7XwjKNe77a+LCl14HuO0TWMx6rNx5qm00Q5+kYx2E?=
 =?us-ascii?Q?Fu4LBalf+I6ewYdlmCm8SRluGAakuC5VlN26AsLtV2ncao7GB1oVH5kJAnd0?=
 =?us-ascii?Q?5vKxgoJ7kPoXDXgGA49mvPQ/L3Tbr81BMwYvF9gGBH13LQt06JiJdj3Z+IM7?=
 =?us-ascii?Q?tFwZdhmUlPfkHaUJzxfQqOE6MqpNHNx0cKbeygohoPwhPvJIoQO3p8womw/u?=
 =?us-ascii?Q?9TnRDkJyN/EYkykZe2b7ojzQCL/Zi9rb9kLEsleMsirDyZJTIF9ThUbm4s8k?=
 =?us-ascii?Q?Pmt61chs9wg83S/R6+VnxIT1yksCJ9sIy3AuMzNZv/VNarDvdoj5jI9uQ5sb?=
 =?us-ascii?Q?btACGsL6yQTlnFXLR7/w38Bb/m9lYXmTsxyQIBPBI2CElSpH5tPKH5L3aKAy?=
 =?us-ascii?Q?FQp9GWvrTWjMk5DDiBEBBZXgoKHqmEAmKvQ2MVkuNezFWT4Un3f1doS8wZt2?=
 =?us-ascii?Q?zYNOsYgV/bN8xq1ca69jE26oPDydshuOKnpyeYGNsUd5Kc0VGinZ8YJMaYsl?=
 =?us-ascii?Q?n9mmWP5SaD8ppcVd1gIUB1TDH9YRenfOs7+RaNqksT1qnr2QSH6D/Wia9vpD?=
 =?us-ascii?Q?+FkOY2bfBkSh/pLBRlfReMeMS92OuM6QNsPq2voBh2lDLb4v2QgBIHIROU+U?=
 =?us-ascii?Q?afiV/azC5QGqNqSChffyG1MZd8S3A5N88X5jClQAvUrrvSoraigTG8zgD0Pw?=
 =?us-ascii?Q?0m1yFwkokh3vNLHcFiZ1jtoyr1JIDsQNSRUGhAgF6bdD7ZTtGVTKiSZUCeEQ?=
 =?us-ascii?Q?rHRIzGQJwqr/HJBkOk6eb6I9PoXav5KrpuIw6qZEYWpZF6KdsKP+3bkBDN0a?=
 =?us-ascii?Q?4WVRI8aRw2lYj8AQJ2QPiOHD1vQF9NvYSk9AdosNKn2VS0sCja//RhPErV2x?=
 =?us-ascii?Q?bjVbdVPbJjJgciWZo8ns/ick6Vj4+NA1QvIUftXaMRxU+R31FZhePrK13EEA?=
 =?us-ascii?Q?pG20wZPUKwAWxX4QeGvIn+EVjV/xsF+bDLn+XWtPUFWk2QL3Iz7oMJNLdbWf?=
 =?us-ascii?Q?ib00NOlmz5d/3ES/Q/Ll/aOqScZA3atKm9zKvUdPF66U8x001JSpoVXhrneB?=
 =?us-ascii?Q?UXDJMIeE1t39iCft+ZyDwb9XFjzHm4HdY5BtfiugOlzrauXy/BRhimjRdHjH?=
 =?us-ascii?Q?LOCqU9RPg5W4y5aDD5A1BidtfjTFtq0zSivzy7QZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 908fd51a-4301-43c6-a532-08dcb8bbb87d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2024 21:39:17.3197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N7m8ZAd/RXugFGmY79rUNOmPN5uS06jG/htC77AWqsVmbd9/I0PJuwS1ha652tmjUkNOqneeajUXyFJVlVbQm5cWg332ODXXyJFxVzaSKco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8251
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jesu=
s Narvaez
Sent: Thursday, August 8, 2024 1:50 PM
To: intel-gfx@lists.freedesktop.org
Cc: Narvaez, Jesus <jesus.narvaez@intel.com>
Subject: [PATCH] drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent tai=
nts in CI
>=20
> This warning was supposed to catch a harmless issue, but changing to
> guc_error should prevent kernel taints in CI runs.

I'll defer to your judgement on this, but IMO if we just want to log when t=
his
happens and guarantee we don't throw kernel taints in CI, we might want to
consider using guc_info instead.  Not blocking on it, though.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>=20
> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 9400d0eb682b..c3a5d9e1288e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2014,11 +2014,12 @@ void intel_guc_submission_reset_finish(struct int=
el_guc *guc)
> =20
>  	/*
>  	 * Technically possible for either of these values to be non-zero here,
> -	 * but very unlikely + harmless. Regardless let's add a warn so we can
> +	 * but very unlikely + harmless. Regardless let's add an error so we ca=
n
>  	 * see in CI if this happens frequently / a precursor to taking down th=
e
>  	 * machine.
>  	 */
> -	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
> +	if (atomic_read(&guc->outstanding_submission_g2h))
> +		guc_err(guc, "Unexpected outstanding GuC to Host in reset finish\n");
>  	atomic_set(&guc->outstanding_submission_g2h, 0);
> =20
>  	intel_guc_global_policies_update(guc);
> --=20
> 2.34.1
>=20
>=20
