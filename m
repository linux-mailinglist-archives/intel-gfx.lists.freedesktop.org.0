Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOREAImA3mnkFAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 19:59:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3F73FD624
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 19:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC8810E647;
	Tue, 14 Apr 2026 17:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PK2GgnDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAD210E641;
 Tue, 14 Apr 2026 17:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776189572; x=1807725572;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0T4laaUY/fHS8cpcJ1vRU6k8r/RJcGDUp+yL5HH/EMo=;
 b=PK2GgnDC2KoE8xJ8m74ja8/edz55958W6ejSPSdYQTgaKZX8RJFqi6WB
 5H9V6LMLwP3lpxdOmMytV7pqyHJAoBzRPSCXUkdmSz24yMupIT328+NpU
 DBWZA1Chnbgm0RvbB2qIfPkpCSme6MFTHQnuYEamzsRj0RntxYmkq38lz
 2eEj6DudWSXpjYu3EZyMECFzqB+VYbB6gS+5FtqnWUVMfQazTwss3LJqN
 AaZpX5/q4NanEqUBjVW+wAExapMkciRUe7wTG/dwKpAqqJ6dxLoNy4ome
 aX0oELqV3CfT6Q+95v2KCFkLGfzs+Iar+AanBoMAF1RqrQkAgHlt9hygE g==;
X-CSE-ConnectionGUID: gqL7YLvOQMC6h/mHOF1v5g==
X-CSE-MsgGUID: AvigJyZZRqiiEGQLBNKXoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77338190"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77338190"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:59:32 -0700
X-CSE-ConnectionGUID: /SgYvkFqTeKpwKiUvhhrEQ==
X-CSE-MsgGUID: ppSjfp/sR7SbRG6rlkyaJQ==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:59:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 10:59:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 10:59:31 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 10:59:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TxJ/XzZDx7naCw+PiutEL9utPRac0v/uQDpulwpmnp7qA5/iXwBfrrVVK7fpIgBFOP/DXNcI4YSKJr2a+s1WOLVh0r1SaiKNYLOW7cNmv3vq3VWYwdwiMkpnlCw0x8O3G6+QxbQc7ooxLlFSIIz6AJ3sxjw1B+1BhmNaqP0hfSNHVL+gsYXS6gBk3nOg1sb5V02Ef8BsL6kz9gQI6FPi8hrFOm1VS4Nrv0fdiB7nxptp3IGKD5Y2nQ/nUMCOI2qneCOil5QxWk8cFxnZUG8xDDQoyyyjwQVUxHNZBEk428Aqimlg2EUm+PmZc80jLKLBb6Npu68vodWYrIpe3GF9VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=so3qYqYglr8hGKJHv+ivyesD4A0LFY3rUkfWTdSXH/Y=;
 b=ZX2//vc5XoLy0w3T2zGkVbrZeB9HlAEgNBenPge7kDiwUxlKqsPrsDdBOpVch1gOwZoRkDLIxpjJ9wnAvUrXV+vGLM96Q8O5Mkef2Qfl/uVyd8optlpYXlo7PUFMDSPdwuPlKR6DoWwe5ROzy+WJIj/FjR/UWkLLi7JxByKrof2RH1XFDVkeTYW4Uyal+yforz1f+LA8WoiubaY1sry85ASlZo6eq5ekLEuy9iLpiJ0u7zyZjw2fT9LTRwkM5FLxBEdzoIGlA7ycXJQ6pjT04k5bzmZMNmCwFeiN8eS/L6V7OYcqujXxrJC0bZsGEcI78bNtH4ydhXybIv8t1BMl1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH0PR11MB4808.namprd11.prod.outlook.com (2603:10b6:510:39::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.15; Tue, 14 Apr
 2026 17:59:29 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd%3]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 17:59:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12 UV
 surface offset calculation
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
Thread-Index: AQHcydeHALpoRHVwmkSB6Va8M6o4b7Xetv2AgAAYkQCAAAyq8A==
Date: Tue, 14 Apr 2026 17:59:28 +0000
Message-ID: <CY5PR11MB63446BF7619834EE2219371EF4252@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <bf735bb719753185479461767d7c077bd9c3bfda@intel.com>
 <PH7PR11MB82520337B2387D40ECBC4FDA89252@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB82520337B2387D40ECBC4FDA89252@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|PH0PR11MB4808:EE_
