Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fp5nIuKUHmrPlAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:31:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E035862A91F
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1614F113922;
	Tue,  2 Jun 2026 08:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QS1JeNRH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47F0113922;
 Tue,  2 Jun 2026 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389086; x=1811925086;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tTwiVsag8qlr+fRv3YREs6XK1NoaAiMeKGoE68BA2oY=;
 b=QS1JeNRHfIDxb3COWy7DcBLawDAxzNWNGjlIs2snQ9/7IK+NPJ40aVe8
 OW7WXafStxfXH/01UOa5Jhzwuj8pGNLpa742FlgTDVcEkHF2Dv/5/00bG
 xhzb1x4zpsTvaCr6ZsjbeVor8WAztqS8maDi/fMO8KEKUsgnvouddJk1R
 EmnPvoqvWENprdc1QuAgLe0GRudhUqDa2JSOMCIY+uu6/Dax09LhqXEQK
 977rdwA0Iy9uLlnmRcdDIFdF+mcu3eTnSj70x1BWrjlDydeMEbCbmXIJK
 E3HVnLXnZGVU5KGRJwbBhTGxwaedk1ISwtlhWV3f4a9TwjN5UY61JI21T w==;
X-CSE-ConnectionGUID: yLAkGidgTJKaKLac451JMg==
X-CSE-MsgGUID: E96sbpP3S3eWmvxFdaInRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="85025022"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="85025022"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:31:25 -0700
X-CSE-ConnectionGUID: lMwI7ILqSn6kBvEIOgJnKQ==
X-CSE-MsgGUID: 9AuiC68xQ/KbvFrXT4QBxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="243673637"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:31:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 01:31:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 01:31:24 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 01:31:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WZE4e4psFEQscLUUbeRiBzxmyzlRx7NCbJ9U7FOfJuzmA7WNyaQCss1eVXcCDyGe7AkGsiFFpr/iyQPbYINzVASXUXs2l48J2Y3i/qYMrCmkrItgA/g+bu8o8Baqn5hYR4K0MkxSLF6LZMu8r1dZdeyBiT4+fTd4JJZkMgJMSkYssaUfNmBMarykIkALtgaqrNRY0MJVAb01tq4V1m7AKONl4AtSSqF9R6G8jUxmfujC3MMGUsbRF5sWMM2+eP/A23pKuXkzs859OHuLu+jUv9Xb7hDvQ8x6MP+iKzf8uxtX8yB0SprdQgx7i+2N8iei05BrwiHUYi9ykngyGg1zJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vk+6mhTXKK8EP5L1+r/+YL1PUX6V9kw3sTxHcMuA1s=;
 b=WJo3ScmStR0tfV3h1h3Xiu2En2yorVdAhBx5KEWM+3pp87jFcEROWsk5kzK2sIc9Ar4fIOItmQEuMY29NBRieVMKs9cBaCIW52zRV0WlP1NjjYVzCq/VbovjIcIqbMoIfmrJQQxVcRMHG322W7O62CPc4OoHwfgfWl4+BBFytzobRmPPB6aCRa4pWxbDJLoP5NPaS6gVAdH7Uhg//Ozm+0wGc/EQ1RcnegcsoNzpZAzNbx9GVCvg0wg7FtPeK82BDMhjj4KvTBTZ16zMHPsf+Q5PhW+IbVMtUIJnmg2zeb4z5J9Cd+MlrMv1z3/bMZfEb5V6URjtPs4jwyu9JRC2uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.15; Tue, 2 Jun 2026 08:31:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 08:31:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Dibin
 Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHc7Rlag4/ZxkRY7EixydXu6cNQY7Yk2gWAgATykQCAASyvkA==
Date: Tue, 2 Jun 2026 08:31:19 +0000
Message-ID: <DM4PR11MB63602F6CADB26BE5B770BEEBF4122@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-5-animesh.manna@intel.com>
 <ahlxYUKRBlA1KMDP@intel.com>
 <DS0PR11MB8049CB50CF5662C94FB7A6D6F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB8049CB50CF5662C94FB7A6D6F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8384:EE_
