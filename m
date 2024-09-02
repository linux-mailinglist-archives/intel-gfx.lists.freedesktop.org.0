Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DD79686E7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 14:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5337510E2C3;
	Mon,  2 Sep 2024 12:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jbx4qhgL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717D410E2C3;
 Mon,  2 Sep 2024 12:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278497; x=1756814497;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TBC2VsANw60KU9kLoDQxcWM9tM+sfbIwAZ2mQrbVLzw=;
 b=Jbx4qhgL0JcBx9tjM+yBt79keY7GaRarkIZrh59QeQLnYdZPnD+QkvZ0
 N9Ma50h6TRuknuq63FE2hUG2VaxIHK3kMx227ACSTVb+aTzjV62gKsOih
 XLG2ptf3zPpVYkdJbkj4rc6jOjMhKNr5pPxpsMb3mMEz4/I3KKyO01P1T
 VDw3TZJzbXO3KJ0GpHSOuoAE1VQNkzy4zFm88sxCciZrg8fVhRSEOH3Tf
 TUBenio/U6yw8HfwCN3MVDdlU2rVgohZ2ojHrT8UIwhiUU24banwGJqj3
 AO2yejmYuORoXHHfG5VgqL5FiUQiuToPuk0J+aPea3uxNAPk0xjfYcywD w==;
X-CSE-ConnectionGUID: +koA0dZeSae6Uv/5f9GvTg==
X-CSE-MsgGUID: zP4Ih3qTSSSc+h+2ISAGvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="26760331"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="26760331"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:51:52 -0700
X-CSE-ConnectionGUID: 7P95VuAESduO3gMfRxn0TQ==
X-CSE-MsgGUID: i/opaDxnR/S+BlrxS8dKbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="102043733"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:48:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:48:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:48:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:48:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:48:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WypLBMCr9e78wiqAq0yHHPfa1QeoRUBHmCqwhirHbL132TCgeAvt7dwNmgO50ZJI9addlHTXJszCzyZPcDaVsgVMawJDru+xtzM2Yl8OpBkcEs7F7Ux6NXK9X0Nd9VVu1dMtLBCmYg2ADvBT8PTN+aOyMMGs/WrhzZZMPD4Bmxw08rbm5GI6yq1cx/Ua+/U1i7ItUQaJlc8jNd9oYAISAKMlbiof8u+lA7cowuNt0sTihXv+ZnIM0mqYx5y8PL8JaVPX/3DOW+TNnlAtavMH2ciWdVCemVLyWve/XlqHC/q1MYizJmDnPQTT1ROXELki93au8oN29Q157HMMwrRHjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gx6XQuw2hZdT18hW5VEnPhKv+N0UPkCWDK2TurLjSss=;
 b=ciXC14NNuEgiwdRxnXQ4KfClOItLIDIiAAqZghQMASAUhZoNey34z30i5Wtw3jgMuaJ4c1UJOugW2Bg3aL+c1yShqmhHLg0wTw18LXTTzk24KHBe12FA9sKOhXoolWzufJBc72u2vGcHc1KVpK2Sg3mJ4LZfZGAFnktohbeKDrV8Wv+DY5VYrjIToUJD5KeyHMANch/D0dtLMEsz2qHVKGjLRgS+nduXT6k7R/7GHvuAEZ3EUG0ca9AcBHK+ABDVAOjTOn4zPeSUC6Wn7Q72aw8vefGQKXB/j6vktqEyCT+J3OHVdwgRPY7DoP2GAJv1UFSqvF9pS5sj1yK6gXBiwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 2 Sep
 2024 10:44:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 10:44:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
Thread-Topic: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915()
 in GSC messaging
Thread-Index: AQHa+iKvhmCv5Xq9oUqzPmy+8qOU6rJEVaEg
Date: Mon, 2 Sep 2024 10:44:13 +0000
Message-ID: <SN7PR11MB67508325EBD8135EA2BC986CE3922@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
 <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
