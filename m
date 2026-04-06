Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADI4GPcO1GkbqgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:52:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173EB3A6C6D
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 21:52:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD55310E2CA;
	Mon,  6 Apr 2026 19:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5KIpzXz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28B010E2BE;
 Mon,  6 Apr 2026 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775505128; x=1807041128;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gu801Ul03bfd5C70m6JsLFLqTVvXkXnYiql/tCAG8XE=;
 b=K5KIpzXzEtBrBc/64ArRxEpuOSyPwP3cPf2/I6Z6nF79r6RfsSc+THkl
 uu1q7oH4VwHALTGLz7T3rcrigvdhG3vDWfGygdzRToYlQgrWNMergdB4s
 2iyjycWvZzL1JcQsLBEF8vBA7ZjBQLD+io7pjW5ZhTF3tsx5jEeazPQ2W
 7eP4GasO9ki3sz+xOtTwJVYyBNiPG8gGOz8puLFzo7wbrTDU9+vsusq6+
 LAH8nwZc0oPE/rymxBf5ZzAfaUNjomY+13EU5nUHOJ705thWOV31IabSw
 Clfy3jxsSYCpoZuUOWLI3KodYCizP0gt/KKzM5WWjPFLSt1URWqHfLt48 g==;
X-CSE-ConnectionGUID: kzwPeiUhSoGqFww9NIFlqg==
X-CSE-MsgGUID: JnGn/tegTdmmbyUYjAjMog==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="86751294"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="86751294"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:52:08 -0700
X-CSE-ConnectionGUID: AF/T0K2iRFWpIy6yTcmGWA==
X-CSE-MsgGUID: Ga4DS8sYTFC7GwxYQQbX1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="232014437"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 12:52:07 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:52:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 12:52:07 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 12:52:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CC0EIX8l1qa5Ic0H/lbRWjDQhNSlh48V15H9xxPg1Ry+RaLmXrZza2fjNwq5tphh7v56+aF7bvr0FabmCpLDggrKo/DMO9NRqidBun/w2Q30x3Um8MNrkB6xDSeV+vGeIQWr6ZS58nZfAbosfZIMtrJfji/wfYpsjU/MuBXgSaQRbWJsyyJ4/sVDCbrB3yV4vj5SMH6CN5RYEE/xtuygFqTYhLStU3KLvitoXKITWz9EtYNLAOs6LjxGmD6JG8JKdgcs7KJpIxa1xvxhfDMFM7fUf/tqpBJ60wdOooESuTnYcwQ7IqIzyoIlEhnqRDX2pQ9qiWDyAHNJN2AwYV5EtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dn6eewJLSAtP0DAFNHA/sFyhIc48fwXwXkR6mc2tIlQ=;
 b=IRQHov3oIfS5Nza6wVP6pnr32ORQ25ZvKiNuWS2T8x+UFsvtzSYCqBO4h6dJDrA5Jh1fCUAiVRIjW6+Q81rHpu0ikzBIdMlIAt14kit2C5cjzFGFkF1TTPxV7JpT0pZIKSte4jAlUKsEDmcN1jGHsvhlLFhMfwa4FHdh3z4CO9RkI8KHEb6KWks//aNjRBq8HhdytEGecX4dBLg9xHnT5SRGcfv1r04aSFnHBs0ES4WiZO4jzAGpuIFhtju5c2/iAjiRJHVqMbI4SBsNwp77g8CcvR+CX/WwAf+ufGQJ9D4/q93su0E6+tkMY7iBHk0SQKDghzuVJDaIyMOevpC62Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17; Mon, 6 Apr 2026 19:52:05 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 19:52:05 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 06/12] drm/i915/cmtg: add hook to enable CMTG with sync
 to port
Thread-Topic: [PATCH v3 06/12] drm/i915/cmtg: add hook to enable CMTG with
 sync to port
