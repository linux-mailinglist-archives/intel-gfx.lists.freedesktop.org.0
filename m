Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98466B1FF24
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 08:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B599110E2E7;
	Mon, 11 Aug 2025 06:16:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SduNrFnx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D2D10E2E0;
 Mon, 11 Aug 2025 06:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754893009; x=1786429009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rfph6fPaON3GK7ag0tEebYijAJcpvr9qoQOjMdKdaSE=;
 b=SduNrFnxulgCdeFSNY/kmGmC1tMU9b+IFlOv6OyB7Ke+/3WOPBnVwz6e
 mvlocDD9/UmJH4z4nP+1WzoMhvSul/ovfbwppfgfAyQh4X8OpNFHYAhSS
 lOpvnE7rKH9zk4LYE1voEog77NQKyCjtXH0lAyieL3wpIg53wb0W9Zf9T
 OUHcIOd7xJmQcYi/eA2BgAUd8s3zJlOfCD5TOKEdTDa0X38twgqm8CM47
 //cMkC2cBwgsA1QAzfx8vlzO66pvjbGYITLErGNQHLbiRx9I+RLZkt9Z8
 dlkdKIMgawNLu+Ex/kjHeK2njxYlilsVeQHsKfnHTzfz2NiEj502MstQ/ A==;
