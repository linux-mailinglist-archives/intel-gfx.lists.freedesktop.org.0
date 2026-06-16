Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FHe0CJNCMWpxfgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:33:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8BE68F5BE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:33:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AvKWfTUS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9681A10E1C1;
	Tue, 16 Jun 2026 12:33:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AEF810E1A7;
 Tue, 16 Jun 2026 12:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613198; x=1813149198;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z/yNAb+Cxiaa1IDHxvariybH0s4YF40OQbsJ/MuRg3I=;
 b=AvKWfTUSjk4D/pm1v3FPGqAhv7uOuP6kWToB4qjLuMOs/tLzyDLbTTMi
 G2JO3IsEQS/0p6qiJoNIq9EZaRmB6SfRwHz3EKk9CahXG4YRbmlkJFP+p
 bBpkIawIZIVlnpVcHe6FvlBzMkFHsB5pG5mYMqtn6W+y6u9JuPFOB27tI
 iY83TywlUL5rD118117/bkuFeTckynZOuZl6slYS3OuNyHjKqiZelOxbZ
 o9j8YxCmHRttAKexWqXpzcpTR8TE1JU+H825YCePyrihMNcYBvKnTaUdk
 pjEd50+ezgowy41LpTPFp2gdUt7fWwUwCoiDX5ovloUUYSuf4FpBT9Kl+ g==;