Thread-Index: AQHcswMJfzYY+UrFl0Gva4q2+FTvArXSlnPQ
Date: Mon, 6 Apr 2026 19:52:05 +0000
Message-ID: <DM4PR11MB6360BA15223925C0454D44F1F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-7-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY5PR11MB6344:EE_
x-ms-office365-filtering-correlation-id: fdf065e7-002a-4f95-00bd-08de9415fad1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: hwfUiyv15xRtci8RL2D3lqKB2wdmqfLBtM+Fdg+CDiyoANJ4LNdCrHhzZPh5cyPhcqMS26RraQJpl6AZJfogIzvdriwKdH8SLiWRoKfJfK2YpPcz5pHt0pjzL1IpAMUD4Ex8iWJ4Hoo6vxx5Cac6kzE0qUwdRad963XBMeSftaW7IBK4jjTqMlvlA4u7tLDx/Q3YQWxgihv8Vc88XwpOTMJn0XN/kOZnCeHdRKQTmPtn7c8j6EI3vgdSXkrUtV5mepX1cYLqMprfxxv0XBpwMXkptmyma3vGiB0WsPUjW9UwOYX6towsxMSmIf8keCqWy7NUcKtcOFJHyZmSXl2hAKhodiN8ex+Lme0fOIfTQi3M5ufrS5KseifKqTxvgAnxjpK2LbRYgdO0Q5uv5KFSIBOc4uUtvgBlzaxvQGb+fYm3SNp8nWbIxerxSfX3OZzU//GmnhXpEZlXIhbHHXSqRoxicQrnS9G/1+41bWkonlVPfeLB1q0COA4tm+nKIMNI9JTQ5lnYg8N//hMZckiyrfvHLvdr5cjkKrgPkzT2Ez7bicVhz0Za66mZI+lFeKRU2xfMPNh2ILV92QuDdEjgfkvnUgOCCWCF4zYrKcteh0lx5mRpsZR7NFkPZ+ea9nvBBOXbut6c5TtSmcJNeBz1wqXvdwIklgItQT7ufw4GsFxyWAS+y6Xh5tKfHN21Towj2PmnAkq0yuvUU5OVUUOzZggvoucJ34J4H724dAgVgJGHYfsOirKzPMuCJ1ib+EQMpdScW/LBjrKCshFR6eW9opCeYv2R289a4yYcAIAAVO0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BOd+DJfM02zmIFLiNnf5Li6FlSiC/qy6sKIaS7tFsb8bPV/cpmUHhngsjptO?=
 =?us-ascii?Q?RgSKL5jaC1tvRZ6kKNifMhX1cia00LD6Lvwy/qA7gSpSicHMIrcl0hl48RqZ?=
 =?us-ascii?Q?cQ5tP21UsdUbn9SZKJaUpS4mDln19FnpoN8vY+ExDGLa/HcS7bdJxLq0I4Ym?=
 =?us-ascii?Q?gJkx+NKjWDlrxkUIfHSitg5GMt2KqOmdX7xW7zNpj8eG891FPK+iynDk/MH1?=
 =?us-ascii?Q?2LSxlMB4tPVd+nxIdnz/DN0lk4ohMjbHWO+Lveqakr4w2s6H4LZJ+vIOAWPa?=
 =?us-ascii?Q?J6NH+g5Wq1sQbB8dc+5kfx15f+39bk+kghqbrKP3lDzDyo70BDLSBRufAH1D?=
 =?us-ascii?Q?s8/eNMNNtHxM4z8CVSfTTb5mXe1GgCqXgBtq8dM3cQo9IjyVIkF/Itm6jfO8?=
 =?us-ascii?Q?unSz8Kr7oSoP0ATvw7s9AkG/cUkbexcwOpoJmXGB+D/QiJa9qpO/rPVkGH4w?=
 =?us-ascii?Q?HDcBwCD/kMZhPZ/14KinwwuhUaxfl8Tz1EtxNzpqMI7MBu8r9ZB06V08fmj4?=
 =?us-ascii?Q?abJSVe4QWD0/cGp3GSRHJ0z77Mn9rypQjBKS5F6K14wIbfD/Uoq+5TISsFct?=
 =?us-ascii?Q?XQ3BHBTZsP3RxSSLLiX357M1NcVbugg7keq7ibUaqFxR38rTi/LoC4bCq4Dw?=
 =?us-ascii?Q?AZOAwjtHdbZTxBM3v4wDYQD8+X9lepHi3sNkGZSM0XCSdkKYk2OKIPDVMUZi?=
 =?us-ascii?Q?l2uBOV/PfLRu1xEbAGeyoV73MJneWPdzi+LgGNG+wDTJKjqYervvN8L6MOog?=
 =?us-ascii?Q?kbe1BWvtiwj/1q9lxFI6/X7u3p36NvSkxrjIj9/91iw1NWjY9ER0G8invrAH?=
 =?us-ascii?Q?9/9jZdfhzq+XbZB5r12XnSeViZQ9qbqtrmBGSRx/TbbxuNTm2RlWaKNO2BLT?=
 =?us-ascii?Q?FsC14XThIVnt+HZF3hM+V5u6wM8QTlsNuElpx8sV4fbu0B3sCQTnkIWDeot0?=
 =?us-ascii?Q?WqdNVil0OPKPyT++B35Dh4ZwOlr5fc9ewUrx0fX1n4FmLad1+E/2u2Oi5Q9I?=
 =?us-ascii?Q?Tsd6+rMfITffWJM7/CeSaO4SLadMyiviBbCHWxuc6J3I7oBMXxo2jD6JF3ea?=
 =?us-ascii?Q?M75IDIzh+1RDnMDKyiCkeO6Z0/JU9Vp2DMx7cveuluwm3VWopbsBeowy141C?=
 =?us-ascii?Q?k4NXrvjYmEsguZ3mfU/WZSdGzwrDrBHDNx0mcWPpHNc60GdhpCH27DMbGbpG?=
 =?us-ascii?Q?Uvs4e1c/7yhExDOyijjzVWt7VcP7hg4xEjNddLZVfYYeESMHc0/3o+6VV3hp?=
 =?us-ascii?Q?E0CqV9DSlWccAZ/tTjktGTBiOS/fmTQInokVEqY8z60QBpOgHAfHCtEDbz4X?=
 =?us-ascii?Q?pxrSB6tSGFUoR2ZR8JNpVnrd+t/7HHP8DYL9pLJHu3sNviW9LAwiwB58D6kN?=
 =?us-ascii?Q?kUuVjH/SOmrHOhCA5+VNsLWQMPROuVycb2SMHw9obHo0wgRNoAu1GLvDoX3g?=
 =?us-ascii?Q?2zdlXvIatlIksHlGCzYMz50MK0Rzk8QwW/VApBYk/ZUBdqaxpmiyCCE7uK8X?=
 =?us-ascii?Q?f47f3ZvBG8rxvhFKbz9Zmy5kr9t/b9kXN7YSddipeGdxQzfHXFHERXTAAHAn?=
 =?us-ascii?Q?/gU27quWisAtt/HKAoAzuMN6wQobHim7hb7lLgPgjpqVK7EC6LeGi3wHmCwR?=
 =?us-ascii?Q?3yZLH1MLUD4JSv94pSFJ2gw/x2xpzO0iS3ZC0VNYA3WYcaX+N7Hc4h6pROA1?=
 =?us-ascii?Q?SPWh76ipYGLlSVUfJbvzH61PMBkQOLIKf+70H635TbZJrVZf54q4lOqQk/ge?=
 =?us-ascii?Q?NENlr+iV0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wPiKTdZ0wLyhon56ZgbTRc6p7PgQSOJ45Wuu1HiUJY2BkIjuQBxBfEslO1Jwodm7eiuyhQsNqkN/HQsni7rwCPXe/y0wDnFvcOLukvlHfeLVmm3/wm6qXbMpwP3t9HDCogXaJBhnxJwl219002XfwxfeuH5xw4qx3iNAmYDGqxcY5pAJt71MDXNwQp9EsnUyPwaKfYL6vjNgVeGqd6IYVvAR12cU/K+gy0iQw78WuH5kY0o8HSQQJQv5Qatri8e+keNGyg0g2pIud4SkePxvr+/HJKTY06vpz2SPaOvHHfJwtvSz8qYqltoRutBAHphCXxwOxswugXuyrJaAmzJkDQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdf065e7-002a-4f95-00bd-08de9415fad1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 19:52:05.6340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZWep87zTr7EcDnmcEmIk1TnRIzLiqdhP05Q4pErfUf069pFCrZKEJpXQyitdjHJW/FXF8kc3fsh7T6icVvM2xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6344
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 173EB3A6C6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 06/12] drm/i915/cmtg: add hook to enable CMTG with syn=
c to
> port
>=20
> Add a hook to enable CMTG by programming CMTG CTL with Sync to Port.
> When CMTG starts running, the Sync to Port bit will be cleared. Add a wai=
t to
> check its running status and trigger WARN_ON() on timeout.
>=20

