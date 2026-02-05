Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFO4KvFIhGk/2QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:38:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DCFEF7CC
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:38:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8F310E7DE;
	Thu,  5 Feb 2026 07:38:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QJzGFP2A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1492310E7DE;
 Thu,  5 Feb 2026 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770277102; x=1801813102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HKgrfjKg7HE06RrUVPpxVg5z7lqX9oGa3G/eVxZ+Duo=;
 b=QJzGFP2A0bIexoBmV1rirZ4ydvDomstct+a/xyydq1Ji8Z66tKO7w2kv
 uIGsGnpa7kXCrXlUqHoBkiX1U0B7Br3NxD21AtzE6STMWug46tIZZPTZz
 W/Jc9YOZ2eV06GZ0Si9aWR8svPlSIuOilGMjs6S0cGkXvXv/8g7nOJO0F
 fBrxvYJFw+E7fv5XHxwRIHX+6NgmYMACURlEPQWbNPeAWTYK1klAQjwLx
 etfkzRgQJ1cESq09kAe30AJuz1hKofmM+nQGyQNpkZWMIRy4GZQqumrs0
 NajVshJ5cHYoTdXvPHfmstwRAaIzuj7YUWLJVdTgHbDNqwXcHm+mcB688 g==;
X-CSE-ConnectionGUID: UDp6lhezT/GrIX6yxGBrBg==
X-CSE-MsgGUID: 0/1wt8y5R9ORJtbiswdpBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71198070"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71198070"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:38:22 -0800
X-CSE-ConnectionGUID: sRhN1gjgTmafxJk2pi+FEQ==
X-CSE-MsgGUID: ov3bCORqTPeUckcRXKKt3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="214949229"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:38:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:38:21 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:38:21 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.39) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:38:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n0DH28vW0WsUwOPzbw9pS/jhoqlYlcA1/Y21ynYtF8xWBApAB1Ygf7PC2HDgiYqzjGlYIWniUVY0FvVzQTe9wUKTGse+nyBAVsUaGvtLgG0sjP+CeIUS9V2XvIn6XMPyoHuwdDKL+zNDKsNX7uSEFwf/VYwPkaKPM3ds3IMi9+DiD5EypfEKbWfwAgXG4xssGd42zy73T72i3xP7AAGu1aLtOedt0BnUS5UtRwq6nqHeG0YBFFegXNrkXHfwQu9Pth2MEdQqoTUvA8lBurT33jnvv3PyW7vr5k1uvFxgbhbSOMwf9EI/QTx++EKLZDo8NXDHqAQsvp/kHbTnGVvyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ioezz1Yrkmbt8ENo3CAar5A3k0w2MAZUb2GAwBXO6k=;
 b=SZ57Momj24i5dpeNAWldZu3PisSO1cFmX5pkbSDPO5jyh/yPZ21W+YdqpAme9HKRNfD2vQGvktJRv4agIxb5ZxChJ+oGXe1v//NIGI1+C98MF7tGgrZ0oNZKkwxN1lGx9+xMLLBxrtr9V+Jkm7EbY1Ac3jQ5l9ixINkU2Mj3m8S6s1xkub8FoKYoDhWGEglWrvoEdeBU9MHy7ECuelUxzgn4R+7Oc5khMFrTXhbSctBcvbbC19+PtPDbj4ML9Pef7yvrsoxxkUsMRDxRMbY8HxLxNgTHwFQF0g5Dh4FcQRqnW553N+HUAkoPaSEmCDgLhiwOSJYwB/7lAyR8xAcU/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 07:38:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:38:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [v3 13/19] drm/i915: Remove i915_reg.h from intel_rom.c
Thread-Topic: [v3 13/19] drm/i915: Remove i915_reg.h from intel_rom.c
Thread-Index: AQHckWIQ5m6AyM7E90WkqaQCN1nqdLVxL8CAgAKR8qA=
Date: Thu, 5 Feb 2026 07:38:13 +0000
Message-ID: <DM4PR11MB6360CA382035B3CE952D8D82F499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-14-uma.shankar@intel.com>
 <aYIgt-CcjqbjERhR@intel.com>
