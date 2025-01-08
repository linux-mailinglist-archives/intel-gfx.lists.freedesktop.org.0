Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CBAA05C3B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0606610E2B0;
	Wed,  8 Jan 2025 12:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqPs8JuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D58E10E298;
 Wed,  8 Jan 2025 12:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736341143; x=1767877143;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QT3ZrQpUDnyAo1RAGhCbXU1YWqdNL7AgFtP1aSz+gLc=;
 b=bqPs8JuOyhJ7035bFtFWmY90E9XFYd4n6S2XvZWnQUIn8CBTAiekabON
 sqG9W/cattP8X0gIcYFhImvr0sxK0eGct8vaDOPDGbqiK+ajhhOO0m8Vj
 2MSu8XvLOP9xET0/c86aBCvqz1DR9LrvvBQw+QIU5oBBCnF05yWA6pIRr
 YNBBHdC1xjdUZpLgqygW7j5D+k0x0fhmvPOb0BuHONr0HdyLc/HGrNef1
 TC0LSrgI9y0MB0zuAlz6/EZg35oRKKeQxQ/x+FWQsuqbehqpbuQRrMa27
 YvAmKL90rIWoHN5nmqjg5i/moD7YJIMCvi1PGqpuu+afGrtk9mtexx4u7 g==;
X-CSE-ConnectionGUID: IgG92waRR7WE0HyGHtVxLQ==
X-CSE-MsgGUID: ZrZbQcZTRKyJ/ALkevltWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="53979732"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="53979732"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:59:02 -0800
X-CSE-ConnectionGUID: bflpnOvaS4CDI1gCsarxzw==
X-CSE-MsgGUID: BUCclvN9RoazToaKdPlhbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108138690"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 04:59:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 04:58:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 04:58:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 04:58:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Br1O5lwOSubsi00pOIk6kg4h3zTfKZawGLPVBT5AK+rILKs3TezjHu6jsQW4nnA6f3yEFSwxpHAEvBRDB/q+75KTY3irTtyQV8jQXiEAh8dQR29ITqlXu1BjG2lgLjfYibHoE02nn0PNAcXkn0dzsNCbpMvnJugfzbN54TWXrK6aam+rWhhRz1LHQfY+AMGRJA1Zi5Zq392hZSEH+4jYI0wGb+ChUNaymPNSonnh2m9SCBF9+zwYjOG6kqSQSg703H6bA6Jbdzc3GUddMGXIVCb7CsQfLkjx95yrM3/G7wKKmv1Or4WRo2wELqqmFCasurZGJjOxFFkTu3XrW5+oIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QT3ZrQpUDnyAo1RAGhCbXU1YWqdNL7AgFtP1aSz+gLc=;
 b=cqWA1BUdEbgFTe6ZaKtgg5cTpqqaL6RwxIE97JjHwfyOpmPQ1X9JmHGAgsI4zrQc1xL1F6A0yU93r56s8EgrjVPhWlsbnenQcBLgkQARIc8DfG3jQjNhyZRmWVFnROk/YMwNDTZpSMBC7U+BlJ+58q/WkCmz+a42DQhOWEqODPrcLDtpW8J+Typ8zwMS/a6p1FBglvEPLQDYOvVPAOA6WyJJZKf/535GwQe7YsfyDQ6JeyB1GsDfAaqz+rDiBkmfq6uEArLxaYk+w/gtV8mNPi8nDx+94CEflJhjasswzPknRWrNqGLGNC5NMV9Z4+9gDt6EEOWgsm9PkoXKsp1z+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB6762.namprd11.prod.outlook.com (2603:10b6:303:20c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Wed, 8 Jan
 2025 12:58:52 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%6]) with mapi id 15.20.8314.015; Wed, 8 Jan 2025
 12:58:52 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, Vandita Kulkarni
 <vandita.kulkarni@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Topic: [PATCH] drm/i915/display: Add WA_14018221282
