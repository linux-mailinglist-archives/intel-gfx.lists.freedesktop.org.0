Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E6jAk1unWk9QAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 10:24:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51484184844
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 10:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9373810E1AE;
	Tue, 24 Feb 2026 09:24:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CLqIMp9G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A59310E1AE;
 Tue, 24 Feb 2026 09:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771925066; x=1803461066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dDXPjZJvUmlqoMs27XqM9q6KzAj8XqW4Yb3t/v6u2K0=;
 b=CLqIMp9GlgvtbuNVsJDh1Sd7nlLNV/R5NS4RiUWz1IkiMoZGu/+6gyYy
 9iebmAZV926XHo7i5RVHQV+gNqYcZvt3teDvLN1shLpLA49qZOlOFmdrM
 eEE3XQX5AIn+FCL56xoW911wkvpfwxikma94OvwmA93cWCFMZl0hQfprq
 GDH3h0uTG/HjYl9L3/iw0/hBkKyDSGu5buj4Y5ni3miNaUHl6/DJ/OIby
 qeTmtuOfr9ENOkheo3aomchd8hts2BvFQ0IEBBcoUNFKpLPMowCloazym
 g6gSU9cGBsWILZVvocuWNWhC69likZfUEgpIj4clBCfTOObMrxK4voAuZ w==;
