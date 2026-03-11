Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id F+miEwbwsGmbowIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 05:31:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2E125BF97
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 05:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0E610E26B;
	Wed, 11 Mar 2026 04:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hNOk0SkD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A65810E213;
 Wed, 11 Mar 2026 04:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773203458; x=1804739458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DZ9Rq2oypxqZ69yZkhOvwHN7nhnTlqHSr/cZv7lz6l0=;
 b=hNOk0SkDmN3NJNU/aJ1NKT6yYrrpZQe7KV769qXAioWqRk6IjUGmEEZa
 n2OScDHg+opnzBI0smzfESRZoc5A9b9sDKxjtCiszDtxRsqkfRGmDTGRM
 DXvR1WmCe7LUAOIPH7a6HD/2hln4EEsvyU7CXzLRmSQfVLPfGBrbudUrM
 nj+we7QbxN8xGUhHnNijcLRhe6fVXTNPXIRNRlfpptHxhXX+cM06C338t
 ghd80xJIhruSYogFwLd2uG2FLx1kPduZ98uQTBt9rnUE628swR9wJxh1H
 Kvut2MOY3L/4swf9N1gFqZak5jOXjVUGvy3wl29gQqCC3HgEITiC+D3uj A==;
X-CSE-ConnectionGUID: vd9Jav5CSVSELE6QZAsWEA==
X-CSE-MsgGUID: PH0kNtpfSp2NkNk1jhaUMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="85352087"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="85352087"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 21:30:58 -0700
X-CSE-ConnectionGUID: 4Q8xdJf3R3ufvtxdUCx+Zg==
X-CSE-MsgGUID: fdJzAaOeSPO8bzqnhoieaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="243348344"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 21:30:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 21:30:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 21:30:57 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 21:30:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ESi3Kx/OGaR38HStx9A73QDbS9Usw4GFE8FHl9Nx++m3yHn/ZBe2ThpmQBTH/WT8cRwbZU01tYqn3TFb/DfynuvWNqQ9t2QOaN0CWO6GqZLyB1hfnfDYD0KzX2rYwdqugOz8adARDuddjVUAcmRTIpD/izaQcTwQEqVJF/QOVdBGYtYh3Ig4Q5dqHhOSeokuB0PtoEyV869vPB3w94AJSfj4DXMnagrJqxg3YbWcbo6J5kA+96hODIju64UYUHp0Oj58CIJlm4ZY/220F05OZ3+3AW0o5jYYvKlck7o+U2XXXGFM/xvhBGq1D2UDISQoxEB6cbJSboZm3y7UMtVZvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GdviH0Kh1lM2Rohi60TH/B/PEc20GuKhPbdnl7NhVs8=;
 b=Pa03aGv54rTZ6Xywlyg8QJcz9ZIrnuSOa3AtmXpMVeX+eJqt0c65sOvhAvK6AVNPGZRvKH2z0p4AiS/aWk84lLoo8rzU0KFC2ZvKhdndmDoXN7WYwC6IVjbrlVnkrthU3/BWh1GjOth6Gol3VQ2ES0Z0JjkMp+JLXNpcRzkX0FeyP5/6qXZtg/ujGXEsHqskt3dP7X2LKy5GVw74jJ2N9GpZe91nbVSnMoZQSlh3I3ZQmRxbzQP2l/dJdvWgvYLoeUIpifrnm5eMTgwIhQqLJcrSZoIN6R/y3vTEbUKBu+0EhGb3MrZCS2PXjV+6TqQVu0rA+SesmLCKdLvHTLpIZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB7724.namprd11.prod.outlook.com
 (2603:10b6:610:123::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Wed, 11 Mar
 2026 04:30:53 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 04:30:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 16/24] drm/i915/lt_phy: Replace crtc compute clock