In-Reply-To: <aYIgt-CcjqbjERhR@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB7965:EE_
x-ms-office365-filtering-correlation-id: 3a568445-bbfb-416e-1553-08de6489851e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?6Z+UBYWAnEsDfmT2JzxIm6l9BsT6pLS+bN2OsvIwvrcVImyGup+LIhVXfH?=
 =?iso-8859-1?Q?2YkY6MZhPKob0jJBaRtubaQWqN5tfxphpZwBLYdzgq6zM/UMev79b7pRr6?=
 =?iso-8859-1?Q?GuioI4tK0euOMebTuGaFe208th4mAFw3hLzIPpCKsMaI1734cIFVg/G56d?=
 =?iso-8859-1?Q?NfJWWZjWeKzrLoojJLXeAXtGYL0NTzJfAM+mOP33bAveyrur0SAHB3/nZz?=
 =?iso-8859-1?Q?pJG5NoobClJ81NaFkznp5mxaeXgJO4elVp+3bTaQA+GF1khsacDdWk0tKe?=
 =?iso-8859-1?Q?xtZI+u4OKRqf3MoB8FJKXmX+gCOfpwky3IGAOgjBqk6gUxTEsyAibWEGOC?=
 =?iso-8859-1?Q?x11uwHleKLxjD48Xs7jW0AGdhf6WokFKv6nB+/BhjUrf6IF7qIiReXAh+5?=
 =?iso-8859-1?Q?CvdA4rSrJHrR2qNXlyfAJAJhlNiVKkVzdWnKx2NysxH6UNkT80xgEIlJTe?=
 =?iso-8859-1?Q?9c6NmV1o7aQwy7c5gSfE0SrzErDkFnlDkJ78tkX5wJiHYCbs41l1AlqSHM?=
 =?iso-8859-1?Q?zjAdPwKjdXviCdFr6pbzvXmx0lHBolJx31HLN3eFlnFfVKCxh6MPO9mGdv?=
 =?iso-8859-1?Q?anLhlZVv9aaAxpv6Nxne8YNK8sxZAdsddSFq4cbQYS20Gg0lgHOT4s57xY?=
 =?iso-8859-1?Q?MunI8esSeOhm1dmWSF3FppI1raJb+Q0WmXMbHs2QcKHKXaT1WDBYz3Mjct?=
 =?iso-8859-1?Q?wWulHaVHUz74zUV/G6Uhzb/bMlXrIEPr0car7YDnGdEfC1Ixm/MHFqsFjm?=
 =?iso-8859-1?Q?i0VTCwBLAeI4l6esDojOn2IMwweYBHTpLbwftMqhOFNLtfAuOMcOHgurzA?=
 =?iso-8859-1?Q?gbp8WpklE8jcMLJcdk+aZjPFOevkkUrGHLWCrE06Cpd8gvMbuNxuZDT5Rv?=
 =?iso-8859-1?Q?u9/tDHw3wKDEzQjUDwzOH1Rafr0jQhVIkXLCEVcDs2gsMvQuMGl34w4bXR?=
 =?iso-8859-1?Q?yZNQGu7R89Vyw57CmWB24uKvvPHZJiXyyFOeZmgHBvGqUhW+T+IiR7xd/o?=
 =?iso-8859-1?Q?wopbrkZwuNhmB6GKfzxGP7TqSEehna209KT6EbNt0NXFCY+7CHyZ3ekkPR?=
 =?iso-8859-1?Q?Ie00oNUP45JSmgv6YdgcCNc1vgn23QiAYnwslectI359j9/mJ/ODIWD2O0?=
 =?iso-8859-1?Q?jvI3KmTtXgEJzglb8JEIpsK4InvN1HK4Oe3scsQKMPFT0BN+gdU+rn92nP?=
 =?iso-8859-1?Q?vhb3h+Vjvr1n/MoMAGg6nNvTqJDTiF8dxpRrmI47CaPulUcRVO9KMhAAkm?=
 =?iso-8859-1?Q?6aBdAwhKxSk6sVfoqBiyC2Dy8b2HddsFK+hbGhxBvuNRm1XBTVhIvaxxXq?=
 =?iso-8859-1?Q?2dUL9meBkScjiQSI9gVEBnTGToMPzwYYO0aPWarPFXQBg9UTiltzEsq3+C?=
 =?iso-8859-1?Q?xofd8vk9ygs53+hFSIdfQq+TnYdyl4YL1SlRjNIw98obbgbMxcuUniFpcB?=
 =?iso-8859-1?Q?DAMD/AT6nnlP0G1RZifAgIcmTRlRPyvf3r0PzaYnrjIa/1Y3FWJfCYQZiN?=
 =?iso-8859-1?Q?YqXrHXSqmhPXDIWN06NE5S5CQX2py1MaXkbptURrpAoF2EcxRccHqkBcXn?=
 =?iso-8859-1?Q?JVBM/R7ElpD+MNr4/XfcbyEG9pKckkzowe8ycJS1qRUgxlRbnr0zMp12wL?=
 =?iso-8859-1?Q?A7e5/hlzyT5G99BnhXYiZODK+Hp1QkUswm7pZSHEWezw7wf6C74qmuP+C8?=
 =?iso-8859-1?Q?1tQ8bAcsb0KCpfYDG6Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?10oTG2EZBPt1UvAjlqyN+tApPt/7H6tmexwZ30kauOY7AlvfZvi7jGLbpw?=
 =?iso-8859-1?Q?2xH9RO7xAP4kF4oW9kOVh0mYgnGa+5peuPutt1qNc0cnVM16Ke656r5wYR?=
 =?iso-8859-1?Q?nvW0WjR2beBBaVB77+agQK4UTSR9vJwp4h0rhASekKGlTmpqwMmF5Q4BBI?=
 =?iso-8859-1?Q?PlBPJMhalbs9Rn3yI1e/3NORXbNpmqq9gghEzVoNfdyAxwwYjqWCRyhmD4?=
 =?iso-8859-1?Q?gipmKN6CHPwVlvCCIK4pFd3JKjKuiUMSPCQbz6eZrXEZu4BhSwjgMHoQ4p?=
 =?iso-8859-1?Q?bfPvva+xk7EDJ68qqYluZNRmzYXn3ZG66CPdEHZD5QvQ81RP0s2M92HNrR?=
 =?iso-8859-1?Q?mt1NLVHerrMTxNwVEyllFBNG3FbZi62+yy7VUZPlEkSquFfvU5To0koiUj?=
 =?iso-8859-1?Q?9TXBGexPlFCyUSHmN95Y4B827EeDJuZqjuwwrNBnvpqdOdkX0EyE9eoG3N?=
 =?iso-8859-1?Q?/xLv7CENY9/R6xnDKTFiO3gfSCvqoz/16uQvsE5EFbPNC8ZZ+43qztHFXZ?=
 =?iso-8859-1?Q?7UZyQzk0s9aX7dhuz9wdTI6aPRVogVrCflX/yC9RoBjOAl8he/VDJrvShm?=
 =?iso-8859-1?Q?pTvkATjfpnGSRQhdJhk3pquPINLJcieQzTc3Qzz8zePacsfyhmdogQQBgv?=
 =?iso-8859-1?Q?Li4hzwo02Dg8EBwyLn41b9+Rs7yBIBaRxjXWDBDZWK1qAh53H18VbsWH/E?=
 =?iso-8859-1?Q?L494TA+xYgaaXmYefgBWM/QMIC3/eLOuj2TM+JZQ3skoLvDeMijOA3cciF?=
 =?iso-8859-1?Q?6FoVyg7nHQMYuWpn+HehvN5usfV9aW2HgHU1IoKzgtPHZvlOYy1uaZ7Tz4?=
 =?iso-8859-1?Q?b00mpMUqc2VIiZUVHnK+D3w0AUNQXJrO3smYXFGNSq1oskpCkA+OyewSy8?=
 =?iso-8859-1?Q?2S7iDLwFxJRB/zNll8Qhoe5DNKDPyF0gXSk7HkJ+5b8Ht98xSLwkiWd5av?=
 =?iso-8859-1?Q?xCSD2HCnxsmShMkH1lunKbiVy5V0FZUro+CVM3oDOdClo+7IyW74efDk0U?=
 =?iso-8859-1?Q?aBwUE/v/YjHI2UX++WVrGsYtSvREvnGm78WDDI//h+C9EQEsegTWs21QbS?=
 =?iso-8859-1?Q?jpKVmjC8mMbV+w6oYIguGIQ/0dn/H09MuLbO0shqVoJbjstw6bDpffbp8D?=
 =?iso-8859-1?Q?ZhVOLw3yRsxJPVY3eyULm1VPNcWl6lajgvh7WMSXA0L2xEPH824Bsr7peY?=
 =?iso-8859-1?Q?eQ3xYMucCzqG7AwSM9E9B1xSYraT7qAShErnD8UovMAF6JoSbVG4sGvV37?=
 =?iso-8859-1?Q?7/6fBayHzKC2lt/EH2ppW9Gx/e2AGRjX2nFPzQKo8DHitjgSYEF/80KbxG?=
 =?iso-8859-1?Q?fbypGmENRT853chL0zb7fcaqJFXWdmzob38ku7LpEvcC5vsRYTiSNYrs0f?=
 =?iso-8859-1?Q?9zPDz502AzpOMAs7rDrxW7YEfYFvkzv4kcH3QBSs5Jbl45ayuXQ1PsIc09?=
 =?iso-8859-1?Q?4/XYR0GZsOKIvqEykh5wEhTaPPqs5LnQ4Z3HEYCl7xWcNWl1Vhzf4Pzvrw?=
 =?iso-8859-1?Q?OIAfgd+RmUY3bZF0yok1T5510cE82mXBE9TN27zjjmq3ykUjY0l1m0LZ5w?=
 =?iso-8859-1?Q?2BpBPmxRQf+vbBu7J4oTWRWf3+jWiCuTApS24FFI1wvnIZkKsw6/ClUME1?=
 =?iso-8859-1?Q?RUdKYesatJNFF+yoCUQeikr5KjOp7dUTEM5+PwbjtH08PG87rTEydosizZ?=
 =?iso-8859-1?Q?rewUDoBJzcnEkKgyhVMd7uEOp1XYz6nSRMlENFkEpFX/2DOjsgzK8TgNmi?=
 =?iso-8859-1?Q?RCD3qfiOshR4cI/qIXhLU+V6cCWXfLPf3ZQcGiUuBNkjXRFa1uZsfCKHYu?=
 =?iso-8859-1?Q?SWiuBNNF+Q=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a568445-bbfb-416e-1553-08de6489851e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:38:13.9520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: THGSRQDliFoBm4aOjYSQCQ9i2eKi/9JTi9e9YOCz599v0QLF1j59ukV0Q+8sH8mLUTToE6BY6DJ9mbnKP5bZ9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 12DCFEF7CC
