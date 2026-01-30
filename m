Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDHEDxMnfGkZKwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 04:35:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCF0B6DA9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 04:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F007310E8EB;
	Fri, 30 Jan 2026 03:35:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqUHake9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A56C10E8E7;
 Fri, 30 Jan 2026 03:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769744143; x=1801280143;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nDoRcuq2tWJzrY9VYQsKsCqF+Lg6jZJd20AquuYPbyQ=;
 b=GqUHake9TrdstGy8yxcT51whDNn8mmQZ57txzPja0o7dPf8IDry0LLzm
 JSYjj62TrtvflhrtehtcGyUT77uR2TWymLS9ARMuhinbskPTbemzCekfz
 QB2Lfd5fjq3v9sjzqHbDqNsBn2z5TyIKhkgOaVNsq5a2G/hkJNrVZ7X5S
 CxCp9uzoxkolRpDh0bpdWE5cLrW4Uoo1gL8x+waIwYsP728UFTMOXikKs
 u3j+Q/7qFD4/Mqay+tl5cCUKG+GEs29UlmY5HKJzg3Jd9FUQTLyfSKYcB
 h79xMVtpqMB2yKQomVhHtmXNSFl8uv/uajXEnYv9Hj46Su/kZQvxvVj56 w==;
X-CSE-ConnectionGUID: w7muPj42Sy65FZrjliTp0Q==
X-CSE-MsgGUID: HFnalVY2QsiBwt1Lmb4dbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70970495"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="70970495"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 19:35:42 -0800
X-CSE-ConnectionGUID: KprLg6NjTh+yqHlPzJf5HQ==
X-CSE-MsgGUID: y46X4J5qQbqi5oLrPTMl1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="213280897"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 19:35:42 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 19:35:41 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 19:35:41 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.38) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 19:35:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NC1Ihb60lhWKLFlVp11ut34pQ8u/A4TraXsKvaKOGa/HayH9TLAe7NiTQ8t3l3DJmgYbFn5+W8/s1VVl/st2xsNINwjqwKiA0FTZ6H8ORlv1I8oBdhnvTN1ox+K0Y5bkWJzvRTR8EeDJn18ofs+g8s+jqHewYtGrgEifWrROsh5jASAF9TOgQpbX+TGH3zKGBIiuM2Uw2/ZJBqoYz45RAIDkZemH1+gEkW6dSiQIZQuv1ARLC3QDo8IqAwfgeH5m3JP/+GkErqDi9z2yZTw9syH3/XTBH+cpkmPmG485lZHjGjru+vIr7K9oYmrdqzDhrh7KkCjrlW3APU+3cF7wNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gucw+Y6dW7lWozf1SaaTzfeTC2d59ipu0At93kUu3ak=;
 b=NbQ5XT6czCU02xkO9LUcjqDCvnTCGJBP2VqNe6ejlH5G8RFyqGNFrF1VjCOIYCutDyrrA+lr0Qx8AcFizJbwWQtnNhwyFCup/Gy0FfbjFRyFb1PNBED5/0zYnt3A03vElaiIYcMTQE+PcH7rFVJjJx9tDCrbl9FpWNBMvmBe2tuw0UknhEi2sGb70U5XCvIfTqNngBYJZMGpDgjvxrtWel9NKomRt4bo+Qs/ROtmdprrOzZUO4Xzji4n3ZIAfHEeUhmPD/CVch9b9QmowXcSU9QyXi/bGkoImAAjXGGpTm9vFmiipkQjNyekefnDrJlx6Fl9ODwqFxTsoJ5OK63n7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA0PR11MB4702.namprd11.prod.outlook.com
 (2603:10b6:806:92::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Fri, 30 Jan
 2026 03:35:34 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.007; Fri, 30 Jan 2026
 03:35:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2] drm/i915/display: Wait for pipe start to avoid vblank
 and scanline jumps
