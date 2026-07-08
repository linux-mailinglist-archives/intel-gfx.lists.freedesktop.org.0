Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hFEsLI2cTmqVQgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:53:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D291E729B90
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:53:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Feu0H7PO;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25A410F22F;
	Wed,  8 Jul 2026 18:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E0E10F235;
 Wed,  8 Jul 2026 18:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783536777; x=1815072777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e8uTEIV4uK38pCqvk9qyIYhWYDbTLJMHyjwrZeDYrKM=;
 b=Feu0H7POtQV7QUig+G+lmBCDPcYzM1ovUd6rEGwW19b2N6hLIp6QAxhO
 WJiZ4fqNboJnM8+HbHl2A7U9kHGeeyV1CpjhAjl+eAx5UqZm4luu2hRCG
 Q8GnDntK9NFb+/eOYyhI9zIsiAN3SzfBHw92XRCIOqwm4lgVgYahcaw0/
 lvd05kP8O7hhbi/MHm9wCvzYXNAhmyLphGgHYViuNIt+Jt1JU0Ql53LWS
 RWk7hgqvHhxRTr4Mm8yGEM5bV5FvyABCREoN3/Z11a21EgU6GHO4lv4C1
 JR0AfhCEcuvVsK9walKjZb0cmUlhXwJGNuNvT+tmRAL0EFiQ25/izf848 g==;
X-CSE-ConnectionGUID: krjim7JkRXWg+nEYlyQqEQ==
X-CSE-MsgGUID: BzsoyFrRTgiGY2fN+4EXog==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="109757527"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="109757527"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:52:57 -0700
X-CSE-ConnectionGUID: I943ADksSIuJv/XssQUL3Q==
X-CSE-MsgGUID: 0dRXxBk9SWqgaHkhd6vjyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="248009206"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:52:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:52:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 11:52:53 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:52:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XY3p0/wbzI0IVQh0u2Mlu7OM17h9RsxQe+TUl2uZxpYWJxpK4VLA2eaWxXK27pA4tQD7y2I9bMCCa2sbmhKD8bea9fXaWyVa7K+Y8d4mjG5NtNtDQdhV0jxlDKrqxac5SHilEcDHhiZv3K8+jzsivXFgzRHIIT7yB0Xmdy8m1uSp/ls1qqwo+iaVA+onQFebThca21IGyd35PaoIwnRMMqfKVnwNGLnwCXNaItJP90Yk00rM8AkCjOKNRptOPfFewYg/YIFgH7UKMK8DPW6mbPiJobP1nXwswCCh55B5u9bTGpUaCYFecjH9HM4w09wn/a4MMqoqB92TWt5IIo2vBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxVAXeYk5LEp09nwE7NOTNs1Tl+CK/fneM2UYROFsFY=;
 b=YaE8HoT1/GjppVX08LXUVdQGJ8feM3lgEFXhJcF656nSrV8N7hEMAhtGA4cLPmhmOv8CI+m7i5ahBNWhbE5PkWjA8YqXrKXnVeyy72CSjjKs8M+mdPXuIJ1OuFUnLMu/NYchYWO9lsY0SzgAd7VcXPHa7Ong5MffwXH8nVxPKi1IlGDbZYeC2zbrTZ+yXmwGBgelmrD3biegAFrJIKsCUnmcAItbRjpH9lW4MgA0ZhLpAPwPOkr1+YH2FlTgROCEZ7PpfTi92A4r5MUDkzXMZ2NkuVCFHs7SbqozlS51o7zeBAJGa3tV2Pxr56daHWqzYrzzdrTowOJPg0hiWJXPPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.15; Wed, 8 Jul 2026 18:52:49 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 18:52:49 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 06/14] drm/i915/display: Program input CSC on SDR planes
