Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J9HJf1XhWkhAQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 03:54:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C26F9785
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 03:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984A610E24F;
	Fri,  6 Feb 2026 02:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YS7Zo58b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3DB810E00E;
 Fri,  6 Feb 2026 02:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770346489; x=1801882489;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UkEF5kxikhFVhbkXlTKOFxJfqDaf+VgFwru2+Lck9uo=;
 b=YS7Zo58bvv4CZR3EUY4r2EIImM0ZTA5WTC21hI2xsP0Y6RvA35cNZFJ6
 QD3G4RW5kokxygtCIdNPZIglazwqfFdK7qb9p7VGZg2ZaAjMjNJtMLmZe
 PkpXrcV3YvG2aGlSBnAuO9BrVimUiYXKvvXnZ1kkYYy9/mwXZpyaZHB0a
 VQqHCMhUgExoxK0sn33X0vjKc0Et/e8ZOpm5GHsRY66lW3OG9zZjqP4Yf
 rnd4AjwC2SS3X1FPjoGWl+mw2ynqvw9Z2efBWgVfmTEN7m9XEnq2ua27o
 4qca9BtelkNNrQC83A5Q2WFUXhz6z0XbPwp2jJ1nAIxZhKoxuj6ICQoFX w==;
X-CSE-ConnectionGUID: BDVr2lBFSUOUtDojgy4zhg==
X-CSE-MsgGUID: q/TM4l6mThuUGbaR2/F4Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82669402"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82669402"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 18:54:36 -0800
X-CSE-ConnectionGUID: eUzl6WrETw6tHWW+Q/2D0g==
X-CSE-MsgGUID: U96eClpLTaGStE3Cl1ow0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="241265886"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 18:54:09 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 18:54:08 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 18:54:08 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 18:54:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VEaRRwb1MEC/j4HCbwW52ZJjxF6ZeEbh/nXJCP0JIU+Ov/IXo7imJSpdj3Q9xgqOCaLic7YftjR3S1hV3FVmSCE7Ns4T1zq7043a0/Pqr/6lgZrsKiiIjXFgD6r3pJ8oAJrKxrRAUXiemC/XxqkQJG3Uvj/kMXpWYOiZprTmDYW9xeZKZSW6ZrK3SJY7wXOdRuSS5zrGhFc6sFCQPjkQGuTEnlRW2tu1VOdMz+sWS8RuJNOeLsrPiL7b937CF4dbcGWa0+5FdO+ttSLY4gk1CbDl12sfFh3ldMnrNYSR/+UN23odDIvdgBnbpVcTVDsMcvJ5DnI2dcKQjbOEHRrnbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ugrTt268g5k4/PS6rsWYI/Eum8szLUgI6L8km/HH/XQ=;
 b=BrC6Mw1mrAC8TwQt5wdPmHXiBIfoXZ9uJIbuGIOXv2l8hY/8+ULpYN4oeQk6piJFgOrZyNt9A724xob2cFCb689Vjmavn2F5DG1w/UnkTtxsC4cirqMe/uo26cHVWSFvBjdH3UlsUGaVwY6QmkT7hDxez9pUpYQPFHk5QUrkGSYHRUrn/M33FxyvIeu2M6/1Nmb96cuRqLv+onx5I1pBG/vc/kx9Sx+EzsXfopR67luDj10knwkVgxPvySUPaKg6wcLowmubPR7hKDnTTmLMMLU8HMUnOlGR9bLXyJZSOcQdnAWL3tDNlk4Kte2kENLsSL4eQKSfJlZtCjFsRBO9+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB7124.namprd11.prod.outlook.com
 (2603:10b6:510:20f::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Fri, 6 Feb
 2026 02:54:03 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 02:54:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v2 04/10] drm/i915/cmtg: program vrr registers of cmtg