Thread-Topic: [PATCH v2] drm/i915/display: Wait for pipe start to avoid vblank
 and scanline jumps
Thread-Index: AQHckOWYrRHoO+9nqkOIXoaOTXJm/7Vo2TqAgAE1wCA=
Date: Fri, 30 Jan 2026 03:35:34 +0000
Message-ID: <DM3PPF208195D8DAC46EA3DB5156E41E792E39FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260119043025.589754-1-suraj.kandpal@intel.com>
 <20260129060722.1382789-1-suraj.kandpal@intel.com>
 <58597bfd2f0b15ed1ba4ca4b8f80aaa6d9030b8b@intel.com>
In-Reply-To: <58597bfd2f0b15ed1ba4ca4b8f80aaa6d9030b8b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA0PR11MB4702:EE_
x-ms-office365-filtering-correlation-id: 17fa664a-639e-405e-e0d7-08de5fb0a05c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?tXA8IYei+kEp96pgBakVWzDj/kCMZjTl0woP4OvypfqiTHkCBvZD7XhkD3lu?=
 =?us-ascii?Q?+x5+0PECJGpxPcEDBMQSP8NuSwfmPlRxVwXSakDc+PbYWVdvrO7i7zeZGSWn?=
 =?us-ascii?Q?wPYYzLUcwuvJti1umfMR+UZ8B36qVYR7XObbpR8kyGfNCyOyROH8uw2h29XB?=
 =?us-ascii?Q?PqkrergZ4yqBg+M/VthnXcmdtSaGJgyCFluoZLmEJdm98cndNd2Bsihofwaw?=
 =?us-ascii?Q?TfDpsH32LVgBpfS2VnrEog3Z4chKK5hYHPaom8M7UOOf42iWGqOYY6LBRkvG?=
 =?us-ascii?Q?JdAtvyNlWHmy83aGH0P7qdm/DGi+/mE7vUevrZRwSiJdwbNEOliA5ETgUyVT?=
 =?us-ascii?Q?nd0RYM98Vj9O0FP6REf5hxJHzqcldEzoXTzEXvJNewTsNqEbzhoyba2ayFwY?=
 =?us-ascii?Q?kQ5lvYOeXd5oHoafTHTWaC8N0sQeItUxxrBhWutRKrWFQaF1xjcQd5rfKKEs?=
 =?us-ascii?Q?bBCgstcJI2uaZB90DpQxN66qk8K+ab3zbRpXNQ1FoRRmsXthxsbh7lW9aoa2?=
 =?us-ascii?Q?hBxIyp0ROpkm1/vtOtLRv9r8tktgHj/rB5htWZESnS/QK3rCh2oCJNf5WxxI?=
 =?us-ascii?Q?xxnjIu688lXR7pQq70dZSflK6zOTDilclHN3b1lQf6OnBEhIxIKwVnkjepbf?=
 =?us-ascii?Q?06ebGtrSS5fvuD2tZD4CNDdYoEC5K5ye2Y+vH5yhivk7CImrK0EyQhcg8j7F?=
 =?us-ascii?Q?VhS6pqsgzPiho0CZ4q6PNl2YMZaW25ByxuIE43BLXqNLdtFnY5B+KXjCXOSs?=
 =?us-ascii?Q?o93MrJQEq61mccvws9hGPxF0hzxsGxc3j1zirSN4W9A67qVS2Kg8YE38PBYt?=
 =?us-ascii?Q?m8/rc/r2jGANhTM2Xz5TubLTIw0yXAuf3XqHTzq+6VAwwUqHp9vPJqk/YIZ5?=
 =?us-ascii?Q?tpn7G5ql5pWMsv6L7F+7Uoq3FERHGh/wf6QxfY7XGVtMdhWMC8OxUt7LJJaw?=
 =?us-ascii?Q?lfxIzwmaEjXWw+7ENsgEQnWmQARR5q6qitCMO8cR1jOA7nmTykCFe6h4+pqM?=
 =?us-ascii?Q?Yi8fJJlnosNHR0nR4C3i1wUys6gvCdodAJuSoFyWXFKmgrnffqFFOJgfIiQn?=
 =?us-ascii?Q?XPUr28N29pwdGoGXn3qlgVABIPgrL91a/HXFm8txM5UNv5yUHyfhTk/bMF5m?=
 =?us-ascii?Q?43TM+2gOumehuYfZZG6XPQfRQz7sOmtG9oVdWlksdxJI9GpD3GHMsN5dCoQ+?=
 =?us-ascii?Q?gNQ7FXZKcSAr+VdvnSzHxn8/8Cj8455qBtpM0mcD1cW6EeD9MX5h+TuqcWBr?=
 =?us-ascii?Q?i7wEiWR2AWYcxq13tPbeoNfvFJ84GzqFm0dQlMGQYAfXTIl0hsjHi34EM29c?=
 =?us-ascii?Q?NOcaPjKGVsWR1sfgNOEKCmiMCcGJyJMMK50wZ5K2Ipmbnw36YTDrIUtsQTPZ?=
 =?us-ascii?Q?isweKTyHWDIcE5gXN6wcY+27ZaHBW6vcj7lUatLRS3cpV7inHR/8otOVLsBQ?=
 =?us-ascii?Q?LGQymud7Wm0lM3C02JleFVG0l7XG1TP4BNtvFzuZqrMH/Lls7eLMVL+aWAcm?=
 =?us-ascii?Q?Kr9P5rns2LbISRQCL804i2x7Ap1reJ4G+T2KXiUzdCDUyRWxMNzBezHyBpeU?=
 =?us-ascii?Q?C9UoES/dmZsBg0TqCzZY/e+Ez5nag0PmTUiA4Shgz7a8NOAVKDTgGzXsitlj?=
 =?us-ascii?Q?DKiSboOdUrOQj/GvR5pZP68=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R9tiBSJ1wlR+tLY1Lk7jL1Y6AfOuKBBuY5J7zEL3A2hW9jibC0FSaNVXHRPD?=
 =?us-ascii?Q?AUQ4QzCCyqa0vkoEcROkrD9SA3AeWhVJVWOxnpaXzcp45zXv0IuG8MnISFpB?=
 =?us-ascii?Q?7HlaJKy5l6Pcd+ruYoqsDphnHIeL6YPuplc8IXY7OVW1nglEc2B4GHNvIRGy?=
 =?us-ascii?Q?ZN+OV/oy843QGOZ6CczwGAV76U4IE2tFX3dify4M+IU0rEQoNMYV2wslEfFf?=
 =?us-ascii?Q?b/EWyGVah8un0xYH/ULJUfsy2NXh2TG+U+xjIh0I275F563D5u2mkz5E4iM8?=
 =?us-ascii?Q?681uJC1AAPkb5khaTsDBH4/tHMYBa0fF4F7VzopE5DNDHHqn+33DFSKJHpFQ?=
 =?us-ascii?Q?2WmMJuPKNwgFnMudR5VnRwS5AbnZSNLd6kxXMavlKFm73P4sUt9xTGzjyXW/?=
 =?us-ascii?Q?U0QEOJjiXBkeLUanp4/y9U65tgSnASQKdwLPHuywJMnie0Cri2HYGn942P0z?=
 =?us-ascii?Q?8HqPeXypwrDYsm7Uns7W5rPD/fbRbExYdE9la7vxG0HPySjTNG7xINym8KD6?=
 =?us-ascii?Q?knnxvnCqiJ4uR4m9FMwAoCK5tWI3OKyD60GSZ2EhUIHYAIpRjVQsaY/XJdvD?=
 =?us-ascii?Q?kTWszZtqdTrOyoN0XNCvzj48uxlJqNgiqr6v29sQXMSAE0MGmDVZuD8+pqmy?=
 =?us-ascii?Q?LWIJhB5TLf4BijymExQtQJFEOxXewEG6BJ6cLdecPID9zIvCecaG+Lmg1Zu4?=
 =?us-ascii?Q?LTTsPdbgACXRwXlefKYnw9roKWmDI6PwmckOXcx5pZr29stmviAyEsVBtqn9?=
 =?us-ascii?Q?vbLKAOHBuooUQU1J//t9StysvVMoirw/MAOmumRAb4zKPqUuNBfjdvUWqpFw?=
 =?us-ascii?Q?AP9wPZ95MIKlbHvuow4m9D7FHI7vnzk4ekUAdd8TNBPRrW/4XduiPp928eN0?=
 =?us-ascii?Q?z4kzqAhhrM4Ke/4yQgGp+YA30NRcQn4cx2he0BtYOIJH9v0YPPr6zxrZAs6L?=
 =?us-ascii?Q?TlZhwlk8AryMtBU+85q+Dga6Tntf9XNq0rYP8jS1xzpTEmRNiiywX+Bn0gs/?=
 =?us-ascii?Q?TRQDntFJ3LYKtnALXOL90pxq0d/35cBsXuwuKQa2ZN1PoMAd9fWP+ieE5jbf?=
 =?us-ascii?Q?PNOrtEF3snlalffbsuCwvFZf9Jat9ocDd+/rcKbFYVpVyXu0WhUDvxeVSWCm?=
 =?us-ascii?Q?D1MIJzRVpsK5QLMGBL3Y0fGsPgt0sUUCJfwlcCV+baebv/o84PqK7goEoW0K?=
 =?us-ascii?Q?7g3r+e/DkxvjrZE5L/u3t0b3tNSV+xpjGJ7dh2qlZ+zOC4x0gTf4GqPoFT2m?=
 =?us-ascii?Q?NDPHKO3Soe/9bCRF2qLmYzWxo9k9Lnn2Gq/HzL0nryMz18KkPuCmqtaEsi26?=
 =?us-ascii?Q?To1wkhuYTVNsXCUS4KlDWpqiNfgD8YBgfj52ZYH+m2ffR5mQEcuOSPNLIADU?=
 =?us-ascii?Q?IOXHZzr9JW3xtdGnrSRSWzxbbAsQsRGNB9//TXVMsaehzMlpmLTqwu8GZ26y?=
 =?us-ascii?Q?hSuyD6DKvl2sHfsGf26Liq/DB/ZSVaKJxWlhXewzSWYIhHqs9Nsj0dkHoIb+?=
 =?us-ascii?Q?tdoBxaYZNnSM/Hjc69nt5K78uDqg1kvaT7O/MOU+kS/1ffFEjBqyLHrYqXHr?=
 =?us-ascii?Q?quzrsZw6i6NwbZtMl+1cV0dnlk0kTFgUmqV2PmcFBFHUcYKvaTmRoKTAMG1W?=
 =?us-ascii?Q?f4foSsYg1DPLqoF74rrlEcfJxMtdzPlmLPUtbjJzWZLw96nUfAw4bRP2DLky?=
 =?us-ascii?Q?T/D3ee1jIVRrNGUuOSFNPoy0XSnIDYiy1j6Wmsf4mSy3p/CFUjIvbYkerZs8?=
 =?us-ascii?Q?aJDC/7cB+w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17fa664a-639e-405e-e0d7-08de5fb0a05c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 03:35:34.1974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T3eg0zXLmtVpMEGVZXMUAt8QnEj1VyKpV3BBkZn/mb2OK9P/PYNzcb8ETsIDo23U46Ryu6E9Us5DGlIzKYGFNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4702
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,tuxedocomputers.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4DCF0B6DA9
X-Rspamd-Action: no action

