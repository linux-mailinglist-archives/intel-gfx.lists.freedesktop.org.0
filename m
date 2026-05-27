Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBzaBMW5FmqLqAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 11:30:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE075E1D5F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 11:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD6D10E75B;
	Wed, 27 May 2026 09:30:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="arkzPSki";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4233C10E75B;
 Wed, 27 May 2026 09:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779874241; x=1811410241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bug8/VgtcJ1CeewMYB57E+CJYo7oswcuhW7A4sFBiZc=;
 b=arkzPSkiECKaO/eLLqP+DvqSTCxSUuDo6ynW23Ymc2bM88wqv2WJzll4
 ExcV1LTp140qQ7HtvGLR5rzE2RT51b1pyUxeU8zApf5hEvAa/TcqBexqi
 Yw3TwNCUDKSYkVfYJxj6OJ+2zZWklBex7U5pYSssZqXK4a7B+Jzd1ehDA
 95yBgpa0AVPSXjN5jWMzOtNmY9bf+pbeiq0zmvKmGeunsNUqJaR08LqaO
 sJZg3WjEpu/JRrdWEHMWJW9LJzigN/3UORgHtQFo9QDzD1DpzRDjwLq0W
 JtgfcI8ARcYWVSDs4uit9S+3U8PaE4habpcoNx/gs9JmK3iSGqF6swn36 w==;
X-CSE-ConnectionGUID: eOGu/LopTr67qTWKP6QfjQ==
X-CSE-MsgGUID: JlJOjFIcRPaaMwQUctxBuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="79734936"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="79734936"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 02:30:40 -0700
X-CSE-ConnectionGUID: R5FxyZi3R1GDuoW0mSO7zw==
X-CSE-MsgGUID: +dUR76P0QSiUQ4Z98D3dZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="238009303"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 02:30:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 02:30:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 02:30:39 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 02:30:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hA9eS7yCfcjYdZcpm5WHM/xNbzZkVpLHA5rxaAEWuJGbhMc+HIbhINDCeQVZijhdLQnijIEh1Dh+YVPcijGCOtIJyBP8XsOTbHFePo9vnE5OgaJ3Kcc+AEw+yiDTkwzS8bjGTA7qTIitZihHemini5o0G9V3JFNRsCVPK8hcwFJztjL9giiHfAUE4bGaaPBmVLEjI20dXzYL7R6WgMdDI6ilA0ozXJGpRlCzR+Qg/h0lsyw+JFk9L8xZ+WZkZW2HHW6f3ywDZCf40Nh+pfiuPbet1QQnXLkKp7NZ8fwGg0RC8waB+JT7ByrVRyAspN/5Ohrl+Y3EvOxyvNtGVba+Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDsNiAWHtoQRI+nrGFAYPWXLaA62DD1cjI15R5D/rmg=;
 b=rijj1dOQfsIgq+Nc5pXzWpWalO4AQtl2ROvKzGVo7p2AeWHkH6t+SDTI/eYCmr4dU4tUe+k17Gnjl1jzb2ZnMioTWdVB8xYLS63EPfhnTqgi9CaZYHSlY/fsTDgbKjAD3zKy4LItuMmBiSObz4uBvSzjiirSUx1A+GmpHm0rXADbnF5XxxWaSPgUUvXQQZkS2sVusF0VyUjH3qV65vEXkaftn729BRG58jBJ2KI87sWH148/W3ioLtdUGJ4CnJQ4ZPfcpfkaKuulKqdRiMLy8TV7GSkAyaY0lrTWcC/JClBvkurCRmDZ1lOeyeHOmkfKKJyJftQsgNiu68R9+rddWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 09:30:30 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 09:30:30 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v4 01/13] drm/i915/display: Remove TGL DC3CO support
