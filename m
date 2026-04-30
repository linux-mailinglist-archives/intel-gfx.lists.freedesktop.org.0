Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFBWGSLD8mkjuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 04:49:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62DC49C7CA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 04:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3830710F1C7;
	Thu, 30 Apr 2026 02:49:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K+kfO0rY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262BF10E033;
 Thu, 30 Apr 2026 02:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777517343; x=1809053343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x6w5AHtlYYH94Ijq0lzKG9wQTv8hDvvcudjk+g4Qe1I=;
 b=K+kfO0rYeLKi56m1gfILajP9KKyEAX7YDz0Mv6aYjJnfiC5tg7ozg6Ol
 prudLSMSRuNci/aHWPQx4Vbxhc8xkYFTMla/O5OyagxMhUw2pXQXAqghr
 xNkREy37qtBGgDSy30DRXX9NxESj+WT2XNsV5dt9rRr3YgFMQOE97zOSN
 QeGz4F6l/VSC6cmEKRjSOh+S1jOcqbhHJrzmub+u2Mnp7PoH5zy4jcwQ8
 laTegmcABJA4VJ0HEePqeqmBuUvekrTqlwNCnhEhOh/6VrnEztTQfBkKy
 0/cAB15VjHZh2Q81fO/2ngqWwQ6r93dybGTpm7ueQB9REUlC6QuRRh0Yr w==;
