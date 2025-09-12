Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21868B55177
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89FE10EC7E;
	Fri, 12 Sep 2025 14:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q2UIiT8X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097BC10EC7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757687363; x=1789223363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PtZxik10AO5B8i5UlvG4XwTqt4+wscZG1SM3IaJSPUA=;
 b=Q2UIiT8XcoKI4yjhjhjxgHBmTDWqcKJ04ESmdYoOwoZyocbQ51TOOmsr
 +vSKebzgCo3qoAaW0SLdgpM9DMpKYpZzLRlAvkyTPiHd7RVX+3SAm6Jut
 GsmG/LWMB4f+LrJ7wSAn/YcHl14qcAl4iRYWRfH/5RjeNgJOHy7SmiWjk
 J61vQxlrzOCocPOnd0CpVVcaW3lh7rPCLBPqT8HPDxW7i1C7lWPdnn2xP
 tN/bHklUdjVZggOoJnRUhtvohukaF1AxGTTS19mFULmj7tX6mp4Cpq7yS
 4mbC5fgnACT2Cxn1eBTaOfg0lfzfXHTB3Hlbyhc9cjEUCA06NAf8iE8WH Q==;
X-CSE-ConnectionGUID: 2agkB2lbTU2MfYU0O6PrKQ==
X-CSE-MsgGUID: xOkdvv3KQeqxqGDBl4qzqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="60180316"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="60180316"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:29:22 -0700
X-CSE-ConnectionGUID: el2lmrEES/iJp3Fbg6hWRQ==
X-CSE-MsgGUID: xyeG7HxkS4+gI07CqoL3ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="204971633"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:29:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 07:29:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 07:29:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.60)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 07:29:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aaTINFMVV2rR+1qpDzYEcuRbt8XYB4NJMKDqk82vJrHCxwpAUDrbzH0gF/o3gAmheKuE3DdMzwPFMZQ3qXan5aNe3zhYdEKTfOI2Cc38kQC9lkDS5riL2BHG2b6z8TShEmRhLdrB5MUfYF3g6VKIaWDqu0UP9zYpVlzOd/5pRpSdNFjrsoGbRRWXPR97jWn7vIGt9f2ndAVCmxWVrKSvclyatBlLJSXjhOegY1XYx9ew+YxurqZrWQnpKO+t5bwBXW99r0PqnEt9YC9MCG/tSN7fPOrS8oZnM2BTOGFZ8voylrSMziTmA04QBdJsa6OwCfM1piHzEOuVUzTSmw4c8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Crh2XF6q1yKHKhFbV5arDYFUjwJkro1yOiL+nMyV8i4=;
 b=fcYhljookAKrEEr2LdRFiHOs8+Hw8A46e3jrsigHA312Jefu8fSsWRRtzLDpoNVE1TdfhJQzcvaYy1fshHvM/ebOhFgw3/S8NaYeu9TtyBy5S/vvOc6StIovuIy0/INXM0uV9O2TA2pDZpA5+zz4pdoVBzdt/sUF8NVSiXi+vX0YqH6flmnHjgwwLNYuVwJA2rmEgBurHEjyQesU6g+rjzOrjyYvwOXkpIynV8OVEQWTzcUdVZqJg2s8wpVU1YLeDNwqy8eYv4h5qcBqBEJ+0Es6CXk3Rgd2AiphrkhJCa3YQJkMCHVfVn3tb+k3Wl7QbtNzVrlKz6SmTQW9Qf1n2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA0PR11MB7209.namprd11.prod.outlook.com (2603:10b6:208:441::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 14:29:17 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9094.021; Fri, 12 Sep 2025
 14:29:17 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Manna, Animesh" <animesh.manna@intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Topic: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Index: AQHcIzJG+nLPCZG8XU+LA98NK/0P9bSPP6cAgABV0mA=
Date: Fri, 12 Sep 2025 14:29:17 +0000
Message-ID: <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
 <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
In-Reply-To: <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA0PR11MB7209:EE_
x-ms-office365-filtering-correlation-id: 548d660c-41d2-4037-707a-08ddf208c17f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?d1z5YoMQKckKqZx0k92caR76peSJ29N2inu/lzLLqAJQCti36ZILQi+IKi?=
 =?iso-8859-1?Q?4tEWwjyC/lmsOuGzrlsWKS/H6g0zcdQT23zCopuFPbDLHJdXLY/Uu+13iB?=
 =?iso-8859-1?Q?EHzZ7OVzvUDlLggfsfDpHsCUVm+pOOMcxadZMe50Kid+nYHPO6LQJy4hJ7?=
 =?iso-8859-1?Q?tBoe4hmXLsI/ppTxL2pdhTUQUfMnlGd5Sn6AN88rGITdk5bXgV5V3yWLeO?=
 =?iso-8859-1?Q?AU3BKECFb+PDpxIMFkXPPnnAdGKvIYc0auGUULi33mMJCef59/RdmbIiT5?=
 =?iso-8859-1?Q?LnnDhl1HcoEuIuhrnImlXxv865k80lNFzPAuw+VlN0nwsdsF5t9eqzfvOb?=
 =?iso-8859-1?Q?LL8RsRVWBGIiqBaPGlS7Wnti2Zb8z+qIFKRTEf6VoX1QRzysKde8kSHT/2?=
 =?iso-8859-1?Q?MDebGwAfrxEvCzgIqFptr0nHIYtyaAqYfxgnD6/R+2n2AbBugxcnNurPzj?=
 =?iso-8859-1?Q?cpgM08IDA+IkomSa2IXRDHZxwlRp0SObl39Aufp59ld9GtkVOuRQmMi7HX?=
 =?iso-8859-1?Q?ZCmiCPTIrLfC7iiAOzzQaN7T6w0Dv9Qisv7Jshx0RcKgRh1MnyYHIuN2zx?=
 =?iso-8859-1?Q?J/O910/MrxI+3QTzQrrUHEd96CSfzPeT5fczZ2+zy6bwe3+mMnk0ezBFHu?=
 =?iso-8859-1?Q?v6d48n8JRrKtFWqskzGPLNLwz/fOG7pAXpW6mQCtftnBz2ISiC5AKDa0tD?=
 =?iso-8859-1?Q?Gi+YxUWguuT++boMQmXamxrMCMjaHEyAM8GLBOUzMRZscbLIjqrdMGcpb0?=
 =?iso-8859-1?Q?NKcHQ7md32fFzMgrOm39dQCRk+mAz8MgOzqrF2i0+HIFw4LqDacDRM4HA5?=
 =?iso-8859-1?Q?9RV4Kob5ydBZxgkB1GNMka4VTtHyOw/S73Ylbrs9SJgOEdiEUPM3weT2UQ?=
 =?iso-8859-1?Q?uiG0qAp9wfFKX9xemmbLcwolXuL9H8n7cMT2L2aRZVVcBKIVVE82c7dGn3?=
 =?iso-8859-1?Q?zkpdlWou7Cx39BWwgXV0wr9vDFQkyzZBmymyGBHW6vYTEZ1g15a14uGT3a?=
 =?iso-8859-1?Q?yaOd37avncJtpKgwgnwWh9vdGDj1nWruTBGhUYLEEkShjJb6QngD12gWcY?=
 =?iso-8859-1?Q?nfJmv6h0/p9sraF5YweBMcAJkkoljQoUsMyYYZQpiYWavKdCyNFSV/XDA2?=
 =?iso-8859-1?Q?A0ordTZZyy0OZ3y+UCk4LzU+bq7WYTV+nnki6ycT7WJ2F7TvA507YP/ZuY?=
 =?iso-8859-1?Q?JNOR26HgiIu9Hk+4BFF7jYXkUF+PMc00g8jP219IsRLxX2Zd/Wv9UWRXi6?=
 =?iso-8859-1?Q?aDjZp4C2eyDG6ESG/7tLasfL5QCboaGZ+fqpmpJyvZrNKJhEErawTirhAn?=
 =?iso-8859-1?Q?PR9bm0AojEuS3zmgCWqpTF+dI0n/nKnqyCfNQL30V6zhcB1H+YWElpFoV1?=
 =?iso-8859-1?Q?f7qZh+lX2lUzhfX5IAAG4ekvkEEQFs3JrX1wLQhjld9LSo/uMURz7IR95m?=
 =?iso-8859-1?Q?k28eNRwEgVISkN8x2xDLdja4+liAdIX+aSUPF2udpVSzC+L+pGxhvtBbej?=
 =?iso-8859-1?Q?dGw89DhTRZwu37SX95GYrHo/yXVyq63kpXvfCXjQ19BTMGDDDhXsqGIIjB?=
 =?iso-8859-1?Q?xOsZIpM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?J8/iVllj4LvIXnozfZ5vAX9z4q9jg+y8g1a52E8eE7eH2nHCLfuRC5C1WL?=
 =?iso-8859-1?Q?kVZ58gBhP+OMYbEuDyYM9olf36HzUtwwyQAPLI11LB+qLQefGCfltPoDxb?=
 =?iso-8859-1?Q?MeLYgNPjNvLkB7c6DiAZZRedBtV0vuZFAIR5gWK0JPLvh5qlBSrjLMmUq4?=
 =?iso-8859-1?Q?qqfmT1UGcU2GS/O6EJaP6mP1MwAQMRYnaG4gzbf7wokRfQygwdyizIAkTe?=
 =?iso-8859-1?Q?2g50jrCWWi2FBF0uWgYJWhau1X1OjzI2QxwgJzS0QB/49NOS4rfxOr8p/V?=
 =?iso-8859-1?Q?lfw84j4eI/KJnkp9SI4d/bQITweZefVgtHc7liPQz6Z0T8eMdlCM6FGl8Z?=
 =?iso-8859-1?Q?6kjwjOqT/mVlNlHswuoZpagtklAH38i/fWm7FuPvxe/o2oeuWHGBQ7UN3g?=
 =?iso-8859-1?Q?8thr3c9/SHyI1UiAt1EgPQUUgGG9tz7XodvOjnS5jIAr/R5bvjH04/jact?=
 =?iso-8859-1?Q?FV6PcM+UzJFIku1IPBb+yMxMoaopewX2ZomchPHyWLRVib6qrThXbheRl8?=
 =?iso-8859-1?Q?OphILinpCH+6KiM7g3Sj1Z9wCi3DPBx9duLkeaePwULKInz8XTamDEmorD?=
 =?iso-8859-1?Q?0gnyq8Ba0e9UG/+KNko5ofK66j1K2QYK2IQzdtlQpX5lmgZKSIhP9SzzrF?=
 =?iso-8859-1?Q?M3vSxkpWA53nQzmDLohkZcMYA1Pt4IGKYY4znexA58WPu174AGIFmUZUsm?=
 =?iso-8859-1?Q?/Tkmqns3rjOGsCuardpjPkUvB6OT3U6HrT5Q9dDrwb3ZWNOiqnoRIhSLih?=
 =?iso-8859-1?Q?t9hhXqphfqqn+ObwQQCf/lYoxsLvRg2pv4TCdTNoM3Uub/BeO7SORpQu5S?=
 =?iso-8859-1?Q?InH4ORUFk/bh2SGdTyXtUax6fie0pQ/C5i6dm7F5qTYRvtx3TpVkeb26R2?=
 =?iso-8859-1?Q?U++hh/0JsCkLNSw2uJpve++R/Nv/18dPsiSMkJiqWE55BEFcjAzvPCyzmS?=
 =?iso-8859-1?Q?+BcyOfqsDzVdaq4OZ4/91rVsE5VYWJNx6ucvIKZnYgVD69EC1OBzAeXuTQ?=
 =?iso-8859-1?Q?iTYdr4suJDgGD6vdEFOPyEL+mGvbpAmp7om2WogHBeqsV3vOVn1liBOkJC?=
 =?iso-8859-1?Q?l61laaWgRvhYYZWjzO4cvIsLOfz9ggCX3xofY93pSxlmlf0lPw8xJ4XD7G?=
 =?iso-8859-1?Q?8e4Haa+QZhqLZZ4nE5PlxeG0UyRhwzCqyLA1nyurj68dgycKJNUiHY2xqk?=
 =?iso-8859-1?Q?A8WW8n81tZ78KhIwvrFhDToC1hQeaQGa5gaKlOuuViIy2hUY5k/Ej+N/+l?=
 =?iso-8859-1?Q?Cmriy1qe26TK0vuQMTL8SIzmdLb6R2Apfj8nUemw40QJyH676JFt7cXI3S?=
 =?iso-8859-1?Q?Q0rHkPKsHfmDMf+C+Guh5WtE1m93btYLVakxCV8qjy+OKY6z8WqPG+jpvs?=
 =?iso-8859-1?Q?x4RTOPXU4sbMcfJKP3ZvI1YXXVkToB8K+S38UTxIF/xvCGRU7A+46M1g+8?=
 =?iso-8859-1?Q?SJMP/JkZ27VTKpIgBKu8mDM8O6DvFcEBw/OiXd+i8AayGgjD0EJ4YSzBqy?=
 =?iso-8859-1?Q?4W+hNT/ncKA97MGMf0obNV/A19CH9/Lf9TrPmafPq4B2sj2YgCWNrxQ+DH?=
 =?iso-8859-1?Q?Tijy3eCnF1g7YUtSVR3WOB3roHUgvzSy3NbeNXyzIaDnISBMYtKI6bHqRk?=
 =?iso-8859-1?Q?PBvn7lxbAmLcx/PIHLxL4NluAmijXwkXBY0pVg6vzY+F2Q4KXMZoLVwxJh?=
 =?iso-8859-1?Q?yMB8lXIj7ivXfVxTI/WbwtrF89udnoyNztXKiwA7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 548d660c-41d2-4037-707a-08ddf208c17f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 14:29:17.6278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eqBNoA/cBD8DxDyO9dkvwuY9b/CBwMeXGasV00q6v21eCewqh/6USG5rz0lJkv4/S1pMgZu/P7YlSVwZab6yev4L/2mhb/mbQdseew38c70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7209
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
From: Nikula, Jani <jani.nikula@intel.com>=20
Sent: Friday, September 12, 2025 1:56 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; ville.syrjala@linux.inte=
l.com; Manna, Animesh <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vto=
tal
>=20
> On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > There are a couple of modulus operations in the i915 display code with
> > vtotal as the divisor that add vtotal to the dividend.  In modular
> > arithmetic, adding the divisor to the dividend is equivalent to adding
> > zero to the dividend, so this addition can be dropped.
>=20
> The result might become negative with this?
>=20
> BR,
> Jani.
>=20
> >
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm=
/i915/display/intel_dsb.c
> > index dee44d45b668..67315116839b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_atomic_s=
tate *state,
> >  		intel_pre_commit_crtc_state(state, crtc);
> >  	int vtotal =3D dsb_vtotal(state, crtc);
> > =20
> > -	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) %=
 vtotal;
