Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCgeB5O0FGpbPgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:44:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0025CEB64
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5627A10E415;
	Mon, 25 May 2026 20:44:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAtWe4Vb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BA610E40F;
 Mon, 25 May 2026 20:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779741838; x=1811277838;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IlUusNNf/x5LgOuAow2OnFeNquBWPwNUkpQXP5ueKgs=;
 b=HAtWe4Vb+yHshpYIwANKUyrIRPS0ChuOLyydOupv8qVD0YvrPyMx7dxF
 IughSbT1Ft25dJgoQkL2VvqBPswNYgBeRdEX0LXqGCbt67ZsG6OfFCxrH
 svoq0Zg0B5D6Zlj43rRHwVxlzrjtfreQ962VA7Sx6fBa8tgjtPet24N9G
 k0ZYEhI1zWrDHnNXiiRC9ZZTWJLjR32Q4qSozTO0CT+/Za0W3gsnTCwFA
 tNfFMu7xi6NJ/wqv1iOtFjRWZXTYLCgWyTM8hCRzQaUZ1j05n5LJjN0Rq
 n4e8eix7cxpiu6i/NFN9PPUwqJZ2q5xO4OsrSqxprzVg7H1ghmTtFl95B Q==;
X-CSE-ConnectionGUID: bB4DrxfzR6u/gfNM+sn1fQ==
X-CSE-MsgGUID: 1QZt2XMZTeC75LWQ8OyAwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="90857774"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="90857774"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:43:58 -0700
X-CSE-ConnectionGUID: rE/wZf5AS4C3txCeQZdQUA==
X-CSE-MsgGUID: HGpbcXmdQqqbE+BQOCvUgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="239115281"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:43:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:43:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:43:57 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:43:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IUR3Mx0eXHX3da1p7KUzGwkgcTwADMqfmKIMnQrTq7BHp6fuW7kYn5hEp2ErAeCZ7QBMc3z3ydOGQm5WXx+8PU3ItiC3h9XK3ZFU8FAsk/GCUkJ2oe2UsUGMGkY0T4tnHYrSWLPAR9igrAkyi3BwT0q7+OZ41xx8h0cPL1ax7DxoQkpxF8u8VA5WifZqQkYw1sqgFnnHxx//YU6Xit9uqXxVm8+8kGmcfwCO82Q++9iVD2b4EVXEPcIeQQXW5llPve9BSBG+GffPgkpEdC/LpEc/0NR5Kx9KFm8yT6clGk468yHlb7kfY9E8mv1WBgCJnAsUwiyiqkzCBadS4twGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IlUusNNf/x5LgOuAow2OnFeNquBWPwNUkpQXP5ueKgs=;
 b=Mo7egqftDQaRERkX5kUo8+03sGGMF92GeZPrbbMHvg6W0PR5wJSLRjzGgSDFxBfCFHi0F6YQJ386w9yivpGWHcSuNrJnmXM59rs/6DwT3+szuSUA9a6/9n7/nHibc44Qh/QcSR1rBGGP4bXznDGzxfPaIWNn8VNH0vGjqNwV/Fvo2b2LXhyUcb2O1Toxjk82o7Xz74Z1psb0Vl9b7nAtNhQrRdFtctIY28LZzKNyAFxoilXXvzwjHujdnZn8nAL7Z612qhyWTJKoJayPiRJ3YEdPoeXEePND8rXA0vvYhJumn1iEQfwkUHD6IfHWan3yKTLh/OavbZoBAG8hc5lZ6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SAWPR11MB9782.namprd11.prod.outlook.com (2603:10b6:806:4c9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Mon, 25 May
 2026 20:43:56 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:43:55 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 09/10] drm/i915/bw: Remove deinterleave fallback for TGL+