Thread-Topic: [PATCH v2 04/10] drm/i915/cmtg: program vrr registers of cmtg
Thread-Index: AQHclRdZpVxYEGsByk6l6og8i7ZS2bV0++TA
Date: Fri, 6 Feb 2026 02:54:03 +0000
Message-ID: <DM3PPF208195D8DA6218AFED9A550141ACFE366A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-5-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB7124:EE_
x-ms-office365-filtering-correlation-id: 763bd113-c276-49de-9111-08de652afc76
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?H43P35PXtlY/QHMXUNXIEjkG18B1E4O1DQHJYXv+CKYM2nu7noUNTh2YNldp?=
 =?us-ascii?Q?l9u9kMLTDyYOG0zBTOrciBZBBjCWCz/POTidYN5870nrlHATq10+gk/Stse3?=
 =?us-ascii?Q?GzhyejulfQY9RG2mCStBaVv5cy2lAgglen40mJTDQn9Jmd26v0yYS34tVqwr?=
 =?us-ascii?Q?9FUwHKnFXjAPlAitVEPrXUsLG8RtS+2Rv6Lr62+fepIHDttzGoBXqfayt9md?=
 =?us-ascii?Q?qQNlLF2bNxkklNItacjta5/PG9unugDmepGXXL5CT1SqiI+U5Kb9ovSdGnB8?=
 =?us-ascii?Q?tvr2it6U6B9A05ihe6lw5IfjkkVz1hSm5E0K2+T/4kOEY7CA5PhVb9tN9Kcm?=
 =?us-ascii?Q?rLiB+LYhSmkWtN7e5Aj7rdu/8vFJq79M1KJCcvtjb9lPdABiVOoRvQTxCzG4?=
 =?us-ascii?Q?/PF0NylzrR1frpQ4dqZWdIu7X9TIylciUsigBPLqJxDa4ZQ1/r0uaAg6enVQ?=
 =?us-ascii?Q?QSLleRUJ7n9yAiMJsukJ6WLmOyPZBy3yI2HVJp34Z5KkbfcUgT1KkkpnwYD7?=
 =?us-ascii?Q?C49UvqudA8EfT85YOb6b37hBUS5jglmw68uudvzK+oWnB16kCcs3WNTdR4ZS?=
 =?us-ascii?Q?5E1IRxdDWM9h3ntzUc/h4fJNeJJprze3jF9QA7/86jY58BjM4CA5ZmBM0hLk?=
 =?us-ascii?Q?O2kY3Gi0Hq4tkT/dXbpMT/rHNvpIyXUhja/ODNLn/iN7jqNsjVkdfAvH7/qj?=
 =?us-ascii?Q?eCArU1KgCcI2rjU/RI7qnSeZenP3BAKBa56HXdJBUZ0Bu/phwReFN1d3U5Fl?=
 =?us-ascii?Q?//q58fTDcl2/IWDbI3oqT5LiYXFqhynK5VoUvcByEEoVY39Wq82PueNY7Ne+?=
 =?us-ascii?Q?wZa4cV+9FdYvWx5F+Kp303naXyMcJmGvwC+6cfiwplXRk2zA4xB88oidWbii?=
 =?us-ascii?Q?785avmiq+94jXrXpIw7L/jAseymXsup9QhomrpNLMHh/QPZMKUTBFdthLwmB?=
 =?us-ascii?Q?FBhqpGX6RfTIq4xphrWYGEAym06HWG2QizZ4RBH3siXraKsyLMVyXk7jo95D?=
 =?us-ascii?Q?JtoQAqcmxUrKEiE28QB0EzNV5Japzwt5KTa6Jxzk02EF08t88LZkiHWgij+/?=
 =?us-ascii?Q?LUGF6tEshRnaSYlnftooabHRxOt7uWDh9sb7k6jfTjTsfTXwJ6OnkwhR28Ep?=
 =?us-ascii?Q?FQCCJbALow6garnyVj1nlUMPXVIyTn8CDTV3wuI4onHbvI3KpimYEW5KWNJx?=
 =?us-ascii?Q?1w8SXFkloWb8F69uSVJxHW8Vw2UZTaZWc/HEprWtKsmYSk1YztrsWLtYAmcH?=
 =?us-ascii?Q?Fm8hHQUhuoYALE3YZxMVEvQXsx9fQY+6vpMzhYA84T1m0vs2+1vx733LoEbk?=
 =?us-ascii?Q?GmHqT9j4alFqj4eF/0PA7Ay5KVNaULdGALx7AIOIE9JEfCoWZsoRPhBebxBs?=
 =?us-ascii?Q?Emiw4Fh7OPxeULKT5iwL/fbKLR0HOkRvXlMoqLo/2w7xgafjvjrBAlGBrdGx?=
 =?us-ascii?Q?djIx1kjSgTsgKdTVeDH35pyBX+S1PZYSLOLeoI7rEWZhPzyL9uwe6Z2oLtvN?=
 =?us-ascii?Q?fiB/ADWDWIjbqv1WOBYxekFdHRhXsY1LCYqEvCRRMLHLhvm7QC8Qtp4PX1Ls?=
 =?us-ascii?Q?ceGIV4AXn6URxDMPxCQCDNGv3Gydh/BNYXndUq0dI/4lVTamkDd4iewKxDOJ?=
 =?us-ascii?Q?zszN8H560My4NWbSIGKmjfo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lq0IZusS6CQJEMvsDm4qW2mubOm6I0p1OfUokgrP61ZlFqSrRAj1rTXEQ44T?=
 =?us-ascii?Q?gqFwyqmVt6BQxJuWHGEKDFDU1flcfjzNC01NJSZ84q0LmWmurNxH9ceJ7jVZ?=
 =?us-ascii?Q?XBb4it6n+DSO/gyislTRpcDVK6lTodGVB9U8fTPtkJbdgeTYmjTWkKW1n712?=
 =?us-ascii?Q?lcvBEPx4ZS93ZG1FsL2E0Lt1rC09PoCMkuXQSJKEk508JVt9Z5zrJ4r2zaIS?=
 =?us-ascii?Q?tHEcnrKtwgUtGSvzlzww3fVybaOxogA0XTrHR72oElXZn4/HX6TBCRmpOGyI?=
 =?us-ascii?Q?qP7eNSIi/1G2PoT2+2XJ9eLJ8neTNPrYgC4eBGzaPqWtrTJ/bH5T99kX+xdH?=
 =?us-ascii?Q?2vX0R3oPCR5YZE20k7FIzp30buE16j+TcJDUKlk4ZxWEXG5yTrsDsoSALqN6?=
 =?us-ascii?Q?yfLqiQB+IFyOfF8xr8JomhGDPEMbWA7JnjZtdwIBeBh+cwJoVmwT7Lm9l6hx?=
 =?us-ascii?Q?mvwALiFXIYSuUbpyBN8zEbM2Qr8ACURfxaxK40Cj0P2L09xGsZ8r9GWh8zsm?=
 =?us-ascii?Q?qq44Cm1ZFwTGp0S+FuV9sUuJItVH/vvTEBdov7/iDDUtzA8PrhYghhHkuG+p?=
 =?us-ascii?Q?9EUWi1opllduZjtQK1i2CA3JrhFFwjPZh0PLgHYk0wjIv1u/1ymhvicCw7Ij?=
 =?us-ascii?Q?E2JN67QJoPmdOtoLmq7iqM3+oTYrwy6CmCofUJw5gBiz0x4S4jb/pexlEXi6?=
 =?us-ascii?Q?GH12UMOBSoneUIjH0Kk/NVgTa2wXQuwlURAH7mcXx+KVhlvezaKDaMUWcfcr?=
 =?us-ascii?Q?I/EvyzbS0Bg+w4+SUAgD6QzMCci+IccpRqmhh7oizM9FBcZmNub/Y7YgROsn?=
 =?us-ascii?Q?SzFv05FcRT3ii6OcL8irB3isn1mwvcGXb90MXHIqBaGO3tHxeMpVVHkYCQ8t?=
 =?us-ascii?Q?2mDqawfXI+wfVWIYsny6XfXir9jZGr7luAMRH534Lko8WyzWe6GhvY754pew?=
 =?us-ascii?Q?HnNOcX7wg0ULYgsb5aXEUCxEeLPxb1ZawQxeSuyl6yopPPrJk60dpNDH1ozB?=
 =?us-ascii?Q?4Vjj/CNsolWeXn6oAPQn1qC3FYamRQM2kdsQWEfcx4NQ5tobvmN4A/C379hN?=
 =?us-ascii?Q?E4vmXo7VbBM1cre4lWCqC/K9O9UPDuQnWrviChHgR7ft0195m5w1N4RKvogs?=
 =?us-ascii?Q?ao8xpKc74KM5iIFrdEylWACG1RAP+EKUSQGh5ObZSRgBedLkgyiojM+s/vKx?=
 =?us-ascii?Q?FPgjyMQw2AbB3oWEp+qNrMlcMfWN8K0jsEQ+CTjTln7uTbHpjYsQkpYhwLC1?=
 =?us-ascii?Q?OQPXQP2lk6emrsEi/hjGvX41gVNkWb5GYVMKrbQE5Mmz/oJmqbtZEpBWXcwQ?=
 =?us-ascii?Q?pce2qcYOIeEDou9TCJGLj9RmD7XoLfrGzoOONTl/Hv33bDPXuvJBB5/v/YkP?=
 =?us-ascii?Q?99cYMZGlgNbq+jgQKlotFZjNutPYwv5r0KBgjfoYY1wfPS3orWeJYPYG830u?=
 =?us-ascii?Q?lJULuV7tsV+nsu7p3ONTh+mycqbC/rW1qJBqOWtjf5z+82ZH4/jnTHReZosa?=
 =?us-ascii?Q?cjwacVGW0PAye7BXiNx4MTtn1RsUty6/sIcNX5axrGQU1JyEkxXoFLzPsUIp?=
 =?us-ascii?Q?ighXKcuAtNx5QsAYUmaI0Ae4JwyxYT+H8GcO9bpIREAFL2v5W6jdxxOOgAn6?=
 =?us-ascii?Q?ZgbTVt8JEgcQwcYvWeQ3SOzl5IQRLY9HAfGZ3GvblMzstp+cDTE31Phs/4MT?=
 =?us-ascii?Q?SnNQAOAVqaAw85oRIK3vQvPiC7Wo2HqKH6hU8QezJvkOfL3tRjdhxr2UiuEE?=
 =?us-ascii?Q?0uMdE5Rvtw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 763bd113-c276-49de-9111-08de652afc76
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 02:54:03.1651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TYMvhEB4rgPfBVLlaXvtxhvYD0uF01qlJrrZTOmZGcH/yjWaqnfIG6aB66E0FXVGBe4qLVr7Klvlvl2og0ISpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7124
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E8C26F9785
X-Rspamd-Action: no action