X-CSE-ConnectionGUID: /fNVI9GfQ12nzFQsEeu4Qg==
X-CSE-MsgGUID: br0xX12MRHC8rGNywcWz2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78482809"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="78482809"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 19:49:02 -0700
X-CSE-ConnectionGUID: T86OtYWbQs2PnKECzTNWsg==
X-CSE-MsgGUID: 3wACvhtyQbuXK82LR2d5PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="236215866"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 19:49:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 19:49:01 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 19:49:01 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 19:49:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lpJs5cQh4hrzhYemBUL0/bQXsE04JFcE6hseKA5myyvcPn1FqaPlzzsZImSzCsKzaAeDjty8uD84J/iJnmvwr0h5ALE7NYBv3ryD7XRUYjT/UN5ejE6MOuRhIuIDCqwlgFdsjs1bkeJU6oSZJ4tu+NGZJeHgFttmwbmd/X+h0v0gVUPtCDsn4+sqJRgwrGqQvSeQH4g85EhZ26j7p4Vh8xOIc9JPAOAkxCDTLC//zjcEhOvTbAEKlLM1pt+HogdBBF7Rk44MtOwJ1L3WaRHiSpxdd/nc0thnN7Yz6ANsdLbZYsT42ezDX8WoP75Pgbqo5xDrfWsC6R5KmQl4DY8wkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgH6eCGe5HmuawWSyg8U4M59FD+ZE6/7WFHRr+T0/qY=;
 b=HtVvLpI8b+fokTlaqB9ElJw0mZkvrCEbySRabj3BzgMfo1ubV67BH6gp9K6xkUEGMGxgGxFZ+iW3O/0IA3T4uzMQs27+OIf1QS12IkOMwPOubvBqruMRjrteRKh1/6GYAtp41MlPF9fEBmr9QEqtZ9bYs0o8+9Ab5oPH+bUWtmwXeIW3YLZHrdBfOQMV0gjqIC2rdWJySyF5xE8KwVvWu1LwsDFBHZ9gqNjngEveKis8U4VMOv0f77Xcq5lQ7G1vNQnT7jwkP3SI/ohusxGSl0SV8aKPCp2LlrEUUnWqeyKx9Ubci11KOR4PV1NUntIGUTdDSaqhy06fQjEv8HCJ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB8062.namprd11.prod.outlook.com
 (2603:10b6:510:251::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Thu, 30 Apr
 2026 02:48:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9846.025; Thu, 30 Apr 2026
 02:48:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Samala, Pranay" <pranay.samala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Topic: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Index: AQHc15B05fYkkHl60EmvptYN9ytAabX2R5aAgACez7A=
Date: Thu, 30 Apr 2026 02:48:57 +0000
Message-ID: <DM3PPF208195D8DB762EE71AC17C0C12B42E3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260429042650.3335718-1-suraj.kandpal@intel.com>
 <BL1PR11MB6050830351318309AFDA45C8E7342@BL1PR11MB6050.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB6050830351318309AFDA45C8E7342@BL1PR11MB6050.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB8062:EE_
x-ms-office365-filtering-correlation-id: 3928b565-485b-441d-3d4e-08dea6630659
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: dmDA+s8okjUFx6R7SxuxynkRzYxVmSDjREehuuZ6Nyk99hRHBvMIA5dcHWyccnS8NvLRoYxDG8BV8VPo1TBVXHHLeCV8766g5duWzW3YGlhHG8lLRCrUs7jJODgOlhGQP/8zAUaaT8DsIZCJxV/35SgyvyiwO/LFUA0lX/Kd3VuiJ/XCVAUMHT3LMm7RGEnb8V4fBUqF4EJq/eo5bSR0yKVDKf5FZcdWACZ/n08f6WdwOP4y2VGlT/tCUm/araBHu7OG97fvQo40/KGzbFw46RRhnXRjyk9xEF2LJzTMknCC/R0tjTLB/A868jEoLSpDeJyPVUJY08vuT1SUXSpcNn1HkK58bNh6fy5/ag3ao/NUdjgdvTBpkHPuIVOTAb0URYNoQswtJ5EXd5/d/DxSRVDKipFXdhiqYxh76PoajaL6+O3KQhsp58G4tjMBTIDUzPLiXSnR41hR3l57Gi+N58gwvR5dYUWE9JPBFlpOiCyAqerIV01ULfdt0ulhhsEmnBhRaVGPJltZD5UIuIS6H1x8wpQOZKGeyxzeWSYNX5R5TdQ7TKwzgUoBq17Em1SrMzbtN+UagDDMZ8D5JPO3WMGK5uvIsfMypnLtY6HamZb2fxoIfedFEZpfJaSrQC1tQOhNjikQD10MUzReYTwVl9Hiya8orfeX6jcdB8Ngb5mcaXb7yRn+NeoTbAjQ1ha7qDX5MGsfzHU0ZBbPMx2Wux/gAaGwD5iCnDBU34o5R8GdLYGG/MA3hQieYpItJ/XA9NphTrmhvbU5UOoY1pzbWbcGPWsZ5MRJzP9rPbKzQRY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?piA68TSvqkFAPdmYX6zF+h3R3+L0CllQKgJJDDET3Mb+u5K01DASoVWOJAzy?=
 =?us-ascii?Q?rlkaOSJoqb/5Aj+8jIVa+FGpExLR46OzIWjrndT2MH6gB26EECwDuU20CNli?=
 =?us-ascii?Q?R1mCIwYL8+k6VYVTAHt7mcR/R6PjDtSFA9d0WK4yJQ9xLwPW4EKG6zHWM0P6?=
 =?us-ascii?Q?PizF2nNDY8dNkZUN3NA7rKHLteDDa13Ng66D4aCLfyKRioY5cDhGXmrirpgV?=
 =?us-ascii?Q?dCLRRrJkQC2u/BGmCBC4YWq7MhTeM3x1++R2+9GYa4xXHPN/B8kUzMY6mFZa?=
 =?us-ascii?Q?h2q6Zb0QP1ELFTKW0UkzvGbYjnljMKurC8102Nej94GR877Lxxb/Mf1/KaPE?=
 =?us-ascii?Q?2lhP1ZSaBtYGHAZzpBavzRexoGFmdghKuo6hcmdL/X2/iQYnzKG40AquHltC?=
 =?us-ascii?Q?s6XnGFPw/c1AhIrdKO9wiEWjAISZXVmBIzIEGCwMlUzc5kwHM/LfiMVqIgpo?=
 =?us-ascii?Q?PgIgWvt9ZgBg7P+wJZi+52S8ATgBiQVk2rg3BcLKX9/xJeYsA3DrrjwvzHLu?=
 =?us-ascii?Q?atljdyCUOlKPadtfpDeZgXW7FvUisC2Dh4iLWbAi10AM2uTXkDN3YmKw2AuR?=
 =?us-ascii?Q?6FKae0hWeE+4fLkENsVZ55qlE4IqiDqyZOzykRkXs2mrm3DgiNP80yIcWhgz?=
 =?us-ascii?Q?8qK/dnOADUZ4Z5Ctd8YnrcibA2fNTJczEhI17jqjsjZ+fQF8L+s/w+qJ7mCM?=
 =?us-ascii?Q?qJ6Mjc77yAM0TnSIXTbFFWY03/y4yKjs1UeTdHE1R71lVsmk2xB5dczu/M5G?=
 =?us-ascii?Q?Urqgp6BypShSlrr6WqDt4OPLnmdUBfSg5wxhtCi2lfOaalt5qmFElTMT59ds?=
 =?us-ascii?Q?eISqv9hDPwgoAR1gmrNlkSw7jvcnkGuMUhiqUiMfMXQkgqbrSpQygH39Ehcq?=
 =?us-ascii?Q?II7etzQODQK/0/4RYU09PzERe+aiVuupE1Filfej3e0TgJd6vFGPtG5jZiE6?=
 =?us-ascii?Q?7Dv/DnH06OKO1SBFthCLlrpNGM3nPqLZMmzf7hvXOeNvB4/oqDtGUAd6unBd?=
 =?us-ascii?Q?BinNXVpjMEFZm6qAqzjYBA/tbNGDfYz8Z2qVy2Aypmd/gjmqgrpqo66lC6aL?=
 =?us-ascii?Q?A5ujs9QDM2uU7U5bPk7nghFMulP2d6HTAAJSgbEB67jAngqOeBc3f8YZimEm?=
 =?us-ascii?Q?TXcTFVMKmw37pB2Q3TWmBMFBxkfC14eDx933N/1yWlVI0xDROj0Fdvx4ycdT?=
 =?us-ascii?Q?HkE17CtdnW81EJnkDVsdVilnygYBWPK543BDOWQTB6FuAv2v2qjDJEGBcFBB?=
 =?us-ascii?Q?cTp+/Q03lyVy4sWywHBQxERZxLVBuMiMJuk1APOJes/wSB2S/Hw3TJzsONyY?=
 =?us-ascii?Q?iZntOPF3YkHvXEqiUZSiADCOOr6l2Hen2X7w+RAMv5O6rtPaFijJoTb+uXcA?=
 =?us-ascii?Q?ZjmK5x/SZy1a0e6CTx+43hrS/eVoFlFGMY9MfrB3rtAOzHizEH/rAzAO+gjn?=
 =?us-ascii?Q?6c49OjuVd6x6moGS9PixOJq7Z+1rj5s3Kjt0Pr5uBnmAXkptChfL+NJQ8+VS?=
 =?us-ascii?Q?dscLStLLVpTREZMXKfavL3i6hq6zpSghujIX0CILBf0Cm7OLn2apXYi1As1M?=
 =?us-ascii?Q?uLfpPuNrGd6rezLsc1Fq4nNcp/DrUxS4ZBSbH8i9HCchcMjHlrryFky2q983?=
 =?us-ascii?Q?f4mM9eYsG9rmjcGZivRn4PMhn2KkZ6s3y+UdrydP/jPFmx+PRANKBgqKq0eU?=
 =?us-ascii?Q?XtCigyVCHOKjybM9jru5v5+2AYwBQqLJztoDZ/MP/3xcBdjZ6tPOG7wNeeNs?=
 =?us-ascii?Q?7Ryc9VD3Uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rGKiiR4NRK2Bix6hO0OJaNmjCANxi7stDPa9BNxEpJfXCxzRKjGMk7qp9e+93zfJtrEOsv0hwe7w063N37F9qT52rvM5UqjfE4mD1IH9cDwwfYFWEc07zQabK/WlJ756PcNYVBtvVjG5R1J5cW4xo0y1VuwqMPuqcHsNmvcu4SgCb5uHV8CaIrIYqaWNpMaH0aOEvTwPwAcIz4jTktLLOlYYyl/m47gUhgsuqVSDhtJnpvCfxdSzz44b115/lWh6fMn65Eew5qGapK8l43qRCMYAurUPs33tDXv0GD5Sko1vb+JcM9zXYweLuej5riDhl/FEy2rPlSmmh9Z7Zjq6fg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3928b565-485b-441d-3d4e-08dea6630659
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 02:48:57.1460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JK6XtGmjwPeDhwvwrKh53WPFyMFyVRbrOFWVM+Dhu1UyTFNNtpmmv2qaEmvUDPJ1zYTOeaMnnSLN+gGcogbNIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8062
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
X-Rspamd-Queue-Id: B62DC49C7CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]



