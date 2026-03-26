Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIymIUejxGle1wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:08:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7730332E9F1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D8910E249;
	Thu, 26 Mar 2026 03:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e34AH2MC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391A110E249;
 Thu, 26 Mar 2026 03:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774494532; x=1806030532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2Efh6mq6Sb/Z+g1dr6BQYUkvWNMr5iOTdOn0QvkFxZ4=;
 b=e34AH2MCrQlBXxx7eN5UNEybFN/ZAyfHVoCGmWZyptUiKF2DNDdereGF
 dkYK760ZhbtM05+BVlIQ6FibfA3TgUYA8awxYzCqumWthijpdmJlI2hX/
 sMDwQYi6AFXE7V1wILviajoVr1WEZ5tazaQ9Lxamzrt7juD+s+GbsRQYU
 Uhk4o5PHs3gTcfGMCC6CcSvKOGdjgnIlJ6K/5aFpiGtCQ46By8Yesu8X3
 3gYeI/LYNlvqYB1OuNP0aIbEPZNeG+rtSKRGTicpTH/RO1wiph7fxTjF7
 u8FS3naIKChngvkZxtldnhpF3Q4EijVcDYNIxtwPkhhZy7L0RVn841uB0 A==;
X-CSE-ConnectionGUID: AHbkoALLR9mMPl7azNcFIg==
X-CSE-MsgGUID: UDHNFFGwTlqzoBv1T05l6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75658669"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75658669"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:08:51 -0700
X-CSE-ConnectionGUID: Jm3QF43hTEiNLB1MMHO/ig==
X-CSE-MsgGUID: 2NvprrHHRNCmGv27hBf6zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224893221"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:08:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:08:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:08:50 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:08:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e/jmqjVP+Zmf1UZYP/Dr2Fq23bV6ZjDFdlDtZ8dTKkGw0A2ewGAFiz94uBSgIt6QUVw4kQUsRt6L2tE3QVCnmH9nsEBGxj7F19doGu9IZLHLHXjaxcKOoNYybVwCcRrAxjVP7ZveckMYi8EnSiiwqko84+ios2urWVpodz3DMwj5TiJeUYnANHciQLg5EnhRkJ1+6SUiElbP9+5apOHX7eK0XaH8737QfnA/nHIHF7lCmxnhIcchrDV+P+8d6naoLbdthk9eXP9ZgVczkpwkUXHh0Zi1rr4G/tXnReN0/wrX7zs3VBwFMVXavUGeEfaeVDjlJfyp/8CHKXjHB0PXbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Q3OmlBo+g2j1799kbIYfdzoPwJ6qq/XRAjXNlVqaXA=;
 b=QbEij6fUmC9SNAcLPbUatOdaRtUUAWW0+3RUR+3htj6ZC55eHMuxQ0hJDwQR/WlwwBu4KlZg2xvV4B59hMk9aLwQQGwfPtn809XhiO8+VoK9f1r4K2oagJcoWY1YjQV6ZmcQrMGgU/ki2qHps8pBAvg3hV/D82TOJlSq+hL/e6u3289id8zOCDIW3/nHENUmxcu8zOx9ETWi0xgle+0k7dxB8Elddq/V/Y8QNG2v26bI1/1DA/vMHcdfJMnu9A0JzxSd74iUOSmh9JpAffnw21EExkGKRTuppR6ZH5r3SLdwSpFU30KPm5AZ3SptQa2BbyID3DvqQFqbbvuD2CPHLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CO1PR11MB5010.namprd11.prod.outlook.com
 (2603:10b6:303:93::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 02:53:35 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 02:53:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 10/26] drm/i915/writeback: Add private structure for
 writeback job
Thread-Topic: [PATCH v3 10/26] drm/i915/writeback: Add private structure for
 writeback job
Thread-Index: AQHcvEezn8L3MSSIpkWnQHzzVLHMqrW/Kg2AgAD0sEA=
Date: Thu, 26 Mar 2026 02:53:35 +0000
Message-ID: <DM3PPF208195D8D4C0CD074965E2C033FEAE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-11-suraj.kandpal@intel.com>
 <acPSR7DLxbZ9_5Vw@intel.com>
