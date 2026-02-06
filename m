Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBnNHxuBhWnpCgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 06:50:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C3FFA73F
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 06:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D1D10E34A;
	Fri,  6 Feb 2026 05:50:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PsuGUNwc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9447B10E0A5;
 Fri,  6 Feb 2026 05:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770357014; x=1801893014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cHEBVI5K8yFPpWV6D/U47dRaFvI3zdkYgas/rkaYc+8=;
 b=PsuGUNwc36JXeUX8E0w0bhIWFovjG+nhZ6A19kwMmvNidJ06AhAYTp5N
 JIy0M9k7HdkFL2MCmUkAibkxtKnZ6yRVcRNnDZbzZSCM4oORRV9H2u+M7
 p4uNEVpjIydu3iaHJ5I93ULhi3QlJGfWiRjpjMbp2VsBKwpmvfJPN3C8Z
 ObMYkyYgXEu2S/6ZedQOyzZCj1rDqZuXRkPl+hp+gsbUTYN9vvRVZzqbf
 5m61YeysCz5SHmTb+FmrM8aSewBErCvX8i2g8/S/MCE5jRRlHQ5NCbEbf
 oimMnKsBanA5panyk2Ohf3F3cFPCiQ/bV9KNeAfSV+7ztOcAS273qx+1H g==;
X-CSE-ConnectionGUID: CZosiyjbTBqXi2YGFaxW1A==
X-CSE-MsgGUID: 8hjHQnF+Twqp7DbIPk9aSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="88987078"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="88987078"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 21:50:14 -0800
X-CSE-ConnectionGUID: UIW49BaIR+uii5ncRQwWRQ==
X-CSE-MsgGUID: E8w7J4fjT5CXGnsDCFxF6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="214941406"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 21:50:14 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 21:50:13 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 21:50:13 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 21:50:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PdrydP9dpZ9NXIK7SEMha1PPOWkIQDWMurU2NKg0p4QPQ8UzvuHkP2PWye13EvGlUNkVz8S6g9mmBLTfhfVXo07IE7Z5232zz8sbqFaE/VO41ay8vdHQCbROUTTXIksAKYSjOWf61zMnWRAE9rdnL4yN7zMNM/PIawLlUyJz0d60fYS0GSkiteLv0Lp8OfZhZz/wl8A4kUx+Fwy9iWWD9BmfwXS9DOTvcC0RDiOfaIU0HjBX8fhoHUZg6Okd6+Q3Mp12iTzH4M8O7ThDfe1IJyaM1UDBMpkqfPXpMo4uVnHHwrt7HQz5W7mqS1iPI19+2RvnZvw7yjDFtuLeKhRq5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/rEzKdl5mOyMN4G4O0TJPTWcCbR/h7LPAqzJXZE+lPw=;
 b=RT1L/rR7t6tlJ/wY7U3wJGnl73RBRZ8yPx+p7v6pxrJG8OqZWbNIRQH/4i7eqsKOdWw/xJlrvBER7EsoUVeFa0NTmees4lBms4/J1MBKoLBFMGkqOCzdPtsJJTNotkrQOibT2gv/RrN24TJWnhEItuIDIvTfscYxCTsUso3Y+8+Fj8OuDM4Ct4Nby/QVxzWRN2mo/4FDzjLAA2rrLUGzI+LNX7bfS0bvqQ4MwkYqhLcXB2SDipG+FoiaXaYsj9FpekfVGVxesybBR4XarlbLMULPAZvC1eAjK0Gt3lr6i3A86arCBjKenM/1xMtU99J/TH0foBrTf6v3496g09gHNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.15; Fri, 6 Feb 2026 05:50:11 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9587.010; Fri, 6 Feb 2026
 05:50:10 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
Thread-Topic: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
Thread-Index: AQHclRdLTO/HmMHGJUujhdfE8dk9JLVzzeAAgAFdwhA=
Date: Fri, 6 Feb 2026 05:50:10 +0000
Message-ID: <DS0PR11MB8049BD744BCDA136059FCAD3F966A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-4-animesh.manna@intel.com>
 <746f6f569f7398cc24be1ab11dfcedb50c30880f@intel.com>