> -----Original Message-----
> From: Samala, Pranay <pranay.samala@intel.com>
> Sent: Wednesday, April 29, 2026 10:42 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values a=
fter
> crtc_enable
>=20
> Hi Suraj,
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Wednesday, April 29, 2026 9:57 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> > <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values
> > after crtc_enable
> >
> > When a CRTC is moved to a different transcoder (e.g. on DP-MST stream
> > allocation), PIPE_SCANLINE and PIPE_FRMCNT can return values latched
> > from the previous transcoder/mode for up to one vblank period after
> > the new pipe is enabled. The vblank evasion code in
> > intel_pipe_update_start()/end() then samples a stale or boundary
> > scanline and the frame counter ticks during the critical section,
> > producing diagnostic errors of the form:
>=20
> The stale PIPE_SCANLINE issue happens only when the transcoder changes, b=
ut
> the vblank wait is added for every crtc_enable. Since intel_enable_crtc()=
 already
> has access to the old and new states, can we add the wait only when the
> transcoder changes? This would avoid an extra frame delay in normal cases=
.
>=20
> Regards,
> Pranay
>=20

Hi Pranay,
Thanks for the review
So here is my why this is put here:
1) intel_crtc_enable() to begin with run only when intel_crtc_needs_modeset=
() is true not every commit, Just on full modesets so the latency here is n=
egilble.
2) I don't think the trigger is strictly "transcoder changed." The stale re=
ad comes from PIPE_SCANLINE / PIPE_FRMCNT not having seen a live frame yet =
on the freshly-enabled pipe. That happens any time the pipe transitions off=
 to on, regardless of whether the transcoder mapping changed. skipping wait=
 when  transcoder is the same would still leave a window where the next ato=
