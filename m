Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLOALOXvnWkHSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:37:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152FD18B7C3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 19:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFC410E60F;
	Tue, 24 Feb 2026 18:37:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKwTvliY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C01810E5F0;
 Tue, 24 Feb 2026 18:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771958241; x=1803494241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=96bICNRGnJq8cew+w/ixP/9mGAMVI/a+jRLAeSi+P4Y=;
 b=QKwTvliYPc79DOPATUP1YcXxZ47sLG2V8FBq1wSAFBVU7g5Kt6pg31ce
 73pUhy5jJbVV3AjhOeD9vfhtAd9my6GZrtmISFdNOcOFJ8LufAAztC0H8
 UCgJ9NCwK/SGt9kxHL/ymfeMEMDpgrwEjhBKIquF4l+4dm/Fy0Nw7RiCs
 N9e43bAh852/Yz2pNoUEkrnedj4c6qVlMULalRbuKdZrrJXo/CkjmiWlH
 vBRF9EoN8Boend3FM6rE+0RFeXdOJpDOYihoOAcbk8oI36WRtoZVxF+Fo
 k9uyFy0Q6CA8MU+M+UChi+VWeTP4Pg/lnzy+cWdRhrlOB+fTMLPcVyKCu g==;
X-CSE-ConnectionGUID: 2a5N/aElTXaTIxkdH/bNDA==
X-CSE-MsgGUID: E/h+hEr6Tlqsy7sMY66MpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76818608"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="76818608"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:37:21 -0800
X-CSE-ConnectionGUID: FWJLmUlnS7OkLV7h3chVLA==
X-CSE-MsgGUID: MaWqEFO3QACx7MJeVPiRPw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 10:37:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:37:20 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 10:37:20 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.64) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 10:37:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BjNJuWoaG6zoBZMnj67+zk8RDrBRPmrznc63UziEhRiY6BnGzTAcUlKHEkQ4giaDD7iba6Ux1T/4cM/QShAHljUalA87coV8KoCBQepJhZJRvc8Clz6K/h/jbL5XelPn/mgc+8TRy5OU5YYtEeeJCJq3CZboC+8zHXUB7cXqxM/vU35Mwa4lOlHPaz8T+QD6P45Hly1YtWPkWCF4zADL8oUuQn6FPU9hTKOY+aQhCM0FYWnH4236WsdsMIN1tXKT4i6w2nwj5B95q5BVpaFv9SMDuINXGS2zO7fEVfqJjxcz8a1uQ4r6Qeuaj93QvGvEDWaKRd9sye1aHSuWNAv9Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J6teIcdCogkghskioEcurvh4QnFvxS7uMvKiZmYhp20=;
 b=zTKW73toymLhIflKM2kmlEaq54jBz7ike68bYO0fm08egNAw9wctJPXa6BRU0hD19vimDknb7Lfdyt8k6r9UnEcSuP1tw95uu4lAb7S5UM9wWjllRjFpM4WvaH/90zv9VeZsbuX9C4WCxsbJTFGI/piqeMimXmKESIwM6HU2ySMROQi8YivnAkkCwjFa6PUNIMxNwO86d960dU+Q0nfuEFPE0Tb1opikgeoyIoGwfJDYex67i2D+MlajFskrIa+0o7J4UX+yrnE62mOZHI1LYWYmjCZ7QML/l7JFDoS0+J4K7FrNzt2dfOox3rMDXcvTJggZgYwKn7EmF1lwblV7JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.19; Tue, 24 Feb
 2026 18:37:17 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::7bc5:97ab:e0ec:1f87%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 18:37:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 6/6] drm/i915/fbdev: print info about stolen memory
 preference for fbdev
Thread-Topic: [PATCH v2 6/6] drm/i915/fbdev: print info about stolen memory
 preference for fbdev
