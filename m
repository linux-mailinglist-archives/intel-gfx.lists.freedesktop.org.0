Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9140984269
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 11:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6AB10E692;
	Tue, 24 Sep 2024 09:41:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQJyIkY/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAC510E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 09:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727170873; x=1758706873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jTbIkYNf+V3/IKEalyH+Cft4uNPtU57fNeO7clYkia4=;
 b=hQJyIkY/NjADe4+LaIvZk1y6W4tFx3und71pOPfKVyj9MDyDK4jQM+4m
 Afs9LSoNfhYF1fjRkiUrbcxnjlDka4rAmzuxNyW2+5UH1o+M7MbQNX23l
 sr5CdRtAq6JW2T0sPJYhPoEC4k8+8EMERgk4uyVbFah/w/Ygnj1xWxxyf
 2mrYOKZm7mJ4S4hb2zU90Ss2Xima0RHSIWfb96orDwf1rbCqAWg+EVX9D
 TlvT489NcRZSFeIgURWu9huaI+PUqriYOPdEuu006a1p00+1IZqQZtDIJ
 qs3PHqP5yY4HNbLpsghoGdnOrqLU/DItrNJG8FWxmRD4YvPX0T7/sH/5n Q==;
X-CSE-ConnectionGUID: 4phNvaDpTyu8AP8XMmvVwg==
X-CSE-MsgGUID: WFH21zmhTcqf1iwi4EyrCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25665533"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="25665533"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 02:41:12 -0700
X-CSE-ConnectionGUID: 2ZvBh9e8TxWeAhJ6P6r7iQ==
X-CSE-MsgGUID: 3HSKwQ/tQhydhnmjxbnFSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="76135909"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 02:41:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 02:41:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 02:41:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 02:41:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 02:41:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y+c9VjMZjUzhZQ99q5tSpR9wTkWSIo7Tk8BfincFVIqkx2dXQ+0uNCdf9Np6HPXYeN593EodG/jeLpEGcbBAi8InzKR/AwwpOQ5Ha/iYKBu/xzdL6wkqJZDAClRKWbqttHlWDVRy0v7e4joPzMdj9PO5Glzxx22RPHXTK136T9njPx/6GOgIhlIKfkRZPH0rULTRi3/HdnKGYybpgP3OdVKx8pRHDDP2pSTUqRcj9Qs2oAtbJYrZb+6jSpcQK96OdvqsMj3S7hjlbfbCLYbiHQybNDzhDZvR+8HKMl74sXaiQzubxQXZtbfUNC8ri+v2pukOv4BqfdAZMO4lK/Ueog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u3ByiqL/tbOzyK6PFARMk4DokUsKLSWpr75kvjyB+MQ=;
 b=St+/kw/Z2rig7QLIoS6qJy+hsfCesHVCaSTapZGNaqEgsBFsASuJ8vWD2S9HknXWyRoPTVfm77csGjXQ/53qhKnUw1zRp/Vj1WTIAEGSyE26m2EQ+4R1DhrpuP7Y/0IEx7mdICAhtNp5zY0unpcd9a/6RO9M53lTQMfKnTesbluyilwCOY5beMmG8tT2+C7PtnU63jAkWH7Ks2xn8YGl9x36TqIcssCL3GNFytaBXhZdTZCvwlr9UEPaGGThTtf1g15nBMrGXhIDC7eL0pvh70J7cFEKt/siX7HvNtyP/sX83307KeB+mKQb2SMX/6Hck/yOZCSrmq904NqOOJkrHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DM4PR11MB8090.namprd11.prod.outlook.com (2603:10b6:8:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 09:40:59 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 09:40:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v11 1/2] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Topic: [PATCH v11 1/2] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Index: AQHbCBA2jg7HVmfDZ0eptgjeukkmkLJgj84AgAYrH2A=
Date: Tue, 24 Sep 2024 09:40:59 +0000
Message-ID: <BL1PR11MB5979A96BA277638181348249F9682@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
 <20240916075406.3521433-2-animesh.manna@intel.com>
 <Zu1b8gFLa4g36sCw@intel.com>
