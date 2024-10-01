Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DFE98C116
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 17:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23B210E65E;
	Tue,  1 Oct 2024 15:07:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iXoIZB0o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133BC10E309
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 15:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727795237; x=1759331237;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9LvwVu91lD8chtiXZX2ak/6LxVMvHfd8PP1YU6cxlvw=;
 b=iXoIZB0oxKvc52CHAMiiPywlHLLMLRiIUy+mkpRtCjmapINyggGEG8yr
 KCu1xC0i8weR05h1x/Fga54FNp0A9EExXHxc6ImRRI21HrgwW5LwgsF/t
 rZYdiD9zKxsMtAlTnlcgsLS983MuIL4fT9s9VAnLcsvgev3JnN8Fej0eK
 XAzB53YCge0Ac7V9x/MzR3tQGHWNw8AkMWUddhwJO0OGllOdyWODjRjl5
 P3FXD/keOA1uQ1qugYqR0xepuTwk1ZbnpEWsUhPCc6UpGFoiOZV8XZW/g
 jKzQL/ft/oHr8PInp/mrjWot3iEJIo3zGfQho0wvsHwLmnZ0nw2E/Nf9V A==;
X-CSE-ConnectionGUID: q30tB/hzRm6mYMGpt9xyWQ==
X-CSE-MsgGUID: CNIrZrZaQLajsVD6PGgyNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27068097"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="27068097"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 08:07:07 -0700
X-CSE-ConnectionGUID: Mj5SQhHBRLmB/3e9csv2tA==
X-CSE-MsgGUID: ECw4SSsSS8Cd7FVnbg6snw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="74491122"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2024 08:07:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 08:07:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 1 Oct 2024 08:07:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 1 Oct 2024 08:07:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 1 Oct 2024 08:07:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AbJxxpj6HfcNWWeWTGT+G0NGKznkcg9TqUw/IuKyhW4+Uz4G6srywbGRqKVGQpV7NgRcdxXfZsR4u1AJUUUGAK+tkijnGXb+d1+g62DpBoGC3fMvUGZss2sN9gOJOIuGokhjCY6fDlS6uX6+DHi9I7aLW9ACJRZjv0I5tYEiaaJqHM43L/iCABrDJ+Oxe+JJUnBPwnDjpJjQHqV/RUBoO2Maik0UUCVVsViMtR7IN4ZzjrgZM/1z3T3mDj+Hlf/4hOVGWYQ5/5xOPX6bldr5k0Ot/giduBW7DCPMB0QMXvmVrjATWRng/YhVaLwOK1cM9beiIrEXlAyR17XxHtSy2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TyscldJEYmoN5SnfB3vAr53f7jGuM+P2Mf1wT8PAP9U=;
 b=aa5nCA5L4F9njDHgLYwNZkxS1oK4RRkg1YS0NNPKoTzhWqvqSna1RIGI0Z0kuHAgcTjxV73fJAH9P3b6pAlyB0Le2IxhVS/ZO6pFSt1c4sbXzEk3FOE5/rCSKYM4SFFxUIzw8aOiW+9NaVGaI3QJtAug8G0Prg8PhXN8RDDWQIosuOKOfn/2WpeD7wWs02QPtrH9UPR7VBLAq93VIXVylD7HTs23duWFkLbCp5e50eA4HxgQBDPsycMoglOYVFwhsrJAIZFNlMqYuS+eFuf1XcHEA7qYO0wUOa0TRPtlSwiUHMHNaSohwTjfc3F9U0tlqdPNkCg0zYGLkxImH8lIaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Tue, 1 Oct
 2024 15:07:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 15:07:02 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Topic: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround
 with VRR
