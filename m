Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CB29AE304
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C60E10E8FB;
	Thu, 24 Oct 2024 10:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blEsQXeC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39AEA10E8FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729767023; x=1761303023;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=aw0MWHsxNxeGHwim9vW2oB5FACXDyT3jaxhNpor5Dfc=;
 b=blEsQXeCmBHjwbVmu6lGWgyCR0bbXiY/TRSkXrUuC0Gn1GKJ16Lp7y6X
 t+RpbG5Sh83HhMD5gIAPZYza2XsTyqJUaXMz3MNq6XBMhAMXW7hHwBL0p
 +dRXN0D2ak7dMzMoOppJ2kEH+hpaw+GnisscEqmCgSKjGV0CXOsHnJaoI
 49Dp7PbS512dwSgB6NtSBh/rwxiazSaAIB7gLJdcY2leTJl+xywVSMjuX
 MlK6Ay3j7GJQ51vrt7N0QdQeye3Hao7kKPtHrLc1kksFCTVP9klWbx0FF
 pFE+QQv1zs3pObZ04nSlRLhWfJ2bnwaOW/qqBTF1ATeGbOnDh0yu945CN w==;
X-CSE-ConnectionGUID: DNCQWPa+TG2zDinu1NWCcw==
X-CSE-MsgGUID: qUbi2D9XT1yJOtJ3ONaIuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29319998"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29319998"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:50:09 -0700
X-CSE-ConnectionGUID: PVYaLEylS+ax1d7c4ddlNw==
X-CSE-MsgGUID: jLLG1QM3Tl24wV/n6fXU5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81374902"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:50:09 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:50:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:50:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:50:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zsbswq4Sb3qmLLVRdrXqbTXMUWsxd0IRQeDAuD9S7gvCqKkOoLvjBnc3NsCgFmuOqOsUkOeNdzYwg7FjV2D5ZrgKrPcZKcWeFzxzYmQunQdvJtsCmR/euc9NOA4qg/eNmyKWYa8eZ0Xn8hyYltbkLwEr7ch3hYQitzODvGUE0+/GgMmrqJEn47fUEeYHNYZim9Ak5MwF8qgkn1BA4xo0QbyLCw0NkHX6DYK1LYBcBh/IYo8f3i773Rru8s9Qw5m/pgBAVHL4k/t8y9WuvrIywd6fMVpsWeAOvc5CS2tamxhV0ps62REWloQx4Gmk7m5ulcdSs/eVFGBbQnOflPdgKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aw0MWHsxNxeGHwim9vW2oB5FACXDyT3jaxhNpor5Dfc=;
 b=nX21EAdQyUvuIgp6XS4yeYQaVXm0Dv0eo5/9rl4ACQAy/Iaa2WzCRNz8j/UNaQFQhYOz9NJwUvvvAKG9vKJXOx6de6ww+rwSc3xiOARyP2a6iq1lq0y96VZsHtgYdkV6HhXV0Y2PqqwbYqt23q6bJ1g1mouhdiTiarYvcRARh4coM4g0UhSwBgLdPW/ajH4i9dhR7q/4g9Wjv5ikDWNy3JLoNkSXx4Sd+STinArQWDFHUAdS9s0anjdLYJcDhKwVYOY3AsLhkP0lyK/nAqhdKwmO39Ka8nCl8s5UqgG5DZBQCW/TKlJ4ULvBFb5p4QVN2jIJnqe2PzXnbGbAMf7HvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 10:50:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:50:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Thread-Topic: [PATCH 6/9] drm/i915: Disable scanout VT-d workaround for TGL+
