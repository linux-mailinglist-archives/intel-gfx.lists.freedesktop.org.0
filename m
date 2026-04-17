Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADuZEvJG4mlh4AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 16:42:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F7A41C2F7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 16:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164EE10EA66;
	Fri, 17 Apr 2026 14:42:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWiwBP0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09B6210EA63;
 Fri, 17 Apr 2026 14:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776436975; x=1807972975;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UkSuIx/nTLzgxIExwoUJjEsi6XQSzfIbi+HJBR8rBYc=;
 b=PWiwBP0FoRr6TfUI44EZ707XI+3gRB/hYwaLRAPhvAdDERWzIt5ENfia
 f8c1wQ5gd1rR6WneQ7oPvL7A60LK571mwoMhjXM+Uory+ezyZSSOQ9zXW
 Fa01Yb6E5RHfleGEoosfRDvmWQvchagIDxGC/cP7vfaNCOPnvHeaUcYDK
 YuHHnYg5fLKgdh+OGNHJAfcrnWCyFgwOqc5jL4jwMyDd072jvN7G5Mib+
 vdb8JKyTV8TdTYVh3VIlbUNSCYLuykrCt6QH3d5ggG17bBMexaVHg3ebW
 E0ifyidF4ou1YGlnxbLN1DtF+O9wr+S8QLGOmbpFOYxSUPQZU+Wo1DSXj g==;
