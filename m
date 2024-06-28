Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B794B91B5C4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 06:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7BB10E525;
	Fri, 28 Jun 2024 04:45:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzqH1tn2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F8710E525
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 04:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719549932; x=1751085932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Svcr2k9ZJLsk//2AYubvWM/zdOWZujkcHdWbVu8HSzE=;
 b=WzqH1tn2/ilonyolpmMBwRKAO9pP2fOTHATAbgPjnAnKitBMhY+yOdFb
 5+vE4E6l6JOcN+0ofvBFZOb+/+WxMLyB9f+mi7XYC1T50i+tr7f2N1tTU
 yg2oHSfO6wcrkzyzQGubv361kxqFORgMmVN8Bt87YtpgkV850thuPxCGn
 P4zLhLXr97vVo4W/AcRAcUkrhA2I2VqTVihDXCVzgHr5mKU4tX6tCiJgP
 OAeYvU5dNwQvWRjtFSbAAlFDdodHc78mhNfA2ktJ5iDPUXL2g5qYfqS4i
 vCmfV/JZKaGbQSIGF7/7qgXuSm1urzGgQs+n7Xb+91XNHPVFPjO+Fii1X g==;
X-CSE-ConnectionGUID: p5uJDFnfRtOjV6Iup1G1eg==
X-CSE-MsgGUID: aUtTmWfsQKy1tdyS3WDVNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16552395"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="16552395"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 21:45:31 -0700
X-CSE-ConnectionGUID: 3QI+zMmtSX+iMdl0+ofILA==
X-CSE-MsgGUID: +bXI2Pf1TX2JqhJ8P+f4wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="67813411"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 21:45:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 21:45:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 21:45:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 21:45:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aklRbxS/u8GMdk3/i3erMW/gMtxZlMLmhZOUVjUp7S/k854v78+kAUU2gUp75DPXQpB/iznM0xNJEcfuiK/P45dyxOMnODWtO3tdDicOz96m87Trt5/LD+ApCJS22pR4rlocQIIXlaBZN/EtYxBwKU3IFJVLlQE0Sdhz0Mc/ZviBuY/x8GQehs6zMN2oISDp3nwxMNy2wltVPlkEI6gyxFhWhtarr9LtWOz0L6sR1v7vPDG9UaSBNtMPrbxvnkKp4ZmqFzhpgdAjO7rX7de0BbrBeMg2vX+QFk1PfGFB3zeYJOw9FGap/Ygu4QZmG3peK7Ywm6PITra4BCLWP/2OxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Svcr2k9ZJLsk//2AYubvWM/zdOWZujkcHdWbVu8HSzE=;
 b=JrV19ABJR15Q373CWxNErCIOEmcE+QKonHrwNmHqkJSwQJ1tZxS/7DxsH+x5NKFhBkjPk+NJziJ06ueJVFFJmxpp+WCvaNuKgMjFOYFC2K1IB7CfaYceYO+Fa+V77CRb+/rksgg2shcZxwtEUj8fYD8bSAsUQ/fMZ4EMVZhUPwF2ShPUYmDBkYQpAOp64vJ/s/ps+ln9ydHXesx87s/canQ6dgetq+oMlbopn2iVPi7I3rQPnaPWrlS3dqmYKk0rymG1UHbcTpXGWIs3LPVsZbIvMCt/tpb7L1JUEHLhsNK0RVBUfH70WvKRgiayzCS1sospqqvoiF/TgVJuabo2Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6608.namprd11.prod.outlook.com (2603:10b6:510:1b3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.26; Fri, 28 Jun
 2024 04:45:28 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.7698.024; Fri, 28 Jun 2024
 04:45:28 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "sidhartha.kumar@oracle.com" <sidhartha.kumar@oracle.com>
CC: "Liam.Howlett@oracle.com" <Liam.Howlett@oracle.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "maple-tree@lists.infradead.org"
 <maple-tree@lists.infradead.org>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: Regression on linux-next (next-20240625)
Thread-Topic: Regression on linux-next (next-20240625)
Thread-Index: AdrH2wQgvZ0v3b3rSfqjB9b1aXGiMABOsLqw
Date: Fri, 28 Jun 2024 04:45:27 +0000
Message-ID: <SJ1PR11MB61291EE0C56175FC19373119B9D02@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129ACCDD516E5C546C7AA94B9D62@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129ACCDD516E5C546C7AA94B9D62@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6608:EE_
x-ms-office365-filtering-correlation-id: 951d565c-6791-43be-da76-08dc972d2202
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Akr76g7Eb2uidJGKRHsMTyxzrt9QK2joFwOwOSPgJ1Uk1zJ5Ik6jPRN14u?=
 =?iso-8859-1?Q?4bWkb/gUcxEQtY9FZaHOoCvYAQH5mRd8s7Dk9975XFRKcBIwYDuJ1vgHcA?=
 =?iso-8859-1?Q?JS+H6u6+e5iqSGr9JfWP6+GhXf9uEyaSMcZWUH8+YLMcxjU54eFyYH2Ake?=
 =?iso-8859-1?Q?xJn++eCrU0ns3qhwQJG6IQzVsCHJygZKJ4xqersEvZJTBaFWrxyWd1ieqv?=
 =?iso-8859-1?Q?mjpiw35LgcXm52GxwrlgkD8f9jmU2UIqxpxl/y8ndwo0kHrGhSXeoNBIRV?=
 =?iso-8859-1?Q?GDxl+5XpTqygsYaCYAxGCQjkoqWA6dlgSkjyGRUh0t12Nl87dWBwVsmXoa?=
 =?iso-8859-1?Q?xWQCdV2BZ5+NZYETETkzJ59ELwsQXQ7XuR4bKLRlQXFKl+CbadbrFGNtXs?=
 =?iso-8859-1?Q?rEC6mtEt4Vf05EzNVU5A/timdUvlUk50u9So1d3gZIg/i4kZUQAwGbARlk?=
 =?iso-8859-1?Q?iayJKGT7jLxupBjuY76MDg9bxlN+PDwuUi7j+6zy+4c3pxMgnvLztorp6g?=
 =?iso-8859-1?Q?Wn6ywyAEXj1sRZDpm65b3XM6dE3nzrz1/2XPSCLnsWsDvZ8S36h3vSiQpA?=
 =?iso-8859-1?Q?WinkvGu9bVs6mmk7P9e5JWAH9GE4h3rncs9/A7Bw+EA9ENmepE+upJgqJ+?=
 =?iso-8859-1?Q?R+flZr5ZQYZR6sk9Hr0eYc74czj4u3lIla3Mn0IExMVKDlMeUKcwrGW5/e?=
 =?iso-8859-1?Q?RckAbZjyZ1jckdK8yfGfJbSnnU4HgFCnJABR8tbC++t+HtLUWI/dqbDiJU?=
 =?iso-8859-1?Q?pJ2+RCXi0cssH3sUBgoUPVJR98Mhj80Dw7q1F6oJ/M8QwT/kBXVxJ9W6Ry?=
 =?iso-8859-1?Q?mA6FlmI0YPOmLV5Gf4byXGGUjVAbJbCQFwMe9vR5Rblw4eVzjRM/UBo7Kp?=
 =?iso-8859-1?Q?dAP8HdKDlzrQ5HJ0gJyn7vsqGB4Rao+iKoDAgAFH1DWg/vAe5muQ7uoRYa?=
 =?iso-8859-1?Q?EEaOHslpQTR1JNBQEhLY3E6/KFwJmoPHfAlURB0b1eyTA36qKbwK4AL+au?=
 =?iso-8859-1?Q?J3F3BxbpFWLBn/RalckaqheOdY+tnG7qKP9EeageLBq5MyEWSSEcd85SsE?=
 =?iso-8859-1?Q?2Rl+w6qMj0C2840tIXZX3vVbR2ZTCgU7uUS1AebHCB4Pw55vP/94PKQ80M?=
 =?iso-8859-1?Q?MzRsLYI9cAZnvS4xnfb6MNMTLlYnBMscV0W3jN10voE/Ks0rxUJpuXHahe?=
 =?iso-8859-1?Q?TLUhgwvs1W78/6qFGNcvhbuLsIfHxW+ihYzo7ZoUiENJ8E/K9WTerj/oou?=
 =?iso-8859-1?Q?zLUXQ9TGg+wZBLc1siQNDzYINXMa1FW5B+vrt0pi7WMVZZjBQIBuHJj1Ge?=
 =?iso-8859-1?Q?SgSddb7x6pqicgmzSpZ7gp0lIZwSzpytNxK/zhKu/ultwNjmnR6vzJTHcO?=
 =?iso-8859-1?Q?lq9VZt8kH4BT3rILL4imn/Pymxa6B5Mtfbd39er6afXqmTzkfdP+A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?e9W/cOew30jrV8mdWW/nNAyHxK+XZhT/6UC5RCtqabXG6H3p7iHegbkwTq?=
 =?iso-8859-1?Q?PUcDxe+IIATsUANQ7FFnS1bi0IGAHtTabnzIVtOlurX6q+/h+ccX7PApME?=
 =?iso-8859-1?Q?3/mPwluUivOn+idkXVD1ZoND0LKVdUR6OEQM2QXWmM2/ex3z5qovM4ePx3?=
 =?iso-8859-1?Q?2DPX4m7PTmJgHfBoSi77jjbMONNIMXlyiQ+ERKwW7f0n7h1czzsHTxC9Mk?=
 =?iso-8859-1?Q?gzoZBVHAf/2e/pS4GWwdkrAczmw0hPVI56X2Nzfyz9/h9JiZ6Gjxb0CUvO?=
 =?iso-8859-1?Q?GaOe0VePQFqzrY9bHNUK8Q4bCnSr+1x9a5ZtfGmlg+4JCJpPzVXGDa7KrQ?=
 =?iso-8859-1?Q?vhlP8ePGZjAmQSLl/ErrkgqqPppGJmw7lTlHIF9+Htn/PL1ZjXxjCuYIpW?=
 =?iso-8859-1?Q?5jvrs9K/Bioc/+mhKxa0E9srIOECupgp3yVLh1v45vyV0hDYoSYWhzs7tF?=
 =?iso-8859-1?Q?0qLD+r74va1gQMrsym9iB3Tb0/kzxNNXlxwUGa1npduh1431yatJh/51tk?=
 =?iso-8859-1?Q?CJyNYpd+4ATkJ2yTXSGyHU7Q4NDbQqooVf97NvhE5WSOrgk2BMMTqjBcs3?=
 =?iso-8859-1?Q?zWkSf6D0uSp//5a0gLvAcMy+n2u317jxumaDR6NMH/7DKmHCiyl2TMVS3f?=
 =?iso-8859-1?Q?bqZSTp53lrLaWpWSmgtnZ+0KqnDqq6TVNjmdJzjAsxkX3znqoeEGP7Isee?=
 =?iso-8859-1?Q?CCztcp9BDp0ZK/KylIIK804ID0GBxnhZfyLZNgChLUyyl4WKdA+gphUSjT?=
 =?iso-8859-1?Q?cMrqPv4NIv/p8JhUXMpfvoV27MJf8z8vZUXf0gmfDOFxPAR4ffsW0rUd6d?=
 =?iso-8859-1?Q?8FFj2NXYo21nPFHWoknSnpGRvEzpjYthIHJQBGFszguCzXr/SkI/oURSYi?=
 =?iso-8859-1?Q?ofBaFu5muIEj8svZkwJP7t4AUUjR5cLloo+Hq9fYojiJDrrpkj5bgJr3Fp?=
 =?iso-8859-1?Q?AG62d0+5XQ8MEDAq6o/B+YTHRl67QDBHPRKkEZGw0+h+xqs8xq1vcjJNCM?=
 =?iso-8859-1?Q?80We9UdSfb2IAWohKYLNrZw8nK+UYo4O+Q08jYJTiAGZZzkHO4dUzl0+CW?=
 =?iso-8859-1?Q?gIi17Gte8hNT2ZWc2Lm5ITot2qaNsABRCcg6eHgsKR87LxUAxsDb0RG2Uh?=
 =?iso-8859-1?Q?p7aDdUJuliNwj3UZBtA859g5yHc9sM+gHB9wq9S8FNYBe4i72lNteIg09T?=
 =?iso-8859-1?Q?1ZWJlLCe1jRuTOGadujB/4iCIhZHCS7QzQ1Th9BZ6kD9L252J9xTlcEnVY?=
 =?iso-8859-1?Q?5CYJWDb0sFusmV8RMUXv9esyMKY+zS9NUxFJtinAMMOjllCn+VlrQwERvC?=
 =?iso-8859-1?Q?o/bWgjMs6HO0KiyrOgE/uxKCPJPVMn47KMNGjCHTi/Y3umzxaQENmGM45A?=
 =?iso-8859-1?Q?0g9445L7TzCwEce2vz4ua8CakCQR9qjjRNm0Scqe//xd8Oh61tTyJHGD02?=
 =?iso-8859-1?Q?GxnqPZAOIUZacIyiM7rBNgUEZHn4Rj/NfMocRkStPFIrzDTu8Yb1NF2IRN?=
 =?iso-8859-1?Q?5f8/20t98P/uv3Pz0Y/w8YXwolBPWdu5tk0fMlAD5IsINceqD3DVdf1xi/?=
 =?iso-8859-1?Q?2SJw8G87eem1Bn4hv2wrHzEUhuqD9PH4O4vewdat5MerKxbXaQpEMuK5XI?=
 =?iso-8859-1?Q?35hRTMsN2KS0JNWFwZzoJXfLlEx2Z4g5yLhB9ZSC2hPRXFP9dD6JIfaQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 951d565c-6791-43be-da76-08dc972d2202
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 04:45:27.9367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AIFsL7xCnjD91X2lolSDwmHdtCKjuPpWJ7QPM/fPuIXSKn6gHQr3sjeWOEC4I5rhTsBtYxCvjIDUy9x2fgZpjXWWJXYtouC+B0dUMrN5p20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6608
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

[converted to plain text]
+intel-gfx

Gentle Reminder.

From: Borah, Chaitanya Kumar=20
Sent: Wednesday, June 26, 2024 8:52 PM
To: sidhartha.kumar@oracle.com
Cc: Liam.Howlett@oracle.com; akpm@linux-foundation.org; linux-mm@kvack.org;=
 maple-tree@lists.infradead.org; Nikula, Jani <jani.nikula@intel.com>; Saar=
inen, Jani <jani.saarinen@intel.com>; Kurmi, Suresh Kumar <Suresh.Kumar.Kur=
mi@intel.com>
Subject: Regression on linux-next (next-20240625)

Hello Sidhartha,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20240625 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<3>[=A0=A0=A0 2.336948] BUG: sleeping function called from invalid context =
at include/linux/sched/mm.h:337
<3>[=A0=A0=A0 2.336974] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, p=
id: 95, name: kdevtmpfs
<3>[=A0=A0=A0 2.336989] preempt_count: 1, expected: 0
<3>[=A0=A0=A0 2.336998] RCU nest depth: 0, expected: 0
<4>[=A0=A0=A0 2.337006] 3 locks held by kdevtmpfs/95:
<4>[=A0=A0=A0 2.337015]=A0 #0: ffff888100d2c3f0 (sb_writers){.+.+}-{0:0}, a=
t: filename_create+0x5d/0x160
<4>[=A0=A0=A0 2.337041]=A0 #1: ffff888100800840 (&type->i_mutex_dir_key/1){=
+.+.}-{3:3}, at: filename_create+0x9d/0x160
<4>[=A0=A0=A0 2.337065]=A0 #2: ffff888100800658 (&simple_offset_lock_class)=
{+.+.}-{2:2}, at: mtree_alloc_cyclic+0x71/0xf0
<3>[=A0=A0=A0 2.337089] Preemption disabled at:
<3>[=A0=A0=A0 2.337091] [<0000000000000000>] 0x0
<4>[=A0=A0=A0 2.337105] CPU: 13 UID: 0 PID: 95 Comm: kdevtmpfs Not tainted =
6.10.0-rc5-next-20240625-next-20240625-g0fc4bfab2cd4+ #1
<4>[=A0=A0=A0 2.337126] Hardware name: ASUS System Product Name/PRIME Z790-=
P WIFI, BIOS 0812 02/24/2023
<4>[=A0=A0=A0 2.337141] Call Trace:
<4>[=A0=A0=A0 2.337147]=A0 <TASK>
<4>[=A0=A0=A0 2.337152]=A0 dump_stack_lvl+0xb0/0xd0
<4>[=A0=A0=A0 2.337163]=A0 __might_resched+0x194/0x2b0
<4>[=A0=A0=A0 2.337175]=A0 kmem_cache_alloc_noprof+0x20c/0x280
<4>[=A0=A0=A0 2.337186]=A0 ? mas_alloc_nodes+0x173/0x230
<4>[=A0=A0=A0 2.337197]=A0 mas_alloc_nodes+0x173/0x230
<4>[=A0=A0=A0 2.337207]=A0 mas_alloc_cyclic+0x27b/0x550
<4>[=A0=A0=A0 2.337220]=A0 mtree_alloc_cyclic+0x92/0xf0
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
=A0=A0=A0 maple_tree: remove mas_destroy() from mas_nomem()

=A0=A0=A0 Separate call to mas_destroy() from mas_nomem() so we can check f=
or no
=A0=A0=A0 memory errors without destroying the current maple state in
=A0=A0=A0 mas_store_gfp().=A0 We then add calls to mas_destroy() to callers=
 of
=A0=A0=A0 mas_nomem().

=A0=A0=A0 Link: https://lkml.kernel.org/r/20240618204750.79512-6-sidhartha.=
kumar@oracle.com
=A0=A0=A0 Signed-off-by: Sidhartha Kumar mailto:sidhartha.kumar@oracle.com

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We could not revert the patch because of merge conflicts but resetting to t=
he parent of the commit seems to fix the issue.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240625
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20240625/bat-rpls-4/bo=
ot0.txt=20
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?id=3D187827d2dc3749d66546696b78584ee4c54687b0