Thread-Index: AQHbV10AXdPHqehN/UWyf6oShOEdD7MM6yRA
Date: Wed, 8 Jan 2025 12:58:52 +0000
Message-ID: <MW4PR11MB7054E33C714EAD8BF8A4DA4AEF122@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241226060632.213790-1-nemesa.garg@intel.com>
In-Reply-To: <20241226060632.213790-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB6762:EE_
x-ms-office365-filtering-correlation-id: 5348ac52-7a53-48b0-66ed-08dd2fe43405
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TnY5SnZqZVhsbkF3TVJZRFU3RGkxVkVkZVZqdENBeWhCM0FJTlN1bHYreThY?=
 =?utf-8?B?QngwTzZpcEs1YUQ5VXAyaXlDZjRGcEhVeGhTakltZW92dEFzazdVVXg1cFpH?=
 =?utf-8?B?d29PeUVkcmxpdFB3akppMEhaRGhrQUJ5dk9IRExhb0JBc21FVjRQR3pmU3pY?=
 =?utf-8?B?cSs5T2YxczNqUE14blpEUEk0QUxOS2ZPZlNtdFNvcW15aW9kdy9UNkJiRWdy?=
 =?utf-8?B?R0dub2prTEw4WTkzQmI2RE9pVTRQYjVBM1ZjVU9aK1hVenVyMEFqUmEzNkdS?=
 =?utf-8?B?aUw2L3V3QVZDT2F5ZTZPRFhhbFlkenB5WitaY2dac01UQlk4T2I4SGRDblVn?=
 =?utf-8?B?TTlWQ0tLUHBMMXJDN1NpYkRlam1PQWNicTR1dUJJRnZpUEs3NDZWRTBsbktp?=
 =?utf-8?B?VE84cDlUN0tIcEt0bXhBS2EzVUZtM2E5bzhHVGc4di8zYkNjZ0VMNkJ3U2F2?=
 =?utf-8?B?QVhEVnpML1JuZ3k5dGg2UUpQVU5keWJ1dWJFeUZOUktxOFRWT0FGMzFLSVdt?=
 =?utf-8?B?SmROQjBPVHZJTDVIUmZlVFFCZnBTdGxFc1JPYThFTEtpMWMxTmtyd2RFby9y?=
 =?utf-8?B?b3hyT3dRSS9rVkNoaXk3Sk1VMjFmNUVpblU3Z0VJaEMveUE1cnRmMFZ0c0Rn?=
 =?utf-8?B?a08zK3ZheG1QakY3SmtDM2lDZitRRnlEbWZCc1NJOWxkcFU4RU9qdkdTaGdP?=
 =?utf-8?B?SWZuU3ppYlRrSnk1UVNnVTI4eFBwejZ1dzAzbFdQYmo5SGgrY0ZEVmdjeWhx?=
 =?utf-8?B?OTBkMmhOUGpWdmNubmRncjAvUGpLQ1c3MnhoeEJObTR6U252QTQvU3lGeVh3?=
 =?utf-8?B?b2wwQkQ1Skc1Q1czQmREVjliZmdNV2Q4cjlkODhyZW1JRitkczFHY2tFSXQr?=
 =?utf-8?B?MkNuVUFTYm5CTDZ0SUZZQUtOdloyVlRiY1UyZURnbGlYd2J0a1VteXBzd3lz?=
 =?utf-8?B?Q3U2SExlSG8wclAyWFR2ZWo0SElnSkZGQU96L29iNXk2dmxySTZiSFQxb2FM?=
 =?utf-8?B?S2JmQ3dtcGVSTHNEQkRKdDdCdklGaWRSN3h6K3ZwMC9VR2RtWk4zQ2MxMmg4?=
 =?utf-8?B?TkxxSldDcEtIQUI1dDFmNmVMNDl6NERLWVhrUDFKUko1MlFRS3BkVTJROXhz?=
 =?utf-8?B?cnBSa2lDbVFMejc1VHBnbThhVmpNdEJQSm5SSjFWYkY2bWx3bVJQY3hTYjJC?=
 =?utf-8?B?akZNcWZhTkZ5SjFtQ3RhbDZKVnhxWGEzdTRwdGdUUVJQQmdGRGJETWlBdkZQ?=
 =?utf-8?B?OE82bjYyN2o3a0hFZ3plTG1MREZJR3EraXhwQWpuamNmTDAzNWxEWGRNZTcx?=
 =?utf-8?B?aXk2K05WbnNyV0ZJdHFoY3RwTVN4TGpRdGxYY3VDS2svN3pLRE0weE4xbCtS?=
 =?utf-8?B?MXFXdzIrUmFvUG9uQlNPQWthNXhTdjB0L2wrbUt1bVlZMGhjTVRzbWpWTHlP?=
 =?utf-8?B?c2RIODJFSFJvZlpMbm5KM2pWTklGbitZWFlrbWcyK2hBKzFKQVpUS1Yzd0Uw?=
 =?utf-8?B?UGh6QzdkcnVqbS81UHE0T2ErSUVXRUF0a0J1SC9ubGkvSis3bGUzdzBVeDAx?=
 =?utf-8?B?QlZXZ0dQQ0lZc3JxdnlZS3E4ZFZOVjdCY1dmTmYyL3F4aXZ6L05zdzN4VEh6?=
 =?utf-8?B?VzF6cUZQWkU4dHhyWUZHdU5HWS9TS1ZrRnI3MUE5QTlRd1VMbUFKRTdwY1pB?=
 =?utf-8?B?Y1gyOU45UjcvYVkyanQwMGdxMUlOYlJOM0EyTFVtTm1yV3JZWk04TDZrVTRt?=
 =?utf-8?B?aVFQVjUyLzlzbVA1Z1BPQXRMWGoxT3dXcTl1Tm55Tm8zc1NKdnZ1eU9HY3hU?=
 =?utf-8?B?WDdCWG9xK0x3TXNQTTY3RXlmcC8wL0FmWXRaMmd0alFDdVdzYTRhLyt2bmVt?=
 =?utf-8?B?elRiMUk4d1ZiSjFQOWJYQThRU1FJQy9xdnVjaGFJdFZ3OUg0eXdJVEdnY3FU?=
 =?utf-8?Q?zs01em0VtSQnDVs0TgD5yvZY9n7DVJIc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGdBenE3VVpZU0tJcjBGR0JQeGxkQTlyanltdi9USVpGejV0OFlzZmlRMGlu?=
 =?utf-8?B?UDhzZkR1Q0J3MWZtK1hzbGJMRlJLNnRxTUVpVHVxMklMRklhTnpDVHJTYUdY?=
 =?utf-8?B?M2c5YXhqVDlDRUZBK0ROeXFDSlpEcldWdEVheWRxbWJWZ3ZVc3ZOOEZTazRM?=
 =?utf-8?B?cEtnbFcxYzZZK0tLMFlYZklZdENlK3BWSTdCK2g0bm55enRpN1ZQVS91ZkJy?=
 =?utf-8?B?bW4zVGpJTTV0VEEzWE5NR1NyZm1sbzhNM3lYZ1NLV0xGWEsvMllVRXpwS1hu?=
 =?utf-8?B?V2trVzhoNXdBMVNCc1J5VmtJRjRhQUV4bmpYM3lkQXc2Z1BYOHFXYlJvbGRj?=
 =?utf-8?B?K0JwYVpXWW5DSEx5WVgrdVoxUTRxVFF2NWt5TktKZncrd2lMakQ0WHFkdVJi?=
 =?utf-8?B?Wkx0ckZHbmVVQU1FRzlrWEgySnNGWXBxRHFsRHlwOUM2OHJmdzhQdVJ4ZmpZ?=
 =?utf-8?B?bllKT1dpcnBHRUtwOU5TZTd3a1hXOC9oNnc1eHFwakFBb1l4QmYxRTNGR3Zv?=
 =?utf-8?B?c3E4bGxyVkNRclIwV3FpRkdydnhnbXlLdlp3cGwrM3pPVDZQa2phTG1QdHMw?=
 =?utf-8?B?YzBzdXdySVo4U1ZHaUIzVk5XaU5IZmlBbXduS2xYcEV6akhZSVpvb2s4Z0Iz?=
 =?utf-8?B?cE5hSXlhbElVaEsxZDQrM0FYWm1EQVN6Nmh3Rzl1RTlKd25JcTV4NWZCNXJO?=
 =?utf-8?B?TERQZEF0bi93aXlKdjRDTjhBQ2I4byt1WDZDZVhHM1UyNkxnWGNoZFg5Q2Rn?=
 =?utf-8?B?YXM0NTdBQURGRlZiWEVlVUxMY0hXblZOT1FlTk80ZTJJZUpVcyt2Z1pnY1N5?=
 =?utf-8?B?ZFlmdWRJYm9ZL1d2SVFtOG5JNUU2Ky9YNkszaVNXTU5wUVRNZUJyVnAwM1RN?=
 =?utf-8?B?YVEwS3V5dkwrUEt2VGFxaW9zaE5hZzJpUURzRWhEOWdFa2VkQ2lsL2k0aGRu?=
 =?utf-8?B?OXNJbUpObWtESHFjOXlxeS80ZVY0dUhRc1pQazZDcXZyV1U0Y2NLSjFIRlFP?=
 =?utf-8?B?YUN5dVFvbUVzRmwvbFJBUVRvRXY3MTJkZllGSWRKL0xuc3BQaDFhVVNzdGlW?=
 =?utf-8?B?a09Wb0dMYUNwY21UZFhHaUlrbVQ0MHhGclVPcVpibDR1UFpqWlJkN3lUaWlO?=
 =?utf-8?B?ZCtKSGR4VCtOZHF3TnlKZkd0SWk3Q1FJR3FkQmljblVIV3IxZFA1T0wwbG9M?=
 =?utf-8?B?b0xEckVCcDBJR0FMV3AvTStvbWJ2cGZ6VkVjQWhTb2N2d29xN3EwS1VMRzFH?=
 =?utf-8?B?WStyc3JEdVhYVDlHdjB1em9CcCtnNWFENElRREJ3R2JVTG91djUzYTR1RnBH?=
 =?utf-8?B?a29tV0R5MTJzS0EzMEFuSElVcFVQcVVzSXdiV3pFaWtVb2Uyd3VJdi9pQ3lR?=
 =?utf-8?B?L2xRUjVkQzJLcFFBL1VHN2ZDdXV5RHBjMU1yejVCSWoyYlJqeTZqdG5OMElB?=
 =?utf-8?B?d3hxWGlqRFpYLzE5VWp1S0ZVeUVJbVJFd3lsRjBZNEZjQ3k0QUJGejVaV1B5?=
 =?utf-8?B?WmJVRmwwc3hBVG5WUTVlVXBZdjh2NkJSSFRmTVB1QldPNmJ2ZEIrT2dsM1hz?=
 =?utf-8?B?bC81RUVNZ0ptdnNncDdnU1pIczgxSUdwcTlFZm5wN1hLZUM2TzNNQjViNmUr?=
 =?utf-8?B?WlFxQVpvT1Y2STdqUjZrS1gxek5pVE14WTRvVFNTdEdOLzhIR0I0QWFOWnFa?=
 =?utf-8?B?S24zWkNqa01oekF1QW1zaU1EaG1KbndySVFWYXJidjRReEUzdkNuUkpLaW9w?=
 =?utf-8?B?QmFsc2NmazRHZmllWmhncEZldUZrcUQ3Wm5nM0ZTanZRV2tHZmVVK0d2aTBh?=
 =?utf-8?B?YU1NZ3ljOEMvR1J2R3BYcEVxdlk5TWtOM0tuK0NORDZvSjQreTN6Vmg0RThS?=
 =?utf-8?B?Sk5QVjV3RGZ5aW1kSlhhZFdJRExNNTdwblBxYk1BeHFNYldNbkJrNHYwMFdp?=
 =?utf-8?B?MmQvUlorRlE3aU1WWHMvcEVhSnBXdlI2QjhNQ0tvZ3ZrcW03LzN5U0tSeTJC?=
 =?utf-8?B?a0hLekljZy91d3FSK2xGcjdLdmdCaGxteHF6QWVZeGo5emdvQTV6WkVBQWZO?=
 =?utf-8?B?V1NFRk50cVVobUNNY1dmcGRiR1E0MXdrRGlTVE9MdjVieTg0c1pnUzdQOEFH?=
 =?utf-8?Q?dIW9qFI6xstzoKC5yfZK5lKT0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5348ac52-7a53-48b0-66ed-08dd2fe43405
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 12:58:52.8062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aQhJsgsc5dsglkDRBkvl1eq0rCe4MVEUr3gF0LgMc/HFY2n486C7V0tMMg6dz6l30cMki6vJMhzKfwAsJA0s8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6762
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBOZW1lc2ENCj4gR2Fy
Zw0KPiBTZW50OiBUaHVyc2RheSwgMjYgRGVjZW1iZXIgMjAyNCA4LjA3DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEdhcmcsIE5lbWVzYSA8bmVtZXNhLmdhcmdAaW50ZWwuY29tPjsgVmFuZGl0YSBLdWxr
YXJuaQ0KPiA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0g
ZHJtL2k5MTUvZGlzcGxheTogQWRkIFdBXzE0MDE4MjIxMjgyDQo+IA0KPiBJdCB3YXMgb2JzZXJ2
ZWQgdGhhdCB0aGUgZmlyc3Qgd3JpdGUgdG8gREtMIFBIWSBEUCBNb2RlIHJlZ2lzdGVyIHdhcyBu
b3QgdGFraW5nDQo+IGVmZmVjdCwgaGVuY2UgcmV3cml0ZSB0aGlzIHJlZ2lzdGVyLg0KPiANCj4g
djI6IFJlbmFtZSBmdW5jdGlvbiBbTWl0dWxdDQo+IHYzOiBSZW5hbWUgZnVuY3Rpb24gW0phbmld
DQo+IHY0OiBBZGQgY2hlY2sgZm9yIGRpc3BsYXkgdmVyIDEzIFtNYXR0XQ0KPiANCg0KUmV2aWV3
ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gQ28tZGV2ZWxv
cGVkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4g
U2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDE1
ICsrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCA0
ZjljNTA5OTY0NDYuLjExMmEzN2E1OGJlMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0yMDk5LDEwICsyMDk5LDIxIEBAIHZvaWQgaW50ZWxf
ZGRpX3Nhbml0aXplX2VuY29kZXJfcGxsX21hcHBpbmcoc3RydWN0DQo+IGludGVsX2VuY29kZXIg
KmVuY29kZXIpDQo+ICAJZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsNCj4gIH0NCj4g
DQo+ICtzdGF0aWMgdm9pZA0KPiArdGdsX2RrbF9waHlfY2hlY2tfYW5kX3Jld3JpdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiArCQkJICAgICAgZW51bSB0Y19wb3J0IHRj
X3BvcnQsIHUzMiBsbjAsIHUzMiBsbjEpIHsNCj4gKwlpZiAobG4wICE9IGludGVsX2RrbF9waHlf
cmVhZChkZXZfcHJpdiwgREtMX0RQX01PREUodGNfcG9ydCwgMCkpKQ0KPiArCQlpbnRlbF9ka2xf
cGh5X3dyaXRlKGRldl9wcml2LCBES0xfRFBfTU9ERSh0Y19wb3J0LCAwKSwgbG4wKTsNCj4gKwlp
ZiAobG4xICE9IGludGVsX2RrbF9waHlfcmVhZChkZXZfcHJpdiwgREtMX0RQX01PREUodGNfcG9y
dCwgMSkpKQ0KPiArCQlpbnRlbF9ka2xfcGh5X3dyaXRlKGRldl9wcml2LCBES0xfRFBfTU9ERSh0
Y19wb3J0LCAxKSwgbG4xKTsgfQ0KPiArDQo+ICBzdGF0aWMgdm9pZA0KPiAgaWNsX3Byb2dyYW1f
bWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gIAkJICAg
ICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiArCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRl
KTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19w
b3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX2Vu
Y29kZXJfdG9fdGMoJmRpZ19wb3J0LT5iYXNlKTsNCj4gIAl1MzIgbG4wLCBsbjEsIHBpbl9hc3Np
Z25tZW50Ow0KPiBAQCAtMjE4MCw2ICsyMTkxLDEwIEBAIGljbF9wcm9ncmFtX21nX2RwX21vZGUo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQsDQo+ICAJaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAxMikgew0KPiAgCQlpbnRlbF9ka2xfcGh5X3dyaXRlKGRldl9wcml2
LCBES0xfRFBfTU9ERSh0Y19wb3J0LCAwKSwgbG4wKTsNCj4gIAkJaW50ZWxfZGtsX3BoeV93cml0
ZShkZXZfcHJpdiwgREtMX0RQX01PREUodGNfcG9ydCwgMSksIGxuMSk7DQo+ICsJCSAvKiBXQV8x
NDAxODIyMTI4MiAqLw0KPiArCQlpZiAoSVNfRElTUExBWV9WRVIoZGlzcGxheSwgMTIsIDEzKSkN
Cj4gKwkJCXRnbF9ka2xfcGh5X2NoZWNrX2FuZF9yZXdyaXRlKGRldl9wcml2LCB0Y19wb3J0LCBs
bjAsDQo+IGxuMSk7DQo+ICsNCj4gIAl9IGVsc2Ugew0KPiAgCQlpbnRlbF9kZV93cml0ZShkZXZf
cHJpdiwgTUdfRFBfTU9ERSgwLCB0Y19wb3J0KSwgbG4wKTsNCj4gIAkJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIE1HX0RQX01PREUoMSwgdGNfcG9ydCksIGxuMSk7DQo+IC0tDQo+IDIuMjUuMQ0K
DQo=
