Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gF3qKOuXHWpGcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:32:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD60620E73
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED93113401;
	Mon,  1 Jun 2026 14:32:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHJA8xfn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7BF113400;
 Mon,  1 Jun 2026 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780324329; x=1811860329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y+975YYkcWEc0eqMcIGUshmqhqBQVtQNqWu9r87MVlc=;
 b=XHJA8xfn6FC7cUGqmDtk6L8bHyClurvgJ8arHN5qe3SKY4igRAGtyq12
 jYJsBEdnxgAqcll+FOCpNy5wRVNEbL1i+t+R8yoikf8Ciz6As3c6RWbzp
 7OZmm2fWgLvC0mXyve/aId9S5bEQkMEwdJXixkYb4NoaFW3LU6Fa4Kip1
 ln9/+5rJzzXB/oROZ9hD8cc72K6ij/7+tk8r2I9WKWbantbamWMJGKwO7
 +1i4h/K5D1MrFzo/WEbNjPPoXkIBxB9qNBeutnKR94iKYCU7kSThgKU6r
 KZaGYAmWcUJS1Tjae5sEuLFHyc9EJgfc3aSyf8Yjd0Ebnom+tGmiQJJWq Q==;
X-CSE-ConnectionGUID: GNc/juJ4QW2gv5WKAWxkSw==
X-CSE-MsgGUID: JVQ6kw3YRdmSJuldQNg7sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84707692"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="84707692"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 07:31:58 -0700
X-CSE-ConnectionGUID: cUdjo/guQTaDlA5MkThwOA==
X-CSE-MsgGUID: +GOFJ2ftT/+20TTzqM5jJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="239171938"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 07:31:57 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 07:31:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 07:31:57 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 07:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=idPfPkx8a9Z2/s70uXcYDcef9DyiUK/aadLJ1Rq0YybCuQh1MMrGbHl1wcgP+9KHuoGqbqLKEluCFpMVpB0REhBH1k6PTqrG0J1eJJxzj4xVDuaif+np3UFundFRBrr55AnjLKfeTR/1Buue57YLY1JxbS3pqmwDI3mY9pIKVDSzxCXL4DaRxqjUDj2g2iBwbTrDzQ9Zelaz7jQ/nWnKHle7ebj6cL/6wdcwGIj2xeA7Zbko1LtSNrVYJr8VNoBW/8kn7oaOoUptzARyCj+t1MbgcoKjLF8OG01J1eCSKMu0iv2LjBz0DMnZF3lrvuOJM1hAV3EVypZ3GxtyeBVTFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oTRla5bu+IpWJlm35bTh47SNg+I5jUI5i8rqYt0SsjA=;
 b=ZGeaTrV0cUWU5r0Flbq9QbTp2l8ipsP9wQZMwsH58gcwpwE1hr1YlMAezq58Le98IvDkH+8iu5iqA5vizxcu3/zUkSfd6ItABQaWCww5gTnJqjwsTlnyAi0bpDpefIlUK9REhUxged1Td2nKHghrrMGx8wxWemTPsQnIjIs3/vyDQL31mlfjfhokGoqA+0G8ZQE6qseWEX2Cmsa/WKVCWQmMhfFtwZhwEjbyukoWq0dVIZvTX9ap7ZYCJ8b0tDSchVoSv7u9jN8Z2KKoi4ykCK107uWXjuOPzVL0/iD8qfmSREU07sS25/IjbMSpeqyQQbWStXgBsxjAogqR114Hkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.15; Mon, 1 Jun 2026 14:31:54 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 14:31:54 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHc7Rla+9UA0N+dSUSu8T9TyxJDFrYk2gWAgATr7EA=
Date: Mon, 1 Jun 2026 14:31:54 +0000
Message-ID: <DS0PR11MB8049CB50CF5662C94FB7A6D6F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-5-animesh.manna@intel.com>
 <ahlxYUKRBlA1KMDP@intel.com>