x-ms-office365-filtering-correlation-id: 2a53ac8b-42e5-42af-770d-08dec0815257
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|38070700021|6133799003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: DRyHLp8MzvYT6nrKlg3ePAQhr86gvgzb0aY+sVP3sYYtafleOo5EibeHdC77PEX1RzJ15QfRkDvbIKxa/Fc2Dwlfu33VOSxEEh9jFrNs/JhoFuft+9yYFdL48upW414H9/ipnaQCqmdI3o6ANxRS3sqNPJdxdEAiwo6yTvXV0k7VMnLoqCP/Z3LMtUEMJJwxNuLnX2ezB+QxkywbIHfgNmvqSKnUowHpvhbhUNN+mSt4pLUlV4sGqL9tNMpHNCNop1VluuCRHAyE0m9w6RkquOhvWC0ujbvztuqOqD1dMNp2mrBlcqCSEEjA6eI49H2rf5NfV13t7Kopc4vdA7pJ3+oeZWFR7LeBHumwTq/7baUQm8Rlorub+To5MpMQeRDWYSsVndCfs5oqlVB+32zGi7qFlfsYEFllf7na1ienUCm/3t6kiUArHAz8NEdnu0JMTJmDnTBUJILGrnFXqrb+btxe8i0RpaUBFJsFf75WgrpQywcnRtl8ePCdY3PvxthgHPKInH0oVKkAnDmBKNTF0tfofDb7VNk6VSD3IBkvzzbNwkkm3JO7Zqclo18UiPPeG7x2vIo6oGgU4OeRi/WS7lwzWZ1U4PhC8Bzs56KMNRQjURlfaP+sVtPk+CHICFpv9oVHDuZLRtSbMbbW6izzcCUuuWMPyONtCBl1Fqfayj4mOqcfkCuzr52mp+eWfdoeDWzi0tCOrsMbRM7QLdBASiSaxckAHsHoI5sQAYXaRloZrQIBQ/U+FtGdjoCxji2h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(38070700021)(6133799003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?r1zgU30h6udQ8w3WLMJX6kNPS/QrpceyvSbHQXPvmr+IhmORnmdXcxEfBC?=
 =?iso-8859-1?Q?iQvlj2Tliica38lBu9LtGqBeRDMgtpT7ha2uyV5V/sbvMcQH2YYGa+Cie7?=
 =?iso-8859-1?Q?5VTzyeSHHHaMtPCEY0oq/AJZ1hL9wK9OGs4fNGsf1DcT3glDwLdmtIOnPJ?=
 =?iso-8859-1?Q?Z1h1dswAqDeI4u66EUWuBJLwFCplLk2dl+YA6kCgb8a72xCo3ICuTn0LEj?=
 =?iso-8859-1?Q?yZyCUVDgBfPfvGl1CmODG/tqRxiWIH7kfVUdXXyPdRzBtZfaQSlI/SITB+?=
 =?iso-8859-1?Q?2OryySYf0V9BZsy7Tr8yXSGRZrPx4wCCyBSnbUti7gdQ4LX+5icilI+4da?=
 =?iso-8859-1?Q?KohqPF5/8iCd0p5NtmoIjPqhLmDk4WuHTaL9JzJ1lYL+aG70acxAViXcCC?=
 =?iso-8859-1?Q?7UevdZiWuvcFjp3q2hb7noELRI3nDfvsHW0NiwfJ2ip+rI1B+9nAHVIVrm?=
 =?iso-8859-1?Q?0yH8EKAX6nnOPwZdtgNQleVQyP/ciQdFWBzyjHh6hcd/jovetXZnywaMF6?=
 =?iso-8859-1?Q?pnGlxg5aZz2X7xm5dBaq5keuapCVkFt+PZYP+nA7YlGiB+gThikwj5uT3c?=
 =?iso-8859-1?Q?SLg7jinjMb5t7XdYpkRGsUDupBBDLIZmyQRPC1zT1s4D70t6sRVlIM0mQK?=
 =?iso-8859-1?Q?L45fVLUD1dl5wXmS3WUsLt6D6K2ouialniABcBeuwKBPp+qPLBlQPUnb4L?=
 =?iso-8859-1?Q?ATFOKDE+toz6uaZy41IkWhjtCAkVbXTJ86kXBfM+G0yDjVg2G/pF2Niv4n?=
 =?iso-8859-1?Q?GC8dqoP5YCgfFJPM6PufTVIRPkWOR/pEwSb14a+4ourjai30cZNOl9FRJT?=
 =?iso-8859-1?Q?zjvPWzVU0RRlVy6Wr7NYTifu9fC2yH7Ei+oVvisFPBJcSs16HADP+h7HFB?=
 =?iso-8859-1?Q?WES8otZqYjBBy/bUxEv9yUkP2F5CSqwDksHq7d2ZglO3tBCcw+T8GPp8nk?=
 =?iso-8859-1?Q?cIhaPGpcH3AfTqUlV0psX7pf2Sy1qC42YfrfH48Bo0Uqr/ZRlW/ZeCBtvD?=
 =?iso-8859-1?Q?HDQ2w0cZFX4Mg+GlwxLCJE9JfQwlh6oJ5IszW2SoclaakMG9OjGJSwJqhA?=
 =?iso-8859-1?Q?SfHsMipgd5i1LIzsWtX0vdR6wXiE8NdxDFl3tmgfUCMAThs19FbO88Fi+R?=
 =?iso-8859-1?Q?MPa291V6ksrrz1DaPQsSC69caiYQ1z4QH9A3rI6NA/TKNR3FibI66pmLHE?=
 =?iso-8859-1?Q?fqCUYgw9m09FBhA43oa1C/XtoBbanLB/ZBgm8/h7srImGi9PW6zJ8XlgO/?=
 =?iso-8859-1?Q?5A0eAvVigMl7foqasw9YKkf+OPbM3v4VeNb5VayFzAB6TrUieIwG1kItC9?=
 =?iso-8859-1?Q?sLCJd1f4arnvRAqEwgTtGuZ3XuPdCJnw6VSC6pqYdLS15G91UCTK+5RzH/?=
 =?iso-8859-1?Q?LmVx/9g0OcHtteEPjv40lEnzn0blFiEUcecAiVIi3J9r0Wdl5spLeccb+J?=
 =?iso-8859-1?Q?mhv84sW0vulJPuTDuXg392Z4L/druycHd4a7JZidgyTbEazWqDeOCXQC3/?=
 =?iso-8859-1?Q?fYGic43fxHlum+4LcTm4tjPQZJNBOp5WKvO0s7MLvUP/i8AoqQiZSxLW4u?=
 =?iso-8859-1?Q?iYFIePL7c/0/atQRQ7Mt6QZvLqbgSt3HEVtaELQDjD5uxl8ICi86Kd95/4?=
 =?iso-8859-1?Q?LKdqZ8T70mgKPC9f5APjbC3Vo6WLfGKWt6t+JnLmSgyrHabA7vt3KnGcY9?=
 =?iso-8859-1?Q?lLAZzGktD7HIjMuLAGyfc0FHQtYwXj/h2JMDGRUkFN++3Vyna8RN4BuU1l?=
 =?iso-8859-1?Q?r45XHzPk1zLuvWsoejYQyeZYUNv8oXGJbXcpVqNchFRHO2y7QWMy5LUP70?=
 =?iso-8859-1?Q?Z1blWRwO8g=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YaUcrvQBF2uDNMp0tTJnuOxiKVYpmCXrx/bIUT94i92SAkGXqM3di3FLuloxkIeRRJ8gJPiGWQEoW+F69j3haooNXK1sGxKwnFfEFVZG1uLQzpi2U94Pto4u2hk73TDfIm6Ql2fR9OZr3Z83mEUOlCQpRQoKKtYT9ZSSENLtmTjPfXnPcjCOshx3k4ovQTXC+m3P2zb1QcUxHqJi8HDd2EJn15SZqSAsKgj+gHKgWlV37RAA6Kof/CoUtxG/RNPFLQT8m8T7b9Pg7Zi4rpfn1/oBVl2PQBHnQ4jlyJhmEvKFIjLVKLQxrpKp1Wi66C48jh7cIk8JTrXvynL64/1z1Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a53ac8b-42e5-42af-770d-08dec0815257
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 08:31:19.7393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +nCKBCa+kkHZOe1vBeBkAweZ5oQ0BAZZ4Nlxs/clQ2qJEW/VHXnJXZ50+AV9fi9NfmVuIkILlFy+Lj/MkwKltQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E035862A91F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Monday, June 1, 2026 8:02 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Shan=
kar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, May 29, 2026 4:29 PM
> > To: Manna, Animesh <animesh.manna@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>
> > Subject: Re: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
> >
> > On Tue, May 26, 2026 at 07:08:00PM +0530, Animesh Manna wrote:
> > > Timing registers are separate for CMTG, read transcoder register and
> > > program cmtg transcoder with those values.
> > >
> > > v2:
> > > - Use sw state instead of reading directly from hardware. [Jani]
> > > - Move set_timing later after encoder enable. [Dibin]
> > >
> > > v3:
> > > - Replace id with trans. [Jani]
> > > - Program cmtg set_timing() along with primary transcoder timing.
> > >
> > > v4:
> > > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > > multiplication. [Jani]
> > >
> > > v5:
> > > - Modify register definition approach and match existing transcoder
> > > definition. [Ville]
> > >
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cmtg.c    | 74 ++++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
> > >  3 files changed, 79 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > index fbc8a4f2b9cb..0e730afbb4ab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > @@ -219,3 +219,77 @@ void intel_cmtg_set_clk_select(const struct
> > intel_crtc_state *crtc_state)
> > >  	if (clk_sel_set)
> > >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> > clk_sel_set);  }
> > > +
> > > +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > > +cpu_transcoder) {
> > > +	switch (cpu_transcoder) {
> > > +	case TRANSCODER_A:
> > > +		return TRANSCODER_CMTG0;
> > > +	case TRANSCODER_B:
> > > +		return TRANSCODER_CMTG1;
> > > +	default:
> > > +		return INVALID_TRANSCODER;
> > > +	}
> > > +}
> > > +
> > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > +*crtc_state, bool lrr) {
> > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > >hw.adjusted_mode;
> > > +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> > >cpu_transcoder);
> > > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start,
> > > +crtc_vblank_end;
> > > +
> > > +	if (!intel_cmtg_is_allowed(crtc_state))
> > > +		return;
> > > +
> > > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > > +
> > > +	/*
> > > +	 * For platforms that always use VRR Timing Generator, the
> > VTOTAL.Vtotal
> > > +	 * bits are not required. Since the support for these bits is going=
 to
> > > +	 * be deprecated in upcoming platforms, avoid writing these bits
> > > +for
> > the
> > > +	 * platforms that do not use legacy Timing Generator.
> > > +	 */
> > > +	crtc_vtotal =3D 1;
> > > +
> > > +	/*
> > > +	 * VBLANK_START not used by hw, just clear it
> > > +	 * to make it stand out in register dumps.
> > > +	 */
> > > +	crtc_vblank_start =3D 1;
> > > +
> > > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > > +
> > > +	if (lrr) {
> > > +		intel_de_write(display,
> > TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
> > > +			       crtc_state->set_context_latency);
> > > +		intel_de_write(display, TRANS_VBLANK(display,
> > cmtg_transcoder),
> > > +			       VBLANK_START(crtc_vblank_start - 1) |
> > > +			       VBLANK_END(crtc_vblank_end - 1));
> > > +		intel_de_write(display, TRANS_VTOTAL(display,
> > cmtg_transcoder),
> > > +			       VACTIVE(crtc_vdisplay - 1) |
> > > +			       VTOTAL(crtc_vtotal - 1));
> > > +		return;
> > > +	}
> > > +
> > > +	intel_de_write(display, TRANS_HTOTAL(display, cmtg_transcoder),
> > > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > > +	intel_de_write(display, TRANS_HBLANK(display, cmtg_transcoder),
> > > +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > > +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > > +	intel_de_write(display, TRANS_HSYNC(display, cmtg_transcoder),
> > > +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > > +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > > +	intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
> > > +		       VACTIVE(crtc_vdisplay - 1) |
> > > +		       VTOTAL(crtc_vtotal - 1));
> > > +	intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
> > > +		       VBLANK_START(crtc_vblank_start - 1) |
> > > +		       VBLANK_END(crtc_vblank_end - 1));
> > > +	intel_de_write(display, TRANS_VSYNC(display, cmtg_transcoder),
> > > +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > > +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > > +	intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display,
> > cmtg_transcoder),
> > > +		       crtc_state->set_context_latency); }
> >
> > We already have functions to configure the timing registers. Why can't
> > we just reuse those (as in pass the transcoder from the caller)?
>=20
> Due to following reasons did not reuse, 1. CMTG will be enabled very spec=
ific
> case like single EDP on pipe-A/pipe-B during psr2/lobf/pr-alpm.
> 2. Function prototype of existing functions to configure the timing regis=
ters need to
> be changed.
> 3. Need condition check for DP_MIN_HBLANK_CTL register programming.
> 4. Two version of set-timings - intel_set_transcoder_timings_lrr() and
> intel_set_transcoder_timings().
> 5. May overload intel_display.c.
>=20
> I can try to reuse If you have strong objections on current implementatio=
n, please
> let me know.
> Also is it only for timing registers or same needed for link-m/n and vrr =
registers.

