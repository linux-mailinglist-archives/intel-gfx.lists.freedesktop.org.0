Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Hs1N568pmlDTQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:49:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF911ECEDA
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1315510E78F;
	Tue,  3 Mar 2026 10:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mm42kHHk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9621E10E166;
 Tue,  3 Mar 2026 10:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772534938; x=1804070938;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OPlJBWmPedHjtNiDd2BNqVsKFF65HBv0hF29kx+m5wQ=;
 b=Mm42kHHkAadNSX+8JzgND6YM1eUqbImW5oP2P1bG14PCMSPa+JgBXFPJ
 fWVXiXZhsGS5amA2lYsPsHiu15goRW0hHLVyLmln1ZbrASPdpctJjFAPy
 UvbeIYUGhPxU7T/wzn9B1R6jtypJ22sz8eSgEIteEDnwaqFBJR0hPXP/F
 pQiQEdZiF0cismolEvHmN8vlg6qQm0jZHtNokuEhG0lTtZ9L2NNh426MF
 Bp6ofqgwDbcuh7/6lEYbYtcdwK6Ygy3IWlitLEMV4RromxR4c7lfVwvas
 7NTEYG+1xy4d9+jBgFdbQaOiyrizg+EZLInOFqfruKzzyS/WRWTO/tkiZ w==;
X-CSE-ConnectionGUID: uyrF7tT5RdSTvAI3FlWeKQ==
X-CSE-MsgGUID: SgAXb5rXQ7G7UYYrJGMJIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84203883"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="84203883"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:48:55 -0800
X-CSE-ConnectionGUID: 5GGPByCoSQqMuKyrVkg5Wg==
X-CSE-MsgGUID: 3qQ9FHsARHaj5EI+eAF4Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="222623555"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:48:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 02:48:54 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 02:48:54 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 02:48:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=buPh13tIsPiasiMo25B0CAGM0rAqOkLm6FFbqgW7IZsT6acf+5VBPD94a9FuzASyzb7YCICjFFJb8RYr33uwbc8A0OjRRu4tICFiUDMsz+mm/p/CGBSS3b5ck3unPyBzUrjCYcclyDRbtgzsy90BNkMVpvOjGZuNJ3CUfDrqZ6f0uhZCSQN5v+chWfvsTqpOr9zolseyPzMrF7i/PawMPs71wpGEg9WQKQPkxlKcLczmO8XzgH4fR9C3xQoWH6MonMuD5ir8oEyE293PEcfDGA12/OcodtJsL4Aprrmy+RSCAtvmxXBIS2DatrUg/RitclYVKYktAC/GK1U4VMlDVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6rAYp+AAOSlGl+H3/MaezpjC/q0H8+d7PejK1rMoSeM=;
 b=KZVGo0lM0TFKM27QWLnK+QUqNLcXcoTBa8FtchL2nR6DrgVuyehak5wThztyj3ykuP2rOz3CEfn46G50d6qfHWpuUYyNYlGKOGASnllXiBMbtPOv96c3CwfFdddPp9hKNZi7T9NIdvltADsjJ1NWKFqjJCwFK5x44tr0bWyVWU5w9Zf3ZpRQ2CsAzVbX3R0iXodfCttywJSRQuiuaKgz3/TJbXsKaJtqCDA9ONze+LbsrDrEfIumD+sh9/Rn+k7rGvA//80tpJ5PKRO2Ow25xSNNQ3BLRAdAzPBJbFIvkFdJU9AuF8TIyygJtVSDz3HhbL36wPcqz1MJANzolBtGkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CO1PR11MB4788.namprd11.prod.outlook.com
 (2603:10b6:303:97::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 10:48:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%8]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 10:48:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RESEND 0/8] Fixes and updates when using AUX backlight using
 Luminance
Thread-Topic: [RESEND 0/8] Fixes and updates when using AUX backlight using
 Luminance
Thread-Index: AQHcqfnx4xiWM+mXp0eWN6RiLs8HiLWcoO8AgAAAhxA=
Date: Tue, 3 Mar 2026 10:48:52 +0000
Message-ID: <DM3PPF208195D8DDA14C18BB060C932EEE3E37FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260302040613.3324049-1-suraj.kandpal@intel.com>
 <0ae5957b184a94caf5601faf7f987be6f8e63897@intel.com>