In-Reply-To: <ahlxYUKRBlA1KMDP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CYYPR11MB8430:EE_
x-ms-office365-filtering-correlation-id: fe091f63-436a-46f5-53e9-08debfea8738
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: uHPygUjavE2+BPPIM6KbkIx6O5PlaKGuXjgo/1OcDGL42EBCZLL5wmKtS6WKDjlQR8vlq79cPcewH3s8nqBkvpEvUuU42okpdQ3kjXgsDP41I/EHKarkRjqjHlN4TZAni+oderHNhAwgyxDrg0+9RjoI8GGH0ImZql1AEW8Mcj5DwmfPSRhlqhODUT+2CLOwkMsGCDCs+TYHORyuXCpSS7YwGnaq7X5Vm1jgTnJr2uJtXHKzaB/ba7a7FF0dkcwhYvwAmhDTCS8af4HTKp9mtBpXAascoXOPpEIPT55A+BTN6stG2JWeQUbvvtO7m5PLsKk8ir17UaCExHEz/PjZr4uEu7YUEJ4JZ0J//1X2UF4gLKQCJQGSpnzMo+obMJMlaq1mb2k5Z/S2XFysgtWEdbup9gFlnSd7tPWKO4ybCxvDliQ/oXLtQx3bTih8krUh3j+4zSHHm12ysW16K5bPt8UI454dYU5Quafpc/KWUXenA78SkNmbDDZIUw5G8YuT9hstsI655ZRr8PtVFT4Abo7n7l216LAjxyN1XGvM+CB4cHadGT/zSSu01FjNhEfjn+/lWWR0zC6zBy45+8cN4daYF/+NtC70wqwPsMXmFTIevhmQZQifGyuiH4Y37+ecx6xbtcpENDSSAgpq1U55IUROwMd56jy1RKr+slnPqDJOp5e1UZMp36mkYJetSWvIOMJ73taSnB/rCiQ+irtGmdWbqy9goAMcv+jGwdEqqxkogmDdOLqr/hqtuB96XhhU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?sNSM5nZQV+34HSpPwuQgHZOgj8Nj1afXyX/bPgXNQH+XnQYr4egyjVqeLl?=
 =?iso-8859-1?Q?D2Fr9XjjTktb+3hv8gU9wXv0otKMA0wyE32bqttAswers7oIvqOGZ2jOo/?=
 =?iso-8859-1?Q?LhgSBeq+uzV2ISBkZ6cd3NIDxiNLOGEpj+hs6OZjqnkTa5FdFtG9fKtmCy?=
 =?iso-8859-1?Q?welffutciITJSNX20c+gFv5IpU/2PPQsT4L4GkcgHQaMGYTPiyOE6Fc3A2?=
 =?iso-8859-1?Q?QsIYRaqUFCmoy7K1YNU6Mb8H4NVEmCpH1AOJhylugaBqUTuhYhnyO4TXyc?=
 =?iso-8859-1?Q?0uAUKHjqLsiRqW/3lo6PZMeXCpJjQxHtk3K+Q9ud9Hjxvl4R4V/FtyOswN?=
 =?iso-8859-1?Q?laE9VgSm8PiOF8sNhBnjXxcmdVIeg7HIJTyaosCl/Hr+GsIP7ZDfaS4iKz?=
 =?iso-8859-1?Q?iT76yr6lmBZi9mviZpGbZLlng8X9w8qOSFTdiM2C77zzXvOSbv0WzzHNVH?=
 =?iso-8859-1?Q?sz3l0FxremEyV5CkhcavwBH2o1Dca3Ap4SAUi9fiTOPdkgJjF9gdNb4pDX?=
 =?iso-8859-1?Q?P94nkzgSOVWa+RTxZEp0wJlunU5XeVbTSiSs7EWt+z2hUgzBDuQ9dYgj7Z?=
 =?iso-8859-1?Q?TU4ZqdkNI4yHFOxd+KFpb315IuvzCrkpvv/1l1bBwfP/Bp6R/mkg5VQWNa?=
 =?iso-8859-1?Q?Niz9P8+vGB7i0lr0PKHcZpYH6o549Yjqbi6nOvO4KN+hxJyaPrNda5ozFz?=
 =?iso-8859-1?Q?0G+hF0n2+TagG1qAS4eENe2K2e8HYH/na6c/th0bkKKssrz6ncriKvHwhc?=
 =?iso-8859-1?Q?xqFjW45+pBa6W+3wwZTCkhfqhihWOGzdcB7K+1brFjdNrSG62QbAwuUgJg?=
 =?iso-8859-1?Q?9G+2GoOaV19L6nHB4UZFfnpZRP69mddBlKteP5IyHjlo6mrH8ltb2qkpfx?=
 =?iso-8859-1?Q?Y0coRS0ZSaYdtYXfd/SXO+DZWJqi++d2pk6dwR7Aw25jfRmJ6KAUfLShuy?=
 =?iso-8859-1?Q?rKIuTz7RjOaMOB/XbBdF7drMt49CSOcc3APK53ZEfdSrwxGf4qyBCSutLk?=
 =?iso-8859-1?Q?ZROeGrJx9O87aNASO9a5ssUPXM1iKmECoIfY1q2zNDAav1X+/IUCTSQvrJ?=
 =?iso-8859-1?Q?P30QvXbcXpcXd8pImmgcgGe32qNgDUU+zopsw5FG5BfoHpPQMm+ctkwdJE?=
 =?iso-8859-1?Q?zt6voGNkHBLhpS28XU+7icYC/TH2gZKItAauUmTWOQomV+fgeggBl+aiug?=
 =?iso-8859-1?Q?3K/cgm5cz+anthRN9gFnSWF6rDpvmW+k0C2ZZzjd+Jdmjq98EyYRIf+PW5?=
 =?iso-8859-1?Q?wuf2hjHyX0pCkgUDLieLUQYHNkfyH5x3p3MvlZmELCzhetaO/7ccEFZmo0?=
 =?iso-8859-1?Q?6JqHDE3vsjwfe2ezfZvWbBRF3slEBaArZKGOP0YCNzsR8y4PoZDnfTFA9Z?=
 =?iso-8859-1?Q?n/PmiMlt/1wqgtRxfDo7szji72zGZb28jV97HSXejX54RedKYT8HJbiIEL?=
 =?iso-8859-1?Q?i0SGs+eTDt57kawO8y+ezEsF1j0Wvx7xWAhvlbiotE3J0CRfpWvZ+Rqhdc?=
 =?iso-8859-1?Q?/jv/A2h+bf3UXV2hGKvON4X+yh2FIfwgCQeCvllHGzxLr0HRJjUoaPVnIV?=
 =?iso-8859-1?Q?ieKKaFZYgZMUGP5XJyt2Xo/sf+K+K3cpO8tSEAyVFjALkcU6jHIbw97yCv?=
 =?iso-8859-1?Q?nM9MrhDgAiXDRg4R/TRHKinrBRiPIfYtajxrPeJpHPNCDmYoD1NrvucceU?=
 =?iso-8859-1?Q?G7vNgem+kKEd7unL+p9uMOFvSCkSQh4MHRNqUQ5+caCZWmBMgMEeAB5+po?=
 =?iso-8859-1?Q?JvqjlM0U8VOuUOzrgBbcBHPyMjYOFV6DRrSp995Tv+LABHcmipLW+XOsm+?=
 =?iso-8859-1?Q?Hb2eOaqN0w=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WXjWrrJCTK8Q0pN3d+/7tQJ2AXDYaVYGjvOmjRDcyIvmBo8LRb+mXg+ALIZTSXN/cqhgEjmINPNk/kPWFoXiR1TWSdFizerhthL41XIEIGXacBKUbxFZq4LXTQCqgAWTxtp1bYGNpslRSL9LrAUT6g3K7kxwCi2OrOv0JgX5zCLlHaE7Vuly8zqhxXdYtA313QodhKcrh3OsmzVsjaHlt9iC+p8CD4G9mD6T7/C6lDBS8Yx5KxKTpodkCzWODMz1TrH/bqW4O4fr38Jdu0JMnddhB6Q+n89GDgow9o/RWIjXQSTTZNjn/XEwvpgNk5RyWwu/2mBXthEj+HD2i19njg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe091f63-436a-46f5-53e9-08debfea8738
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 14:31:54.4662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z+kwhZbFUbtlw+075N71sxIBTEDTIkQ/5ANUQs7GlcS0ZoIvIQQYvZiwTVJTfF4uCOcwdje+UTT0m+zArWVsrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8430
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0AD60620E73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, May 29, 2026 4:29 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: Re: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
>=20
> On Tue, May 26, 2026 at 07:08:00PM +0530, Animesh Manna wrote:
> > Timing registers are separate for CMTG, read transcoder register and
> > program cmtg transcoder with those values.
> >
> > v2:
> > - Use sw state instead of reading directly from hardware. [Jani]
> > - Move set_timing later after encoder enable. [Dibin]
> >
> > v3:
> > - Replace id with trans. [Jani]
> > - Program cmtg set_timing() along with primary transcoder timing.
> >
> > v4:
> > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > multiplication. [Jani]
> >
> > v5:
> > - Modify register definition approach and match existing transcoder
> > definition. [Ville]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c    | 74 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
> >  3 files changed, 79 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index fbc8a4f2b9cb..0e730afbb4ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -219,3 +219,77 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
> >  	if (clk_sel_set)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> > +
> > +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > +cpu_transcoder) {
> > +	switch (cpu_transcoder) {
> > +	case TRANSCODER_A:
> > +		return TRANSCODER_CMTG0;
> > +	case TRANSCODER_B:
> > +		return TRANSCODER_CMTG1;
> > +	default:
> > +		return INVALID_TRANSCODER;
> > +	}
> > +}
> > +
> > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state, bool lrr) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> > +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> > +
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
> > +
> > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > +
> > +	/*
> > +	 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
> > +	 * bits are not required. Since the support for these bits is going t=
o
> > +	 * be deprecated in upcoming platforms, avoid writing these bits for
> the
> > +	 * platforms that do not use legacy Timing Generator.
> > +	 */
> > +	crtc_vtotal =3D 1;
> > +
> > +	/*
> > +	 * VBLANK_START not used by hw, just clear it
> > +	 * to make it stand out in register dumps.
> > +	 */
> > +	crtc_vblank_start =3D 1;
> > +
> > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > +
> > +	if (lrr) {
> > +		intel_de_write(display,
> TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
> > +			       crtc_state->set_context_latency);
> > +		intel_de_write(display, TRANS_VBLANK(display,
> cmtg_transcoder),
> > +			       VBLANK_START(crtc_vblank_start - 1) |
> > +			       VBLANK_END(crtc_vblank_end - 1));
> > +		intel_de_write(display, TRANS_VTOTAL(display,
> cmtg_transcoder),
> > +			       VACTIVE(crtc_vdisplay - 1) |
> > +			       VTOTAL(crtc_vtotal - 1));
> > +		return;
> > +	}
> > +
> > +	intel_de_write(display, TRANS_HTOTAL(display, cmtg_transcoder),
> > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > +	intel_de_write(display, TRANS_HBLANK(display, cmtg_transcoder),
> > +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > +	intel_de_write(display, TRANS_HSYNC(display, cmtg_transcoder),
> > +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > +	intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
> > +		       VACTIVE(crtc_vdisplay - 1) |
> > +		       VTOTAL(crtc_vtotal - 1));
> > +	intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
> > +		       VBLANK_START(crtc_vblank_start - 1) |
> > +		       VBLANK_END(crtc_vblank_end - 1));
> > +	intel_de_write(display, TRANS_VSYNC(display, cmtg_transcoder),
> > +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > +	intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display,
> cmtg_transcoder),
> > +		       crtc_state->set_context_latency); }
>=20
> We already have functions to configure the timing registers. Why can't we
> just reuse those (as in pass the transcoder from the caller)?

