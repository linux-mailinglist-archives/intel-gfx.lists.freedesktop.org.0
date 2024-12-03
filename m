Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7575E9E129B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 06:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A8C110E08E;
	Tue,  3 Dec 2024 05:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iCd2QzFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8D610E08E;
 Tue,  3 Dec 2024 05:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733202218; x=1764738218;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=P8BVjc7sUXskt/UlA4ycuQUCYmYqJC//uUYKXV1mZg0=;
 b=iCd2QzFFHY5pBdgxijWHvna+QQg44quwd67doynFjs6BwK1BLNQOAB5R
 ZxhJlMYNBpWhSVrrbEwnNn/wzD3xEr7HkjrmUhZW4EAG3WkKFixpYyhz4
 8zw5purR3TUks0O8LDnhQwyidC+Coucv5A+5956RihlM2cUQrm8Hfarj+
 yUIh8FlKdHD+5GUpFdFpdgpiC9proVeNIHnPvdQVcj0Ce6Yw0h/H7E7rs
 lsLL71BbpH4grwyRFPlm4YIVHt6tgb40rMEN8ix7dQ512YWhlqj27mLs0
 r89oK4eo+EKNaPJpBxThyZs04XdQbavX2uBTtb/2YvjwCCm8ftSyjaTic w==;
