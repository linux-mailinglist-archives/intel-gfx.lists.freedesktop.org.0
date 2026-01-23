Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BquBPFRc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:48:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6105974906
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BC510EAA6;
	Fri, 23 Jan 2026 10:48:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGfj34Kv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA69210E297;
 Fri, 23 Jan 2026 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165293; x=1800701293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f1Ao08ZlEcr+eMIUnrfqzAfKdhoBIVHvO9VB0tR1oHA=;
 b=BGfj34KvwrHEA2QHnbJ0yaA8JwWPCtozR1dyf0AZ4TQ76FXMasDcLdmK
 ugASMgLqE6PghW6Rff9WVgpr5ibEU2XtAtGvKbxxp3A+Z3l8U2LHSUZlX
 RtqmsVoIpdFH/GmEcJqbeHyM1efUJFCdmDqC6jJgP6R0x88xFWCslQvLt
 qM+Zpg2NZnJJc2YOlV1q5RFT54diR3V2QXkwVqlzDRK5QmsBCl+6q06am
 4aA/mgbaHVuFC2VcVlbcJyEeTHk3xGcp7FfUKiahikfbBgSHpbQhyq54C
 zBG6NazmQ16o3bv5bm5Uyeij07oH7Qc89MCIIf1/TFLLG1BrDteQqm7Gm Q==;
X-CSE-ConnectionGUID: uf7cvlM2TmyHx5v+pJsV6Q==
X-CSE-MsgGUID: AedCHlMySmOPNOzGkvwYIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="81529721"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81529721"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:48:13 -0800
X-CSE-ConnectionGUID: lzRUtgAPSqylMuJbZeE0/g==
X-CSE-MsgGUID: zZ8nf+FkSAC9ordfQ6He1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211459882"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:48:12 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:48:11 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:48:11 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:48:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JhLCvEm83QpKcBEFFwEip4DdkxjTf744WTxV+D8gXB+h4rMssXI3VgdXMjjmUuWSeOBd4dVlc1VdtV8CEgDts/lEjEKky0Fs0zp47QskUBO7x2OBEv5x1/MBLf9WgtsLd4gDjCnRSYrZmit1gEoHQxcECCRAmqbYU3BFSFwXOsLngE48VCV8tdxdbExBW6J3nY2ldYUDdN8PFmXe9QWFMOgO8jMEoDSpkYrfcsNGYBm1mqu9NvU4t9eGKza1TmYFpBg4DwZmfAkUkhp9JKGU9P6pJo1NVavN+JFyORCgTz7iXcW5jaF9Hk6EqKIjZuFRevzeadjPq70IgvF0sjTmJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vtv0q80U6ybpTtX6wcfgWLlDXUgBhb1fkphxXTtC8kw=;
 b=Afrwuh2rHDscNcuuVrj1l2s0lUgt9HwRNvvL+s5FuKNt/h83/y3wdRYrQNgKwLBX5SV56HdQtiK85/zp3ne7BdKqCahod9n3u22NGCHP2JOjlpQLmYp5Hec7PZmR1iuJMKFVxdjZdp0pE2Xy3Dsezs4Z97ZYenEuIUZ2I9TF+CwwOYyYSFPxAPs7B9odTNpwL+OPmiYF3n03RYfWv2An0aFXKuLvEEMnZsr+FH7W7sT8XdSk9bm3ZC6fn66iBKYWD1c2220SZX9iWuWQwSy6dDos5XrDqF2Ja4SEzDA8eRv9OfRKq8LcS/Q6NaiuHdbDaZfnH1TCYbYSp3bpBg1CPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:48:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:48:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 10/19] drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
Thread-Topic: [v2 10/19] drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
Thread-Index: AQHciyrrVtZo4D7yAEi/o4JNEzv4jLVeFwOAgAF+B1A=
Date: Fri, 23 Jan 2026 10:48:09 +0000
Message-ID: <DM4PR11MB63601068CFBC889EB00BC7E8F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-11-uma.shankar@intel.com>
 <5e7c148ebdff10f12bfb3972671a44420c0bfbca@intel.com>
