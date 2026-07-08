Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QvmHJUugTmoIRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:08:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 243C2729CBA
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:08:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VF5h+eh7;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1AF10E665;
	Wed,  8 Jul 2026 19:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 813CC10E661;
 Wed,  8 Jul 2026 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783537734; x=1815073734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E40Ed9RTlivvvw50LqxkRQ6dJl6WUk7/brzzaEjBpmA=;
 b=VF5h+eh7VYsRD8cU/bI23TTCEAWFeN25G4V1bd/HJFfi7UE7YLUhJK4n
 CoSYDQQT830ZdLQ9uecs3BoebFn7xD1bHgRriGhyjEnCMBgHvzOJJ7qGt
 sbLghLr+3djTuiBYBERGrcRnjK9p+0JHZb7MdLoA07KzDlvMFrnVkoJkj
 gQnsNITLARKBn7jFXzp0BvncNIYDsVwaDlDP3bu++YQzEcuB4x8i/CWNP
 mV7Hhh1SqhHq+l6gbUNNwo2KDziwsDn6FGLxboIOqfOiUKehI4KUilhXR
 KgOO+GxqJPxFfTtelcbrb96rHXkMTMtQ1F9FdHpI2/mtjPFRfzdDiif9A A==;
X-CSE-ConnectionGUID: /FpT5eMOS8eOxQdg3SQ4zQ==
X-CSE-MsgGUID: h+vGdJvrQdm2h4AdT91clw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84329243"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84329243"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:08:53 -0700
X-CSE-ConnectionGUID: pwupKCKbSZav172C2am4+Q==
X-CSE-MsgGUID: xV/p3rPLTh28wHeKh94VaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="257966047"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:08:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:08:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:08:52 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bmwJz9H8KJHUa/SIwEjO1LzNjUhP3I0NJXDnjPGU0rku319I/w7QJuP59oToophlO3gXesvkISAlaEKlOgzJdv3byeRlh6fey6Y4+LPbcGJ3xENkJ7zRCWX6EWkNqASjtRg7OyvVTkroGVtYVuU9uYyUubjP1fAaKvqT+6NNSbGY2AZCd/6HOvKf8AKSQUpsIHlXgfoXpT82cX/89AdAPN8p8tryKVQ0nA5RJ/61mOMUB/hO+HZZSfnpk+W5mmqqKXW10yqJHe5AwmJXKMcXJEFtLGO0xDqKOazKyiyggKTV3xOd80VDQhnY/MgxkVmMtqhao502fqbaU4UNx+y6NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBTmtk6CtpvNixkTpc5qc6hZg2dqLxhfGVWmRfFGjy0=;
 b=WfgGJxZz2TpdBAjMSPqbead45qWSAxGO22oU0ijLleirO/4NxKDKSoeCUifOzLpXTNHGU1bgB3zEX6K+EHx4OjxrKoA2pqSdzSbqZvrx7xuz66vlNi6+G3oHAtnBeBTTJz9rovLmpsnwijBtRPTvyD60Nthrjlyvy0mDK3PoA4p66w+VGuXaAM17ew7cD9X/2CH+V12hex8ThUQAIsnX02dtSVDCRivIFK7bC2vFvL9I8FFT/gzkFcZ2PgZFT5UzJ7dVxQxuo45czL2rJ7VIUfF96bxdXLQtwkqeW/pz4ryU/eKoo/+WPwFqCwHmLyAjLxznupZEYErcZ9i5/0EVng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB6424.namprd11.prod.outlook.com (2603:10b6:8:c4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.14; Wed, 8 Jul 2026 19:08:45 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:08:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 08/14] drm/i915/color: Add YUV range correction to SDR plane
 pipeline
Thread-Topic: [v3 08/14] drm/i915/color: Add YUV range correction to SDR plane
 pipeline
