Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJAoAzRIsmlrLAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 05:59:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5214726D40B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 05:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA7710E958;
	Thu, 12 Mar 2026 04:59:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Agt/85fu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A3710E955;
 Thu, 12 Mar 2026 04:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773291568; x=1804827568;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y3iUydlEPPHFGFklLFZ7CH/AgbV0fUcLqav7IcPD+Zo=;
 b=Agt/85fu6f9zRRiTFIH13ADRbP8qQsK9yqqu1+oxZ4LuQ+U02bjo9roj
 KFZFAEzps0zEfjJi17iSbCIxKGOeOFYVQGS6d1R0q1MgNUyDGCWSGqCuz
 SPbo+XjhEG/ENfY/QEfD9NmiDZUujw/5GKgCm6Ar+dN7+YHJOftVZEvzd
 nOlc+T/q106sf3Swgpbk9VTbRWMp2XUNlSJcSadk5Y5F4pXxhLZiFTYGq
 L41mvpVsF6Q3BgTgPgYbxFTi/nTIdsUYN3ET3yi0gQ6x/PuAe6AKj95mJ
 hfbq7tZddFXZVunhTwCrrG3gZX9OuxUPi4bsFjI24/6yw7CI1J6nSQQ87 Q==;
X-CSE-ConnectionGUID: yZQMcfS2TieXO4VgaD7XYg==
X-CSE-MsgGUID: ZL99ny4PQO6Gqjj6uwPgwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74252457"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74252457"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 21:59:28 -0700
X-CSE-ConnectionGUID: QAnePmn6RC6ZBZK164oiPg==
X-CSE-MsgGUID: pYbdPy4pQjugdgsDEBYchQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="220649338"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 21:59:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 21:59:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 21:59:27 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 21:59:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GtCx8SPGPTnc/1lVYkww8SMGORn46sFU576eJLhCxSWGuTrBSPfNjPxjam24anf+zv5rkxr4ws4UxYmQE4Eftbf1z+rfezkAxIX1QBnc/NH2E4lb3XgWLF320SYLbAN6UlaZTMbMRPEUH4LQXYV7bbQEBEAo7kqhEXqeOX5Id+HN8rw7UUVMSR3KX1ZFsNthRP0c7RQWNJDzbxtbqtPQFEChKr7hZ+PCZkwwRQyHQci8VR3wDHJyJ307nb44WdKpSs2H4zuKuU9Fw/HV/9PHdCSC+HoG6X6CDJTzyxlsZvP09ntJ74y1iL9/DYcSg9wYPdLVL6nitMmvKdkTPfCnjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UTo5FRx2OnmSc0kOvyPRykuw8CVsycOEVXDRAahK/AI=;
 b=ZiDTcNcarOnLKis1BsUnvxR7FUm6vEoqq6Oxlof5Nn5kaHSyxRRHBdgOERe//xR0PhUw8TsYejIh71OP0pRS9AhZgmwi1HVq/eBy+ut8ITutHXmlNHLSv07Ou55WC6fWzAzcb9RhtAgLwnQWUq3MdJ1LwYNzno95MeUxPbZh2eZmZe9WdI3LzoRvs2YkI5tAFwLX250+ruzIw08SOQCAhh8Xmi264Frr0C/LB6kiOJV2hm7DKDN81LJDjjy9yUTooak791cDdMPMyQLvc9ziEldOkSnyl1jY0/3fovsEyn3eToH5Cd+EXTWgUnRkFBhZMx/olXyGXpyvRaeL2OIFIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA4PR11MB8962.namprd11.prod.outlook.com
 (2603:10b6:208:565::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 04:59:23 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 04:59:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/dp_mst: Fix forced link retrain handling in
 MST HPD IRQ handler
Thread-Topic: [PATCH 1/2] drm/i915/dp_mst: Fix forced link retrain handling in
 MST HPD IRQ handler
Thread-Index: AQHcsWyOfpF6cHZLJku3KQFoJzNDvbWqVHJA
Date: Thu, 12 Mar 2026 04:59:23 +0000
Message-ID: <DM3PPF208195D8DE0107BEC5073853E8D64E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311153152.133744-1-imre.deak@intel.com>
In-Reply-To: <20260311153152.133744-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA4PR11MB8962:EE_
x-ms-office365-filtering-correlation-id: 1f26bfb9-06a7-4396-6eab-08de7ff42111
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: kjgdvbNMssQArPPS9s4Vx+bX6jMNA7EWlvSgt3DXqF3xlydrAQ/v5uTA3kJw1E0RQSJUGBeTAho2v/ybYpLocRREHmtw3TEzgeo76n8SsUQTT/nWvRKNKMHCN0JuCH3JDRiHwh1gmXdfVJflzzyiBnDQ6q3KFMU4p75cgRJT7JRnKu5fUsIlZiCBiRDu6DG4F47JznApn4GTS+mCxg8fWXSuYlHwwzdAbAkguPs3r235S54X8oiCRg37o2YUXlal+L342iwKdlF1Oq4ahqhXVU/k/z2cznhuQjuQa22X2OZRdMO83eJMmfcjfUu074xq+jYwkMLh+jqaEyRD2tYEMKVFPpMac62o5h7KoK2/gKtPuo07d/GXh+zTZ9Psk1aEHSZqN/v1+nXEk0FQeGA1HiHSPEviP4g/Xpz/rnOzmYDS/cVQHgqYJwqyD8+gphOUdU2WGvzmMrXQ1xbELSiMuaRc+wQ6vac+KVVQCRwM18A57QwNJsNXwy+S0azrCjSJtYu81cm7CHF9xSU6yoaFrhIHFvvs200O35k/V7xpW9q2gOn4lZPGDZS/WGfI2V3sTildu5jupoHsY4gcmb2HzgL7zl3TRayfM+/BTW6OJpOht0j3m6sRW27tppxuLrLoWpkoYhuCbv0yc7iaCX3gIfcOZVTJ/S+PNF14XqXq9z8ZMbKfHowZw8CR+PJrGu3fNPFffegmwanNqx3KMjt4ai6r1GgrVna1NBSs+wyTCQSNWsdCFN4K0Nw160xCTZ5dI/xRy/0TO9ekl/OYxyJfRx2bVhWTiHSGIsPLTZHvvUo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qghYjlVgqzD8kehbwqer1wZrnupc3lzOhPdEjnhTIsKGj8BzCxsHC9tgrfjE?=
 =?us-ascii?Q?zUcWKeq4XfQ7wu6EZnwNC1/+c0xi0e4MYshlbv+Obf3EerUO8e/UJYHYmJa1?=
 =?us-ascii?Q?70IrfI7YedB1J9qT5aCXsXTKCkydC6iq8C9qZ8o74qoMpQRKA5JiH/CEKxjZ?=
 =?us-ascii?Q?OB22D0Kd1LcaviLSlr43tS2BTfUxlpVGeiepKv05JrEi584+mPn7cv1WRsCy?=
 =?us-ascii?Q?m7kPJ0WBnJx/1q+7Vk67fEpEdHD1JJD7nvnw10JM6DAAv1UsWP67DpPnLuOh?=
 =?us-ascii?Q?5Xb+wMHEnXPbXeO5QzZ2FHolwwo+w03l8BusL472QIxcXKVW/Amc199Yf8Hy?=
 =?us-ascii?Q?GaHi8gfvEs32oyw50nf4Cv3MbhzKhHEF9LOIYl/XGAIzpisP/8IuyFhrU13A?=
 =?us-ascii?Q?0migFouC8MJAfFLbp2YtfKYPD48qn03rAeMzk+/SobqjubncFSB/vctXssGd?=
 =?us-ascii?Q?3CEtnOnR+TEqfToRY/jyML3f+q838EljYAzdtNBD6lihRlY24JafEyvJ6qto?=
 =?us-ascii?Q?VsuvMxrOBR8JvctxcbpuVGH+9/+LG5M6Occu6HG+ZXO9fk6v0TCOvEgSwc7E?=
 =?us-ascii?Q?2VL4z8T9ziAnPr62MLa7QM12hwL2nl4BeS7BdS4OVjflsFN90EiZ9gtQVHRJ?=
 =?us-ascii?Q?FF0YUEKs+GEk644EHnm0CNLUViQqUC8t4hsr8IlGjAULPoEiNm+xcgMZekKe?=
 =?us-ascii?Q?SINgnARK2Y0q326Vc9J325jy5rkabDUSrLHlMiEl6NPhNCKTvJkWlNtE/VyD?=
 =?us-ascii?Q?FIKxZIVZl/dQqnaVjMOyiWToXlVvOO8ByoQp88mLGbsXM9pfxcLUwo2P+7xO?=
 =?us-ascii?Q?989+FiWEdDNNoXXhCwK1z4unUOS3mqHfHM8F8bQaEspCY15YuxU43q36rWoe?=
 =?us-ascii?Q?9+5NG54TgnIMP7zyTNhC7zGOb+RteemhAgzgEVbxH9L2t/UVzEG8dhAU0MBr?=
 =?us-ascii?Q?VbVuwcqac58EoxK8cMlMyyX+E9C5dGFOgkVmD0NOST80BPP3GEksaAUFF+Db?=
 =?us-ascii?Q?P/TD1agm0YzvqEmrxxHMSYZMgvj1g/Sf9I5LJNDVhw1D1cJ+d9W1NgurZ1ez?=
 =?us-ascii?Q?XJjrr1rB/4iYbLSyoG2w0bs6KpqpXJPGWBw2AiZLpQdk2cIt+nVs2KcGzALW?=
 =?us-ascii?Q?zWDS8ZAtA3az5pCCEKh9lfGz/f1fFk2e7S5121X5loycwXNH0UW492uLiaDb?=
 =?us-ascii?Q?0Hosm2DFft/P1gh4OSac1UVTZIvOTlbDvtRWBcx3o+GKYq71wRK5ylVN6PLr?=
 =?us-ascii?Q?T0JT8Ya4WL/bpXrvdGDmsiFl+gNNmimyAtfN7sC4A+dsU2Qya8Vrn+kEuvs4?=
 =?us-ascii?Q?iLSoHESd8r+V07t8NtmaOGtoFkPihKFZoEs3r8NaWoEyC0cum4oLYqQBfeDP?=
 =?us-ascii?Q?PzUE/R47+Zy5cD3vcfJ8ITerUzhKMa2mhqvHsHAzqJzZkHr9Xqh3kztqUUvJ?=
 =?us-ascii?Q?1+AfqvJ7BTdDFpMS8ZbaFDnIDYNtmLe82h02r7tJn/zRs1a+OyipxGnHJhHf?=
 =?us-ascii?Q?c4FdPtX96VBny7YWa6qMVt0x4nPqdtdWH2iyRaIxhvMa23bTcKmqOYNZ9ADs?=
 =?us-ascii?Q?Xj6+rixestFVxH8oprYRD2L9kKmczpbnDfzgFqXHfajAxsuAgbDKH5GJbFi4?=
 =?us-ascii?Q?pEK2YV/4p0VbcQgKFfcHbQLALu69vx+FN1HepLHyuOdob1x6jBMbJgrAhErb?=
 =?us-ascii?Q?1wyPZ3MvzILokdDh0UIUqxFTWNmpN973q01g0MVc+nb9ILNdOJlqN27Xo2LC?=
 =?us-ascii?Q?fNn9TMH4vA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WU7ZDfyqZxg8E+yxcbxX4Zk1ivVNM02E7vTXpU6Lhs3eLCsPHUfpGQJkr28Ue+Atz7G2xOtBOHzaer6KMCBD2cOKVBSjdHwEobEPEX7TyiXpNZ/IHLubTrwT0SgSGu2Q0Ie6uLhPME52gTTZ4sjVJpN+ArM+QM/iEzmprsUIM8lyKlT3tQxIPRQeonEqhidvKacj/6Vc92Tyzy2EjvZY/5cx3xKPwTXvle+mQX+609wLjh4/FXe8/9hDX5VFMCDhU63bRiI9aa3ssbS3l5rR6KiOjgtWzhJjhexrNwrh8tJhkAZOwQ1DKbFYHQJlM5nej87XNP8JpJFgRAg9PNcFkw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f26bfb9-06a7-4396-6eab-08de7ff42111
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 04:59:23.6334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RgtmPjRfUgB5JVq4jklZihCkpd+MNCeaxLOmaYfh/qNSQkd9r+GMDKvtUoSO5+esEtKb+TlsORcqUXSLjkdlpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8962
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5214726D40B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 1/2] drm/i915/dp_mst: Fix forced link retrain handling in=
 MST
