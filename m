Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GG1LutNxmmgIAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:29:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCAA341B65
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37A210ED54;
	Fri, 27 Mar 2026 09:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="APSaAP90";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3996210ED54;
 Fri, 27 Mar 2026 09:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774603750; x=1806139750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7rBL4lSQNwTSVvwH9P/DAGV0XQ96j0MUqdMAJ7CZp4c=;
 b=APSaAP907wHBdfQM3Aa6DA9QTHrEtraFjWrYauow9lxmxFlu4Q0uej+O
 5pC2tDRs8b/xWKkvPRdqy0d7WUuasxHMoc8aQP4SekbDQPogOazg2f5iy
 YkK8jABYyXpuc1JyraqXISIt0gUKoTXTs9barLQxh50DDlX6tJAXJ4eAV
 /ArUfClgJDBKIzhFRE/hXuvLPwVSAN+bYwH+bnCUj0/770IPj/kod70WJ
 rrbZ3tuIKCY4vboKw6uG701bVFcUz3gprFthrKZg6tEtpQzcHKqMB/EWN
 SYUdM336F5C9V3VFQMCNRANnlAWvmbPDmqcwuPMYkV1+DNyBJqXIq+826 Q==;
X-CSE-ConnectionGUID: 0NkxfVceTVWvASrHGf+pvQ==
X-CSE-MsgGUID: A8zpIBtoS3SK/KXxOEnO8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="86750567"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="86750567"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:29:10 -0700
X-CSE-ConnectionGUID: t82OVACnQXe5s42/vA+esw==
X-CSE-MsgGUID: lbARCvDaQ46MweC3WMQBNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="225265182"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:29:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 02:29:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 02:29:09 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 02:29:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J12QbKGnmc54SktNEFj2GzhIkykbcTsKNZ3Pfurpw3MyoMvmXabC2//MzY4a0p0vvnqhItuFArKk9PFSeo3BdqHys1GMDGR2GguQw5m851euplFUNNaJ0Je0H5g32mZjPhRqjcfj+nkUELHM1pRG+GhS+B7iCnFYOphNcjnwofVrsxns1b/EDMMHKiIz6Sfg0hhCgSQYMZnVefGhL618XRbLw0jP2U+qIv+NA8zdYpW2Xrzh6eL1T85auifGXW8BxDWetbh2/qtHKH7OuV56qzvZkxzHRg9zTY/xJT2wnY8f483ll4zyDYrjQV2vjjrE2Sd81DU4aooRZr85hQiJcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rBL4lSQNwTSVvwH9P/DAGV0XQ96j0MUqdMAJ7CZp4c=;
 b=NGsjcVDonpqZOUn+9xIY11ddn1riDGoOuT/EJJRcWjX1lc60xqwWiGytaHQdVtdtW4Teb7lsoqtuIcQ/+m8mMt+exRTFdTWWW3NAOPmHILUr1b/qqrmJbOOOOTLIW0DzjXMpDWxLATgFIGFkDxpY9t/iEfg/qeUDSgK2vV+ZrsHgLi5emoeK9iptDbYN1R5tq6gcJoVGf6kYQ2x7kLcAb33s/cot+TVbbwGQC3zxGstcaoLK1d2+yuKbe7yeKe0giYBzFSacOuED18u8T6/0s+tSKueNOgyxh4h+olPlM4EvvG+yctC5/wgflriuFquy1ohcirxV6pnF8IshSPzvnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7876.namprd11.prod.outlook.com (2603:10b6:930:7d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.6; Fri, 27 Mar 2026 09:29:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9769.006; Fri, 27 Mar 2026
 09:29:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v9 3/3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v9 3/3] drm/i915/display: Panel Replay BW optimization
 for DP2.0 tunneling
Thread-Index: AQHcvFCmJXm6TmCSFE65Y6ngWSR34rXCH62A
Date: Fri, 27 Mar 2026 09:29:07 +0000
Message-ID: <62defcdb07a7f5a06b8c4ffc4932f28dffe68dc1.camel@intel.com>
References: <20260325114154.3688550-1-animesh.manna@intel.com>
 <20260325114154.3688550-4-animesh.manna@intel.com>