Thread-Index: AQHc/jxZAAxXNavDiUalGvtuLbdLZLZkHdYA
Date: Wed, 8 Jul 2026 19:08:45 +0000
Message-ID: <DM4PR11MB6360359575211F40D07030D8F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-9-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-9-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB6424:EE_
x-ms-office365-filtering-correlation-id: 60826d41-ba07-4e66-89a1-08dedd24552f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|38070700021|56012099006|11063799006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: 9QxWW1o/t/EII0BdpvjJ3jRAn8m0vEOSeESsyLIUQA/FvrUCCZUX3VTTvBX73I48LInXyobhcUyUt014Zp+VJ1C7D7B8ie1AMYjKtlk8fQRIN2V2Furqo3SFVXJ6RZGFA1YCl5Tr5Q2BKCtj06jIc+R8B3197oFL6rqcySeFqj5RpTAnM44qBqKKg8je7PgVsqa3JyQLBIMa2pe7IR9PhyqPVU0lUkdKCBNsU6GUxW0aKJiLL6/jPKZMvxByHbfgY2d7XiskRRlXA+B9ImPtba2F/GyZVWcj8Hd5MggTHMOEZ10JyroxvnuiF0660qdILwdzCB1JxL5Qony+SydNHF5vYXiZLD13u3/MY1+GN1CHsX4KK2Qi68HHe01iaIlrQ4iCY7YSVln1G3U/z/g7CpY3IfPi48zv4eEDPxZ5Ib1jAww9ADSeZPd6ckkre67AFtymG5Hi5F6/tDkm3WLBLCjr2EYDE9LLuOK4dBUM1Q0LEAUol9p8V1+gC7W6YgtowdX9qCmapWsHopsH12R8Sc8daNk1rtP0i39WdheoSXog6M9cI59ea3MKVO07gmVhyb/YZtJd/ujNAi2XJoFLTdlZcBZUnlJDoCLZ11aVbBDNpNmdfuojfogbzsYrnWe+SaQUkE1i5g44GvpEHVprQNEMACZr/9Pmn/kl7kWd5q/OspU+S6mM91yUJEdJiP9G2OFVSOq1UH7zQWGilIxH0P3LAgeQxJOm45wpewCNjrw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(38070700021)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x2qWMEJ7qIGSFTlstjV0gKBqvN1hWqos+CNjBHP/6mjsvr4yLhlbYGq/YeY0?=
 =?us-ascii?Q?kXgygRp9klVIvXukqxqcJYV9bpZ2jNMxRpN7IP2DqN84eDwWe2HcxgEdHbeA?=
 =?us-ascii?Q?rONcwHsRCTcKz8QWRmcxQR+jgD4gIsYWHHOetOCeiqe9qGQ184GrCZCmUkIH?=
 =?us-ascii?Q?WQ4FsTQTAokKTD1N6Wu8oXVjOxz9YV1GS5sL3QrWzbQEVQENOGcLjfam5u+P?=
 =?us-ascii?Q?QXNyv+BWRC6PIGz13doeL3ypK6OGTWChyoxTZePZQuBd3l5ESf4NAyeJ2gS8?=
 =?us-ascii?Q?+BoMSLFnQ3+2fgaSXkAw/ah6Qw7rM5ZnuLK/3dCoJ/DDWVkPvMcRxH+UBUoQ?=
 =?us-ascii?Q?PgjIcUJ8ah9EdGqfe8k7J/8NTwVlCMBluk8U9hCqSNq0Knbva93E+yJ46L3y?=
 =?us-ascii?Q?+WbHkKrfpxg1EWgZN2M1VpuUjN5yaiY6fAcHncJ+0TFNa6LeTaCRtJD3bK8W?=
 =?us-ascii?Q?/pUU2gEkNtdesiNofAu76swHzbohh9YS5+G5kAf50Hjf/TbqVmlyf8aUfbOM?=
 =?us-ascii?Q?sIIgzWQ0Fn78NfZE6OJObUVtb68R+KeJaFPqjD2RLp2mLaaMHILll/brEY1K?=
 =?us-ascii?Q?QhJkjArjc1FkjaWh03Nh3Kty8X9iyW2aHLDcM59sZKmr/ybYeaYE6Eujtk0j?=
 =?us-ascii?Q?YeMyA6wjnJNu3a5pGAk9FvshRIZfQDToAtvBLbx4KQ0VYoiCpKux0qipR32Q?=
 =?us-ascii?Q?8sMZQIC0rTIq51A3K8UESr2C/KZqv/CiBMjH71/fZFYWU6HApD2QrFu79Y2j?=
 =?us-ascii?Q?E7FSMQqXlCVDixJVln6Df82Zs19KM49rZY1R0Z9d/ufvx6rPq25Y3MAXeCFl?=
 =?us-ascii?Q?5Rne3i4R39b8s/EO+YXHV1GQ8En4f9Hi+kBjpewsrgWBsUjHY+5wQRDSVUYO?=
 =?us-ascii?Q?x4dOg1NkAebzUMjm+eltNy9DAEu+ZMlPKG81ay981SnaQZUAgASALko3Ljz1?=
 =?us-ascii?Q?2y/Z3qfesz8giWjtLBDEE2QvAVJgMXe/Jtbg8m+DYe7FG6iYQl7BWlq3v3x9?=
 =?us-ascii?Q?suIbehH4ScUIPDB4bpztMdUpyWLl9xtmSPk1XlEPsEhHgZbTCjgfg3kWSXgh?=
 =?us-ascii?Q?NktI8cMJTqfDkwTKZVRJMJ8cErFpTZUDRu17ZIOwmBB4W+512DeP7io38Di+?=
 =?us-ascii?Q?i78OdSY0zX68NPvw0ljEu66haQczoPdaHjQMh5+wWjUF0IeMepeHruvZpHQv?=
 =?us-ascii?Q?bO1Us710gOXmj26C/Y/eLfMG8aJrY2/Cx44cWCGZZHqn0nDGnfZvJmG7oQh5?=
 =?us-ascii?Q?K/l6/wG52dER4C9HiHWlLtsJhXuwecWCEleW5ax479tL597ymLMaGQScvdyM?=
 =?us-ascii?Q?7Pj/8RB+Rux/cbclK0cxZYNmgBve1UutQmcxJCi5unXjJa7Sh/O3yu38l6a1?=
 =?us-ascii?Q?kn22IWj2wtBWghYnVVuF6vwva/z4gDdW1yny022dgR0GAIM4GDF37HbFiBxK?=
 =?us-ascii?Q?VroXj/cc/z+DHbJG6BGnFljIla39qTIKsmwL+5sgo6SIjfMf1gg/24TuPCvg?=
 =?us-ascii?Q?oiFEso8VM7vcgeZFkguVXa4m4OyXpW+DlfcRzq5KILm98bHIFOpemaADa0fL?=
 =?us-ascii?Q?bk84jyAx2VyPUa6aBeMXqqmuUpp08dFSOPCQzsjeYu1AgWJvCjXP1rqlFvJ0?=
 =?us-ascii?Q?3nmL5mfkhvxBWrgcSfLri2Vj7lSlv6NVheZdbzmcDA7Ay51JoLLDz+p8yaLp?=
 =?us-ascii?Q?NznLI9bZdZaR6m23U6UT1aH4QKzML+80zjY9eZFJRTEE6oJr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LvWk4Yztgp9XUimOk1iiIfTueU/a+0/W4Myh9th6sQNnS/il+rumeHCY9zUaYJUINuL6fxVZ/OA/gvni0b/fnPQY0VpdVDZy6/0lHMn4u/stqrJHGILIQMVzm6Zv+rQqVeMW8sv7bXPDQ0FvzpZC3KyaE+FBOLwq68/6VwGqPiM36pmQNIURXgG6/P1hBJjdF8iZONqwvjC8H8ECVrk/UOA6M3xFJlhnnW1YqCrwsUQbQAiL0JgWK6Q9LwYExnxnfWwEqH+sqMra43friyBgQHLE6MivUW72pamspmFFc6XwSbMQJuue3G/dLHQOhcBNheDAromSF4samw/RNwJSkQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60826d41-ba07-4e66-89a1-08dedd24552f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:08:45.0841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4WqpsG1SUyMylYGKFAp7jKVC4T6hh+Zb9zNHqFRlkbmD3+WwLGoxqLyRJI0vDbccyKt+KlAZPmlTgBtdN1Hbvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6424
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 243C2729CBA



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 08/14] drm/i915/color: Add YUV range correction to SDR plane
> pipeline
>=20
> Insert the INTEL_PLANE_CB_YUV_RANGE_CORRECT color block into the SDR
> plane color pipeline. This enables YCbCr limited-to-full range expansion =
ahead of
> the CSC block that expects full range pixel data. With this, the pipeline=
 can accept
> limited range framebuffers.

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color_pipeline.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 7d25f4fbfa9b..7457fa51cb97 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -44,6 +44,7 @@ static const enum intel_color_block hdr_plane_pipeline[=
] =3D {
> };
>=20
>  static const enum intel_color_block sdr_plane_pipeline[] =3D {
> +	INTEL_PLANE_CB_YUV_RANGE_CORRECT,
>  	INTEL_PLANE_CB_CSC_FF,
>  };
>=20
> --
> 2.25.1