Change Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 27 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  4 +--
>  3 files changed, 26 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 0d4a8550be24..a802bf3e52e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -104,11 +104,11 @@ static void intel_cmtg_get_config(struct intel_disp=
lay
> *display,  {
>  	u32 val;
>=20
> -	val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
> +	val =3D intel_de_read(display, TRANS_CMTG_CTL(TRANSCODER_A));
>  	cmtg_config->cmtg_a_enable =3D val & CMTG_ENABLE;
>=20
>  	if (intel_cmtg_has_cmtg_b(display)) {
> -		val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
> +		val =3D intel_de_read(display,
> TRANS_CMTG_CTL(TRANSCODER_B));
>  		cmtg_config->cmtg_b_enable =3D val & CMTG_ENABLE;
>  	}
>=20
> @@ -141,14 +141,14 @@ static void intel_cmtg_disable(struct intel_display
> *display,
>=20
>  	if (cmtg_config->cmtg_a_enable) {
>  		drm_dbg_kms(display->drm, "Disabling CMTG A\n");
> -		intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE,
> 0);
> +		intel_de_rmw(display, TRANS_CMTG_CTL(TRANSCODER_A),
> CMTG_ENABLE, 0);
>  		clk_sel_clr |=3D CMTG_CLK_SEL_A_MASK;
>  		clk_sel_set |=3D CMTG_CLK_SEL_A_DISABLED;
>  	}
>=20
>  	if (cmtg_config->cmtg_b_enable) {
>  		drm_dbg_kms(display->drm, "Disabling CMTG B\n");
> -		intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE,
> 0);
> +		intel_de_rmw(display, TRANS_CMTG_CTL(TRANSCODER_B),
> CMTG_ENABLE, 0);
>  		clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>  		clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>  	}
> @@ -315,3 +315,22 @@ void intel_cmtg_set_m_n(const struct intel_crtc_stat=
e
> *crtc_state)
>  	intel_de_write(display, TRANS_LINKM1_CMTG(cpu_transcoder), m_n-
> >link_m);
>  	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder), m_n-
> >link_n);  }
> +
> +void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 cmtg_ctl;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	cmtg_ctl =3D CMTG_SYNC_TO_PORT | CMTG_ENABLE;
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0, cmtg_ctl);
> +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder),
> +				       CMTG_SYNC_TO_PORT, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG: %s enable timeout\n",
> +			 transcoder_name(cpu_transcoder));
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 6796eb727eef..64ff6a19948a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);  voi=
d
> intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);  v=
oid
> intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state); diff -=
-git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index b91498ef5274..93bdf8e23546 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -16,9 +16,9 @@
>  #define CMTG_CLK_SELECT_PHYB_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x6)
>  #define CMTG_CLK_SEL_B_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>=20
> -#define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> -#define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> +#define TRANS_CMTG_CTL(trans)		_MMIO(0x6fa88 + (trans) *
> 0x100)
>  #define  CMTG_ENABLE			REG_BIT(31)
> +#define  CMTG_SYNC_TO_PORT		REG_BIT(29)
>=20
>  #define TRANS_HTOTAL_CMTG(trans)	_MMIO(0x6F000 + (trans) *
> 0x100)
>  #define TRANS_HBLANK_CMTG(trans)	_MMIO(0x6F004 + (trans) *
> 0x100)
> --
> 2.29.0