In-Reply-To: <20260325114154.3688550-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7876:EE_
x-ms-office365-filtering-correlation-id: 38194dcc-b23d-4d97-5ee0-08de8be34b55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: mw/JCNZevAylqJRF6Jot3UQTJblppqtJHfLZcmWX5yyniz0BeBYdmwkjlRxOYa+wh2iisIHcdYqcBVq1SYkCnl4qqwFsofBPYMFYjRiwYdAoGlh6Khvd3RUyphgGNbsdSFyA5DjKG7hwR348LjEo36kQjm7CSEFYDj9h1EPwQie0h5sECJ4VhlxJYcOqVuG1nOHe7ozsVpkq4dB0rZKNQ/YRL9uVpxH6Et4Glc7V094Fekiacj6QjlNISzoJFkpmqJTPjzojE2bx/oDDEZc6rvhd5D2grkkocn3wvpKQRH3BMaCZuM6MSDBlo0TdrgwohuanIAVQL7W3sZSA5X2HsCkAfKyi4Sloy/Scc7OdnHc+cOr1dLjVYO3qjCM/vThv+weqS8vS1S9Xt95+Suntq6o93nmYOCyPWvWZX+coCet6nwLr7bL+eGVIaFS3Ql0MU/+FywzvgtJHiB4Fm3mMJQLwtapW2Obaga8oEyNXtDUclcJip5avQnZ6THA3IxoW0yjP03ZHCiQFTe1mmmoGNdTI5S2xJNw5Srf6Hhb2Bk+Vb67hPjxkPyXOsljfCc3PCT/go0cQt7cFR4MUOAwXYKV/jEPK0/N5Co9atU/oGERUv8dese3nvCdN4vBaODCwH3k0eQSKRY09r8WIelnPw+ErBH7tnOB8N9VVBDBAcdJG5Nt+5J7KWBbhifll+Vjpe1xJwj3wNgcuG6z22plThB4JDesb/QYv/EAlmJpkdpCKmqouPtMnV9U0GgNaHY0o7A2mBg9XMxqNRnQ6G02fCyF/53LGkW2h3BU+OhW3WGE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHVMTitUZVAzaGZQSlNhNWR1eEgwcWxJNWxMc1pHbXo2anhKSTRVYTArR1JZ?=
 =?utf-8?B?L0phLzMxeFc2N1hrMHgzK0lTQVdPby9SaUlZb3NpTmhvT0FGQVVrU3BPREZB?=
 =?utf-8?B?VUl3QTE1RU0zZWhRQmtnVWdldzVKczhreVBrQlRlOHdlc0o5ekhVbTlJZ3My?=
 =?utf-8?B?Q1k3S1VBSjBCRGJNcDZuNThzSlNvUExMMUUzVW1NbG1qUi9HaklTL1QrNkkz?=
 =?utf-8?B?N3VwcEZiaEphdE1tclVLTGI0S3pxSXU0ZHd3c3BMcFZMckV2MTVCOTByNng3?=
 =?utf-8?B?SFEwdlVrMXBxWGxYQ3c4M04xRllRSzlrNmhBM1ZraURPcjc3T2hsRkJHWXhR?=
 =?utf-8?B?N1k1V2kvRm5vNEVBRnZMN1ZhSFkzVlhKQVEwZFVLeU1FUXJNZDFlRUNZK01D?=
 =?utf-8?B?MGJoTEFUanZ5VzN1LzMvNElOSHpMYzZWYW9wWWVMTElycHNnZkx6UnFTMm8z?=
 =?utf-8?B?UlFGR0Njb3N3b3J3QWNHTGxxZnNMU2FWcDBPNzlCelB4M0FpMFUxUUtvdEIv?=
 =?utf-8?B?anJZMDczMkIrYTBIMVlOdUptNE1nZXRJK21iMUVnT05HQ09DZWNwR1hQK2RI?=
 =?utf-8?B?L0wzVEowSy9ZNE9ES1NuTG1oa2ltRkR3ZFF4b0Foc1AyZjQ4UVJSQnUrZVpw?=
 =?utf-8?B?TmRNVHJzVklMZWJRVUZyTnQ2c1FGMlorR0d6OHBwM3lUcUxweGFSYldpWmZo?=
 =?utf-8?B?TXVDb0ZDbWxxSXE3QktmZkhGeGNKRThJMkxLblBwOEpKZzZmTUNNUGZxR2pm?=
 =?utf-8?B?WGNUS1drRzhnQVh2Y2Rtb0pyWDEyb09rbE9rYVNBQTBOamlkcjdaSkxWMW1P?=
 =?utf-8?B?T0p6NnYxVWxmLzlxd25SYU9iZnZuekJPb1U2ZDJxaGliVHdQdE5ZMjFJTkxh?=
 =?utf-8?B?UndrejBPUDBGT3c1UUt2aFJlMFRISEN5YUhrWWx5b1FnZVdJSnFBWHc2L0Jq?=
 =?utf-8?B?S3hYZFppSVYraXhjNGV6di8xUWpLTkZQMm96M1ZJZlFkTTluVnpYbVdXNkJ6?=
 =?utf-8?B?YnZSZTJmU1R2d2ZJeFppNnZsWVoyY1dZSk1nQ3ZlQVZmTnd4SGU2Y0kzTjJI?=
 =?utf-8?B?MTZiRkpIL1ZhdDNERGNTV1YvdUVLbTJGNDFRRDVMd2tpMDFXQ3dEUGdIamNF?=
 =?utf-8?B?R1hyV0tFWUhTcjM5cHdOT0UvLytvdkpZeml1NmJRYUNqaDNJY2YzRUEzVDVN?=
 =?utf-8?B?blhpdkdOdEo0d0UrTjZMQWFCVXNuM3gzdnR2YlBneHQ2ZVpUMDVjMUM2Yjdn?=
 =?utf-8?B?WDlqQzJ0d1ZzdjBXZXcyVkhhNGxNbWY0OW5nMHZ6dzdPcTdScm8zNldqUHpt?=
 =?utf-8?B?TFQ1TGlkdEM1TlFlVUFOSEFUOUhsWHFQQU1aQXBnbFFPYVRub05EcnlsUUJk?=
 =?utf-8?B?OUtuV3c2d3d6clREY2JzRTc0aFI2c21SNjFoVU5MY3MvV0xzWmRpVWlObjc5?=
 =?utf-8?B?b21qRTRwdDZ3Q3BQcDJ0cUFoN1RGVWtpenEvOTIvUzBJMEtXaFVCWWdmbWpn?=
 =?utf-8?B?MEUweWF4WUNYRWR1QzNEUi9tY3k3UDZkckJVWFE5a2syQU1NUFBVc2pTRkpm?=
 =?utf-8?B?cVlsc2dkZS9xUkRGNUNtMEZWakprRVJDcThhbVNyZEVoa1B5R0ZSY3kvQ3Rx?=
 =?utf-8?B?MzFIZTExL2lCN1B2VC9TQW5hRUcxMXZYRGRFMnVnMWdZK0FOc3pOWUpXNGxq?=
 =?utf-8?B?SGh0blNIY21vMEJlZ0ZQamlwSklyanZUVUd0OW5wSGEwRTdRR3JyQ3gzNlFS?=
 =?utf-8?B?Z255MVp4N3RMUzlremN1NHdQaHkzRDFQUzAvYWR1bFBuKzZISE12dEJZdmcx?=
 =?utf-8?B?UklUV1ZkUXVoV3hueW0rMTJvUUZJaksxb3M0NWpLTlozSE5Gb0hGcENNZzF2?=
 =?utf-8?B?SHdOZVNlWlpXc3BmaTlQeEU2MjlSUFlaTjFlSVh3N3JLdEpBejVqUkdqK09R?=
 =?utf-8?B?c2QwdHdCZUFsYnBrOS9WTHNSSmN0MXd6RzRJVmZmUXQrSm14ZzNKb3VwSWRG?=
 =?utf-8?B?Q0FOMlFldGR0UmJUY2dDZnh0d0NpbitJanFVMXZrbkExZGNxRGZjeVNUVDEx?=
 =?utf-8?B?T3VVOFQ5SFlNdTV3bHI5Mlg5VHpTV3N0ZlE1V3BsdEtXK04rSEN1TDRGMHVK?=
 =?utf-8?B?b28yTFJNeURGYXpIL3Q5TFFQZGs3clVJOGdGdFJNSXhnQkRkNlBuWFZMUVAw?=
 =?utf-8?B?UTNRWkFvWFUzNkI0N2k3bXhOdmU4Ukt2T21OWk01VUc0RkZvWUk4TVU2cEdK?=
 =?utf-8?B?NFBOVmVMeDVVUnlJVk96MWZ3UE14Y3cxeURpRjNaS3g2QkxOYmkxWDA3Nmxl?=
 =?utf-8?B?L0pISUphWDNNV3ZZMndVRmJ6TEFlNGNRNTEvMTlFVzcyQThQbkJMei8zcDAr?=
 =?utf-8?Q?5iNp3BuLzQHgswqqf0TIuviCT4M+U6jyuapLHLKXKTwzy?=