Thread-Topic: [PATCH v4 01/13] drm/i915/display: Remove TGL DC3CO support
Thread-Index: AQHc7USEdpTJSYEtS0uTpPhChKk/MLYhnB5g
Date: Wed, 27 May 2026 09:30:30 +0000
Message-ID: <DS0PR11MB8049CCFA0B70E02014624668F9082@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-2-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-2-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH7PR11MB5794:EE_
x-ms-office365-filtering-correlation-id: c75928e1-b78c-46d4-23b0-08debbd29825
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099006|22082099003|18002099003|6133799003|11063799006|4143699003;
x-microsoft-antispam-message-info: yEFb/r+EDATpFjnOc5emQBmeg7QrH+YH7sB0/ScvjySb1dDB01Lf7z9KNug3mO8le1UmVtcNmTjn7agj8O4PUkvo8iglBIWFv0ersWyI+qkHb80dft/cb7wWU868PRA8rXW4lHnrzHV3yzG+0/NG68v+Kys3AjxSvgv1hboUrfXvPtC6IYfhGs3ZwK8jB2A/PDh69e2k0cb0b2zeDnzq4omBnNMemkOUEsO8EU1KQ36dEP8WDUzd3iQEQqTtUwwAX7WwM5r/1z/a8m357eKebLWI7w1Zoewjx3yP5n5Zy2z3APwPiJIG72a+Io2BvfVVcjnKxLkq5AEgOdgAg7i1OqZIEcjbavQ+WZpudcavO3El/bP7GWfsSjY8GIThkz/t+5zkZbJpCnXzjlrWb0b4/YAFnDOPJQAwshJwXppf2ETdtzp/cUmgDrpflQrmlo4nsayfn43dTJ6a5GghRAZrcqliMloC3tnS65B0Vf/4E0bIGMpRWvaGAaVdpAInthbhWCl8wH/QGSfm5jK6IrspfZojh3CJS6eAxBcAgLiyiaXRi+nAcPNtAI7muxm0ygVK2QjqYvrNTB2tDZJ2o9mxTFcaiWBSkJ0GqJ034NP8RZ8gACXEl3ZLLLjpM8k6ajINbyx54sOQA4hijWRqKlgL2v9duFOvTuHlEepIRK9SgsnvD/ViH/VopeQDeJ8DzvE6CHnTNuDI4BjwMWI3docu57gsIDdLp1P2uYktOAk6il1TxPY5Xll0m5+YT0K5MN0Z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099006)(22082099003)(18002099003)(6133799003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?59IzxVmk+MVu8JSMgvefYus6cHMdGTp4l6m34VGFr7cZHcOuLvrtu/b1vyqN?=
 =?us-ascii?Q?1xGdDl/0bEIXPb1GquZMVyb9ePljVFDkVDgazvcdRdXpTkz+bDKu89JYqoIC?=
 =?us-ascii?Q?wvlpf3upy+jK3FS0RxSp4G3+yIbpC+cWtfMDTKncpvxKuBwQ+DErWHKAMDaa?=
 =?us-ascii?Q?onSCs+c+7KbZzgi6kx97zpSrTIX+zfgQeV9NlI4027wF8znfAyMGTqfQ89/S?=
 =?us-ascii?Q?lkuVHu+MlemwP6WumSg7hH+jdNwOubyVyCE1xl2q8fpEmV3qFNbC15f+OHGy?=
 =?us-ascii?Q?IjQVR3uOFXqbmrKXCU7LfG7c5ceBiy1YHj0u2H+4iMASd9nXieREqVatBcOr?=
 =?us-ascii?Q?MCyhTEF6xkh4S7repAgxhecfiGrox5g2+noESXBjclEo/IbtxUYFa/FIqXsG?=
 =?us-ascii?Q?zSSJ8SCLzTGzMPcngVgbNkB3tJDFqQch7TopwVjwDKLqCSY0uAKrtgmOGO0+?=
 =?us-ascii?Q?YCmxhU5AQHsIwVCWQZGhkmU2z+93UbXbhgOSE6PQd9OQBLGTAvX/Yz1Pk3dV?=
 =?us-ascii?Q?buiBWxNS6tSohjStDgyRm8Je3A9OO4ul5XNx0GJ1malHVynHWcWVebM75pGg?=
 =?us-ascii?Q?KioXjY04JgfwOVLaCate+xhippsOaWUXtpH+sMVm3Md0GNDGxeUMyvArDzvQ?=
 =?us-ascii?Q?wv4m6ftOok+5Ugf6noV8vRH516RUx7k8lKa/ae91/V6QAHXUdAvmhxX1IQi0?=
 =?us-ascii?Q?VrhKe5Fmf9WZBJeBzR04SOIXkWk53mdVxvQ+vG6in7P7Z289ZHbGQHFib/ey?=
 =?us-ascii?Q?GD8XspcbEgTH9TxIMcjGI/S3eUaG5KWo50jdhe79TfmfN6HfeDYx6VnaRDJs?=
 =?us-ascii?Q?/Fhzlq4p0R5Ce9x+CCkHJkDJPOnCO+t3a0gX3rWvxGKJbe66AHG6W+WdPjpZ?=
 =?us-ascii?Q?phpVZZ4IfHxpQRODsnwCKxyHVTlqjCv2jKeEnthSdLkrZvLqj6dvGSwRMTty?=
 =?us-ascii?Q?Y/L6p3upo1VvBGEasktA5S+ioljze5veQHmog85jlScmD6SZBNYScwaL2K5u?=
 =?us-ascii?Q?06khxVyrOKkK8H8b4n25n79G/2G9mclm+O+LeUbWK8rX/goAX1BE5FnY00WA?=
 =?us-ascii?Q?hvNLKsITLpUXL7E8LXN0jA4hE4n+L4m3tYuXkCuuI84TnvODahnd4HVuB88R?=
 =?us-ascii?Q?qViMNNffC1Wx6jHOCLvAZsEswJQCR0ehThmW85csqYOJwDOeeNV/cbmRHaNl?=
 =?us-ascii?Q?7NpPPCjdv0He/q8AHsflTydTsX4VLVG4Bp2Ll+8lK5+I4QrqvZXCKeK9u3EK?=
 =?us-ascii?Q?iL4212uPpoXZoS+Vz7LBywCAHf/EFwZWciTeuoXcVj4wCrCS1E+af4ay0BsK?=
 =?us-ascii?Q?336EMEidRFoJX1onYOvJoMPDyPfa7cl0N4FKQ/vMnhvyjRsqJTpjVB+t8eas?=
 =?us-ascii?Q?UpGCJvHUiZUG770sJqbAtRYMBuFuLBKZHPlgUe/NLucLVGkTISUqTpGvElpY?=
 =?us-ascii?Q?I2RYi8waBfzaEsfoUymqlqjcuurzuXvq+xbpzsnH98Us3YqF119RLSZUYFxX?=
 =?us-ascii?Q?Q5OySGpx9JGX3WvJLl3DYSZMEh8NEGU75kv7dAh9FNPOfxxbJ7QcAGU1dW49?=
 =?us-ascii?Q?lZJ7X1d+pomnlx5XCPShZaPLclik+i23YT4+u22PJMsmJ8yH8+IG7pQMA7pR?=
 =?us-ascii?Q?s6o1I4c4tWK3w+gJg9VjPQtPO/IpWDeNLhAynX4g+IZFNDSF6LZd2ZqH2VUs?=
 =?us-ascii?Q?2w/DYLEQITVp5ETW04tsrslFQj0sePYWqVfLZu9DrTKl+KMgPbPuuk3MKVrT?=
 =?us-ascii?Q?0/F8kDO0vA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mIjMfc6S+A/wynVaw1tXXoQFv/IKmWPgJdIbpD0DEz8W6cBosLSEzFahd45+AzZnNlUC5GT8vgafv1jgFO2gtBV2NympDeWDdz3nKe0Qk2erMeXfYAsWlne/JTZrRp+Z1KUDk29mytpWMZq8X6/Zd2ltk4hZbx2yJpSfMgIX3gdAUHCQ5VgbY3SCnRUO7zl/XN+ysC41JIxi4YmPi59epP2uc+RyEv3v8q59hwnzPK54BA5zaVj/TG05ppWSSatoU85tPk8lRP66j0/KO2NTkjcLzGjnegfCNWo8xOcp12/PyUOK/yQ86jBZtVulBUKB7C0reuW6Lih/OVYUPkdJfQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c75928e1-b78c-46d4-23b0-08debbd29825
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 09:30:30.3087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5XZT3W1+h4W4M1yIKNyxtBp35Odini93B/Kvx7OBGsejfIhS3ERfE1ikCd3kJfW5qhA/fE0gGwoXxThHoFioUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4BE075E1D5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, May 27, 2026 12:48 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v4 01/13] drm/i915/display: Remove TGL DC3CO support
>=20
> Remove all Tiger Lake DC3CO-related functions from intel_psr.c and
> intel_display_power_well.c, as the feature is not enabled and not used.
> Also remove the TGL/DG1 DC3CO count debugfs entry from intel_dmc.c, as
> DC3CO is not active on those platforms. A new debugfs entry for Xe3LP wil=
l
> be added in a subsequent patch.
>=20
> Remove the unused dc3co_exitline field from struct intel_psr and struct
> intel_crtc_state, along with the corresponding EXITLINE register read in
> intel_psr_get_config().
>=20
> Changes in v2:
> - Squash "Remove unused PSR dc3co_exitline field" and
>   "Remove unused dc3co_exitline from crtc_state" into this patch
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  .../i915/display/intel_display_power_well.c   |  25 ---
>  .../drm/i915/display/intel_display_types.h    |   3 -
>  drivers/gpu/drm/i915/display/intel_dmc.c      |   6 -
>  drivers/gpu/drm/i915/display/intel_psr.c      | 171 ------------------
>  4 files changed, 205 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 04bd0dde5bed..2f0d0a77c1a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -866,23 +866,6 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> -static void tgl_enable_dc3co(struct intel_display *display) -{
> -	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
> -	gen9_set_dc_state(display, DC_STATE_EN_DC3CO);
> -}
> -
> -static void tgl_disable_dc3co(struct intel_display *display) -{
> -	drm_dbg_kms(display->drm, "Disabling DC3CO\n");
> -	intel_de_rmw(display, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
> -	gen9_set_dc_state(display, DC_STATE_DISABLE);
> -	/*
> -	 * Delay of 200us DC3CO Exit time B.Spec 49196
> -	 */
> -	usleep_range(200, 210);
> -}
> -
>  static void assert_can_enable_dc5(struct intel_display *display)  {
>  	enum i915_power_well_id high_pg;
> @@ -1061,11 +1044,6 @@ void gen9_disable_dc_states(struct intel_display
> *display)
>  	struct intel_cdclk_config cdclk_config =3D {};
>  	u32 old_state =3D power_domains->dc_state;
>=20
> -	if (power_domains->target_dc_state =3D=3D DC_STATE_EN_DC3CO) {
> -		tgl_disable_dc3co(display);
> -		return;
> -	}
> -
>  	if (HAS_DISPLAY(display)) {
>  		intel_dmc_wl_get_noreg(display);
>  		gen9_set_dc_state(display, DC_STATE_DISABLE); @@ -1114,9
> +1092,6 @@ static void gen9_dc_off_power_well_disable(struct intel_displa=
y
> *display,
>  		return;
>=20
>  	switch (power_domains->target_dc_state) {
> -	case DC_STATE_EN_DC3CO:
> -		tgl_enable_dc3co(display);
> -		break;
>  	case DC_STATE_EN_UPTO_DC6:
>  		skl_enable_dc6(display);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f44be5c689ae..1cfc585530dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1184,7 +1184,6 @@ struct intel_crtc_state {
>  	bool pkg_c_latency_used;
>  	/* Only used for state verification. */
>  	enum intel_panel_replay_dsc_support panel_replay_dsc_support;
> -	u32 dc3co_exitline;
>  	u16 su_y_granularity;
>  	u8 active_non_psr_pipes;
>  	u8 entry_setup_frames;
> @@ -1776,9 +1775,7 @@ struct intel_psr {
>  	bool source_panel_replay_support;
>  	bool sink_panel_replay_support;
>  	bool panel_replay_enabled;
> -	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
> -	struct delayed_work dc3co_work;
>  	u8 entry_setup_frames;
>=20
>  	u8 io_wake_lines;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 481fb65b7110..4785001644f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1647,19 +1647,13 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
>  		   DMC_VERSION_MINOR(dmc->version));
>=20
>  	if (DISPLAY_VER(display) >=3D 12) {
> -		intel_reg_t dc3co_reg;
> -
>  		if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
> -			dc3co_reg =3D DG1_DMC_DEBUG3;
>  			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
> -			dc3co_reg =3D TGL_DMC_DEBUG3;
>  			dc5_reg =3D TGL_DMC_DEBUG_DC5_COUNT;
>  			dc6_reg =3D TGL_DMC_DEBUG_DC6_COUNT;
>  		}
>=20
> -		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(display, dc3co_reg));
>  	} else {
>  		dc5_reg =3D display->platform.broxton ?
> BXT_DMC_DC3_DC5_COUNT :
>  			SKL_DMC_DC3_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index b0414bd1dc6b..730ca7af7873 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -88,22 +88,6 @@
>   * issues the self-refresh re-enable code is done from a work queue, whi=
ch
>   * must be correctly synchronized/cancelled when shutting down the pipe.=
"
>   *
> - * DC3CO (DC3 clock off)
> - *
> - * On top of PSR2, GEN12 adds a intermediate power savings state that tu=
rns
> - * clock off automatically during PSR2 idle state.
> - * The smaller overhead of DC3co entry/exit vs. the overhead of PSR2 dee=
p
> sleep
> - * entry/exit allows the HW to enter a low-power state even when page
> flipping
> - * periodically (for instance a 30fps video playback scenario).
> - *
> - * Every time a flips occurs PSR2 will get out of deep sleep state(if it=
 was),
> - * so DC3CO is enabled and tgl_dc3co_disable_work is schedule to run aft=
er
> 6
> - * frames, if no other flip occurs and the function above is executed, D=
C3CO
> is
> - * disabled and PSR2 is configured to enter deep sleep, resetting again =
in
> case
> - * of another flip.
> - * Front buffer modifications do not trigger DC3CO activation on purpose=
 as
> it
> - * would bring a lot of complexity and most of the moderns systems will =
only
> - * use page flips.
>   */
>=20
>  /*
> @@ -1217,108 +1201,6 @@ static void psr2_program_idle_frames(struct
> intel_dp *intel_dp,
>  		     EDP_PSR2_IDLE_FRAMES(idle_frames));
>  }
>=20
> -static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp) -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -
> -	psr2_program_idle_frames(intel_dp, 0);
> -	intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_DC3CO);
> -}
> -
> -static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp) -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -
> -	intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> -	psr2_program_idle_frames(intel_dp,
> psr_compute_idle_frames(intel_dp));
> -}
> -
> -static void tgl_dc3co_disable_work(struct work_struct *work) -{
> -	struct intel_dp *intel_dp =3D
> -		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
> -
> -	mutex_lock(&intel_dp->psr.lock);
> -	/* If delayed work is pending, it is not idle */
> -	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
> -		goto unlock;
> -
> -	tgl_psr2_disable_dc3co(intel_dp);
> -unlock:
> -	mutex_unlock(&intel_dp->psr.lock);
> -}
> -
> -static void tgl_disallow_dc3co_on_psr2_exit(struct intel_dp *intel_dp) -=
{
> -	if (!intel_dp->psr.dc3co_exitline)
> -		return;
> -
> -	cancel_delayed_work(&intel_dp->psr.dc3co_work);
> -	/* Before PSR2 exit disallow dc3co*/
> -	tgl_psr2_disable_dc3co(intel_dp);
> -}
> -
> -static bool
> -dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
> -			      struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> -	enum port port =3D dig_port->base.port;
> -
> -	if (display->platform.alderlake_p || DISPLAY_VER(display) >=3D 14)
> -		return pipe <=3D PIPE_B && port <=3D PORT_B;
> -	else
> -		return pipe =3D=3D PIPE_A && port =3D=3D PORT_A;
> -}
> -
> -static void
> -tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> -				  struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -	const u32 crtc_vdisplay =3D crtc_state-
> >uapi.adjusted_mode.crtc_vdisplay;
> -	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
> -	u32 exit_scanlines;
> -
> -	/*
> -	 * FIXME: Due to the changed sequence of activating/deactivating
> DC3CO,
> -	 * disable DC3CO until the changed dc3co activating/deactivating
> sequence
> -	 * is applied. B.Specs:49196
> -	 */
> -	return;
> -
> -	/*
> -	 * DMC's DC3CO exit mechanism has an issue with Selective Fecth
> -	 * TODO: when the issue is addressed, this restriction should be
> removed.
> -	 */
> -	if (crtc_state->enable_psr2_sel_fetch)
> -		return;
> -
> -	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
> -		return;
> -
> -	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
> -		return;
> -
> -	/* Wa_16011303918:adl-p */
> -	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011303918))
> -		return;
> -
> -	/*
> -	 * DC3CO Exit time 200us B.Spec 49196
> -	 * PSR2 transcoder Early Exit scanlines =3D ROUNDUP(200 / line time) +
> 1
> -	 */
> -	exit_scanlines =3D
> -		intel_usecs_to_scanlines(&crtc_state->uapi.adjusted_mode,
> 200) + 1;
> -
> -	if (drm_WARN_ON(display->drm, exit_scanlines > crtc_vdisplay))
> -		return;
> -
> -	crtc_state->dc3co_exitline =3D crtc_vdisplay - exit_scanlines;
> -}
> -
>  static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  					      struct intel_crtc_state *crtc_state)
> { @@ -1688,8 +1570,6 @@ static bool intel_psr2_config_valid(struct intel_=
dp
> *intel_dp,
>  		return false;
>  	}
>=20
> -	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
> -
>  	return true;
>  }
>=20
> @@ -2004,12 +1884,6 @@ void intel_psr_get_config(struct intel_encoder
> *encoder,
>  	}
>=20
>  	pipe_config->enable_psr2_su_region_et =3D intel_dp-
> >psr.su_region_et_enabled;
> -
> -	if (DISPLAY_VER(display) >=3D 12) {
> -		val =3D intel_de_read(display,
> -				    TRANS_EXITLINE(display, cpu_transcoder));
> -		pipe_config->dc3co_exitline =3D
> REG_FIELD_GET(EXITLINE_MASK, val);
> -	}
>  unlock:
>  	mutex_unlock(&intel_dp->psr.lock);
>  }
> @@ -2137,16 +2011,6 @@ static void intel_psr_enable_source(struct
> intel_dp *intel_dp,
>=20
>  	psr_irq_control(intel_dp);
>=20
> -	/*
> -	 * TODO: if future platforms supports DC3CO in more than one
> -	 * transcoder, EXITLINE will need to be unset when disabling PSR
> -	 */
> -	if (intel_dp->psr.dc3co_exitline)
> -		intel_de_rmw(display,
> -			     TRANS_EXITLINE(display, cpu_transcoder),
> -			     EXITLINE_MASK,
> -			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT |
> EXITLINE_ENABLE);
> -
>  	if (HAS_PSR_HW_TRACKING(display) &&
> HAS_PSR2_SEL_FETCH(display))
>  		intel_de_rmw(display, CHICKEN_PAR1_1,
> IGNORE_PSR2_HW_TRACKING,
>  			     intel_dp->psr.psr2_sel_fetch_enabled ?
> @@ -2246,7 +2110,6 @@ static void intel_psr_enable_locked(struct intel_dp
> *intel_dp,
>  	/* DC5/DC6 requires at least 6 idle frames */
>  	val =3D usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
>  	intel_dp->psr.dc3co_exit_delay =3D val;
> -	intel_dp->psr.dc3co_exitline =3D crtc_state->dc3co_exitline;
>  	intel_dp->psr.psr2_sel_fetch_enabled =3D crtc_state-
> >enable_psr2_sel_fetch;
>  	intel_dp->psr.su_region_et_enabled =3D crtc_state-
> >enable_psr2_su_region_et;
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false; @@ -2325,8
> +2188,6 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
>  		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp-
> >psr.transcoder),
>  			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
>  	} else if (intel_dp->psr.sel_update_enabled) {
> -		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
> -
>  		val =3D intel_de_rmw(display,
>  				   EDP_PSR2_CTL(display, cpu_transcoder),
>  				   EDP_PSR2_ENABLE, 0);
> @@ -2468,7 +2329,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
>=20
>  	mutex_unlock(&intel_dp->psr.lock);
>  	cancel_work_sync(&intel_dp->psr.work);
> -	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
>  }
>=20
>  /**
> @@ -2499,7 +2359,6 @@ void intel_psr_pause(struct intel_dp *intel_dp)
>  	mutex_unlock(&psr->lock);
>=20
>  	cancel_work_sync(&psr->work);
> -	cancel_delayed_work_sync(&psr->dc3co_work);
>  }
>=20
>  /**
> @@ -3650,34 +3509,6 @@ void intel_psr_invalidate(struct intel_display
> *display,
>  		mutex_unlock(&intel_dp->psr.lock);
>  	}
>  }
> -/*
> - * When we will be completely rely on PSR2 S/W tracking in future,
> - * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
> - * event also therefore tgl_dc3co_flush_locked() require to be changed
> - * accordingly in future.
> - */
> -static void
> -tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int
> frontbuffer_bits,
> -		       enum fb_op_origin origin)
> -{
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> -
> -	if (!intel_dp->psr.dc3co_exitline || !intel_dp-
> >psr.sel_update_enabled ||
> -	    !intel_dp->psr.active)
> -		return;
> -
> -	/*
> -	 * At every frontbuffer flush flip event modified delay of delayed
> work,
> -	 * when delayed work schedules that means display has been idle.
> -	 */
> -	if (!(frontbuffer_bits &
> -	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
> -		return;
> -
> -	tgl_psr2_enable_dc3co(intel_dp);
> -	mod_delayed_work(display->wq.unordered, &intel_dp-
> >psr.dc3co_work,
> -			 intel_dp->psr.dc3co_exit_delay);
> -}
>=20
>  static void _psr_flush_handle(struct intel_dp *intel_dp)  { @@ -3764,7
> +3595,6 @@ void intel_psr_flush(struct intel_display *display,
>  		if (origin =3D=3D ORIGIN_FLIP ||
>  		    (origin =3D=3D ORIGIN_CURSOR_UPDATE &&
>  		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
> -			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits,
> origin);
>  			goto unlock;
>  		}
>=20
> @@ -3823,7 +3653,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		intel_dp->psr.link_standby =3D connector-
> >panel.vbt.psr.full_link;
>=20
>  	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
> -	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work,
> tgl_dc3co_disable_work);
>  	mutex_init(&intel_dp->psr.lock);
>  }
>=20
> --
> 2.43.0