> Subject: [PATCH v2 04/10] drm/i915/cmtg: program vrr registers of cmtg

* CMTG
* VRR

>=20
> Enable vrr if it is enabled on cmtg registers.

*VRR
* CMTG

>=20
> v2: Use sw state instead of reading from hardware. [Jani]
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c          | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg_regs.h     |  5 +++++
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c           |  4 ++++
>  4 files changed, 22 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 4220eeece07f..26adf70cdd00 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -17,6 +17,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_vrr.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -220,6 +221,17 @@
> static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_st=
ate)
>  	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder), crtc-
> >cmtg.vtotal);
>  	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder), crtc-
> >cmtg.vblank);
>  	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder), crtc-
> >cmtg.vsync);
> +
> +	if (intel_vrr_possible(crtc_state) &&
> intel_vrr_always_use_vrr_tg(display)) {
> +		intel_de_write(display,
> TRANS_VRR_VMIN_CMTG(cpu_transcoder),
> +			       crtc_state->vrr.vmin - 1);
> +		intel_de_write(display,
> TRANS_VRR_VMAX_CMTG(cpu_transcoder),
> +			       crtc_state->vrr.vmax - 1);
> +		intel_de_write(display,
> TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder),
> +			       crtc_state->vrr.flipline - 1);

IMHO These three need to be called from=20
intel_vrr_set_fixed_rr_timings()=20
you can wrap this up in a function of its own called intel_cmtg_set_fixed_r=
r_timings()