X-CSE-ConnectionGUID: Xy5oSyRwQX2aaJ5pdAzMvw==
X-CSE-MsgGUID: hhX8xbsPQtOKKU5lGRSNbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="88908792"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="88908792"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 07:42:54 -0700
X-CSE-ConnectionGUID: mQ4fyyLfS96SaeZhSzezgg==
X-CSE-MsgGUID: TtZCK3Q/SKSYtpgKCIlrSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="235053459"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 07:42:55 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 07:42:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 17 Apr 2026 07:42:53 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 17 Apr 2026 07:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=de/GnBEEDLtB16LtBfMDsfSoLHgTPEK3/mskX3Kd4PIj4RQcOdx1Zf6UPWTZHfkoUMf+0v0eIiN6EfYcCyhgG9aMgkkJvdxlEJwfNpFQ4UuPMiZqMNB/PT3/Xx+XoNFSBKodE4viUOQj/OTwehR2N/5wqxmE5O0GWmRPe0MMm2EZBoppnsjhTH4S1JLrhsHW8em3FCFRH8Vd0nu6SZwIlJGp/gy9kEZasbRBIYCuLpO1fChR982C2zoOr+9icAVw0GJq+9aMmxqGE9clJ9q6kvjIiX6dqJQCuyLQn2Zkb+Y2TEcFf6tt9XqFsQjyqtzSg5Of95Xi+//Kj129JYfGqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C43mvThfDXU44eK6gvsxt0U+xCyvd6BY4Mduq5gJ7fE=;
 b=lvYVgetzE0udwijVcZctjI0XLlcXnG6dbytb7vrnidWVyWRrFT/DEp5hBGTAf9Zy60Shiqmym1YrMWf4gUGLh5peBEZ2rBqsJ3TtcUTaTRck92xRFKNZ3MywSIVrLt9txgTa2eYWEfkYN7xRMaba6WJyOb+KKNKwMZrQPmbEZ8cL7qVMQbalongYQllUPJ6RLSo9iBH6lu2Pz2dbrSnOJqFsevsanXw5tuJOtbjAXytDJBA+r16Q1vjyv84oI6Fsd1ej6O4FkGYdkUfzN5xOTGRGI6EiFA1IUuHf+3/NFxSP/J+bAEmnmYwciaBYmjlHNyagm5rNQ7Sgh2mo4y1iDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY5PR11MB6343.namprd11.prod.outlook.com
 (2603:10b6:930:3c::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Fri, 17 Apr
 2026 14:42:47 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Fri, 17 Apr 2026
 14:42:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Ignore HPD when in DPLL enable/disable cycle
Thread-Topic: [PATCH] drm/i915/dp: Ignore HPD when in DPLL enable/disable cycle
Thread-Index: AQHczkBvqysYzuHa30KNx+aEVIIglbXi63+AgAA7ngCAACvhUA==
Date: Fri, 17 Apr 2026 14:42:46 +0000
Message-ID: <DM3PPF208195D8DA466BC644CE551ADC667E3202@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260417080118.2352283-1-suraj.kandpal@intel.com>
 <a99f71916d52b29e300ecac2207e0fb501d6a4a5@intel.com>
 <c3b5e61c68aae8242da2bd170736485ced2f9db2@intel.com>
In-Reply-To: <c3b5e61c68aae8242da2bd170736485ced2f9db2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY5PR11MB6343:EE_
x-ms-office365-filtering-correlation-id: f7c02491-b5ee-46cc-c4ea-08de9c8f975b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: AiWKxn8kSC41zS+WuI8GVViLVgfiiHMgHFUbFQwb2e7f4Oxt9PkDa89MJJBdTctafPdb8rFEDuPR1626+a+NVn9PkmEUV8jyxTn4Vys+iF8GrZ8UOxXsxXnBm0LpuNiAlQCPElPS7jJs0eUBv55CmjDBEUhAEtb5yzfWaqcgyTjlkKN43H4QhLyAcWKyFOKoTNXAZstelnVsW/8gHlMlMDXK2EUGC31vs615/TfeKS8z4uOrAvdP+DLIXq/5+LLWe0igFpiD51ZhiNnvvuLIjmf8EqSmnwHAGzjyiITz8idzbSymU7J0F1hA33RywWMHQ9PZV1utzY1YCm3vkCt70w8z5k5+bwEKN6RatHYfkZEdE89Tx5J3mO/HSSFOV3iXvnCqn/SR14UGTySV6X9aed+d4jKb2EszbOLfBfNtfx/4X8KdDRVV/6c9SYyNWPCBhrKL45Wh5XXWUmh1R+o8k7u4L18p+RdOfBIRlfu4JD4GsaLXaUQacFRJRsHwnmmIuoIQsnbBex4zM47Sw5LbolPykbxzguDM+T5CYymO25wpTThXHhV2dmjXzez3OkumN9wlZFuatlUbNM45HU7/a2CYtPtikvy7pi2v4XBmFKfmxkrL3qmIhbEjCpb+C1sTa3DO40ArW0CvqapkTpqEUi4xOzC+Twg68vGrGDwGecpXwpHkrYBoPR3aDvmVFeyMEHcg6zJdmVBl4uxoYrZ4fuh7IyKgqaxScATDYnGkOAsaOk3TIYtf09QV4QkicjAZ+hFoLytmcAlmJ0hRiTgTS5FJqnKTKnw24n0FszUqil8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nhXecm98U7fzhb00BwodeY3DD56JVSH4VFlww0OwwKNMO3ZevypytfenR72g?=
 =?us-ascii?Q?o+GSEWXC5scvXwpcRy+a1QG54K/URUP9Y14roCDMENar7sD3UNME62cY/44m?=
 =?us-ascii?Q?w6AbXoe+a1+hP/Mfz84s1q9rqamZpiAZQrYUzKv/dpDjm6LyiEiR/XGH1Bl6?=
 =?us-ascii?Q?xEH1V+cUYD+Kxk+pTxbVZnLWwjVDDpTRgZaemLg/JcAQFb2J2Iz1alVrP3L2?=
 =?us-ascii?Q?wulXMgSETEdlrGkGJ8K+c0eD2w8GeeG2im95vfJV6/apjece5o19eWrjv9iX?=
 =?us-ascii?Q?HwtGhHGT+af7PMXXrR1oemExiqlwcWbBxufzxUPl5xVeYFMM8P5afKnkqt0z?=
 =?us-ascii?Q?ilZedtb1NWe7SxMUy0Cxh4rel6yYf/bPKhpFhPco7zN9gT+fxc1Q0OV6AgbP?=
 =?us-ascii?Q?uwGh4KF+Tzt3EOgH7yaIdju+nwnjgZ5E2mFxqdwxyazSUqQ9k/lI5GfYobbF?=
 =?us-ascii?Q?Cqr4V6eCzQ4u1riHDwsbwNIamKDfy+6jiJzWmRBHiO1qsATyAAvRnfP6rbfS?=
 =?us-ascii?Q?j1Ob3Zya5gQOkC8+yMfm2DuZMelmsrchz8HVJsFO1sILsxD0i/UNFUrX0G0N?=
 =?us-ascii?Q?1tVEkoYIF+1D6Xdi8Si4YPEZJB3tMDL8kbQafEbcefdLHHfb6qYe0YeAefFy?=
 =?us-ascii?Q?tcjn4ecQ+ms6M4GBMn5OO/imSwqwInfmF4F05x+uFnORwd6wKkJIu/axTHgQ?=
 =?us-ascii?Q?5K9qZjiG4qceMiJ6pfIB3s9ixRQt6zlgDFzVfBUseZaUdl/almI9eHdD+fAV?=
 =?us-ascii?Q?nSkK+1ODCzMDbWmX3NXJVnCKjQCjD65AydoLFt+FwaDE+ObpdjjywNSWdi1X?=
 =?us-ascii?Q?1dDY8Z8gvhc83Hd4q+5eEB3YfEhmCZz+YHhzjuTfydF7RE9CilNPni2TfQSt?=
 =?us-ascii?Q?PyuX0szG5/tsNX9qaCe1bK3EoLlLW378+827kkTYfSVTKg/cvzJD5+AZuOzL?=
 =?us-ascii?Q?uGaytnT57xSbD1d3RPnGOWfs/x5HZiNsjTsy5cTXOaPKACrRvZJAiwNyzF+y?=
 =?us-ascii?Q?dvnfQDRuoRccMnK24BnL83WR0oHn+SAO+etWvyLFk8RHqM5zXtEBTuDY3K74?=
 =?us-ascii?Q?hitrxmQytOHiUsa/qden50Dt9XW1Qowz6n02PlhPcZj8Tv2Gya+R7M4rZx+F?=
 =?us-ascii?Q?t4NYTpqK47t5GU8ni/2otFCMkc57f+XWuq8p4+eqkqSt1XVF3HnqYJx+HlWI?=
 =?us-ascii?Q?j3b4Hvnbx1ppDZLoTnUx8mUmcwx5LFsjpps1/T2wZW0Yt/c0Fh+qj1fg3GvY?=
 =?us-ascii?Q?84Ld17dJjWdaPAYPmalGZ3Tcq84E40tcRQIoDFYgm/5YH2SDIpfvdPIerCn0?=
 =?us-ascii?Q?5YJjuNXUvndasesjduD8iKgOOLUsDyqcdWc/6mmQO25hdVj+fP0gDvKcF+Eo?=
 =?us-ascii?Q?AoWIyDqMguHxL+4hQX6nNus5qtBN5aws5xK3rPE9IDMNKJpqE+JSxE0UPObK?=
 =?us-ascii?Q?rPHv/WAb+aX4P+lzOghCSXAYB5zAtbXMCTXL+XTwmLxlj5VmTwOO3JbfgVDh?=
 =?us-ascii?Q?psl1+vXhFIqYp6QMxZsYKeX48/rueORFKtAkN3dVxKPouLsxmet1JzNLl1O3?=
 =?us-ascii?Q?GEqlo1dOY9QCjw02eE8u2rEMmDZJdcLxMzw3/SXFpfJCOEC81l1DhdOh0Ime?=
 =?us-ascii?Q?HZImcSaQSBvs2zmSOzYeGM4slg2/qUVGtawr6FI/N7cGWueYegCjtMANiTe/?=
 =?us-ascii?Q?IYlrTRf2h5qOvpAo3B5Y6hTZu8Bdg9Hn0JlX1vILSJR4+HZUUNd25BFCbAu8?=
 =?us-ascii?Q?xioCyAdOeA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ij5cfb8XdwY/eR2eF0OTJdZm8Y02wcdrGbvA0RBu7g1hPvTgu/29/dm7avFjLwJc92qmXtp8PKLHmCsZsddcHVU+Wf7Kcfnst9WbG03hV5L9xdaI2bBou4lQa/hdb6pm5kSB87cJg3GyxRu55iGI/0zDvrhLsVoR0EkKn/3umzbbHd5yRfqqSRt3efeMq5yVbroP0/nH1e3PAOPuCDFFIU+RAVzpCRcco2yDWiNL+4zIzS6SEHf0yHtPnL6Y3qwf7nW6uknmq5NTDKIY1oh1u2MSPCkq+0sfq5WJzuz4cfFP2e0CdihAorSrU+P4kp1oanXT1V9hVjfZ2q8rZmQqMg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7c02491-b5ee-46cc-c4ea-08de9c8f975b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 14:42:46.6281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MhcYiDhslXWbtK2kmojKHju+WHKcAI1nkdIBb+JXo9fRb8inzSgufiWtt/sMBAvsHUcr4Uv722kJXsiWF3m0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6343
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail,DM3PPF208195D8D.namprd11.prod.outlook.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 92F7A41C2F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH] drm/i915/dp: Ignore HPD when in DPLL enable/disable
> cycle
>=20
> On Fri, 17 Apr 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Fri, 17 Apr 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> When we are enable/disable DPLL cycle there are chances the connected
> >> monitors is still sending us HPD signals. This causes us to handle
> >> them which require DPCD read. These sometimes race with the DPLL
> >> getting disabled in between causing AUX failures via Timeout.
> >> Introduce atomic variable link_teardown which is used to track if we
> >> are in DPLL enable/disable cycle. We ignore HPDs during this time.
> >> Re-enable after DPLL is up so that we can avoid populating logs with
> >> expected logs AUX timeout failures.
> >
> > How is this not racy?