In-Reply-To: <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: 453c5bde-863a-4268-a624-08dccb3c2f4d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2g7jcdfzo6yoy3YNvKgQ3mR2Uf+XQej1QdrAH6UoWukEeGpMeOlkjYa578Dh?=
 =?us-ascii?Q?uHwFgzo8+j67K7KKW6pgezN5uOZuJGAb/WsUIQjlc0PLmoSBRG7QW1n36Lku?=
 =?us-ascii?Q?xIKTZzUW9Ssa1mrBu1CDXwoCrbfAaOPyBbYojrvBDpoQNI5Xf4RrNsMHMCQo?=
 =?us-ascii?Q?jxwrcvrs4GJ+rZ2AdJzv+Y7+4cotDhkueAf8bsx0cJGd0rALFUy3C1A/gPtC?=
 =?us-ascii?Q?uOivHscuKuf5qBHTLqPgdtnocWrG6Kfwprung3XW4p6U5XBEPCF2Z6VYlTQV?=
 =?us-ascii?Q?DbHde5FyF1Fy3vBNX97KVzQUsxvrcADeWaBv6LyLbqf3V+6pPytxRU1KPcPE?=
 =?us-ascii?Q?/0d2HI2EMsowvderBUr+TH78AV2l8eV6v87AnDkCyV251t1iXhLMa86ydfJc?=
 =?us-ascii?Q?pgas8S0qZpMfZwx3+7e4JCX6n01JdvRcvj8r+LTrKQOVXhV7+niiNmCcq+xS?=
 =?us-ascii?Q?Gn1OCKMcgg7gw3Z0hnR1FhiS/YcESdeT43udUv08FahRNSq1wVk3acyuOlfP?=
 =?us-ascii?Q?RlzuQ68xyvdMaOjQkCCJQMq9YjOBvRQ1B9/Q4T/UIKbRB5Pf7fSaTrenOdWs?=
 =?us-ascii?Q?VRqOo7V8BdwFNMIiz4jQ/8DfbAaumxuL9ZUREIiWH6Ie6jH3QLqWK2yRndLs?=
 =?us-ascii?Q?SQjrDIF3X+F0gobjnlu9Q/KW3EWQfomIRE4tYpzC4blZDYy7gDS70vJZZ2hd?=
 =?us-ascii?Q?1AKvcogz6y0Yo1TEDfuZNGYMGsMPaUyYD5V8NNq1hA8FU3weEGOs0KS0ef0T?=
 =?us-ascii?Q?qidTxRTvIAiZnR2x9sAxf89nzmY9q87rhfnvGTH4zMAHtT4nfcMEka0wLuv7?=
 =?us-ascii?Q?pNdhT1MTo4dOCc/BFDopkmB+fjwXkTFTJWWv+RWywUNzlGqS39SQeg3IDIsm?=
 =?us-ascii?Q?BY7iPmkmLDQh6aU1ZEE+1rtQdGpFy3QP5m7pTdbPEZ6V/lUOVDDtzRc2YyLW?=
 =?us-ascii?Q?bAGZdDtQeuuk3QsCaBj1fC/qn3nQ9zLPcp1rUdu8JUiGLIJcvroEC/7qS0Zj?=
 =?us-ascii?Q?jgAnK5S3JCKtuU8C5EiNc+/I8TBUlyKt1uNW0oY+m36TN2mp8PooUqy0JFx3?=
 =?us-ascii?Q?u/JQ4ak9Qsase5slhU7xn0RDRcDiuMTBzrU3Rq/NuctCkF+yutM/qJwQnR5y?=
 =?us-ascii?Q?Zk75skFW+sn9mVrRLOSuzwOMCJDxSWy9urrjOC/5PrIG93HKrXoMTKAXZkO0?=
 =?us-ascii?Q?qFU0GuutesSRinJBlBF9x4UncL2uZTHpqxWUKmHFfA/CjVsjfxo2CmSXW/zr?=
 =?us-ascii?Q?dAMQBPtj2RNDt3Wm7vN7l4oCXM2Gpc7Xs6SedDFY3i5v7215un5ARRXEundj?=
 =?us-ascii?Q?+gSv2A9wiM98Rw1C3wztG89HGp5iY8m2MCGzkWp0zyFcWJm3AmeYGgfZWiIj?=
 =?us-ascii?Q?0KAqgbRyqlJuivUmadZRUd+6YiyAnSOMrk0QCmbab0g4dJwJcg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K02RyrAUIeSNfA/D2euIT7lNd30wGR0HQmUz4u71X910cwxoS6sP0MIlYGEj?=
 =?us-ascii?Q?iwpleYxxH5r8N8YHbZIzgvB4iAMOzkhResDynd5gMqa55RkR5TjfbI6/VGpJ?=
 =?us-ascii?Q?8NbFOEbbCvKMFHUjH2sW93/GnLUR+IRXfXCaNwEPqeSq/hA08d5+NthDJGF8?=
 =?us-ascii?Q?zKQmUbL0LBfDsJLKV1khITStbg25N4pTuy1XeF6Dnm6vd0sOlgwsSDOj5+GT?=
 =?us-ascii?Q?lrQCvDUjK/o1JETzoYJKPqr7ADvWFiuZ5WgPhxmbm+2VAy/FDAAv1e3RRnnQ?=
 =?us-ascii?Q?Sx9TXWcPYVksnVEX2WuTqtkElEkVBoefDxOXCRCX/QenZITYNUbJnwL+DSCo?=
 =?us-ascii?Q?RZTyurCwxzTOohB2tpknP0TxXni2+pG5Pcj8XbU47v0QL3l2Cfkqc3TaT86r?=
 =?us-ascii?Q?51krNByOAgXCvpfkS7jHvWd/Tb4HFAL+fuaMSNMPF4rhY97T7Ozl+Tnvs44J?=
 =?us-ascii?Q?61PFX713Sr2GcwAfvW3npuv/8ryr56vri0CZnVdqV1j0VQvI6oJMvpJu+d6S?=
 =?us-ascii?Q?a9TlOz7YBUsukf4AP/3EOM0K1myw77XZneSvXIVzqXjrs15q3JE+/W+YeRwV?=
 =?us-ascii?Q?05djTEj2oFKXS0VXpPTb7RSPc2euCAykU5s4+9erBm872cfeVdp8MrrDw3nm?=
 =?us-ascii?Q?3glpz3ub+t31e8oG1Xo0Qo9Def0IrdkPIs/LVs856muxJ2q48Dts2Fn4UdLC?=
 =?us-ascii?Q?EoBsoQrUP/oaWplS+iR2B4B9drzNnvEHBLzvdes4YkPBkqH/6cBhHAYT45Yf?=
 =?us-ascii?Q?BkmoVzWfL7C4BijCE4YYIcHanb0iiYlT7c9pCRwFVwsJ7o672mTA8x5dIbLe?=
 =?us-ascii?Q?jF0l1IfQ/0NUXQNTCleikj3IMQElqK1hnwjcorTQqjkSO3mRWjvRlN8VcZS/?=
 =?us-ascii?Q?bFmY34hHeOooNo7OcW1GYN7wDsJOjK/aRno722OpEH7WgP+FEBvmk80N1p+v?=
 =?us-ascii?Q?oH4DsSs6tmHGgXjnU6EFO9NDgh8MRA4cnidu/GJaPGoygr9XHvTQrQ58Tm5B?=
 =?us-ascii?Q?pIK69WbidXCo2o+ODgxzAuIB0ajBCnZQ3ZAN3appIpyiEE0CwjzIkgjsNs7a?=
 =?us-ascii?Q?qzUSELWa2U+KiYAurG5cs+/edXUsQLwyFFYhgloetQzGRTZWi7zOGvdSBj5I?=
 =?us-ascii?Q?OXnu3sHOaEcm9CQ1beOn+3wxIYJh7QaV8KUb+L7ANYitUPdjUQ7swCy+4f1y?=
 =?us-ascii?Q?qZ0L/kr7/o1bncF9MVDkdB1a9bSCYXPoAXKH2VraKwAUAbgKKE2k6B6pDoKZ?=
 =?us-ascii?Q?Z6F9Yhhb9NACMuh7xLZVbVzgfmEjTKWtpNqRbYJble6SOkGDtslnrdPggk4X?=
 =?us-ascii?Q?NFICxfPFgo1ZLlFur79bYJez9J12Lpbn08IdQYfIUeSvWqE9j3FJ/Q4BojVn?=
 =?us-ascii?Q?i1pLrw051DbeAQ0exUN+XDDF4RpX+ofDv74nEZrFd2LZUO84IPuKwwr/2zQO?=
 =?us-ascii?Q?L85FIsh98Hsa54w57AgFyEybC/ESyPxtSEochLrguVKsH2iPqfoDcDcXWbtM?=
 =?us-ascii?Q?g9ONXfYE2fxprBY8pgys3xr5vulCFzPuDY9WClfSLNFION7K3bWh8FzYMRCo?=
 =?us-ascii?Q?rhvv60Xe9zN2qGEKFdo6EVtwAhsDt4BGUcUBV9Ct?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 453c5bde-863a-4268-a624-08dccb3c2f4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 10:44:13.1271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tkBs6hp31LuPlVKf2tbh0uj5GYJXHLWQz5nlKJ3YU9leJ1Nz9nKO/U3ebV2pLMkSnLaIKsCOYqRKzh6lXiey1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 29, 2024 8:18 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>;