> +		intel_de_write(display,
> TRANS_VRR_CTL_CMTG(cpu_transcoder),
> +			       crtc->cmtg.vrr_ctl);

This needs to directly be called from intel_vrr_tg_enable
Which also saves you from having you save the variable in intel_crtc
Which shouldn't be there in the first place (maybe in crtc_state if needed =
but I don't see the real need of having it at all.

Regards,
Suraj Kandpal

> +	}
>  }
>=20
>  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state) diff -=
-git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index eb24827d22f5..eab90415d0da 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -27,4 +27,9 @@
>  #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) *
> 0x100)
>  #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) *
> 0x100)
>=20
> +#define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) *
> 0x100)
> +#define TRANS_VRR_VMAX_CMTG(id)		_MMIO(0x6F424 + (id) *
> 0x100)
> +#define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) *
> 0x100)
> +#define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) *
> 0x100)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index defb54dd0bbe..a87f3ec10aea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1574,6 +1574,7 @@ struct intel_crtc {
>  		bool enable;
>  		u32 htotal, hblank, hsync;
>  		u32 vtotal, vblank, vsync;
> +		u32 vrr_ctl;
>  	} cmtg;
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9d814cc2d608..2c1ae685400f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -892,6 +892,7 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	u32 vrr_ctl;
>=20
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), @@ -
> 907,6 +908,9 @@ static void intel_vrr_tg_enable(const struct intel_crtc_s=
tate
> *crtc_state,
>  	if (cmrr_enable)
>  		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
>=20
> +	if (crtc->cmtg.enable)
> +		crtc->cmtg.vrr_ctl =3D vrr_ctl;
> +
>  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> vrr_ctl);  }
>=20
> --
> 2.29.0

