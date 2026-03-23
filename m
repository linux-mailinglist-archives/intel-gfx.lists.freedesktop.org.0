Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kK7FLWo8wWksRwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:13:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4902F297B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A57710E3A5;
	Mon, 23 Mar 2026 13:13:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrSFWI4f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE6BB10E10C;
 Mon, 23 Mar 2026 13:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774271590; x=1805807590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mXWhhTjPTm8ljyWmINWcywgzvotIDq8oyPrFjWJfI9U=;
 b=KrSFWI4fLJRmIP62aOt6RsnvIM3RqdKaJ60SyAc+roGIZS3s7ShZA+l+
 3SmVPb+/rjm2FN3GIgMcn78106sytbjqIx13tZEvtb/4aBZOF3vWUFUjg
 hOBtTVBtRt1qp5KDmOJ1aclJcxV6MigrpBYgLV8sIJRNjYMxgNl6sOMS9
 XBzP9Rq1wuv0U8DD/eq6PA2QdbiKEBhNDl1GCzxsQtXhCEOqS5MOkDc3j
 I7TAl1/YnP+31NudYFOqUDwUIKZmu5EVrGlSUFKddXEy89kyp0krV9Myq
 +whhiP2j4vr+UEZU2E3FwvhEKzwjq0Se5CKfdWE9hMr6wb9o2BDXSziEd w==;
