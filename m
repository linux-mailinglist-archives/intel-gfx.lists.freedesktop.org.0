Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JcwGW2Lr2nJaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 04:09:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AF72449A4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 04:09:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C52110E628;
	Tue, 10 Mar 2026 03:09:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GLLQB/n4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD0010E628;
 Tue, 10 Mar 2026 03:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773112170; x=1804648170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zALEI3gq4gh3EXKua0K7upYTR/o/m973g6AI6vIFj68=;
 b=GLLQB/n4SXEom1/OIQBVAxKXLZgO3VQ890apd+CRSYkn0ovhiqG7XUYn
 JxUD7SVmksYk5+Rj73xUmF0W5eusjdHFVolR4K6Q908JI8dod+msI7/mR
 VSgxqKU8cZrNa4FaU99nbG1TuNOb9No1qnH1VeaWxGY2Rwfw52ytVJOqB
 9rDL96GA22Q8IEYPwqKFPHzp88WvwrGjPI0JSPyHmjRaMq4ipQm+uJIwx
 vbho9kFWAG5iGbVNXxUnR8GHbCDMx6/Xo/i+/qbqsNzNySLjg4/12bOlP
 p95t6Q4jcsHoWYjzVZmLw4UVHMIfh7vm+eJUuRr7P8Pmq6BzWtQTQaj9o A==;
X-CSE-ConnectionGUID: UL1PYLJgSPewkiDJ7oc+fw==
X-CSE-MsgGUID: gHwqeFfpRdKsOBdlzyv+Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84785586"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="84785586"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 20:09:29 -0700
X-CSE-ConnectionGUID: e9MvTKsQQzK/dCOfz3aixw==
X-CSE-MsgGUID: WAvPciqHQouV1lwQvDUpzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="242971732"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 20:09:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 20:09:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 20:09:28 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.42) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 20:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KCpiHq5WGNyT7/A4eTTaYlzPT8z/zbPsjMzUMroJjSjM+BhIgVgmRhomVsoURaDAf2KsBJFznLGCVztjpS5rseksVDXfJa4g262DM/L2shXhVSTsq2W7a55TnKKQqwc7svL02EoJdr5I5yxDxy72GVBE62UKSmMSLtfmYn4jBg8fuv+FCmwafdKZ5TMSbecd7tG2+GUKWeKUzKCB5SQbRLtUXkrSCEQR/F3no8zZEFqi39BnWSkRuC4nFQyHItgJutcxFnglqMUS8NsRn86SCBMET1KqFMVaM7zMq4u7mJeuz1hTmjgqMhp87oMFHLDgHFygt1U7xv1SDDIHrHlzhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCBwqfRntSQom3iLgent+01TTaBIKcmqrpoS4iR68QE=;
 b=SUKYVwCcW2uzr0C1QXe5F/tzPnuozADwVl9z7kD9/uY8yzbRJgHrGtI5HB63GMtbSjihmIjOM9Ph0SMrGiZ+B2pQVfTrWpiq509YOtMEa5R35iaOdruv3AzvepzV58EQZwIj2+VIcRXfBUyWKP+9O4Uc4sLb8RmaQlh7yTKp8+aRETO9MhYlgpaXKRseIpUrAOatpsQ34kQchN8S3KP/CaIWqBhQ/dSPtxpg9IQGoJ7YHpzMFnS1QZv7eOpoNswzhn9Po5TELUISqBgREgMeQrM16ryK1lXuZGlO3oAJNw9LwrPUj6Qv1STgoyicsRbEqUaiEnteYkqbXBk92xiEdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4848.namprd11.prod.outlook.com
 (2603:10b6:a03:2af::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 03:09:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 03:09:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 02/24] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Topic: [PATCH v2 02/24] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Index: AQHcq9jkWiLSR+6Rr02eLV8MMTyzvrWnHjYg
