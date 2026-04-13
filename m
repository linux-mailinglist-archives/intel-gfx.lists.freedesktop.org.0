Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMdlO4Rm3WmydgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:56:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB023F3A6B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C9810E539;
	Mon, 13 Apr 2026 21:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m0ZoZJQs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE8210E15E;
 Mon, 13 Apr 2026 21:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776117377; x=1807653377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ZqzO78CrpCse1otHoDYUFZ3tM4PI02I+W23SIBhPR4=;
 b=m0ZoZJQs7/CXkMnko9tjDxbD4E772bYHyY7YrMMuNSYN1a6aG6UV83OI
 clVaUehldHzuiHY5UhrxJq3IU3UHWb/3z4/cPQdYBJo7czzGW9iQDB8iQ
 9UBHotmpDArIJlQf4tt76/73xEpMZlKo3RUpW6IOGBZu9ulLtNbvqt5c6
 6AFAdeKisiseRn1PQ9QaWcbGrnSElKIM6uls1Nsf9JBEmeljhv8yA4Wjo
 RJ1p4PBpcSRa81WRoMtCtbv3BK1BtR111G0DYMl/bDwwGEPr3GOLPVbfe
 KKSela5IEapZzN9xUiKAlXI2waHuFVsf4+9z2UvOhsA8JCwp8f4Nc04u+ w==;
X-CSE-ConnectionGUID: 08pJ8NTyT9C0qYBxXrvoBw==
X-CSE-MsgGUID: YDhdMciCT5yeht6FZFdX6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77028512"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="77028512"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:56:17 -0700
X-CSE-ConnectionGUID: whw+xrKzRK2ffkbJqZmwyQ==
X-CSE-MsgGUID: V5EYV5/PSAO65fGmsbwjkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="223410320"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:56:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:56:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:56:16 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.67) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DdS9+L9HLN5IWp3myunLG6uvIvlu+dIqQu+Y0bKkqDKvPAfGiOOCOiFQZ8jH3fw5L5YN+fZY4qGngrkWVj/tb0tKnta0ZaZ3e1AfqVYfC3AevMhzcx5C6QavRAVwLuMAM2//8XnKp1upFtKctQ2EyEK+gCJvgaxu6cZluu1eB5ClK/1NsvDDI9j6gjBcjR3Vry1aBDGFVRN3Bhs9kAniTMJPK01S0R5rQ5sgTcUzs6ssN+7k198WHTuA5deC/lzAT140AV+dM3yhFXNpcvCPn2/l8AT9ZukSNy4z6Ibs9JQujFE4AyeC5bcFgI4w0lMDtnNYJfFcs5eZE1KUmv+DjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RoRdGCL/AO7ORq+Hs6TxYsyJ77o+HNN9RkiuFwfmrXY=;
 b=HJb50VZz2Zl1rBGj3SkXXYHM6vVPL9J2cBjhXtvZgkYRawNx1AxrGRUF56u2EvUMw3FYfaJ0F9k0iP+uync4KzOCsv7SY+/qtdFlY82jyb3kQkejEg05tNpQW6atss9hC818mDIuYtyNQiVnIlWEdWGQracr0tWiWSHJqSKMLdU/Yu8K0BFqd+X9iQwHaJDU8P7hX2x2x0S7GFsvc3lv4e2jclMs9699bzuARRUvktYZl1S8N2+Fn5+6z/7dtiv3x/BAA5ldeQpqbpnjJfdKyOx4tx+rF/y9ORdGb5L1efgtN89ZiGvpv2Yyv5EJcXeMqEPJzQAPr0XWhkAjp8wRaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.48; Mon, 13 Apr 2026 21:56:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:56:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 12/19] drm/i915/display: PSR2: Set idle_frames to 0 for
 DC3CO
Thread-Topic: [PATCH 12/19] drm/i915/display: PSR2: Set idle_frames to 0 for
 DC3CO
