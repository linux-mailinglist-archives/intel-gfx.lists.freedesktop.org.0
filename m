Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDKKGAw6wWn2RgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:03:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0997D2F26B1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:03:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C38510E3DC;
	Mon, 23 Mar 2026 13:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3/o6Yja";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C2F10E3DA;
 Mon, 23 Mar 2026 13:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774270980; x=1805806980;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ErybVfRNc05LYfNYUzrSP06wnbcOpntWMq8Tj4cpGGc=;
 b=R3/o6YjaxjjM6yk1PpGH2IgblzYyFbsX0XRAkJIMX3NqE+cU155sLDId
 3XxjTlMWcjHzYWImOo1WWLZBry+fk9Gx1rVL7s/AAsQjuXFpHF8tLTRlu
 bqdE0FlZo0nCKl52Mggw0+J+Kk9yeDYOB51sB1b9GMPUqWCeI67ypDXjP
 pFhBTTZ2oMEMmnlwjU1hBYFC2eaeVpWOCdEwTs0E20wT8UIhcGZmDuH2K
 gjnTPYngX8onDi4szRxrv44Jq5DwE9Oc/UEBWc4cGhu4iHLEKUuYHD+Gy
 08q50mw47WJQClEjTZNDmpmYFmuh3JCRGnUThc/hJN8rKlTr5e6VjXCMz A==;
X-CSE-ConnectionGUID: zFFqWJ4pTfaHFvnn7Wxjmw==
X-CSE-MsgGUID: poO178NfRq2uZuy37km1MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="74977263"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="74977263"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:02:59 -0700
X-CSE-ConnectionGUID: faoHC7eySTm5DVCpL5LstA==
X-CSE-MsgGUID: 5BSObhIrQWyvcWPM4VVwiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="247787095"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:02:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:02:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 06:02:58 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:02:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jrPfSFd4mhlRSVTjmg6XzBUmqy0muL2F2OZFdZ5C5AI20/qgKPXudPsooWNxjbpLZFC6VDg6woflhmtPaJi4wqAfVgEC3bthXCuP4uwLl7O3irj39lP0BOz5d019CvEbNS6NAtNnG2GR6k8AR/UtHvE1KStKL06haPd1L34LJQJHCFlpl//p7kjHgT1+/NVLEi1YMQXJS0DwnkS4Agdrrodd7e8oZOhM7m5kZZsDwiZTgmimvtxA+SzLnidnYCCjQiWXqUYbsR8fcXuBeuuJiEAkPRZ4GCyBGghDoBYB/xIQCOliroXFsJ0a3bo2MBFOlf2Mdh+1j0hTYyuhGO4JMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ErybVfRNc05LYfNYUzrSP06wnbcOpntWMq8Tj4cpGGc=;
 b=LJcsUPVQMa2RXdwwBWx6Hr6BF7Y+hhs8kEgZAelHoSVMjnLaPwXdDa5rD+GinV4riTTIN6F/1R8mHfRG6E60JqpnCkhXmkEX/yEg8fbjvmCRBe0HQcoaWi9udQ/i1Udw2Vq2mpyd48UF+PUp3TWAh3Y4c85GokdRXAgyR1Dcsb+9qaBRo4Y1mFp23RovmdrALOLLh1Uh5o6xKsv1QHYoEcfMyyDaCAoR1f6KIdMI8iQZ4p16ltzu9A+35kJKXnHI7dkrhpLkiM0DOfGR3o0D4hO28TSwtj+8jkf0i3v/TEaLqPseJHstFsOate9tPTcuLR0XdS7HqzqtzrB8ebYWxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF01FB7113C.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::804)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.10; Mon, 23 Mar
 2026 13:02:55 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 13:02:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v8 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Thread-Topic: [PATCH v8 1/3] drm/i915/display: Add drm helper to check pr
 optimization support
