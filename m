Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xpK3J796MmpQ0gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:45:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971BF6989F0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:45:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=giqmiOxP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C9210EFA5;
	Wed, 17 Jun 2026 10:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B7E710EF0B;
 Wed, 17 Jun 2026 10:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781693116; x=1813229116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xmM6liS7RaITMy8pydEQfmExTyFndljSZrLvDKtuJlo=;
 b=giqmiOxPQr/pPHesRNdCWeNwp/HkMyQdoLtsm2k9fe45PLv2AijutQt2
 DTd772i8dwMtG9Wrm6X+zlg4aseSKdDqDpF3wwvfhhVIFg4KA90NEoR7b
 tRQ6YsraAvqWbUYkTOTkEMK1id4SDL4Axp4srbVmbFVAM+3p4I4o2qx7j
 MLp5SLN4TE1F2XRu5IA4GlDkVwl2P3Q1LfHQgExgDKHp3aXo5bqTi3tdW
 LAnzDaEaCr2rRN2zvEWRo7Q2M9fLTP+O++S1EIFDRDyctXuvb66p+s7Yt
 bO/T5225coy0+NhHp9TICgwzn2GCsUcbpmKKA72ipQorxPdYcZuXXTrRq g==;
X-CSE-ConnectionGUID: fpm7G24kRxqQinwRwerRPg==
X-CSE-MsgGUID: UsvsKzSAQ2CmGSNGgfU7Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93146965"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93146965"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:45:15 -0700
X-CSE-ConnectionGUID: J7npshVRQgyzvmOy9u15LQ==
X-CSE-MsgGUID: QYBwTSd5T523bXLQArjz6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="278224300"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 03:45:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:45:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 03:45:14 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 03:45:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wIZIzewfoveWVLTs7RTJtknem0cnieBJ7wYh+NdNcjcovNibfxxmGm/NwjUx9SBDMctMeH9s4Y8F7odcwQ96np64Ow8QvOAVIgTffhNUhimSoaIESPjDLdw8RoqeFsyMVRSnTXkr/fhREs4iPPLxOrlAI7XoLz0m9YiAAZ/6/R7kPkvaFxp3fiYccIzac28NTuPfh00zKBCfN3u4RFUApqTUfF9+ZdSCoHgsjUy1QjW8ITOepM6lDeKUBsCeLlcigv9hHNtVKu8X6jR1mwqeKHHuOflo9O3R7KQvgi7H9hz7tNHbAb+VFpa31zse1eGADDzI721H3AVnRmR3KljCEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3hY8PiT+0Pc2Fh2O5xv7OoLg5EnCS76OlYyfILHbbSk=;
 b=q8LsLBSzJOAgZseF+NREL2DaeF7iNufGwz78r0fA/xoxtE+nu2aoSjb8BnKnp3UmxlqOw3CIqqaGoW1B8/iaUtHwnt4OpCUUU3oCsVux7Aw0qOFgTg2S8l0jcfDW9fmqvXx67ehbWrXoJu+jCm0eIs8yze1X1RHX8QKcZZQnxUP79KkS1DSdC7v0sMKhNTeh7JRMhnilx4X09LDHg4VSAVslqbBwuckMWlNlekJ9Wfs29mFgxLelF6T2rqZK/jTA2DcXX48ZFUiR6tB7SjnujqYjbR+rr/CfnsFT8Nm1WpYJCO9YqEBC0BgUJnGEFsHaBFNkCYBSrS/E887dX3Ivyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SJ0PR11MB4990.namprd11.prod.outlook.com (2603:10b6:a03:2d8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 10:45:05 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 10:45:05 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 13/16] drm/i915/display: Add helper to enable DC counter
Thread-Topic: [PATCH v6 13/16] drm/i915/display: Add helper to enable DC
 counter
