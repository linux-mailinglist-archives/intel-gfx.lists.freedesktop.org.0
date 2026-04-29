Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Xgu1Jn2T8WlxiQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:13:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E88A48F5E7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBE310E453;
	Wed, 29 Apr 2026 05:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GEtdUe2x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C544F10E26E;
 Wed, 29 Apr 2026 05:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777439608; x=1808975608;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2DHwiAjUpaKlOaEYUUheuxqvAOcyhsJ0+y6Dt992wEM=;
 b=GEtdUe2xf2vKcZOrp+ZY+MJlag0K3pEyJbp2pvNmIRVnnmQxQ8uYQmnM
 zMauQM6liuD2AxwMkWqfgCTv92h+M3vOcEdRcTGbxXVe0IZvI+5KloIHT
 B78UZ5GfyYx6T9yR1H3cWsoLJESl5tjUgKISx/y8ify0LuQYODBpYI76p
 wcUYfKEN1epWKNLeQVrP4RC5tstpKlS5WI+0/mQ8AJ9hEX+i4cMbuvskC
 jxHb/ksHPbaEF2tYVj1kcZIVHAu6Fhtg+VgD5i6U1Wx59YXfO8PBD0h0j
 0WHwd69+EKxZmmgXlveba4R8bZwcuUkDRc2J8P4TNU7JpYamhWu8VKpsJ g==;
X-CSE-ConnectionGUID: GAlKbVb+REW6T88FR8bQAQ==
X-CSE-MsgGUID: /mtStpgpRzmUcsA3/ylw7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="80934180"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="80934180"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:13:27 -0700
X-CSE-ConnectionGUID: RxG4iWGjRw+HTGL9i/0DnQ==
X-CSE-MsgGUID: glotYSU+TIeJDViqRVWcdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="238130809"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:13:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:13:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 22:13:26 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:13:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TlMG9lQSQeDi9Knd/JT+kXaoWkPYxHZAGjU7y3WIibvKQGHj+pPwsGYXeQEPyzryapxfzYehavGaZNu80TKu06amM/BJcIqy172zEGcqQeQNIoLooP6RR0JIE3TLnYwu9TJ7TJfHSGNdV55x1GRt7RxDVQXzB6uYtqFkrLpSuhNtTKpr7LhDERp7hHcwcHxVuyUukCA+/6UOqkvXRlrgEUMxSnlz5jgce3apeGy9BXd7hdsAcDqEgcORYiR/BUjSp8Cp3JuWSvppD53DRfD0hfVKrL/zqtRt9aowkUlgeIo8Vc+yyK3bNDt9ckvKgLDhPuLBET9XcfWgR4kJ57OX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mbl64V75aCwAKQLVRn3v0qblCQxTGUMZ3a1Flb059N4=;
 b=IPn+RLgfKbotzKWX/fK8AdVFg9d/kglMwZ6u0VMZPHoCpfudGQ1hQg+vTWLcYzarU8uGq5JGqquACWH607wnwvd7ItSLwqKmq5M0p7rH+w8yYxRcDVOAR/3qAukl12JS3QuNOJU9hl067xEVkFDTg/PcdOyfRmtx+H6m4Un4caAspQxDd9NUBCPV7i1b9BauJIJSud9oyEzOobRnLt8Y7n+Wd7UYk1Hll0cpnJONmIJs0Yaoi2sgn6Xm+8UBETYrM1sDfbNfSRgON91VHtmOy6rSn6GheSWaaTzGrn/bXSz680T5++ltboNo3GFnrCXiSfCMjuiXVGGdgDWbZWRorw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH8PR11MB8061.namprd11.prod.outlook.com (2603:10b6:510:250::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 05:13:21 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 05:13:21 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 05/13] drm/i915/display: Add DC3CO support check and
 validate target DC state
Thread-Topic: [PATCH v2 05/13] drm/i915/display: Add DC3CO support check and
 validate target DC state