X-CSE-ConnectionGUID: GGM0PnGMTYOvh72Qq6Sr8w==
X-CSE-MsgGUID: tBbegVQ4SEiRAF+lveQ8tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90344457"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90344457"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 01:24:24 -0800
X-CSE-ConnectionGUID: /kh7GE9LT8SIlzyXN5n0Wg==
X-CSE-MsgGUID: r35GYFkASN249sW2v13c2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="253578083"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 01:24:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 01:24:22 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 01:24:22 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 01:24:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RRMOR+ACWkUWSEzD/6KLKZz+zx+CCvfT15LARUMhK2LLs61wsD5K0vsmOGjys2GpwUh5fTQdcKEzhvAV5HJOr5Oc7SuRDhhlQ3GLccdJCQ9PUgm7ZA6DcdTOM5C7TuqTQuNAzbUIuF8gdd85mI2iooOD7yiMZgM3FqPNhqpEoSwQL793AAt4aly1Y+VUFX6cZmaavX9jhbe5euJMW84YhXjrPR5dfb2CMcfC3g08v/d0AWx9m2vNakr30PlsuHKDSqqqHMlIaVYtkI6mWcqXHzUGp2CjDmOmH0wrSwaAnRD2XWNjskPKPC97Xn32chGsZ9xkAiEd4rARW9Zdm+uMJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6ONzoAxGHif24mqrkIGShAvR9XoBmA/40Ar/JYME8k=;
 b=vLc3M8GDVBDowh3lyM3kzYsoIgN1Nm8OTGfiwMR6Hkcum2ZZVzWGA3oTl8/gZPeu4/ijPsrhIQNZ04LbqSoZ+PgChcBjjndg+4+aEDC+9YxYjwRgGHhXaLFoTqddPwwhiv6aLFf+TXOIPIpxy3s+Yl817s9PPkSovt1lbgoX4Q9MhUclNjxByfWbfVgwG3lELN5DFiIrcUDqQ3LNboF6idxlOeX1u3U21Ad/M84ph27brn+W4rOe3vAUGn6EZ4tnMPRyelURPs3k4MMpAVqSoGG4T0nMMsIw+Rcbj+mwq22ZkCQiJpniNqRA/qdFDag7Xp9PWdqvNCLpRpBL8hdr4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB6671.namprd11.prod.outlook.com (2603:10b6:a03:44b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 09:24:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 09:24:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Golani,
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/display: Enable AS SDP Skip Frames
Thread-Topic: [PATCH] drm/i915/display: Enable AS SDP Skip Frames
Thread-Index: AQHcpQYX0hX6Nx/Ok0G50mdM6fmfabWRgMaAgAARWKA=
Date: Tue, 24 Feb 2026 09:24:19 +0000
Message-ID: <DM4PR11MB63600D612E37051E732A4C0EF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260223210707.1039982-1-uma.shankar@intel.com>
 <aZ1dlZbH0h21YoQs@intel.com>
In-Reply-To: <aZ1dlZbH0h21YoQs@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB6671:EE_
x-ms-office365-filtering-correlation-id: 3a280dd1-23a1-4d86-5fc9-08de73867cdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?JdkYYMtWgM3CJnqwNZxVwW345jvKWGh26QzFOH7H7g2h4CkSh2fRz2NQXi?=
 =?iso-8859-1?Q?RmTcjXi0sQVg0rH/VcM4xbdhSYMMgd0f8XMIXbCpETFR7FVL9Qm+B2PMry?=
 =?iso-8859-1?Q?dfjm3LKe30AjC5vhDyYGs7tUTiTv7/v/UPIsbrOFOF/NOzV2H2QnYou+hF?=
 =?iso-8859-1?Q?YMLwT15MhUAWwsFXGkD7bPZpGLFvfZJQ/QwS8YOoPIRB+QN8ZelxXhLhh5?=
 =?iso-8859-1?Q?KuONYM+aLJHAUZn6GEL/JEW8AW3zii/VR23IYIpNKWOKfEtAT2wtky7Vzg?=
 =?iso-8859-1?Q?TpstP66K68lwsO0HZWiy5ix9z5KzkC7/kirq6wnDIqpx6AmPZHqDRjMJ96?=
 =?iso-8859-1?Q?cp/OgLuEREjfzBs6Tn01nsFLBeBhBlBy0FJ7p22TD1WNKv8i95O8Yt29Kr?=
 =?iso-8859-1?Q?0QAUnaisf+GGb63vqpBD2iDQh124hcUmMyLQkd4vBRfhPm6+b5JflCARgC?=
 =?iso-8859-1?Q?w6ud0FI77hHALBVogtXPdjD+s5JwhkoJVkrf1tNcwsMWXO3azCn1WDvgzw?=
 =?iso-8859-1?Q?4l71UkbpLw+BxpIDk6RR8zkcj1hEQ2Q3sBJU/tCYRVbt1Q+mLCz6v1wWUC?=
 =?iso-8859-1?Q?bPw58z3CeyEq2nUCkXLiYYBuTRpMNb3D59IqJnc2b339TlpKksM+5HBhEq?=
 =?iso-8859-1?Q?3Vs45UP+6iSJ6cLY5Hv2eNbHuW0wBcDprd5cuEE7OFkreFPF4vYvmMZAqt?=
 =?iso-8859-1?Q?sfwSxYmDyBozYd+eZ6v3kQms1jgkzSEecTwSEfAC9U+EcZYw9eegQeh4D2?=
 =?iso-8859-1?Q?SFp6pT4/OvsG4uLoImS+q8DAFaxfpKF8VyZYIJ4q8HW0zwgs0ho6rfIFRR?=
 =?iso-8859-1?Q?hIVlHYSASpHS4tLbH5IkITeG4bMzFNR6rnO1A8nztWv9Kjrhe04c6SyYNj?=
 =?iso-8859-1?Q?6nSiokyQ1nzDs8WOm5wUryWqkebZvxCsyso+YUQcKuGa/8b0dHjDGuOm6c?=
 =?iso-8859-1?Q?fT9yYEFZUvH7jcXn32YHG+kJnpzdleEyRSfmfF/pnesSPEyYTT8xspBESm?=
 =?iso-8859-1?Q?xG/HihPCYgDS0VB34tbWx3/dhkcgW5lBwL9Ot8Mwrbs0YcTgkKKS1dzvjA?=
 =?iso-8859-1?Q?T8sKfbnBqA7D2k2pv3MelTNbT0EqBG4iKVuUn8/wGwS2BAjLhElfMMScbE?=
 =?iso-8859-1?Q?511WQ2oCZXKBv4j/vhDvQw6sZXHN+cT5FmY8mSJMdN7ZJZvH9Ch7O+af1W?=
 =?iso-8859-1?Q?HRN+bOaUxzOugaJ66QTK31NMiYPVcbnNFzKbvwREXFJLLI1Ln5G7rXNUz/?=
 =?iso-8859-1?Q?DTT6D1KS/H08x6pbC1a87vQ47nP23y+Kd0ktBpZO3mDFL+RyvA9wUyA/eT?=
 =?iso-8859-1?Q?PzD4dH0ppJ0UBRFJ/uCgnVRsWmp4kBT1iH1wW4FLq0PjUE9EVRjtHBSX9C?=
 =?iso-8859-1?Q?vygNK913k57LOZecxDBBIDTdZqMIgpknvNHCz2NvViztWCPSpNvSY6QcUV?=
 =?iso-8859-1?Q?kvApAOSZZu9kFfHs1scKMeCbIOttJW8f4ApaNgg6rTccZn7hsJKbDVq7kR?=
 =?iso-8859-1?Q?uM67StZUTDAE+9C8THBU+pIF7LbH69joMRjRmv/yGbcbZw0x9jusWcYoI4?=
 =?iso-8859-1?Q?TmejrTyOHg9LoJjBcUTJVDm/wCEnzIcruG6wteA0/wZTKs3CloKuRA96FF?=
 =?iso-8859-1?Q?RL1tXWVdf3hxBaiJ9Q80YQd6xm1Kok40s9G7u3hkjkdcIlqfmnByv6wGcV?=
 =?iso-8859-1?Q?HW9EzuqY1odqGR+YZds=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zruTzZF3xNiZG0K3kcR4VX3ZJ5eHqQjd2oFiDlQIHFwDtCCsYD0xfRW2o7?=
 =?iso-8859-1?Q?0gpeNkrQxt91QbpD38/ZTGsue4RbBAQjlRqgbxElR3DcmW27MnD+zhKzXn?=
 =?iso-8859-1?Q?dqYExXgEjlyQjPNkkcXb7VwhuTrJNQvBiKbqgyq1ybGkPY3nu1514R+h9w?=
 =?iso-8859-1?Q?eSpMSGUBKyMljS49XO+h+eM3FElrKdbNqZdkejWaZtERRM/W9qQBdfLQHS?=
 =?iso-8859-1?Q?G8rBjbQ8DWZN7F1BxeCKViPsomF04i7stF45pOfBGzV0ftvbLZNEPQisgC?=
 =?iso-8859-1?Q?Jsh3s95lFfF6gHm1+mJDIY+NAqj/h61WAfAB1AB4wdMPRPkIGn9bDDWnb+?=
 =?iso-8859-1?Q?XD5m2AVsUQNDkv6iYqjc5aFfFf65gMcg31o4s6iSo9e8CEvz/dX6uzTgsr?=
 =?iso-8859-1?Q?+5kbjka+9HgXMnfwQZmM1pl9Bbd8QTPmpr8XA0dV8X38zPSPI12oNQRgqr?=
 =?iso-8859-1?Q?FJiAPNeWfpAPILnuk0925b5ExVjil4Kj7vmp+TLW/fLkB9dV5qJDkAp0GA?=
 =?iso-8859-1?Q?LKigMCqNSnThL07fVnoDrC5hLm687aaepNxFilD5Jie4RBjMVEMCzpNyub?=
 =?iso-8859-1?Q?/ZC2ONyDPE9iMXq3W0vF5cFVSyJXihioX9Mee5SMD8iHLhFGgq0cnJJBtm?=
 =?iso-8859-1?Q?IzLgb3sz1sfOMF0jKTj1QflNBCNyXvdCkQ4iPrfW/7ugyEuAjRgOUmmuVW?=
 =?iso-8859-1?Q?wJV6WVd1NLLtt7cDc2S/q6iAND2oz71OlLcwdJQ39SzMOMrzw4buE3It9O?=
 =?iso-8859-1?Q?cWTornWFv6wfjWEHygUhQ943Kr+ifEfGkThcgncgC5cDBahskF3mfZUl0l?=
 =?iso-8859-1?Q?aXf10qozBhzmYpSBVO2DA0+FUgeqLDZKwHCX54FRFmb9ax48i8T5OvIzZW?=
 =?iso-8859-1?Q?dUC4p6DnrxMP738x2RsQXWthFy7I/+GasSm5NoBexzrlzUH+PQlQ8kPhmw?=
 =?iso-8859-1?Q?QGi25FHTPKgQgaaddiwnDoZqh1e7pl4d7noquARQVpr0ZnEH7E9Nv+l2cZ?=
 =?iso-8859-1?Q?wkNAQEwlkHrxYXT4Onwms9P2ddzAVplTBfzBqy+ie3GRkMW5dn95vSuTtF?=
 =?iso-8859-1?Q?tA5LYQPMFfn/TMHN8S+cvY2vAAEnjdc2Eb7eiSR2EeFZzkim+CmzjEdcNm?=
 =?iso-8859-1?Q?jI/xkyfpLXDh23YfJnyBnix2WUW52pdW+ObQUjVh2jclqMN0cQ1uyZ1cNS?=
 =?iso-8859-1?Q?7ru9KP3phBlWs0pGKPVGceWhjCUy1sO2TMqp8WbEsLesJ77oyOfO0mXSn4?=
 =?iso-8859-1?Q?7OZrbapFJQ7mMvogMny9Gal4TIfpiCOikTtdp2NH3Vo3uAyjlSv3o9d9X4?=
 =?iso-8859-1?Q?61kuFZfEPs9Q+v3nuGcVRnoUz491tKiCNwF4wUtcPH01C3xyFulg/Os6f+?=
 =?iso-8859-1?Q?tLvBTAeq/NknhKo3FWcRir/nkMeCWBQ7agOQUwnz4b0Ner49Cgo39sCMmU?=
 =?iso-8859-1?Q?VM/oyIop11u81ftSvAFVH24jCd0UnYySjpzW4+qvNbIFRKkHbYVPGrr6Sy?=
 =?iso-8859-1?Q?TiDvMx9skxxtWH0q/z86aDkb/dWwaR9Rmqm8PmTSczrSe0d8R/vhnD528V?=
 =?iso-8859-1?Q?9fGXVzbXva5Mib49o+bOXDuxGd6eBIgtK5U8xooAF/9X3GYTqeurDOiRhS?=
 =?iso-8859-1?Q?pRX2PJOmcpyPx4OvylNNsR5m9CYR5oWrvxeb8us022ICS4QB6ShwMm28qO?=
 =?iso-8859-1?Q?Taxt23vmDRhSd3E3SxppDKLdXp4eRUdpn0GccOeLPNXW/RLTIpqwt706IA?=
 =?iso-8859-1?Q?M9jBS01SWpE2hJhkyrmTs9v3m/MgUJiG3k2luAsIJjvS2S0Z52NQUgCvyE?=
 =?iso-8859-1?Q?4WnI8VL8UQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a280dd1-23a1-4d86-5fc9-08de73867cdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 09:24:19.0959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NyHU1QKAbGPtd84/DMA33eablLbL/d7NW5mhWtSwgelCPuBTKeg+d7idBVb+7GghJuBTVKVMptKla/yFz7eUlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6671
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 51484184844
X-Rspamd-Action: no action



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, February 24, 2026 1:43 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Gola=
ni,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, A=
nkit K
> <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Enable AS SDP Skip Frames
>=20
> On Tue, Feb 24, 2026 at 02:37:07AM +0530, Uma Shankar wrote:
> > Hardware provides mechanism to skip AS SDP for programmed number of
> > frames. Enable the same to drive to 1Hz if hardware supports it.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c     | 3 +++
> >  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 ++
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index b3334bc4d0f9..76a8919cdba2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -395,6 +395,9 @@ static void lnl_alpm_configure(struct intel_dp *int=
el_dp,
> >  			if (crtc_state->disable_as_sdp_when_pr_active)
> >  				pr_alpm_ctl |=3D
> PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
> >
> > +			if (DISPLAY_VER(display) >=3D 35)
> > +				pr_alpm_ctl |=3D
> PR_ALPM_CTL_ASSDP_SKIP_FRAMES(32);
>=20
> Where did that magic 32 frames come from?

Sorry missed to call out, this is just a default value to test on hardware.
Will update it and make it truly programmable.

> This whole thing seems to involve a lot of details (Bspec:75539) that som=
eone
> needs to think through.
>=20
> There are also some things in the DP 2.1a spec (eg. 2.18.8.1.1 Enabling
> Autonomous Sink Device Refresh Rate Timing) that seem relevant for this s=
tuff.
> Sadly the bspec page makes no mention of any of this :/

I will try to add the relevant restrictions and DC3Co dependencies. Need to=
 check on hardware
to cover all corner cases.

Thanks Ville for pointing out the DP spec link relevant to this. Will refer=
 and get back.

Regards,
Uma Shankar

> > +
> >  			intel_de_write(display, PR_ALPM_CTL(display,
> cpu_transcoder),
> >  				       pr_alpm_ctl);
> >  		}
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > index 8afbf5a38335..8c35df795955 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > @@ -268,6 +268,8 @@
> >
> >  #define _PR_ALPM_CTL_A	0x60948
> >  #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran,
> _PR_ALPM_CTL_A)
> > +#define  PR_ALPM_CTL_ASSDP_SKIP_FRAMES_MASK
> 	REG_GENMASK(27, 16)
> > +#define  PR_ALPM_CTL_ASSDP_SKIP_FRAMES(val)
> 	REG_FIELD_PREP(PR_ALPM_CTL_ASSDP_SKIP_FRAMES_MASK, val)
> >  #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU
> 	BIT(6)
> >  #define  PR_ALPM_CTL_RFB_UPDATE_CONTROL
> 	BIT(5)
> >  #define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE
> 	BIT(4)
> > --
> > 2.50.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