X-CSE-ConnectionGUID: o/7hOnMtTbmGU7plWIHfZA==
X-CSE-MsgGUID: Z3TbO5alQbKg3laaWyJg/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60768207"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60768207"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 23:16:48 -0700
X-CSE-ConnectionGUID: NFPP75+sTECAtjBo7LYuRQ==
X-CSE-MsgGUID: EeiLhvqWQ6qAsQI+ObqPXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="189523941"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2025 23:16:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 23:16:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 10 Aug 2025 23:16:47 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.68)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 10 Aug 2025 23:16:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JGZ4LsgxCtWKzSjPNwxf4HEwbY9njkeEleof9V7q4l3914mqrFv4DHcRjb8+4/nLYnIKl+RH/yiP9vOg3MmkzTqkU6GOjJPpM81KkSIhgquI3D/D6D3aVft51Hgq1RiFeKz11AFV9vaJ8cZPx2BDF0Fp+0Yb/uuUXXy1Pr3fjI4dEUe1lXdJrTkcle7BXIu1mjpz3BlbjXQohJw09RFqfIOmypNi3sbiBMs+9LJr+9Ai43h+9fDjPB6lCLSkYXIet2gOmqIwt47v3H6zD5d4qLCDOZCJbBnfu3xJADQ+mdlvsmaiwpJtArH12vCPX0GokaX94FNTqcwbC0TVcjn2Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J86N0OA65yWK+0xi0Eo5VpfdP4wlZWBOt2zu8q3r0go=;
 b=Qlu3m4ziuA994ubuD+bY7GYCPF+Jl9x7kn31Fw37AACxezXHDNV+6Jlj8j4b/8CYsawAS+GlOmbQITpoDaa3q9fZd+6oWdmoK9FZwm7XONCTr/X4iWuJR9PanzxKcnPLAsbqL6u8a24CN1R97riab+DUm1M+zl0t5+4dZSCnjf9t9ZccMpzGpN9j2zAXQZMlpNnEXXJR29ybpYWAH6+ipKG245yQkI+Bh2qPzgrAQnpn/Ofyoi2F9rrkfAQsVtloPw5dZhF8JKjQRtbfqFWWuYuiQEu6M9Mz3C+H556ruzHdVFjN2VbpSxEihi5cB7MrbBYm/ZjIdqUnaint9PEJ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CY5PR11MB6367.namprd11.prod.outlook.com (2603:10b6:930:39::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 06:16:35 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 06:16:35 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
Thread-Topic: [PATCH 04/12] drm/i915/display: Extract helpers to set
 dsc/scaler prefill latencies
Thread-Index: AQHcB46r4cbtlhqd1k+azHBEHW39O7Rc/tGA
Date: Mon, 11 Aug 2025 06:16:35 +0000
Message-ID: <IA1PR11MB63482583ED9773132E155F73B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CY5PR11MB6367:EE_
x-ms-office365-filtering-correlation-id: e2f621ea-9609-4e87-ce52-08ddd89e9fc9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?KnZeLCqQh2xL/CrSJZ7DWwB57XE53XZHaTkZ9FNEMbSFJab7PJatZkavS3xL?=
 =?us-ascii?Q?6n0Y5D2XYpEiJ+wegj9MmtALDLoBzeNLmeaspiEi6K0naw+8fELjOoAwgJXG?=
 =?us-ascii?Q?tre4RxLBGW5H9Zk+212BqsXtrVzVYA08MEBU0XdZXjGy8RINCwRGVxIkPn9S?=
 =?us-ascii?Q?+Jl9asHjcIdbDFgj7pO+vJzzU7WBQk3Ndt/1BxifTRBRTojB3XB63nKqBgAr?=
 =?us-ascii?Q?UnQVqos/L0Ami6hb55BCzvzGpqKPdJz/o1mTX88NGokdRbxoWYqAAepH1OSg?=
 =?us-ascii?Q?8YVbjnvwdR0LuC7OW/stBq8e9PGhZNd7dso5vISQjGnDYwDRbLqAwpzFSQLi?=
 =?us-ascii?Q?5+4942wJTsmb2SA0nx7+UeQ2its7qez2BQhzhrenVKfcVwJ1m5D4qgiHviRO?=
 =?us-ascii?Q?1WQxn+NvY0HkdLU2EyjqkWmJFU/LcLU5iescUgjvROyU1WOHJiR7uf4zKm5L?=
 =?us-ascii?Q?sUgUDm4tA6JbMNBlvbdahcEAG5o6/ltOBU1vNPPIa3B9kDTpgx1mJ74x3fOs?=
 =?us-ascii?Q?r4L06oSzBmgXxNjhcUOxs7okDNTIw609J5ZeoYouSy1HGrSifLu33zotcgVJ?=
 =?us-ascii?Q?jCl/LIiV1ZncEqiuuuIHeFadfDPk0kHiQbyzOa4EtTw5vUsxmW/brrfhalSv?=
 =?us-ascii?Q?SprAODmTMfKS0wCxRwhzGcOKLwUsaCWfMzFEn+/m/4pLce7mkKL9eTMbHKLj?=
 =?us-ascii?Q?HggfLbPI41IVFp9NqGSetw4A0JR5bcrD6UfydV6OgwPPuhNHGqapzVjXfja+?=
 =?us-ascii?Q?312Nr+Ol9dSwIUt3yxb/rOCvGtMkFOF8rYFW0zehmTKy74tP8NTXFC/1Cj+v?=
 =?us-ascii?Q?4z/Mns+vmvPD0ODxohwEKn06/Hmt7RIlzpW0YLBl4Kb3wDBxVMTpjbHiHL8p?=
 =?us-ascii?Q?2OfF2QMpsHbXrDbUkW8z/KVagpH0XHhalw64aypjSQA0OjNR2C7BbO1PxYa1?=
 =?us-ascii?Q?3eTtXincC6h7gIzygsazuijKeM5QfFWC3lUJ1Bi8KLPJkvC6/jhZ0DB+7NkR?=
 =?us-ascii?Q?sZymAZJvEyfTuaSzfXkUHQ6rPn8dY9IcJ+VI7jtCz9oXOHYspD5hlVFGtItu?=
 =?us-ascii?Q?dm71Mop6FFfSWe874h1uidniLgmY++Q5jndFxdAjHhmIO8b/o+Wx50xrnsU5?=
 =?us-ascii?Q?Wg3xFZYFwq3NvS7f4oEW6BVbDuc/uY/kXyN+9uegEBE3avKRfJtvmhHMK3C5?=
 =?us-ascii?Q?TFmf2cGQ7UK6HfTFzkHSxT+/ZY/Bd26vL+CllRDZ3Fr6AtTd1SOmEo2nGF67?=
 =?us-ascii?Q?4V7xL7PgN+G9i/B1AkADrpPUgnp3lOd+TrLJmq3dEYJBS3wAVVSMEZ6wTwzf?=
 =?us-ascii?Q?kT+3O+KODcsWpa70peyjdLTauIB4nv4ZAxsRyL83jTR+csPx3zCVwhEVkVGV?=
 =?us-ascii?Q?qGa/qlw3zmu7CKRTv7ZipiZio2FdM+BSgKkQ0F8aUbcDeH2GVhFVPvQJ/0cn?=
 =?us-ascii?Q?7aNUVI944o6e+sotLb6u3J4W/xDqxGHMObPA2rAwtTSnBIitdcYFng=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jO+KoK2pxJQtSdgaeTec3wLIcWXpLxJUVQeAzX4Udy/1bFGZIqaPh1A8NCja?=
 =?us-ascii?Q?vuM+WP/HBLSVK+PLjBJl89r/uwrKLpFZCqslJuh/djWxuKkMSSkX3MBxDc04?=
 =?us-ascii?Q?f2XM92xKHRIciI1/WjGqFblF7DlHxgt4f2eaAuXsZpLsWcfPI1yQS2lb0bR1?=
 =?us-ascii?Q?Dxz9SpH64SK8mOcl1CH/UBJ9o/d8Pjk/hiS3/ij+HT5X/baR06BOo7aohtiE?=
 =?us-ascii?Q?B5n0ERmsRWntN3r5mrlw5nMdYgVkdxkCM8I5XfvWtKfnQWmruPsyjBW3kFif?=
 =?us-ascii?Q?JZ4BWkpuNySqx11/iwm/LhBzzwhgyzNf5blzZen+b1FaAwNHAxXeI2VhBcHi?=
 =?us-ascii?Q?ipq28sbhsfIjhxAaS3nvP/l7yp6kO6/znx7qO3vQ3X9cnRvZfST3r5oTZgdB?=
 =?us-ascii?Q?Byx8vPYLPOvnEMx826JD/YbPgNZvfQ9CC7S1zRelr3AhMJg0Xl6R27d+mJxW?=
 =?us-ascii?Q?CjbV1nWYP/dhb/KNtM4xUg3vu4c4kvrMlIvAvDvopRM1XkXjAVkv/sk5noVW?=
 =?us-ascii?Q?sdcm+8WbdcqzxP85G6OuS+Hmg8IegLg8tKwEmRc2McrPolYSvdaFLzf6Hk6I?=
 =?us-ascii?Q?94kbnXGjaRHvl3ZDHoJs2pCZdVefQO7XTq6HaYYjFeyFSMWVj/UhH0J+8l+Y?=
 =?us-ascii?Q?L+7iMh8un+NKEDjofPDElMmQQLCkNY2xwBC2GTIyUeBRD/wFYl24by6hTzhr?=
 =?us-ascii?Q?UYjHZCN0CX6KMDK2bFdqSjLZG2BU+PL8drLsB3XZNQDXa4hOTZ0omn2X707X?=
 =?us-ascii?Q?Wj843z1f8SMk6BWnmSpLn88ER03ApEILWeYyZq1AnsSyNSBb3zyZVPpSgGf7?=
 =?us-ascii?Q?VcCLM+zb5X1PC5C9u4Vt6jHJZckHlMM09PVMggiM0epcCRc8SWMgov1wnGko?=
 =?us-ascii?Q?n+mo0Y0uRqYFvCdxZjJTCvA5IIb7nXmc+N+rAhJUWYMSQcbTuulmJlxMpHwo?=
 =?us-ascii?Q?rJ699DzBt2Yx+0TuMA7J+71ScjpTA4mHe+7EsWrZCr1VaIADb8F1OqB9uiKO?=
 =?us-ascii?Q?x8Wpf3kP7/7UDd37n1nnM8/rNajRdnzpl6aOiYIfW5p7CdzUoQXpmk1dQfgD?=
 =?us-ascii?Q?iNdKieZ2+lTdcHw19owYB5/yE2fOEfTLeIV43j0VMtTiyXC6KUl3KLyBJUHe?=
 =?us-ascii?Q?o2wXLC0QoCPVB4LDRD0+c9qYPTzFjffSjq4Kfp1WSX4PyPP/qBl8xcBHBkHd?=
 =?us-ascii?Q?OgVfkMCjG+EwqWmnPd/8TnlGWBmVtBaJCv3qK7afhexnmqpINpseKVr4YKxA?=
 =?us-ascii?Q?maB74uTezhSyF6y0emybGEUm+EofJksGXo+Khxy5nzJ21KGyNrTHGMD6v0tK?=
 =?us-ascii?Q?y9aByHAtst6AZCVUir5cbMmkGVuYwZr/cUdW/6Hq5KF6jZqQAHs5QIpj524Z?=
 =?us-ascii?Q?G3AV0Pkfk0un1Yuog5qtz6ncBzyZJx0qE1iEi/WgJwJOw2tTMkLxcCoUaTmY?=
 =?us-ascii?Q?qljN9Uu8H0IOE8lWGJcuehlw4DVIkTmjnNgirgil8/a/RmsWxeD9ti6pO3HF?=
 =?us-ascii?Q?XSKZwELKs7tjmOUA2Br5ImCubmEi6zw1dRaqg985qiXk4zWPpbZY/Ljp1VmG?=
 =?us-ascii?Q?tFZjaEUB2tCFmaB71xHYywQjBTBL2LjLPUYKR1MsFLLKd5xmsHdGNPM0/rJU?=
 =?us-ascii?Q?Xurgu6vrSTB5RbrlZ2gfHF0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2f621ea-9609-4e87-ce52-08ddd89e9fc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 06:16:35.3674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9+HJ1bSNFqPLbnMsPsh1ZL9OeGwtL+bCRhrSkiI7XpUnBxJpvIvDqCxYHpcnLSM9dBSMfRD0vtS/fTwjxD9h92Ai8wHCZ4Bv8x5Y7NOwuMyZVuunMfeEmBueV0djOfpF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6367
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scale=
r
> prefill latencies
>=20
> Currently dsc/scaler prefill latencies are handled during watermark
> calculations. With the optimized guardband, we need to compute the latenc=
ies
> to find the minimum guardband that works for most cases.
> Extract the helpers to compute these latencies, so that they can be used =
while
> computing vrr guardband.
>=20
> While at it, put declarations in reverse xmas tree order for better redab=
ility.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++++++++
> drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
> drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
>  3 files changed, 63 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c1a3a95c65f0..af4d54672d0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8328,3 +8328,37 @@ bool intel_scanout_needs_vtd_wa(struct
> intel_display *display)
>=20
>  	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);  }
> +
> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscal=
e, u64
> vscale,
> +					 int chroma_downscaling_factor,
> +					 int cdclk_prefill_adjustment,
> +					 int linetime)
> +{
> +	int scaler_prefill_latency;
> +
> +	scaler_prefill_latency =3D 4 * linetime;
> +	if (num_scaler_users > 1)
> +		scaler_prefill_latency +=3D DIV_ROUND_UP_ULL((4 * linetime *
> hscale * vscale *
> +
> chroma_downscaling_factor), 1000000);
> +
> +	scaler_prefill_latency *=3D cdclk_prefill_adjustment;
> +
> +	return scaler_prefill_latency;
> +}
> +
> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale,=
 u64