Date: Tue, 10 Mar 2026 03:09:25 +0000
Message-ID: <DM3PPF208195D8D228BD743461EC0B6CEE9E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-3-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4848:EE_
x-ms-office365-filtering-correlation-id: f26247c2-c87f-4a94-d011-08de7e526fab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: w5LEOCzp9HFR7TFFPGB870xI+j2512mgydI/HBAIH3EK4o87KkfwaRBdGFY0pexE0ObbqeiPNydHxLqLC0EkDrVhYhmMu2SiPJjIVkC5azbkHrkydut1D7O1dmcwa6HvCWU8tOvSsuHYaCJZV264zqbc5FOVotlyiNyNuTWHzkBW5XhFZNYJn6MH9yjwPMnE3LMiriQuGO0Z8eKgtbneiIwiDzcoefZlg/s1FdRkahGej4v5pOkTb6Q25yoLNFyi5FiQ7VQJ4oDQIhvNz+bLpMOgg7jIdqIMLnT9C8sc/QcCM6jpL0L6NgsvrYBG9mw82s9dhxkQBPnmyC9xZK8umApHQi8/rtcuQmmU0BBGlHJKsIv/4jt/v3JDYCie5klkKnF6ymN8PN0BxfWdG0jPA9NocU4jyg3bBznxjglCsJ9xo4/QODLYGszb9AKZmt4skTQiUM/jRWxKUPCnk9z3PnGYnja6s31F9f/+6MYNnQTRZbl4jniiOedVIfgA/1Lzcniymt7SgM9rXV2FztgIOFyFppHVo+UQI7LfjyO5nmot3HYIKsoyxL5d9wqTMty9NX3IqmHljiEb+xl/zcUDcbIzjMUTfzWrq7LQ+AmCxLbeKTPv0OiX3IqXQGQsuClNKPogHTULoe5BoMMLof0CK9j0zpoLAm4YrdZCRT/xNCtve2PpS+2UB39oD1pQp1rmKd2PPnVBpFd5XmmNwqG8g5vSdSRVT8EuY/VIKPAlVgwXOVjoHewj7I4Qgd25i482eofhCmQBjVqnnaoyIIJ6YPjeCNMcfqPILwAFr+RPVYQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jwP0cq7/Ykt7vRomUtV51Mn3y6fe/9ZyIKktoGIFRV4TdOgSE05Sb+GbtHnN?=
 =?us-ascii?Q?/PhA5f1L3iq3YsE/NPWmgiJW9Z1wWTj0BH2iphpF2rokxkV303A6qPIwwcoA?=
 =?us-ascii?Q?aUo+btFG5kRHIKVS/RD1Em4ed3vNfuoNKyMV63et7G/HNVjknkNKVadz1PcD?=
 =?us-ascii?Q?AesnsiOWd07szGqQEVDOb2xE6XjGv0VeFJHlMysv1KHS+WfYUmUpPstJ6ysf?=
 =?us-ascii?Q?7G7esDwB0oI6HEg2gzCh+O+Dh8LbVgXdTKCQ0B8Iw8v13rnz9Fv9Wk8FMtY2?=
 =?us-ascii?Q?J3icxJ67D91LuZzugmoC4EUtMkUHSyTmX5W4rgMXk28eIand3cG+QDxnMYUB?=
 =?us-ascii?Q?y2uSm8xR2KJ1CxMaiON5UNhjXhHMA3tNCyv3muncav2bE/38BwhhjP14MCmQ?=
 =?us-ascii?Q?zA9d9RwnI8+psIVUI7f/0c8aJSigoHhCrpRXNsGq0mcdvVLLkQwXz52rXctW?=
 =?us-ascii?Q?67AuMvcxax6xsTUGnAJYLOt9G1jHR0tgIafPqrTsR1myDJrNJu4dKot5n9ON?=
 =?us-ascii?Q?UbjLI8TYUU7kHqpAcHBKW3VYctdzMtwUod0bcQY1woPBPtiWxbAMvDzw89Qb?=
 =?us-ascii?Q?L+UamWsXyfQRbiG9+c6TTF2MCi3KbZcWamwcdoMHpbxmmYac/tk7e6QbvlX2?=
 =?us-ascii?Q?szRqEP6CCoLkP24Zh3whp5jJxAMT8w9BkqEtPBGporJPnnLdvJ8LIxpsMBRE?=
 =?us-ascii?Q?IyLOPTNMmGD6lyjOYBCTi2c6cbFzUli+3NpXElO1lLdfjCBipGGJVfSbwSCF?=
 =?us-ascii?Q?TudzRMBndo2gF6sDoa+zpBCptLNR+VJxQ/tlkZlcrHsrXETNjF8GGlx158n2?=
 =?us-ascii?Q?ut2b58hLacALMmYy5RqdtPwV15e2pDz/XcY3iVStSHAq869ErmiYwJK/QSi5?=
 =?us-ascii?Q?ZIqIPgUgNg/q5d+Mtp5TfDN2HVMZOthl+s5/qgljcXq7HmQylilELzZ9L8PG?=
 =?us-ascii?Q?mLUb3cHVbmJTA93b8rYWd/b/1ZGEHHgoYGfCdJ7z3cMl2fkZuUcc3ZFGLmDB?=
 =?us-ascii?Q?cF6ZgopoBtmmxEaRXCvid40Giw/of2KOzoGfw/oZkXp8mvF247+vuaHnp+cD?=
 =?us-ascii?Q?FTU8MekffvkyOEeo8FUygkriVFUa610cXPiYe2fuS6Z1i1ZFhgOsaPuctMTG?=
 =?us-ascii?Q?tblG5qNar0vScR1jVQP7RyVs6/X1a9soKcKSVWIgrfkE5WBt4sEYpgRwOdUa?=
 =?us-ascii?Q?VL17JZ4MEdpUlS3aPsj5tk/e7xKLK6O6XxbZyMGX4r0zU/S0ai4+un0aMrTS?=
 =?us-ascii?Q?qknd/L3qtiCe8phsaOMA1GxXiUZ2NA3EPBzDUA8vlDff8rCGu5oFTKn5fSsM?=
 =?us-ascii?Q?4ao8HLA/r8XzfvvA+AgqU1Zy9N/Zo61v0/O560zPUaPG8QR/LLeCK2FqQ8uB?=
 =?us-ascii?Q?KwJMPAumMsf29lIATTYspw7pnno190B/kMxqhABbGrz9k9E+u4RifC4uYacT?=
 =?us-ascii?Q?wuV/6e67em9jZxLHMYjKzSuFOta3iv6ooYmCMh9ErblMuDPWxMvkUsUc/KYk?=
 =?us-ascii?Q?hhYaqO9/87LWs8qcU9Jt59ALYVkJ7o9BB9nojKSIj42cyJWuFYXshMLLehiQ?=
 =?us-ascii?Q?J5LrRoMhEp7NHc7kbCYDq1hKg5yCyRun72rXFB68T880U2DkeY8R/zx6O4hR?=
 =?us-ascii?Q?69AtG/N6A0kWM/kVfuJjFwNHqIsB3UOqN8Y8T6NUefS/C1+PwkRXWppbNln/?=
 =?us-ascii?Q?cMFkOtb0a+P5H6Bi3mKh3irCeWb3WoCC1BeFIpMJamO+tJlgrC/j2A36k5/4?=
 =?us-ascii?Q?ASaitoXwoQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ew4tLTibED+aUWjQK4dYFrAV3SN+WUCz6GqQW5pFThTdmXRLiAFJOPhuqxzFl7ZBwyV251XXaIY//UqK0QxBpCY19YH65pcHurH/edFtAZi1qTOEnAZxpXiaohAFZGquchdBKTAxYtMYUtvB3arLlIUX7ZsGSxLh0E0RxTh+S5Hqa0tKv5ebGOMyEZm9TCXhr/gKq85SS6ZjgAbFg4bXSzgvDHCXD4FJQ7Jp0zSJ4+GWvGxcw30q6t/tPfPUahmy3MKp/GRXE7tr4wf9RRuIaJkweOpCVfQnBB//MPYl8YKPmMf1TvOoOMYXSjzPPCcFoUwkgacLCGfQtlM41nMhBQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f26247c2-c87f-4a94-d011-08de7e526fab
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 03:09:25.8877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NPSKh9eX81NHymxL/lmlBddeUWKRW3W4CZIRDgX+Mpp24t8/ojYZzzK0qCEAkvD1mWJP3xuO2CQhCrBN1pIhaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4848
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
X-Rspamd-Queue-Id: B7AF72449A4
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 02/24] drm/i915/lt_phy: Add check if PLL is enabled
>=20
> Add check for PLL enabling and return early if PLL is not enabled.
>=20
> v2: Use PCLK PLL request to check if PLL is enabled (Suraj)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 24 +++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index f768804122c1..8fe61cfdb706 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2176,6 +2176,27 @@ intel_lt_phy_pll_compare_hw_state(const struct
> intel_lt_phy_pll_state *a,
>  	return false;
>  }
>=20
> +static u32 intel_lt_phy_get_pclk_pll_ack(u8 lane_mask) {
> +	u32 val =3D 0;
> +	int lane =3D 0;
> +
> +	for_each_lt_phy_lane_in_mask(lane_mask, lane)
> +		val |=3D XELPDP_LANE_PCLK_PLL_ACK(lane);
> +

I think you forgot to implement the changes here they patch looks identical=
 to previous one.
Maybe I wasn't able to get my point across properly.
Leaving the same comment again
unlike CX0 PHY where we the step is
Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK**> to "1" =
to enable PLL.
That is not the case for LT PHY there we request and wait for ACK on Lane 0
Program PORT_CLOCK_CTL[PCLK PLL Request LN0] =3D 1. This will assert the Ma=
cCLK Request.
Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]=3D 1. This is the MacCLKAck asser=
tion. Expected MACCLK_TURNON_LATENCY is 100 us.
So all we need to do is check PCLK PLL ACK on LN0

Regards,
Suraj Kandpal

> +	return val;
> +}
> +
> +static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	u8 lane =3D dig_port->lane_reversal ? INTEL_LT_PHY_LANE1 :
> +INTEL_LT_PHY_LANE0;
> +
> +	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display,
> encoder->port)) &
> +			     intel_lt_phy_get_pclk_pll_ack(lane);
> +}
> +
>  void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       struct intel_lt_phy_pll_state *pll_state)
> @@ -2185,6 +2206,9 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	struct ref_tracker *wakeref;
>  	int i, j, k;
>=20
> +	if (!intel_lt_phy_pll_is_enabled(encoder))
> +		return;
> +
>  	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
>  		return;
> --
> 2.43.0