Thread-Topic: [PATCH 09/10] drm/i915/bw: Remove deinterleave fallback for TGL+
Thread-Index: AQHc6iZPqBzMtX1CpUOTzgZn+Fwd/rYfOhoA
Date: Mon, 25 May 2026 20:43:55 +0000
Message-ID: <8006744254fa7855dc4345bf1a6560048dc04dd0.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SAWPR11MB9782:EE_
x-ms-office365-filtering-correlation-id: f681b380-c33c-451a-2c4c-08deba9e56ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003|11063799006|4143699003;
x-microsoft-antispam-message-info: HpbyylXtlm8DRlooqYrNq6q5IDkh9t6258GLW3pQZMnfLahEAInBAK/kVl9jGE8pFtcFf1W0L5k/dthhSG+2qiB3/w3nDrw68ZzfRffwjagUTiAQVM94f3QCQ2jJ4hDMSngoTycHBlNgakj4Twj+Sq06bxZ/12g/X7hhKMZ8wUFiNWY3tVsJPzks6lSjfIlGZ1sbCRAGYUm4Qc4bw5YgqkQhi1vAFjkctSM8BOGvc0yXiXZu34CTe0SnuEANfO1NxzLgK9n2+X2kYxZBCOUUYV/86JOqo3JCW3A6DPH7cvnExnt5ZEUBn8WfDaRjsRINSaGSzSjMd4FRqPnC0PNj5BRr3rHoievVOQMRXl2OkYbnE5NoaW4rEPZ3Sq4PvZSDJbz5EnLJRUjhjNxGD8n9F8xbt4M9tZsYWxCHjneDTbs4oh6FHxKby/3DuhXOcaV6IkpqgG4WmUTVfCNm2cyHIez/qNz3RGNyDMcch0DHB1L0xXuAPTgTl4k41W3UASsirfftOHIuJkWu3rSTbtc50plSBTzBRoLkKcbjv1u+xR/wlz5v/SnjuBxJypiH3FeMcYlazUtlAL7o4oqsCDQrQE3B7T5FiuZuf7G1v/8yfa0ZtJLZlr2rB00ru22lAvK+QGMtIY5h09hlbEO/KgqpQYmy/gfL6egdGhzAKb5fWOiOdAP6Zk0bE8wfsVBH/vRf7bE2rgXF1OKN4QNHLZkKDw4Iq02ncOS0apT8EAGFjukV2pTbyuYWj/T/nPZQ4QPr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmxjUjlPNGpvQ3U2bG45ZndWZy94ZysxeHc0RGQyY3pQaVBLZnNzT1lYdVE3?=
 =?utf-8?B?bmdVZjRJbUxlY0RqOTdhTEZYRHBFSFBXLzFiVUk2bUVsRWdyUDRPdjRlV3lB?=
 =?utf-8?B?MzJ4Z1pHWWtydFVwT3NmenJLSjRGeVNSclNTWTQwbldObTVLY2taWUtiYjlY?=
 =?utf-8?B?L3h5MC9HRHV5aEcvMmp6UjA5TlF3bU5xbklDSGxhbXVmNGF2Zm51SFpQcGxK?=
 =?utf-8?B?SG9XdE81L3lqNFdlSDJHcUlUaGgvSVR0Q1lvYWZiRElpMlhZcGhWU1ZRQStD?=
 =?utf-8?B?cXlNQm13MmpLVFJkeVk4RnJ4QnJmWmxmYmpRcmZKQlA5U3laZGdFNjJ0YllB?=
 =?utf-8?B?Nlc1a05oUDE1VWxjeVZRNjJSYWlPeEJldWhjMXBoU2ExdkVzNkI5R1NsaFNS?=
 =?utf-8?B?V1UrazBvZ3pOTDd0WGtzdHdCbmZtemlrWG1sOU0rY0Vad1hoSXE5YUlRTit3?=
 =?utf-8?B?enIvUnlZd1VIcythQVhIbUJRcytuK2ozcWdrTzlhMGs2WVNjSnhVSTkyK3lV?=
 =?utf-8?B?UmhBQ2s4cTVMbmFSb1o5WlF5OCtwTU43YmhTL0g4NXBEMEdkNXByWkY1cE5j?=
 =?utf-8?B?c2tkMG82OW1jdk9uOStTQlVaVEtkN3BPb0ZvMjlLNDkrZVM4b1dzVjd2WTlm?=
 =?utf-8?B?VjRHSUt0c2Z1SFRNa1MzbFZVT3pvdER5dXQzNWIrM1I1V1RwY0w2YlF2WXM4?=
 =?utf-8?B?Q1hheHdxcEhua1MxblF5TlBxaEhBcDhadjVkK3pKb0JHRHZ5c1BxTktTL0xN?=
 =?utf-8?B?cGhkQ3RmOFZVYTlhR1hXcFVIa0FxYmp4L1FnYUdEckl4NXVmRE5ERkZOaFZ0?=
 =?utf-8?B?Q00vNlFIejN4QnZua2J5SkFLdTFSbDNPVHRLU2VqaHhSZzZ3YlpEZ1FBek9Y?=
 =?utf-8?B?NTkyZXBLVGkya2VMVGk3d2NjZFc3U0tQbTFITFVGZW1waFkwNWFBZ1lFZytD?=
 =?utf-8?B?bXVqcFhveGJ2YXhyZGR0anpETFE3c0dnTVNTWi9TYWNwcy94NmlxOHVhWjBU?=
 =?utf-8?B?Zk1wYzEyOHVVVnJzbUxIUFNubW1nNnNyTExmRUZIM1JhWUJxS3NLTUpOTFpl?=
 =?utf-8?B?WEtzbENFUmFqSEt4TjQyS1JzczZ6VGFmR2ROeXVoSjVEL3JSQnNneTZJMllK?=
 =?utf-8?B?Sjd6Q01rTlZFTlV5T09YVDJOT0ZQRjF0Z0pUaC9VT3pveC9mWmcwWnVEUEJD?=
 =?utf-8?B?UXE1TTZNYm83bjBOUmJlTThWb0Y1SGJ6K3NYMTJZVEx0TkV0QmREdkhoaWNS?=
 =?utf-8?B?SHhkZkJoTTJaY1lMS2ZZUmtTdTcrdlhXdy9pQXVqZ3hoZXdrRWtsMHVHcEJN?=
 =?utf-8?B?S2hLczZhekNBSHFjNWpUejNrVUc3VnBmYllIQkd0emVNN2c2OVlnRmFGcXlu?=
 =?utf-8?B?REhvOTRBMFpwMEVKUlVLZ1dyL1FKbUZtWndCS2Y1OG91WDVWOEhQajlLWGs4?=
 =?utf-8?B?czc5Wnp3Z1BPM2R3TEF4Ky9oYVJNU0QzcUVTWTB5NU42ZEZCS0NFd2krSHVk?=
 =?utf-8?B?YmRzUTVEaUJVVkJjV0Z1UzlGSmIzRk1uek1sZ1lSUU1rNmVKVHpDRXJvK0Nu?=
 =?utf-8?B?RE44Nk52Nkt5VUpYS3ZENTl0QkF1WnJnRjJya3Y5S0N5ZDNWbzc1S0gyQkw0?=
 =?utf-8?B?NVBuU3hpd1NjaW8wWSs2dnNZeHAxU0lyTEd2Vkt1a3hEKzducXZXSkFEekxL?=
 =?utf-8?B?MUJjbDFwWmFOZ2UxcXlkM0Y5TUI2Q0xnSG4wSitMNTBRTWtXUnJLWHlkQjlz?=
 =?utf-8?B?SlFJZE56cWJjU2Y5TEhjZEFEWW1GTVc0aXI4cWFQTzVWSE9uNi9xOXVXVzQ2?=
 =?utf-8?B?MTB3K1pacURjem5Bb1U4Ky9WSUpSOHhSMUZJL1VhSTcwazNOazVQUmJZNVRV?=
 =?utf-8?B?WGNyUWFQbVdESVRoMDZKYUNTMitDWkZoRWJCanVnZ1lrT1Y3UU1vb2lTQW0w?=
 =?utf-8?B?K3U5ZEdyOEZxakFMQzExQjR1RGNBRzhSTHA0SU5jK1pvR1loazdVVkR4Zm9T?=
 =?utf-8?B?dVZVdStCL1J1K3gveFdUakliT0xHQWlEeE5pVUkwSmxuL0VVdWdEY1ZJUCtK?=
 =?utf-8?B?WDFxb2VUNTRhR3g3TG1SS3BrekJ5bWVocGphRW1KVm1BWDcxaUJPQTBaTWNK?=
 =?utf-8?B?d0trYU82WjgrUVk0TS8vdzVONzRSR25jN2pMRGVXSEl5Z3cvV3Zwa0dEdDFn?=
 =?utf-8?B?MThvZkhDaUdmZXNWUEZUUy8zbkhFYXRCWXNLTllLZmJ1MUhqc0JEUkZOU2wz?=
 =?utf-8?B?ckprcU1GUksybkZKcFErYVZ4TUVackJlcXc5SSsvZXNFWkVYc2EvRTVObUx4?=
 =?utf-8?B?MlRBMEZKbTVjaW11TkdTdDRGelE0alBtektxb3RZeU1WYVRkd2xwVTJIUXcw?=
 =?utf-8?Q?Vi6VRE9UXpe4etEJdh4J+FzmYimNQRN1FqOR2EpD0lRvX?=