In-Reply-To: <0ae5957b184a94caf5601faf7f987be6f8e63897@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CO1PR11MB4788:EE_
x-ms-office365-filtering-correlation-id: 8135fc26-3fab-46d2-fa13-08de7912758a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: uMkr4DWY2x+Fya8+CbNHGEj9nG8vHGZ0tBrDxZRCbb24dOg4FxiqQ/wYPsAeXJ6ksRl5te8y2qzvzhZzYRBsZK1bCG7t99TQ+CYxhCbvrWjPQTWkEIweEgxCx8wdm8Zk0Y2fEWW3C6FtOpoQswl63ffPRGCv22sDSUM+Zf1GfF9Ptpst4CXYwzGwFGibasMt64dTnx5FEucAnPLjr/fB2NnWP7EEUmDy4fk0SG1PJWRoWcb+KnXwfamzpXF4jlqx8ifY4gTxS4fzY53fbP7ElcNwoLzE4dWA4hX4AW/O1Sm9hWGt0OWH475scmnFKoMjjq/xWPjzcMZ8HwIPYcN5C2cPSBzTCAFXqkHIMBnoKoCPd/nIf1V4hRSlH4F7AxWd+56ScXPgLH7+Fof4zYfxX2QRau1L1of9S7d/UiRJ2ZImkHF8LgdRKlZbjGgPAND6h+hSCtrVki/1Jn8gGU2Fliw/rja2e1ZAkOa1N61s98QXdPh/cbBQQX2ql/i9DLMZBIZgbQchAgfkE6ufHh2VCfAr7xYA8+Ye4J8QkskGbPygK1X/yEPO15Ndt3T98IpvvAdMbwA/xJcFf1U5MuAEy3lXMTzG6tA2KnPVWWBnYD7QqAqKETCRX2cS38bvzHZo0YA5bpkI91B2a+U8lwVGfChUj97s3YvPuAbXHRe7Kdbiuh3qR2CsKiW8j6Xu0f4pp5OimWugBqF/X3PCysCksJ5ASyyJeW0ibYAVWm44mJA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NNdkp6ZoDP9X3wxsDxg3alCZXRde+UiMerFUSpFDBrP2EwmxnRbs/PiChnCo?=
 =?us-ascii?Q?D0EHIU6j7DAA04oZKyqaqOHjwrr0NlGlc/gEqMjcejCx/8kUnZ4AQYM1CmsT?=
 =?us-ascii?Q?cyNck3ZOg3eQTFW20BICZsliUcrptDKzrgFSzGPwKXIvDVv2OyqiOUXGkqIq?=
 =?us-ascii?Q?qU9Se0V/AFxwtXIXMrtPox9R0bqVcmR4YXpYwgBWo11MEbP80QSnXbA2Bhb1?=
 =?us-ascii?Q?lzq9Y/I+Dr29HA0U3DaBuRa3hVHP/hERDWHZR53gaSC2tesbaMn+zuQA0Qem?=
 =?us-ascii?Q?GjOiLNU2uoKASnaw4H51sYoM9KafgCu85XaloCmnjc3dynBbW1tqN9JAhT9g?=
 =?us-ascii?Q?F2Y8bKzjlXZ0WptnyydRXAD8sRka5FPTUsw6iMdxugr57MRlbZxNN8QwLXf5?=
 =?us-ascii?Q?RBNzfXtxkgOoJO9BBuWFhh5f4T8q5qXs2LpFOYTtYne16MvsI8yJHSs/3twR?=
 =?us-ascii?Q?LZ1oKkTt8odZI+ugCVxBFAE6d5c0TcyiyP/RuxbX9A4kQokdgVykvtnVH88P?=
 =?us-ascii?Q?Nds2oX/oGj6Qy4NP/lX63VrCuA30wfBtUrc+5SZNe2RYLVs8VCVA/4txaFWw?=
 =?us-ascii?Q?H16wfG+6Av0QMJM8gXwAbYQIeh9ZM8xm09Qg/JqlTYUxVGO5XtRdTbdYTi6J?=
 =?us-ascii?Q?HpkRQaEH1HpIBI+LVzTuqkUlK4Mx3hBcDRaojJ8K+G8bRKdeZC8fg7HZd0JY?=
 =?us-ascii?Q?0hbapgW2TTZLYX1HV3vc4id8gcFCtNaI8+njtpn1dK/Zn/VPq+u0AhBSCDhx?=
 =?us-ascii?Q?dADV+qiNy3S7Zo9S8WUdfRGz+8pnRpayr2d479Pv7hwb9kmkjXynWO/OxCaA?=
 =?us-ascii?Q?GUX5StnFCNquSZhPds4qYUywkevZ/WyCnnRiLyg3TxZrA8L1jPhnbdwOwdi2?=
 =?us-ascii?Q?kr/F+bZne/GmoPT7V/59LKSYMB5JtcLz1c6xcO5g0ESnOS15Q8psUpB9Q5ui?=
 =?us-ascii?Q?1ybj+T3EPStIrY8oWQClqe1obB77nFahboDBiXx2xX6NX3cutKgaoVQWUA65?=
 =?us-ascii?Q?WJht3URAHsiBWCZGaP9Qh1sFgtsrvzTSwN3Ghmg4Mhvk+ca22dR/h2uy29S5?=
 =?us-ascii?Q?U6EZqQSlU0w15X1gDJtx6u1CLzmUIQdsyJ0dFcVmBFuYtoo6S4HTpiILnkVQ?=
 =?us-ascii?Q?gutNS/Nzpjcre/c2sjgehluszeo8DVGT21tzFnYOmy9wfQl27wu9xx+zfRia?=
 =?us-ascii?Q?L7Lrwhs4ATHH9EamUJ+UojzR7z24/+DGRrqPtdOKaA5rl+tzk9RSjQuRCP1k?=
 =?us-ascii?Q?gAWM3o/uavFMLO7HfYSvZFv12nksiQ4tFic602EXlU9v3WgiqFGT+ksNXvIB?=
 =?us-ascii?Q?ZGt54kiasebzmC2AvhPAuQ5+OYxC6yWtcR799vwzVw47T0T25xw4pE0f0/cV?=
 =?us-ascii?Q?x5XZr0Ii3GkdsDyfkiunSkx70HRXjOza6HYRO+OHJKMVX0hugOIz0ZkKCbg0?=
 =?us-ascii?Q?VQfcXnNDLGk8fucidsoq/VsPx7FIAylqIS9vG3Lt9GYlaz0niT0IOBm7rkuv?=
 =?us-ascii?Q?/L/1fQ3Sz4T6hc4LPNdL2zo4nqr2BtI1LPKUodw++mJuOK17CtEQ74pV3KDn?=
 =?us-ascii?Q?sxAfjEiR6qsgX2hqKOFrWbkQd/hLuc00qhC1EeYVlFdk9WftxjkVJ165zFbE?=
 =?us-ascii?Q?rB+SQEok0CxZ75wck5N4y6Pn6Rp8KUn/3O2VX/4DUY5Fv3aiXbKsdJPqTma8?=
 =?us-ascii?Q?1askxr+WGCAifkMGoqhW3YNdX+amNAkS1b7oohaou1Nf6fpzB+lLdgZ0U9RP?=
 =?us-ascii?Q?6Aqzlp9KUg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8135fc26-3fab-46d2-fa13-08de7912758a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 10:48:52.1588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cbPTsVv+Yoybbl90Kni3tqq9MV6W+IMUJDmTpxjvfN6pT3WzklntKam+Kszds+dVkZ6OacZv47tFeL/Or7vXfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
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
X-Rspamd-Queue-Id: 4CF911ECEDA
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: Re: [RESEND 0/8] Fixes and updates when using AUX backlight usin=
g
> Luminance
>=20
> On Mon, 02 Mar 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > This series aims to fix/update some code with respect to AUX backlight
> > via luminance values for both VESA and INTEL HDR codepaths.
> > The below are the major changes made in this series.
> > - Do not allow 0 brightness  by default which makes the screen go
> > blank leaving user with no way to see the screen and increase brightnes=
s.
> > - Take into account luminance_set variable when we decide which funcs
> > need to be enabled
> > - Update debug logs to make them more concise and help debug which
> > code path was taken
>=20
> Seems to me some of the fixes here are regression fixes, but none of them=
 have