mic commit can race the first vblank.
3) Also, I don't think "transcoder changed" is the right check. Comparing o=
ld_crtc_state->cpu_transcoder to the new one only catches the rebind case -=
 it misses the more common path where the CRTC was fully off and we're just=
 turning it on (which is actually how I hit this most often with kms_rotati=
on_crc on MST). To cover that we'd really be gating on !old_crtc_state->hw.=
active, just makes it a full modeset check - and that's already exactly whe=
n intel_enable_crtc() runs. So the conditional ends up not buying us much.

Regards,
Suraj Kandpal

> >
> >   [243.348405] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure on
> > pipe B (start=3D300 end=3D301) time 61 us, min 2128, max 2161, scanline
> > start 1200, end 2165
> >   [248.536260] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure on
> > pipe B (start=3D561 end=3D562) time 61 us, min 2128, max 2161, scanline
> > start 2162, end 2167
> >
> > Here "scanline start 1200" is the vblank_start of a previously
> > programmed mode on a different transcoder, while "2162" is the current
> > mode's vblank_start sampled before any real frame has been emitted.
> > Both indicate a stale read rather than a real evasion miss.
> >
> > Wait for one vblank after crtc_enable() to give the new transcoder a
> > chance to start producing live PIPE_SCANLINE/FRMCNT values before any
> > subsequent atomic commit enters the vblank evasion section. This adds
> > at most one frame of latency on modeset, which is invisible to users.
> >
> > Reproduced with igt@kms_rotation_crc@sprite-rotation-180 on a DP-MST
> > sink; with this patch the failures no longer occur.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 674a4ece6d0f..8ebd0df25c11 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6741,6 +6741,8 @@ static void intel_enable_crtc(struct
> > intel_atomic_state *state,
> >
> >  	display->funcs.display->crtc_enable(state, crtc);
> >
> > +	intel_crtc_wait_for_next_vblank(crtc);
> > +
> >  	/* vblanks work again, re-enable pipe CRC. */
> >  	intel_crtc_enable_pipe_crc(crtc);
> >  }
> > --
> > 2.34.1