Thread-Index: AQHc/ax+7aGGRvO3dkOtr7joLRarZrZCkDCg
Date: Wed, 17 Jun 2026 10:45:05 +0000
Message-ID: <DS0PR11MB8049CA2B75C7A8DE3F4A7BEFF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-14-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-14-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SJ0PR11MB4990:EE_
x-ms-office365-filtering-correlation-id: 2d47052f-de81-4760-c557-08decc5d7e21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|38070700021|18002099003|22082099003|4143699003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: YTp0YQQ1IN6WRo2fr0fk0Ud/png1a2z2jAN2GUoksFoqDROoSLnkThysJY1MeeGw1azcxtjzab9ISMF6rtrBb8uUPko7wRefs/xKvzUduHDptHcnpHVUZaSlE0ueuvVcnhHscbufHzz7N9dPkOpaiVdlxI0evffnMKiKb+rUeTCE3rh5XGhMvckIb0HRmrZ9FTb1H0Nkw89UoAV2Di6AfclTBWfgxjuV9YAaCOs5ClHIAi1pSGkKA2qJrvUP2EhAy2+wOaaZ9kH6d8TlfX8YP1zMxe7gLfxvM/0gN7/p+/v432yN43/a/291sDEi9343V+wH6eDMyPTB7LMDrXUuecaYpjD8G/KIQh0iXuyIj6ZMeFdAddbCDvAjkP7MceJlV4y281vDjtwvTRena2ziId//xPXbBfJa2In2MuzHTPU9YlFGEaL9KVo9UtAW/nyFncPqkX0RrxkIUJ421XizBXX+imt+oFwJ0Y9xrVFJuiwSUBSCbS9Bxiq9Q/RE2FZj4G10JlCAakTGx4SKD/w06yb5IeDMk5dtFpI27s9Sihhw8GaBipUqaaexZZuWyGK6TMh4zm5VaO5COOsTebUIfCL5pVARGW3RJ0fFTim2w7mjjH089R2T6frMnNSWjTjasecM9YvxlIyNkYucliR493QdwEGGvA7tFDY0Ly0pcy39J8hiK4DQwZetQLEjLmfKRgg1mK4kFuqK7yK1b3YvV1o4w/YkZOO+wSIFJVvX7OoK2vCdGkGQwVBWZ+nIEKmR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(38070700021)(18002099003)(22082099003)(4143699003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h41p0PJCv0/dwifoVp2pcu3YO/2QbetWvp/m90FK0DW0tuLTRBn5lRYMtKdi?=
 =?us-ascii?Q?v5Xu8YxbtdqqKNTLA5mSBd4lqP5X7ASMv6ReLY6hRa8PMSlIAT6ltpy52Jfc?=
 =?us-ascii?Q?3xQHKG9UvZpRrOSdPO6A49m97ZUNguhTEXmJaeePkmFEBriFBt3UFGp7n6bY?=
 =?us-ascii?Q?Fte2XSZfEg/kXVd/ByoSkUp2tm0+gCjbVWssG93ueaLzxpIo37AU67N+UgSj?=
 =?us-ascii?Q?GyC3pY/dJsqT9cXUOM2hk4w/BppXcpBzIGiO/viPz1lAzV1ERxI6VSqy9hMh?=
 =?us-ascii?Q?e47D4z/1qRvzhdBpmDJGHWpqT0SFVmyntVr5prupK8og91VovWjCKDTdah/c?=
 =?us-ascii?Q?GX6V3/m5k5rvQzb+0W4E0JG8sqRH4Wt0/NVBD3Gb42Z55ELAFXqvqyloytTw?=
 =?us-ascii?Q?nnmyW70XIhrG1CbeHllPK+fWsy4vE24yaNZX1jlzE8VOzCMcNIRt/kgsQYxB?=
 =?us-ascii?Q?pU6vcJcDLXCP8Wc4wKpvQmd90EpjRTyCJGcQJg7v/htPt5grC2NvCd6Vx0FY?=
 =?us-ascii?Q?BO/e7w0uQMKT0s4N+fxxb66ldz9sPcx7IGmz+Bq+uLrWcBgBUilKwFQhsRLb?=
 =?us-ascii?Q?+FTfxPpwcgU+9ZeEk8OCKnvwewXnrE0/v2RF2JhKd2Fo4OAVsojoCXA0a9qd?=
 =?us-ascii?Q?WtCJ/BDl/L9o23TSfg/lgI6FpLi0xG3avnRUAbKEYHqJu4fj4ggyiHKFwKPU?=
 =?us-ascii?Q?5sBjP954HKv4IhPNX4kjUAJY2b72mP/wAlhagJpdRfc2509Rg7/O71XHUyax?=
 =?us-ascii?Q?Pt6qws/1FQ/CXRU1yiAfP9KWsYKe21QaHgVYnbZCAMwhPzhho6/IxdypAJoH?=
 =?us-ascii?Q?hDbIg5FoXgJB3/t54/L27uan6BO9srj9Sgpig1A+Vbekgvrp1bHyUifL+quE?=
 =?us-ascii?Q?BF0Iro9o/bHn6b5hhyp74tTVdGiz11m/VejwicYrWFW1VSuzi7RKwjyQVWVo?=
 =?us-ascii?Q?Kwcqb7O213X12iWN41wNxNqn/xpBZcbIJhaJU/d6t41GZ2rONwQFGrq+GvUt?=
 =?us-ascii?Q?oUmB6FRcapPG9hLBX/MWvTYKHiruRfbVP+kFQ7ZT0vxMpitXk6zR4FvCD/bp?=
 =?us-ascii?Q?Ykh9PLN7DN3fk05bJtd16fCh2vFRIWzf3FX0rjYx8NnYpEviA+wUr5i+dkUp?=
 =?us-ascii?Q?d4v/4Zj1iS7ajd8HS27FG3Z0ZCSKlLYUL7pGT9ohWAfGgh6G1V3hBQe7AJ2D?=
 =?us-ascii?Q?7EGy2pUfWUP2ttUTCi5IGpQh++DYPBTj71NiknsUvtkuG9qyG9xa7McTgfP7?=
 =?us-ascii?Q?6Q3BtWnqMvDYYIYhFvPXrATwQOx58/XsgNsLzi2NM1QGKLThWPBDFfw8/mfs?=
 =?us-ascii?Q?yTWQGoEONr8SdEEZArqOchkNUEhKb2sebDX59l5QPK8a0XN8rC57ukNO2XL2?=
 =?us-ascii?Q?45jAaKOILdImQ8Y8kzEQEIcfKrFIKlfUvaHIqk2xA8VofJB0kxCpEaFGh83C?=
 =?us-ascii?Q?UFAzZHrpwg+3dFfhB36IRLIMCk4RPMmOzepkrN8645tL+Ytyn4PtPOsfk73W?=
 =?us-ascii?Q?p3vtPd6DYlEM7OpqKoXd8QMx54/XjphhbwL9+adfVGjkXxnmmwShD9Fuianj?=
 =?us-ascii?Q?crrDJ43ouX/JvbFFMaDtYt0FFbAkAK0crpKZRUTWOt36C6JwiSaPmxUd5SgZ?=
 =?us-ascii?Q?mQ/AeECCKnyfH0rGtwtG8SXwCEsqv+pjstOMrla5Vm0VinKPKRzbfRDyFXpZ?=
 =?us-ascii?Q?I57feW8SzaT2gyB702nq2pS1diNewwlEzjzL01fvg8oQM3wFj4STZ/6rsBYW?=
 =?us-ascii?Q?g6+a5VC8Rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aoUUEkKfnmbiU0D+iRALvzmOg46Ka/zowMQ4tkfRLGM/2WUApT0I9tW27pYCAJHVNaotRIMye1aDXCIn7A9qGDMyRIpQ/3wF+sk0uKwwy/+BYifBVgibVc/uZmpeLSjb5/0UGD9OYEiz+x+PpD2GQikvxluNzSrU32fTYo17PyFaX7NhL5DjtxHIWQCiVImfFRORv0JdLoXU9+gIkLYdOhvJ8KCjFtWEKn60mbW220B1IXG6TvTG5QgfRVHZzc/1tD4dD3531jMC0PGP9S8rceccNSBukfizZauKOuPc9iNWySwOPhMFspae5/pVw05NqW9kD/zHAyS+UFuNzAOfrg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d47052f-de81-4760-c557-08decc5d7e21
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 10:45:05.3155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eB912HBXAHahly3LfwpjXAkFdfzyK/vzD/CkjHyRto1oNg/nx4aYUyPYC/MBZir7fCiCSiY1yyPkju+NhFmOkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4990
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: 971BF6989F0



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 13/16] drm/i915/display: Add helper to enable DC
> counter
>=20
> Add xe3lpd_enable_dc_count() to enable the DC_COUNT_EN register.
> Also define DC_STATE_DC3CO_RESIDENCY to read DC3CO residency.
> Needed to retrieve DC residency for DC3CO.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_power_well.h | 1 +
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +++
>  4 files changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9c8ea14a5cff..4f7144d72dc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -866,6 +866,11 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> +void xe3lpd_enable_dc_count(struct intel_display *display)
> +{
> +	intel_de_write(display, DC_COUNT_EN,
> DC_COUNT_EN_COUNTER_ENABLE);

Nitpick: This function need some guarding as it is exposed through .h file.=
 Instead of caller checking DISPLAY_VER, we can add it here.
Considering this function is protected from caller side,
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> +}
> +
>  static void assert_can_enable_dc3co(struct intel_display *display)
>  {
>  	drm_WARN_ONCE(display->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index 8f5524da2d06..0ce64b894436 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -159,6 +159,7 @@ void gen9_set_dc_state(struct intel_display *display,
> u32 state);
>  void gen9_disable_dc_states(struct intel_display *display);
>  void bxt_enable_dc9(struct intel_display *display);
>  void bxt_disable_dc9(struct intel_display *display);
> +void xe3lpd_enable_dc_count(struct intel_display *display);
>=20
>  extern const struct i915_power_well_ops i9xx_always_on_power_well_ops;
>  extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 2255d9d31ca4..329909e3f70a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3086,6 +3086,11 @@ enum skl_power_gate {
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
>  #define  DC_STATE_DEBUG_MASK_MEMORY_UP	(1 << 1)
>=20
> +#define DC_COUNT_EN			_MMIO(0x457B4)
> +#define DC_COUNT_EN_COUNTER_ENABLE	REG_BIT(31)
> +
> +#define DC_STATE_DC3CO_RESIDENCY	_MMIO(0x457B8)
> +
>  #define D_COMP_BDW			_MMIO(0x138144)
>=20
>  /* Pipe WM_LINETIME - watermark line time */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 4785001644f5..a133785c815b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -941,6 +941,9 @@ void intel_dmc_load_program(struct intel_display
> *display)
>=20
>  	gen9_set_dc_state_debugmask(display);
>=20
> +	if (DISPLAY_VER(display) >=3D 35)
> +		xe3lpd_enable_dc_count(display);
> +
>  	pipedmc_clock_gating_wa(display, false);
>  }
>=20
> --
> 2.43.0