Thread-Index: AQHbFAhAu3S1Apx5hE23KlUwPqwWALJx7yog
Date: Tue, 1 Oct 2024 15:07:02 +0000
Message-ID: <CH0PR11MB5444D1074EB78174DA2AF63DE5772@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241001134703.1128487-4-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH7PR11MB6332:EE_
x-ms-office365-filtering-correlation-id: 0505a36d-00e9-4078-c5dd-08dce22ab4c3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VVu//jE9K3ftNBquMSItAmAbWrA2lebrMjuHdz57MWPMtQ5zKA9y8YVV1GAp?=
 =?us-ascii?Q?7UlLCB5CrjDP+u8O6MtvXHYvn8cmH3GKA4ArNcgKjdorYIsnHxXpql3GjVI5?=
 =?us-ascii?Q?tsk1immWnKMf99/xLagwMXeQwv4eTnFvHwVxd4aTwCfx+Y2ie4twVQQK/PPe?=
 =?us-ascii?Q?vHMt88YoV/dsW3ViqSl1+T5acnKFm1j2dNWKp+2MQdMebFvy74yZlazp8asb?=
 =?us-ascii?Q?9MtkwTMjTJ5ALPCOIM2VASiP8R2k2Tr3VN+yeGdPCt0wCZrSVKsb+KSqB5P0?=
 =?us-ascii?Q?8rYQWU+TGxPgONT0upx/7wqrBILg+ejKpHtqM69qfxEkvcRuL5LXw7C6fusl?=
 =?us-ascii?Q?AqCU0ZvzKZ93BEhBzOWoKTL9qXJDxuEQ8NM3yciiwcCVsjj8C0erUD6/yrJ4?=
 =?us-ascii?Q?u04mPoOyJaHVkRivr5aIdqbu9MOyOLlDdZpRndcVNY0dsjZquNQLnGlpXkLS?=
 =?us-ascii?Q?NgmaM4spUKssAluEMCAj176aGUgq4kemc602p72El2daoogR0l+EulRD/Y8Q?=
 =?us-ascii?Q?nvwMwuxzgF7nQvfjEpjM2+4u33CNGLP1bGnThl7mwQ2F11BEl44QbHyL9sL5?=
 =?us-ascii?Q?zFPoig+yg5Rh5oDalYlynUqz39Eh2Om1CEyAAigSY4e8OftwGoQlkVStceyt?=
 =?us-ascii?Q?nReMvL+n0NVY//jshLzWh5WL7ZieDih9PoZX156TQMYAPxm7IWPUGy/IkBKJ?=
 =?us-ascii?Q?iNvElpbUsqkJ1odNApQoKN5Oag0MGAnjRd2+iKeuj6Xf/AGZ9sl38ZV31vR0?=
 =?us-ascii?Q?ADVlCb3N6ELTB+tiixoM50mg3rtte/cjqSSYY5o2++oXBKm8ORx6q9Jb5q9j?=
 =?us-ascii?Q?A7w5ENA6EBqaNrf30/hSISrhpexj73gbhcdmir3liR2rnfZnvuTPmPegngWa?=
 =?us-ascii?Q?nT7RB1vCEYXbINh1oiZFcxG+iXYGM5NnJmiSTZnBYiBcRSO/UpFmPC+0XFby?=
 =?us-ascii?Q?7LSrnWaB44yaYZTL6EXW0EieWJLiX1MydIS4MRltMChDzmNvjngdwHrgog2j?=
 =?us-ascii?Q?NsIoN3FYtq5+2APj0+m1gX8WzjTcivWsxg41vXp+Z5cFDSoXUxkKF7qJrTus?=
 =?us-ascii?Q?7UwwQaZz0zod+uSKnZnc5fzNcimSbyZxRf843sHNkz1eBgvDGM5+9yFht9yH?=
 =?us-ascii?Q?Fpvq+moYVDRyHmm6MbpTqPSYKBZCkySw6ijdhFliN1Ax5hr/W0yX7Wl8KJFm?=
 =?us-ascii?Q?hXYIwjbXu7JdzoFULTYB0tTY/BkBqEHIrZa6nFNB8ZESk5JwQSJkAEbEiUgU?=
 =?us-ascii?Q?xOeWn9D2zZjLpnrKOliEHcN149hY7DZQKM5NSc1KOow+r06DetiP8Cltm971?=
 =?us-ascii?Q?aOfupAqLNhZa8SEUn+p7CgCQfAODcqcdSmtiZBOln5bgCw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?slKZocLmEJQRcCztcrbwimHNwWLZscA/eLvqrJ7l2KRTGMVs2ruN9baECwDF?=
 =?us-ascii?Q?tkUqPXOcz2PXRNWyiaU7a4rpEWw2HLmZ/EvIuCRsx3dKsFTYvDT4Ms/LKenS?=
 =?us-ascii?Q?t3VpvVtXxKYCgcUlSLbHSEtZtKZoCJWr/RnknHYsEWJkMTPNnjMbRoyMM8vn?=
 =?us-ascii?Q?cLMT85oaFjn6Zgn3YOxhFypbL9RSv03zZgv0eH3gY/E3g58GKb84kO6Cyc4V?=
 =?us-ascii?Q?86aCK3gMyvpmMOd7DYXcVcXI0nvSI5gVgm4Vf3YnKCpKdiyI8HHqFz0UFRhY?=
 =?us-ascii?Q?eA+yhzYWITHga2pr7ggqDgK2CagvXnNb8ptjkH+vJpcKOisLfoZnFSXHVa9A?=
 =?us-ascii?Q?FjxZRtiCkF5bHCu6RdUvIxijrXq8DvQpz1ukJn0AEjGVmvpNW4Yg0jRkUFdH?=
 =?us-ascii?Q?4moQxS4vIgQACCSZTE4R9doOl+BsS6PPaiLYDEnVFBWsgMFXruxUeiiBkXTp?=
 =?us-ascii?Q?PQ/cfOFQ5kuueH2QcRnyyrcXgk32LV6IOwacdKhmhRUoJEA+Chv563Bhf4yC?=
 =?us-ascii?Q?o0UFEMHruhGpcaP0nXgLJZVrLUhaLDa1bTZ8m76Noh8fKV1+wCkJ2a3eTAZ6?=
 =?us-ascii?Q?koy7uycvkdj8jZyMp4MuJ75uQzOII/jg7KB0Qd6/HMhU33VnwiHTDtZ5HZwf?=
 =?us-ascii?Q?yxDwJW86cKUEdcuTRbiv0kDDvz9iUgwYW9mbddK68Wz8HNbvWhDiZNU5nAVy?=
 =?us-ascii?Q?u3yO4XVjvt5KcKfRZZl9un438VzvzebV1HRhMG3gIoC8VT3s7ZZut4adp9TZ?=
 =?us-ascii?Q?RlC4NyivcjAedhVa56HT3uh5n5ffMWpccWU3ZDoPepSWwmPHSs7/l+ToeARI?=
 =?us-ascii?Q?GkZBN1/7lm6vAVHKeySyZepc6hTyfM+jXgpSN3WSEMmMco+JfZ+vc9n+PorJ?=
 =?us-ascii?Q?g9hOybxXoVjtjvwU68uFKtPuHfjKg2krkPRAVgqoOCqI+yzo2E+GNqnT4QBR?=
 =?us-ascii?Q?KNZoLYtdO4wMmDV2VQYBoQ3mL/kkCJmbmUZ3vDiYG3uJ2S97k2XtP656lQMN?=
 =?us-ascii?Q?XctDUYX33xOBr4If9TPTHh6NE8D8/K9aAaVMtm0JTdSaEB5rBqQOQeBqTzqK?=
 =?us-ascii?Q?2bbwE8qP5NWnbmPwQyBZea7I6Py2b8RN0UZAiHca1dRVLCN02xBZvpdmlrgH?=
 =?us-ascii?Q?Rxd+qTc22qbkOS4MfzOUm3ZthTAMySql+AgnGNXAvQDnzzGqbfgrcYLcj1Q4?=
 =?us-ascii?Q?JJY+1Bq3PtzxXKRAunpmb2X6Qqr6erx6rNCTix4JAGb5I7+8oTIKs/Mi+UbC?=
 =?us-ascii?Q?bCf9nLNs+pvWTU0DsPkpf36fSgJHcYncZkT5fzMIaBVNa+fX97TMy9imiX26?=
 =?us-ascii?Q?o9BQf6l8GErbSWGR0uLPmxnn5OZkWJ2l56EZ5of12/BHk8rnGynz2I/AJixD?=
 =?us-ascii?Q?zmd90ddniHHqfE4irfpDCd1BdoPdSkhPHacJII1nokIMcbUNnwVnGanhHiIO?=
 =?us-ascii?Q?YLFVTfSm65GK8XwhythKutnV+2VryCDCNvolhoYZQBpkou8U8UHUBdm2/Oxa?=
 =?us-ascii?Q?8TJx/gX2+q7RrF3t2on0SrTG/KrIvGlt9KWbFc+oXY3HX8BeXUY3NEuksGY6?=
 =?us-ascii?Q?rtS6Q4OK03GcEFjrQb1Th4bOEPbZ2Fo4cdxdGqp0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0505a36d-00e9-4078-c5dd-08dce22ab4c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2024 15:07:02.8850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y8Gro6PF8CDp2EAiZjPw+RydTs1Z7c0e0xLULjLNR7K7F1Osucz0PEewALabMT8C2wYNbefmOGJkWLqwg4jsUmvWLp6m/AHCF6WUcPiO31g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mitu=