x-ms-exchange-antispam-messagedata-1: 28+41Fc/mDdFqiGg3ylBgXVm9Zn/sGH4B1o=
Content-Type: text/plain; charset="utf-8"
Content-ID: <14A4990DC974C247B395647919DAFFAB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PHHk1skjTK06ZBcqTHWO/eV10nzEo3RlVDHYmTFZhqVkOsS4qdzixmWQE0JgYgCfVgwRIEsvEhGNneH+d6l3fiCHq0fepbuKNElnZFA5xK2OLK6pWnHpkMjlYYiZTO9u+VGcif6tVT8fFj9wIDROJyxLkOluP+qWH0YmAv0OE02iDqfBW4iJvwcVTaRT9JY9f4xdnFmRJ1B4gevbNaBUjnV9pJmxT4PY8Ftx5AVdUVB2cWC0TyuPFmtFgzvSLWUtt1YlphhaV/HAPoLGAeOJDyn3l4lNN7D3ylA2fiujyibrfUhPQ4M2mH1dS5K8/XZTrl3x/ritb5PW4FtMY7Du6A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38194dcc-b23d-4d97-5ee0-08de8be34b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 09:29:07.0838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l5PZUazXcgM0lTe/Fq9Rky23+yXAPsSnt94jKla1x5opOjYwqRQRRzib1VLrFPe9cun46qZjvP8jKxvrwcKZaSVaVAVEYJhAFj8yTaLu7ak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7876
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DBCAA341B65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAzLTI1IGF0IDE3OjExICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBFbmFibGUgc291cmNlIHRvDQo+IHJlcGxhY2UNCj4gZHVtbXkgZGF0YSBm
cm9tIHRoZSBkaXNwbGF5IHdpdGggZGF0YSBmcm9tIGFub3RoZXIgYWdlbnQgYnkNCj4gcHJvZ3Jh
bW1pbmcNCj4gVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0K
PiANCj4gdjI6DQo+IC0gRW5hYmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVs
IHJlcGxheSBlbmFibGUuIFtKYW5pXQ0KPiANCj4gdjM6DQo+IC0gV3JpdGUgVFJBTlNfRFAyX0NU
TCBvbmNlIGZvciBib3RoIGJ3IG9wdGltaXphdGlvbiBhbmQgcGFuZWwgcmVwbGF5DQo+IGVuYWJs
ZS4gW0phbmldDQo+IA0KPiB2NDoNCj4gLSBSZWFkIERQQ0Qgb25jZSBpbiBpbml0KCkgYW5kIHN0
b3JlIGluIHBhbmVsX3JlcGxheV9jYXBzLiBbSm91bmldDQo+IA0KPiB2NToNCj4gLSBBdm9pZCBy
ZWFkaW5nIERQQ0QgZm9yIGVkcC4gW0pvdW5pXQ0KPiAtIFVzZSBkcm1fZHBfZHBjZF9yZWFkX2J5
dGUoKSBhbmQgc29tZSBjb3NtZXRpYyBjaGFuZ2VzLiBbSmFuaV0NCj4gDQo+IHY2Og0KPiAtIEV4
dGVuZCB0aGUgY29ycmVzcG9uZGluZyBpbnRlcmZhY2UgZGVmaW5lZCBpbiBkcm1fZHBfdHVubmVs
LmMNCj4gdG8gcXVlcnkgdGhlIFBhbmVsIFJlcGxheSBvcHRpbWl6YXRpb24gY2FwYWJpbGl0eS4g
W0ltcmVdDQo+IA0KPiB2NzoNCj4gLSBDbGVhciBUUkFOU19EUDJfUFJfVFVOTkVMSU5HX0VOQUJM
RSBpZiBwciBidyBvcHRpbWl6YXRpb24NCj4gaXMgbm90IGFsbG93ZWQuIFtKb3VuaV0NCj4gLSBN
b3ZlIGludGVsX2RwX2lzX2VkcCgpIGNoZWNrLiBbSm91bmldDQo+IA0KPiBCc3BlYzogNjg5MjAN
Cj4gUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4N
Cg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdz
LmggfMKgIDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPC
oMKgwqDCoMKgIHwgMjUNCj4gKysrKysrKysrKysrKysrKystLQ0KPiDCoDIgZmlsZXMgY2hhbmdl
ZCwgMjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiBpbmRleCA0
NzQ2ZTllYmQ5MjAuLmRhZGE4ZGMyN2VhNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+IEBAIC0yMjYzLDYgKzIyNjMs
NyBAQA0KPiDCoCNkZWZpbmUgVFJBTlNfRFAyX0NUTCh0cmFucykJCQlfTU1JT19UUkFOUyh0cmFu
cywNCj4gX1RSQU5TX0RQMl9DVExfQSwgX1RSQU5TX0RQMl9DVExfQikNCj4gwqAjZGVmaW5lwqAg
VFJBTlNfRFAyXzEyOEIxMzJCX0NIQU5ORUxfQ09ESU5HCVJFR19CSVQoMzEpDQo+IMKgI2RlZmlu
ZcKgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxFCQlSRUdfQklUKDMwKQ0KPiArI2RlZmlu
ZcKgIFRSQU5TX0RQMl9QUl9UVU5ORUxJTkdfRU5BQkxFCQlSRUdfQklUKDI2KQ0KPiDCoCNkZWZp
bmXCoCBUUkFOU19EUDJfREVCVUdfRU5BQkxFCQkJUkVHX0JJVCgyMykNCj4gwqANCj4gwqAjZGVm
aW5lIF9UUkFOU19EUDJfVkZSRVFISUdIX0EJCQkweDYwMGE0DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBjMTMxMTZlNmYxN2YuLjk5MmJkOWZm
YWM3MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IEBAIC00NCw2ICs0NCw3IEBADQo+IMKgI2luY2x1ZGUgImludGVsX2RtYy5oIg0KPiDCoCNpbmNs
dWRlICJpbnRlbF9kcC5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCINCj4gKyNpbmNs
dWRlICJpbnRlbF9kcF90dW5uZWwuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHNiLmgiDQo+IMKg
I2luY2x1ZGUgImludGVsX2Zyb250YnVmZmVyLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2hkbWku
aCINCj4gQEAgLTEwMjMsMTEgKzEwMjQsMjcgQEAgc3RhdGljIHU4IGZyYW1lc19iZWZvcmVfc3Vf
ZW50cnkoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqAJcmV0dXJuIGZyYW1lc19i
ZWZvcmVfc3VfZW50cnk7DQo+IMKgfQ0KPiDCoA0KPiArc3RhdGljIGJvb2wgaW50ZWxfcHNyX2Fs
bG93X3ByX2J3X29wdGltaXphdGlvbihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAr
ew0KPiArCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiArCQlyZXR1cm4gZmFsc2U7
DQo+ICsNCj4gKwlpZiAoIWludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVs
X2RwKSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJaWYgKCFpbnRlbF9kcF90dW5uZWxf
cHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChpbnRlbF9kcCkpDQo+ICsJCXJldHVybiBmYWxzZTsN
Cj4gKw0KPiArCXJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+IMKgc3RhdGljIHZvaWQgZGcyX2Fj
dGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoHsNCj4g
wqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVs
X2RwKTsNCj4gwqAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+IMKg
CWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2Rl
cjsNCj4gKwl1MzIgZHAyX2N0bF9zZXQgPSBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJMRTsN
Cj4gKwl1MzIgZHAyX2N0bF9jbGVhciA9IDA7DQo+IMKgDQo+IMKgCWlmIChpbnRlbF9kcF9pc19l
ZHAoaW50ZWxfZHApICYmIHBzci0+c2VsX3VwZGF0ZV9lbmFibGVkKSB7DQo+IMKgCQl1MzIgdmFs
ID0gcHNyLT5zdV9yZWdpb25fZXRfZW5hYmxlZCA/DQo+IEBAIC0xMDQwLDEyICsxMDU3LDE2IEBA
IHN0YXRpYyB2b2lkIGRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXkoc3RydWN0DQo+IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gwqAJCQnCoMKgwqDCoMKgwqAgdmFsKTsNCj4gwqAJfQ0KPiDCoA0KPiAr
CWlmIChpbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uKGludGVsX2RwKSkNCj4gKwkJ
ZHAyX2N0bF9zZXQgfD0gVFJBTlNfRFAyX1BSX1RVTk5FTElOR19FTkFCTEU7DQo+ICsJZWxzZQ0K
PiArCQlkcDJfY3RsX2NsZWFyID0gVFJBTlNfRFAyX1BSX1RVTk5FTElOR19FTkFCTEU7DQo+ICsN
Cj4gwqAJaW50ZWxfZGVfcm13KGRpc3BsYXksDQo+IMKgCQnCoMKgwqDCoCBQU1IyX01BTl9UUktf
Q1RMKGRpc3BsYXksIGludGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpLA0KPiDCoAkJwqDCoMKg
wqAgMCwNCj4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FKTsN
Cj4gwqANCj4gLQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChpbnRlbF9kcC0N
Cj4gPnBzci50cmFuc2NvZGVyKSwgMCwNCj4gLQkJwqDCoMKgwqAgVFJBTlNfRFAyX1BBTkVMX1JF
UExBWV9FTkFCTEUpOw0KPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBUUkFOU19EUDJfQ1RMKGlu
dGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpLCBkcDJfY3RsX2NsZWFyLCBkcDJfY3RsX3NldCk7
DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQoNCg==
