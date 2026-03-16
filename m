Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBQrO4Kft2l/TgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 07:13:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75B4295035
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 07:13:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFEF10E2F8;
	Mon, 16 Mar 2026 06:13:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/ZVe+iB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BA310E0B1;
 Mon, 16 Mar 2026 06:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773641598; x=1805177598;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NMFrBNo5c1J0eYaeYydjlwN/fnPTI86o4eaTUKWoXkY=;
 b=n/ZVe+iBpAKOeNEtf9tow+vQdOFIJcCcOFC9dSv42O6/nt1VjNEe6/YC
 aGSqCWe1f6QGvimG6pHfsmLBKnUQJsnmB8jgb0t9mdJ+Hr+ioUI+zfovo
 PyE+vo9826MEpjKs93adFSGcKri2EGKR+f4rZGZHyz3MDMxuji1UANdYy
 s/hWgs5WZQZeK2ZVU3rA7RlT/4RP3nLRfC4Pix9hfq63JEOnBaYCG9ddm
 wS3VdL5p2/C9zp89mouAN1cHnEE84hxahKLyEv5SxeFUokafchobp1BCH
 clsFGCgtoSDO8DxoE6+BQaeZFh0EcSspEHVqr42lRikj8MfiHCG/pA7cn A==;
X-CSE-ConnectionGUID: 7ZVRDBP/S7yiDMl/v9m+9Q==
X-CSE-MsgGUID: UqHyh14ETjGBiYF+nGkKYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74838766"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="74838766"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 23:13:17 -0700
X-CSE-ConnectionGUID: AnQ6Id9oRAi13ES9A1+z6g==
X-CSE-MsgGUID: vfj3fVXpSqaQGsqx0aVQYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="222014171"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 23:13:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 23:13:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 15 Mar 2026 23:13:15 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 23:13:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H7WNTTq3ZVgFon4i1etz1scGE+nJ5fEWE4vozAu9l/OBuZ7KUkxTowN5qIEedQcxTnxqz93Nc1H3kMIhOJGIrRrSg1H9mFKJpa6I2Qrar5yVvwHBT0wS1TZfiDyaHPjjb5gqw2PwD5s8EI3MFFxTs1jJbSiHvojZWFKpwUQDTibzu5Ip30ScafGFFDnIjudzWesRzr4LyIoHuHe6KR94rpM0h//M1GKEFTMPIMQ5dCjpTSXz+rmahtEu2fperNeLhl9wxI+UMoy6w44uxjgTTS/LeOBVFQQCn97TiNQIOtJ3ygazvG4jVdssVtngyVdJzZvpaoV2VUyKM1LfVKD+9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iZw76BOzLflKfHI/GgqmQXp4JrLEwMzhay7DwXQdHiU=;
 b=IEsCJhlpNLFLzMv0Oosh/+levS+/2RWXUyr9j7iFhvyAxGz1Ha52fSDubJus9KFNG4S876hdxwdBHLrIk3DEfQPuURc8WUAo7hccEdHPZr+fSCb3hgoXFDC924KRoFe19cd6FpDlomFgoeC831K+4XGtjEMnRATUXxhnzRd//8gAsFEVyCYxURgglwGCZSvHbqPOBDD2L+zzlc7FLiHv/3Ty7bBd9Hpf/SxIfxGm5mES9CapZ7V7jS2sG/ArADZTfHVlzCKrUwhgDK5NjddZfKV0D86BIRAUHztBLJ9VIbBxaQyaWkcPqiETq8bIK42Twbpi5+Wkpqw4Tj9wF+fDfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8)
 by MW4PR11MB6691.namprd11.prod.outlook.com (2603:10b6:303:20f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 06:13:12 +0000
Received: from BL1PR11MB6050.namprd11.prod.outlook.com
 ([fe80::37cd:d599:fc6f:eef4]) by BL1PR11MB6050.namprd11.prod.outlook.com
 ([fe80::37cd:d599:fc6f:eef4%5]) with mapi id 15.20.9723.014; Mon, 16 Mar 2026
 06:13:12 +0000
From: "Samala, Pranay" <pranay.samala@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/backlight: Check if VESA backlight is possible
Thread-Topic: [PATCH v2] drm/i915/backlight: Check if VESA backlight is
 possible
Thread-Index: AQHctPOzBl16krbgnESm5NUd9Gm7oLWwrWNQ
Date: Mon, 16 Mar 2026 06:13:12 +0000
Message-ID: <BL1PR11MB605085B725B919EAF8EA7745E740A@BL1PR11MB6050.namprd11.prod.outlook.com>
References: <20260309053956.3966624-1-suraj.kandpal@intel.com>
 <20260316031850.81794-1-suraj.kandpal@intel.com>
In-Reply-To: <20260316031850.81794-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB6050:EE_|MW4PR11MB6691:EE_
x-ms-office365-filtering-correlation-id: 09fbe551-534e-45ac-c545-08de83231a68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: npQnLIvdqOSCckWyROiN7c59wJYPD9PJQUKZ1fZlSbqoLXaMGBg1VNPr4LXk4enhSvZQWa3PcYttOtn7hrggVQmoq1Xlg0ve+tJOve1DtEk3Io5YR3WLT7SFTmGCBPTrJhxuLmiasbnfNSYNHfwHA8jd7vlHL7fRcB+JVtsLcRa7AUsUHYTD/6kOx6SyF2envhCAv2SQAnJAn1kySawDGdYJjlNkIjjob4xl++ZlhjpwHWHrmvtHTWydWZi1KoHe5jOomXgFsPc1dL5f/C9Jv+Jx+fatr3LN0ISBMhO55ZE4XBEOqMt6Gw5C7Lbd/juYU9gSycDG5Xigkx/6+3a/NA/Afg1fHPKlkkiq8cn2aNZgnj6weYYSmrPFmdtdoE3v4aBL+QcdS0/+dt59UI3oNwXvDCy0nqmmSDELVnrjS6pJxv4CbCMJMsFu9D5OAlONXQbn4R7ptLU0naeteHHbFddvds+xsj/Y5NFT5gje6DARUtoWnZQG+NpMUi1ZNz3gzVCKDbOTAVWd5mYOS0uJNvT+k8gpIXtiTuN30qAhUJFYDSpSjp+iAV0MuX1YEdV8y9SWOpii0Jd3vOyRANUsPg/faJmTzgVter1m1gRt6euC/RVWjXfUPMq85a3iGu7qck87t3mP8dYFrwUn+1OALRQSeRpkTSlrp2wRSueT8A0yvzsJHzsowYbiYPlduPJug37ebykwwndlZTm7xQVJFrSxSMQ2oKgB9OT6Xdt/WAw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6050.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gVjtSa2VFpJPy9XYLcoxC7b+XxsH/vYJ/vyqArl7NJ8UHPjZ9BS6EwDUIBTc?=
 =?us-ascii?Q?+CV7WGefH3la807NuCYd/UjU1mjF032CPBJGJNdOfd4HJJgRTwokSN3KdzGT?=
 =?us-ascii?Q?Pxp8PDMIieTfXmNnAXvwnAajHgNjxueopDoId9OUOneH1DXPxXnoR5c5tNnN?=
 =?us-ascii?Q?Ob+C8yhx5yRrw0fZ9Sj6DSg68SLqbcf3dYrDaFmCfzlQgIDN9k/IzWqQXIyX?=
 =?us-ascii?Q?Re7EhfEzCIxWVOOPgeVRA79YlOhKwQXy1xUV4+UklhrxmZRQWkb6uNEeX10n?=
 =?us-ascii?Q?74cLF78oa9ye/uHNJZTHzVPjsJ5qpbECneoJBpX7amRRpGlgQRF8CFRUP3vb?=
 =?us-ascii?Q?SJtfd/fsBt193mw1yq0N4Hc7LWC5KqR3Xpy0hh4Nd+3lZgMojE2V6Yo29TJe?=
 =?us-ascii?Q?3UQE6mTZDTF0R8p3zlb/xXJmtE/UyL+VTIg1nyimpEmc7qp1zotMtpx1pMex?=
 =?us-ascii?Q?8S9cNkNHF8QJWwmHC3jt9fa0C1Udh/DeAKZ6WmZswyhm4XZvziLyOJVVXdnK?=
 =?us-ascii?Q?ibCb8ALlqIezovNE3vOzLj4c0slqTEf9bD6LTakgIUrG7SpHEgoKtBImsoPx?=
 =?us-ascii?Q?gw4M26Jx9Rr3+2JjRJKqcmunA5ur/Ao/W1jYof7er3bWbOfTMipHEOSgrNP4?=
 =?us-ascii?Q?bhqjI5ixi8hQKyfLsS4L9BY8aWLlUdVZCXe7GHOs/EHsRIeQaDxErxT8CtxJ?=
 =?us-ascii?Q?ekCjd6oFW60AqR7Ozqc9E4ldjTqULv7nX6ItElvfOpaklead7dZmcuZzbIWE?=
 =?us-ascii?Q?QzEheeI4hGXs/b0L3Ckwu/Eow5zQGYMw3NGVYVsZoio/UFPUZTyRnm5YAtWN?=
 =?us-ascii?Q?p2JUCXhvZWIhuW3nNRWU8lkdwyQwiDVYXTlnx2SkOvvpeCZkrqad2j2aR8YE?=
 =?us-ascii?Q?l9jLlmupDHi6xctYF5EVWH6NtwpSuoKQ42porQSQggmGtNQLXCc8+xUV78cT?=
 =?us-ascii?Q?64errDtjV9jzguLvOaO7QfALm2sUUUe/WqB6fn79KyvafIDuzoiDriR3E7FB?=
 =?us-ascii?Q?kefccen9ADAi6eoegRbJHUBudQVvSpP7JUCQ3eeOrfHkSv0xsBmUh58VuDgu?=
 =?us-ascii?Q?0rFkm0sHctAIWmFrI5AmY4tBx+T/b/Poiba7mfPz3P/Cq4XfCsdlTnIRzOF6?=
 =?us-ascii?Q?On6JmtZMk88GtnKL973ydEQK9qM8qL1CRkE8rwOyzoxtValLaxzjSi/O2Hl/?=
 =?us-ascii?Q?Qu8iu6/9fyQVm1510MZECMP+mN4/4GouhO6CdS6jZRYEXyN8/ccIM4vae87n?=
 =?us-ascii?Q?slQq0B611lXaOZUw+4cHDZHGF9zXiZk75hmW0jeHmo1cxLn0cnlZjFF58dvG?=
 =?us-ascii?Q?hoiJiYcAmj1CHW1tQtomxY7zf8UMv9KqqfwQpgzlkWlop9ejxFbUhJoowbiX?=
 =?us-ascii?Q?cmrcPHvFWLqXassFqD/rzWJG5Oz33PXpO/zTP/GKxmihG0KH6nuHGhxdbzoc?=
 =?us-ascii?Q?a2YXv7u4WDo+CtSIF1QLDSh4+l1k0qJD5UWNsnoNgLBsmngFjt37qe3NijtL?=
 =?us-ascii?Q?Jo9mydN2izlGqdcZqregprME+hj7zqDjkssAlxrg9ZjvkQewRyQfuVMVr6yy?=
 =?us-ascii?Q?kFPGnRyqXKfsKVHpYMqsHLNX+vxNULoX6fAxO+IFC0mTupWyiZo6SKA6cvoZ?=
 =?us-ascii?Q?/euhhnO6DoeemtQ3Ea+q1xdVqocy6+HMNFoFqcWR0ILDsYuU0IYZEgNUpiBP?=
 =?us-ascii?Q?ZiQ0a0/j3wRDyvAbF7tgEGLrmsMNHJe16OUalFXD8wc9BlEsxVOq7+bZ8X4i?=
 =?us-ascii?Q?tdEuMRa1lQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nxCSn1FOdisnBGSIWUBh8831IFUvQ+g4TPykU6vFoeo2wn/MLh3u2UX9y9sjXnC3Cfneg3x2AW3sPjlI7fjdORQIt4+cJiVNH93jUc+YD6gEFNk/k5fZcgg07vygYi2BCx2X0k5Dk1I/x2P1BUGjqxuSwoL6t11zPd7/7NH7AWdcTGR5D7U4ofNAKoi0zQ5awCS2/yTt2cyF6Y+Vr6gTeT+gB7t9XDw+Xqeb3RNaimmoHObTVpstSH8tc2uOV7hb2LOMzVKSaLw1cLW9k7oQvyRweuT2DrA/EbS7Nf4lgeLl1PYmCy6in6fZX9fwZBReKZtx/gCI4JHKABOdv22ceQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6050.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09fbe551-534e-45ac-c545-08de83231a68
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 06:13:12.2902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lr6IjljXVZTKVoiuuyrH2uzlxAVaok78iDu4wc9Js1GIcUzCpCr+jKYZsNccWYkgbMOOUgUrMHEQ6VbTv16EXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6691
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
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,BL1PR11MB6050.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E75B4295035
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, March 16, 2026 8:49 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Samala, Pranay <pranay.samala@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v2] drm/i915/backlight: Check if VESA backlight is possib=
le
>=20
> Check if BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit is set then
> EDP_PWMGEN_BIT_COUNT_CAP_MIN and
> EDP_PWMGEN_BIT_COUNT_CAP_MAX follow the eDP 1.4b Section 10.3.
> Which states min should be >=3D 1 and max should be >=3D min. Some legacy
> panels do not follow this properly. They set the
> BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit while not correctly
> populating the min and max fields leading to a 0 max value.
>=20
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514
> Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Changes LGTM,
Reviewed-by: Pranay Samala <pranay.samala@intel.com>