Thread-Index: AQHc0nTDeLqSoyVGe0y/dE5qWEZVBLX1h0Zg
Date: Wed, 29 Apr 2026 05:13:21 +0000
Message-ID: <DS0PR11MB804932256EA05D51759130D2F9342@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-6-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-6-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH8PR11MB8061:EE_
x-ms-office365-filtering-correlation-id: 292b6dd7-6e1a-4236-a1a9-08dea5ae0859
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: hx9hEcdOGk4rdg6LPd1rmCVe87sObexE/iaoHQMWDqtyS3MbN3GULd3D1aKUiUwaYgG3VRkcfM0J4+ZDhEsYIAY4aL/hoFk4G2hKIVY/qmoscqyqSqhiAl3trff0jYiqnslRdp0v1VrAVN8VDAYt8mrGF0JsF+uf0IGEIZTFwmOWlLd/XJnP+H7MNdKT0nN1wtJX40g6AikHHZ6BJ9h9BoO/bcI2xq6/SwhzqnyHzjgtRiMJFfuYvhXhVYuyA91pTRqYhBXtDq3Y2JIsXiVW87lcnQPsrA4FZpp5EKu3bmjC/1C/Cck/rDON3NME8A+/Yw0pnGDAKaslGlsyK7ex3XOxV7blwxsSPc9x56GFrMaK7YosWZbpLdCm0qCmdV2UZ/Ug2a3zozWKL4kCMldb/oa8ohrggg1TERMQ8dv7oB0U9LMxoWIEqYS2tsB4oyWgmoKB196BwvyMi93LsPeiKxf3JyQxmRru0miWKPkM1Mqdk9AKoFrkKqlwGubfoIhNO0D8IR4WpGADt1VuQI492Op8qMpcczTX+Vwz4hqKcV0f1vNJnlRZ72X8w1d5SiOOYmwvVCTsASh1aaSbLt+RR6POi0xmBmpWGEhG1nEFd2pk1ygFVRvojSqvylfYZ6GnLoFFFhloZb9guFiwLIlzyla8FXYDbI5tgCovQp+UVWmAHOWtgXT8exTI/Cy5n8HGohxVn/Pa6c2IJTCElR8DFsE8GRlIAU+QdqzS7p6nS/K657YXxJ94Uc39TJY6TK5i8nexIiXS53NuWyMUxlEjD8DQFbLaHgGy4tZoyn7WJWM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l79gdUtbQZSqJ9XGF43FkTYB47aIpmNupaS5TxQrMnFoN0p/BN2lp9QHy2tG?=
 =?us-ascii?Q?FoY7/KQjS7fAqkz0E4cDaCbAet6hBMwGHusJIQ45BWXI2qsveWUO454SKH7r?=
 =?us-ascii?Q?ETY0XcFEruQx9g8UhAG/sVYVDXpCQoQ3DlmGkQr2arNLo7RdXjtGiL+MWVAX?=
 =?us-ascii?Q?DFUUdQ4w00zWZfZNu6BghM9stDZYbGPs6Lt7DXSSSXWp67gCvmgixwU+JdBm?=
 =?us-ascii?Q?m98U35iLpaEiqgGUhQFQgIbe0r69g7QVatxeGmF38ivcNsrd83CYvvlSMyDO?=
 =?us-ascii?Q?0m0Wp8KOxQvPbE+Vx8yFcOGULcjr+lsfcjA7yzOvpcN5g4o3u0deNKqzXMlQ?=
 =?us-ascii?Q?mktuHvvYy4AK5m6FIUaMx4YttOnv0jFO7icbqwWEOBH7k58RPIZ9EvGcM8uU?=
 =?us-ascii?Q?nalPsNhz5nJwBxHj3B4XvLw7YnTRXPpYpTydskxbenpzOhFd1RFo7rMRDq++?=
 =?us-ascii?Q?5y0oVrpXf889qQ539QV3HUJPU8LfZfxo52If88GU3VWMYzn3qwCGJ5wZpUYn?=
 =?us-ascii?Q?18z2xyfGEGYICjrGyU9OQHS5iuSrtknR/REudyzKEV/36qobm0I9rwIyRhr/?=
 =?us-ascii?Q?VMnMNbbPbwlBlaQWIdLAI+Re69dHD4FD+hU0wMfelKaMAEUDPwPTfoMKyZTW?=
 =?us-ascii?Q?R8I7AXwJRqCa71OzvvyxSDgvq9d33vOEgN8KTOTOhtoPIT8f7Nv1ABox5QNk?=
 =?us-ascii?Q?47tVgVCOs9U2vUnjP75Ybua6Xegx0HuYPqD5ZOFnjZHDfbN34ftE9sjSvOU0?=
 =?us-ascii?Q?WuF5DfYIuiGoZ/TftF2lApTxxT+a6BCBBXUDPJ6NCK79pw90xUMRnOrwnJKp?=
 =?us-ascii?Q?4M3gUfLyCN4I8dZV+CVGPij06MkYDnEnW3nuQAwc1MzBD9PsJ4zzfg3DkwEy?=
 =?us-ascii?Q?cglUkhu/xrmPS6/8759At9zJXQT6aHFvh/Vjtl7LZYAsBS4uPdrjMUrbqx3I?=
 =?us-ascii?Q?9JqBhQH/1xKv1kRdGxPPtIcQkryOqqiothXt7OlGSysloZ1dGgK03Bj+ya2/?=
 =?us-ascii?Q?7yawfdEJfXs4sdm3NP4Bbn/ombisLBgPELG69AnPKigUT/Znab/NB+hhJCGT?=
 =?us-ascii?Q?nVQ8kzgZf2SZuTWC8uioS3tON96J5IaFlIQLYB5YaepkrL3/wae58HAsqt1m?=
 =?us-ascii?Q?VTf+W0SxPEIg3vVUTuvV29bUgeEFM4iW2GZglFPIG8zoDhYjiAP+rIVrAKlJ?=
 =?us-ascii?Q?MzzeS9p0OPa/rMnc/qIkL2fILObX3JwIwhLu7vEgfCk9eA/0r9Pc1uUXG/6O?=
 =?us-ascii?Q?9qZ2Z6d1LgWK8ZM4sQva331aoHnq9WSHsWcJ64MohPUNjJwaxh2bpHEib5ZS?=
 =?us-ascii?Q?OlxVdW32kjv129zdYeunMvoBQ6piJjJbvemrebTq8zdZzN6aWLmHWGHpeJ7E?=
 =?us-ascii?Q?IuBnkBYnKsmZKjy8/mmvK3G06ykurji7skmSCnfhqcUJVBKZfVYvGo8zL3cA?=
 =?us-ascii?Q?Ob2QHm5RXHZeCLNrTli63s8Ku3F113GollFy3Jde0O98ZsBVNz8aITVk8QFG?=
 =?us-ascii?Q?onA3iOl5AfDuWZIJrZ9z+Jxbpj8+amrMacDl8wj88L3ybVw3FUMjFOxeX0la?=
 =?us-ascii?Q?kOL8AlFnzIX0dca6KYZD8HIm6si8ZEoX7DFuZMdJ5DHzguErt3waBeHdAd/G?=
 =?us-ascii?Q?rvdVdnbQhOvyP+5BixdID4bmF6rDjpnsKHbJJf9SdbcLYhIJxmCEHYn6psK8?=
 =?us-ascii?Q?0cJSxrdBdojbz4zL7eeBP67M3ZnlSrhFSoSfCmcp0KRv4bKQtHYtGYx+PWdg?=
 =?us-ascii?Q?xyrp6Sv6jg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cR0oh+mHyZFyzjmiYuHfBu3W+ei8B0Soy19CNh9ofXQbWRC8OcKkqDGTtEG4rX+046kgeuEe+RY1l6K50T527b+zVCw2UGb7mHpvuvIVvEx/AsfeQBzQrDGqrJA3LCSdXvySg9PrwdWzI4NOf4K74CYYXXFxhtoZ25ogXmUQTEfW+z4vBv6e5LvdC0BY87HFsiODVR7a3nASR71QFisYIlz3Eckr4yupvVERYlhYsLxwtUOv2gzlDeu6vbA13zYydgL62GwmMwhz0htUWVh5OclF/yvvj0Fh/+Nz0uwcpvdSWBGk/QzBD3Obk0T1QQ7wl2v/slfwKXFwRWKKEIeKMQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 292b6dd7-6e1a-4236-a1a9-08dea5ae0859
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 05:13:21.5590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jwql3/h5BljkHf2c1ZyItC570mZceiZBDoQH6og7KUNJGNmNW5h+gBO+kye8rr2HJ4fLAliqA1fJPU/kT2uZ4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8061
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
X-Rspamd-Queue-Id: 5E88A48F5E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS0PR11MB8049.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 05/13] drm/i915/display: Add DC3CO support check and
> validate target DC state
>=20
> Validate the requested target DC state against allowed_dc_mask in
> intel_display_power_set_target_dc_state() to avoid programming
> unsupported DC states.
>=20
> Also add intel_display_power_dc3co_supported() helper to query DC3CO
> support from allowed_dc_mask.
>=20
> Changes in v2:
> - Squash "Add helper to check DC3CO support" patch into this patch
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 14 ++++++++++++++
> drivers/gpu/drm/i915/display/intel_display_power.h |  1 +
>  2 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 77c32492caa1..f626803bbd88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -302,6 +302,13 @@ void
> intel_display_power_set_target_dc_state(struct intel_display *display,
>  	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
>=20
>  	mutex_lock(&power_domains->lock);
> +
> +	if ((state & power_domains->allowed_dc_mask) !=3D state) {
> +		drm_dbg_kms(display->drm,
> +			    "Rejecting DC state 0x%x (allowed mask 0x%x)\n",
> +			     state, power_domains->allowed_dc_mask);
> +		goto unlock;
> +	}
>  	power_well =3D lookup_power_well(display, SKL_DISP_DC_OFF);
>=20
>  	if (drm_WARN_ON(display->drm, !power_well)) @@ -358,6 +365,13
> @@ u32 intel_display_power_get_current_dc_state(struct intel_display
> *display)
>  	return current_dc_state;
>  }
>=20
> +bool intel_display_power_dc3co_supported(struct intel_display *display)
> +{
> +	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
> +
> +	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D
> +DC_STATE_EN_UPTO_DC3CO; }
> +

allowed_dc_mask is not set in this patch series, which I presume will be ba=
sed on HAS_DC3CO() check.
Could not differentiate between intel_display_power_dc3co_supported() and H=
AS_DC3CO() and both are dependent only on DISPLAY_VER() like if platform is=
 supporting or not.

Regards,
Animesh

>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)
> { diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d616d5d09cbe..05880e9da89f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -186,6 +186,7 @@ void intel_display_power_resume(struct intel_display
> *display);  void intel_display_power_set_target_dc_state(struct intel_dis=
play
> *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display
> *display);
> +bool intel_display_power_dc3co_supported(struct intel_display
> +*display);
>=20
>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain
> domain);
> --
> 2.43.0