In-Reply-To: <746f6f569f7398cc24be1ab11dfcedb50c30880f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DM4PR11MB6455:EE_
x-ms-office365-filtering-correlation-id: e398ea70-6ebf-4654-cc52-08de65439730
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?UV1iSEnlGwiPOmYfISGr1z2lzb2tenZKFMlf2pTOcutcxQdNv5KUlp8iCNs+?=
 =?us-ascii?Q?Y4V6Hs7qFABhywPiBqooEGokQeaudDA9/i+NzMWdBOGfG4H6L3TYt7ON9e0p?=
 =?us-ascii?Q?pG7ORhd93f70I9ag9mIKVuFYE8+N2JasvffYlQ+9zd4JZAzuhAz7ARl2KPk4?=
 =?us-ascii?Q?6+kTCSfeXbj7jHC10XXk9R064fYJ52d3erzdjRfR6+kvgp2+v4jF1Bjlx4Zv?=
 =?us-ascii?Q?NZzGNdU6w90/80yMQJU8Kz4MU/A3Wa6WclJQLVmtbF5LSZbqeUfUuD94GifX?=
 =?us-ascii?Q?Iyc90qPc8lvImbD/zdCaFzSqJqPiMDOB/qyXIY6W7tlgNJz/HeNyoNzDhDTi?=
 =?us-ascii?Q?QYutky5V2w7KP/qzimUDYhT/FBPb3Ivctt6KrrCtTS94NB1T5XPNorvc1LMn?=
 =?us-ascii?Q?2vD0JHB50blp8FXvosCwo04ETgJSUT5z14Dfbetp5YsvAzlm5hgOfYRNrbeG?=
 =?us-ascii?Q?jNtf9NF9aujtTA51JmOilLYwpaX8TjjfNrCX7ELZG0CVf65dvqcwCKRtjetU?=
 =?us-ascii?Q?Xxhl7vljLZMg8oBOPkofN0s5qyjhebtRrvx9L9mk0aVE0ctph0+feJqrtavN?=
 =?us-ascii?Q?leOOXuBbRWrijEgLe6MLBCfBoCyyJDXC8beC4vkKhs5Pqtmv/hNQJI5iecdL?=
 =?us-ascii?Q?1C4/rQOEKOVlCWr/TNjsUjT2V62Xn4aKLGlTR82mhrZalEZEsd1I9ev4GNZ5?=
 =?us-ascii?Q?Lclbe/f0W2eSLFXIXXjZUDGJ2x1BLCRI5ALSLhdk0wuFaNhxxoVOhkM45U9e?=
 =?us-ascii?Q?zVoWrrKo5PT1JoWpYUmYFnYZ3Grr2fSP5r3YcPAnyU7q1Rh9Tw4ZY/Z+3T+4?=
 =?us-ascii?Q?1VQRGI2hIT7zcs50OdH+zkMjFgIbtsssfdg5Sqfzun3YwsNSrfdFhk+WVh4x?=
 =?us-ascii?Q?FqRFL62Qd/Zqjv/aq5zRv4wKuNIJxFNtiLTWwFkAesDt+IfVBYAo89/3c1tD?=
 =?us-ascii?Q?xNhcIow7RkZ9zxoXsQy7GMO/6Co+UmPlErh9Ml9eT+Xq/yLw7bkw42lbd5T5?=
 =?us-ascii?Q?0KzSUsYiHmNQ0JR1XaqEnDW/DwAPb/srRYi7QcJc7Dbzw4Hf4vmXf3ZlL2QM?=
 =?us-ascii?Q?mR4q4/roFPaJlP3QFE/bsfILw+BdzTdzFpOISrKSdjwy0xltjjWLZXfanjLq?=
 =?us-ascii?Q?h0heVO/IU8po9vBCmnc6+vLU6hjtbOhCPvpnxVyxySzbMoyNgBDWaiIX/boi?=
 =?us-ascii?Q?UYEkHYMraSXJLd/T/bgEbBTBcoj4PF7Ax8Cre1yXGMC8rxKtzZGAFE1vUP0i?=
 =?us-ascii?Q?fgtAVKwc1bzGHbextthLUZPcWEg6a4lh8EcDxjym40AgpgjWnQQLy7kaj1oX?=
 =?us-ascii?Q?+dX3rfgpR7D8cf1qXwyX9AJtz9bm8txcxUSjQsDc+DKF7KTpArufBcW+iSmW?=
 =?us-ascii?Q?UknuSj300ZipNz4mVJ37z1DltdquUqp+aeJ1yKxWPvM7+/PltoQ7GHXsxF1c?=
 =?us-ascii?Q?tXUY8/C+opeKaWbnzy7D2RA1WRY/vC8H7vFvxFjS9qOBl1utQSH6acw3YHLY?=
 =?us-ascii?Q?roTk3j8RpUzih+FRxfWaUbz0zh1eWMoP/hfe4Q8u2nKThOp6EGwPEdBI0XZp?=
 =?us-ascii?Q?KvYmyTzkqC38eECOpfi9OCRjVHcYP0s/iINvSb8pl/43618Ne9JFNbC9RivJ?=
 =?us-ascii?Q?E2jmn2wbqiP040+QfOThYRg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?76HerrsCtSsGALAs5qrjsMbS7k7fpvwLkb3cIJmERLh+fvPXwCpTk7oMNfSZ?=
 =?us-ascii?Q?SUmslN9rHz4JPM006KFM55pHxnBBZxluADqRzOkQ2KwXDgjq6S81Fjla5oeY?=
 =?us-ascii?Q?3CWIq4tkL8ox+HcMXkJm9ujy4quiBbt08R48ETaq/65JHfXlUb3/qTAXRg3J?=
 =?us-ascii?Q?TgI1qv4UJZ9T/FiO0V2VkUTEm0XTpAZYeRaabz84nrcRkv+R0YK4BDm9hoSz?=
 =?us-ascii?Q?3IVUAeru1eujpth9Dcz2SCk/em4GxCKmuFe11+LcrDwE/KNz/tL0D7X62i8y?=
 =?us-ascii?Q?sygJTx4+ONK1YOHcN6NEPaecd8wEFHFYze1aFbydWucOS9LwW0lXA5RpO9s+?=
 =?us-ascii?Q?cWaILKIj4yIF/wpaBlxHoXsRTO2GCPiObcNNPn0woHh93Kpr8ZQokUtU/dxo?=
 =?us-ascii?Q?jPxL8taMbO4PU9Imm+NXkKhNp+RJM1fcp+xCwR6cRDN3pb3ss/IYUyVPQWE9?=
 =?us-ascii?Q?4gVjZ3tk7lhjDwxmVzeNZsBD18+t6L07UlUnlydDqCAvmUjO4Z6HheY+CeK9?=
 =?us-ascii?Q?was7u1hyhPr90/aPXU3XIudzSUDSGcArJcPahIobocRAUwn1NZA8TiDGlcw3?=
 =?us-ascii?Q?ESrGWpcTyk/zKLutd4Zvu2dC749RtB2uXaOr3KhZ+EN5Z+Glys4vSxKgyaxx?=
 =?us-ascii?Q?R2C09pf352L2Gx31NnuCI9UnBBgMaVVY0gfj5G6/8/gCLPJ4kWRqzlg4rQKd?=
 =?us-ascii?Q?a9JBDej2qV4juo4g1BqYGDxLIkAuSsMeDF2umjjYHfVCcAxWFXvQXGTtrVoM?=
 =?us-ascii?Q?KmHNSr8CcX/cU0C6LiK2v3o1nWlj3hyGKICdFxecOqoI7AEzdGqQsWIo55Mw?=
 =?us-ascii?Q?h+BIDIYovHREaY/k62LOWeM8/5CCxTKonBkpnLjxZO0TY8nVZwRTrnGrBgke?=
 =?us-ascii?Q?bc6Zd0GVo3XqMeCks7CSYFgE1KCYyHuYNhK3u6Bk9T0+gEO+5EmaF4mnYnl6?=
 =?us-ascii?Q?f8XmY7B2vkUEF53rfj3XXvRCwVdXyLaC4/1T39jVPdVy5ojD6bixHvxKnLk0?=
 =?us-ascii?Q?ADsIWLY6HcBjvf1xbkLc24fcR3x1NcLB2XGJdYnzWO9BQ2Ty960wmwV1DcX6?=
 =?us-ascii?Q?25ChjVQEyzAtSd7WKg/G+bKYdyzykLMqd+LUkBoUcLSEqC54OUarztDGTW5z?=
 =?us-ascii?Q?G35bunJ3NyPzCx7EmR7TXaC0fsEWmh6NcgJKIiQWrvmxbqTBjc/9zPJoxG1P?=
 =?us-ascii?Q?Xg+kB6gp/86BxhjTleGgDlo9+NS8M8GMXUajhYAGi4N1w7oT54fGAFmTRcaE?=
 =?us-ascii?Q?9i/sL9twUqj7vdbIp/P7IcS0ZnhsKC72+91tNun5d9quMosKv0IHpxnQTpiH?=
 =?us-ascii?Q?oaU8ReYg50n0L3aGd3i6erAR+eB7lgeJaJz0kK1FHOJ3h7ie7R/vL7afCvS3?=
 =?us-ascii?Q?5LLDW44SXT98AQDNxWE+b2iJ2W1x9eOrIa5wWJ0UijoL+Lk+COYV4i0DQDBA?=
 =?us-ascii?Q?qmfHobrV2xp7wMy6lRPXr/U7lK7bcA2hEGid3uwSjz2UJrzOp7OT1T1E8Srn?=
 =?us-ascii?Q?6EuDl2Ow9JVOWlC4v9dyYpdmaGQ+uKO4dy4K2mAvaM+buZLchGozzSfAddrW?=
 =?us-ascii?Q?/jUHfVjfqNGNYTDyMW3TdxkVx5xWIonoRdXB3gNS+2Xy+wES5o9S42wVqvQd?=
 =?us-ascii?Q?cGlsKkMgQGS3rh2xhh1/AQ3catofu7n0vksNs8uw6cF5P5pU6s37WDsqtvdy?=
 =?us-ascii?Q?xsjE/AkbqGsSocdJcV9RiwbYI7nxmAWDBFIQKGiApQCsJaaOit8iRCPWeS/0?=
 =?us-ascii?Q?ASUXp2+H4A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e398ea70-6ebf-4654-cc52-08de65439730
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 05:50:10.6742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 25q37QAseNcLF1i1YFdNNh9zwAArykpGDnfl89Dx+6NeH+9fgXyiUMXu7Clk6J7BR+xE7qUN4LO6v7T/kMa4Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6455
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D6C3FFA73F
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, February 5, 2026 2:17 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
>=20
> On Tue, 03 Feb 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> > Timing registers are separate for CMTG, read transcoder register and
> > program cmtg transcoder with those values.
> >
> > v2:
> > - Use sw state instead of reading directly from hardware. [Jani]
> > - Move set_timing later after encoder enable. [Dibin]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > Signed-off-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 24 +++++++++
> >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  7 +++
> >  drivers/gpu/drm/i915/display/intel_display.c  | 51 ++++++++++++-------
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  5 files changed, 67 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index f5364f5a848f..4220eeece07f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -207,3 +207,27 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
> >  	if (clk_sel_set)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> > +
> > +static void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +
> > +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder), crtc-
> >cmtg.htotal);
> > +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder), crtc-
> >cmtg.hblank);
> > +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder), crtc-
> >cmtg.hsync);
> > +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder), crtc-
> >cmtg.vtotal);
> > +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder), crtc-
> >cmtg.vblank);
> > +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> > +crtc->cmtg.vsync); }
> > +
> > +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state) {
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +
> > +	if (cpu_transcoder !=3D TRANSCODER_A && cpu_transcoder !=3D
> TRANSCODER_B)
> > +		return;
> > +
> > +	intel_cmtg_set_timings(crtc_state);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index bef2426b2787..b2bb60d160fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -9,6 +9,7 @@
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
> >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > *display);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index 8a767b659a23..eb24827d22f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -20,4 +20,11 @@
> >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> >  #define  CMTG_ENABLE			REG_BIT(31)
> >
> > +#define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) *
> 0x100)
>=20
> What is id? If it's a transcoder, please use trans for the param name.