Idea I want implement here is that we atomically set this variable for each=
 individual dig port when the PLL is going down to avoid
Intel_dp_hpd comes into picture so that we can check  this atomic variale a=
nd return early avoiding all the DPCD read/writes there.
These will anyway result in AUX timeouts which create noise in CI.
But I really wanted to get this tested before comments but I messed up with=
 the mailing lists.

>=20
> Oh, please don't cross-post trybot list with other lists.
>=20

Yes that was never the intention wanted to send this just to trybot to get =
this tested. Then move it here fumbled with my commands a little cause of t=
hat Friday energy and then here we are.

Regards,
Suraj Kandpal

> >
> >>
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_ddi.c           | 5 +++++
> >>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
> >>  drivers/gpu/drm/i915/display/intel_dp.c            | 5 +++++
> >>  3 files changed, 11 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index 178074316a2c..4a523eb56bc4 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -2086,8 +2086,12 @@ static struct intel_dpll
> >> *hsw_ddi_get_pll(struct intel_encoder *encoder)  void
> intel_ddi_enable_clock(struct intel_encoder *encoder,
> >>  			    const struct intel_crtc_state *crtc_state)  {
> >> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> >> +
> >>  	if (encoder->enable_clock)
> >>  		encoder->enable_clock(encoder, crtc_state);
> >> +
> >> +	atomic_set(&dig_port->link_teardown, 0);
> >>  }
> >>
> >>  void intel_ddi_disable_clock(struct intel_encoder *encoder) @@
> >> -3181,6 +3185,7 @@ static void intel_ddi_post_disable_dp(struct
> intel_atomic_state *state,
> >>  					dig_port->ddi_io_power_domain,
> >>  					wakeref);
> >>
> >> +	atomic_set(&dig_port->link_teardown, 1);
> >>  	intel_ddi_disable_clock(encoder);
> >>
> >>  	/* De-select Thunderbolt */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index c81916761850..f59bbb2fb260 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1985,6 +1985,7 @@ struct intel_digital_port {
> >>  	enum intel_display_power_domain ddi_io_power_domain;
> >>  	struct ref_tracker *ddi_io_wakeref;
> >>  	struct ref_tracker *aux_wakeref;
> >> +	atomic_t link_teardown;
> >>
> >>  	struct intel_tc_port *tc;
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 35b8fb5740aa..9177fe9b3e84 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -6889,6 +6889,11 @@ intel_dp_hpd_pulse(struct intel_digital_port
> *dig_port, bool long_hpd)
> >>  	struct intel_dp *intel_dp =3D &dig_port->dp;
> >>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> >>
> >> +	if (atomic_read(&dig_port->link_teardown)) {
> >> +		drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
> >> +		return IRQ_NONE;
> >> +	}
> >> +
> >>  	if (dig_port->base.type =3D=3D INTEL_OUTPUT_EDP &&
> >>  	    (long_hpd ||
> >>  	     intel_display_rpm_suspended(display) ||
>=20
> --
> Jani Nikula, Intel
