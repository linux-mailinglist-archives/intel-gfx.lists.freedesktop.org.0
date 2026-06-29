Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lO+pEy8EQmrXygkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 07:35:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06D86D60FF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 07:35:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PDWtDtDs;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378BC10E6B6;
	Mon, 29 Jun 2026 05:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B34D810E395;
 Mon, 29 Jun 2026 05:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782711339; x=1814247339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=34LIbtXPYzkNNAUPx13Q7SZL9Rs7U0tsnJwU7SN1Jr4=;
 b=PDWtDtDsM5vk98ZBdyI1yqPDKq8t3lTYv58rhIVt0keV8uoJN1fKzSa9
 1S7G+vdJ2irAAhBfKzq64tOBoMly4qWzfId+Ep9M+q8VElJnKAIIeFieb
 HjIXoGKdo/QW/IBS/RTRjl0oBQqGZNsBabiNoznME+pFKylFVevUavUxv
 DQ3K+ECPAkozCfg77qtNPskbesmqQA2X9Th4r1X6YyBE3+HuRDA+Fou/Q
 DRMszlkuwe1Bmq5IjuRssvF0J7f6FlWXSQ6JFgaC+FUg8EBIAT/k7oxvt
 6EmPPiw2CmFGuY5jgcvt8vV+NpCNuENvxAWzqhf4Shii0wmoZJUuE+oZL g==;
X-CSE-ConnectionGUID: omDR2Jj4Rzy2Qcet+09eOw==
X-CSE-MsgGUID: p5skE/ksSOydoE1onyZAVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="108931629"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="108931629"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 22:35:39 -0700
X-CSE-ConnectionGUID: o2ppTSPXTzKMN0JCfzqjNw==
X-CSE-MsgGUID: cCeIBD/9Q/W+9dG5SlLP1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="255461646"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 22:35:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 28 Jun 2026 22:35:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 28 Jun 2026 22:35:38 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 22:35:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dWZCKG/eOhnviKBClHX3oRrl6havAnOulWq/rhmh1iKbsINH9+yRmHgjC12QZ/5QD9lG13492Z1dk5tuYVLzFBEuAHiDMN35mYWuTx8GUvG/xXnN97Fhwh4Aa6xvDM7E+7sOKq8r1+4eQs7HaToMUeCydDqXAHefMtA55mFERsaB/0YOC/HkY1bM+nL48UsqXxn0nKKirYGg8WW9ppHkktZeCUXxKk9806NyiC+dMHU6+FLKLP0s/wl5bmF4o0/c2zKYk/AeKDhbkJkq9L1tfkYA8F1Hfhis6vjwQAeK2Yzg9/MidLEH7hNQOkvhHrqqEC2wZzhWQxrKSPA3PfV8gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+pnZ5dT63mjIjBOaUjp2YdO6Np/ubBWuPqQ+QAQmBb0=;
 b=alJGAG5bwsIJzMGJZh+uRzRVuEm2knm6IdlxW4Tln+EFJQOEZVPWfdcRUM8oBmt2Mbu2LXPtPnfjPjITvRbRWgGPs8gYdF71kjuujk1DNYT77F6AWQzIH4BibPSNruxqDtOuXaidJQK0YBDfPLYYq5iHPSRnO07Z/hzODY0AtIUQ/mOnix1LoXyhzOdyl1aez5bBUbpscBVgEMPcHZCObq5j9nbahVyzNSq4yGQ86MRXP7hYrRo2/3Z/UMDBf5sVf5PTVRGyVzGBi20fmmnmbqa13QqfgfQGm9Bgzx1nn7eAT+4fhnkC76GatysDKFqZJvpYW3UXnyoF3hyJxYfVbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM3PPF027BB0053.namprd11.prod.outlook.com (2603:10b6:f:fc00::f05)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 05:35:30 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 05:35:30 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
Thread-Topic: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
Thread-Index: AQHc/Z/xzcBklTLs/U6xRWDfOyOoZrZCpoWAgBJwHLA=
Date: Mon, 29 Jun 2026 05:35:30 +0000
Message-ID: <IA1PR11MB634805D6BE615F0712F8E0B1B2E82@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
 <3f0f4fbed5f291ee05034a2eea89f95b3b0da8cf@intel.com>
