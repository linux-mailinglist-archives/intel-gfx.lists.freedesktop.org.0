Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8905EAC1F4F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 11:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF4210E2FC;
	Fri, 23 May 2025 09:07:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5vNLhVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE6E10E185;
 Fri, 23 May 2025 09:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747991244; x=1779527244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lDzJYouYucfZWcfC77ChA8pHcbfHWicbBuRhBBP+RgQ=;
 b=M5vNLhVgKR4zitvXKg3e+GDtfOwvFZkr6/sA9o0MPgaMBWAzz1OYEFP1
 A/3QWkG7YJBYXrHOEKVCRcQW0jPyy9h2vs52eDBajETogNyqyMZWQ1ul2
 6OJoDWGzaeOK72vTd78u1nEe+y/6f54DK/2PSYvsQ/1vzoTEpcUDU1vDi
 Wwevp8fs12h34Ni7LMgvX0CmA3uJqGojvxcY+TmA82AT3wInQmh44pcHW
 TeDfTAq4TblEafCQToGgoJ2EnCGGMvb8LxPNrnLKme/WP44ysFTlXOHhO
 YLFJOhUgXu1dgRQH4wjAKI+VpdKU9uySP9pycF2GAg1edrDuY1S4niMAp g==;
X-CSE-ConnectionGUID: PKctfJKUQWmB0oQJyR6i6Q==
X-CSE-MsgGUID: TcJSxIMYSiST00TJLrx8pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60696987"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="60696987"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 02:07:21 -0700
X-CSE-ConnectionGUID: vMxG5wk+QvqEYbiRlU5R2g==
X-CSE-MsgGUID: uML86gTvTFCkyawukfe07Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="172040221"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 02:07:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 23 May 2025 02:07:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 23 May 2025 02:07:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.50)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Fri, 23 May 2025 02:07:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GC2IqoTTnKEKbJxmSC2IMmWcrTE7wI13kQhtQy/flL5pIY3AlYmJ1lt0PlRalj6DsvFCjklmc4n5WhGckg271jubVUMq2A9EK/PgfbXprGav3z53HVUckIOiz93/p2avgSxLcFUzEaRGgKO6Xej5ubWXUv461F09nmJauN7jsA8MYmWtpQLp+nZIwI5TBZRlHigMcr9joXrI7zjIE90/9hAe5v6dBimMeRj34HRZqEq4ATlCmMNwnVs4EBGRBjZYINx0OzsIdaOMQFkzze58v7t+orh4z/5Dkw3BMGBMTAxsAn8Lkc6p50v0+YGAVjCJk0d68Hctw9+wCftgfwPDwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JktmAxDJtPSNFkbsU1W4JoQt/+EgMLaL+nHKzDnSn5w=;
 b=iWAQRd2nQXHWZHvSnK1in4IRNO7SavMKrwq4sc0qdFYO5cquP/TjqSx2IWdZA+g892qj8Oq1Lxhsep74LJYG4xPUxugdh6N9ghbBhnWdybIbBVIWmWJIBm4GuF6DkYlN80K8Ug+PzwA6EjwPlDD06ljt4s3lYXGCYuWGPtL3s+P12hvAaODSnMEdkPEv6VAQcudA/RyG8L9GaHddaVMwiz+YE2Wz2sMd1R6+X6HucDPOVFW99V2StgTsyVEkmpxVyUB/kAt28IZKt1TRBP/xCJceRsPtQwvR4+N9DV5h2hLO8RppRj46QtgsQolt1eBJX2hR5RfL0Sn+pgTxKH6mFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB7607.namprd11.prod.outlook.com (2603:10b6:510:279::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.22; Fri, 23 May
 2025 09:07:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8769.019; Fri, 23 May 2025
 09:07:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/12] drm/i915/flipq: Provide the nuts and bolts code
 for flip queue
Thread-Topic: [PATCH v2 07/12] drm/i915/flipq: Provide the nuts and bolts code
 for flip queue