Thread-Index: AQHbGng/Te/2IGXERkiS3ASkvKxTxbKV0AeA
Date: Thu, 24 Oct 2024 10:50:06 +0000
Message-ID: <cf761598f491ed4567bd8937b2fca1593bce4e6a.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6193:EE_
x-ms-office365-filtering-correlation-id: 7087c86d-1f61-4172-3771-08dcf4199f44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?LzdNN1dQSjZzaWJGRjUxcTB4U3Y4RVlrSkNBMlg4d25hVG1YUUV4a1NGaHk0?=
 =?utf-8?B?aE1HQzI1ckxCdWlkcFl1N1BhblQxL2JwOWxubDVSK2hVT3RXR3JnRmhwUC9n?=
 =?utf-8?B?Y0NjWEdkU2hZZGdNYVlkUERBQmhuUUxDbmt6UUNiUDVqdmxDdDdYMkxzN0gz?=
 =?utf-8?B?L2NMajN4ZkUyek9QU3BiRSs1WnhsdmppQ2ZKTlNxcFptUk1BWXdJb29kTnFB?=
 =?utf-8?B?dFk2S1NDSGJiZ2ZmQkFIOXQ5YjdSdStweitpbWpqeTUvWUl4NlAvdWt5clZW?=
 =?utf-8?B?RGJER3lOWGI0WEhPSTNWRFBGT0FnMyttZndnMUJHcWVYbDVyOVk3L1EyOXFh?=
 =?utf-8?B?QkQ3VGdtTC9tVUpqWnFTb3cxYXFVZTh3ZHBjMStNWnJ2eEhja0wzblNPVFRH?=
 =?utf-8?B?eUpPaW5pQXZxSjZPUVZBaXVBVWl0K3BqWnpDSi8yVHl4Yll0ZDc0bERnRnNm?=
 =?utf-8?B?aTRXclFJVmdCZkpGTnkyTlErNVEvVVJSSVdMK0ZQRHNicnBwUU5UT04zTVQ0?=
 =?utf-8?B?b3A4enhmK3NKVXQ4NXVlZi9EU1hnUzd4Uk54VG16ZmtRY2cxc2hWYU1hZEts?=
 =?utf-8?B?SHBwTEdsYXk5Qm9ndEFibU1YTVA2elgvNWFPRDlJajNlQ2xpMkxpdElMRjJX?=
 =?utf-8?B?Qkk1TXBuWGp0RGxDcHRQdWNwaWZPbnlTM2JtakZxSFVsdFk5UnpTcHpVODFR?=
 =?utf-8?B?RnEycWUxWnR2WldMc2dyZTJBb1dVSm1GazJWT01ycDJKczJPY0M3UzlWeGxw?=
 =?utf-8?B?dDRkRVRabG0rUlZYZ3VWZkFFWEhwTUo4MWRMNzhZZ1VMdHpIUHVVanRYVm5K?=
 =?utf-8?B?TjVRV0FSM3phZGhGQm5IU0toUkJwaFVMVGJBS0pObUVzMXJrN1ZRZ3BPOTBz?=
 =?utf-8?B?aXVXc0ZhRU1QSHBJTDhTL3NkTE9JaDBzR3BmMWdzV1pIRzMvUHZFMVB3U2c5?=
 =?utf-8?B?enVZeW5ZV3hnWG5SMzR1VDB0dGN2Qk9zMFRxSllDTk03bUp3dWh2UG5oTzZH?=
 =?utf-8?B?OEVEbmpZcStLak1HaVIrZy9rUmdVbjR3blNKaWJmYmhzNk81QzBSdDVUVE43?=
 =?utf-8?B?OTBFS3RJVm80azA5T0l1cEIvOVFReDJYNzEvSzZtcTlwQnhOTXR2YzZiKy9R?=
 =?utf-8?B?NE05cEp4cTZWZ1R4aU9jTm12TlFzbU5KSWlEVENNSkRrSEQzMUw2aXZYNE5I?=
 =?utf-8?B?Y3hOaU1yZUlTcGF6VWxxQS9IbnJlaU1uNmFMNU1BNVhobThTSk8vNGVkZU1H?=
 =?utf-8?B?TVRDek4rRWl2ZE9OeStTYlR6bWxOcmtiMndQZ0NxMGw4RG85aWw2UGlkdStL?=
 =?utf-8?B?VW10MUNRTTBmUzlENzFFVGpuYXV3TTNwSEhJK0p2R2FEdjBwU3dnVkZZNGpH?=
 =?utf-8?B?YjFsTE4waDN1ZWhhaTFaM3gzSS9aU2VyUjdnT3E4RVV6UU12ZG8wSlFUNHVY?=
 =?utf-8?B?clg1czFwbk1XZVI3OFNGZ3k3OVdCb2JLL0EycWJDWFJTRnkyVUdHcW4xVnRp?=
 =?utf-8?B?eUQzaDROblFqN2VOeUV0K2FMNHpKMURQS1NZL3FaOW95TXNsaHl4aGdUSUd3?=
 =?utf-8?B?bllZRmhsZ0R4YzlOS3o1dGhlbkY5Qm9qYUhCZVZPNXlXbldvODlxaTFhSTVK?=
 =?utf-8?B?TExlQkQrY1c3MmxaNHhRRFpoR081K0RHaXBXZUp2Rjc2TUw3bW42TUZCeGhn?=
 =?utf-8?B?SFVoVFdPUXFML1JoMkJNdWNhZnZuV3lNZGNDSThtQWxNcmRSY1pZdHlvKzhK?=
 =?utf-8?B?R1kxb0htVkVOamNUMlBOYVFNL2tTTHArUE9NWWhaS1YvMk51eWNsWWdxTVBy?=
 =?utf-8?Q?I6QsV/LCiWhCe6OKkvdyN/idiDfOX+w9WwDCw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2hBejM4SUU4ZDVTNXhGRFFNQjlnYTZTS0ZIaFVmK1JxMERsZGg2bHN1a1Iw?=
 =?utf-8?B?MDNKcEt4eUtzVFNBS2x5MlZ5b0pFVEIvNXlCNDcyRkZrVnJ0U1hoL0p4bEdW?=
 =?utf-8?B?Zit0RDg1ckNUWEdPSTVQY0w2WXZiOEh5TkxLYUVUQVk2eHd0YkJGMGhEZTE3?=
 =?utf-8?B?OUhCcldDZjNHV2FEWFlQTk1SUVZVZm9jTWRWc1BTU2RBbzZGK2JWVE4wOGho?=
 =?utf-8?B?WVkxcEF3RkVmRUtXTHZtVWpqOTVwdXhWL0VZcjk3Zm9SeUJ2NXQ0TW5vK0Q1?=
 =?utf-8?B?Q1poelNvWktSNHFOMUR1cjZtVTdLbytWMVNCVWg0dVAzeVVlZFlEeFBjeVVJ?=
 =?utf-8?B?dEtsTVVFZjdhK2dvbUhFeFk0Yk5DVGlsRHV6d1g2NWxvTDVnWTJVU0poMXRB?=
 =?utf-8?B?RDBOcTJGTFNZblBkYzdjbFdFV21ETFNyR2o4elM1aUlhcURodStSNTEvYmc4?=
 =?utf-8?B?d1EwbkhrdG4vNXBSb1RzUDhpZ0VBc21PMGJOMEE5TWI3TFcvSStsdXRoZkFB?=
 =?utf-8?B?WXU5clRiNEIrc2x3N0dZYVpSTkwzdTZ5c2tIbVhzWlkxT0Y4YnJIMFB0RWow?=
 =?utf-8?B?UTBLTVdoTE5uM0ZJWVF5eXRNaFIyUTZMMnBrcGVqajMzdHp6Qm9vVWlWck14?=
 =?utf-8?B?VGJWRUp3NEl2ZmR1TG8wcGJrcUs2bnRibUR3N3hWZ1p4SmRVam9WeTcwamVF?=
 =?utf-8?B?aHZkY3Z2RlhxY3dmckFxRm5sOWF5ZGJ3c3FESmtUT3R6b1NNR2xHOFQ2QXJE?=
 =?utf-8?B?S3VmUWJwRS9OQTZha3F4QTJKUkJCWlRRSHkrVzF5Y2tIZTFUaDJRT0JtbmJT?=
 =?utf-8?B?amNjbWlMT2lhQ2sxRDQ2M0VFZmhwTjVaWC95blRYNWdzQkVKT2FkOWM1cmNF?=
 =?utf-8?B?Q2pybFJzZi91OFMrK1JZOW1VUlJMK2RlbVAyejl2dHNXbVJxK0N6ejI2cDBu?=
 =?utf-8?B?VjZtZ2lYeVlBU0ZIeUJXcXBOclQvdGg5SzZZaUUzOUFOWlgzNktVOE5ScUZw?=
 =?utf-8?B?V0U1dmZzd29oVmlMMXEzQ1NYaXVmRFVGZUxuMDA2clhzV2toaXV0OFJtTG1z?=
 =?utf-8?B?aFFsR24zK2x3WHlkUTlBWWRGd0s4UGtwbjNVWmZCeFZDSWMwS0pzRk05VzRq?=
 =?utf-8?B?NDFiM0JjZjkzMzJ1bnl3VUdqeXV4SzViZUVQVTExWFZYUzBvUmF1Wm9KU2ZJ?=
 =?utf-8?B?RzJnVUZCMDhrVzB2b3BnTlV4UDhPOUF0dDM5STk2QUE5QXpjdXhBZU5uVGJa?=
 =?utf-8?B?bU9VRk9pb1drVWpnZkZLK1NMa1Nuazd0VUhNaWxPLzE0OC94QWp6NENWYXYx?=
 =?utf-8?B?S21UdnFDUTk4TEVLSEJxSnBPditYU1k1NE5UL1VHOU9oS3hLTC8rZHQwTFdj?=
 =?utf-8?B?dzRBdlk5QWNiUzZyMEIxZ1VFczNjZGNKRVZrMmxqSHdFLzZnL2xHV25VeCtF?=
 =?utf-8?B?RFQrNjhBMUZ0enhFRzd2dWxwclhyY0Eyamh5TWt6Uk5oYWw4SkxqVFNOLzVG?=
 =?utf-8?B?MloxSUU0K0lIdVY2VWRycDdJbDhlSnduM3FaTjROd3ZoWHFUZzV6TDZhNS9x?=
 =?utf-8?B?Z3JPanhTem54eFBzc2tGbEZ4QzhpSWxnaXk0ZCt0SHJLaExjTlRUZzE0TXZ0?=
 =?utf-8?B?ek1tbHpHNlNGZmtzb000NWY5SGNuSU93NnRiYmlDS2g2U085SFdHNEl6OXpI?=
 =?utf-8?B?TmZWZElWZDh1bG96NFpoV1I2KzdPbDkrN1RDQzB1VFlVaG1mYktzSGVWV3dX?=
 =?utf-8?B?OE9YN1J5TUE2M0pOekc5Z2pSa1lKcEE0L0hBWUFZWVlveTd3dFVOVDBtb2lr?=
 =?utf-8?B?MTZwaEVudlIrYzQ4ZElIb09wbUsxbXV5akVkRjdjZ0kxZFVTS0N1NmVyV0NY?=
 =?utf-8?B?ODkxR2IzaHZUeE1wYTJUeWc1UHpOeEZLcDVTSVcrTThFUGpkeHpxZ241c3BN?=
 =?utf-8?B?dU4yNHl4U1F0WEdLbVIxdTdxWU9FaXpwR1RlR1MvNVNjSU5DK0lYcGhMMGR4?=
 =?utf-8?B?cnlzem41Z2M5YStRcUh2YWVBZmtxemF0bDk3R3pTWG40MkhzZVB5cWJOa3BY?=
 =?utf-8?B?NjU4YTAzT1BiUzdHeEQ4d3pSOXVqbHh5Mk9HMFh2WlBONGJRa0lwWXI3STQ5?=
 =?utf-8?B?TjVDd21ZSjZsbGlyVFJYY2pIWTFwZ21XSDhudFB1MGZIWXgzdG1pZVE5dWtI?=
 =?utf-8?B?Snc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E038064F7FA44C4D84664F5D5E2F3802@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7087c86d-1f61-4172-3771-08dcf4199f44
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:50:06.3099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6QHXS64cYhvXjZNnCe1XD/e0aRVvJz2aexJ1B1nfH1rxV9429AfHlxNCElSAk777sZbBX2m9CV3DGRAdnpdiSTRLrtnoHQrnCP+TtFksP8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVEdMKyBzaG91bGQgbm8gbG9uZ2VyIG5lZWQgYW55IFZULWQgc2Nhbm91dCB3b3JrYXJv
dW5kcy4NCj4gRG9uJ3QgYXBwbHkgYW55Lg0KPiANCj4gTm90IDEwMCUgc3VyZSB3aGV0aGVyIHBy
ZS1TTkIgbWlnaHQgYWxzbyBzdWZmZXIgZnJvbSB0aGlzLiBUaGUNCj4gd29ya2Fyb3VuZCBkaWQg
b3JpZ2luYXRlIG9uIFNOQiBidXQgd2hvIGtub3dzIGlmIGl0IHdhcyBqdXN0DQo+IG5ldmVyIGNh
dWdodCBiZWZvcmUgdGhhdC4gTm90IHRoYXQgSSBldmVyIG1hbmFnZWQgdG8gZW5hYmxlDQo+IFZU
LWQgYW55IG9sZGVyIGhhcmR3YXJlLiBMYXN0IHRpbWUgSSB0cmllZCBvbiBteSBJTEsgaXQgYXRl
DQo+IHRoZSBkaXNrIQ0KDQpBbnkgcG9zc2liaWxpdHkgdG8gaGF2ZSBic3BlYyByZWZlcmVuY2Ug
b3IgaXMgaXQganVzdCBzb21lIG9mZmxpbmUNCmRvY3VtZW50YXRpb24/DQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggMmFmZDEwYmJlN2I4Li43YzI1MDYw
ZTVmMzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IEBAIC04Njk0LDUgKzg2OTQsNSBAQCB2b2lkIGludGVsX2hwZF9wb2xsX2Zpbmko
c3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IMKgDQo+IMKgYm9vbCBpbnRlbF9z
Y2Fub3V0X25lZWRzX3Z0ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqB7
DQo+IC3CoMKgwqDCoMKgwqDCoHJldHVybiBESVNQTEFZX1ZFUihpOTE1KSA+PSA2ICYmIGk5MTVf
dnRkX2FjdGl2ZShpOTE1KTsNCj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIElTX0RJU1BMQVlfVkVS
KGk5MTUsIDYsIDExKSAmJiBpOTE1X3Z0ZF9hY3RpdmUoaTkxNSk7DQo+IMKgfQ0KDQo=