Ok.

>=20
> > +#define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) *
> 0x100)
> > +#define TRANS_HSYNC_CMTG(id)		_MMIO(0x6F008 + (id) *
> 0x100)
> > +#define TRANS_VTOTAL_CMTG(id)		_MMIO(0x6F00C + (id) *
> 0x100)
> > +#define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) *
> 0x100)
> > +#define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) *
> 0x100)
> > +
> >  #endif /* __INTEL_CMTG_REGS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 564d11925af3..976af9eb3c3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -62,6 +62,7 @@
> >  #include "intel_casf.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > +#include "intel_cmtg.h"
> >  #include "intel_color.h"
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> > @@ -1722,6 +1723,9 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> >  			intel_crtc_wait_for_next_vblank(wa_crtc);
> >  		}
> >  	}
> > +
> > +	if (crtc->cmtg.enable)
> > +		intel_cmtg_enable(new_crtc_state);
> >  }
> >
> >  static void ilk_crtc_disable(struct intel_atomic_state *state, @@
> > -2654,6 +2658,8 @@ static void intel_set_transcoder_timings(const struc=
t
> intel_crtc_state *crtc_sta
> >  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> >  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> >  	int vsyncshift =3D 0;
> > +	u32 trans_htotal_val, trans_hblank_val, trans_hsync_val;
> > +	u32 trans_vtotal_val, trans_vblank_val, trans_vsync_val;
> >
> >  	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> >
> > @@ -2702,15 +2708,15 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
> >  			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
> >  			       vsyncshift);
> >
> > -	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> > -		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > -		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > -	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> > -		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > -		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > -	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> > -		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > -		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > +	trans_htotal_val =3D HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > +			   HTOTAL(adjusted_mode->crtc_htotal - 1);
> > +	trans_hblank_val =3D HBLANK_START(adjusted_mode-
> >crtc_hblank_start - 1) |
> > +			   HBLANK_END(adjusted_mode->crtc_hblank_end -
> 1);
> > +	trans_hsync_val =3D HSYNC_START(adjusted_mode->crtc_hsync_start -
> 1) |
> > +			  HSYNC_END(adjusted_mode->crtc_hsync_end - 1);
> > +	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> trans_htotal_val);
> > +	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> trans_hblank_val);
> > +	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> > +trans_hsync_val);
> >
> >  	/*
> >  	 * For platforms that always use VRR Timing Generator, the
> > VTOTAL.Vtotal @@ -2721,15 +2727,15 @@ static void
> intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
> >  	if (intel_vrr_always_use_vrr_tg(display))
> >  		crtc_vtotal =3D 1;
> >
> > -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> > -		       VACTIVE(crtc_vdisplay - 1) |
> > -		       VTOTAL(crtc_vtotal - 1));
> > -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> > -		       VBLANK_START(crtc_vblank_start - 1) |
> > -		       VBLANK_END(crtc_vblank_end - 1));
> > -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> > -		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > -		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > +	trans_vtotal_val =3D VACTIVE(crtc_vdisplay - 1) |
> > +			   VTOTAL(crtc_vtotal - 1);
> > +	trans_vblank_val =3D VBLANK_START(crtc_vblank_start - 1) |
> > +			   VBLANK_END(crtc_vblank_end - 1);
> > +	trans_vsync_val =3D VSYNC_START(adjusted_mode->crtc_vsync_start -
> 1) |
> > +			  VSYNC_END(adjusted_mode->crtc_vsync_end - 1);
> > +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> trans_vtotal_val);
> > +	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> trans_vblank_val);
> > +	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> > +trans_vsync_val);
> >
> >  	/* Workaround: when the EDP input selection is B, the VTOTAL_B
> must be
> >  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C.
> This is
> > @@ -2753,6 +2759,15 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
> >  		intel_de_write(display,
> DP_MIN_HBLANK_CTL(cpu_transcoder),
> >  			       crtc_state->min_hblank);
> >  	}
> > +
> > +	if (crtc->cmtg.enable) {
> > +		crtc->cmtg.htotal =3D trans_htotal_val;
> > +		crtc->cmtg.hblank =3D trans_hblank_val;
> > +		crtc->cmtg.hsync =3D trans_hsync_val;
> > +		crtc->cmtg.vtotal =3D trans_vtotal_val;
> > +		crtc->cmtg.vblank =3D trans_vblank_val;
> > +		crtc->cmtg.vsync =3D trans_vsync_val;
> > +	}
> >  }
> >
> >  static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc_state) diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 1081615a14fb..defb54dd0bbe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1572,6 +1572,8 @@ struct intel_crtc {
> >
> >  	struct {
> >  		bool enable;
> > +		u32 htotal, hblank, hsync;
> > +		u32 vtotal, vblank, vsync;
>=20
> Why are these stored in the crtc?

Cannot store in crtc_state store as it is const. Some adjustment is done be=
fore writing to these registers.
So exact same register value need to keep for cmtg as it need to enable as =
secondary mode after modeset.
Storing in Intel_crtc I felt is a way, but open for any better approach.

Regards,
Animesh
>=20
> >  	} cmtg;
> >  };
>=20
> --
> Jani Nikula, Intel