Thread-Index: AQHbyODADWt9HN29zEmidMAVEZMRJLPbGYVAgAJDvACAApMGoA==
Date: Fri, 23 May 2025 09:07:17 +0000
Message-ID: <DM4PR11MB6360229CB4584D307D9DC7FCF498A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-8-ville.syrjala@linux.intel.com>
 <20250519170857.14201-1-ville.syrjala@linux.intel.com>
 <DM4PR11MB63608A222F893F4AE14DF776F49FA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aC4QKAibwpjWmLCf@intel.com>
In-Reply-To: <aC4QKAibwpjWmLCf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB7607:EE_
x-ms-office365-filtering-correlation-id: 239adcf5-9f0e-4c13-9951-08dd99d937b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Sh09UDbpIyu61VqGdLUmhw4kQDPp8mPffKJUFf3F5CjRNdyel2TTNks3pj?=
 =?iso-8859-1?Q?HfRTqNiYyx3X6T+8kPYw1MeewfhcIeT0dYOdupGDz5rdAGnnrgk79LYILo?=
 =?iso-8859-1?Q?Koh+FaMATgw7vdSBj3JWiYGligUxCjPozvfXOzw4vxcfbOl7mrSdetqIta?=
 =?iso-8859-1?Q?1SKGayyLCEmGctWYzqDj6iKFTOKATWwntaTKgUla/i40nOuFpMugkEqnVt?=
 =?iso-8859-1?Q?FWwYvZmNbnPBeWzmUdGk0rk0SceHaGkH5BqW70WH79Mg2KutRx4YA1x3PP?=
 =?iso-8859-1?Q?BBQ0xzsNkYJrpIlPt7CpDNETOZECqpa0EIQyYtipRL0w72UT1+VMHtg2Wq?=
 =?iso-8859-1?Q?AAceRUnWe30WyBFNKMUvWtN5gXLtO+udXO+spZTxsIRw96ngkZJSdiAoAY?=
 =?iso-8859-1?Q?LsX8PpDlizurp7jM2cR3qXWlkSu6Y/NZgaUL7OypBQcIPVU+nhrIIuesjs?=
 =?iso-8859-1?Q?FjszXMkCtxFq4rKRLiGlaYAMeWQv5rIesRWNcO53RP+la3YiedITsKWzLS?=
 =?iso-8859-1?Q?jG22ZO9FIVdV6LefL/ro+HB36UawQEGAmvXSrSUjpAs0di2nVV3QR73b0D?=
 =?iso-8859-1?Q?dkp+/I8x/rBP/q5HbGKAPDRc6x+UGUMe5NIoE+ZA5mP+kxrqPqBuD+kHsm?=
 =?iso-8859-1?Q?769KDQSJi1Pk2h+7AJfXS5NWh9fZCQrKul71/mCF9tYR96ssCsGrPfBT0A?=
 =?iso-8859-1?Q?iifi3mtTqJ9OG+Xb+1nHQfHb19Gq1E1M8WU22kuv2V1JIV9Txt60OQdwVm?=
 =?iso-8859-1?Q?90Y7aaNS6GeZVVR9wGlE136924QME2hXvq3QX6Sz7pGVli05viCfhjDTwN?=
 =?iso-8859-1?Q?3co/3XWNz5aKTjQAh3dkWHNXHnPc8fwpkMyJAytfLUwZuhTPuXg4+BdDYj?=
 =?iso-8859-1?Q?Xib7MG9SimcXxIGbJ+GFbHghh8bS/0w0xU+ECxlRi/0yIMC+3U6h0M9aCz?=
 =?iso-8859-1?Q?jiyfKCMt22GWkguJ2OzeV9XPCuHxusXbylGdNGHPLK6BtMCdFQ6wH6HRhH?=
 =?iso-8859-1?Q?WggQMbN7Fr0Par/vLtqdQPXKIh98RnVWIRwnEwd+hcg0L/CpWlr9GIozEb?=
 =?iso-8859-1?Q?yxrEhp2wzvtARmWPRUfH5pXCl5iTeRmYmyxoerdFVjyPi0YYmIAL9a0/0g?=
 =?iso-8859-1?Q?63UARg+RzHES3LxEtVLGVPeV32/zsd3gNln7kmI/sMSCFEVzKN5BHuBIoq?=
 =?iso-8859-1?Q?JVFbj//eBUSo/MkIOak4u+emdGLQxJQ2V5CSHhth4UtVEsIV1DfmLDIqvw?=
 =?iso-8859-1?Q?PZUjyR0waF/mgtX6wHV2DNhM9b++a1SDHCwdHKsx9GSrJCGj4BvEu4IJRK?=
 =?iso-8859-1?Q?9/hRFWwcvTSWzJXyT1qdOFOEWOaqSkFbCyer/v0LjPynY8cz8XjDDbE17Y?=
 =?iso-8859-1?Q?8UtBdY88Msxamorm86OEihOd+Yn5LNwafliawwhWpCQxWczZjigs6CvR52?=
 =?iso-8859-1?Q?7yK4yI4SVwmjqP+gIa1u0r/PXCW2bo6X7hTw98icL6K69rK2kqBOr92JZ5?=
 =?iso-8859-1?Q?eSLihuHWWNVX6j3qOZVqpDLXfbw2LvUHJtHPEy4Y6puQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?sXG/M79tAr6M4WjbNGDDcZRnN8s1I6w3LYLp7k2vvE6urJ7H+n3CGXyvcv?=
 =?iso-8859-1?Q?cldWXkwdMZxNUOp/7Y86xNbL4DSHtg3Wh8g2mXzaFCca9Ea2PAmB5nfdNu?=
 =?iso-8859-1?Q?khuQZfJZupIoSwUC46opMV3+OxXYEZ59qua1CoQv0q+PKz/gMuzT4HGHil?=
 =?iso-8859-1?Q?ZPiYjEUPJ/rW+ZaKhwqCZ8ECi2w++rY8Z7cv+Mfb8TsnjZqokxQYfDBZ0O?=
 =?iso-8859-1?Q?//trEseVxeNa4BE6mZoNF4z58f7PdZ7OzRqvWeCbA5dVZ6emEy9eam4BIu?=
 =?iso-8859-1?Q?B5W5HRFA1khazPJNtboKcGAF+xgKQvZB3F4KLtHYPOpRVeyo08KSO203kx?=
 =?iso-8859-1?Q?0qIbc/H7La1OpqgR8/q3C8J6DMCvS56YvtzYqyiu6M9MBJOYDJf2EAvvm8?=
 =?iso-8859-1?Q?E5FKp7NvFg3INq5b0M734fudpO6atCxn7j1tGkvLVQ3gMT5Pxwyil/AiSP?=
 =?iso-8859-1?Q?whqDxcgAzJdkgOF/2Rgb60Bh767vQlTbqP4Ghyye8hKF23G7UKc4miu7Dr?=
 =?iso-8859-1?Q?R/9wv3CmTuxCHP6YBmJFaeH+HViydmHmna1Jns+P14ZNPzL/qveDTwN4XH?=
 =?iso-8859-1?Q?8MFyj8QkQ0+IlBv5tn//NMj5iHg1/RTDhIJpU/eCMyJSHX/k0cCRDKIpx/?=
 =?iso-8859-1?Q?mXmVLvqlk6DVxnk8nICDfgOpD8L427guzym+jaAGqI6JqVv0rHgigqV/3Z?=
 =?iso-8859-1?Q?BQPEIJqTPyxd6IAzV+iDJ9ZePtJudxhlwt9j1ghyiA+QHlZOvbK8nX5Sxs?=
 =?iso-8859-1?Q?m+SuaA5nYEpSFlOg4l1calKLAOgo4yZ00tHjRvZUE2uAgK/fpMJl3C4CoF?=
 =?iso-8859-1?Q?xsMWuoB1mpzK/uWLJfo7kAJffyEio21OPivLffcq5/9U9QrRhmaYFx2OT0?=
 =?iso-8859-1?Q?EQuD6Y8w2FP4LVrSDN3r61t4A66xMGhmk1cJcUCL6/R5AVIxuqypDbBP9z?=
 =?iso-8859-1?Q?UaVmAGVkmYN+L23mdJMPKjLRdaibsh7wJNP4MhdDRjU5XKBLJ9HWYdll+I?=
 =?iso-8859-1?Q?98qVb+gU/yHMbchHCBtGhNace7mVV5fZwOEtjEmsh+OH91/JD8IB9j7VML?=
 =?iso-8859-1?Q?SHsSeyFn76xYN+sIn8rEhEeJqNLyNPpKXANwx9dNBDwntqchjlUkq2d5Q9?=
 =?iso-8859-1?Q?+8ZffQEOV7ous2rh100/t1ivpYeA0wQRnC2yKr8hzSnV9jL0dYxOSWvKBL?=
 =?iso-8859-1?Q?C/LO/baT35J4oTonnYpXWkaK5OpPyNJj2g2ZzhaFUOXlrXBLg4/trPHiI5?=
 =?iso-8859-1?Q?3pZ8UPG1XlcjoxKbSMD7x//mKfxwtfISNQezq4wEL8sO8asfzl2VDkm4TX?=
 =?iso-8859-1?Q?Ja01RP8fUW8tEt3UP6dOKl6pDAJUmUKQrClQ/2BnAWFP2tewPq6bjdqFOo?=
 =?iso-8859-1?Q?mqoBUQGY+ty5O1znkCvCUnWXBtVoDvCTADqgWh/EM7i7TrN9iIE/ZyMMe1?=
 =?iso-8859-1?Q?xcj8KBeBeAeRvu4Le4qNEpu7QV74xWzI1LSi8B6kU6vW3xjHkv9tTDO91B?=
 =?iso-8859-1?Q?VD/NWHIyk+g6Z0nqrrEUNdz0HQF1oOhHHdprX3Agn8n+zyIlbwONfCJgPm?=
 =?iso-8859-1?Q?MXODyiYK1aMa8MSrThlSdlGVnhPpJ8ZaiMzzYycQFetVerUQM1FupNBQXF?=
 =?iso-8859-1?Q?1KdhM5suLBqZnzauG5+rIWMjvxy8jhH3d6?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 239adcf5-9f0e-4c13-9951-08dd99d937b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2025 09:07:17.7425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZkrV54jFgn9hsS7AYfXGleZhi9ZficGqWhsVv+rObO1lBALplBoE54PnkFOrmSTTOv2J5fuqNK6ucoViUHJ3+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7607
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
> Sent: Wednesday, May 21, 2025 11:11 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v2 07/12] drm/i915/flipq: Provide the nuts and bolts =
code for
> flip queue
>=20
> On Tue, May 20, 2025 at 07:06:42AM +0000, Shankar, Uma wrote:
> > > +static int intel_flipq_exec_time_us(struct intel_display *display) {
> > > +	/* TODO ask the DSB code what this should be */
> > > +	int dsb_exec_time =3D 20;
> >
> > I think optimum value would be 100.
> > From bspec: "For the flip queue use case, the recommended DSB execution=
 time
> is 100us + one SAGV block time"
>=20
> That's just a random number someone pulled out of a hat. We currently use=
 20
> usec for the arming registers writes, and we don't have any estimate for =
the non-
> arming stuff since we don't need it. But for flip queue we need to guesst=
imate the
> whole thing, so I suppose I might as well slap in a 80usec for the non-ar=
ming part
> now.

Agree, this is more of an empirical value provided. Yeah would be good to h=
ave this
extra buffer.

> Ideally we should calculate this based on how many registers we are writi=
ng, but
> that would require measuring the DSB execution speed and coming up with a
> reasonable formula for it...

Agree, it depends on the number or registers. We can extend this later to g=
et an optimum value,
especially where we have just 2-3 registers to update vs 1000 of regs for l=
uts etc.

Regards,
Uma Shankar

> --
> Ville Syrj=E4l=E4
> Intel
