Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 120268BDC6B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 09:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E21510EDCA;
	Tue,  7 May 2024 07:29:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gzNCuzJ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3151C10EDCA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 07:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715066975; x=1746602975;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nvLZL+ZX1PbDCDwhpi0tw9HRf9zif25fvmaYU0nb0G4=;
 b=gzNCuzJ/EPZQdS0grweilN3ID0PmiYhnf4TfhLmkapv/oKRuYp9hteSy
 e3d+S+OShCQcOIsTFMkELoRrr5HkcMkQRW7fsSrqeOHECL4KY/d0HWcIM
 ZLNIFGaZxjE2nvhJCnH4+Ekb36RTQRq2LdLImdXUFFfm2BMf29faJbBE6
 HfjDixALtwwenH2WjUpKU1dWys+oJF+qONpfjMojKW88g6qqSSHDkjmQe
 JybBBsComx5couCqvKwrsN7TH9uCoDkqKskKJdQpRSenvwr53zpVSmOEN
 RKjWz31sy1VrM5WLkR3/RIszvZgHSRGdx5krULGULNesvXX3vClXfpZT0 g==;
X-CSE-ConnectionGUID: rERK8OoLT2mLfM/uO21xng==
X-CSE-MsgGUID: eZuE9WKFQSaMykilp4RW9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10693628"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10693628"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 00:29:34 -0700
X-CSE-ConnectionGUID: 0g4Jl6enTMWi+MFiEIQBbg==
X-CSE-MsgGUID: BIQlFeMoR8Oho+c74Zzx0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="59601871"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 00:29:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 00:29:34 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 00:29:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 00:29:34 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 00:29:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAU0whWzW3kuKwy1DGC0PC/8KqJvyuBnCA2yW2TPwWxe4dV7FMKsOUXsq47NerL31UBuWUFQYl3mhh4CcWCyC5vWVXWsWVAYyjeZhEeD5Dw1poZoAxAcw2RZmb4yxH+DopoL67To56FUCT1s4WXLkJ2TqVM+YAnzMI6ydKjJyu7SGsZpV1uehDOgeo8XH/UzvYJoCJStjdYLzZ8X/aqWd5MAf41Kyn5nlxMi/bhtmccDZ8DV2YAa9K95AJPhAenmmzhvKbUH1ERpypn0yB/q6xEYMAcUYi3JtTfBJyNw8bYRrymNA040RctRocl1sZIpDZcRMDgKgA3r8Ah4HVhGug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ffu0vA/KVK4XiuZlLBkHWXNVyhJvV6n7nZb02nzAtCc=;
 b=JnuRkmOUOurlqBV1lg1NtdfCVBI/0gFnvXo+MPORO2XTor8D6aPrv1ef5dgE/Iwr9bhVsZvylI6Msq6Npqx4MnjlkmrybEHQZDhuZaBK0ctI/tV27NheebnF7Qidw5uSX2UchmH39Hass+BWrObZklXXdwZ1Fv+pq6Srd3IOHKa8N5Q6emN/khB++RIQtTcGhzmevA8BkQllPZPzGb5Y5XBXrg838PrOQoWc0LXVJ6XYREXBz78U1Z+j3+x6/i+nNvvE/75i5GqUCZvUAMUyFZUizkz2uOv3X04DV8+FoB0qm/BHV3PspkTOfecVtCqrCMIDVhfWVUnFWAk81Gpt6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB4960.namprd11.prod.outlook.com (2603:10b6:a03:2ac::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 07:29:31 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 07:29:31 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CKM2mu2nAdLUK5mFlLuLWS+LFqi2EAgAGwCYCACrECgIAMig0AgAf4FwCAABI+oA==
Date: Tue, 7 May 2024 07:29:31 +0000
Message-ID: <SJ1PR11MB6129C091927B232C18DAD5FEB9E42@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240502044057.896348-2-suraj.kandpal@intel.com>
 <20240507062243.1076047-2-suraj.kandpal@intel.com>
In-Reply-To: <20240507062243.1076047-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB4960:EE_
x-ms-office365-filtering-correlation-id: e56d325d-e64f-4f24-3c84-08dc6e676fcc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?sYc3Jf0EeF6eEfIxqjR5gLhgYgYWW2ApNZB4n5lqxEyvDygEafxrQy/KZIuP?=
 =?us-ascii?Q?CpefE3MyofdoLx23nExHsP9VwRXmree3Kkqyh7QMYD/o/7UnDSEb3n9gJUGc?=
 =?us-ascii?Q?BmjeRBQZF8z7Q34wAj+8NYeGBLX9WOX3VYLXhcw4cD2nd+ZNPG3xfAy1vpsh?=
 =?us-ascii?Q?sawWsQ3ZSxjikwhHSnZhYGv+R2u/C35tD1r55C7XrClTT/zVc8yBEOhUkdQ6?=
 =?us-ascii?Q?AQporCsia+hrELzkJuiKPT80NL97Il/1OJqWgdDawMUiQdPpi4GnhiSeGb/M?=
 =?us-ascii?Q?avEWrv9VThZqbftSbXB0RXM6RPyv9aBbkybYlbNSl5gQnzsMBYCDe1j6N5uL?=
 =?us-ascii?Q?6q4WgJHqTncHupBi2PUSFBu1LSRNyTcIUCT5DM9IGDXmvExDTsC+rlKTUt2B?=
 =?us-ascii?Q?4mw/X61t4/IfU7hupdy9lnUMw92sLdQgNVAKgQRjCRKQYJPJEYomZlMSYGCt?=
 =?us-ascii?Q?rWJggEWRnfDsbqKlu2+Ig39PY926HdGfXVwJazVO7+f+g/MRzobXhmGU0I3N?=
 =?us-ascii?Q?/eiuQOlpA0hs7s2HE5L27IizV9HjER4S3C4+LBnioVm6zwr4kjRalhp7K9ap?=
 =?us-ascii?Q?l9Kv3Y38Rwpf/P9Ax9Fz0YkwU2MHvwu0FQf74gP0RzzYZRMZ0HoYZcMfogWl?=
 =?us-ascii?Q?e8ivizPJEUSXlucs/ERzHGI3xACoU0wxPcGERT9eGkA2QHt8S5iKwxQO4r7m?=
 =?us-ascii?Q?nU1R6GYVjqIDscXcvNVLsK722id4n30SuDuPgqzX5iCFqO+GNZwZzBy7IwKr?=
 =?us-ascii?Q?cWo+oKzhsgQjGeDIwLzwDm5WlDHlRfHFm9EalPMLf1v0aZAmQsciihASu8Bm?=
 =?us-ascii?Q?0DHDxVcX0b0FsfPyjLA0pe1ffZUe/6PZG0fz1J2ZuuxiC3V6m+k5sYCONCr/?=
 =?us-ascii?Q?mWCMv7isHzYXwcXi6lLLhqawtFxZj7/Ycfq4Dixmhqcu8CJ0mwL5bXf7h7Sd?=
 =?us-ascii?Q?9ZeSBePnsk65TXFuTj9hjPpblUh29pplQqqQ+phiKb8g2aQvdrCn5QJeke22?=
 =?us-ascii?Q?iwti2RrQ0s+inrbWjjqwZaa6r5Tx6RrIKvYidlyprRpGgp/RLaxtMhtKjkRt?=
 =?us-ascii?Q?tlZkrlCnBfBtEN/SrFZEj4gdi7itD0brrpzoGg4+dysmkk+xmQQFhE0Vwwa5?=
 =?us-ascii?Q?X86QweMRD9L1Ua6gQNT/9yMXkhN65N0IXz8nvXW1NmlYZu4a9hsHYpoN8mZ6?=
 =?us-ascii?Q?alJhNGMi9KnPQHjRLkwl7XJ676A1moGmB9dt3yWfz4Kpg9etLPLA5DkJhm+/?=
 =?us-ascii?Q?4LnbQA6lw/3Qpp81iWif4wVDTPz1z8s4riqP2i0SlD702GYzsTNVIpJqtZWW?=
 =?us-ascii?Q?4MyPRWpq0BxcaslxYO9LkFnerrHiRNvSHmFSmIQmFav8gQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5cz4U6oKM0DTmKpX60uHIbITo2qTH9x0fDSQUQC3nfs7F2upnXmISCvMHJIj?=
 =?us-ascii?Q?k0f0f78+M8ch+fCSbW5TApZCrUcZJa0MDi5oRscALsla0Yuty/N69P4cU4pe?=
 =?us-ascii?Q?PsFUHXEgLatpfZmCzEf/XJ46eZNjMcW63g0+CiFsNailQaRo9tlCstJMKe7B?=
 =?us-ascii?Q?jN8VZ48UviJxe2Xs8v3QrbN5yR9ikV2q4KKuR9jhQghw0O4opwbNjCaX0HE9?=
 =?us-ascii?Q?W94uaIAy2kbZWMbiYt20L99gkodGuA3sAZThVZZpihSAj+BH8QE6N76swusE?=
 =?us-ascii?Q?DCui2zoRwebshWhItlcp0+8Nf1SzQHD7+tfTtT5IyHl04wsgsE5x7iHFYuFM?=
 =?us-ascii?Q?uNS9n1twhkELmnFNPOYmfy1eM8r7H9RbGTHqegex+AjmugEU3WVQnW4+Jg3V?=
 =?us-ascii?Q?VQYf6o0dxSsByC2PJ7nE8yB9W1sMycc7NCEu9222C0Vqda5+TiIfU+Arv8Ca?=
 =?us-ascii?Q?FvjeyHQT8yY3N+zpUZYqpsuNDbydvlLT5AKdJjHYuFBUA6A0mHJgQKKiuyQ5?=
 =?us-ascii?Q?xezoeMAiEVEBJ0/wV11PimY7paVTVmE8+gA/Tq6SrAXFKNZp8VVa0agMIc2g?=
 =?us-ascii?Q?srJ+8JhtgyMRhMvTAjAUWNyPUcOoIM776tscf7A6N7rBEdD9jVtqd5gESbF0?=
 =?us-ascii?Q?eI7Iccclh3Ji1YCs0Ky+mwNfV6DQEvEuy8sF+DjQ6SU889pZ5hrSClVtH77G?=
 =?us-ascii?Q?nAGX0fHZ1pAy+IY9AIuj4+DOG7r7QHxtPbIVhwPedeqDhNJW5w2vzHDbfnQK?=
 =?us-ascii?Q?jOePiiqvI8tWs3GVXlWzLvWl8JLGLLyw41X6JkWdeRi+pw9+z9Wcm/XF+Kfa?=
 =?us-ascii?Q?16u4mR/XV7rjl7v4B1m0gTYw+PNVKVnjp64Ny8ho7SABlL6KS4h794CGH4k2?=
 =?us-ascii?Q?h8X/HelPGES2Wx35irPnXhTxuOoOxSGrdWssceUg1BLDsh/1PXFTOjfonUfU?=
 =?us-ascii?Q?BvzSkVBFWhuLN0F2gbWcRoEmTvSZP01n3A+lfD+KN6AxCeTzlKOx8LkjvgcI?=
 =?us-ascii?Q?nPeO6abjmU5prDxb55NbZt1GFv8KNpbJQLU1rLuUdYnuyaQeu/5irIIrkO9q?=
 =?us-ascii?Q?o6kKwKfJqKnWKg/3MbXc1KWBGTegit7oLTgw79ZkefE5GkemRifpChYKxj9P?=
 =?us-ascii?Q?fqCCwZtCMM5sx0VBC6fKnCC8mU/6O478QnTxPgO3fgEha3UF0iRlOcf+A/HM?=
 =?us-ascii?Q?ZHPnrK0uMI8guhbbBWWBLLzWFKF4Q/cC2ZdGqLR8JRKWAMKlBVf5pP/KNBPb?=
 =?us-ascii?Q?8uQEfhhtcWBkM8/o6um5hp3gW1iJ5txjhBTe1fSg0Y5oAWe7io+scbiLaNzC?=
 =?us-ascii?Q?YykWfMKvUbF45eSmkgmahdITaYnKPdkHSVtKeTOr6JRBi0xlETD9DCCB74uK?=
 =?us-ascii?Q?WF6fWR5fjZaYZWY/3LjZIXf3NlP1AAOlN7OWWDhRe1aySvyFfik/DzrRarpf?=
 =?us-ascii?Q?ru9vdFCGeSgN/FFBceSbpxHa/0FMEytMUMTw5JsnaPowyOzAidigfVdwI1VC?=
 =?us-ascii?Q?cCNeA8ERujjJqqgkkgOyqCMfIUgx1ngC9uHLCDFuV6TPLn113DX0hsA23fu4?=
 =?us-ascii?Q?822tt09LMz5aCKz+iMSv+JRSPGxWzYiwgbIdJCuuyc9LMaXw74WskVFYIYGU?=
 =?us-ascii?Q?KA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e56d325d-e64f-4f24-3c84-08dc6e676fcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 07:29:31.5831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GXs5P9qrDH4Wbj2o+kYRTDQcwGpEx5g65dIgQs/DOsmizinYST9JzsBu1mwV6Mbj6zut/W527k89wSEoMy9FDMonu+jxKpKqzTXoKybt9qc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4960
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Tuesday, May 7, 2024 11:53 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
> HDMI
>=20
> Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on HDMI
> TMDS operation for DISPLAY_VER >=3D 14.
>=20
> --v2
> -Wa to be mentioned in comments not in commit message [Jani] -Remove
> blankline [Jani]
>=20
> --v3
> -No need to write what is being done in comments when code is self
> explanatory [Jani]
>=20
> --v4
> -Add comment regarding need of this WA when in TMDS mode [Chaitanya] -
> Write in chicken register for MTL [CHaitanya]
>=20
> --v5
> -Fix comment [Chaitanya]
> -Use correct set and clear value in intel_de_rmw [Chaitanya]
>=20
> --v6
> -No need to define C, D chicken bits it gets calculated [Animesh]
>=20
> Bspec: 49273
> Bspec: 69964

LGTM,
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  2 ++
>  2 files changed, 25 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..02cbbbfd8e25 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,27 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> +/* WA: 16022217614 */
> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	/* Here we assume HDMI is in TMDS mode of operation */
> +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> +		return;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> +		if (IS_METEORLAKE(dev_priv))
> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
> +		else
> +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),
> +				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +	}
> +}
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)  { @@ -2005,6
> +2026,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *stat=
e,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>=20
> +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +
>  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n", diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index ae692f461982..9f2171f0adf8
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3520,6 +3520,7 @@
>  #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
>  #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
>  #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
> +#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
>=20
>  #define DISP_ARB_CTL	_MMIO(0x45000)
>  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> @@ -4521,6 +4522,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11,
> 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> --
> 2.43.2