Thread-Index: AQHctrlc9WpWRky5zUaexmLEg3ansLW8HUWA
Date: Mon, 23 Mar 2026 13:02:54 +0000
Message-ID: <e55fdc0e3d15053cbd984507af7bc73b5204d991.camel@intel.com>
References: <20260318085642.3621166-1-animesh.manna@intel.com>
 <20260318085642.3621166-2-animesh.manna@intel.com>
In-Reply-To: <20260318085642.3621166-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF01FB7113C:EE_
x-ms-office365-filtering-correlation-id: d6167f55-8454-4838-aa0a-08de88dc7f90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: Eqbuv7Dn2UYJzCg8AFO2Hf6AfocOEsvm29cBRdL6f3/6nRn3+I7vuBc6uYzP1S27HB8WGTVEwAG5t8Dtu+z5/xIYgrvNGyOJkMhg0qEVMfV0Fha4Sfx1cKZnV1lUw2jVSEAfnmZ4sGyoTl75Mp5K7784cXZRI7MSa9VucgWVNzAYCXRAf9DdDqpH/IvCo1+00tWZ79dbqBZ6Jn2uy3zMkND/t0+aO39Zr0dYVzYm/ArGZQJrL3WBcJM4uNLSAUBhdVI8G02+XC58unB19QCrbnstSVpnMVFDJ4QpfchUOsn5aa9RrutCdRgf92okrL+MpXw/9tFVm6G8MUkcOHDDnRc3R++dSp5j8axYLW3kR5kxH06hHQBNRLijL8q9Jg4kqmHtJ2rOS4L8i2b/Iq13uo3zEyOKQBZ2ByuqxRfLMwmeZBAt31LP2aHOTYOivsoKnwhzFE04koOf6C21Lsis8x7KlvQLur26aAgodAOd7K8sMhtF99H2h7W3adOJ4+uGbjFjaMD9L+m4fs2FdFZvNOlWZgZR33MBk7cP0VyJwme6q1eySNEuBl9fVxUubP31+Z74TBSfHD2ihkLWeVb6AeqUg1tgIqJiZ8OhnuCFHRN3SmkjBkL0Gc5VWhFlCMyJNcLaTi/DLxCtAw/zny+83wAYmsjsh1JfxciiIB0hTTgsail3dTTr/FRfADP1RsI3R0rZYp7oID3QBV83d/7PhNiu0y5yzXxBDBhmAyWDO/Wyr8clRSt+xD2qexEP4SQPwduTqhxYjRPsYAgLHVDI1du9SLRWeUy36EqBxGPm258=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWlDVUl4M1dyVWI3SlVWTERCSjlkSE04aUIzSE94Qi9lZGx6MjFWRllheEhi?=
 =?utf-8?B?VzdCc2ZZNFc2Y2ZmNzUvdGZtN0IzNEtZdVBBbjdpQjVub2I0RjRRajFhOXBO?=
 =?utf-8?B?emZ0NHpTSkxHY3I2ZlFoSGQ2bENqTnVIZ0gvb3E4SmlRNkVtaUdWYXgwZ0Nz?=
 =?utf-8?B?UWhKMzIreUYySDNMLzQ2bWhnMVV5SEd6SWwyS0h1djNaY0l1anZvWldXOVg5?=
 =?utf-8?B?elJKUGs1eHorQ01Yei96L1BsN3hDZExqSGhwVDVSMnBrclYwNWhOLzkxcEJF?=
 =?utf-8?B?d3E0N21qL3NNcmZoYlFIQWxTandZRVE0SGZOOTF6UHpnc1VyUzh2c1pQUHBE?=
 =?utf-8?B?Yk96cGVDR1JQbWUvNEpBWTluVVJuY0FXWG1Da2ROb0I3eU80dzI1MHp1MkRB?=
 =?utf-8?B?NlFsRVFzZXhROGNPcTV6bkJ3NzY4RGdLNjg5OHU1V290dko2bjFwc0RzY2o5?=
 =?utf-8?B?N2hYYWhSK2lOUEgzUXdTOHZlNWlHemZ1YStnUlB0aCttb3pUOFRQZnhqck9u?=
 =?utf-8?B?TEMxSWVpVXUyNUxuYzFyOEd0V0VYZHgvSGVzKy84d3F3bTR3RjJsM1V2ckFP?=
 =?utf-8?B?NHJRM2ptTHkvcUdTcnJNWi8wakFNV0FkVFd6U1JYSkZhV1hTM0hxRnVCZUpO?=
 =?utf-8?B?UWR3YUJ3ODNmZzl2V2c0YnY5NnJpQnBEMitpUXZPZVM2d29CU0paamNoMVJQ?=
 =?utf-8?B?ekdFRnVsSWVXcFAvcEZ5ZTZPRXNibG5oUForTTc0Z2VNTG8wd3hCa2ZsSEor?=
 =?utf-8?B?TXJzRWRVMDhUbC9hVTNrOEsrRSs5bW5CVDA2Y1JIMEpKWnV2a1Z3amxlQVZJ?=
 =?utf-8?B?TXVPQnpVa2MrVVA0TGpPNm93NDFDZDB3T2ZXYWFlZEVQWXlzdVhFbFB4bzJj?=
 =?utf-8?B?MlRWcHdsYmQvalc4NVNpdFJFbGhRTGVjYjlXVndMSk0yTS9hSHYwcmpoc2Z1?=
 =?utf-8?B?ZGp5ZUJTU2VBR3NRRE5jMzljV1BhK2t4T3FtRUxnVStWWjRHWjJ3Zjk5a3Vk?=
 =?utf-8?B?cW5rbGpnZHJlZW9OWWQrYkxyZ05NaENvWTJHb2FWZzZ1SlI5VWQ4SHAxOG0z?=
 =?utf-8?B?aVhZU3p5UkhsNkJQbElNTWZuMDZFeXNYZDZQalNLUmVPT0ZRM0ZFQWJqTmJC?=
 =?utf-8?B?OTRheHBPeGFqQitMYkdNY09tc1lZSjA5YWxpaXAyODJSOTNKT21oY3RTek4x?=
 =?utf-8?B?cmd6YkUzdnNiYzNqRFlPc3BqVjJnNjQ3RXpFV2VrdytFczVWcXN6a3FLQVFL?=
 =?utf-8?B?c29oYm9wSFVEUUtwQU85YzRyais1WFNLeFF6eHBsOThBYzJaYjdjMkxYd1li?=
 =?utf-8?B?NVgwbno4L2t6ZjlPbXpyaDM5bTQ3TitaYVlySEsvaWF0MjZNMG0zbzlvalRS?=
 =?utf-8?B?OEN6djN1TmJmeUtFclFMUVZjRUlHajlNbUU1Y1ZURVdUMWZrbEVUYlhYQ2E0?=
 =?utf-8?B?bVc3bFg1RjBhb0NIc2FhZUg5NHRMUEdSR2M2cWVIR0txVDRhTnROSE13M3FL?=
 =?utf-8?B?dlZDeWI4MWxzUlAwR0VYRnlmU3A1NkNnM045YXhMTW9JSkpPZlNPakxwam9L?=
 =?utf-8?B?MmNmcXZqQWh5S3JENURuUjZzOUZnb3Zlb3NIMitJUDJyZU1FZmwwemJGQmd1?=
 =?utf-8?B?RE5iNVBaL3hsTXdPU3lrR0dNYWEyUHpWL0MyZWZLYmU3bXMrRWpDOXBhb2lK?=
 =?utf-8?B?K3FGWHd5TmlETXBsQjF1UUdZSm5neTlwQ3dhN21SSStOMzhtZXNLYjRXK2NZ?=
 =?utf-8?B?QVpuWnVybFNneTFVQVhhb2V5STVCNFVRSTlodDViNnZDVkdLRkNycUFzYnlu?=
 =?utf-8?B?QlRiTHhXQSsvWFN2NkJOUmhtMHpFTnlpMENmajNCcHdybEF5MHlmS0lwQWxv?=
 =?utf-8?B?ZTFOY0NVN01GZDhjRC9hUklYR2Zvb2pqeFNpY0t4ak8vUTNRKzYyRUdCQUpN?=
 =?utf-8?B?aVZyNENaZlRTalc1MGV2UmlTOGRERCtXSitUZjJ6N3ozQk5NNHhZTnJHb0h1?=
 =?utf-8?B?VjVQamI3a3U3YkVvNGVuY3JBSlFVZWFjMFoxanc2QlNtZEplekpsbVg0elI1?=
 =?utf-8?B?cjJjcFhPc0R0YUtWM3ZKWnNUdzZraGpqT2x3SXF5U2dMTEVGMUpiY1IzbVNX?=
 =?utf-8?B?L05RRkJnbzhlOUFYa2FTV0JLNmlaZU83U0xnMnNqTjFOejZsVzFjNGZtWWpl?=
 =?utf-8?B?VXFvODlEaGlGQ1BZQlFVMFJtMCt1Y3lGV1ZGWWF4emhBTVgxV2FtSGs1UGpy?=
 =?utf-8?B?RENQVzg0dlpzdU1pbjQ0Y1B4NGtsWlBUNUlrSEphWHJtMWpJZlFsckpPdmtB?=
 =?utf-8?B?K08wRVpTckdSVEFWYjJ2dWNwOWNLclZoMFIyN1UrU2FpUFV0Q3NxdUxlSFow?=
 =?utf-8?Q?sGpziIiuY4lvq2sa9YkU6C99mWf83oemiRWp2YFh6DCDw?=