> HPD IRQ handler
>=20
> Handling of a forced link retraining debugfs request via the DP MST HPD I=
RQ
> handler is incorrectly skipped, if the IRQ handler doesn't see any HPD IR=
Qs
> raised by the sink. Fix this by ensuring that the request is always handl=
ed (in
> the Fixes: commit below by directly calling intel_dp_check_link_state(), =
later
> by the same call moved to intel_dp_handle_link_service_irq()).
>=20
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Fixes: db4855d90363 ("drm/i915/dp_mst: Reuse intel_dp_check_link_state()
> in the HPD IRQ handler")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbb5e2f9c2414..2ae030eda73ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5575,11 +5575,13 @@ static bool
>  intel_dp_check_mst_status(struct intel_dp *intel_dp)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	bool force_retrain =3D intel_dp->link.force_retrain;
>  	bool reprobe_needed =3D false;
>=20
>  	for (;;) {
>  		u8 esi[4] =3D {};
>  		u8 ack[4] =3D {};
> +		bool new_irqs;
>=20
>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
>  			drm_dbg_kms(display->drm,
> @@ -5595,20 +5597,28 @@ intel_dp_check_mst_status(struct intel_dp
> *intel_dp)
>=20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
>=20
> -		if (mem_is_zero(ack, sizeof(ack)))
> -			break;
> +		new_irqs =3D !mem_is_zero(ack, sizeof(ack));
>=20
>  		drm_WARN_ON(display->drm, ack[1] &
> ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
>  		drm_WARN_ON(display->drm, ack[3] &
> ~INTEL_DP_LINK_SERVICE_IRQ_MASK_MST);
>=20
> -		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
> +		if (new_irqs && !intel_dp_ack_sink_irq_esi(intel_dp, ack))
>  			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
>=20
>  		if (ack[1] & (DP_DOWN_REP_MSG_RDY |
> DP_UP_REQ_MSG_RDY))
>  			drm_dp_mst_hpd_irq_send_new_request(&intel_dp-
> >mst.mgr);
>=20
> +		if (force_retrain) {
> +			/* Defer forced retraining to the regular link status
> check. */
> +			ack[3] |=3D LINK_STATUS_CHANGED;
> +			force_retrain =3D false;
> +		}
> +
>  		if (intel_dp_handle_link_service_irq(intel_dp, ack[3]))
>  			reprobe_needed =3D true;
> +
> +		if (!new_irqs)
> +			break;
>  	}
>=20
>  	return !reprobe_needed;
> --
> 2.49.1