> Sousa, Gustavo <gustavo.sousa@intel.com>
> Subject: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() i=
n
> GSC messaging
>=20
> Use to_intel_display() instead of kdev_to_i915() in the HDCP component AP=
I
> hooks. Avoid further drive-by changes at this point, and just convert the
> display pointer to i915, and leave the struct intel_display conversion fo=
r
> later.
>=20
> The NULL error checking in the hooks make this a bit cumbersome. I'm not
> actually sure they're really required, but don't go down that rabbit hole=
 just
> now.
>=20
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>  1 file changed, 45 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 6548e71b4c49..35bdb532bbb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -7,6 +7,7 @@
>  #include <drm/intel/i915_hdcp_interface.h>
>=20
>  #include "i915_drv.h"
> +#include "intel_display_types.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
>  int
> @@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev,
> struct hdcp_port_data *data,  {
>  	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D {};
>  	struct wired_cmd_initiate_hdcp2_session_out session_init_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ake_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	session_init_in.header.api_version =3D HDCP_API_VERSION;
>  	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION; @@ -72,17 +75,19 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,  {
>  	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D {};
>  	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km ||
> !msg_sz)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_rxcert_in.header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT; @@ -135,17 +140,19 @@
> intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data
> *data,  {
>  	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>  	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_hprime)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>  	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> @@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device
> *dev, struct hdcp_port_data *dat  {
>  	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D {};
>  	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !pairing_info)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>  	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO; @@ -234,17 +243,19 @@
> intel_hdcp_gsc_initiate_locality_check(struct device *dev,  {
>  	struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>  	struct wired_cmd_init_locality_check_out lc_init_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !lc_init_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	lc_init_in.header.api_version =3D HDCP_API_VERSION;
>  	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK; @@
> -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struc=
t
> hdcp_port_data *data,  {
>  	struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>  	struct wired_cmd_validate_locality_out verify_lprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_lprime)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> @@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device
> *dev,  {
>  	struct wired_cmd_get_session_key_in get_skey_in =3D {};
>  	struct wired_cmd_get_session_key_out get_skey_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ske_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	get_skey_in.header.api_version =3D HDCP_API_VERSION;
>  	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY; @@ -
> 382,17 +397,19 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,  {
>  	struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>  	struct wired_cmd_verify_repeater_out verify_repeater_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !rep_topology || !rep_send_ack || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> @@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device
> *dev,  {
>  	struct wired_cmd_repeater_auth_stream_req_in
> *verify_mprime_in;
>  	struct wired_cmd_repeater_auth_stream_req_out
> verify_mprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>  	size_t cmd_size;
> @@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device
> *dev,
>  	if (!dev || !stream_ready || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>  	if (cmd_size =3D=3D SIZE_MAX)
> @@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct
> device *dev,  {
>  	struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>  	struct wired_cmd_enable_auth_out enable_auth_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>  	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH; @@ -
> 549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, struct
> hdcp_port_data *data)  {
>  	struct wired_cmd_close_session_in session_close_in =3D {};
>  	struct wired_cmd_close_session_out session_close_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	session_close_in.header.api_version =3D HDCP_API_VERSION;
>  	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> --
> 2.39.2