l Golani
Sent: Tuesday, October 1, 2024 6:47 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>; Syrjala, Ville <ville.syrjala@int=
el.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma <uma.=
shankar@intel.com>
Subject: [PATCH v13 3/3] drm/i915/panelreplay: Panel replay workaround with=
 VRR
>=20
> From: Animesh Manna <animesh.manna@intel.com>
>=20
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> The same is applicable for PSR1/PSR2 as well.
>=20
> HSD: 14015406119
>=20
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
> v6: Restrict DISPLAY_VER till 14. [Mitul]
> v7:
> - Corrected code-comment. [Mitul]
> - dev_priv local variable removed. [Jani]
> v8: Introduce late_compute_config() which will take care late
> vblank-delay adjustment. [Ville]
> v9: Implementation simplified and split into multiple patches.
> v10:
> - Split vrr changes and use struct intel_display in DISPLAY_VER(). [Ankit=
]
> - Use for_each_new_intel_connector_in_state(). [Jani]
> v11: Remove loop and use flipline instead of vrr.enable flag. [Ville]
> v12:
> - Use intel_Vrr_possible helper.
> - Correct flag check for flipline.
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

I left some notes below, but nothing blocking, so:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c59d7bffbf57..a8f846b654e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2573,6 +2573,8 @@ static int intel_crtc_compute_config(struct intel_a=
tomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
> =20
> +	intel_crtc_adjust_vblank_delay(crtc_state);


If the purpose of adjusting the vblank delay is for workaround 14015401596,
we might want to consider refactoring this into two steps.  Specifically, w=
e would
first separately check if the workaround is needed:

"""
/*
 * wa_14015401596 for display versions 13, 14.
 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR=
.
 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by subtracting
 * crtc_vdisplay from crtc_vblank_start, so this workaround is needed when
 * both are equal.
 */
static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state *crtc_s=
tate)
{
	struct intel_display *display =3D to_intel_display(crtc_state);
	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mode;

	return (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
		adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode->crtc_vdisplay &&
		IS_DISPLAY_VER(display, 13, 14));
}
"""

Then, here, instead of calling intel_crtc_adjust_vblank_delay, we would do =
this:

"""
	if (intel_crtc_needs_wa_14015401596(crtc_state)) {
		struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mode;
		adjusted_mode->crtc_vblank_start +=3D 1;
	}
"""

I don't think this refactor is strictly necessary, though, so feel free to =
ignore this.


> +
>  	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
>  		return ret;
> @@ -3985,6 +3987,25 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_=
state *crtc_state)
>  	return true;
>  }
> =20
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with=
 VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting


s/substracting/subtracting


> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_st=
art
> +	 * by 1 if both are equal.
> +	 */
> +	if (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode->crtc_vdispla=
y &&
> +	    IS_DISPLAY_VER(display, 13, 14))
> +		adjusted_mode->crtc_vblank_start +=3D 1;
> +}
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 1f0fed5ea7bc..e6bd03ef104d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -446,6 +446,7 @@ u8 _intel_modeset_primary_pipes(const struct intel_cr=
tc_state *crtc_state);
>  u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_st=
ate);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crt=
c_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state)=
;


You may want to make this a static function in intel_display.c.  Doing so w=
ould eliminate the need for
the added function declaration in intel_display.h.  The only caveat is that=
 you would need to move the
current definition of this function in intel_display.c from where it is now=
 to above
intel_crtc_compute_config if you wanted to go that route.
-Jonathan Cavitt


>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_co=
nfig,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> --=20
> 2.46.0
>=20
>=20