x-ms-exchange-antispam-messagedata-1: U7AMzWvthyCO6C1L3evBf8w+11zAxU7L8CM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4212C2F679F8944499C3B76BAA7F1B14@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: r3WNW5dTlNZm9vlGYY0owRWkAvCZ1pPzB/I+GYlN1scSmCG/sspOVKdobodFTq7mUiA/8XNg/I0r+QC44/39x5bNPF9TAgnR7vEI5XlzNbV9Xn/nZQEoKb1puFmiyzGoz6oQ5hrIKLd7x3ViTlAwYIfSnBb2gc9YbFqYRibpZ9bJam3GI3ClY+Th0IFYyPX6yorOF5CiFaNFmRA3ix4+EDHSEm6yT2B6wYOtJfiG3/4kAOpSqG/3y8rqg5GJQQjqLIApGHO0mnCWzS1AWEsmuX6DoIk6XWgC3mpPxNw5TmBCms7xoIHaOGJ93hh3OQ+nawpupZWjYTZKpNYKUBV9Sw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f681b380-c33c-451a-2c4c-08deba9e56ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:43:55.8197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UNprOd58YbalzOAnV1+/3sCu9FfL+ocMNtJ93mUceSUkQjI6sCDcros+JxCmwwek7q74QQcQfX9aERAjHX0N12LlJ+01kPnDm4OLrK7ch+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9782
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7D0025CEB64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVtb3ZlIHRoZSBkZWludGVybGVhdmUgZmFsbGJhY2sgY2FsY3VsYXRpb24gZnJvbSB0
aGUgVEdMKyBjb2RlcGF0aC4NCj4gVGhlIGZhbGxiYWNrIGlzIHVzaW5nIHRoZSBJQ0wgZGVpbnRl
cmxlYXZlIGNhbGN1bGF0aW9uIHdoaWNoIHdhcw0KPiBuZXZlcg0KPiBpbiB0aGUgVEdMKyBhbGdv
cml0aG0uIEFsbCBzdXBwb3J0ZWQgbWVtb3J5IHR5cGVzIGhhdmUgdGhlIGNvcnJlY3QNCj4gZGVp
bnRlcmxlYXZlIGFscmVhZHkgc3BlY2lmaWVkIGZvciBUR0wrIGFueXdheSwgc28gdGhpcyBpcyBk
ZWFkIGNvZGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMgfCAyIC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25z
KC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYw0KPiBpbmRleCAzOTE5MWY4NTc5ZGYuLjgyNTZhZDhiY2M4YiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBAQCAtNjA4LDggKzYwOCw2IEBA
IHN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNw
bGF5LA0KPiDCoAnCoMKgwqAgKGRyYW1faW5mby0+dHlwZSA9PSBJTlRFTF9EUkFNX0xQRERSNCB8
fCBkcmFtX2luZm8tPnR5cGUNCj4gPT0gSU5URUxfRFJBTV9MUEREUjUpKQ0KPiDCoAkJbnVtX2No
YW5uZWxzICo9IDI7DQo+IMKgDQo+IC0JcWkuZGVpbnRlcmxlYXZlID0gcWkuZGVpbnRlcmxlYXZl
ID8gOg0KPiBESVZfUk9VTkRfVVAobnVtX2NoYW5uZWxzLCBpc195X3RpbGUgPyA0IDogMik7DQo+
IC0NCj4gwqAJaWYgKG51bV9jaGFubmVscyA8IHFpLm1heF9udW1jaGFubmVscyAmJg0KPiBESVNQ
TEFZX1ZFUihkaXNwbGF5KSA+PSAxMikNCj4gwqAJCXFpLmRlaW50ZXJsZWF2ZSA9IG1heChxaS5k
ZWludGVybGVhdmUgLyAyLCAxKTsNCj4gwqANCg0K