> Subject: Re: [PATCH v2] drm/i915/display: Wait for pipe start to avoid vb=
lank
> and scanline jumps
>=20
> On Thu, 29 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Check if values are updated or not in PIPE_SCANLINE register before we
> > move on ahead with modeset.
> > This is because we need to make sure we are not getting stale values
> > from PIPE_SCANLINE register as we use theses scanline values to make a
> > decision if an atomic commit can go through. Without this change we
> > see Atomic update failure warning with the following
> > signature:
> > [drm] *ERROR* Atomic update failure on pipe B (start=3D457 end=3D458) t=
ime
> > 50 us, min 2128, max 2161, scanline start 411, end 2165.
> > Where the atomic commit takes less than 100us but we still see a
> > vblank count jump and a big leap in scanline.
> > The PIPE_SCANLINE may give stale values as internally after writing to
> > TRANSCONF register it take H/w around a vblank to actually get
> > enabled.
> >
> > Bspec: 69961
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d8739e2bb004..4514de71cb9f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -83,6 +83,7 @@
> >  #include "intel_snps_phy.h"
> >  #include "intel_step.h"
> >  #include "intel_tc.h"
> > +#include "intel_vblank.h"
> >  #include "intel_vdsc.h"
> >  #include "intel_vdsc_regs.h"
> >  #include "intel_vrr.h"
> > @@ -3562,6 +3563,16 @@ static void intel_ddi_enable(struct
> intel_atomic_state *state,
> >  		intel_ddi_enable_hdmi(state, encoder, crtc_state, conn_state);
> >  	else
> >  		intel_ddi_enable_dp(state, encoder, crtc_state, conn_state);
> > +	/*
> > +	 * Somtimes when pipe starts PIPEDSL/PIPE_SCANLINE reads will return
> a
> > +	 * stale value, this is because it may take 1 vblank for TRANSCONF
> > +	 * register to enable the pipe, which causes an apparent vblank
> > +	 * timestamp and scaline jump  jump when PIPEDSL/PIPE_SCANLINE
> > +	 * resets to its proper value. That also messes up the frame count
> > +	 * when it's derived from the timestamps. So let's wait for the
> > +	 * pipe to start properly, So lets wait before we proceed with modese=
t.
> > +	 */
> > +
> > +intel_wait_for_pipe_scanline_moving(to_intel_crtc(crtc_state->uapi.cr
> > +tc));
>=20
> The problem with adding these type of things is that they're almost impos=
sible
> to remove afterwards.

I understand but we have had this issue on and off for years and this shoul=
d at least reduce one signature
Of the various Atomic update failures we face.

>=20
> And on the face of it, it's kind of random placement in DDI encoder enabl=
e
> where there's nothing else like this.
>=20
> But the *_crtc_enable() functions in intel_display.c do have vblank waits=
 and
> scanline moving waits right after intel_encoders_enable(). So that's kind=
 of
> where it feels like this belongs.

Sure will move it there. That does sound like the right place to have this =
fix there.


>=20
> On another note, what about the stale values? Related perhaps? [1]

The stale values happen as a result of PIPE SCANLINE hanging sporadically, =
which too happens
at a very low frequency making it hard to reproduce unless you are on CI (t=
o make lives worse).
PIPE SCANLINE gets reset after a vblank comes in and resets it. But the pro=
blem here is if it hangs at
a value which is lower than min safe scanline we do not evade vblank even t=
hough we should and then
when a actual vblank comes in it resets then showing where we actually are =
scanline wise causing an Atomic update error

As for the fix provided in [1] I think it may be possible its related to st=
ale values, but I have not seen a case where we have a negative time diff.
Maybe its best to ask for a gitlab with his logs and supporting evidence as=
 to why he thinks this negative time diff is causing the issue.

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
>=20
> [1] https://lore.kernel.org/r/20260108165139.1381835-1-
> aer@tuxedocomputers.com
>=20
>=20
> >
> >  	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>=20
> --
> Jani Nikula, Intel