X-Rspamd-Action: no action



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, February 3, 2026 9:52 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Niku=
la, Jani
> <jani.nikula@intel.com>
> Subject: Re: [v3 13/19] drm/i915: Remove i915_reg.h from intel_rom.c
>=20
> On Fri, Jan 30, 2026 at 02:43:52AM +0530, Uma Shankar wrote:
> > Make intel_rom.c free from including i915_reg.h.
> >
> > v3: Update patch header
> >
> > v2: Use display header instead of gmd common include (Jani)
> >
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_regs.h | 8 ++++++++
> >  drivers/gpu/drm/i915/display/intel_rom.c          | 3 +--
> >  drivers/gpu/drm/i915/i915_reg.h                   | 8 --------
> >  3 files changed, 9 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 5679a83ff19b..3707c5999ffb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -10,6 +10,14 @@
> >  #define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> >  #define   DEPRESENT			REG_BIT(9)
> >
> > +#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> > +#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> > +#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> > +#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> > +#define   OPTIONROM_SPI_REGIONID_MASK
> 	REG_GENMASK(7, 0)
> > +#define OROM_OFFSET				_MMIO(0x1020c0)
> > +#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
>=20
> Those don't look like display registers to me. Should probably live in so=
me more
> specific header.

Sure, will create a new file intel_oprom_regs.h to keep these out of displa=
y header.
Hope this is fine.