In-Reply-To: <Zu1b8gFLa4g36sCw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DM4PR11MB8090:EE_
x-ms-office365-filtering-correlation-id: a9dfdc44-b87c-40d0-4d7c-08dcdc7cff59
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?JjmFT5vt+JuaOqVYFtcAL01aAyde7eXA0RAPfIi9lEwtkYLOlEQ1EpFRJz?=
 =?iso-8859-1?Q?XT/glZWxKVEOk/C9hyF1ujji0/DckxHf8yfMmsFlaAGASFi+gLRpIOY8ui?=
 =?iso-8859-1?Q?4yl1T2TBL+9kudfpgnb1xerR+3k1aCCKNL7xC1Q4WpNFk60BhIqlQEuW5R?=
 =?iso-8859-1?Q?JuTP+vaaCRslFNtzsi38t5a124sMBf9gJdD3nWBnqURp5YInSGIJtKGf0I?=
 =?iso-8859-1?Q?BgJ4cNRPCrDVuzUMGcFjl2z1oIn9uX2Mig5aVM45wlPU0XaeD3qNF2oD5U?=
 =?iso-8859-1?Q?C+cgl8IyHebEg4h48pHc00MJAaiv+Ey+Ay2a1lG7yd0E2O3y48g+pDvXv/?=
 =?iso-8859-1?Q?IRuXNbXoZyB+tvTck9eFvfX77VqpVAg8QehO55rMq+HBgKXJfFaiEk0Pgr?=
 =?iso-8859-1?Q?sdb5rIXnmC7I6FoHwqJlzPMb+fi4rJFvMdDhpRy/2z6jqjpel9P2Qv4owv?=
 =?iso-8859-1?Q?mCBS58c46InTR8n2qSQgIEY189HZyLs3PshxhznIIs02xuXtQilCJHast6?=
 =?iso-8859-1?Q?89/1kLgGdehsHwzZgGTmE3gGukIScG+Tmaf4VjD9dw7KXn8Gcd4a+aL6Fp?=
 =?iso-8859-1?Q?KAuc95bqCP/JazHMGhLPIaB9jbaZRHcZmMQkmb4r0jO8Dn4hp6k1ld7/hC?=
 =?iso-8859-1?Q?D7R9Trp950smPOB1/fXa7RN7LUyhsJBycQh/NCe1PUoepiyusA5jxqd2yo?=
 =?iso-8859-1?Q?MNtaPMlnq74FiCgKK5tVzNl+TZWv98Wh59AJzpySC5ooC8JVJYh/ji8SjS?=
 =?iso-8859-1?Q?YNWWV9DHN0UD+XHObVgYi3G+f4EojlBs2XeUHPgxq8rbBd501d8MKVbzUm?=
 =?iso-8859-1?Q?LfIiFuqaHkMNOcK6Th5jGyNPrsPBu0SxwOYWqfW51C8eJL2REhSWzFjprb?=
 =?iso-8859-1?Q?ldOezLrF4XjqFph1+73RjaNNIBbWnlFdXu88mLnh25wh1Pvk1vUwqRK8Mx?=
 =?iso-8859-1?Q?tCiszlelj0Tj/wqfQx6BCzWTNPlnu7pq2KwA9Mls9vKuUzdJHybRHwzSew?=
 =?iso-8859-1?Q?em0D4otUqQckBwya3aRlpIiwFeyTI05t50UTnvvHVKxdGWvP/Btg4XoeYd?=
 =?iso-8859-1?Q?tRaH7CSQWrUT1gAAs7goC1yJOwytgoNF7E4gfBVYC3fscc1yg5b1oGm9ES?=
 =?iso-8859-1?Q?sEQE0EzoUP3/iKfkHy0lHbP0BLemi0ysi0cuBN221hzBsXR6ECbybn2sus?=
 =?iso-8859-1?Q?w7PRabIQwNP5Y2YegLJexKX7yLHN2eEXTpoK8Ats4RHPFT2rSL0E9SQB1C?=
 =?iso-8859-1?Q?pg7lKukB2VP4bheCXRSD/IXPd/c/fA3najQ+4lKDlbRSpXx0/5+nqfPzI3?=
 =?iso-8859-1?Q?7fQflZ9hgUz7lm9thrr8rx+06LLYFb1XUIQQK54YuI6r4qnALGuxDElv7h?=
 =?iso-8859-1?Q?HgJ+RXIAFCg4MTt39n632aWqMq10EizG8xD+izgFlvE3ZW2pDH8iinCyIW?=
 =?iso-8859-1?Q?5i7pMeo0MU9Dpr2OrbE6aafbKzkDUOUdbZVF+A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?g00+fMXdpQQiKuYNINadGBL0OW/ms/IYy3mziI3+1IuP8LDC6JQo8psPUk?=
 =?iso-8859-1?Q?+3JHMxG0ny7VqFKF+TUfLfnwaiwFtv6Yx2f08lRNyZ+bVOz4enA8INHNzv?=
 =?iso-8859-1?Q?YJlKqrftXY5GVTqQf8BAhJ7/mNwvKPsBd8BgEBqwibLI5ce1dWxjbgmwsw?=
 =?iso-8859-1?Q?vcKXAAc4GAWSvjrwIPWr5Lg24ilKSHsU6/0d99TFrBqXAvK7aHV4AT/OFi?=
 =?iso-8859-1?Q?jMYDddgUTIc4EXZpjH1HjcezwM7wjdaw/JYopBf4doKEDv3Rn/1e+GIblA?=
 =?iso-8859-1?Q?LmAEcEx/ADzh3r9eYC1jHHjNGq7NuJgU7e/ayNMFvsYRoHutIqaEnWVmi/?=
 =?iso-8859-1?Q?a3lKwKVi5LpFHLXeXMZwZe4OhgiMbJqj8riryCKAtQv7dyyiCii0BUgGbN?=
 =?iso-8859-1?Q?i52kF0z02btZYi54F5he8qWGG4JYzJLiRqxML2bSmIoFw88mxIwOKRwvay?=
 =?iso-8859-1?Q?hfR0xabmMSXX2VLRqgMoH2kODfm831z/70B712t/0fj85ipsNHIgNDuChB?=
 =?iso-8859-1?Q?zlwkjAfhoxzk9vbrsH5cY7VwvCZX6RO3EE+8pUgfDNrELeb+DotPGFNZSO?=
 =?iso-8859-1?Q?9k2qPWtby77YdqoutqId7+ef1ge6xYBT7KIDoKWS7EKM36F0LUje/Lyrn7?=
 =?iso-8859-1?Q?JtVsT1ZuuinGrTK+DYPSGjXtJw1P0fNy24WvrZRMgfgDEC0vnys32jjso0?=
 =?iso-8859-1?Q?A3btzNIWrVMks882YN62SMVZD9JTEmPOZaf3IIxqj6e7RXiVvfjD+sN3ym?=
 =?iso-8859-1?Q?2YYGB9C6lUyAg9PEgqEyNdxAWmjb79jGU0GjNNdDFJ/MX9xDsbqXEkVQYB?=
 =?iso-8859-1?Q?Q+7ST35cfDLzMZK5fmAAxYG3J5/vo/M0dFi1OsE0tscemXb4ZODpbHwFE6?=
 =?iso-8859-1?Q?uzCYkvQ3HSX+gv61HWiTcdUWfVtw9n51KXFVZzPC1siMEWkOo9KYvvR0zV?=
 =?iso-8859-1?Q?pcEHL7uJqwm9IZu++3nCZv7cEY7nP59905f4ExMfnmwZBflfjcfgIdjwXd?=
 =?iso-8859-1?Q?RxK94wJLaKgZqceHVJ9QbXCG58+v9dczSG85kjP4EXtNPJamFrMV6TV1kV?=
 =?iso-8859-1?Q?5DICXh3V4JIieu1ovynvLqQrqY8UvhDAfwjwTt7+IWOvVmKPkwpcgqZfcu?=
 =?iso-8859-1?Q?7yLloq2B2o6LjlMsBw9ApsHGsAdNZSwLQnMe0R26fzb8K1vpS6zMqAFiqj?=
 =?iso-8859-1?Q?p1SELcWihdsMI2ksPcFU+Vnofczh0rU/iL2LYoodRnj+wXsUqifhx1TpN/?=
 =?iso-8859-1?Q?59M5JS1LE9tmXAYOHZQjpggcXqqp3e4W83NtEVACGjobvQCEpyzN+HiIn/?=
 =?iso-8859-1?Q?2oVYdpdKJ+h9UIgogNlGQu+Y4tkPacOSK6aK97VDZdiFbaDaWSDSjlMWCn?=
 =?iso-8859-1?Q?VqT0aXyaHmBgRHh0jXGYA6+C1zSgokhCf00UeIUGRkP/rLMkVc/MX4s1WQ?=
 =?iso-8859-1?Q?uE6DbU4G9VxfW+s7uBwOokJx6sX7z0mny0m+e7yu2Aqpd/pbyPp8vlGVfB?=
 =?iso-8859-1?Q?v90HKa7fVE3HB/AS2x3F/i+0v1HC4IQfCcq2trGVivwljjx/TlCjHnA5G9?=
 =?iso-8859-1?Q?1vfu1ueJh6OPL0lvz6P96cRYtXrZgTknLzICtoFzEw8GQlgezFJ5lyIkPm?=
 =?iso-8859-1?Q?8KMWBIdzTR7T6lsABFk/6tU4IDcDcZzyLx?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9dfdc44-b87c-40d0-4d7c-08dcdc7cff59
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 09:40:59.7439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y5ih7iN/QzCLAeoQ/MUC4w3WA+0lugNJQwNL0GnhFLaA+3uyLUP0JHhgPmDuRILFJwgG4xQK9U0JZCVq4pI1YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8090
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, September 20, 2024 4:57 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: Re: [PATCH v11 1/2] drm/i915/vrr: Split vrr-compute-config in tw=
o
> phases
>=20
> On Mon, Sep 16, 2024 at 01:24:05PM +0530, Animesh Manna wrote:
> > As vrr guardband calculation is dependent on modified vblank start so
> > better to compute late after all vblank adjustement.
> >
> > v1: Initial version.
> > v2: Split in a separate patch from panel-replay workaround. [Ankit]
> > v3: Add a function for late vrr related computation. [Ville]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 30 +++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
> >  3 files changed, 22 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index fdf244a32b24..111e61eceafc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4802,6 +4802,8 @@ intel_modeset_pipe_config_late(struct
> intel_atomic_state *state,
> >  	struct drm_connector *connector;
> >  	int i;
> >
> > +	intel_vrr_compute_config_late(crtc_state);
> > +
> >  	for_each_new_connector_in_state(&state->base, connector,
> >  					conn_state, i) {
> >  		struct intel_encoder *encoder =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 9a51f5bac307..2de1c04bf1a5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -239,18 +239,26 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> >  			 crtc_state->hw.adjusted_mode.vsync_end);
> >  	}
> > +}
> >
> > -	/*
> > -	 * For XE_LPD+, we use guardband and pipeline override
> > -	 * is deprecated.
> > -	 */
> > -	if (DISPLAY_VER(display) >=3D 13) {
> > -		crtc_state->vrr.guardband =3D
> > -			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> > -	} else {
> > -		crtc_state->vrr.pipeline_full =3D
> > -			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
> > -			    crtc_state->framestart_delay - 1);
> > +void intel_vrr_compute_config_late(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> > +
> > +	if (crtc_state->vrr.enable) {
>=20
> Never use that. VRR state must be computed correctly even when VRR is not
> actually enabled. That is how we can simply toggle VRR during fastsets.
>=20
> You want to check vrr.flipline just like
> intel_vrr_set_transcoder_timings() does. We should perhaps add a helper
> with a decent name for that purpose. intel_vrr_possible() perhaps?

Got it, will take care in next version.

>=20
> Also flip this condition around to eliminate the nasty whole function
> indentation.

Ok.

Regards,
Animesh
>=20
> > +		/*
> > +		 * For XE_LPD+, we use guardband and pipeline override
> > +		 * is deprecated.
> > +		 */
>=20
> Could drop that redundant comment while at it.
>=20
> > +		if (DISPLAY_VER(display) >=3D 13) {
> > +			crtc_state->vrr.guardband =3D
> > +				crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> > +		} else {
> > +			crtc_state->vrr.pipeline_full =3D
> > +				min(255, crtc_state->vrr.vmin -
> adjusted_mode->crtc_vblank_start -
> > +				crtc_state->framestart_delay - 1);
> > +		}
> >  	}
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
> > b/drivers/gpu/drm/i915/display/intel_vrr.h
> > index 89937858200d..3127c94e9778 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -18,6 +18,7 @@ bool intel_vrr_is_in_range(struct intel_connector
> > *connector, int vrefresh);  void intel_vrr_check_modeset(struct
> > intel_atomic_state *state);  void intel_vrr_compute_config(struct
> intel_crtc_state *crtc_state,
> >  			      struct drm_connector_state *conn_state);
> > +void intel_vrr_compute_config_late(struct intel_crtc_state
> > +*crtc_state);
> >  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state
> > *crtc_state);  void intel_vrr_enable(const struct intel_crtc_state
> > *crtc_state);  void intel_vrr_send_push(const struct intel_crtc_state
> > *crtc_state);
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