> ---
>=20
> v1 -> v2:
> - Remove aux_set variable (Pranay)
> - Fix commit message (Pranay)
>=20
>  .../drm/i915/display/intel_dp_aux_backlight.c | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a7b186d0e3c4..d0c76632a946 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -609,6 +609,34 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> intel_connector *connector,
>  	return 0;
>  }
>=20
> +static bool
> +check_if_vesa_backlight_possible(struct intel_dp *intel_dp) {
> +	int ret;
> +	u8 bit_min, bit_max;
> +
> +	if (!(intel_dp->edp_dpcd[2] &
> DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
> +		return true;
> +
> +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
> +	if (ret < 0)
> +		return false;
> +
> +	bit_min &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> +	if (bit_min < 1)
> +		return false;
> +
> +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &bit_max);
> +	if (ret < 0)
> +		return false;
> +
> +	bit_max &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> +	if (bit_max < bit_min)
> +		return false;
> +
> +	return true;
> +}
> +
>  static bool
>  intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector) =
 {
> @@ -625,12 +653,14 @@ intel_dp_aux_supports_vesa_backlight(struct
> intel_connector *connector)
>  		return true;
>  	}
>=20
> -	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> +	if (drm_edp_backlight_supported(intel_dp->edp_dpcd) &&
> +	    check_if_vesa_backlight_possible(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "[CONNECTOR:%d:%s] AUX Backlight Control
> Supported!\n",
>  			    connector->base.base.id, connector->base.name);
>  		return true;
>  	}
> +
>  	return false;
>  }
>=20
> --
> 2.34.1