Regards,
Uma Shankar

> > +
> >  #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
> >  #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
> >  #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe,
> > _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL) diff --git
> > a/drivers/gpu/drm/i915/display/intel_rom.c
> > b/drivers/gpu/drm/i915/display/intel_rom.c
> > index c8f615315310..d7de53acaba9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_rom.c
> > +++ b/drivers/gpu/drm/i915/display/intel_rom.c
> > @@ -7,10 +7,9 @@
> >
> >  #include <drm/drm_device.h>
> >
> > -#include "i915_reg.h"
> > -
> >  #include "intel_rom.h"
> >  #include "intel_uncore.h"
> > +#include "intel_display_regs.h"
> >
> >  struct intel_rom {
> >  	/* for PCI ROM */
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 635726f01e9a..f896ece3b568
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -898,14 +898,6 @@
> >  #define   SGGI_DIS			REG_BIT(15)
> >  #define   SGR_DIS			REG_BIT(13)
> >
> > -#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> > -#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> > -#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> > -#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> > -#define   OPTIONROM_SPI_REGIONID_MASK
> 	REG_GENMASK(7, 0)
> > -#define OROM_OFFSET				_MMIO(0x1020c0)
> > -#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> > -
> >  #define MTL_MEDIA_GSI_BASE		0x380000
> >
> >  #endif /* _I915_REG_H_ */
> > --
> > 2.50.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