Thread-Topic: [v3 06/14] drm/i915/display: Program input CSC on SDR planes
Thread-Index: AQHc/jxTKDVIlPdnZ0iVEkWcJ/s3tLZkGWEA
Date: Wed, 8 Jul 2026 18:52:48 +0000
Message-ID: <DM4PR11MB63603374B0785B2A30B0D93FF4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-7-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-7-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: 07a672d3-2b95-4f28-fc34-08dedd221b58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|4143699003|22082099003|18002099003|56012099006|11063799006|38070700021;
x-microsoft-antispam-message-info: Dx3H3xmB5d3v99VIaP2fMrvXihKTqqYXcubGhSq0WkDFIIGDLGHKiTgC2taTZHE3uO7Sdob3PaSyH+6vs+vJobb8Wzphu9gglIHKRc+CTJ0870Vi4adl9ByaP3exTV+jn59YWMude4F8L1zbkGl37e8kD6RoqHOFbZH73tUZ2XiHFOG25tJBTa1K9GfPV+BCVpwN2O530wtVhOPWyZECwa8mEWMbO3wChLeVQkGQgZ9XMNLOWDEA0+3jAqQxOG0WZ8UJ6IThr2PGC6bQ0qHCQurLNAJtX5J1+R71y5bnjERoLrhawwZgYPeM90J9fQk8Mr5JFrPoI+xiMkgZ0am+tla+XHQVJimejZ1b/v1+ayYvlUSVvUaXqs/m3Qe2RU6+tRz7yQd5Z/6S3o5jKb0mCTOBK+XyqIbIik5Fgh+YambzE/gcpwEbD8RRBCXrqFy6GlABTDfneYcgCsKdLczAtNoyN1xtnLk4W1/Noc8dNK9EoYc40QDa9wsHsn2Unu4Uq+M6zFqucR29FMLuitw7pdZT9SxpgugfY1FsPntKs4U888IzhtFaTSi+eHD2OUmOlO9VAA3z5cAFiPErYZ5FHIK6S1tpCjb1kJwOxkVNUjP5Z5VrVnwzAPXyKDd/o4eedS3ijCqrk242tNtGL86FG8xfyZ2Cgbsgt63Gu196H4Hj3h+TLxaroA7wNKVW12GQTHbK8vQlXvrzdfczetQR/J8h3WMPf8bAkrpQZwsM7wI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(4143699003)(22082099003)(18002099003)(56012099006)(11063799006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hy1e//7L4aIfsOUiEKLaIf/XtVFip1gvXxaCRtBILOXEFWWZJ5U8HBdIqtGU?=
 =?us-ascii?Q?uFNLUO3hZH7uro4aeX302Mn81Rt6RU7fspDh3BA41bkkcblcR5abALQo0+Bw?=
 =?us-ascii?Q?vUIx9vbxMVLYFca6+dgNv5JoQ0Zs6wfsDqRSRtS5BjLlR1kbi2KaVA8ow72U?=
 =?us-ascii?Q?vEB5m+s0Gj1vp3G46+/o8IKUGTdP8v89H9z1tdThwlxXXE8zbg9RcN+2Xlxt?=
 =?us-ascii?Q?0MYu9jpytQnlvsBLaiStRujq8RqifDTkpE9rncyKFblNii8JXmtsNm9DFkIg?=
 =?us-ascii?Q?nPhpzxzFrGBLxJZQI40xkigCsVfC8kRrSWnPLwdVcB+483PrDZTwlkbyud9U?=
 =?us-ascii?Q?bwIezvUBgZ/+L8RtWisVTqoQNjoZO6dcGKd5lKmn7WIt8gH5sZOLZdGuATdi?=
 =?us-ascii?Q?q1Sy0PHo4m4DuSPfbwjefRF+n5JGW/08yCISC+VTiD5ieUbyQIXpE03e4BIy?=
 =?us-ascii?Q?jVf06hfoxvNDKjOPiIIMGZW8AoHPfHzdjkM2QRSQdUyZoAZQpcFWP27svJRg?=
 =?us-ascii?Q?xz/SRusSCXlSR2pUnouS99XC4YowO5Q0/OFfQCaatx7wEDC8k98uGbo5TyNR?=
 =?us-ascii?Q?g8G7jUDAyMroxqx8JiMbL0xfr+3/tSe7bBeuS/SHHaQUYEaOcMP0wZaGbuke?=
 =?us-ascii?Q?UsmlLZfsEEs8RuTEP0MrGDLnFvGpsYfNs0+4MAp9aSMWX9KrELWRrA0yUNfz?=
 =?us-ascii?Q?LGeqmR5fPodgJsUoQMqK9KS/1NuU1/x86Gp3D31HxpSN8nU2rWAtbNPE9U3G?=
 =?us-ascii?Q?hqCJWo6TRueMHZeHjZcIjPZsRkzb88O6CotAoz4XVDniU0q0QTIIUTF2ttmc?=
 =?us-ascii?Q?KXr1Eou64oaXeCuEBsWJGQofJ/sNw+uOI+8ZiQsmMFjK7e5D888OSVkkMDv9?=
 =?us-ascii?Q?1AhRIfAVNQw7s/na1PNvVjJA/F0qL7C/6YMF3QvXO9N+Xcoida0TS5lrZNXI?=
 =?us-ascii?Q?COk2nJ4a094lVisMsyNqtMEU/B3WyPcvHnHZH3Uozhul2DBcxBARbhsotL0e?=
 =?us-ascii?Q?ql+3z1orx+1LJCqS6B0+V9sYAs1DQAj5jyM7BxIeMUIc8WR03W4H23P3K3/q?=
 =?us-ascii?Q?P6vb5saovoKk9w52eGvuGx+uG73wm3PQ+HTpU7zLtGbGWatFmirBA6aOUOL7?=
 =?us-ascii?Q?If5gMZv3HWlSmQ3BbO1tDayRAoPWgcX+I/UmriAQmzAjCeyuAtcmvSixiX5v?=
 =?us-ascii?Q?Ot8tskhOSmwgoKhAns7/UEmfLhftEwLrdp8DxJuQPwszbUzs3gwe7tgenSSh?=
 =?us-ascii?Q?nhdV/79PIMj4WEGK+Z9KmsHGKP2eu/WpQlUdbb9voZyK/rVh6haIpy+sTBmh?=
 =?us-ascii?Q?TIGravneOWXFP4ynHxi5RHOpvg6hPBiFQvdvfJfFHNP45WijhZPJ/QA0Zxuh?=
 =?us-ascii?Q?lwFvD5E1QETM2nqET8oElNIxsDp02riCQ0QRLZM51oms8XC4Tsk4RfKOaKhL?=
 =?us-ascii?Q?Ea0CjVefZIRnic40V0f7OeC3/pPPjzQKju0LXENC58PL90MG3KcOfiiNserX?=
 =?us-ascii?Q?u/1QdrDQoc83ujANvIfFNpHBC2lffPF8tdxvF85F7pTGrU0rlGCWmplYbHs4?=
 =?us-ascii?Q?a5Lw2Zrst8bFsuj/np8O0Sy1qalSmZflAvx1S5GhrNE6ECIOjCWWhpa8mw5L?=
 =?us-ascii?Q?7drvKjzOH4zThTVcdzIkRE42550mVAv7Ai8HZr/q0Wc+30stSeP7wjP0yt4F?=
 =?us-ascii?Q?dLmJqzndLvrqaNoL7WOq4rEgOpG/9jZC74tBKRZuCfAjx9dk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Rt0cdWw+2dtDiUFAu2s98BFo+sSEtGSd5Rjc5bE8ftkJAHFG9s5wzNUcNryQ6V5qDZ6Vq+VsACliwzfcVOYv1/Mh+gVwKKu+udLXToy6JH83jFvQvU1jcSuySxpLlgYrGWpeJPi7XpY3D4wp9lJFubnwqv4LGkf51RJxrUGfAZPrTDsCrT+6m3ACiNPXSNSFQqW6039srZ/igEAQ/EoRldYKVvdlmNfBT8l+Wvicm8WhmS25VTQJJCxYJVztC71GAkYlA9Omnx0aYmPnaNFv9OYugfc6dF7M3DDPmyCcNzKESYZwvTgJZfkhl/pHtOCE5KrcaY8F00GvlH0rj88eyQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07a672d3-2b95-4f28-fc34-08dedd221b58
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 18:52:49.0497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rih3cRQ3iEo5Ec67UOmvrPIr7GqwBx58QfYDe2L5pC+EbpmULUFXz6B9HpM3W+evU9KQs1aP646iE3qoiSmXog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:from_mime,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D291E729B90



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 06/14] drm/i915/display: Program input CSC on SDR planes
>=20
> When a color pipeline is active, program the SDR plane fixed-function CSC=
. Keep
> the legacy color_encoding/color_range properties mutually exclusive with =
color
> pipeline uapi.

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    | 64 ++++++++++++++-----
>  1 file changed, 47 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index da2df5be9848..0e951b36ccca 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1240,33 +1240,63 @@ static u32 glk_plane_color_ctl_crtc(const struct
> intel_crtc_state *crtc_state)
>  	return plane_color_ctl;
>  }
>=20
> +static u32 intel_csc_ff_type_to_csc_mode(enum
> +drm_colorop_fixed_matrix_type csc_ff_type) {
> +	u32 csc_mode;
> +
> +	switch (csc_ff_type) {
> +	case DRM_COLOROP_FM_YCBCR601_FULL_RGB:
> +		csc_mode =3D
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
> +		break;
> +	case DRM_COLOROP_FM_YCBCR709_FULL_RGB:
> +		csc_mode =3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> +		break;
> +	case DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
> +		csc_mode =3D
> PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> +		break;
> +	case DRM_COLOROP_FM_RGB709_RGB2020:
> +		csc_mode =3D
> PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020;
> +		break;
> +	default:
> +		csc_mode =3D PLANE_COLOR_CSC_MODE_BYPASS;
> +	}
> +	return csc_mode;
> +}
> +
>  static u32 glk_plane_color_ctl_input_csc(const struct intel_plane_state
> *plane_state)  {
>  	struct intel_display *display =3D to_intel_display(plane_state);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	bool color_pipeline =3D plane_state->uapi.state &&
> +		plane_state->uapi.state->plane_color_pipeline;
>  	u32 ctl =3D 0;
>=20
> -	if (!fb->format->is_yuv)
> -		return 0;
> +	if (!color_pipeline) {
> +		if (!fb->format->is_yuv)
> +			return 0;
>=20
> -	if (!icl_is_hdr_plane(display, plane->id)) {
> -		switch (plane_state->hw.color_encoding) {
> -		case DRM_COLOR_YCBCR_BT709:
> -			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> -			break;
> -		case DRM_COLOR_YCBCR_BT2020:
> -			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> -			break;
> -		default:
> -			ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
> +		if (!icl_is_hdr_plane(display, plane->id)) {
> +			switch (plane_state->hw.color_encoding) {
> +			case DRM_COLOR_YCBCR_BT709:
> +				ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> +				break;
> +			case DRM_COLOR_YCBCR_BT2020:
> +				ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> +				break;
> +			default:
> +				ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601;
> +			}
> +		} else {
> +			ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
>  		}
> -	} else {
> -		ctl |=3D PLANE_COLOR_INPUT_CSC_ENABLE;
> -	}
>=20
> -	if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> -		ctl |=3D PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +		if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> +			ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> +	} else if (!icl_is_hdr_plane(display, plane->id)) {
> +		if (plane_state->hw.csc_ff_enable)
> +			ctl |=3D intel_csc_ff_type_to_csc_mode(plane_state-
> >hw.csc_ff_type);
> +	}
>=20
>  	return ctl;
>  }
> --
> 2.25.1