X-CSE-ConnectionGUID: Q0KujHu5T6CP5pepTUqlkA==
X-CSE-MsgGUID: dgN1knIiQ9yLziCLuZcbxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="37173578"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208,217";a="37173578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 21:03:36 -0800
X-CSE-ConnectionGUID: tGKnSBOGTIGE2mgrFTbyKg==
X-CSE-MsgGUID: ulD2MsuiTVq0gl/bJB26Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208,217";a="98333874"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 21:03:35 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 21:03:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 21:03:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 21:03:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gt4o73j3oPLa6WDjpcXhtk+m/HQCb7UQIE+rSAfyL2B4zuXBgr7cCxjiM0Y1AG2aIzSkzVW6OAPqdwM2dbbITgsRy35TMqsfabM/cdOdVxBW7eLAEsNJJ/D5CkF4uG9syKuTw/Ea8zUQTNrrwjJ5ExOGQ5tHLuOXxq+gqC5TphVT6hOnNkQGyQxPIWG2DVEOgKhfAi+bhZNgBFF6YnpAfpONWsBKQKUQFhl3e6+uOEyInbpq6ttxfRrCh7NBuUqSpnZBA2HVf8vBxz4RHp9QBwFUpR+5vhkmYi+hsdDvS/6rj8dx0w1no9GbArpec8cfXFNPdOoe3gyRW+3ELWMW1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2P6ZS2FOcOaeDKBkkF1V/WMHyKgvH2p206+4GBFRpM0=;
 b=mNddIyVCXoQC+XBwOe39w9tNUgieybGf1vOmWde09zVqrbbwsN84DANUn4oBt1j2iuXQo7p1wwWZydglpMmiuy0ehd3fXX96Gshi65LX10uFmpHRrQnVDPOTBw9kE6cF5ZuP2bDLeSpHQJrQxXrhdhkP7UAY/o63mim50XCBzUMBv3PI2aC9E0/Ru4nAvjLYklLlXLnBg6acIKvaYBszXnOFbyOrblvp1puTyl0N84ESmGAjI0zUa+a51mJpfP9Bq0T9CvhrnzPjYadmC6Gu5UaCmCRAtDqFZFYrNnTkHvNEJgwG4mpsxsVZCAMKObNPZ+Dr5/jdkElisOphB/FHQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB8328.namprd11.prod.outlook.com (2603:10b6:806:376::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 05:03:32 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 05:03:31 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: =?iso-8859-1?Q?Thomas_Wei=DFschuh?= <linux@weissschuh.net>
CC: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: Regression on linux-next (next-20241120) and drm-tip
Thread-Topic: Regression on linux-next (next-20241120) and drm-tip
Thread-Index: AdtFPvBukA2w7biuRBKjE+4t+kPk7g==
Date: Tue, 3 Dec 2024 05:03:31 +0000
Message-ID: <SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB8328:EE_
x-ms-office365-filtering-correlation-id: b281f005-00cd-452f-fe37-08dd1357d546
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|8096899003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?acnCgV76cob1ihnb23jAJ/NRYBhL/wj2sngllDGSQXONDtC7zp4jfRhlt+?=
 =?iso-8859-1?Q?Jq/ifLKBLpl30O3IqWWguwmh2qU7H4ZWaskVhGhWnbEsDDFp5daAoL/ocF?=
 =?iso-8859-1?Q?HBT8caKHN1cea2jqMXyzP/fyzzcD5266StoDrDWdxNRQD8p3+PLX0za9nP?=
 =?iso-8859-1?Q?lz94as+Ow27rwuXMZu+qAzloQ04Lh5HKHo3pEjPYikeN5dLwRjG5Jx8dx5?=
 =?iso-8859-1?Q?cdHWSTGqKSX4r6b0kB9AlJpjlMtWnY3Jg4X9NCkp3DRKrZMKNiyX0NhfIO?=
 =?iso-8859-1?Q?0wPboUaHQYONomFCQ6lydgtrditQf2iR/UsNgf14RQARBJhsbL3pgjlf92?=
 =?iso-8859-1?Q?lN060oYfAakeoODkzzCoRce0yLrv6WHmzWXlHdpEz3LLolE2zbM25JPQyW?=
 =?iso-8859-1?Q?hkEQGdwIRLP8C0J83E1iEoMOvwK/G87Z7iMP+H+vSpkYqDDLHcOoBSLnjg?=
 =?iso-8859-1?Q?+6yBwpkxint/dSMEYf29t+m5kbE+PnCwiOCtqsjbDQ2fJGl2RbZhG/u/K0?=
 =?iso-8859-1?Q?PjokZ0UleXJ3LqxlDViI9rH2nPmZ6rzjwz+tgJczoBfl32maesPh9o5UXh?=
 =?iso-8859-1?Q?1kzRLyP56sLRwLrI44IRHUj5GKSHDPxuirG3NuRFVmey7knk3jq4BlfCt/?=
 =?iso-8859-1?Q?gJE+LSBtA3jN0H2OQwwnWSrvBayKbZrYvKfwQh0GAza9V6kQdje/SK+Xvq?=
 =?iso-8859-1?Q?hoCGcuAkPrluzf2DtNmLTOcK6PxeoP5+ICUtAWcAJwScxwizW8kykZkMH9?=
 =?iso-8859-1?Q?GwlTq4NndQ75lz2A++sYZ4zFucqexN1ksqZJFTNA2jz3/6yEj0bgVxvtEa?=
 =?iso-8859-1?Q?/pLwDLaaN9djEv8XMv12ZQpAV3S4NPwDzmxMH+2/5TMGPcPcewA2r8v1G3?=
 =?iso-8859-1?Q?ia+eEDjEe3sRVyjUUfT0ziNGH2gWJCcmi5R4C3KpS+MomQqFgKmDq2Vjzb?=
 =?iso-8859-1?Q?9WRwAAlAxu3sx0t2mvCMZt/0hWhRQqAIlv9eieB231L/0au5kSJJsgIbBs?=
 =?iso-8859-1?Q?IJ12MGisO/L5f3VHYBQYd9E613xyQp/FIgRA/h6aL6NIE3f4i2cFKaL07o?=
 =?iso-8859-1?Q?L1pZjYGMSp0l0UUp4J7nWGHtbvQv7OWFpiwh9hFz9dQGo+WgboCGGvNbeR?=
 =?iso-8859-1?Q?kVlOY6CCviEUeb4kbTgqbZNR3D63Oa0WpWFKD5VkmT47NIy3hPdEzErIEm?=
 =?iso-8859-1?Q?JIN21RzG1iRN7cPMGSDKkBUHrK5mAXqeTVmwpAWJXGdi5Mx/B3rvNIcL2G?=
 =?iso-8859-1?Q?I47EMEl9qJumXPHCy0uvHI7E0if67gl3YG2ZsmQKewIZ2oRX4HjpG7wd0g?=
 =?iso-8859-1?Q?hEu6XHmZsb5Qln/jp+z9utoUjtIP3uD6/DsxSX8k/dHoo06ZQ8oqyx5drz?=
 =?iso-8859-1?Q?HcrVTPzOrJKHpoVSV84S5afaJTWlsHlmRQ6vObPTIgk/CLrlYADh0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(8096899003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?y1eCYGtqBBl4c8GYMmwn8Fptoe+Y+rgq1f9e9HY61idBckHUBT4KQ3kQkR?=
 =?iso-8859-1?Q?SAX1J7HXFU00ZKvAKCTEXs2u2tNYNTbf93QR55CtToyuyg027Aty+VANH0?=
 =?iso-8859-1?Q?0MIIhcrMedmYjPtDQM2SmwFcoxWMoLw/usUdXWce/vtwUf5RvFBVdMeXM4?=
 =?iso-8859-1?Q?i8P1TRQF4qvXnDiBlpXmz+7ziSl0Ctx9H6n7qWkI/wbMAkPxy+Zb2dJ5BB?=
 =?iso-8859-1?Q?EEinsSCOheub1+60Wd/g2NGokkvDB/R1zodmkNVMFDO5CozjlQN3RiV3yG?=
 =?iso-8859-1?Q?Ie5Z9S8bUNlAyJsGVkXkqhSGoCemetTR/iThGjqKQHZxZFFNrmuy7t1so2?=
 =?iso-8859-1?Q?LsMxYFso1jPGDWMryjGq+kIM+2E68L0J89Y646ygkXQ1cSysnibg+taWws?=
 =?iso-8859-1?Q?H0RXlAvKV2uuCVnPvgqCh+TTHpCB95EBRAElAQ8bFqIUIHwympCEXEP2Kt?=
 =?iso-8859-1?Q?XeCumdw9yXnOmqw82MMtl0wOLXIFM4Bd9L69Z15vz64aqZpMwooAMrUv0O?=
 =?iso-8859-1?Q?bvFAlXMKKRGwZt9rafTPsW90P+qsa6uAqszc4sD1ixBPrd3vj7nogycquc?=
 =?iso-8859-1?Q?Djyv4XuD/CcEoQDLoWyVnQONgtLm8N1tpaxGaCa73cexQIwwn9n3GBJ5dC?=
 =?iso-8859-1?Q?PoIFZFvVMhWtBLhWPSUwO1S8FoLlUEu4oVHoyCLlDbIcPFdPpL6uNTj4VX?=
 =?iso-8859-1?Q?WJZ9tum3zLx0evlgMUJ22L3/r+BYK4JvEWiWMgDVxBdafaYMayNXfa4Sqc?=
 =?iso-8859-1?Q?HZ85D4WcZDikO4qonU9ZPK49vfoiak5EPYXC7TpzDxPdhD9uwCANGpx5Dx?=
 =?iso-8859-1?Q?ntrPoRKvlfi64XSuyhsCwLJbOQkpw5u5+uPXvNFTdfWkKPM3ipkGWtKvKn?=
 =?iso-8859-1?Q?wq8OmMVlLejOgwxVmx0GwIJU4hoBp1dwUX3xkEbBcgdpRjoQ/G60xGklZF?=
 =?iso-8859-1?Q?QcFL5S1zYk3/aM+8J8bsDLx4+20/C8X1iPKzUNQ5Od8Q+TMMZKU/kiPdeo?=
 =?iso-8859-1?Q?0K5RZ9/UM38zH8XYfPQLl+venC/wjBDryKvKU8TsXE9shGBd3SQgXSv7he?=
 =?iso-8859-1?Q?IOM5sjJs3O1BsZJ/UFCyBfJjNwP+Wgr6hHx+gGdgAr4/5zxM9vnZQbIpp3?=
 =?iso-8859-1?Q?7qu9oFcyvUD0/oFc+plufKf0K2pbvrlOwIulYhjn6C+tC2hLpPuBms2KWg?=
 =?iso-8859-1?Q?14yNs7pVOsnOEhHqXjHhsqbMU9+alGnYSfMDydayh+9fZ6kRQmdJo7rLbG?=
 =?iso-8859-1?Q?5/H9hw7QP4+d4pXaleBdaISu9SPhF3WnfWQmgXXh0Gtuq8ygG64UayZXD0?=
 =?iso-8859-1?Q?NlWMT4erQTBi9gQwYG3W0Tytr/4cXUpAb06FSSMpRkyechyhg8nSKMGizn?=
 =?iso-8859-1?Q?x5r1UAh4TXrvR29Axex5xjjdx6MobdH/ajby3M06/5jqJ6U6UoY+RNpIqu?=
 =?iso-8859-1?Q?aVXVFM5cJtmR9Vc/9XAZ+GPGm6JJuOTt6/CPExbOqQ+4j9TQ+jfXze8alo?=
 =?iso-8859-1?Q?Fy1tGLqDZlrPCkv1g59LFVJV7Z0rgx9O4wB2WrK2T4b8n+HjhGrbm1R6AW?=
 =?iso-8859-1?Q?YPqcJcKdJIMYpEm0PS69s+2SSem+pnAfe6bqviQVY7PAAFQHgeSOTUvv7S?=
 =?iso-8859-1?Q?eIwu+0i4Ny2RW6mfPefkN9AQL2lCusrT0nrU/J0q0DyF5Fy7yp2A4xqw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362SJ1PR11MB6129namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b281f005-00cd-452f-fe37-08dd1357d546
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 05:03:31.7207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G6dIsiidHF/7cYbc/JfaStUCbzjK6Mk3GufiQVTfCluezsP6g090iG0EffJZ6ZzwkWJ5hVzadD0EQAblYlDN/e5r0ck8spZ3M85QXBKxQoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8328
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

--_000_SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362SJ1PR11MB6129namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Thomas,



Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.



This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.



Since the version next-20241120 [2], we are seeing the following regression



```````````````````````````````````````````````````````````````````````````=
``````
<4>[   19.990743] Oops: general protection fault, probably for non-canonica=
l address 0xb11675ef8d1ccbce: 0000 [#1] PREEMPT SMP NOPTI
<4>[   19.990760] CPU: 21 UID: 110 PID: 867 Comm: prometheus-node Not taint=
ed 6.12.0-next-20241120-next-20241120-gac24e26aa08f+ #1
<4>[   19.990771] Hardware name: Intel Corporation Arrow Lake Client Platfo=
rm/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100007 10/10/2024
<4>[   19.990782] RIP: 0010:power_supply_get_property+0x3e/0xe0

```````````````````````````````````````````````````````````````````````````=
``````

Details log can be found in [3].



After bisecting the tree, the following patch [4] seems to be the first "ba=
d"

commit



```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

Commit 49000fee9e639f62ba1f965ed2ae4c5ad18d19e2
Author:     Thomas Wei=DFschuh <linux@weissschuh.net>
AuthorDate: Sat Oct 5 12:05:03 2024 +0200
Commit:     Sebastian Reichel <sebastian.reichel@collabora.com>
CommitDate: Tue Oct 15 22:22:20 2024 +0200

    power: supply: core: add wakeup source inhibit by power_supply_config

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````



This is now seen in our drm-tip runs as well. [5]



Could you please check why the patch causes this regression and provide a f=
ix if necessary?



Thank you.



Regards



Chaitanya





P.S. We could not revert the patch cleanly and therefore we are yet to veri=
fy the bisect but we are currently working on it.





[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?

[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20241120

[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20241120/bat-arls-6/bo=
ot0.txt
[4] https://cgit.freedesktop.org/drm-tip/commit/?id=3D49000fee9e639f62ba1f9=
65ed2ae4c5ad18d19e2
[5] https://intel-gfx-ci.01.org/tree/drm-tip/index.html?

--_000_SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362SJ1PR11MB6129namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"Intel Clear";
	panose-1:2 11 6 4 2 2 3 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hello <span style=3D"color:red">Thomas,</span><o:=
p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hope you are doing well. I am Chaitanya from the =
linux graphics team in Intel.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">This mail is regarding a regression we are seeing=
 in our CI runs[1] on linux-next repository.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Since the version <span style=3D"color:red">next-=
20241120 </span>
[2], we are seeing the following regression<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;In=
tel Clear&quot;,sans-serif">&lt;4&gt;[&nbsp;&nbsp; 19.990743] Oops: general=
 protection fault, probably for non-canonical address 0xb11675ef8d1ccbce: 0=
000 [#1] PREEMPT SMP NOPTI<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;In=
tel Clear&quot;,sans-serif">&lt;4&gt;[&nbsp;&nbsp; 19.990760] CPU: 21 UID: =
110 PID: 867 Comm: prometheus-node Not tainted 6.12.0-next-20241120-next-20=
241120-gac24e26aa08f+ #1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;In=
tel Clear&quot;,sans-serif">&lt;4&gt;[&nbsp;&nbsp; 19.990771] Hardware name=
: Intel Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS=
 MTLSFWI1.R00.4400.D85.2410100007 10/10/2024<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;In=
tel Clear&quot;,sans-serif">&lt;4&gt;[&nbsp;&nbsp; 19.990782] RIP: 0010:pow=
er_supply_get_property+0x3e/0xe0<o:p></o:p></span></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText">Details log can be found in [3]. <o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">After bisecting the tree, the following patch [4]=
 seems to be the first &quot;bad&quot;<o:p></o:p></p>
<p class=3D"MsoPlainText">commit<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"color:red">Commit 49000fee9e639f62=
ba1f965ed2ae4c5ad18d19e2<br>
Author: &nbsp; &nbsp; Thomas Wei=DFschuh &lt;linux@weissschuh.net&gt;<br>
AuthorDate: Sat Oct 5 12:05:03 2024 +0200<br>
Commit: &nbsp; &nbsp; Sebastian Reichel &lt;sebastian.reichel@collabora.com=
&gt;<br>
CommitDate: Tue Oct 15 22:22:20 2024 +0200<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:red">&nbsp; &nbsp; power: su=
pply: core: add wakeup source inhibit by power_supply_config&nbsp; &nbsp;&n=
bsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText">`````````````````````````````````````````````````=
````````````````````````````````````````````````````````<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">This is now seen in our drm-tip runs as well. [5]=
<span style=3D"color:red"><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Could you please check why the patch causes this =
regression and provide a fix if necessary?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thank you.<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Chaitanya<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">P.S. <span style=3D"color:red">We could not rever=
t the patch cleanly and therefore we are yet to verify the bisect but we ar=
e currently working on it.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">[1] <a href=3D"https://intel-gfx-ci.01.org/tree/l=
inux-next/combined-alt.html">
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html</a>?<o:p></o:=
p></p>
<p class=3D"MsoPlainText">[2]<a href=3D"https://git.kernel.org/pub/scm/linu=
x/kernel/git/next/linux-next.git/commit/?h=3Dnext-20241120"> https://git.ke=
rnel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=3Dnext-2024=
1120</a><o:p></o:p></p>
<p class=3D"MsoPlainText">[3<span style=3D"color:red">] <a href=3D"https://=
intel-gfx-ci.01.org/tree/linux-next/next-20241120/bat-arls-6/boot0.txt">
<span style=3D"color:red">https://intel-gfx-ci.01.org/tree/linux-next/next-=
20241120/bat-arls-6/boot0.txt</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal">[4] <span style=3D"color:red"><a href=3D"https://cgi=
t.freedesktop.org/drm-tip/commit/?id=3D49000fee9e639f62ba1f965ed2ae4c5ad18d=
19e2">https://cgit.freedesktop.org/drm-tip/commit/?id=3D49000fee9e639f62ba1=
f965ed2ae4c5ad18d19e2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">[5] <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/index.html">
https://intel-gfx-ci.01.org/tree/drm-tip/index.html</a>?<o:p></o:p></span><=
/p>
</div>
</body>
</html>

--_000_SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362SJ1PR11MB6129namp_--