Code duplication for timing registers can be avoided by using a common help=
er. Abstract the
logic in helper and use for both CMTG and regular Timing Generator.

Regards,
Uma Shankar

> Regards,
> Animesh
> >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > index 87092ce6d67b..53a44f505dd2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > @@ -11,6 +11,7 @@
> > >  struct intel_display;
> > >  struct intel_crtc_state;
> > >
> > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > +*crtc_state, bool lrr);
> > >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > > *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > > *crtc_state); diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 6c8935f69db1..f8bcd1fcddca 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -60,6 +60,7 @@
> > >  #include "intel_bw.h"
> > >  #include "intel_cdclk.h"
> > >  #include "intel_clock_gating.h"
> > > +#include "intel_cmtg.h"
> > >  #include "intel_color.h"
> > >  #include "intel_crt.h"
> > >  #include "intel_crtc.h"
> > > @@ -2753,6 +2754,8 @@ static void intel_set_transcoder_timings(const
> > struct intel_crtc_state *crtc_sta
> > >  		intel_de_write(display,
> > DP_MIN_HBLANK_CTL(cpu_transcoder),
> > >  			       crtc_state->min_hblank);
> > >  	}
> > > +
> > > +	intel_cmtg_set_timings(crtc_state, false);
> > >  }
> > >
> > >  static void intel_set_transcoder_timings_lrr(const struct
> > > intel_crtc_state *crtc_state) @@ -2814,6 +2817,7 @@ static void
> > intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
> > >  		       VACTIVE(crtc_vdisplay - 1) |
> > >  		       VTOTAL(crtc_vtotal - 1));
> > >
> > > +	intel_cmtg_set_timings(crtc_state, true);
> > >  	intel_vrr_set_fixed_rr_timings(crtc_state);
> > >  	intel_vrr_transcoder_enable(crtc_state);
> > >  }
> > > --
> > > 2.29.0
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