x-ms-exchange-antispam-messagedata-1: 6xxEMK+lD+yAFce4+hEn35mJ1NdpWjTc8lo=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4EB151AE04CA144EBBD2A4E9AE2D1878@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hx7nodOZE3rsMHs6Qq/qhxgKhBFU4Pf1Io7YgdV5mUvjYVPdGVL5CfDxTum3ZdlSvZzruX7joOi54Me4jrYqK8bc6RuC5x9atm6t+ANfH46oVOBepdaH/Y1ko50nfLHIT0SF8u1p91hLcTF/YE/AeH+yJ0lWZ7WC1V0aU1xDw8+uiBrG4eL2rokUlnGocv6XCcwlB5T2IWHG+Bcejh0KuXDfbRw6qiqzQosadopbQUFo0DdL5GKjwgySAUw4RbQqsDAabXrqUVFLFgGWJcMnLc0aClxJWbZ03KDDZwGW8bokDEkXHaw1l2iWgWTGPOS2PiHZdpDV2KmTOWp3yFTY7w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6167f55-8454-4838-aa0a-08de88dc7f90
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 13:02:54.7159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JnA13eG9alL+Gg31hQ2GKyXt7Hj/OeF4/Ap8OZD3CKcEQsSQSvQPNXkNFZaVxoKZ5b1bqAFZOPtMOxqRCgxGeb3JXIuK2EBCa4lLaBrCz2U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF01FB7113C
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0997D2F26B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAzLTE4IGF0IDE0OjI2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYXBpIHRvIGNoZWNrIHBhbmVsIHJlcGxheSBvcHRpbWl6YXRpb24gc3VwcG9ydGVkIG9y
IG5vdCB0bw0KPiBkcm0tY29yZSBEUCB0dW5uZWxpbmcgZnJhbWV3b3JrIHdoaWNoIGNhbiBiZSB1
c2VkIGJ5IG90aGVyIGRyaXZlcg0KPiBhcyB3ZWxsLg0KPiANCj4gdjI6IFNwbGl0IGdlbmVyaWMg
ZHJtIGNoYW5nZXMgZnJvbSBJbnRlbCBzcGVjaWZpYyBjaGFuZ2VzLiBbSm91bmldDQo+IA0KPiBT
dWdnZXN0ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNClJldmlld2Vk
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmMgfCAxNyArKysrKysr
KysrKysrKysrKw0KPiDCoGluY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5owqDCoMKg
wqAgfMKgIDYgKysrKysrDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5jDQo+IGluZGV4IGY0
NDI0MzBkOGRlNy4uMzljMDdjYjQxMjNiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
ZGlzcGxheS9kcm1fZHBfdHVubmVsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkv
ZHJtX2RwX3R1bm5lbC5jDQo+IEBAIC0xNDksNiArMTQ5LDcgQEAgc3RydWN0IGRybV9kcF90dW5u
ZWwgew0KPiDCoAlib29sIGJ3X2FsbG9jX2VuYWJsZWQ6MTsNCj4gwqAJYm9vbCBoYXNfaW9fZXJy
b3I6MTsNCj4gwqAJYm9vbCBkZXN0cm95ZWQ6MTsNCj4gKwlib29sIHByX29wdGltaXphdGlvbl9z
dXBwb3J0OjE7DQo+IMKgfTsNCj4gwqANCj4gwqBzdHJ1Y3QgZHJtX2RwX3R1bm5lbF9ncm91cF9z
dGF0ZTsNCj4gQEAgLTUwOCw2ICs1MDksOCBAQCBjcmVhdGVfdHVubmVsKHN0cnVjdCBkcm1fZHBf
dHVubmVsX21nciAqbWdyLA0KPiDCoA0KPiDCoAl0dW5uZWwtPmJ3X2FsbG9jX3N1cHBvcnRlZCA9
DQo+IHR1bm5lbF9yZWdfYndfYWxsb2Nfc3VwcG9ydGVkKHJlZ3MpOw0KPiDCoAl0dW5uZWwtPmJ3
X2FsbG9jX2VuYWJsZWQgPQ0KPiB0dW5uZWxfcmVnX2J3X2FsbG9jX2VuYWJsZWQocmVncyk7DQo+
ICsJdHVubmVsLT5wcl9vcHRpbWl6YXRpb25fc3VwcG9ydCA9IHR1bm5lbF9yZWcocmVncywNCj4g
RFBfVFVOTkVMSU5HX0NBUEFCSUxJVElFUykgJg0KPiArCQkJCQnCoA0KPiBEUF9QQU5FTF9SRVBM
QVlfT1BUSU1JWkFUSU9OX1NVUFBPUlQ7DQo+IMKgDQo+IMKgCWlmICghYWRkX3R1bm5lbF90b19n
cm91cChtZ3IsIGRydl9ncm91cF9pZCwgdHVubmVsKSkgew0KPiDCoAkJa2ZyZWUodHVubmVsKTsN
Cj4gQEAgLTEwMzYsNiArMTAzOSwyMCBAQCBib29sIGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNf
ZW5hYmxlZChjb25zdA0KPiBzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKQ0KPiDCoH0NCj4g
wqBFWFBPUlRfU1lNQk9MKGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZCk7DQo+IMKg
DQo+ICsvKioNCj4gKyAqIGRybV9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCAt
IFF1ZXJ5IHRoZSBQUiBCVw0KPiBvcHRpbWl6YXRpb24gc3VwcG9ydA0KPiArICogQHR1bm5lbDog
VHVubmVsIG9iamVjdA0KPiArICoNCj4gKyAqIFF1ZXJ5IGlmIHRoZSBQUiBCVyBvcHRpbWl6YXRp
b24gaXMgc3VwcG9ydGVkIGZvciBAdHVubmVsLg0KPiArICoNCj4gKyAqIFJldHVybnMgJXRydWUg
aWYgdGhlIFBSIEJXIG9wdGltaWF0aW9uIGlzIHN1cHBvcnRlZCBmb3IgQHR1bm5lbC4NCj4gKyAq
Lw0KPiArYm9vbCBkcm1fZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoY29uc3Qg
c3RydWN0DQo+IGRybV9kcF90dW5uZWwgKnR1bm5lbCkNCj4gK3sNCj4gKwlyZXR1cm4gdHVubmVs
ICYmIHR1bm5lbC0+cHJfb3B0aW1pemF0aW9uX3N1cHBvcnQ7DQo+ICt9DQo+ICtFWFBPUlRfU1lN
Qk9MKGRybV9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCk7DQo+ICsNCj4gwqBz
dGF0aWMgaW50IGNsZWFyX2J3X3JlcV9zdGF0ZShzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4KQ0KPiDC
oHsNCj4gwqAJdTggYndfcmVxX21hc2sgPSBEUF9CV19SRVFVRVNUX1NVQ0NFRURFRCB8DQo+IERQ
X0JXX1JFUVVFU1RfRkFJTEVEOw0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZGlzcGxheS9k
cm1fZHBfdHVubmVsLmgNCj4gYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcF90dW5uZWwuaA0K
PiBpbmRleCA4NzIxMmM4NDc5MTUuLjRhYTNjZTlmZDgyOSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZGlzcGxheS9kcm1fZHBfdHVubmVsLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vZGlzcGxh
eS9kcm1fZHBfdHVubmVsLmgNCj4gQEAgLTUzLDYgKzUzLDcgQEAgaW50IGRybV9kcF90dW5uZWxf
ZGVzdHJveShzdHJ1Y3QgZHJtX2RwX3R1bm5lbA0KPiAqdHVubmVsKTsNCj4gwqBpbnQgZHJtX2Rw
X3R1bm5lbF9lbmFibGVfYndfYWxsb2Moc3RydWN0IGRybV9kcF90dW5uZWwgKnR1bm5lbCk7DQo+
IMKgaW50IGRybV9kcF90dW5uZWxfZGlzYWJsZV9id19hbGxvYyhzdHJ1Y3QgZHJtX2RwX3R1bm5l
bCAqdHVubmVsKTsNCj4gwqBib29sIGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChj
b25zdCBzdHJ1Y3QgZHJtX2RwX3R1bm5lbA0KPiAqdHVubmVsKTsNCj4gK2Jvb2wgZHJtX2RwX3R1
bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKGNvbnN0IHN0cnVjdA0KPiBkcm1fZHBfdHVu
bmVsICp0dW5uZWwpOw0KPiDCoGludCBkcm1fZHBfdHVubmVsX2FsbG9jX2J3KHN0cnVjdCBkcm1f
ZHBfdHVubmVsICp0dW5uZWwsIGludCBidyk7DQo+IMKgaW50IGRybV9kcF90dW5uZWxfZ2V0X2Fs
bG9jYXRlZF9idyhzdHJ1Y3QgZHJtX2RwX3R1bm5lbCAqdHVubmVsKTsNCj4gwqBpbnQgZHJtX2Rw
X3R1bm5lbF91cGRhdGVfc3RhdGUoc3RydWN0IGRybV9kcF90dW5uZWwgKnR1bm5lbCk7DQo+IEBA
IC0xNDAsNiArMTQxLDExIEBAIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiBkcm1fZHBfdHVubmVsX2J3
X2FsbG9jX2lzX2VuYWJsZWQoY29uc3Qgc3RydWN0IGRybV9kcF90dW5uZWwNCj4gwqAJcmV0dXJu
IGZhbHNlOw0KPiDCoH0NCj4gwqANCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZHBfdHVubmVs
X3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoY29uc3QNCj4gc3RydWN0IGRybV9kcF90dW5uZWwg
KnR1bm5lbCkNCj4gK3sNCj4gKwlyZXR1cm4gZmFsc2U7DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMg
aW5saW5lIGludA0KPiDCoGRybV9kcF90dW5uZWxfYWxsb2NfYncoc3RydWN0IGRybV9kcF90dW5u
ZWwgKnR1bm5lbCwgaW50IGJ3KQ0KPiDCoHsNCg0K