In-Reply-To: <5e7c148ebdff10f12bfb3972671a44420c0bfbca@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: 6facbcd5-623f-40b5-a82a-08de5a6ce5db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DKEthky9cXMqBG4pnB7CD2hP4GzbkMryD8CzeOCQf17VLG/Vp+R7hg0LnuBQ?=
 =?us-ascii?Q?acDBNgBQbc/cmLRLM344vDi9se/jcWFEoByc1MguCuO0ZxVfy+zYbzWemSPY?=
 =?us-ascii?Q?jgFP76lHmaugy3R63q7AhiLr9sB3c5nm5Aw6rL0zsjro/t8zHQxyHL5x2bGb?=
 =?us-ascii?Q?ZlkEtRJcDoFgzMBWkWJ373CMfFXkQURCkEzKxxb3JjtIfLG1AfL/hTPOLPZi?=
 =?us-ascii?Q?tQrv8OEHd1I28Xdzq5tA7fe69X07fdCfWca1UxUAslGvbd8X6QqI2DCrsBAC?=
 =?us-ascii?Q?oblgiYK7VXuELqCxiLrG/bleFPKZaxJ8tia9Pv5uM2Ej9a/vtHMQdxYKBtOL?=
 =?us-ascii?Q?Hysoz9XnCyRyC+3LLKYyqg9Hf23zQpfNKz94nKbPS4RNflNsmWWQqbHHZmfV?=
 =?us-ascii?Q?xXvSNsUtN65M2p1JAAvFM3Z35jCE/6fE88JDodUQRRGgLgVbRQxPtz/2qvDn?=
 =?us-ascii?Q?sS9412JCqVFdngBd73CuK9HfMmMVTmBjMR0cj2qxNLtl3JND7SUTh63kJHE9?=
 =?us-ascii?Q?zZAp/WxWbWbL+HI0irzndV4MaxzMppTYP37nO+vPNr0inq/ElaQSH6Z4ixAq?=
 =?us-ascii?Q?cR3UJrnCIbHCVCWoGoWmaVAtBBwqMTn3g0eHFBHE6db+IDxiu6/JTQuduDFI?=
 =?us-ascii?Q?hgaix4UkcNF8Y2tCBvbxPfqQ1yNEK170fx4jRtM6LIFo1qnZsKEscEgpthZ+?=
 =?us-ascii?Q?DKFFf2gPDvD4H5+cVpggOvBwm09FD/IfUnKekiIrK0iPPzCzCk91pdQYGPSx?=
 =?us-ascii?Q?HPYEa/Sb1efSaYRKThHu6tMPKYSEb81UUlVAMJLs0xhJL+N9EDtnAJXSzoHV?=
 =?us-ascii?Q?UW+55s/J4j4bGJs+RIf9du0JM08feAEcXHxogkpifwhBV4wkhIqwZiT7Qi4w?=
 =?us-ascii?Q?DOi9jkmKnrm2d/UAJJJkFI/SxyhBFeYYlLJBrLjOxTBgjbvyqvvNl4Gl4wVb?=
 =?us-ascii?Q?3NNiM9dyrWPwy/xBCRUSud3paphy9z/cy35urV68xxlEYzaHU//dymq3cOAK?=
 =?us-ascii?Q?3tvtnSJGBz28Gx1KY7okGSwEAebFFkAd+HTvUARfb1CTatnG0qDcdUaUtzJ3?=
 =?us-ascii?Q?f0ezUI1w23KBtpGaUwXX1WLLlH87GrIFU2wKtbhz5GCKL9fUPHB5Y/ulA/1/?=
 =?us-ascii?Q?mlgC/U9GOrFRhANhEJFy+EOMisITUTUInfpP5bcbQ99xstr/2XU+ECPzwLuz?=
 =?us-ascii?Q?95825EBMqnfVEXOoeARx5BIGd94g6Xd0Mq2Dfa6uTroYWcrpp7YYRBblJIMK?=
 =?us-ascii?Q?NkUm0v5XDQXcptDoKOmmwpinwO2l6P6ENrPFoJxdx9uyvi0bvYNhhF+qNIOq?=
 =?us-ascii?Q?gbyuc+XIhDjLlSx5ifWUdyOhw3rymV/O0d0ZjrKLN9uIQ0N8fyw+1bS1vB4V?=
 =?us-ascii?Q?p8DMYsXiTxi9ztzGZNENKEDq+ewE3l3URHRxYGnba3dz2UcK/wjxhvLKRJKJ?=
 =?us-ascii?Q?IYuDwnLWrUu1iqROwqEINnjgS5s03W091js2YfVlQ0Y+HjuzdTj+tD8Ab/M6?=
 =?us-ascii?Q?vRVTdh26z7ZjehznaVCdloGIsviI5POO1BIh1c3HBT4/8fgrv+4FJNdY0f8m?=
 =?us-ascii?Q?v4qYCQ2SBDZayfjpPW2j3SxOEbkYDCoOYPEzqFz/lRzJbBUsInIy4G70sTvi?=
 =?us-ascii?Q?xn+klYb4KgK0PPmooEtjJBQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5kQSxGnnpgY2HW/XGIoOk6nAEKDCtbWjRV9/9DugIoeZIr0gADFI3lLQzZSz?=
 =?us-ascii?Q?fkAZ3E+U79ArpWiUuAO8qXtl3I8l+I9lD5ORDfFWF2U1hNnzE/AS+UOJo6rq?=
 =?us-ascii?Q?ZhZrw23NFZGvmzZeL3aYIN3zKFIupBIwfsI/sHUsIFZOS84ba+byzkmrlyhF?=
 =?us-ascii?Q?XgRfc3/Fwi3c9dMVbCkqeERpM838V9+WDPdkxhBAFKFEVseUEnZmy04D3FZ5?=
 =?us-ascii?Q?zcqJeVYv7ONfyTmfFpaUHAnNvXqGPZUlomNo5iwbOIjEX3ptjJ/fZjcZGR2B?=
 =?us-ascii?Q?DfqLADS8VrugUSW1bK/JO5Fk28Iqf4OQltrCT4aVyyPvIktKx+ARY0TgIU88?=
 =?us-ascii?Q?waeU4rEpLRtNLeZaDHOMK2ylNry0vDCURausfRVm+FLruEmh8ql70wr3hqCW?=
 =?us-ascii?Q?ndD6wcyRdIIAVAiRYdCQR9dBc/z+e73oS+zt01XqV7oeNk1iPV6TVFaouZ7a?=
 =?us-ascii?Q?XzEJrWSUSoZGJCRKYAwLZgPCXL9ANUNECz9vIIc99zWTknqcidi7fSVLgPBt?=
 =?us-ascii?Q?fV2BJqpvwEmG+LnCmF0ilgBW6tr3RVmNyPFN5d3tSmLQOPDdfWF/HoWphtmd?=
 =?us-ascii?Q?Ic7zAxgAWrwNO6w6zj2N6uaHajikISNwF0dQqj93r20hpmNeqWkNgKOwUMXW?=
 =?us-ascii?Q?UtXIJ+LePK0wl5zVoCQJWuepnOWVAEMCmPEgXnHeEH6SJpQuvzvnqLPwpr2C?=
 =?us-ascii?Q?J8lukas0/7nvo7L32/GAd8NUDuaNqU2YzVbix9QLCs1t+5KHxQibhtzREd9l?=
 =?us-ascii?Q?XjpjQDqTlbp/lgyaZyQ29zADeSqp3DY/+o6+a7gv66SzuMUo2VEXmRnksJZ/?=
 =?us-ascii?Q?YxhAcYFbh6xfRaI8R+aVV64vVZrnTi5zOCYj99HIbgMGm+WkRt7s4y8s5n24?=
 =?us-ascii?Q?Qa7T9FaUZxX7/VK+d3iVFWSaLbIQUkx/D9HgrXIMD+NnCWbPSEurqS/w2IJw?=
 =?us-ascii?Q?53xFjuCZmI3P2fav5eZYYvk3aS9rjJJXtEHkjW3k0pMCL8ETMB9JoutYid1i?=
 =?us-ascii?Q?VIZPxmFMxFwkw4w5RvhqrFmQjCuXg5RhOiJMI1wX9ctSJuckEPx5VwZiV0iU?=
 =?us-ascii?Q?/6KCDCg6RQTOZlVyaojUaYox9ksfpgVetWpD4x2VDWF5vIuRlnmHH6Ju7D4j?=
 =?us-ascii?Q?r9wWDfH94s1/2+1SZvgsPRVJnEb089NdTKdycNusbm7EOEwcow/Vi2Gbym06?=
 =?us-ascii?Q?HSCGKW9M83p7GdYksxvs0txhn3p4YlaodutTlS1aFPH3U4uPjEUh6Lg7E46E?=
 =?us-ascii?Q?lrWD0UDBw2AbyabhcDgIWcl6ZgBt/TVF7izmFvS/iueugQkY+wLy9TFgPnGu?=
 =?us-ascii?Q?90fCXCTnT0eD+VTKvEStj13vDi8YGJneJo5Fx9P31iUiDP43+KG9t8j2viOS?=
 =?us-ascii?Q?LNr9LsEYVZONMgnK8NNIe5OS6vFMvhiAQ08xBYoieme2r9xMs60R2078rpAJ?=
 =?us-ascii?Q?J44ZXupDt4TTHIs6On9r9EEh/oXnGyuxFCUJBqVfyNfGhT+n4rTLBvUkcJ7s?=
 =?us-ascii?Q?5LIiY2KZE9NjqtLqkfyEya7wDk79m6DCa/vKqTNe5aQ15AxbrlOOa/VtLfzx?=
 =?us-ascii?Q?PA1Wq2yRPkJu5kS8aNuUHXaGphVx2vHaUlUS+qZVboiJ1fCxcwcaKAQLbrX2?=
 =?us-ascii?Q?YQ6bszLtgbmyoFgXp/LJj80dGjbV4dNZMbn2KgpnZGwiQfr8hb4rZzMZ9x95?=
 =?us-ascii?Q?pYZztP4+7B2iPN36ShTmOuf5KuDUWBFUJDKY8G+F2Y5LPodB1Z40uW+2ZSA/?=
 =?us-ascii?Q?oyhhvrctmA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6facbcd5-623f-40b5-a82a-08de5a6ce5db
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:48:09.2087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lPuDPezbHgaEiC+PM26ENGQWTy7QuhV102bRa09/kBB5NUi8kt7SXY7fOUZBSZTn289KGaioR/ziKxtcAm33gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6105974906
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:30 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 10/19] drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move DE_IRQ_REGS to common header to make g4x_dp.c free from
> > i915_reg.h dependency.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/g4x_dp.c            |  2 +-
> >  .../gpu/drm/i915/display/intel_display_regs.h    |  9 +++++++++
> >  drivers/gpu/drm/i915/i915_reg.h                  | 16 ----------------
> >  include/drm/intel/intel_gmd_common_regs.h        |  7 +++++++
> >  4 files changed, 17 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> > b/drivers/gpu/drm/i915/display/g4x_dp.c
> > index 4cb753177fd8..b2b63e811776 100644
> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > @@ -8,9 +8,9 @@
> >  #include <linux/string_helpers.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
> >
> >  #include "g4x_dp.h"
> > -#include "i915_reg.h"
> >  #include "intel_audio.h"
> >  #include "intel_backlight.h"
> >  #include "intel_connector.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index b26e6a4ee1c3..eabee5abc23b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -3104,4 +3104,13 @@ enum skl_power_gate {
> >  #define   MTL_N_OF_POPULATED_CH_MASK
> 	REG_GENMASK(7, 4)
> >  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> >
> > +#define DEISR   _MMIO(0x44000)
> > +#define DEIMR   _MMIO(0x44004)
> > +#define DEIIR   _MMIO(0x44008)
> > +#define DEIER   _MMIO(0x4400c)
> > +
> > +#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> > +					      DEIER, \
> > +					      DEIIR)
> > +
> >  #endif /* __INTEL_DISPLAY_REGS_H__ */ diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 504ba9b2fb5b..c0c2fab99a47 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -728,15 +728,6 @@
> >  #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master
> IER */
> >  #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
> >
> > -#define DEISR   _MMIO(0x44000)
> > -#define DEIMR   _MMIO(0x44004)
> > -#define DEIIR   _MMIO(0x44008)
> > -#define DEIER   _MMIO(0x4400c)
> > -
> > -#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> > -					      DEIER, \
> > -					      DEIIR)
> > -
> >  #define GTISR   _MMIO(0x44010)
> >  #define GTIMR   _MMIO(0x44014)
> >  #define GTIIR   _MMIO(0x44018)
> > @@ -864,13 +855,6 @@
> >  #define   MASK_WAKEMEM				REG_BIT(13)
> >  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
> >
> > -/* PCH */
> > -
> > -#define SDEISR  _MMIO(0xc4000)
> > -#define SDEIMR  _MMIO(0xc4004)
> > -#define SDEIIR  _MMIO(0xc4008)
> > -#define SDEIER  _MMIO(0xc400c)
> > -
> >  /* Icelake PPS_DATA and _ECC DIP Registers.
> >   * These are available for transcoders B,C and eDP.
> >   * Adding the _A so as to reuse the _MMIO_TRANS2 diff --git
> > a/include/drm/intel/intel_gmd_common_regs.h
> > b/include/drm/intel/intel_gmd_common_regs.h
> > index 2214cee38cf7..c8b2b5b2739c 100644
> > --- a/include/drm/intel/intel_gmd_common_regs.h
> > +++ b/include/drm/intel/intel_gmd_common_regs.h
> > @@ -148,4 +148,11 @@
> >  #define I915_ASLE_INTERRUPT				(1 << 0)
> >  #define I915_BSD_USER_INTERRUPT				(1 << 25)
> >
> > +/* PCH */
> > +
> > +#define SDEISR  _MMIO(0xc4000)
> > +#define SDEIMR  _MMIO(0xc4004)
> > +#define SDEIIR  _MMIO(0xc4008)
> > +#define SDEIER  _MMIO(0xc400c)
>=20
> These are only used by display and gvt. I don't know what we're going to =
do about
> gvt in the long run, but at this point I'd be prepared to just include th=
e necessary
> display register headers directly. This is what we do with all the other =
registers.
> There are no other users for these, and IMO shouldn't be in the common he=
ader.

Ok sure, will fix it.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> > +
> >  #endif
>=20
> --
> Jani Nikula, Intel