x-ms-office365-filtering-correlation-id: e05e3557-15db-47b6-dbdd-08de9a4f92d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: 75cymCWlk/5W8n34SHpcXKOWN3vwbweiQiD6r5O3/Ajsf4Y9+MACxDgzop5O2P4mLh9C4MM19ATIR15kfqyV5EZvZNay3LaVeLydpbMU2J1kNVAkb6o3vu0QkNt2qc+w0EA0WNLYoBYq28YoKoj9xA+xMR/KKLRYIhOjQqyvbJP90Z+W/eMMJx7fx6+++laXiWLbbiv8dCj/RusXXiQsCUyEfPDiLcCyiXIgqVzd6jPavxFlGI6TaCa3bRbf0+oCcS5u9yhxlaHH5XuY3Sf50IlCipICC0xCZzx2/4ymAdXuhanbOccpbkkG6EB7XJTb1R1oax1UgCu4CLbTrwTf/ozCHX5O6e4lvNBhtx8UZvzdH+ox91jt2RMhw69uCXO1r2nFoSnFO4IiyKrbQ8DQMw8qY9SqHhg+BK8C6roacXqKq+h9t0f+A/KUb32GM75anFa2w3ZsD7avnhVgzfpnVjJtJwnB0jrVSuBp914+df5xcifBdiFdxyrFpcwPsKsO2lci06lWijR2cb7X+wzbPtdnhQptswxYwPxigyugVeYNbwZ/JGRCkhLMS/GlutSzP+7ahDRDLEoun67WDVIFwdGNaDreB0c+e9tj+sLI0UbpzWvgiVVOC1v9bw+Srftdvq2AY6s43s/705rHbsAeSPdPdCkAkBXuYEdy1QEw9GfNNLmATba2oa+gWTWZKQ/OvDUfPTZdjmHMtUyh12iY0C70WsywYhcBaq5EmyFlZQM5qIoPPwSspQMoieDFZK6AMo+4taQWpcn8wic8ME4wxKYAcjRlzdSAUm0Rf+VQAwQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dkZtXIU9zBSnQN+9lcP7Pob+hES83A+mpA85nN7NHGVmfFP00Dq7ySnriXtK?=
 =?us-ascii?Q?iCWpJZvWwuRir14WfCI1Isv3EdglUnxf/9UoKbkL5aOdoVaz63gci/AbMHnV?=
 =?us-ascii?Q?mU4YTk6D31PRxqZOadUcLVjOTQMjmyguyeol6xIVZMTw50twLSrGzmhFiQX+?=
 =?us-ascii?Q?8C85OJtYYZ+PHUF1eRpBJHxpJDR9jjTij/70IqaLA6pVwWxslbgrOHh2Uxya?=
 =?us-ascii?Q?zqcJYsla7ZeGtuXZGuMatSvG8P78b17L8IZhrNQ8b2oY7jYY2MeuSuKjCf2t?=
 =?us-ascii?Q?n23CatHfcgGnlPTYgGb4xFYsFvLnwVookce68GdqViv+KiVD/pZMSviZkasq?=
 =?us-ascii?Q?vhua5MzzaMQLKkeHZI+H3UVk34lzcghcRTSJINA486ymzFfwI/CzsjBkUrBn?=
 =?us-ascii?Q?gorhhDrqMZiPX9owlDZr8f+L/mBcbbyFd53IWUv46wLsVcFR8b4Xxie5SrMp?=
 =?us-ascii?Q?10YfK1+uYiT5Xk0IgHrPAZrAElVvFioj3DeU5xMT8njRJyqzca+4HIHlrUYR?=
 =?us-ascii?Q?HxuG4Fj9aGNAZeZtemqU1p3mWPhXlq1K0h1lxJzs1+7iLThsDfl6/wxCMa1W?=
 =?us-ascii?Q?sQhayT+rqFq86KDgACMBizqeMt37Ct4tVNmNdlHcygAnGh/ofsq2olNMzNkD?=
 =?us-ascii?Q?wDAJKqxb4F60OYKN2E/Z6WRhmPdz+RTgvXEFI7/UIOST2fADjCgdBikXAZ6y?=
 =?us-ascii?Q?mmcuz07H/24DRWd4V95rGu+TrUdxdn1Hqhp5EkOmgNdCNf9nHsSJta57s7MU?=
 =?us-ascii?Q?VYT7lQXLoxgifNtBP9Y+wd/Dx4tlKTNdphGo4hcpi8n/nmgRWtP4JcEALcfK?=
 =?us-ascii?Q?8pMWdsjVL3UHge7myrgsY9TTywBwKuDCaK8y4YWysdCR+zLhz+/u0R2cFxLf?=
 =?us-ascii?Q?Etvnj/LEhXC0AoAKEPU8nhGxvuPGIycQ+eDtzgVUL14srKVVl2KPImjnopbc?=
 =?us-ascii?Q?XK9pKZe4OWupK2DJC7vK4cqhHZs5W06OjeawZuUkmNuxVnMqJ+RWQ3p/QJeU?=
 =?us-ascii?Q?3vbOo5va30ro/TQEAC6LiJUAzI6jjDFOqKFNaU1e3jmNcxt6YF7oGpEajgL9?=
 =?us-ascii?Q?3RlJz8bCxuOX09JJlrVgiPOT0G8TEdSGxuvsKTVM2Xey6bMj0JELloCExfvB?=
 =?us-ascii?Q?VP8hkJa1R0zh796Omap0fBfAqrNrCo2cyeqhXOdMAg8nMqD9LAqj+vz0LBIF?=
 =?us-ascii?Q?D7agDrA8wcaSOOZTbuvnQnWe9U0g+L602V1P5ujqCm54wEIE+i/BQGv3M8LC?=
 =?us-ascii?Q?vmmOdQsbXfMqD22PYIFsJyxNEWbmdAqq3uy/XcLCEM20YZ4B5JPTQj3F0hMW?=
 =?us-ascii?Q?LjJatl5Cak0rJpRVl8xrq65k8DX7Jg16q8q3+fVGk6Bq/PuXfH4OllT/KLUS?=
 =?us-ascii?Q?rygyTiAa9diY791Mq57ZEFwOPBno8NU38pQS4pUoXXbjRvPF+XuOQjV+h87F?=
 =?us-ascii?Q?xFwjTJiROfCma3Ij6BNY+W1yZJHRBZbKNEE/Qtg3YCAHbidPSwR0TV9oJZsd?=
 =?us-ascii?Q?wx+0jCxaeVL6wrjW88N54nCEzYBgpCQ+Uqd4629c7w5IIYDG02axURaGb31a?=
 =?us-ascii?Q?GCftra6wvc8jBGIM87cK5fX9Mtrah2tYxqg2HPcfGQ4EDctPfxjtcyveGGZQ?=
 =?us-ascii?Q?ZPoFp9Lkf24iBm9dN/ARnUkP1HNKF7gNCY36HfENz5NkPwsQzbc6NCcU9qDJ?=
 =?us-ascii?Q?AuYQ7N/6fgWszPBHmSfgCQTLmHOgeCMEElbszzCcXmAa80xQob3JEkSsc5Sr?=
 =?us-ascii?Q?0B3k32ZOow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: N/P3wyhqqI1uYD8oB7F+KzWTvGF3p1l0fP8md5F6u3HJnnLqBueAsXSgEanxjpryFJWyg4uJ6KRKSnA7ZBUSzT36VKfjqab9H5Y/x6imRpw9QpwqiLx+4rRqWrDMOuEz9PUlizjDUhLyw9linoW/z/zavy3kW8tkusYFUYq1ozLFZZPl/+QJ49QH2yjX50Ge9yqarW9dTIXzB6w1UkkkoPUvNz7GQWAV44FMPKMgd05NUJM0KDuYWMeNIswj1DhmVsjYbHyhtoY80TFtzQ7nDVeX8wGuztUcc3ZcDMiORcMx3Rrfppdhdq8FfRMTAN7Ln1dJrum+X9HpIubCte2zLQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e05e3557-15db-47b6-dbdd-08de9a4f92d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 17:59:28.9052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MXpTp4dewuY1YjhkAG1/vYe4n/j+CIAOQzZrRkowBiRfO0f0VqN7xGHdn9XT2N+KRXrbC4r0Zf2e+NvRfE4VJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4808
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CD3F73FD624
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Srin=
ivas,
> Vidya
> Sent: Tuesday, April 14, 2026 10:41 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV=
12 UV
> surface offset calculation
>=20
>=20
>=20
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: 14 April 2026 21:13
> > To: Srinivas, Vidya <vidya.srinivas@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Srinivas, Vidya
> > <vidya.srinivas@intel.com>
> > Subject: Re: [PATCH] [RFC]: drm/i915/display: Use ceiling division for
> > NV12 UV surface offset calculation
> >
> > On Sat, 11 Apr 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > > For LNL+, odd source size and panning for YUV 422/420 surfaces is
> > > supported. However, it requires the UV (chroma) surface Start X/Y
> > > and width/height to be calculated as ceiling(half of Y plane value)
> > > rather than floor. The current code uses (>> 17) which is floor
> > > division. For odd Y plane values this produces an off-by-one error
> > > in the UV plane offset.
> > >
> > > On Android systems we see PLANE ATS fault when NV12 overlays are
> > > used with odd source dimensions:
> > >
> > > [  126.854200] xe 0000:00:02.0: [drm:intel_atomic_setup_scaler [xe]]
> > > [CRTC:148:pipe A] attached scaler id 0.0 to PLANE:33 [  126.854617]
> > > xe
> > > 0000:00:02.0: [drm:skl_update_scaler [xe]] [CRTC:148:pipe A]
> > > scaler_user index 0.0: staged scaling request for 1279x719->1340x753
> > > [ 126.854837] xe 0000:00:02.0: [drm:intel_plane_atomic_check [xe]]
> > > UV plane [PLANE:33:plane 1A] using Y plane [PLANE:123:plane 4A] [
> > > 126.854926] xe 0000:00:02.0: [drm] *ERROR* [CRTC:148:pipe A] PLANE
> > > ATS fault
> > >
> > > With Y plane width 1279:
> > >   floor(1279/2) =3D 639 (current)
> > >   ceil(1279/2)  =3D 640 (required)
> > >
> > > Change the UV offset/size calculation to use ceiling division by
> > > adding
> > > (1 << 17) - 1 before shifting. This is a no-op for even values since
> > > ceiling and floor are equal when the dividend is even.
> > >
> > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14
> > > ++++++++++----
> > >  1 file changed, 10 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 7a9d494334b5..c455bf92ae99 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -2139,10 +2139,16 @@ static int skl_check_nv12_aux_surface(struct
> > intel_plane_state *plane_state)
> > >  	int min_height =3D intel_plane_min_height(plane, fb, uv_plane,
> > rotation);
> > >  	int max_width =3D intel_plane_max_width(plane, fb, uv_plane,
> > rotation);
> > >  	int max_height =3D intel_plane_max_height(plane, fb, uv_plane,
> > rotation);
> > > -	int x =3D plane_state->uapi.src.x1 >> 17;
> > > -	int y =3D plane_state->uapi.src.y1 >> 17;
> > > -	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> > > -	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> > > +
> > > +	/*
> > > +	 * LNL+ UV surface start/size =3D
> > > +	 * ceiling(half of Y plane start/size). Use ceiling division
> > > +	 * unconditionally; it is a no-op for even values.
> > > +	 */
> > > +	int x =3D (plane_state->uapi.src.x1 + (1 << 17) - 1) >> 17;
> > > +	int y =3D (plane_state->uapi.src.y1 + (1 << 17) - 1) >> 17;
> > > +	int w =3D (drm_rect_width(&plane_state->uapi.src) + (1 << 17) - 1)
> > > +>>
> > 17;
> > > +	int h =3D (drm_rect_height(&plane_state->uapi.src) + (1 << 17) - 1)
> > > +>> 17;
> >
> > The problem I have with this is that the original >> 17 is already too
> > magic. It divides a U16.16 fixed point in half, and this is completely =
non-obvious.
> >
> > The commit message doesn't even mention this.
> >
> > I think this needs a clean separation between the division and the
> > conversion to int.
>=20
> Hello Jani
> Thank you very much.
> Thought of using DIV_ROUND_UP(value >> 16, 2) but it would lose sub-pixel
> precision from 16.16 I guess. Kindly suggest.

Hi Vidya,
We can maybe divide full value by 2^17 directly and do the ceiling operatio=
n.
DIV_ROUND_UP(plane_state->uapi.src.x1, 1 << 17);

This should preserve the sub pixel precision and also ceiling gets applied.

Regards,
Uma Shankar

> Regards
> Vidya
>=20
> >
> >
> > BR,
> > Jani.
> >
> >
> > >  	u32 offset;
> > >
> > >  	/* FIXME not quite sure how/if these apply to the chroma plane */
> >
> > --
> > Jani Nikula, Intel
