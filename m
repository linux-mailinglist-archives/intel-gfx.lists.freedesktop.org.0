Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rMBXE9BqMmrBzgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:37:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1707697FDC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 11:37:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JPuA2keF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F30B10EF4C;
	Wed, 17 Jun 2026 09:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF59610EF49;
 Wed, 17 Jun 2026 09:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781689037; x=1813225037;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5G5DTrBgpsNWawzUe1JPXPFmyo9MnNXg5y56lCT9a58=;
 b=JPuA2keFpPQDBauWXq+lcpsXz9XvhXhDv1e2kYrqUI8UEHozHaMgSLv1
 9fQUZnglCisFnIc+9eLGK41whpEd8pE8Pv43WCq31LvTO2HHdnakIuh2J
 utTJmOAf4Ub7V+A+8f7O0x7jnOtHNDW8DUbdrYPY2eH2DQL8gsttxaJiK
 u8wRK96aQuhpyY30aw20N/eKNcqowPU2GDM3kTp4v9pcRoKzppN1ZlkL9
 9GbzspiVenD1bBe3hGOHcdb1jPPWynXA+DSV7uXkGB383DW1D3S3cIO++
 zH7iti8tMl7PLms9pSmyz3aeP38KCgtSFOHxFUbtb9EDwaK741NC4N7js Q==;
X-CSE-ConnectionGUID: Uy8+XCTlTsaMTk7XifEnvQ==
X-CSE-MsgGUID: pVK+iyr7QGmExd+d+9XPqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81605486"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="81605486"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:37:16 -0700
X-CSE-ConnectionGUID: cVmnomlQQfqV9KNb05Cx6A==
X-CSE-MsgGUID: +58Ewf/YT6GaDxM+zrATmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245115479"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 02:37:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 02:37:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 02:37:16 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 02:37:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EExhk4l08nVKp22oeyAiKy4gASobW/Ru5ZSW1n+LS85R6CEAPAa3GSQdZqZjRS8vPGy2g/lRDfUB9hBMuCgcFEN4h+gViElI7TpPQoIE1rPNeBRO74Z/fwmc3V89YOCH6lLTEqABbXjbzvuNBVIOkbYMMfOWVK09QEllL+/g36uGQioeh4AnC5XdW5YYRcXbNCPJ7BikWFRI6oGAgPSuZJDvC3iATpz+OscPmeJDFHO3O+tGEnLdeIRYfLEcxo8buThmVI0i+1VgiBvbH48ZjEi7pUb8r/tc1y2WidOVbey5x43ks1MUggkR+Mp0E4GHR6F4iqbcn9SORY06bAw9ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLB9bs5FveoMfUuitcuLNlCmw6RtqOQPbCJAs2OWn9Q=;
 b=h0hJlue9p2waN1yF0dpzVTTLrEAhjPVMQk+bJDmmM0LWn8puD+INCC/KmFDB9C06MZodzgcR/ZYvVEX9PnU09Ptfxsm3jEuFNQPVICY7/ImBOz6lAvlDuvdn8O70+foQ873QRGG9BE+qaj4m0WkuM9vD5qRRcxCWfa46eakmaOZcl09IaXXq+5NcpripzMsnsCne9nrG4rSKiGm1vMM8RmloDfRoRjHXhRNmQ1cT9kp7pdW7eR4NpD4HQSLqGsnELX0OXI9QluwJCjFDqpT2exjjzK9LZH1oiDwxcs5acptxeBA5rFyzl3a8vmjcBsFnSFp4UIV3wSexslj+/BVAqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA1PR11MB8150.namprd11.prod.outlook.com (2603:10b6:208:44c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Wed, 17 Jun
 2026 09:37:12 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 09:37:12 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 11/16] drm/i915/display: Enable DC3CO idle protocol in
 ALPM
Thread-Topic: [PATCH v6 11/16] drm/i915/display: Enable DC3CO idle protocol in
 ALPM