Due to following reasons did not reuse,=20
1. CMTG will be enabled very specific case like single EDP on pipe-A/pipe-B=
 during psr2/lobf/pr-alpm.
2. Function prototype of existing functions to configure the timing registe=
rs need to be changed.
3. Need condition check for DP_MIN_HBLANK_CTL register programming.
4. Two version of set-timings - intel_set_transcoder_timings_lrr() and inte=
l_set_transcoder_timings().
5. May overload intel_display.c.

I can try to reuse If you have strong objections on current implementation,=
 please let me know.
Also is it only for timing registers or same needed for link-m/n and vrr re=
gisters.

Regards,
Animesh
>=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 87092ce6d67b..53a44f505dd2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -11,6 +11,7 @@
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state, bool lrr);
> >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > *crtc_state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6c8935f69db1..f8bcd1fcddca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -60,6 +60,7 @@
> >  #include "intel_bw.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > +#include "intel_cmtg.h"
> >  #include "intel_color.h"
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> > @@ -2753,6 +2754,8 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
> >  		intel_de_write(display,
> DP_MIN_HBLANK_CTL(cpu_transcoder),
> >  			       crtc_state->min_hblank);
> >  	}
> > +
> > +	intel_cmtg_set_timings(crtc_state, false);
> >  }
> >
> >  static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc_state) @@ -2814,6 +2817,7 @@ static void
> intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
> >  		       VACTIVE(crtc_vdisplay - 1) |
> >  		       VTOTAL(crtc_vtotal - 1));
> >
> > +	intel_cmtg_set_timings(crtc_state, true);
> >  	intel_vrr_set_fixed_rr_timings(crtc_state);
> >  	intel_vrr_transcoder_enable(crtc_state);
> >  }
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