Thread-Index: AQHcvUQzkSQjmFQmM0yJOp4Z0sb91rXdpdbg
Date: Mon, 13 Apr 2026 21:56:12 +0000
Message-ID: <DM4PR11MB6360ED89FF740DD7745257D9F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-13-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-13-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7512:EE_
x-ms-office365-filtering-correlation-id: ad56d4dd-6836-4150-197b-08de99a77a7b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: NUE2AOMZ3RHrr5oFihrwWemNHLpOxBJo0ir05pzkFW5neNLfpoLi4TsE7wDP/5HXXghb8/6hBZtOAiOJyNfbhJRFJmBUZALlXBbUu1lonjjhRUF7CiKppPqPpHKj8B743mTDGPkktCtmIT277wvE5nO6lsjfEH5j8MH7/xn17OfN2HpkX7x8Cnca4FPSi2td0H0oyJu5dCCD1VCOFW5bWnUsJp8J4YhgW0U3BQGwrif1H2Qy3VhXT8eW4sNSKXzaumZT07+9w7xlyCLbZKj62CsgCIBdssvZe4ImKWz0+zOSLVkcjbdJ/CcOqf/e+uPGgMxmCGjZfTq2cAK1njoi0tUKRy6ZL8xBhQu0GZZ+xRsBRMa0gkvF2TIp4XNh0mMPACdOa2qC8S3z6nw8EddfSrk+NarDT3t3ybUvf8K3daIUHqymdyEJoQegELQAISQFF0xm6zWTJ5+f9/DnpehKy6NEfw7In2m0YLuwMKSeYadOGwin/TdY57PahhsltKUw4r7OozaxYTjfS6fJx4ZV3Ph+KLl60d4TnSSEwxiuJpu+g1/JbOHYdnWUwWe6i5soKWrKXYgUvIM5U7kSdWgbPUnhSgwdufbr5Y8TJLQbxmv3lGh7msjeybUuoSzD+2lebWEYcAj7yVx8hL0Pw8WaBQsI7TDx10t2vjXqqEftC2GRE/g9NE+e1jGBSLSEUp4ouesl0v0F4+66GqKpnxF+74Fl2fFocPId41iTcfZB7SvyPXEEhSH/RQ+LtmWhgjG7R4MGmTvdkHqMVuFNx4j8Xw6V9XMPsTkgP/tM8v7HG8w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SPgKSarNVa9y5px7iAUyfjmSkVuGH1xBiTRcuDofzHZm6pdNA7Ze+8gis1P4?=
 =?us-ascii?Q?lhJw792lsAAaZoI38eCNMOifKa06c8BOO6xsIqaJzlSdDAFORfDhssoYYoC6?=
 =?us-ascii?Q?EaVqZM4ZNe89wFT7Xjhk3hiHxjO02BN8s94lPR6At8l0oKKrinfnW7ogzfae?=
 =?us-ascii?Q?8gWVt5qgrqj+a+c3yk+Ira43ElH9N/RkihG6U8KAuDjBKqjT4wkW2uK4xo20?=
 =?us-ascii?Q?eG4FcLliXzWIMyofo1caPz5hMIJ93wrpUg8nUrakByceio8tnlGT8Kmwj/Ps?=
 =?us-ascii?Q?QR1o0NKRyUA5PJSGDBLsodYZBYc9lTjrF/+3R7PvVaZ0Rtu4pduZQysH3kyu?=
 =?us-ascii?Q?o+xE1EjJUlzGv5mNX3AAXgG1cSyPnFoXvjVq296x1IK6QMhpFGysvVlh211x?=
 =?us-ascii?Q?fPYE17vTboCASkcPwgjP8bBxu5GQz9f61VGS54KfLy43CXPotpun/swEligp?=
 =?us-ascii?Q?7GJrNso920yrhfKRBkBAKFUCKZCer5tKxoQAi4kkH+kGK6lnPvl02aCBqNO1?=
 =?us-ascii?Q?BBNNnFZJ7ytC3MmkA+8rU3Rg5sDAL61o7lEj9lCbbZgrYG1TZQOarVqrw24h?=
 =?us-ascii?Q?oo3vsc/ZFIXb0stjfxMcieC4tyjnymIeJUPzBa0iM/xgOCwKg4PNj4g1BSTL?=
 =?us-ascii?Q?2X2eZsrAD7WwNYMnzr6vKvEh39clUg8TTx3gxZ05IpXSIilnrIqZtuN2SQ+2?=
 =?us-ascii?Q?lc8BptvR6fQeGC84CSeO2NNLgHq8nsSr6JZLjYteZs254uX1I1Z7Zk+CLbin?=
 =?us-ascii?Q?QfiAsleq6CDgjSCq9VNd4uu0Gecrspmv0VV1XtfqrHa9D8+6Vd4bjPlqcMxx?=
 =?us-ascii?Q?teiRxRQKSA3i4Nei0snQJLXw0Y93uWrwGan4Mi6toZ1Kp/akB0zB6ZJSvmxj?=
 =?us-ascii?Q?Q9GaApPSaYEngLkMtSA4ScFJ0X2FMJA2LewTETIRLQD5fIQmXJbw/CUGM+Uy?=
 =?us-ascii?Q?EsLRUt5GjKjmZmAP0hxsDnGi745zYJ+NEcmmYDbhJUcerHH5P8wAeXRpMG6x?=
 =?us-ascii?Q?bHlz4MFAXafINxOd5NspfhHdTYb7pqdVOnlIaedYoX+83lldKfFXuD42h38D?=
 =?us-ascii?Q?we84lFboRWjQ3AJToOqTUpA06h/e0Dv+37OWcOhC+Q27sPhIIPYmYDVC1AFX?=
 =?us-ascii?Q?/yKd90+zptQWO7cSrhKwSBp8mjvm+sfI6uOiKysC7pu3rgH6FvRPKOvDXD7F?=
 =?us-ascii?Q?T8iftIjhNv2eJNrsnZ8RNCCh0wnrXjQIPkpz7vpk1GyAchke+kBnJMwfsjX+?=
 =?us-ascii?Q?/Vq1OIyX3aA5F7fuV2wHvfcAQQIL5EkNWkxzKsTA8WH3h2h1rAZ1/0O+VfuG?=
 =?us-ascii?Q?uyU8ZS5Orl0KhuqIz7u08Zp+W4ozGXTzqLWlx+WVd8LIdlVYmSsifDYu9Ff6?=
 =?us-ascii?Q?wIHW02SY9C35JQPdHz3a+cCxlEYBc6jgbFzez8fVE4/XRD5FwZ8+uOdmKCif?=
 =?us-ascii?Q?6zrFhQz09ZuotjTn9/6TIuGoGnGiYVTa8lLQ2LD8+ml7lGHHmLntaUt3Ra/g?=
 =?us-ascii?Q?BcSmM5YYAejC+m1CUJWUEtiPjW1qavyo0O98dJ0NrExAfZqjH+PKtrpUOJfq?=
 =?us-ascii?Q?jx3Ps/JhJfYI7iURPPMZ5EQR/VyIt+9QGj2LTL22k8sGMlPJzS3Z6CUAeN4t?=
 =?us-ascii?Q?iX5tAC3R54lDk7oXDyl7Yh9infYN32BzSQtuPCtVanb541YFGotfvmIfdNXQ?=
 =?us-ascii?Q?xMHfVdR9tdyEVGluYrUop3XutfsOmIybHlf+kYZMewtpjnwwR1zFOsV0QS2r?=
 =?us-ascii?Q?ZXC/wZBhBQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SY+2UB+XP7iF/NlM6HtxCKeCK6zy/o39rAuDA+5aEY/zx0+KdE8NDMDBoBOuUUrFxFs+eS5wS3MkgJpr/GMgqyQ0bzdcN0XTb6wcL43ICMpR0OGcj0Ia36Zpw+UqBx28GoVcEPvysNDefFkVrXqdqP3JYDm7gAQR+o10wv/cc1oobY7/AjCOFoBGWMNMwa2WvDEBgPoLUvFP+wuaYXHrhEZrwoj0NOjzjB9U7oXkMXc5Kifep+Hjhf0WaXMwagig8EYQvWyCsDuFUikBjAfOFkSbZ0G1F8qH5pMMVnt3l93EsLqQ7YJ5Qy3wfvOYLaJvdpmkA2+cWH6HEsY7YtQsZA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad56d4dd-6836-4150-197b-08de99a77a7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:56:12.6134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HKQlaqoPsM7q1akWIcDfVIOzzZfonW4gltOuqVEtkLUqafYigkjkIdUFDINnLcN5pge4zX+LCwGwdZ/rxg/uUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 5AB023F3A6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 12/19] drm/i915/display: PSR2: Set idle_frames to 0 for D=
C3CO
>=20
> Force idle_frames to 0 when DC3CO is eligible.
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index bab254700a62..16a9f4111ac8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1040,10 +1040,13 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
>  	u32 psr_val =3D 0;
>  	u8 idle_frames;
>=20
> +	/* DC3CO requires idle_frames =3D 0 */
> +	if (intel_dp->psr.dc3co_eligible)
> +		idle_frames =3D 0;
>  	/* Wa_16025596647 */
> -	if ((DISPLAY_VER(display) =3D=3D 20 ||
> -	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0))
> &&
> -	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
> +	else if ((DISPLAY_VER(display) =3D=3D 20 ||
> +		  IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0,
> STEP_B0)) &&
> +		 is_dc5_dc6_blocked(intel_dp) && intel_dp-
> >psr.pkg_c_latency_used)
>  		idle_frames =3D 0;

This condition itself can be extended instead of a new if block.

>  	else
>  		idle_frames =3D psr_compute_idle_frames(intel_dp);
> --
> 2.43.0

