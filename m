Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBrVKnFehWmfAgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:22:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D005F9AF5
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6676610E0B6;
	Fri,  6 Feb 2026 03:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUwMkOAL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F0A10E0B6;
 Fri,  6 Feb 2026 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770348142; x=1801884142;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Te1iiL8BPNBQwtyLlAoIapkg0NgZ0GJnngbZIZJAVPs=;
 b=LUwMkOALGybPaJVRAjViN1D04lww6GvioSL6atgN+b3hXi/kHJd4rca1
 2JwQulGVoewrnt0IBwlDezRrg3JyiW4CZaKs7RB53+cgZZA2uq7P0Wl1t
 7lVPvuV3sMdoR04vChN/aoYcxJsGCEKP6Hr58mP+E7NmMjGKzM9jt0Fl+
 AWuGv/7ymKUBA73om7gNAnNWe5iRDzLjWR9rW+4uQzomFlj+473VIstyA
 MdvzicOZaAQLxQ6dihAtZlEY3tbTZ/6sHKtQlfpsHY/9Uut6gkS33c0Hy
 MtBHEhRAxha/MsS4QiyLxppVpcN99o2O4KbhfSAF+Tap0caVbkw22Kvjk w==;
X-CSE-ConnectionGUID: M6BV5byASCqETPRQImBwew==
X-CSE-MsgGUID: Li4wnrqwRMGJO7wGfmFhOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71458162"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71458162"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:22:21 -0800
X-CSE-ConnectionGUID: KNGHbH23SMmDOqyeyisfkQ==
X-CSE-MsgGUID: SY9H+v/PQz6FkYZ+OMJsLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210798839"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:22:20 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:22:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 19:22:19 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:22:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vu9LGAPpLU1lzWIW4DGCVf31wbF7W2eb8IBYe6InHmyqz6GLhyv2uS77WQE6UqkZfyIxTLwEIM8LVG7AAxk7eJJH1RC34jkJCH7HqRgJ0uEMWpcrAE3MVSPS28Y6GYOHwpWBfJxUNlMehhGXMEBVrCEVSZiYOsGEhaSC35+KhC4I1fKvAlpSvgenN5Tw6A9g5oIpQtC1vyA5fjfRZmmmDrJSB8iUiC/KHSh47TIxNlyZ7a3ztmxtw1M7IjhVYnuo9K9OOEGXBpPgciZ8PPAxmm6H/eOMEbSUx7hXqRZWtlNQdTR4JsxBtiZt2M250dHZRh2LUWC+0Jyf+n7TskYL+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNL3NWXK0qW/ztAe+QpBvllu4JKXz0Gl7Dwc/CI1ERM=;
 b=a0wU3m4B0cYx/m1f/M2fyauizIny7qYr8dNcpyBAsPyPqJ06+ztWNmkfgmmr7j0MS2jLG4OHiKFWOeq49FK7vm5utIw0irJbPTo/KymCVfxYHGxFGBhrbKb01CuSfc1axQ/pLGj8Po4ED2UT8lT1w8+1PAYTcBKv/adOHe/GtL1Vc9MZ8sp0m26bYIRVsEtKCDsIrem7Z9XH7oFl4d7DCLf9B2DE2dPW2xQuUWA5Z36fOlnneea4DYRGY9N7jx668ZcR2k+oF4NxD7XB8j1sAdTep/Amksr/EU9BsdVpPSURGUPq8e9koE2MEMQsImSLN/nDR5JTVmdV9TD6KcjSKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4784.namprd11.prod.outlook.com
 (2603:10b6:a03:2da::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 03:22:16 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 03:22:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: RE: [PATCH v2 06/10] drm/i915/cmtg: set transcoder mn for cmtg
Thread-Topic: [PATCH v2 06/10] drm/i915/cmtg: set transcoder mn for cmtg
Thread-Index: AQHclRdnxy3h9XuS60+TJDYNUUO4vbV1BRTA
Date: Fri, 6 Feb 2026 03:22:16 +0000
Message-ID: <DM3PPF208195D8D324312B5E7BDE2C4C6F6E366A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-7-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4784:EE_
x-ms-office365-filtering-correlation-id: a52a05e2-8494-498e-bbbf-08de652eedf2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ycDwN2lUjWgL7K5ikgaIR7zGS9QqiZDc4aEGPzXlwnIjAx1+l72WpiSJ4YJr?=
 =?us-ascii?Q?3si+PjJkFfo2cv2P3VNILyp3+4rYLvfd65JgY7/lLU8qSQyuoLXYAtvQRe9g?=
 =?us-ascii?Q?8x/DDeIv7h3Q8xhmQPDM568dviMzD0ekg73uXw5yCxhArrBuhKBS83yvMqyl?=
 =?us-ascii?Q?ReRE58bgCLjpKoWLQBYKveoRghgtc68347fL3PbEILLYGnuG/fGxZcvMzbB7?=
 =?us-ascii?Q?gmwNlOMV/obItglIbjU+t2IwuZrTsQ4P7vGYXjcMX/752+dM75UxbsYMUI1r?=
 =?us-ascii?Q?1eF5QecSzswd/cyNzCCl2JXqi093NUr2ee2BH1+l26n1i8NyyiK7DfAgsNbO?=
 =?us-ascii?Q?gKeiBkZ4D5aaoqE78SA2CxPU2MPwTf6zGhF2BhItuXNpNvzmUCx/3vDMYSyG?=
 =?us-ascii?Q?pSIjYCnzdOXQfOIJaXi2AwipEG0buYTwpFcBxrf9wrT2Q6aaDYvB/uSq/yOb?=
 =?us-ascii?Q?YrIjObAkRXSiIra9cvihF9D9RRTA0BbPBrBzgIaeHZmmZQL1ZYziYM+SJv89?=
 =?us-ascii?Q?rZZBgAK9KtaqJBLNzewAfgdGkCcgl8N1tGWjZdDdIkAE/d57oq/eZmgwxjRv?=
 =?us-ascii?Q?xstuqfwxpONFDs8tnmWQsMESCfg317QyHS5TFZIWDPIFVXsIi4qZat+3s7iE?=
 =?us-ascii?Q?l5NYWXBsH8pKrnP/mvpeVQnxWHp8AsxfBDFRq5tnzQ9W/1h9ws/K1cCVrhen?=
 =?us-ascii?Q?skGEWXVVQDG87qYjtOk4grbj72HBTyTZgh5Ip+tjvymsjYpWAkZXlb4fR7dl?=
 =?us-ascii?Q?DKmwstv8zem11MWfhYgXNQaKQamvBXfwUuPZJHj8gxKTe82O+5DD7aUlSVde?=
 =?us-ascii?Q?k10NenOO4EaO6puYdoBAecAOmgubSIwefw67opRozd54b4LmFrPXGXW7CTU8?=
 =?us-ascii?Q?R4KkL6uSKKWwCEJNGL7d9bXUYbT7mLL9E3QqZg/UWCPwaKUZQ1dQtKkNX4AC?=
 =?us-ascii?Q?PsWqZur0HiaJq1VHusDO2abTwPqW6hU1olw3mce2mQZ2B/OIjJ9D3ornxGDB?=
 =?us-ascii?Q?Ng/aSKEm9CoqD/0+PyGuvLzKATfQHsnxDYNuW/sCzWDpwZzr4tXFynrky45u?=
 =?us-ascii?Q?yOyYAxpKFYxnYCf8bLzYKU0xzMBp8VGmTBeVW8/z6NnJyUm31N1Bs2Ym9yta?=
 =?us-ascii?Q?uCqvykkju+Ej/9CCJx5W5ZDABJl0Dd6bQcOmurtvR8lTqxl2Yrv+XNoe3OaQ?=
 =?us-ascii?Q?JTqnyhJ2KG+UPE5fneWM1frxfPZkZKALVhDPmKTqWR1pIw0L1pCKzGDV5thy?=
 =?us-ascii?Q?YXuu35CIMfTKoM0XrGb8YVtedyFMQh7O0bJY4/zKSOX6jAw/48bZmmmjSIO3?=
 =?us-ascii?Q?Cx5pbg4DWjc5tjK7N97kq/gU+gCoVO+KZ/jIu4QqoiFoGdYQPybOL/1wYRh0?=
 =?us-ascii?Q?QcvS7RGLIqG76pud6mii/Qv+OzxpxKrVjqsetLUVASMgOv4ePfv0hGak85uA?=
 =?us-ascii?Q?ae6nGT+qTdhdWNdbtLs2pRk9XtvMpqxWbjInHfcc/a2/1nV1hiLCWhpcIbo/?=
 =?us-ascii?Q?Mu/x58fm4xYd0xVd/cVE2s908ymibdJDuvzgQaUFRR/G5c3nfLc7u1+9xCAx?=
 =?us-ascii?Q?O8rvRdQY2PWWPuAwEhYEW0Vam0pzG8CNVlieEn87MpvhVhQYjIhgQKwWzQpu?=
 =?us-ascii?Q?yEcgRojF1RtakInlpuOf3M8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x7uwL0cFAWBzi6nxhgp8a3KYtbMoN4nzFXsLHTc26X8ToEnD+LOYpUm6EZ2y?=
 =?us-ascii?Q?8MevjpmybbTLwJAKJ+R0/KjaSkFTdoFv22Khhh9sGs8gZvtXwhaCtZxnSO+R?=
 =?us-ascii?Q?IA64kTche9HswiiolN1r6CVDMGle1O8jLKtsLKnAGs3lAnW8zbm9brylNGXC?=
 =?us-ascii?Q?1n0ojOZDv7dgzkEnZrYX2PbLP6vhfaSCpJU0Q+rpEgXXu+375LWxA5TkaZbk?=
 =?us-ascii?Q?peJHVQeXezT/fRZCe6ZpGMOeCUsFHZGGt5Mrpg0ue2zAdyPJZPkr/fAGjYDT?=
 =?us-ascii?Q?lJSQjos1kAbBkmQyAGknUJEfJvA4CuSb1WeDeZtu4ALF7QzZ6xn2b7oSN8aw?=
 =?us-ascii?Q?TSA80xX6mp1f9hZS1seT6GtMrsiXH1tELEYxpz0UC+LbwHhN9i/hK4Foag0Q?=
 =?us-ascii?Q?5GJYQfzdGmJc9zEfEeAVWr1lPvzV7k012xRoVJe8tCaif4yZFOu3ROVO/v0H?=
 =?us-ascii?Q?TXA9EnEZFy4v5RiTETncuPly4Y9WIaFeUmQ8d7hGD2EhPAVh13LMySylVQQR?=
 =?us-ascii?Q?MFF9oTqZI4yvF3INSyX1oYBZh2ojN1E0kREuOEPcLv4NwqMceS5dgZ+rX2GX?=
 =?us-ascii?Q?RVnVM79b0UL+SOj/3VK//9b0MDf3StDctPw0W3q/J8PtHrCjevV502d6W8Mx?=
 =?us-ascii?Q?x6NmXSqXOcQh8Ac9qiMDacivT6fM+FgnYEGcA2BP9WbAHkwaTk/5fYHfWFi7?=
 =?us-ascii?Q?37tBVyzTfqYpoRibgmO597zlAOxUc3jCHHJQC7AAL8k/Tj/6b/ieP6fdUFGc?=
 =?us-ascii?Q?qlMLXMLl911/1GnUuuSyctZZtcKSV4zc3Uvy9wGXh9zpLvsxcdo6yFHOR8xR?=
 =?us-ascii?Q?VLwDS/eNO2vQjBB/Ma3HfVja0wCh87C0jR33Dc7HsDe6UZErRHgtTuxZ1CVO?=
 =?us-ascii?Q?p+86BPlOUmbVeh6OFA9bfvtS46fafgoFSXo/aVdpyo9SpLArGi1E91Gi4+PL?=
 =?us-ascii?Q?kY0lEWC38b1TdlU5Ar3GitYXmYJYgP+wH1y0BPp8mQJYTiXOjT5tU7vH93Bj?=
 =?us-ascii?Q?1i28Xmyx6eKEYx5tpqNAps7Ayjzwia++NCW/7hS8pNRwNh4FXj4B1PL/V07V?=
 =?us-ascii?Q?wOZ7D30jhl82UNnYui9T8hE1ITVHux7/pGIRIrcsGG+Ipm7z/FdkUtErGH23?=
 =?us-ascii?Q?ompy9lyD6q7d39TwdudA8jWNQoSTe3rz7Y2CnGUfZ2rt/BmWFNXtuVacJjhC?=
 =?us-ascii?Q?O7TiDG5utnjejbPLbJHc84blH1NMNKJdpWE55Dji8RuG+Dq5Ud+P1hetCxcB?=
 =?us-ascii?Q?HPrTlbTHM2M+JtHdYvOYz0Tg9uZbJuIvrxdznhclhcv6N1Hi4gEPBr3tuff2?=
 =?us-ascii?Q?28azwUCtpkRqI/ScsUkX+lYUlxtTlZRIzNc2rdVtLgg/uI/qrcDe599nr+ck?=
 =?us-ascii?Q?ovCALTJluixqcbILQFIDj239uQt6fcHJhn4CS8G7EIQPKIg6kbMPQXZEkOd2?=
 =?us-ascii?Q?nnWqAlXCFPAc+6QxvdLyMIAR5sFItFcN//g/EuVIrTwka2p4dGaD3B8MOzRU?=
 =?us-ascii?Q?R9xIw92PmKTukcGZEK1ohMOCKBr8klgQZFYtKsD6uadnIdkzN99/mHgDW9aA?=
 =?us-ascii?Q?uofQkT6YeU6jn8bntw7EekWklT+4K8DjW+eiY5ZksjJXLJId0DZCwyVx/TwM?=
 =?us-ascii?Q?NNNyNOZj72EpnMndY6ynjsNfSobZgCjxHucPHB2Aby/U1MDKMusUEwWGG3hJ?=
 =?us-ascii?Q?BoZjqiANZ+5N2u3CvPOtmYrZ1Bcp2OAeLBmAibOznpeCmhAaqg3KQ6S63lmi?=
 =?us-ascii?Q?fAkgJfCcjg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a52a05e2-8494-498e-bbbf-08de652eedf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 03:22:16.8124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h9NAcqLX70+KMkML0gjWXDgOdnyhosHcZ9t34yOLL7JnbQpiS1EvFNg7794L2YD03msxiF80RAQn004lGOvQuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4784
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1D005F9AF5
X-Rspamd-Action: no action

> Subject: [PATCH v2 06/10] drm/i915/cmtg: set transcoder mn for cmtg

* CMTG

>=20
> Program CMTG link M/N.
>=20

Bspec link

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c      | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg_regs.h |  3 +++
>  2 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index cb1376f4c13f..12a081dd7e4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -234,6 +234,16 @@ static void intel_cmtg_set_timings(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>=20
> +static void intel_cpu_cmtg_transcoder_set_m_n(const struct

Should be intel_cmtg_transcoder_set_m_n

Regards,
Suraj Kandpal

> +intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	const struct intel_link_m_n *m_n =3D &crtc_state->dp_m_n;
> +
> +	intel_de_write(display, TRANS_LINKM1_CMTG(cpu_transcoder), m_n-
> >link_m);
> +	intel_de_write(display, TRANS_LINKN1_CMTG(cpu_transcoder),
> +m_n->link_n); }
> +
>  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -246=
,4
> +256,6 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_stat=
e)
>=20
>  	intel_de_write(display,
> TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
>  		       intel_de_read(display,
> TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder)));
> +
> +	intel_cpu_cmtg_transcoder_set_m_n(crtc_state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 3cfd8eedb321..b766ded8686c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -32,6 +32,9 @@
>  #define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) *
> 0x100)
>  #define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) *
> 0x100)
>=20
> +#define TRANS_LINKM1_CMTG(id)          _MMIO(0x6F040 + (id) * 0x100)
> +#define TRANS_LINKN1_CMTG(id)          _MMIO(0x6F044 + (id) * 0x100)
> +
>  #define TRANS_SET_CTX_LATENCY_CMTG(id) _MMIO(0x6F07C + (id) *
> 0x100)
>=20
>  #endif /* __INTEL_CMTG_REGS_H__ */
> --
> 2.29.0

