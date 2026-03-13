Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFiaMtbXs2mzbgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 10:24:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392DE2806E5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 10:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C32CC10EB63;
	Fri, 13 Mar 2026 09:24:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCy9K4l6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3C810EB63;
 Fri, 13 Mar 2026 09:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773393875; x=1804929875;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6XMJxeoWPba6RtnAOMYfMZwsCwNUyzvA7OwP4kVrL6k=;
 b=fCy9K4l6Y80Ueo6Eqz/ZNKmbIfNBEyBQD3eY9Ni3PEfcNPMkpaeKfFO9
 KOnb+1qF4+/BJxdx/anBTeiUOkIoqGs78cPTV+eZlneV3w1YuajCBnLAN
 7sNBn33tNCyDViSsLeeb200wzpoKy60eElUOTd1fK+zEnoXv6VC0CeAxc
 eXq+3Otel4Z2xA8J2XLQMbNtgPMvbaA9c8YMm+rEu43XZxa58e97+rXS1
 T9FfmOwzf184Jgrzv7BJ0wrSpdhKHNfIe28rwFS9LskYmodo0yUjNL+VQ
 47WXjMfOmBDhyGxPL2/GJE3UzVxk2L3aReDUzIx8MrnRM0mVdvyc61i0T A==;
X-CSE-ConnectionGUID: HGE89QM/TICUx1OtOkmSGg==
X-CSE-MsgGUID: SeJdvSb/SQ2z5TcWBwjypA==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78349960"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78349960"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:24:34 -0700
X-CSE-ConnectionGUID: Yn4Jvl3zR62Qz4Af8ydkLA==
X-CSE-MsgGUID: Rh+jTC0lTcG/AcvqQzWOzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="251625557"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:24:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:24:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 02:24:33 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.45) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:24:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VpMSCur5UEoSs34eXR3zbQA4zCej1QiH1xAaPQNj/5Uwi6pM0IlD9CBI1GS4VJVarbl8c1zyKC92Zg2y2/0oZRO0CvaJzwwLybL+oWkYRIziEMxctlf1kHlaR4MpUGM7hp9vFzQ6S4XnztsWdLy2ebKOTymeIXcVfx7NK6vwVTPAUSdHo8AC6c9nZmgnBITEBswH3AJNcXGqirrWyOE+mRltV3XiGvXpy2TjLhzSJtxrbYzPT3cbsstl4TlMfjwX0pNXMpSnKHmrKSRZQheeZ2gMqvBqyIjcKBDVLCEMv0QHvhTFbaIhj0CDagImvyK/FPJGwFw+Q0rocHNwJMKuzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z96AOOD5uKBcHarco25Gpp6CMIybADbfwOtsap26XRA=;
 b=OhRqc0/BDAhLnn9sqmRYJpZVXyfDg0V20OIZnNMcw8nXkGPkouFh0NILQIO25DMX5YXb2fDddM5w6JwjS0eHMb7qgmi6R+S2s04CGajeYlTQJO1GT7wd4Pu+HVEATxyHmqPuuqBHO8Y+tN7SDbw0Q2ORk2aHVHFqpetv7cen6kVEdKalh5h6P/J0tp0f4TXVbG6dri22Fm/XYPfd1C5um2vfjSM56xFbeQOoUaRjSvKcqqg+L0tKWGKJPF4Dwx/goHTOgxucNZf1LN7vHnPY1Oo1wi5PpD6tjPsYpCxJR73TcSJyhjfCPhvRM4uL8Baj3i5U40+KjbBAeKZonpT8hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB7064.namprd11.prod.outlook.com
 (2603:10b6:806:2b7::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Fri, 13 Mar
 2026 09:24:24 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Fri, 13 Mar 2026
 09:24:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Samala, Pranay" <pranay.samala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/backlight: Check if VESA backlight is possible
Thread-Topic: [PATCH] drm/i915/backlight: Check if VESA backlight is possible
Thread-Index: AQHcr4c0jFYlc26Me0GkWdgygZXRbrWsNa6AgAABUKA=
Date: Fri, 13 Mar 2026 09:24:24 +0000
Message-ID: <DM3PPF208195D8DB2571E4EAC9810DD14DAE345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260309053956.3966624-1-suraj.kandpal@intel.com>
 <BL1PR11MB60508EF4456000996D7911FEE745A@BL1PR11MB6050.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB60508EF4456000996D7911FEE745A@BL1PR11MB6050.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB7064:EE_
x-ms-office365-filtering-correlation-id: 734b8f3e-aefe-40e8-df7c-08de80e250f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: aRJAYhOLmZgcPo+pCQaQp+l6ztNDE7WmSS2m7RIB1fiEgsLrWKYje42In/gsXSIcd8yh/W24uXi1n84IQrAhSaGt3Jb8/ofsSyFTk5jvFutJp+lKvwrrC8NpyVhK/lxzZYy7EO/bwtB6eHg6gVAuTDWkYfVxVpgYX34HweAKOEL7QEeSU2sFE427ld1OnLjQTwCwEYeLtdWtWPs0B3BPtDrFUs8M1KkKpuwjcaJYL5/3H1locMujyurnXcxiFhk+JG3/qH2z/VPdvqIkSSziGspj7N+BKxxc6QhNiQzC4Sk/YgweJy6G91JFQPYVJ4HvEcDFFeBFa/va+kyEmDYbOFjoVGfZFe1vUDpT1UbFt1Y2hKBDj1v7FN4QSCG9QYm4isDQ/N2bsUwlZCogNrHG7h/4kb3YdzRfoUhoA9zayzam2OZ1KGtiia9T8HK0ZfayP7B02E57i/k1XsVJtfwzNHXoLxW+NvxJi/1jJR7E04W8bF+X7ZlUCyElLiBlB7xkI4D4vAOn7/28H8xQyfvX9NH4yh1k94/DHNROSPjVSfY+w7OAjAq6NaGosxX0UPZIEuBOpReH/YRas6l7q81bsqfpn93KBiJINChZIXIakV+3QI4ODWt5aVBoDFcni0+6U5IVydRIvgYZz4m9FmSYJCevWiUsH+DUUj4+fnwEjyyi07wTh2fvD3qtKQ7T348BJbwPRGgIw8SqLTlmbwsY08KHedTd2HgGVJfq9dbW4pI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YHFTHQ0P2Fxi9ep1tcF673GZvwXPVtRwAa3YmyGUY8zVIH1UJDz+WZwRk5bA?=
 =?us-ascii?Q?w6jP53ZceFhTrNyE6vuNY5HzZ++pk1cn3mXR20AKrGGCP0rvakdgk5uyGED9?=
 =?us-ascii?Q?5/Ro29Yt3780fIpYKDyhW2GCHtfiBpPu8xghBarGN7KWOpzO9FBbsiPxAofO?=
 =?us-ascii?Q?/zjc20140CxkrWyf2ezaOxcYvb2GWPMMa2KwvxozYYETFnecgTDdEGpdfc6N?=
 =?us-ascii?Q?Y5ZkW4L6zmPaEE+LHKzb0Kxc8Lx9MYnrIwppMiF/XA72cJRN6eTVAWjjRSba?=
 =?us-ascii?Q?0g/pRhwI8sGjNkT+NqXWLs5+DuyGiq1ouAdUwSds7pV03kCfGxK60cNo4+D5?=
 =?us-ascii?Q?ufo6SmGnbPhMRPMwgzzZaGGVGYfObvsvTqRy2aGiNiqRT284u55ru59+Pzuf?=
 =?us-ascii?Q?b9fGCH3DssnbBEMLR4C74PSGHxtyTmj5RmkSM1Hy0QuqWlTH5EhWb6rMOYIN?=
 =?us-ascii?Q?2W4w22OYcINjkdQ8OpFjRXYynCRj+7dSCwKA+S0BaWDJnjteb6sLuuaNFGo9?=
 =?us-ascii?Q?FJkq7EE4i5DDF+kfkCiBnTSX4bfueR1aFLwNGm57pQd8RI9i+rdiCzp5bFO6?=
 =?us-ascii?Q?LppaXisss2DGwSqJu00FCpCC4v2EickQ0FaiV5I09/xqnQin55HaJ4JuGRz6?=
 =?us-ascii?Q?nt5jEDSP6aZ/4LZpKfclXWrGhX5HSMjM82glc2qA6YZV6afzaK73gaLWPNN9?=
 =?us-ascii?Q?I4APbf1ZXBz2SCNfBoyH1FjozHwGvFAc/tRlU2+IH6jxcOYbW3R8fpTAbNSV?=
 =?us-ascii?Q?tM6RTkiAlH5pWRbnm9CEHsi8pSmZBOW7HDSbqNtoQ/wE9hVg0vWKvam3gE/j?=
 =?us-ascii?Q?Wvu1Sx9tozwEyetWAyU8R2jtOvo9ZTu+dSiErRYxq7TxdaWBFvHksIH0R+NA?=
 =?us-ascii?Q?cexcbfXO6l/Av2SZuiVHYQEsoZ6ij0S6U4KQct5miZ2Qx8LYGoIEsSBNxIPb?=
 =?us-ascii?Q?qOezTdHWCc8YZXVGxWcFRALhBz20HpHqt/KTkWoNkqTcYfqKtDBJamyjK10N?=
 =?us-ascii?Q?293NgzSfPaQhMxAVQqAE/Nmw+QpWHjpVNGDLfcO5LsGsHhY0xFrEXI6T5DVQ?=
 =?us-ascii?Q?e6wdHYCI1IK7DkPYVry5mBC7Uq73nxXQYEajHHy/O1QprGX8EVziGh9ucZjP?=
 =?us-ascii?Q?MjG56YfCFFML0tJOXbZQ1G0UYCcU0ZyfHWCoLAKS5O5AB70m7/XhS3ZS0z+2?=
 =?us-ascii?Q?9jAVT68w/GWf+RV79diNK5LNxM2EKSmKAhugFwBg3fVzA58eMkmP4pIOOTNj?=
 =?us-ascii?Q?W056NXZXyie+EV0PEWtYPre1LvHn1oA4hRR+JPPU9dIe7bkPzKo795MabN/r?=
 =?us-ascii?Q?g8KDCB1WJRqyQ19mjVPRvTxzjbB/aGOkcvbfuDW2jtDI9x7Vwl5xpPsv6AL+?=
 =?us-ascii?Q?18mq2GUVxXzd3//YYp6zsuLEPFhTNgaXkjDqEr0kd2j1GcPEH0fmr7fDcICR?=
 =?us-ascii?Q?9Xhx0MzngtIJMkHLIvhnO4aVWSGSpdCRlFs3J2EnhoU0IVqoqC0wugpWyE6V?=
 =?us-ascii?Q?c2UvxI4bTe6FOrw3pvDJcv5V2LA12sWdfs3O5tUaivnoVAqcKwHIID3Flazi?=
 =?us-ascii?Q?S6qCHWNEkTNVoZLtsj2oAVrKDcnGTpvqd5/tWHEM2O8LlVBqdEVAHA6hG9Yo?=
 =?us-ascii?Q?5tPKXUq9l2FVrcl4yf9UD2+tJIJCbV2DH4iBCh107uGtKtdBrly5ZZcGO97J?=
 =?us-ascii?Q?O++pWmvMPzzrdl7XxVUkXmVxOGsdgukP8IAnVISnFgWXKmcqf1RTK/0VmiN/?=
 =?us-ascii?Q?mejq5siQmg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NVO+HIhwBXqQcL+JBvck68W26o7HYHHgppct7tY7KWJpLS2U0PFYqowTLAAc3Ht1wGov8jQSlIRQx3temWdQe4U4pB5Swmmu3pPRO/c4Ug9rS09WwwVKhUKTzybpoaNbP2UUw1wlstTNuoiaPUNYGw5kOORq0d2HYhol/m/NiSDk+31MhRCwYodbAx5T0ARlKNXmyw+USih1WxTlv10E6EMKcqbK943IoRxyRe3aF7B0w+wt5vQ7AltMmmRY9F2ohYqoYBt5fWEZtf9Pi+HPPruwovei32WkPBbrrA6W1csXNODw89quwCzA63DZJi82pByO+7KnirSCsW+SSkIJ0w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 734b8f3e-aefe-40e8-df7c-08de80e250f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 09:24:24.1798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D7bcbyzcdvUc31xIJAKHreI5NfVnGjSXS0yYaYYiSIY4zSPNCgnec/iRGDJksMB9LwxoQ0Jg7BzeSuwls/+PzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7064
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 392DE2806E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Samala, Pranay <pranay.samala@intel.com>
> Sent: Friday, March 13, 2026 2:49 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: RE: [PATCH] drm/i915/backlight: Check if VESA backlight is possi=
ble
>=20
>=20
> Hi Suraj,
>=20
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Monday, March 9, 2026 11:10 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/backlight: Check if VESA backlight is
> > possible
> >
> > Check if BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit is set then
> > EDP_PWMGEN_BIT_COUNT_CAP_MIN and
> EDP_PWMGEN_BIT_COUNT_CAP_MAX follow
> > the eDP 1.4b Section 10.3.
> > Which states min should be > 1 and max should be >=3D min. Some legacy
>=20
> As per the spec, bit_min should be >=3D1 which code correctly checks.
> Please update the commit message to min >=3D1.

Thanks for spotting this will fix.

>=20
> > panels do not follow this properly. They set the
> > BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit while not correctly
> > populating the min and max fields leading to a 0 max value.
> >
> > Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514
> > Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 36
> > ++++++++++++++++++-
> >  1 file changed, 35 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index a7b186d0e3c4..5b6f5c5f00e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -609,6 +609,38 @@ static int
> > intel_dp_aux_vesa_setup_backlight(struct
> > intel_connector *connector,
> >  	return 0;
> >  }
> >
> > +static bool
> > +check_if_vesa_backlight_possible(struct intel_dp *intel_dp) {
> > +	int ret;
> > +	bool aux_set =3D false;
> > +	u8 bit_min, bit_max;
> > +
> > +	if (intel_dp->edp_dpcd[2] &
> > DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)
> > +		aux_set =3D true;
> > +
> > +	if (!aux_set)
> > +		return true;
>=20
> This aux_set variable seems unnecessary.
> The check can be simplified without this temporary variable as below, if
> (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
> 	return true;

Sounds good will update this.

Regards,
Suraj Kandpal

>=20
> Regards,
> Pranay
>=20
> > +
> > +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> > DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
> > +	if (ret < 0)
> > +		return false;
> > +
> > +	bit_min &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> > +	if (bit_min < 1)
> > +		return false;
> > +
> > +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> > DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &bit_max);
> > +	if (ret < 0)
> > +		return false;
> > +
> > +	bit_max &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> > +	if (bit_max < bit_min)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  static bool
> >  intel_dp_aux_supports_vesa_backlight(struct intel_connector
> > *connector)  { @@ -625,12 +657,14 @@
> > intel_dp_aux_supports_vesa_backlight(struct
> > intel_connector *connector)
> >  		return true;
> >  	}
> >
> > -	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> > +	if (drm_edp_backlight_supported(intel_dp->edp_dpcd) &&
> > +	    check_if_vesa_backlight_possible(intel_dp)) {
> >  		drm_dbg_kms(display->drm,
> >  			    "[CONNECTOR:%d:%s] AUX Backlight Control
> Supported!\n",
> >  			    connector->base.base.id, connector->base.name);
> >  		return true;
> >  	}
> > +
> >  	return false;
> >  }
> >
> > --
> > 2.34.1