> > +	return (scanline - intel_crtc_scanline_offset(crtc_state)) % vtotal;

intel_crtc_scanline_offset returns -1, 1, or 2.  So the result here could o=
nly be negative if
the value of scanline is less than 2.

> >  }
> > =20
> >  /*
> > @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atomic_state=
 *state,
> >  	 * Waiting for the entire frame doesn't make sense,
> >  	 * (IN=3D=3Ddon't wait, OUT=3Dwait forever).
> >  	 */
> > -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal =3D=3D vtota=
l - 1,
> > +	drm_WARN(crtc->base.dev, (end - start) % vtotal =3D=3D vtotal - 1,

This can only be negative if start is less than end, which doesn't seem pos=
sible.

> >  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=3D%d)\n",
> >  		 crtc->base.base.id, crtc->base.name, dsb->id,
> >  		 start, end, vtotal);
> > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/=
drm/i915/display/intel_vblank.c
> > index c15234c1d96e..bcfca2fcef3c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct intel_c=
rtc *crtc)
> >  	 * See update_scanline_offset() for the details on the
> >  	 * scanline_offset adjustment.
> >  	 */
> > -	return (position + vtotal + crtc->scanline_offset) % vtotal;
> > +	return (position + crtc->scanline_offset) % vtotal;

crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_state).
And position =3D intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDS=
L_LINE_MASK.
Finally, #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
So, unless position =3D 0 on display versions 1 or 2 (where intel_crtc_scan=
line_offset returns -1), this cannot be negative.

...
Wait, if crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_state), =
then why are we recalculating
it in dsb_scanline_to_hw?  That should also probably be fixed, but not in t=
his patch.
-Jonathan Cavitt

> >  }
> > =20
> >  /*
>=20
> --=20
> Jani Nikula, Intel
>=20