> *vscale,
> +				      int chroma_downscaling_factor,
> +				      int cdclk_prefill_adjustment,
> +				      int linetime)
> +{
> +	int dsc_prefill_latency;
> +
> +	dsc_prefill_latency =3D DIV_ROUND_UP(15 * linetime *
> +chroma_downscaling_factor, 10);
> +
> +	for (int i =3D 0; i < num_scaler_users; i++)
> +		dsc_prefill_latency =3D DIV_ROUND_UP_ULL(dsc_prefill_latency
> * hscale[i] * vscale[i],
> +						       1000000);
> +	dsc_prefill_latency *=3D cdclk_prefill_adjustment;
> +
> +	return dsc_prefill_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 37e2ab301a80..8d094b0a8c6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display *display=
,
> enum port port);
>=20
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscal=
e, u64
> vscale,
> +					 int chroma_downscaling_factor,
> +					 int cdclk_prefill_adjustment,
> +					 int linetime);
> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale,=
 u64
> *vscale,
> +				      int chroma_downscaling_factor,
> +				      int cdclk_prefill_adjustment,
> +				      int linetime);
>=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 97b42bbf5642..4474f987de06 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2179,11 +2179,12 @@ cdclk_prefill_adjustment(const struct
> intel_crtc_state *crtc_state)  static int  dsc_prefill_latency(const stru=
ct
> intel_crtc_state *crtc_state, int linetime)  {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> +skl_scaler_chroma_downscale_factor(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	const struct intel_crtc_scaler_state *scaler_state =3D
> -					&crtc_state->scaler_state;
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> -	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>  	u32 dsc_prefill_latency =3D 0;
>=20
>  	if (!crtc_state->dsc.compression_enable || @@ -2191,18 +2192,16
> @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int lin=
etime)
>  	    num_scaler_users > crtc->num_scalers)
>  		return dsc_prefill_latency;
>=20
> -	dsc_prefill_latency =3D DIV_ROUND_UP(15 * linetime *
> chroma_downscaling_factor, 10);
> -
>  	for (int i =3D 0; i < num_scaler_users; i++) {
> -		u64 hscale_k, vscale_k;
> -
> -		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> -		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale, 1000) >> 16);
> -		dsc_prefill_latency =3D DIV_ROUND_UP_ULL(dsc_prefill_latency
> * hscale_k * vscale_k,
> -						       1000000);
> +		hscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale,
> +1000) >> 16);
>  	}
>=20
> -	dsc_prefill_latency *=3D cdclk_prefill_adjustment(crtc_state);
> +	dsc_prefill_latency =3D
> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						  chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						  linetime);
>=20
>  	return dsc_prefill_latency;
>  }
> @@ -2210,28 +2209,25 @@ dsc_prefill_latency(const struct intel_crtc_state
> *crtc_state, int linetime)  static int  scaler_prefill_latency(const stru=
ct
> intel_crtc_state *crtc_state, int linetime)  {
> -	const struct intel_crtc_scaler_state *scaler_state =3D
> -					&crtc_state->scaler_state;
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> +skl_scaler_chroma_downscale_factor(crtc_state);
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k =3D 1000, vscale_k =3D 1000;

This could be initialized to 0 ?

As further going, you are already assigning to max 1000 when even 1 scaler =
is being used, also  intel_display_scaler_prefill_latency we are again redu=
ndantly check for number scaler presence=20

this could be avoided if initialised to 0 and assigning to max when scaler =
users presence is found ?

also in=20
>  	int scaler_prefill_latency =3D 0;
>=20
>  	if (!num_scaler_users)
>  		return scaler_prefill_latency;
>=20
> -	scaler_prefill_latency =3D 4 * linetime;
> -
>  	if (num_scaler_users > 1) {
> -		u64 hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> -		u64 vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> -		int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> -		int latency;
> -
> -		latency =3D DIV_ROUND_UP_ULL((4 * linetime * hscale_k *
> vscale_k *
> -					    chroma_downscaling_factor),
> 1000000);
> -		scaler_prefill_latency +=3D latency;
> +		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> +		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale,
> +1000) >> 16);
>  	}
>=20
> -	scaler_prefill_latency *=3D cdclk_prefill_adjustment(crtc_state);
> +	scaler_prefill_latency =3D
> +		intel_display_scaler_prefill_latency(num_scaler_users,
> hscale_k, vscale_k,
> +
> chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						     linetime);
>=20
>  	return scaler_prefill_latency;
>  }
> --
> 2.45.2