In-Reply-To: <acPSR7DLxbZ9_5Vw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CO1PR11MB5010:EE_
x-ms-office365-filtering-correlation-id: 5cb07363-ab89-4c6e-6702-08de8ae2dfd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: reOtmkhwIy2xC8CIf519MxgrdRQIBqVvQ7UhrY8mSdATa9eHj5MNy1TWw9cXeMPhvBHhHTCqn6K1ghVXd4BwNuscnqDpiUl3GGF2ev6aIo5sdDZ65Z7upu3EpZ0GPdzvsds2rBPHBwo+1nIC+ljECY1yGR43xJDf2fN+H6czeWoXKsmBcvqFh64wVRF667/TYS4nH6EIGqHTv/4ojGx66Bi77NIAfxxmrbAAjBrL83+EmO1fE4ONlqxClR1ZEWnspHPFg0CprjvMlo/BH5jK/BZxDKxoAMtZ9lzC4l38x/G7MDbxy3eAOkUzqGSoh2Odd+oN5HfDInjJ4w/6UJVjZWi5igIV7eO4T5rwuCpF9Y4/F1idB4sd8cZ8cXT9GIzhlZwCbbniKyLBMKRkppm9rpJQ+Xvy1CcQx5iKTGSJZapnOsEo/iWU6TH9O4FIKq5kIqr4IoaNz8sOSZr/gg7g51tpq6/Mk3amz/WM2LHSw2EMni0HhCmZHrR7lQmqCTh9+9rtT8ZvF66WXpHeQMNrfXoEDNO2uYhNKv/u9SEPCQXP7oYhd9q6uQm1eAcRlSS3WmmE3nQ7e3wrTyxe7D4iuIuD1AdeF/QXU5zY6zGP2kTMgeiYmZoclmpXJxObXUZHPwak9R2vBwZZUMfK3pCbNlK1iKQ7fgADg5SEGVoeFaCZ08VNfQesyDIyobkbMxV5gb2Zqx2CvVgzDpbXEREoPbuG4yY0z8salodWhPrU/4rMzsFUEPG1yL8IJoAUrYTHcoNlcCGJ89ADsA5S/amI/2+yr0c7s8tEcgX3MRalPgE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?G0IL49Blvn4evOUh/viN9AYlchZfIp2KHpzWCIox/d+xlfLDdAVfBHajbC?=
 =?iso-8859-1?Q?OhM4DUZ56dm+FyTBlmEk75+s9w+Ev7jHNky75f3flY8yqQMUHGwVf4bS+2?=
 =?iso-8859-1?Q?rC0rpSGco0ykC9lyyv7WoSKO93xzmCGKepDRkNPw5jc7k6fF6GyR1PvFy2?=
 =?iso-8859-1?Q?r2ZhlfR/9oWLRip7SzCSeFqZ0ZJv/TbHE+myWzuwhg92mWRQ8ByPUdnLGT?=
 =?iso-8859-1?Q?YtIz0/aUtVGG7CDiDjvJS+RqrRQKmoMtSn4O67757BBXyByBImcsdOhJA4?=
 =?iso-8859-1?Q?9U4L8F3lTI+52gAJQeUv7IHyhmH7ufkQ2qXBBS+IxPuAnKCvdAM4OtyyGC?=
 =?iso-8859-1?Q?a3yF3zPIVOmfE//3hL5jXM942VZf+xY/Ov5G6CtpqT5cUep3NXDxBT/wrl?=
 =?iso-8859-1?Q?Wp8nIArQ7bljYN38nZ06F/Z7HBHUT62JD+MCBTHOUiOAjMCrH+X0eijiWU?=
 =?iso-8859-1?Q?OwZWC7CA7r3gz1SjGPdkBgfABHZxW1jhmW4eA0nTcdZT13+/eUZLKtQ8Rv?=
 =?iso-8859-1?Q?UprhKVz+nb8Q/tNEU2yT0thNLYQ8COIs3z2z5VIpVwVVe/o+jHH91rhIoS?=
 =?iso-8859-1?Q?KT/VK2F0VJSMD5Jx7MLDyrekqNyz1Zif8GkQTm6z5LNqce6vqvRqVVtmBY?=
 =?iso-8859-1?Q?rn9hpgxkOFKJsc7s57+3zwpaZkWiTl3zt+avCd/RTRQC90+l+v4zGo+TQm?=
 =?iso-8859-1?Q?X/IWo0DJYXxmqTnIypLJon47fn6+57oB/H42/9p2V+aQA375ClrD38S+nW?=
 =?iso-8859-1?Q?x7nWwh07inUF1TmXmdff/40B5qrVXJUs2CCVyfZUbTBe892ltUKkCpQLkx?=
 =?iso-8859-1?Q?pih9wvkEXce+mwy36hLgwA4EzHoLs8+6Hjqt1gAx727iPUsC+ssOtaaIC2?=
 =?iso-8859-1?Q?Bn/IcttkyqUqJnMFpUVI3vobdjw9GnqQX7/eCaup31YNlNo8Kfj67mSL7M?=
 =?iso-8859-1?Q?3opbp45cNyTrKDgw1xYK6ZSCNFymdOZwqNY99G9j2qhwVf7+Y+RD5RjO3I?=
 =?iso-8859-1?Q?UiQx1BBM1odoM+n0AjaBgoVXgXeZ05smuJkNStq81E8jWF1yI3nsshBmh4?=
 =?iso-8859-1?Q?mKbqoCwgyAticIKYqxDb4gWdOw9qUJjkl9WcUfv0As1VlHyCktV6TUM9CV?=
 =?iso-8859-1?Q?dFb2OGPdMhJ/7qlHfzp0TtFYt0kTqSNuqfO/Ad/WhSs6l0hM0TrJ3yChaj?=
 =?iso-8859-1?Q?TkIwIafrSqXDptmft9vj2eS3uOJ9VqHNBgs1o7qKvlWV4cLJQxGgKa3v+Q?=
 =?iso-8859-1?Q?WJPfz8+1WamJC1dBGBvWDQhSp3z9vijz/ZC0fUh41vSlDLc8ZCzLJzy6iq?=
 =?iso-8859-1?Q?Ejmu1P5dg7SVxlrQT58anleRB3/WgbreOD3MQbn+z3uVV93mvynpiCni6B?=
 =?iso-8859-1?Q?PBRD6XgKH2R1clYhtAeFWX32qQr74zFg9Q9LNTd/HHSx+EljDMTf4W9K81?=
 =?iso-8859-1?Q?FeqzBM0Om/BpNw9YjPN4w8Rq+9BW7Ik8ycOuna2dbDF+A3VD3L57SjoYDH?=
 =?iso-8859-1?Q?GQs95gYDI1PAdGo8mvrUjBeupRz6B61OCsq4jOqmWFHzcmlL/z9Mj0+0VL?=
 =?iso-8859-1?Q?cZQKG8wjsqfO3/i4y01rlBWklN9WHhlUnd4xncMvpdFfV8CyeIm8+b8gGs?=
 =?iso-8859-1?Q?dqJ43B35jBn7HTCwUlwiKhpUxT/Nr0hz8ibosPViXgnLAM6KcsIHgLBvsv?=
 =?iso-8859-1?Q?XAU4/eKWr3YZqK+rqHuROeQtYgBkLdSX5ds9C9Jg+yfmgLGxtrHge5Pmoz?=
 =?iso-8859-1?Q?ShTu5t/EPgJJiWn9pApiIp6eQNwB8nb0IvUsdS0+dnO19OcA4FZejXCVMW?=
 =?iso-8859-1?Q?gNOJUt8Rcg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ty2zoQj8Mne1x6xnMGFzz/GHZk3UjWXsWtl1n9HulF29sQkFn7RJCEycAASomzbq5ny7e3wr978SG241zdtdWengfdqMEaIIgiVbFROyxxznGkSqhmaOwKJIo9s+N1XRU6mJsJR8VN7rSlYnGQ3skHd9La+BIZWGkGl1VPhoJkA3VLDkJhBvDK20FIHNVzfdg+R8h4iWYWebBR67JmTFJcIBZoTyj4RhUWvBlN7CLNO4BWhZurZMqiVfb2LfsiNokbkHBGRMx6lYSMWsXsm89KKbNaYQUP/GUN+F3NJD8dmNhtc9FLFcdJhsYOnkFj6jX/QJmlMTg4FIqg5K8SbPog==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cb07363-ab89-4c6e-6702-08de8ae2dfd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 02:53:35.5576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O4CBoPjQNZgPGHBAjTBgRYTAho22nJX/XEON6bbRGC284pZSc/n9bkq7ADuygMPprkUr43DnAGs/qmC4jOoQ3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7730332E9F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 10/26] drm/i915/writeback: Add private structure f=
or
> writeback job
>=20
> On Wed, Mar 25, 2026 at 04:37:28PM +0530, Suraj Kandpal wrote:
> > Create intel_writeback_job to track drm_writback_job and other
> > structure we might need to complete the writeback job.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index 1df04538d48c..02c61dfcacba 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -24,10 +24,17 @@
> >  struct intel_writeback_connector {
> >  	struct intel_connector connector;
> >  	struct intel_encoder encoder;
> > +	struct intel_writeback_job *job;
> >  	enum transcoder trans;
> >  	int frame_num;
> >  };
> >
> > +struct intel_writeback_job {
> > +	struct drm_framebuffer *fb;
> > +	struct drm_writeback_connector *wb_connector;
> > +	struct i915_vma *vma;
> > +};
> >
>=20
> Please squash with whatever patch that actually uses this stuff.
>=20

Sure.

Regards,
Suraj Kandpal

> >  static const u32 writeback_formats[] =3D {
> >  	DRM_FORMAT_XYUV8888,
> >  	DRM_FORMAT_YUYV,
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