> Fixes: tags pointing at the commits, which means none of the fixes will b=
e
> picked up by the stable team for backports.
>=20
> I also note that you've eagerly merged most of this series while the disc=
ussion
> is still ongoing in the other thread. I appreciate not merging the specif=
ic
> patches, though. In any case, we've usually settled on only merging full =
series or
> none at all, because we only do CI on the entire series. Which means the =
CI
> results here don't match what was merged.

Yes I had merged the patches which were not under discussion they were log =
updates and a little code path updates.
Will keep it in mind in future not to merge the part of the series.

>=20
> There's also a regression on the recent commit 40d2f5820951
> ("drm/i915/backlight: Remove try_vesa_interface") [1]. Whether that's rel=
ated
> to this series, I don't know, because there are no references to it. But =
you will
> have to figure it out.

That patch is not a part of the series which was merged. I am currently loo=
king at why a vesa fallback mechanism is causing an
Issue there.

>=20
> What I do know is that the DPCD backlight code is fraught with perils. Ba=
sically
> any change there could lead to a regression, and generally I would thread=
 very
> carefully. I appreciate the eagerness, but now you also get to look after=
 the
> regressions and bugs, which might only start flowing in a year from now. =
It's all
> yours.
>=20
>=20
> BR,
> Jani.
>=20
>=20
> [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514

Looking into it.

Regards,
Suraj Kandpal

>=20
>=20
> --
> Jani Nikula, Intel