X-CSE-ConnectionGUID: 5KQbUk4uS32AXnhbnTrKRw==
X-CSE-MsgGUID: 15pwCi0KTXOptrS/LK+2Jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="74286690"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="74286690"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:13:10 -0700
X-CSE-ConnectionGUID: 3tURiIJhTJihUq9oHnxuHw==
X-CSE-MsgGUID: sygLk7y3SI+N6/DzFg1HuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="219655838"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:13:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:13:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 06:13:08 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:13:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bz92+JP4g3aSfufnxlJx1js+e3f20eIkfg36jLYfJ5aW3DCNAZuV22c4FVg348KX0qSNbNYsOdmvYhT3LqDpqxqni/A4Cz++j8WwYXXqLxMucuS5aNYF1D5hg0HtXllrxuHar1E1u9EjgpfdPdY5wfBmkx2cfeI1EdsOhwiXzZfIBd38GxTtKxDn/9NQhMsYI5PBKhpCrIOD2GjCcyN935bg0J9DBXV5TZtOEAIdvwElGatytI36jm7cNPqSe6vP3p83vapQV88+Uwr8+A4Isi8P5ofkSkug4mTLA+KQjhaJCnxy1YmiyLuMjgpBuvRrUXliV9GiAYMMtJd35Xp/Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXWhhTjPTm8ljyWmINWcywgzvotIDq8oyPrFjWJfI9U=;
 b=NkUiB1pcclJWIApoifceTRc1IjaBreIT53VFTVJi/yU6hPFqwI/m4O35c2ph11fjVQYs8TyNv6XqXcj2bpsSfGcKZ32ZggWwZEhbMsJNen+EUTDcD6fhfg+2eW6Sctx9ouGsuZRc1nh+sWPeOdPGM5U6TR4fw2AwhrPnn+2OGt7KhwTuIrlv2wCqqUGGKFnYTb7pbwC4zWh9c6OIqqq3cyLoiRdZTFR3tuOPScEvlg923KemT0zMLMwhREaP0ukY/zRwkgKsAj7rP7nmM40rg5Ds0zxA52/LP60wo9XoEjCipUthDYdzzit6iDNZcQgCgCLXYVIwNAHK3m/UoTf+Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB8781.namprd11.prod.outlook.com (2603:10b6:8:256::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.20; Mon, 23 Mar 2026 13:13:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 13:13:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v8 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Thread-Topic: [PATCH v8 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Thread-Index: AQHctrlcSEXCPpxmgEq1F01bsBxS5rW8HaMAgAACeAA=
Date: Mon, 23 Mar 2026 13:13:05 +0000
Message-ID: <a583e5c76b0569111442005062d39f8a9db72cdb.camel@intel.com>
References: <20260318085642.3621166-1-animesh.manna@intel.com>
 <20260318085642.3621166-3-animesh.manna@intel.com>
 <c7a00eac4f5fc2d606db15d631c0ceb2b769edd4.camel@intel.com>
In-Reply-To: <c7a00eac4f5fc2d606db15d631c0ceb2b769edd4.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB8781:EE_
x-ms-office365-filtering-correlation-id: 5599a6db-ea18-44c7-1a5b-08de88ddebad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: kCNTfAjXmhpUcsYXxaZcJuVAgcObfWcPrkNzhSAuaEOe0yowAWjVr+eQZLp81cyiIdwJHOE7bktMMd3B99cmVWXdUaav/0Xg/ZWr1W9mQgeIr6zWnNmQd1IOKmKTbFTf8pO16eFRF3Qzt9ybziWC8Q5kPaQFyKb1fVU7stTiNWcQf8R7gXq0Te5M9z1X1qSCSvHHOYU0J8I3/CJvhKySXm5DD6N4pwTudbkHlXAIsABLp+rq4Mq5gxEtD9bz0rmjxRqnS5EhtusQXYuP2oR1ghfAAAeiiKGTNu5SFyVqBSlu1ZY8nKT7GaS4JZigilR3P6SkKJj7f6T/jpw6mG35car8nArEjfjtxIMRt5rzsPVmPXW1JXj8dk3WvoV/x+0TFA7JJ4jL2d+A7S2bGbvG2lboivry6soQgivIHxmutsA0uIPqKlDw3ESViPobD8fWLsZuF3aoBfS9QKGyC1cAaVLFwpWscYrEJ7Y7EUrtStzVKKX+we4F3NGlsLBvglD9VHEwr1IupPnnMLHHX71j1EFMQeg7zKn+0DH44HiSlywm3Jba2131n2KsLkx/EBA1ZVLygku/jGal2ceS2wqqcLtIYlYo59PP3iRZ+8A+zveNNHX5lU035Dd8ABWvJZ2u5OVS4Le/dBD+LEJeQsy2r8+9UHZNTd4c/omXlumKNM6ZQ1vEAP7cgckw9BMFbFtn5NOjQecifzCPMZ9HsMNwHn8KNXXNwsrzKrEFQ09HOSGSlpM6XMl283uiAQ/ekG4nSKNTPZKWid0HGGtWd212CFXdaO61dv0A/3i41C2lBuw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWZIRkMzWkZoVEJtVGlPNnB2bnR6Y0NwRnc3bC9OaWJqcWI2T3BleS8wbWtz?=
 =?utf-8?B?RmNvTGg2WVhVTnNhOHRNVGhDMTBWekVkN3Y5bTJVcVdUV1dMOXRTTkxGbG1o?=
 =?utf-8?B?L0JYVE0rTmNRa3IxUDhoR2xhTlJ6TzhsblZMTXQwSERGMXVnOFZRbnREMmJh?=
 =?utf-8?B?b0JwVW84Q1I1L0NNbHA5ZjcwRFBZMG9lZ1JhM2c4NHV3QlVlL2RzY3hhUEg2?=
 =?utf-8?B?UnU4cFROWUM5UHBGWHNxQnVSSFNKL250cGxXc0ZCWDFtSklkMXlFLzZndjJu?=
 =?utf-8?B?Z01Vc2x1QlNsNmdUWFV2ZEtSZFNHZU43ZlhBOXpZZkxwZisvZks5aWQ3Y0Nk?=
 =?utf-8?B?TWFaSjhzTE8rZ0hGbDFZTmhnbHJYamJST2s5MVA3MUNxdHVicGh6Z1FwTmpC?=
 =?utf-8?B?ZWszeG9Obi91YzIyTlRWVlRNQ3BrcGxvTTdnMWtlV0EweVF0ZHNqaXU2NlZh?=
 =?utf-8?B?d0c2dDN4a1RKQnNBT29rek9scW1qRkRPZzNRUG1WLzUvMXpKdWZrTWRpN0dK?=
 =?utf-8?B?aTNoMXAweFJHaGFMY3BOazJSR0l0MjRIQi9XMThVdTMrMHBpMnNZQVVsOCsx?=
 =?utf-8?B?UnlKT1hmQWJReHdkb2ZTTGFNd1pBR25ycTFJZXUxT3JXV2xDaWpFM1BvN2lQ?=
 =?utf-8?B?UEJFNDlDZmo4eFd4SUxtOVVvMzVSQStUTXpBa0dBYnZmRG85bE1mbE1XZG5i?=
 =?utf-8?B?Y2t0MkplUy9hTW1JOEhYVjc4dTZSbzdJekVNTkduN3dadCsraVBMWmxyWmE1?=
 =?utf-8?B?MkxXektmR0xleitySWl4WGYrbzVhZGFNYk1JbElrM0JPUmxvdklhSC9DZDRB?=
 =?utf-8?B?Y3REdldSMFJiYmltdTNTYnRaZXFQWVNsNnJiZTk0ZFJDMVAvTkdtcHdLeUFD?=
 =?utf-8?B?OFdGWnB0VjdXZzNkL21NK2dFZ2cwVUp4MloybG53SHVrWlp0LzdqSXdnbWJh?=
 =?utf-8?B?bFV0TFBaK1A4MGdCMWlUTXZVVXM4cnlJVHQwM3phc0I0Lzc3QllVUmxrcmRX?=
 =?utf-8?B?V0pGYUUya0kvb25vYksvWVVYcXZ5RHVZODhibjdWaGpxbGk5TVFQT1ZYN2Jh?=
 =?utf-8?B?N080UE1DOWdOOUlWdnp1UGt3ajRkWWlQMElST25oeEpjc2JMcUh1MHlPSjdZ?=
 =?utf-8?B?YlNWZkwwQmhOdGszT1NqbmpGb2NaVVVSV3h2Ly9LNHlwbXNKMmVVSXhyU3ZE?=
 =?utf-8?B?QVhOMmdsZmpxaHc4WitKK0dlWWVpZUh3UzBhYkViQVBXRXFOZzRjeGpMUXZx?=
 =?utf-8?B?enJCUE5iMzVvbXhzZXVJeFVYQzl0UmVTcUdVMllqZ09jd04xZHhmR3JlTHRl?=
 =?utf-8?B?MXE1RmwvVFJiNk4vUEJCdjkyRjZ3cW5pUi9kdUJiSHA2YWhxSVhzMWNmSUtW?=
 =?utf-8?B?UTFZT0FUaGU5a2VFeHFDcGdubTZpUTQxWk0wVGRUeWJaQkFYWTJ5bUN0MEpS?=
 =?utf-8?B?bXVxRi9MUkFLSFo2L3kxTkZRV2tkTi8rcnQ5a3NPNjZYK0JibmMrdGpjQzJ2?=
 =?utf-8?B?OTNMMllaRzhaL21NdW9jOTRTakR6UU9xNWJTeTkvWmd5VFNtejlBcUFudXp0?=
 =?utf-8?B?bVQvYm4wWXVSQVhTUFhzSHhCbVhud2VPMlhwZE1TZWJES0RmdGRQMlYxNE1L?=
 =?utf-8?B?VXNvdU1aamlMVnFGYVBNNkJjRGtoNTlSNFhnL1pOL0hPWUZGZVhCdnZaZlp0?=
 =?utf-8?B?WTlaQ2ZXTmNwWGZMTlJ4UmJrZ05mTzJ2ZnlCUkhBUjB2Ym5GdDh1QWRiTVdG?=
 =?utf-8?B?ZTlZKzBrc0M5K1pqTHBmVkRQTWQrcWdvWU9MU2IycnhxNkdLS0Q0MWZQRld6?=
 =?utf-8?B?RHJVMmNhL3BjaEJqVHdoTVFXRTY2UkQxaXhMbFkxMGQvZHB3d01RNkVhcUFJ?=
 =?utf-8?B?S1FOMGRjR1QzdzdDdS9pMGhQaVEvalJFb29mZi95SXVuQ0IrQ2d1RnVIM3Bl?=
 =?utf-8?B?U25Ga3l6aDk5c0dSVU1zcE1vRW9BczJUeEZ3SlJoclJZREUyRW5OcWM4UHMx?=
 =?utf-8?B?WllVRWJsSU1VL0toblQzNW1FR0hpZ05Ya2ZNMnV2NjZVRWN6RFB6VXlXOWYz?=
 =?utf-8?B?WTlRb296clRUWitFZVFzZ1E0Y2VVNWh4aTNpYU0vbUh2bXBZSzM4NUl0NTlH?=
 =?utf-8?B?elZ3bFIyUzcyNythSW9DckNUak00djNVM3FuNWtvZlNUblZXaG4vSWovcTZj?=
 =?utf-8?B?bWNJa3k5UG56LzRsbzk0V0JJWnJZK3RwYzVIaERTWG5aQ2ZrcnJRWHlaU1Rw?=
 =?utf-8?B?d2xZMWJHRmtISmFOaGF0RHU0aWMrUlV6bU1ZMi9jaGpnNndZL0xnK2MxY1NH?=
 =?utf-8?B?RFB4eWE3blcwK1V1SEQ4bmFoaVZzTkFUSFUrQkZUTUkyMFVzeDg1aCtvUnhn?=
 =?utf-8?Q?r/+80KNlHvv6iJW7k0GX65H63+4rzewSeJkGF9KAe25rG?=
x-ms-exchange-antispam-messagedata-1: walsCmpw3VFR7hZ91ggnJqrRnJVKpUPSPtI=
Content-Type: text/plain; charset="utf-8"
Content-ID: <531CFD927AA762459960A6F33EC8CD08@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sShWJDs1rApxm9sDJz36+CEJCEDOBG3KwJ7jaNZmv9vHTyUBiFc97D3fNnGStQ0K78IqVFBg3t5d0QBtnvOgs+Y8E4cmu8B3QLazF5w4wKAbltFmqzOlKXit9S3hhIu0Hqi5/fCmUMS9Nq81sjL33boExWxq3D6NMplwSxtOu+/LRhxTdq5IsCPaUr5nWXEdwzr7AH22KxFsdbAm/jhlX1NDCHaKWHRgTjezZvUVRweNzayo/d9wdmYRzJQ0TEvsoUi7SKnpA3sZIV5NgkyXHGshFm780zFFD4qv18jNvnCATi41SZwlbRmy+bH4SpAwSBrVhmgX3CW2RWHpID2BGQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5599a6db-ea18-44c7-1a5b-08de88ddebad
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 13:13:05.6056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: euoBDMfbe+THpPH+P32/ULwugZE0F7II2cy0UpjFDplJ+kvSm5ElyUvjv4Yj5Ek3e5j81pYRWJ/yvfJjWuUD9ug+OLS7rI0bcjQyjdab4oI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8781
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6A4902F297B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTAzLTIzIGF0IDE1OjA0ICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyNi0wMy0xOCBhdCAxNDoyNiArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90
ZToNCj4gPiBBZGQgYSBob29rIHRoYXQgdXNlcyB0aGUgZHJtIGNvcmUgdHVubmVsaW5nIGZ1bmN0
aW9uIHRvIGNoZWNrDQo+ID4gd2hldGhlciBwYW5lbCByZXBsYXkgYmFuZHdpZHRoIG9wdGltaXph
dGlvbiBzdXBwb3J0IGlzIHByZXNlbnQuDQo+ID4gDQo+ID4gdjI6IE1vdmUgRElTUExBWV9WRVIo
KSBjaGVjayB0bw0KPiA+IGludGVsX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVk
KCkuIFtKb3VuaV0NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gDQo+IFJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jIHwgMTgNCj4gPiArKysrKysrKysr
KysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVu
bmVsLmggfMKgIDYgKysrKysrDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMo
KykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF90dW5uZWwuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF90dW5uZWwuYw0KPiA+IGluZGV4IDFmZDFhYzhkNTU2ZC4uYjgxYWM5YTJkNzI3IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVs
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5l
bC5jDQo+ID4gQEAgLTI5Niw2ICsyOTYsMjQgQEAgYm9vbA0KPiA+IGludGVsX2RwX3R1bm5lbF9i
d19hbGxvY19pc19lbmFibGVkKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDC
oAlyZXR1cm4gZHJtX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2RwLQ0KPiA+
ID50dW5uZWwpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9kcF90
dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCAtIFF1ZXJ5IHRoZSBQUiBCVw0KPiA+IG9w
dGltaXphdGlvbiBzdXBwb3J0DQo+ID4gKyAqIEBpbnRlbF9kcDogRFAgcG9ydCBvYmplY3QNCj4g
PiArICoNCj4gPiArICogUXVlcnkgd2hldGhlciBhIERQIHR1bm5lbCBzdXBwb3J0cyB0aGUgUFIg
Qlcgb3B0aW1pemF0aW9uLg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm5zICV0cnVlIGlmIHRoZSBC
VyBhbGxvY2F0aW9uIG1vZGUgaXMgc3VwcG9ydGVkIG9uDQo+ID4gQGludGVsX2RwLg0KPiA+ICsg
Ki8NCj4gPiArYm9vbCBpbnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChz
dHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4g
PiArDQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAzNSkNCj4gPiArCQlyZXR1cm4g
ZmFsc2U7DQoNCkp1c3Qgbm90aWNlZCBpbiBCc3BlYyB0aGF0IHRoaXMgaXMgYWN0dWFsbHkgc3Vw
cG9ydGVkIGFscmVhZHkgb24NCkRJU1BMQVlfVkVSKCkgPT0gMzAuDQoNCkJSLA0KSm91bmkgSMO2
Z2FuZGVyDQoNCj4gPiArDQo+ID4gKwlyZXR1cm4gZHJtX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRp
b25fc3VwcG9ydGVkKGludGVsX2RwLQ0KPiA+ID4gdHVubmVsKTsNCj4gPiArfQ0KPiA+ICsNCj4g
PiDCoC8qKg0KPiA+IMKgICogaW50ZWxfZHBfdHVubmVsX3N1c3BlbmQgLSBTdXNwZW5kIGEgRFAg
dHVubmVsIGNvbm5lY3RlZCBvbiBhDQo+ID4gcG9ydA0KPiA+IMKgICogQGludGVsX2RwOiBEUCBw
b3J0IG9iamVjdA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX3R1bm5lbC5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX3R1bm5lbC5oDQo+ID4gaW5kZXggN2YwZjcyMGU4ZGNhLi4wM2UxNDc3MzZiNjUgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5u
ZWwuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVu
bmVsLmgNCj4gPiBAQCAtMzIsNiArMzIsNyBAQCB2b2lkIGludGVsX2RwX3R1bm5lbF9yZXN1bWUo
c3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgdm9pZCBpbnRlbF9kcF90dW5u
ZWxfc3VzcGVuZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgYm9v
bCBpbnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHANCj4g
PiAqaW50ZWxfZHApOw0KPiA+ICtib29sIGludGVsX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25f
c3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCk7DQo+ID4gwqANCj4gPiDC
oHZvaWQNCj4gPiDCoGludGVsX2RwX3R1bm5lbF9hdG9taWNfY2xlYW51cF9pbmhlcml0ZWRfc3Rh
dGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ID4gQEAgLTc2LDYg
Kzc3LDExIEBAIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiA+IGludGVsX2RwX3R1bm5lbF9id19hbGxv
Y19pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHANCj4gPiDCoAlyZXR1cm4gZmFs
c2U7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArc3RhdGljIGlubGluZSBib29sDQo+ID4gaW50ZWxf
ZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoc3RydWN0DQo+ID4gaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiA+ICt7DQo+ID4gKwlyZXR1cm4gZmFsc2U7DQo+ID4gK30NCj4gPiArDQo+
ID4gwqBzdGF0aWMgaW5saW5lIHZvaWQNCj4gPiDCoGludGVsX2RwX3R1bm5lbF9hdG9taWNfY2xl
YW51cF9pbmhlcml0ZWRfc3RhdGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkge30NCj4gPiDCoA0KPiANCg0K