Thread-Topic: [PATCH v2 16/24] drm/i915/lt_phy: Replace crtc compute clock
Thread-Index: AQHcq9pXkUlu86S9NUinIU/+4BgYlrWox3Pw
Date: Wed, 11 Mar 2026 04:30:53 +0000
Message-ID: <DM3PPF208195D8DA1B67E18F69ADD0346A4E347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-17-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-17-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB7724:EE_
x-ms-office365-filtering-correlation-id: 54d39093-c43a-49ac-0a74-08de7f26fb50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 3NaPSXvCqd1rwEsNA5PDlFgt4o0M6MEAGfTBhLmo0qQmbg8nZ/xgAQ6VqITE5pn6NCVF3FHQ4jXKsGnkhYgerUKxHi1uzq16lHSi2ytX+mIdTQBl0yDvcdooKsm98nW475tZnMFBT/ldnN5n1gaWpgSc4raFUeO/Y2Q4rumKWqpJXWxomf3ZnsEofSYmdRqiVhOJhUxBFURBb1MPMwxy/NITQ6d5e3Zh+Klhfe4pgiNaxsca/oRdHcp6W+Xpt1k8nlWz5yninrPGAVZzYxhOIfDeRh8qVrswSNP2e8SROKA7x2E798oEyYCmU2NAgrQbEPJYxzACo/idzwPgtyAe+I/chH5TceG5qAwGHGTwewVoeiOxo2hv0yS72DKs13AOfu2tpSKTZTR9jBfJHmjsGWjfedpBJ05DVKgA3yuZKdHVejCgiWwlKuncjexPF8h5g9/gihATq7Mi5v+jDXlRVRdNQlxYsdq8JjsIHDvhPeJBgeC/nwo6r3C8Cz2/oDH3zMB7OeW5mkSCzMPdj0vnPlhoTHPOgcDUR8Hqo05oboiEmypjBA/MLdSA7LZbI6UNWmJYYvh8a9sCDsqIqE9lcWaJvt6ZwS9L6RzDCXPzC8jlyZWHToGGlcuZg/J3Wk2tJklwgH5AcBwr7rvDKl3YcYLVn6bprdNPhP/7Tl6asXc+Tm+tTLQOseowx+Bwh0O9vRhYSoVaajKkJni+jJ5OTAqhZwhLydgNyh601qp5AVzE7OT//mqQYlqun4NYGEx60FwEZxXvzllutytL8veDXPC+WK+pZXnK+VMIXlALJV8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lWB3o+WOummMMSVwM1SrXGXIXT8ZrbFXuojk20EkpDQB4iWQdi05+A9I8Xzv?=
 =?us-ascii?Q?wPBROi6kf1Vw8oREXWV+b+GuQ/P3987UZfHXlwREo9s5Rq/+3BrKOqnlA3J4?=
 =?us-ascii?Q?NYXpXaX5p3TxqNECwZyM9dseYnEIC6CukJrjPMHysN5hqbl4xVOrIEDwGOhn?=
 =?us-ascii?Q?EQLCLg9zJnZhBxAuBX9AVv86H+JdVBmI2upDH1Nup3g1coWZThgdvpVn5T6M?=
 =?us-ascii?Q?1n7gca6dRFPmn+Trc3IYVfM74cW0F7yDeKFiMD/sLkUk1HiQvmibaDym2D59?=
 =?us-ascii?Q?iTUpDw+aW/lf7OkvsYnaDUXgODK7gYlad2/FQtPbTMka1KQuoup3rw3U9Icr?=
 =?us-ascii?Q?j2rXIJwYANiuXD06hVjNSUmnOp6PjoDQVgKCJGLZEOwX7eaJMfmt/jlZBUBk?=
 =?us-ascii?Q?3ncA+cmAoLsT3kX8PdrIE73qn5SUwUvwsgOJyNmABVJ+yrWHvHxt2BV5frC+?=
 =?us-ascii?Q?jaRiY0MEYCJ/DksTBfDgeQI9jswgxD6Wwe6kvm3KYh1jl5Cpv7M6zrUE2nAs?=
 =?us-ascii?Q?GloRoRc4EqzTtYroGfp0p65toBtTdlps5h/IxhsKKpFXnkqwYUbXukyusSXw?=
 =?us-ascii?Q?WZfeNYvTbJ+kL8grq+nVI6s7dB4JOfShglnz0jRADUoYaIvjaERYjkHmxVYy?=
 =?us-ascii?Q?WayIjr3j+3obDvtUUWIF1M9sTFp5uaJwxQ6MakncRlyOByfhMEF+equTyxnH?=
 =?us-ascii?Q?0cK+cES6BDIqGvhNHC1wm+iuHgpQPBwgEO4NSdYVgV8UtC6+/U1shh/kRnLA?=
 =?us-ascii?Q?zfBiyaLyGow0s7xuQH+T2V3IjrQug0dEsfpPfbV52TyYJyigE2/SLbTqN768?=
 =?us-ascii?Q?Wl4FmYr/+mMl43i3PgwXlewRHw4AzuHH4TFmtRZB78dObsbNDZXB8PIoNbyd?=
 =?us-ascii?Q?m7IFxjRtZDei6z+D3CsVj2hinD5qtIwDOWEg74Gh5LkOr4FpemQE9TM00v6a?=
 =?us-ascii?Q?C774gdMXRxMxjmQPdghK4HJqoFqYf+V0wn5gZ4OTZI32MCq+Tj+tYB9qUgiK?=
 =?us-ascii?Q?oDCGMEnrTOSOB3t51vg6HZhYTWT+qpzlLbirLlsmsD16H3vLKjGLikQCAaG0?=
 =?us-ascii?Q?mgsutX4HUsUx9B6gP2FuaXm2MHMbCqrbiVJoHYXqU6WifLa3g9LCL2HSJdbS?=
 =?us-ascii?Q?WsJ2VV/ULQsxRzw8JEww82hgcYHGrdU//AgHHhiQzot0pNyE08gux2oAWG2q?=
 =?us-ascii?Q?19SN6tP1jiNKtQ/N/1Ka7XuWrsew3fNaRKoOdTdBLwCCXdcLOhayyDUCfBLC?=
 =?us-ascii?Q?94++IigS6/sW+ubEcc39XRnuR5zVAtVDFWpBZi2J6Lo59vIqjwWeSERGuj5w?=
 =?us-ascii?Q?7EfO7+fCsmTsfEA6oEMOenVhJ8OCk6HcwtjUzcqMfPKq0LLnjyvda+sEtRu7?=
 =?us-ascii?Q?7NoOdJEtDCSN4TFA6k4H4/LdJTxl3V9QbnDdj9xWIuPt4qG54ugP6hgsHg4B?=
 =?us-ascii?Q?Lguuh/kSF+c48zdRsE7syBZ6LWnQyc+Dy7O87WNKktUvGQhc84lLtxuQaKPR?=
 =?us-ascii?Q?fyoBUavFY+npohv3oUQ4WvN859RhUFeFpaQBO/6vCf8s3GFP8PWIkJLged6C?=
 =?us-ascii?Q?jIXkZqk/K3H/utBOfNE99BUiNQieE4e0XOyohKtgUpFJXPP4I4Km19+bK7nb?=
 =?us-ascii?Q?AfSMw5O4wbiVHKXo9kxiXoDrZz8jxeVF10JRccxCVF7g9u00tiDOHdClfEfE?=
 =?us-ascii?Q?qIlDHyYjN6GV5fepqDHd5GeWiLB0gcXsuEO5QmsKFCc6ZnTojLyo1ZMv543L?=
 =?us-ascii?Q?UQTgIhYGJQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ALrSKI3/hiRCFXn7rJOYXuQIogUhnzwsD9XKD4hnXE20uotXrap9EUnF8tPRwXjsLVtM+zkHnNXvto0c8IRL8d/kFI6GTb97yksGjJOE6o20gs+Iyu+uDmakKNu2C1TIZ2L9oExG+peISUXW5f86+dbRyiWc8zrrCiFf235rDc9NBJrHUSrxuHbpx2R4VZlIynUgi3mbuwWomEzR1nZhFzHce9SnXst1dSStjLVVuYCwgl4HzpB7yjNgmgj7dlT8+fPOgAGnw419uq6nC80tPKdt1zNi5UoZXZqO9R4F9HwMRVp1qNn7zMuEl9ru9qMUmvSwym/GWbh5C2kF0x82Pg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54d39093-c43a-49ac-0a74-08de7f26fb50
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 04:30:53.4205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yQHeWKiO0+Hmr8SLeV9IOIUSI62FA6gE0SWLWgQr0DRs3f1C0yz6GMbNDwr/mdLLnGCtPvaqwB6vHo9ODzW7XQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7724
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
X-Rspamd-Queue-Id: 7D2E125BF97
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 16/24] drm/i915/lt_phy: Replace crtc compute clock
>=20
> The existing DPLL compute clock callback for the XE3PLPD platform
> (`xe3plpd_crtc_compute_clock`) was specific to that platform. Replace it =
with
> the more generic Haswell (`hsw_crtc_compute_clock`) implementation so tha=
t
> the compute clock path does not rely on the XE3PLPD hook.
>=20

Patch looks good mostly but does not belong here.
This breaks bisectability reason being dpll_mgr is currently null for LT PH=
Y
And it will never do the  compute_dpll  call without warning.
Still going through patches will call out where it can be added.

Regards,
Suraj Kandpal

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index abc85ee9b832..c7d37e74fbe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1212,24 +1212,6 @@ static int dg2_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
> -				      struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =3D
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	int ret;
> -
> -	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
> -	if (ret)
> -		return ret;
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
>  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)  =
{
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> 1690,7 +1672,7 @@ static int i8xx_crtc_compute_clock(struct
> intel_atomic_state *state,  }
>=20
>  static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs =3D {
> -	.crtc_compute_clock =3D xe3plpd_crtc_compute_clock,
> +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
> --
> 2.43.0