In-Reply-To: <3f0f4fbed5f291ee05034a2eea89f95b3b0da8cf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM3PPF027BB0053:EE_
x-ms-office365-filtering-correlation-id: 16f1e859-7da3-40b5-bab6-08ded5a03b87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|22082099003|38070700021|4143699003|3023799007|11063799006|56012099006|18002099003;
x-microsoft-antispam-message-info: 0FoPFiXhJ5ANhP2uDdbOAYDjm21pZBhSfhSi+N3kSNOfkMGovtHDBWrzN1Kzf0UfRM53QPcunGM12ZZk2sT9niQrBI5fZFzvSfs1UZPHg5Ry4YvdkrpIaDAoMyhUKa0aec0xTceehEQVRXgrzNcgQVrV7pqF6A9qWV+Qe0TRX6HQaA34kIVO8w59g1aHPlpNHEbBiHCbV+rto247VPEz5LZgt4iHP4tDxfGjZvtUgsgFFB0hZFNI/rNj8+Wp30xQ7ZnaqtrlDkdHZfK3OJJXGKtA3H/+BfrMYz491/TTrWBbcHh7r1mtCTIAXzC5lBKy6AmZWgSSf05FDLdhI9QabArEGehEGYUW+TBYruVQpy2BBtQCjEmXBFNTXJfP2vW0+Pcrug/JZqXangcB7og6+zfNECrYmZ0UF+y4hqxAwczI8R4qg8gx69pEbRmxr4JSx90t+VLWg1eGr32KoEDzkHy3odUA57/eTrdadPAqtKk1Ty4P8gl2jkUjEEb/7/fVzAyA/nNOCh52DoJXCyw5Jt0AVnfo93Ivu3QSLV9eahcOe9gyxweV0dboeLnS4w4gxuCv4SPMdlbx/7bbQbkEOOcUZryyDfCsHO/kgmYCLYxaEFw8J+4uGUppPDL//NbaYqm/LGrK/mJEo0ALOV3l+wJ2s9yYo1F3VVo821AFb7c4ecIjgVgiddT02tN148F1FNoaz5KtVlCpaNgvjj96yWXoNwPnutPYBi7mkiY+yVM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(22082099003)(38070700021)(4143699003)(3023799007)(11063799006)(56012099006)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?902YvB5b2fUTJpm2mo3wgn7lxjRfgSa4JyBP9gY2BB3Kmw9wd7I5BgisqNQ9?=
 =?us-ascii?Q?mMfkTzmXs4bQEHGDfY/Uno/8KhGXbinaODdTOjNdFrTbS3M51zL7Lpi6xQmg?=
 =?us-ascii?Q?tjcxXY3Irps5kuoL8yjcG/JpJjyfVwPn3ZbYQFmblcbcOZIzoP/5G9X4jlfy?=
 =?us-ascii?Q?nBVcdUzSCykR+o3c45s8RWBL3AogZ9yiGaRq3aibDNMnKYoad4ps9LD5p6oP?=
 =?us-ascii?Q?xYSDPlTKHnAMNU8rkUeR094e9zi/yAnq1pAJqbwX9DCRV/Urqs4cDfzR2chD?=
 =?us-ascii?Q?2VIN1UXRtF+sGpxwn9Sq2QWyxZdzyCFC+s1uXgsetuWq8dpNt2DD5aSApntC?=
 =?us-ascii?Q?loDE2blCGUv0JjyLFw+L/qhrvo7P26IMwb3ZGv/cSdMHjYjPrJMSWNaImddk?=
 =?us-ascii?Q?bxKxP8wyQ/9/8WlpsIjAkKaKobwlM+iS9my69PNa8uLKpmr+zozj1ZHJ5BbL?=
 =?us-ascii?Q?+Aq6B3lwbkBgwTReSXx75xiw8iwXjk+KI0/Zxdat6JEKx88OnUUsGpvllfD+?=
 =?us-ascii?Q?+aUalBOVi9UNW2xu9qzxb7zDwCACEm/3Lq3l8hlD2dWvV8a0O60Fqw3oL/aT?=
 =?us-ascii?Q?YheBMUQtpWx3OsU9ps5vygKl40MG88nO7DDmg+mtFvMvxA8rala17l/BJzii?=
 =?us-ascii?Q?qs4MSJzMXzKVLG+73DYjxdyFuF/zYvoxsxdL3fiMVaJU1+3M4XOEdf3uEwpd?=
 =?us-ascii?Q?ymommVn8phlMaR3XwWG5VnxhS4rko/WOh6NOHjlwUbOPkHNt+W2h9ayoJR1n?=
 =?us-ascii?Q?JF/yoWBLYkmEZH90k1AJ3j0AdrbXwu72AgV0+xuSyiKxqvVBURHf2lTOrkZF?=
 =?us-ascii?Q?5pE+GCjgcnq8ZGiwd7bwdL35LiNzsxwnUpx4Z62Fp9vZ4M6serSNc9atrscC?=
 =?us-ascii?Q?wBR66TcOJ696M/e289slcLU8kro0wQTY92HGlujQ0pGWQ3UmWlp/uf43vPoC?=
 =?us-ascii?Q?TbKursWZF5BzRCfu+dhPz4QzX9O2JSPo84wk1J942L/PGwUKsmIdsEY4DnBg?=
 =?us-ascii?Q?5/7ySbGCbo97avMRxLe7xyrG/98FqUzYlrM/srfmDG0JB1L8uiMSbOl0dRUy?=
 =?us-ascii?Q?2zQ/06/mZmf2cWuFS7pKFxhk99OMURuvAjGiN19Orfp7wbxUhKPVSv8ivM0H?=
 =?us-ascii?Q?UTBhmxpKk2pDYql2Tkf24tV963LeJe0FRN2AnQ4VqtAdPXzNxn6bWng2YtRj?=
 =?us-ascii?Q?QJlw1EJ8WKOneGUDSFKs3TjWuGc7K3dielW+4bnArnynyXYDi3d8nXIqOixf?=
 =?us-ascii?Q?8MOsdrC5uUa5UC2t6o/esGADmErXanK1mN893C0fkoYDofCJtbe+1y1McolP?=
 =?us-ascii?Q?mz2hinCeR1Wa8pux612O3eKmYWqE0CJLGsdEsacIKVZIlBCb26UnJa6HJEsk?=
 =?us-ascii?Q?dlLB4evfSZFbg5QvADghdczWm+vHmyTC3WFZjObKYhgEQDL1T5S3XKt3q3XT?=
 =?us-ascii?Q?5YeVk+PolRdAoEurJuPoYG5DO8itYrolhD1KstqkhDsHIJdjR8NopxJMZsQ9?=
 =?us-ascii?Q?q+3S03ZlvFxCN/h+U8V/hjbTX2zbV9PAsPBLcGDiogNalm9pL6gWec+ZUlI1?=
 =?us-ascii?Q?sItuSmTS4cdie1Mum2FW0hs/0NElKzAaPxrpkCkPH7DqkRTT/T/TrmXF/1rC?=
 =?us-ascii?Q?ptuQLxq40tHjRTC7uQGHNW+u8DLtfUY7kNr12tISYC/ViNyuKqyIcReGYzfp?=
 =?us-ascii?Q?IDfrS4QeH5S8LQB7DP8IqBMC+fhUjOgzqPDlgXHSPGXQTbgf0h1KP7Ypmjid?=
 =?us-ascii?Q?y5IZApuzV7h6IzFrhmuNos4i5wK3dPM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c6i+ke8K/yzAmEfB8xGS2oqrx3EXJ2hzKhbrPTirjKKLT+cyijwjDvj+dvw8sZRD+l1zlrJnsiqdAHKO39tEQpI9neBTg7OKoTZX8oE73G6AbMuVYL3rCCum0v/jcgy0HjSri3odI/w1rVhvRqA2jkAQdq4F+w3mzNAD6EIj9pGRnp3m4SOz/c4DFf9yg+o7XVPHXTsc6t3xW3DSXyutKl0slIIcbK6gOB6at/FjvGYyWy7LkiUtCmOmUGTyMU9BP6ktcVCR7CoDwYn1On/lMGOw68VOf1GGN9OAlvqZnFhAKKz3WtA9Bc6PhPtBZvWRSE5bfty8VMypMwFH138WXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16f1e859-7da3-40b5-bab6-08ded5a03b87
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2026 05:35:30.2915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yjKLpU0SOnk6jLvgty3vzhqrMyEv3l4739kUffzQEmUkKblzj7/+0Zt+Wu36Vj36znrDFXjsTCtfetS2sLWvubAb59uFWJk8ScpIViYF6cICqefAloW4tqU4EGpT1hvv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF027BB0053
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
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A06D86D60FF



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 17 June 2026 17:30
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional
> timings generically
>=20
> On Tue, 16 Jun 2026, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Replace the disabled, eDP-only, fractional-CMRR code with a generic,
> > transcoder-agnostic computation driven by an explicit per-CRTC target.
> > Compute CMRR_M and CMRR_N timings based on video mode reqirement if
> > CMRR is required to be enabled.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |   2 +
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 121 +++++++++---------
> >  2 files changed, 63 insertions(+), 60 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 897a1ffd7b79..39e11362630c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1548,6 +1548,8 @@ struct intel_crtc {
> >  	struct {
> >  		u32 numerator;
> >  		u32 denominator;
> > +		/* Derived during atomic check: 1000/1001 video timing
> required */
> > +		bool video_mode;
>=20
> compute config must not change permanent state, only crtc state.
>=20
> Moreover, the video_mode here is just a funcion of denominator, so why do
> we cache it when it can be computed on the fly?

Right, no explicit requirement, can be configured on the fly.=20

Thanks for review, I will make the change and float with next revision.

Regards,
Mitul

>=20
> >  	} cmrr;
> >
> >  	int scanline_offset;
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 41118883b845..e36c0cab096a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -26,9 +26,6 @@
> >  #include "skl_prefill.h"
> >  #include "skl_watermark.h"
> >
> > -#define FIXED_POINT_PRECISION		100
> > -#define CMRR_PRECISION_TOLERANCE	10
> > -
> >  /*
> >   * Tunable parameters for DC Balance correction.
> >   * These are captured based on experimentations.
> > @@ -186,69 +183,69 @@ int intel_vrr_vmax_vblank_start(const struct
> intel_crtc_state *crtc_state)
> >  	return intel_vrr_vmax_vtotal(crtc_state) -
> > crtc_state->vrr.guardband;  }
> >
> > -static bool
> > -is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> > +static void
> > +intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_display_mode *adjusted_mode =3D
> > &crtc_state->hw.adjusted_mode;
> > -
> > -	/* Avoid CMRR for now till we have VRR with fixed timings working */
> > -	if (!HAS_CMRR(display) || true)
> > -		return false;
> > -
> > -	actual_refresh_k =3D
> > -		drm_mode_vrefresh(adjusted_mode) *
> FIXED_POINT_PRECISION;
> > -	pixel_clock_per_line =3D
> > -		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
> >crtc_htotal;
> > -	calculated_refresh_k =3D
> > -		pixel_clock_per_line * FIXED_POINT_PRECISION /
> adjusted_mode->crtc_vtotal;
> > -
> > -	if ((actual_refresh_k - calculated_refresh_k) <
> CMRR_PRECISION_TOLERANCE)
> > -		return false;
> > -
> > -	return true;
> > -}
> > -
> > -static unsigned int
> > -cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool
> > video_mode_required) -{
> > -	int multiplier_m =3D 1, multiplier_n =3D 1, vtotal, desired_refresh_r=
ate;
> >  	u64 adjusted_pixel_rate;
> > -	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> > +	int requested_refresh_rate, current_refresh_rate;
> > +	int multiplier_m =3D 1, multiplier_n =3D 1;
> >
> > -	desired_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> > +	if (!HAS_CMRR(display))
> > +		return;
> >
> > -	if (video_mode_required) {
> > -		multiplier_m =3D 1001;
> > -		multiplier_n =3D 1000;
> > -	}
> > +	/* No CMRR ratio configured through debugfs */
> > +	if (!crtc->cmrr.numerator)
> > +		return;
> >
> > -	crtc_state->cmrr.cmrr_n =3D mul_u32_u32(desired_refresh_rate *
> adjusted_mode->crtc_htotal,
> > -					      multiplier_n);
> > -	vtotal =3D DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode-
> >crtc_clock * 1000, multiplier_n),
> > -				  crtc_state->cmrr.cmrr_n);
> > -	adjusted_pixel_rate =3D mul_u32_u32(adjusted_mode->crtc_clock *
> 1000, multiplier_m);
> > -	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate, crtc_state-
> >cmrr.cmrr_n);
> > +	/*
> > +	 * The numerator encodes the requested refresh rate in kHz, so the
> > +	 * requested refresh rate in Hz is numerator / 1000. It must match th=
e
> > +	 * refresh rate of the current mode.
> > +	 */
> > +	requested_refresh_rate =3D crtc->cmrr.numerator / 1000;
> > +	current_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> > +
> > +	if (requested_refresh_rate !=3D current_refresh_rate) {
> > +		drm_dbg_kms(display->drm,
> > +			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz
> does not match current mode refresh rate %d Hz\n",
> > +				crtc->base.base.id, crtc->base.name,
> > +				requested_refresh_rate,
> current_refresh_rate);
> > +		return;
> > +	}
> >
> > -	return vtotal;
> > -}
> > +	/*
> > +	 * A 1:1 ratio (denominator =3D=3D 1000) means no video timing is
> required
> > +	 * Any other ratio (e.g. 1000/1001) requires the video timing.
> > +	 */
> > +	crtc->cmrr.video_mode =3D crtc->cmrr.denominator !=3D 1000;
> > +	if (crtc->cmrr.video_mode) {
> > +		multiplier_m =3D 1000;
> > +		multiplier_n =3D 1001;
> > +	}
> >
> > -static
> > -void intel_vrr_compute_cmrr_timings(struct intel_crtc_state
> > *crtc_state) -{
> >  	/*
> > -	 * TODO: Compute precise target refresh rate to determine
> > -	 * if video_mode_required should be true. Currently set to
> > -	 * false due to uncertainty about the precise target
> > -	 * refresh Rate.
> > +	 * Let pixel_clock_hz =3D adjusted_mode->crtc_clock * 1000.
> > +	 *
> > +	 * cmrr_n =3D requested_refresh_rate x htotal x multiplier_m
> > +	 * cmrr_m =3D (pixel_clock_hz x scale_m) % cmrr_n
> > +	 *
> > +	 * where multiplier_m/multiplier_n =3D 1000/1001 when the
> > +	 * video timing is required, else 1/1. The integer vtotal
> > +	 * term is tracked in SW (it is the programmed mode vtotal)
> > +	 * while the fractional part represented by cmrr_m/cmrr_n
> > +	 * is tracked in HW.
> >  	 */
> > -	crtc_state->vrr.vmax =3D cmrr_get_vtotal(crtc_state, false);
> > -	crtc_state->vrr.vmin =3D crtc_state->vrr.vmax;
> > -	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin;
> >
> > -	crtc_state->cmrr.enable =3D true;
> > -	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
> > +	crtc_state->cmrr.cmrr_n =3D
> > +		mul_u32_u32(requested_refresh_rate * adjusted_mode-
> >crtc_htotal,
> > +			    multiplier_m);
> > +	adjusted_pixel_rate =3D mul_u32_u32(adjusted_mode->crtc_clock,
> 1000) * multiplier_n;
> > +	crtc_state->cmrr.cmrr_m =3D do_div(adjusted_pixel_rate,
> > +crtc_state->cmrr.cmrr_n);
> > +
> > +	return;
> >  }
> >
> >  static
> > @@ -424,8 +421,6 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_connector *connector =3D
> >  		to_intel_connector(conn_state->connector);
> > -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> > -	bool is_edp =3D intel_dp_is_edp(intel_dp);
> >  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> >  	int vmin, vmax;
> >
> > @@ -459,13 +454,19 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  		vmax =3D vmin;
> >  	}
> >
> > -	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
> > +	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
> >  		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
> > -	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> > -		intel_vrr_compute_cmrr_timings(crtc_state);
> > -	else
> > +	} else {
> >  		intel_vrr_compute_fixed_rr_timings(crtc_state);
> >
> > +		/*
> > +		 * CMRR is a fixed average Vtotal mode and is only computed
> on
> > +		 * the fixed refresh rate path. It is generic across transcoders
> > +		 * and gated on platform support and a valid debugfs ratio.
> > +		 */
> > +		intel_vrr_cmrr_compute_config(crtc_state);
> > +	}
> > +
> >  	if (HAS_AS_SDP(display)) {
> >  		crtc_state->vrr.vsync_start =3D
> >  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>=20
> --
> Jani Nikula, Intel