Thread-Index: AQHcoou5fqEHdDKxPEOR+ghJnFgNk7WSNAPA
Date: Tue, 24 Feb 2026 18:37:17 +0000
Message-ID: <IA1PR11MB6347FE3EA9DB3B9C6738AB5AF474A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
 <20260220170908.201422-7-vinod.govindapillai@intel.com>
In-Reply-To: <20260220170908.201422-7-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|MW4PR11MB5776:EE_
x-ms-office365-filtering-correlation-id: d0925890-b68b-4b4e-fa8e-08de73d3bcde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/RbHq6DNHPudJTY7so99HFVuJPzuXc7iYWRwcYFGFwHYtmKuXGUxJhGf6nNI?=
 =?us-ascii?Q?dvgxEOYn7OP44z2a/kfWI2adO3mES/BFt3lKFtBwiBDrankciQwuNmoHc46o?=
 =?us-ascii?Q?CVTYmjnYsY/OmmpwLwHZo+zV6tMm65zg0DmuYjeHXpt47kVMH6W4APrhQ5ph?=
 =?us-ascii?Q?TZyU6vgsrcHigG6T6K3o6xrmiyxYXya+3GttsDs1KKo145xwyv+bm7mRxxpM?=
 =?us-ascii?Q?rasQ3aw23PYY5xuSazaRH/BeDj6KiODwqeg9XbUML0dPL2bxYNNDx5Fbrymo?=
 =?us-ascii?Q?02qDGbt1ByMo0yI3RNKaQunNVIRGRzVumWoPTYl1cER3BYFSIve0U0P424O6?=
 =?us-ascii?Q?Ej5xrXAUrTejXSZc0CoOKtYCfhLvEDkvJ2YE5goltpvJK5w333hpf94Pqxlt?=
 =?us-ascii?Q?AG6mvWjP7Ccri7d/DZREx3twbHtmSdB0pXEIOBcbUOyjb4Dp5nKWfaUCYoGI?=
 =?us-ascii?Q?uwOx4Y/ixzbYuf39nodHJEfhO8wW7yyRpoqqDINFTVQzBKaq27JwaXHu2coG?=
 =?us-ascii?Q?RVHLQOq1+T5ufdhuiR0T5dw1mCbWGSP5DX3sscXg+syAjUCjcPVx+TrcypfS?=
 =?us-ascii?Q?AhJ+BjEKlVrfCj8OWvnweEU7AoZSEUvSM/Bhh1kRZwOSDgCzrhYGY/RyvBi8?=
 =?us-ascii?Q?pnEEO44i7KT1fwcb+0CYV1tXcTsG01goR3NG3cE815J9GlHX6Xc6uOWNbyas?=
 =?us-ascii?Q?aWjJMKcym1MoK9irk5dMA7wRGeXLWqCR3DI8Hc6VIK906/bToH1LsHt2Un+0?=
 =?us-ascii?Q?j8vIM0j6n56UVYCLHJnvYlRhqIDpYZH3/NSOzl78gQqSkYqj/UYTatd8Y+FU?=
 =?us-ascii?Q?Eh2xJ1UKzwCtwKjKgWMTfMqYSLPkV443rX2oQC1oq3pM/PyR2FGny2hu72tu?=
 =?us-ascii?Q?3c+BjiyRAKS3FaKKbP6IQ6fFZXYj7bhHO3UogQMu+38oqhmts/RT84VLdvlu?=
 =?us-ascii?Q?HMHHZ0PVnP1Se3SuaG9pcHBjHvRXvei3KqfM+bgI/sPWsRC4Kc71ycIT7+LX?=
 =?us-ascii?Q?2YfWJyVBDif2xMZcmpC6wZZ8goZCN7JRyLhtlurbNmzP0VzGT38kDkbPdStL?=
 =?us-ascii?Q?mwWyvo7xOVXPMj3EzyeeJ96o8uGxtL3kAx50DMZDSxJ11we3XI08eY4bq9rB?=
 =?us-ascii?Q?09CD9jtg6XbJypv47dwlnpVvy1yXL0r1AXZxraT9JHYm18AcTpklo8Q9tsq2?=
 =?us-ascii?Q?QX6rcdzq1FNfUb/qv3XSTwe0kyVZIX1Bwhj9xmqOtu96MBvB+kE5D3FVPnNV?=
 =?us-ascii?Q?hF19gXmsLxoVq8HDFZZ4Bz+FJshdqpC6yz+hqoX2bTXOgqmxsi4f/zpPosC7?=
 =?us-ascii?Q?eI7nSawfH9KeRxBYjC9hpFUFMaE8UabBlrtGPXtHLu1mXDT4227qBI4iDRgR?=
 =?us-ascii?Q?FMqtHkKqw/rMUlwqwbNGfq1oRQxB6UH6JCfwWPgUBReOrsQ4lmEwKdYoPW+f?=
 =?us-ascii?Q?++hNf9mYSUK+a6K9cq2DjxLOI9pYT6xWW9iFg0f5KF6FX45BnSpalG8vBu7H?=
 =?us-ascii?Q?tL1wgsC2Qwuz/wipH4ZxiMdoy5l9XYkvjYFTe4g2XAnzrrGkUCnF+ExZiDSm?=
 =?us-ascii?Q?r7A4NNu/mcphyUFIx2Q44J9Ee+YpUFHVS9E4jSvCBWN78VaqItQZYDYcF3qc?=
 =?us-ascii?Q?NdxNxHJI3fgGqXy6J/rdwsI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NHPOv1iPetU9cfs4sg501Z7lGiVlLH5KjmOyBtraTZhylNATLjqfwZ/WEXTu?=
 =?us-ascii?Q?z7yEuUQhuaXlN/V3zLnRKFgodbt9hK4Okg+xnQ4+vY/ad+K20MVWDc1erc1A?=
 =?us-ascii?Q?XVaJwDZ6/Cs9sg6voaKqMuWyh67Isjac1Edaq/WQqxSY3sT9HYyS/WYngCHo?=
 =?us-ascii?Q?ACOOW+w6FZmfoUIJETIvDiNSTG7G+7nNq3/AjUZ9Yc0dHQ651IGnb8yMwvqP?=
 =?us-ascii?Q?yioRfIEGQ0oIbsDF2g+Cc6anHOJjuM1q9saKF/qCVPCTWEUH4shRgv649jVK?=
 =?us-ascii?Q?JUG7Kuq2mYCBfeqencYWUQtWbDBRxCiP3tT/T7yeXVurryi+Va7eBz25Q77D?=
 =?us-ascii?Q?5PJe/kjj8vbjtHJciMDOAwbi67vkMSQnLiCPeO576nF80AOqAVbQ6xmQndLr?=
 =?us-ascii?Q?KYHzowXzfiOmHMPQT27yTeg4r1oG3fgzJ6Se8iY8rIlSCE9K7H3QzHbBwQfq?=
 =?us-ascii?Q?xboIfqBJcUcR5z4TlolVWP21m93Zhq4979RpGfVFIEdF/l8g+Fdr3QDY/fyW?=
 =?us-ascii?Q?jV26vQRIoJZacWv0sFvo/W179EQMcRy0tbu9/kEMM4FGRbmlEkIm8LzPaT+V?=
 =?us-ascii?Q?NqaNDxE7wJ9V2fcKrNdZRUF1E7wUqgeSbybu1cZVbTmj9B+j0VckleQ9a1ye?=
 =?us-ascii?Q?y0CSPu0lrpZi6BUJwV1IxAR7OBE06zVQUvZOl3ZtuW5iP2b/rY93lMysL5wI?=
 =?us-ascii?Q?3lcWjO7cEFk37QlUp7E6FmA3qDBYyvaGfGK4AFHmhm3XKpFcdOF406YA7jcw?=
 =?us-ascii?Q?MW/nr+OZVnUAIcJcOlvEgGfWsJ3cZ4UE/abeIo5qBdeFC8zIFjbuHXfoWehx?=
 =?us-ascii?Q?kfWQJ5P8w7Gt2HE/KBY41oO5kf4ysIO2VyEm7tYlxKD6GVEGIrWrUKvv/1sv?=
 =?us-ascii?Q?Kxh6eOtyTxGhUDxl58+rWsv9OGuzuR6RjunZcQ15x1dl/i3V53alNluJQUjZ?=
 =?us-ascii?Q?v2wiK8YXvFfbkhDN/Ngeey+/nD1MGav26m3VedGk63zR8XpkiYnJnyRJQjh7?=
 =?us-ascii?Q?fdLOETBSmZ+ohD7TWt4xUgkonnqyCMIfJ8D/65fJ0tY3PurFgk0QI7uDujo3?=
 =?us-ascii?Q?lYAFgWJvXXEO/nlYiy0RORa3xMpNnokycciEL5N0A9jQMqrUvsJtSqCDvLav?=
 =?us-ascii?Q?Roa67O8rME72vy304VzRwur8RfVdAMugtVObaClFfKbjKkPhWGOuCmmToTAJ?=
 =?us-ascii?Q?tavgnqo2VrR63r12bLZTJeY1t/0QlOeeTRXqJToHFUmZmRDfQ7Il8gUEw4y+?=
 =?us-ascii?Q?DYoxE10vO9Zk1JtLKwTRzySbRNrfhYwJl7frdzxEpq9o1RB8wIGmWnv2Q+fP?=
 =?us-ascii?Q?ydmAW6TR+HZ99auyZYD4ztgvheX7H0CdxxdAz7b2NHPrh17ZWsL43rT9J7IF?=
 =?us-ascii?Q?xFC8RpXfgJN1CYa3dYCjoOgnPD8GvTFeMVGm/d+hGwr8d94IFSJUkt9esmZR?=
 =?us-ascii?Q?BUsOiBQ8boM28/SFA7wSJKqQYFzVF/XBnGsbfA6hrWvHBkz/jexh05sTaXbK?=
 =?us-ascii?Q?mbb7FpiiTWfkIYWEZJcp0EHVWAgsVUP9GkhEd+hqQVfsCBNU3+4TZ25BpZwb?=
 =?us-ascii?Q?HldUn/HL7dYq2HadjqFHRoJbABdG3OmuOcfUk1ROe6yvh39oN+7opmXLZQRs?=
 =?us-ascii?Q?myM2IWtGMvEONhof37M99/USdTxJXclaJFmWljzCsERFTCsAAWOvyMowNqR7?=
 =?us-ascii?Q?/EDCxhepc6TlzXQROmy830zYgZvENhwUKww/qLH2sa0qhN8H849AEJ5smVJF?=
 =?us-ascii?Q?TZ7Rcbq3XQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0925890-b68b-4b4e-fa8e-08de73d3bcde
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 18:37:17.7172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MKbAnv0oLzjejRSTGXhKes176/SmfxnivDegaHf2MtxcodYBORxEd7vkUQ6hzYXD1PlzleWTsjPYfw6/L9ii2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6347.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 152FD18B7C3
X-Rspamd-Action: no action



> -----Original Message-----
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Friday, February 20, 2026 10:39 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2 6/6] drm/i915/fbdev: print info about stolen memory
> preference for fbdev
>=20
> If stolen memory cannot be allocated for the fbdev because of the prefere=
nce for
> fbc, have an info about that in the log.
>=20
> v2: log text changed

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 90993d09a73f..6f84eb6355de 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -46,6 +46,9 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct
> drm_device *drm, int size
>  	} else {
>  		if (intel_fbdev_fb_prefer_stolen(drm, size))
>  			obj =3D i915_gem_object_create_stolen(i915, size);
> +		else
> +			drm_info(drm, "Allocating fbdev: Stolen memory not
> preferred.\n");
> +
>  		if (IS_ERR(obj))
>  			obj =3D i915_gem_object_create_shmem(i915, size);
>  	}
> --
> 2.43.0