X-CSE-ConnectionGUID: ZrFpvEvPQGiOQWgyFTShvQ==
X-CSE-MsgGUID: /pCoE0oSSXqdjPvxE7R+qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86013981"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86013981"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:33:18 -0700
X-CSE-ConnectionGUID: 3Ov2J8BpSfiBtzxFCxdkYQ==
X-CSE-MsgGUID: w5TfVCkITKKom7eiFkxyjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="246873773"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:33:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 05:33:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 05:33:17 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 05:33:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ireO3PSNXxw8TN/NCduxQrHVkn/VDTNr4RZuEehKW9JknLvygOCFYosOHBqRiUa6K7t6oxBsAjuxyhcFZ18jKpNu4vioCsOOdMvGo/PArnrmB7tznnMcSKd0P+wv9qHIstYBmpskto+/2sEDd2Aaidr+0RB7tahaE11IYM/88hSiiNwWKVKcbKzJwkqzR0ncas5cGkvUhbLoW6IwuaUifPtK0YDGvEngNZNVXDQOdV/wbXPzGrijw4j55yheFQKSaIzwasLKuhG/eDMF8WKKF4EIpTVBo0SPKcY8kimu6swL5CED0zjYkDWiKT0bdzA9OA0QoPnPAaPFjK79CMrOFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DlVd8TJy66vZmjw8Iet2BTAUXFlgUjH7eDdOBDWoJw=;
 b=BLvzetDO1vBtV+oim6hH3pLTgRulnm0SUNTQxc3kEhxi49fVwTomWxgI3HHinSt3mfIpbFRTJALvoENIvcsFlvKQwIWMSS7MU56HKf0unccxaFpFgz0DLprN9zXzqSZt0XFlCKQ4wWolz+nKsZiiyJS1zPPFwqWOXbXm23HIlXR4P1n0jie/E/BQdG7pYEk1Savx66GIzhKDEFsaoFZHKzCW8fDlh5jyFtxUBAodJSvwvZH7WWGOamOzRvF+rwjM2134DGo4y8Qf8X/eyFhL1YjMwT5/4/gbbU4XbwQEwJboJSPquVSlzJOvuyvdI8a41uOfZBg3wG8CgdTrIVLqaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SAWPR11MB9922.namprd11.prod.outlook.com (2603:10b6:806:54c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Tue, 16 Jun
 2026 12:33:11 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 12:33:11 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
Thread-Topic: [PATCH v2] drm/i915/alpm: Move the check for PSR and Fixed RR in
 compute_config_late
Thread-Index: AQHc/WmAzSY1N9+5CEmtuSycghapBrZBHXUA
Date: Tue, 16 Jun 2026 12:33:11 +0000
Message-ID: <DS0PR11MB80499D7BCB69B9CEFBDE16E7F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616080627.2136659-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260616080627.2136659-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SAWPR11MB9922:EE_
x-ms-office365-filtering-correlation-id: c384e612-2e94-467e-b6d8-08decba36d9a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|3023799007|18002099003|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: TfTt6AvWUxZ+WuV+I3j0PVHM/2QX/z7z2tX/c+UIEE9obU9MkI6uqEZ+hxVMMEOF70sYcOXMpQEv7EDZDldUZwz4C0m8NsiBTCjpx5x0jMYAzDUyn5t+kkOD+yNBTlgzB+O7CevzuZ2tWWwMVFyZQ1aMPoMvj+3LWOtLHfJMcjEAXF7Dy2vEpuiX9JQ/UYker3L4QPEnTXnLVgJQkDIvrVC9XD0litBW2U6e29+eLlXFF9AAlQFW8DX9PsowW7iiws9UoZf8UobGlEyBrbtcdRIR9CCf6i6BQAy97SZz9lwaO3uhLng2ac3rBOSyZSCMhQ/36dq5TmjEPgV1WTtDATZ3PklqurdkgWIw2Kmb0rfocbFprOR+THt6w6gk8g/5xQC/RF2coYXVCFBYY6+FkzQJMi/r3DJX8B/dauSUmO7/PddFoaJOXJAnxMSAsmjBBOL63CKVGgnXhRvd6kSQ56Fc1xCuiPOmzno+Tn+nntOakg1HNnuHKhT0q3SZJ8Elw4DQk1vGNaAMpYsGKSXI+MkMC2gBajHMtIbJTphuudwfS+PLPIJKXxxSdDTURZ23KotcnFj/I/qS/S7ZtETgaELBw3Qne4W7X91+lWiwinTyO4QkeeKAvSgRuPKWOcD+olBbk+2aqnzuLNHS/liLWuef2CyoA1fWRzC6bbnFf3MdzrEEZxbwCysJ8x9Py1SNMmSDpWPCb2cB24Hm64pqu9K8YX+5sF/vQHXhvye/GKQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(3023799007)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zwKuEdDyGAJqin8od0l/fE3OOa+z0V8Yae32//jaeRsiudmBo3wKCoZBOeiz?=
 =?us-ascii?Q?yMuV6iObFfPHSb703HEydaNpwnwMD8JHj5y3lyKVdCaTE0oTGum5mJSE8yMI?=
 =?us-ascii?Q?cQl6rZWWanNrsbyf5NFjm3QoEn34+Oeg3Dohy83KONb72nAUbLK99EMgBc9p?=
 =?us-ascii?Q?zoy3EkYijIKxylHm80taooXB6/ZRNMqPjhiAm3N/kiFG4Jb5rpKcRblBFDTb?=
 =?us-ascii?Q?TDXd8wvp1iNLH4ljj+BbQqZr8JabrjnBeEh3h0Nd1S8KQq6FVxdUldKDVQpI?=
 =?us-ascii?Q?ZXHC/tl4r4p76JQ7/YWAajZVAmOV/Zl9yLL9anv5gN+Nmr34pQj85tt7V6Nd?=
 =?us-ascii?Q?qlULL39T3HofPIMZIL/7zK1SSi9EHnaOXX1Nmye5rFzp/oWAWogS1S3YfsfN?=
 =?us-ascii?Q?LBScaYupLGcd+iaqvVL1tI9aLb/eUL5IrXoBZ7u/r/rIzckJeTtI8SyRGshY?=
 =?us-ascii?Q?I8Qfyt3pDQEz1EUa32NSbwgVwLHWRxvb1fdBZEKwEjwMFy7lGxa/MFxWbUmi?=
 =?us-ascii?Q?EtXKrkTIcwsXdxRjMYAa+wzy4pFsqVz5hzeJkM6Ke0FRgvSA13QHmSm2kd0f?=
 =?us-ascii?Q?S7FGhYXMOCWhU3liARA+vynKvR8M/+ITO5wWm+qTU6ohQIGHIEEW4vIeU0ct?=
 =?us-ascii?Q?SCXCAUsH4grjR3LUDh/rpmLLb5BWhgraqnZPp4bgZ6MoTEKWmlTJe/nC3pj2?=
 =?us-ascii?Q?OQrLwioR5/KR0EuyA64vR2mrTsMB0/IODTiwbTxRabio+Kha9mL2cASM8SFm?=
 =?us-ascii?Q?MsYFd3tBLEQz5Nvmc9aUiFTOpB3bb4/w1C2OEMGCPkMCIx7t6C66Teb4lZJH?=
 =?us-ascii?Q?DwDudIUkhNJUZiH7WZrK88A6us008bjI3tSr5UyrH/9g6vk9KXdSxzQvKsYy?=
 =?us-ascii?Q?FAgWLOtxKZdDoD4uZoRKOB7ytALe5Pqn2IY2+TwQh6nr9Sl46XU4ME2OKnAW?=
 =?us-ascii?Q?0xdacY7Br9bUISyR2L6ZYW939Jyh/Qcc6CRfVhX78tWjkxMposWgTbPk51vP?=
 =?us-ascii?Q?uFVGVShR+OfhCRoBxUX9MSkBiSn4EqEMcm7GfN7pMQrTARn2udcjYy5S0w+n?=
 =?us-ascii?Q?X3Jk8gDI/OMgA75K1UeJcqo9OBncyvriUFtpvWNFOfkTRyTjPIbuGPKIeJaB?=
 =?us-ascii?Q?vSTR5+5pzPRWaEvFEeu0QuVBSSVwv0Ff+7ffeMriHj+5LOpNvTr4V2zMIhvv?=
 =?us-ascii?Q?osttmGJ+jUBx5q+QdMTxDOvCLAGB4I2HC/G4x/IfhQKhXkkEi92TO84kyTF0?=
 =?us-ascii?Q?ZXEaOdroyMwjJkswegoL+0RoD219eEHyZVbDYg9Va8eYMeAwf1F87zP2FQfW?=
 =?us-ascii?Q?nkWoWYdTP84gdQ0ENRlKvDrnIJ3LRXpsrKbv9EfsBhAo1aO+eCioCyaVpFp1?=
 =?us-ascii?Q?HGZoHcqer0STbIvDf9VBm4KPuFADYqKSy9d6FNCaGYQVdEOIGJXQrloUIZui?=
 =?us-ascii?Q?8J/4hahyT5OkpRk91iUEDmSBsji+5SgVdqWpt4C+X2/cPT3sbumixuS2pc4k?=
 =?us-ascii?Q?hExgU+MbgRlFwR5sES6c0H8a/T8G88bqqasitWWFgBHp2WDoqFr0suVVhhNV?=
 =?us-ascii?Q?Ewz2QHPmAFfH5ap+d3x+4wbwEB0NZkHv60CmplqVvOnpic/WBaS8jrPwAyxX?=
 =?us-ascii?Q?qq8LkVOiXc87FFS8Q5aiiZZ80Cl4fMkZONWzDeNWQh1Oqz5aH67jL3Us4JOJ?=
 =?us-ascii?Q?eYi3AyrahX0FkH/Jp0ZjJKG95gDnzCHN8i2hCDLMxEyIy/0+u0pdwxWeV5yn?=
 =?us-ascii?Q?0wdeT42b/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mGJLefk21xkl/QFQgY4V4AyOVyxnTXTYJfcLIqTn8388j8aypPlioNisEKD/fEhNeoe2DWy59ERxIpClpcjvdUTPbbBYjweIXNStuHgK7xc+MMYyOVJ0dO74lcmC79bQk9OSXBHhI2SGRR85zrjTJyawPuZVyqlwqzyULxye/rerDjBm8+lJBLhHZEg7ydJ+ER3THe+5Z1G6uYS5HDX4AV9N5bTWrH3sCVYpia7vvGQPakgCQjop0gCEk62xkKxaXeYsN2tMiPKq9k2DZkwHj3rQ+m0LTiFqA3bbZJyKmLQ2EPWgdTV/A+9Rtcc6OEFYuRUfswfFl1DG8AXAp4ddVg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c384e612-2e94-467e-b6d8-08decba36d9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 12:33:11.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Cl0o7nfNZVQUqjG5GFz24ndyiu75JLbs8m4SRqeCX6Iwrr5i4NsgtSxpuF34us43Wx4DSVFpAWm0sOJzEmavQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9922
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B8BE68F5BE



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Tuesday, June 16, 2026 1:36 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH v2] drm/i915/alpm: Move the check for PSR and Fixed RR in
> compute_config_late
>=20
> With optimized guardband, we need to take into account LOBF requirements
> via intel_alpm_lobf_min_guardband().
>=20
> Currently, we set has_lobf based not only on whether it is supported, but
> also on whether PSR/fixed RR are ON. Since these features can switch ON a=
nd
> OFF seamlessly, this may cause LOBF to change, resulting in a change in
> guardband requirements, and eventually to a full modeset.
>=20
> To avoid this, always account for LOBF if it is supported, in the
> encoder->compute_config() stage. For this, allow has_lobf to be set
> irrespective of PSR/Fixed RR. Later, in the encoder->compute_config_late(=
)
> stage, use the PSR/Fixed RR checks to set has_lobf to the final value.
>=20
> Move the PSR/Fixed RR checks from intel_alpm_lobf_compute_config() to
> intel_alpm_lobf_compute_config_late(), where we already account for other
> LOBF constraints.
>=20
> v2: Reset has_lobf if psr or VRR is ON in
>     intel_alpm_lobf_compute_config_late(). (Animesh)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index c6963ea420cc..991de6e2456c 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -291,7 +291,9 @@ void intel_alpm_lobf_compute_config_late(struct
> intel_dp *intel_dp,
>  	if (!crtc_state->has_lobf)
>  		return;
>=20
> -	if (!intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
> +	if (crtc_state->has_psr ||
> +	    !intel_vrr_is_fixed_rr(crtc_state) ||
> +	    !intel_alpm_lobf_is_window1_sufficient(crtc_state)) {
>  		crtc_state->has_lobf =3D false;
>  		return;
>  	}
> @@ -343,11 +345,7 @@ void intel_alpm_lobf_compute_config(struct
> intel_dp *intel_dp,
>  	if (!intel_dp->as_sdp_supported)
>  		return;
>=20
> -	if (crtc_state->has_psr)
> -		return;
> -
> -	if (!intel_vrr_always_use_vrr_tg(display) ||
> -	    !intel_vrr_is_fixed_rr(crtc_state))
> +	if (!intel_vrr_always_use_vrr_tg(display))
>  		return;
>=20
>  	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
> --
> 2.34.1