Thread-Index: AQHc/ax+iyUVA4e3KE2KGgwgLFjzVbZCfjSg
Date: Wed, 17 Jun 2026 09:37:12 +0000
Message-ID: <DS0PR11MB8049A12F68AECC4E7285A68AF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-12-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-12-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA1PR11MB8150:EE_
x-ms-office365-filtering-correlation-id: 4c30732c-1e3a-4605-397e-08decc540291
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|18002099003|22082099003|3023799007|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: ivb7JZ21Y+OVihCMTeeF4y8YJUVhlueyVyolwVKCDTaauFGY2/ys+pVMpKCQCWJnk4m4nGGPUbJa1JVsWSsYMEMDOjzLXLABEHYdWTyDzRz4s9sutEZSHTERfcV/6U2rcyPniBCUDQX4SRuT1K150Lvpvg2MQzFaXOQEHO0/kOLVMDU4eBi//mNvQDAXPUbWJC1twzQaiFhWoH2/LlupKc9KwlvkSqKDJDSxDsqHkoVCWNWOflJqA7IPutm+TWLN5RJv88EzD1XYxdG50Zb63xJiGvxnuDlfiNHeLBFjM4fu3+pnQieIS49cKvmNewJNZuUJid1Qfx+zqeeHGX17LE7ttF93OGhk/lVx6Ff+Y6m1cw5c+n/XWghMC2468+duKhYjW4N5L4r6P78UtJ55G+tjLkT2sjBJ+EzPOqD5EgogVUdcuuhK6v9cz6jlddqPoVs0lRQsII4hXpbLty77pbqESlUZIv8QDiNJi6eXqH01A6hOVat+YRtO4ImRYWiOG/k8Wap8/hp/5s6GKZXjIp4i+KTGDY4dthwOcFyAnvRd3j9TAKQQYFMLTE85fEOQOxCCrZpXbDybJYanrhHa/eHkazodI5/RiNxVDUxdnGHZodgAtBsKBuxTyXD3iMsREfTrLfJbS+tDB2ib6u34vgAkL0Yze90q0OIm+Tv+gbvDiNxspplZq27rSUFQHS9YYFQosuzlkwQKLdTWQAmeJOZrll07E8hdM1B3myXjNdNeOAbIVPJmPjpLIJQdQ8dG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(18002099003)(22082099003)(3023799007)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r3xE1y/to0COSnNWrNzSrGmhvT2U1SZaNqkZX+0O5HT1sq6RIfPlKTT+PgcO?=
 =?us-ascii?Q?UXOQrI6jzusPjueTgYeeftrSIEnH8iBz0V5w+Ys9Eq0+6AURSXXX/mif6iY3?=
 =?us-ascii?Q?GSNG9mYYiW16zA92KMvgqbEe+W1lfgStqDMNym7DrM/TbQJivJi4vRBtA1Xm?=
 =?us-ascii?Q?9I92dD3Vl3hBRkOMCVvsUeT7S/yWRP2lSCE8ygqqAS6v1fw0kLxsWw4c6uNu?=
 =?us-ascii?Q?YNAngyRwsft8M0BvWzPvRMWnK+goMilEhX0Y9WctvHFJbuB4kdI4ImrBJadU?=
 =?us-ascii?Q?/qVw26nmMDJ9XKolBxSFnWrEOKZASMZIMbKRCvr6Oiq7IlNsHyoVOIUFlzj4?=
 =?us-ascii?Q?jTaaIm5CHlRStWntnrxatHU2D2nzfdNkjoItcNJPLGvzh6L1TRXnLCJCM1Zg?=
 =?us-ascii?Q?HDkQxNhgORt4infBicFYUardrCsGia6H42juDIgLT/5UCEKjXWrrpsdiucs0?=
 =?us-ascii?Q?Ok+DgPdtsISMUDZ+0rSx3Ng/+JwLjMvsQEl8/738U0GXRNJFbODk8o8qwQVm?=
 =?us-ascii?Q?WGYwZUrI17Y0BQJ1DVGw4BzvUggtuyCgmdo593Eb8v1sgfR3KRkb7raF0G30?=
 =?us-ascii?Q?dFtiNj4dk1nx40XmeZsZQuBPvteXEbTCvWVkcfxqQzxR/5WD8so3fPq69fAh?=
 =?us-ascii?Q?wKGGaszMjdw70OrmDJOrk9unBTFmq707pASlRizNv6Bh+FNf9smSK53642a7?=
 =?us-ascii?Q?iZ0hqcthxD/f3qVgZNijTSHrYLt2Zq5QcAl2M5SFGVLZ/e4B4DB67k+s1X75?=
 =?us-ascii?Q?R4bGp7shQtLhbFCWvoXj8DrXsPZDhT8IkyWcuQlJRCt7zBPnp4P+rBlf5o2C?=
 =?us-ascii?Q?hxJR7o8BjXARsJodNj6PB41fhVtvsOROmrzUSh2BH4IRCCx+X7Cn+JX/4Kqf?=
 =?us-ascii?Q?Rx2VWXNPtSOWoQoTQUaS3mqAX5pcGelZVM3IAuRfn/+dADgMMXxBay1RCWL5?=
 =?us-ascii?Q?QS+wVZScIeDBBBR9Zd7JoxNNP7pY6q31fVCPlnmKOb4rvxOGc/IcN3f9msjv?=
 =?us-ascii?Q?ZJCIU7HV6ciAlfy3hd3xHkNmmEzaBdu7bisCD/nDhtuQaHufkcXvaXXEYeSR?=
 =?us-ascii?Q?nbCrBy/t5U8qgQDA+TJry+ECBoKoA/wT7vVhObXX8rXAQ1s+g9gdOFEF/bsT?=
 =?us-ascii?Q?/I6ZAtWLDeNcd0j3PWV1PYz2ONyM/LhwU8qi1/D8ljABpa0qo13hFIc2XfhA?=
 =?us-ascii?Q?ovG0mwo14r1oTVaUxJthwfp3vlhOxyvCytR/YlHN0axLjMRaKbkRsixO3ZBq?=
 =?us-ascii?Q?TjtfwqDy7OiGGSDU4UTNWzAe6QxBBS417HROm8v60aQfl6ChP9Eryg4W1bT/?=
 =?us-ascii?Q?KiWHACiXDVZhmmzZCI5o3JulqSYni94yAEpI3f2WHQKDyECRLNoakU7RZxQW?=
 =?us-ascii?Q?9bsiuy+P8kn9d4JTg9e6nizWpq40311BJRFG1nqqDf2uKPDchIMcJWzcBIDQ?=
 =?us-ascii?Q?qbq7wtComdQcVCeqrBpAoTg2CBawtAvp2VjFhVd+/n+HCbxNFk/M0/w2gsAJ?=
 =?us-ascii?Q?SHLbuQg23+e0EkFcd8/AIRsGwIrwOfobWvQDNnX1KLsUL9WVkhmOmtMNQbN4?=
 =?us-ascii?Q?Xk4Op4DhuWgDXhWxLSLhhTlPqCIY2EWxXylP354rF6pkH1vna77lz7I3x7U/?=
 =?us-ascii?Q?pfqTOBRfQGGRHZcEFVLAaKpfaxa+r6X/PkOu1qTv6Zi/6z1m28Yp4apw3t8z?=
 =?us-ascii?Q?amfQMATOHh3ezCd9cA+oIOOjqi0gPh0D0vTpuJCZfA5QKlvddHztR2G5Gbsl?=
 =?us-ascii?Q?p6AX5EG74A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Er0M/MDqwmPhg6APsVouWxqU64k3K+wh8uf0vaER39jvuEauUtu0lupE5gKmJTj7f9xiqAj1WyL5kr/hI66bWRaT8qP55YzhuceQygnYUt3uYkvOt71osyc1iDuBMzHHS67NAuKrVXoE+ND7/Z31LS6PHQFjJnx+B0KINZEOWDvhSNqJ6+bTQfA97usfUvfy3kzQ5wEdDca8ghHHR9fzmPL66cQfa6V6A75tAjh9RMYecGSlButnagaGyUuCrZie8gvhO8D8NB8YdScXQ+MAvzXjP1L42jxgznu9vHjmxPYQdkf+BX+Y9oko83/eHNdHoYARvpgMRPeHVrKy/Boy/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c30732c-1e3a-4605-397e-08decc540291
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 09:37:12.5371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vzm9eKH9BQGmnpsyqYXngVau+AV9k/WrGEw/81skKq1ga6ggwPIuPbo8WsfeSTejvt8KDFtCIGFFccb+FXlgtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8150
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1707697FDC



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 11/16] drm/i915/display: Enable DC3CO idle protocol in
> ALPM
>=20
> Add PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL bit definition and set it
> when DC3CO is allowed.
>=20
> Changes in v2:
> - Squash "Define DC3CO idle protocol bit in PR_ALPM_CTL"
>   into this patch (Uma Shankar)
> - Use intel_display_power_dc3co_allowed(display)
>   instead of intel_dc3co_allowed(state)
>=20
> Changes in v5:
> - check only intel_display_power_dc3co_allowed()
>   before wiriting PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL (Jani Nikula)
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 5 +++++
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 1 +
>  2 files changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index c6963ea420cc..9b6248548f64 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -407,6 +407,11 @@ static void lnl_alpm_configure(struct intel_dp
> *intel_dp,
>  			if (crtc_state->disable_as_sdp_when_pr_active)
>  				pr_alpm_ctl |=3D
> PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>=20
> +			if (intel_display_power_dc3co_allowed(display))
> +				pr_alpm_ctl |=3D
> PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
> +			else
> +				pr_alpm_ctl &=3D
> ~PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
> +
>  			intel_de_write(display, PR_ALPM_CTL(display,
> cpu_transcoder),
>  				       pr_alpm_ctl);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 8afbf5a38335..16a9e3af198d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -268,6 +268,7 @@
>=20
>  #define _PR_ALPM_CTL_A	0x60948
>  #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran,
> _PR_ALPM_CTL_A)
> +#define  PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL			BIT(7)
>  #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU
> 	BIT(6)
>  #define  PR_ALPM_CTL_RFB_UPDATE_CONTROL
> 	BIT(5)
>  #define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
> --
> 2.43.0

