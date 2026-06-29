Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v0KJF8Q4Qmp12AkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 11:20:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79AC6D80B9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 11:20:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XgzCWO9A;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616D210E7A5;
	Mon, 29 Jun 2026 09:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8834210E070;
 Mon, 29 Jun 2026 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782724799; x=1814260799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RT0joCrWfLMy9NvNmPZP+yHsDvEx6T1qRaJuZIilSak=;
 b=XgzCWO9AtWIhMyePTYKV89CSTGZCtYq79FZEcG+zCBVntLUOH/VN/TgI
 q3vMZdixbCj3aWxooRplf2pAUWKvRfQJUG5UvMxbF4UK545jjyzcvBj4p
 v2lWzo/W6t+L1NGsEGbF+8IpEN3pwzOO0RVwnO8QcfoHhEgfX5bJDH2mb
 3clyFJmYvcOkhHZYRdbktUiYtrtIWhJx/rJMNrMeWYGDNF2fHNeH9b3tm
 KD0VO0yC/slNZjC0Vf+PLuA+uhpIKcxw3yETiToolAPJ/L/+T4k3rn2/N
 viphItSAj/8h/86sSLkOK0sijMNbEfqGh83gphJBxt+rdcLnTBLnWpsY8 w==;
X-CSE-ConnectionGUID: LcY5ITloSF27NdVryMUL5w==
X-CSE-MsgGUID: bRuvsuFsSdeBwI52MZCLDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83607414"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="83607414"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 02:19:59 -0700
X-CSE-ConnectionGUID: QkANs1KBSEqdjJ1T5o8jGw==
X-CSE-MsgGUID: dC+aKrD5SBip8o2b4s397Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="245544418"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 02:19:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 02:19:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 02:19:58 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 02:19:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d7o/s+x4Y48KST+WP3GfQohM3pp3DQOOi1zJ4jwlE7igywaCPHvxMIYCukkfI8ZsgEMXO8F41zxA4t+3anb1BIpBcGPRTjhoSPl3UD0zmLKWAP2oRKMGdEOQLqivL7KAut4sG6n7IeUld8o20MWRvatUqAp5b6Y2fOTQHrZt0Zc4/85IhSsfiChiORqRyxOM608tzN2c6Nx2gHhx79ZRmAzfgiyTXsj5x5D6f3bMzH3rJTwkjCE1bVQ0gZz2kr3xUl36qsHmE51v6R77Rs2eA+HWlv7Ozt1lGJVR2+MLZVvtVAPGYxZUkl+y9sgROyTlH+3ouXFvKCmyclSk3JA7XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RT0joCrWfLMy9NvNmPZP+yHsDvEx6T1qRaJuZIilSak=;
 b=MYzap6XicNaBfpqJ4JOpzi4o2NOrimz1uWmZ25dWwl928weDDiFSd4oxyO6gepmthzhzeUh8HB3fQtaMVCALsIQm4KPWpuoLWiO7Ol4a+el+3zf0ZsoEapeocQ72Ds2jzUTm9RBjMBIfScEPqe+HZ/l1omEn9lPFdOr9KBWy4uH2DQMgqaK5qNu4nLE9OaffjRfBTWRxwjwYtXOnb52vKxXMFb7l1vQB+g6ocBccaSp6HYnaSGDHz8kTP/G0pMudC5LG6QhgNv0RG6p5mSAOYyMnmyP98lAG1ei/nzwYW1DKd3jEWeDCknhKqfTHAMKrU2+q3iiV1LVFWMDoulM3fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM3PPFBADCE1465.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 09:19:56 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.018; Mon, 29 Jun 2026
 09:19:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 2/7] drm/i915/pm_demand: introduce HAS_PMDEMAND macro
Thread-Topic: [PATCH v3 2/7] drm/i915/pm_demand: introduce HAS_PMDEMAND macro
Thread-Index: AQHc/Q1dvhsUnH7/tUqjKcVDKn+wgrZVVrPA
Date: Mon, 29 Jun 2026 09:19:55 +0000
Message-ID: <DS4PPF69154114F58C593FC1E2BF8B98BC2EFE82@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-3-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM3PPFBADCE1465:EE_
x-ms-office365-filtering-correlation-id: fa48b2a4-2477-402e-1d24-08ded5bf9590
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: a0s94hGJmoV1QWBI8G5ZHoWzo7snKY0ek3hIqyGyh/euRx0PK6LUQzjTc2jcgRcGl6NfRsZ8pVswF71MOWarOJbImMyIlJvfVRbzDM8StfMJIrZzqhEJDUB9VEQ8xa04/nG3LLUwYKA+ABYFP19CZ44b64/3VXHcCWdUXIkgn/1iogaBuTWF5iZcA5NQO5D7vmuolBQRO2qbC8aYRz+wmJBEVXydroK5TAmgWJ0UQWs3wj68xNFQk78fhBhsBxz8fcdYckGHVh9wKJ6fNYgmeMijhldcsQQ4MPxU8xAT0k3zn1xZ0uQmxehLY3EU3EaBs0LVnHZO6r0rEQb157d3PBbpdAwechQ8Wb6/dbVLIhEOyhtz7N3171tnQEv5/AKbP7gtja+dBteyT+W3mFEX4N2aUy52fWEa5panQ+1iy2Ijui8gR5c4NcFLQIW0zLhUZMUVAuM4IPuE/Ufy46Di4SWEEwjqsPsBrJXW+vQWZAJJRmF2lYFHhG6NgtMb4GEymcyg+aun8QP0NTXHMfuh6qcFYCll5h5+vb2TNXJI6RhsNgPbZftIRCKVo9HMzxJWUeHOdumKuSDyvDrU+QkBjk2edZnoXy+PHrZDoGn3bct8q+WWLCywUnN7DOcddNKgpXvqX+F14uMXvLuTOmVVLb115GjTkcOKc7fRLVmgBuXV8tJfyhbCnwvpSZVj3pK6orSYPCWgJkZUW1LV9uhdWLzMpyToRgz5UvgVl6VeRaY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnVVa3hPbmFrYUFacUMrNHhtVVlnMmw3Zk4vTVRkZ2dNKzErQncrK1d3bGFm?=
 =?utf-8?B?TllHb245UWpjdC9KY2lnZnQwL1FuMnd4NVdaN3ZNOTlaNFcvZ0I4Z2J1NWdk?=
 =?utf-8?B?YU55M2c0SWtnN1Ztb0Evd1orY2RnVnBqVTRmN0pNOFlyWjM1V2lubG5zL2o1?=
 =?utf-8?B?T1JUcTIvZ0NHTENZNVJRMTBtRG1sMzdIYmFQMmVuZEVIRmpNbDVJTFNEb0Nx?=
 =?utf-8?B?dHY3TTdqa3Avd2hRaHlacFVkMmRseExyOXplcWdMS2s2M3VOc0JLaXFmcHlB?=
 =?utf-8?B?Qk81dFhSMXhxSkc0MWRpV1VVVWJHNGFLZXBDTjZBNHF1SjYvc2JZTiswYy9S?=
 =?utf-8?B?cmswS2w3eHhuR0R1QXdXeUJCMmdWcmgwTm1rWkM0QjhJS1R4OG5JM3MyRGRq?=
 =?utf-8?B?YmJZMUQ0MXVTbDFUckdxREJvRFpYUnJmRGNMcDRheDVmMGpjTnFZK0NqUEJY?=
 =?utf-8?B?RzAvWWc4MW0xQ09WbHhncEIwUmlhNTVCQXMycjdkdmtXRTR6NUErLy9rUEll?=
 =?utf-8?B?UEFtWmdOUmdTUUFEK0IybVZraW5SV2Y1NWYrZk9wQlFHc3FYb0lVa2xCTVlu?=
 =?utf-8?B?a2d0Ri9NUTBreEsyK05STlZlWXZ2NHgybVVlNStzeUN2Z1djZ0lzOG9nMG9D?=
 =?utf-8?B?bFJuR2M1TXpOMm84VU5RQnA5bW44SzBzTXFOSGMrNE5oTXlwbDlBYnFpaG1U?=
 =?utf-8?B?blhhQzNCekFOdE1yTlRjM1FUTE4vaTNKbFg5enpZaXRjQThacEljTytHRFBm?=
 =?utf-8?B?S3d1eGEwRnF0dngweEIyVys4ZjdsemNsSnh1UlhnY1N5TndsUENrcW5CV0M0?=
 =?utf-8?B?SVUrQnBmVzNzUDhaaGRSelVOMElrZFhwa0dzcUJtajJrYm0xL21qQ2tjOW5k?=
 =?utf-8?B?UGZCaWpZZ08rdXV2RHV4NS81MVZZYjIvbVUrOWpmb2Q0M0J1aE40dlFtY29v?=
 =?utf-8?B?WW9Nd3dac1p6bUk2a1ZTaFNhTFFyVFd1ekYvOUFoUUtMVFBDandkMnNPQVVG?=
 =?utf-8?B?UDBubWFQbmgxcXZ5YnlPc3RYN2ppYVFyVzJUL3NtS1c3eHdKRmpZRnJneWYr?=
 =?utf-8?B?aUZiaE9iUXQrVWZ4TTByckl3UkFYaTVnS1ZubkJTdmxrbTdEMkp2ZTlTQ2tl?=
 =?utf-8?B?cUVTamhGVkpsbTQ2VGhlYlV5SzQ1TDVSKzBPaU44SkxmUnROd1FBUXduWUd6?=
 =?utf-8?B?WDd4VEpiNjNKcGduRHg2cCt3elJ0THBTemNmTWl1SW8zeDg4bHRZNTBRZ1Fr?=
 =?utf-8?B?RTROeG1hdUxVL01jT3dIV1dDMWxJZDVzQ0p0b0VRaGpoSVZEai9lMW5Sc1ht?=
 =?utf-8?B?dUNWcEFUTXBZSU5Hbk5Od29hMmpZMHlLV3ZReGdBZGpCQTMzWFJLTys1QldX?=
 =?utf-8?B?UmVoa0RSSDBIbHhiajlSTWV4ZGt1ZUsxVVVndTBhN2YxNHdTMWp3bXRxVDNX?=
 =?utf-8?B?RkNUQURyS1VML29tVTZkTTRuSTVKZWxIYmhvMEM0RDJqdUY5N1RlZG8vdVQy?=
 =?utf-8?B?VktDOE5TRnl3cXBIL2JlcXEzNm9xdGo3Q0YzU2wvMFFkUnhoN1JubUlzRXZi?=
 =?utf-8?B?THAzRzB2aUZ1MEFrbmd0R2RMTk5MSHdzMUJPOUd0ays2N1lhSlM0SUJhdE5X?=
 =?utf-8?B?NGl0dkp4WDFkaWljNkgrQ2VFbFplbFFSMVhOTHFxQ2xZODIzZng3MFU1Wllz?=
 =?utf-8?B?WGl0QXUvRVp1aDJwMm90MDdQejJ2UXhDRmFQaFU0TUtvaE1KZ1Q3UHZqOVZ4?=
 =?utf-8?B?K3hVSUNYMzBnbnNyR3JkU29MTXNhWXQ1eGdib2NHUlJDM1Jwdk9rbzV5MU9p?=
 =?utf-8?B?WGFjNzZUbEdkTVNSdERpa1RGTHY4YWpycURIMEZWVjdDZ1BVemM5MFNuYVpt?=
 =?utf-8?B?MVVlc1RVSkRZbXVlTzZZUU9sV3N6RWtkS0IxZkFkQjliaTYwRHJGNll4aktS?=
 =?utf-8?B?VkhjYlNpQjlMOFVhcWRubThTU3BkTHRqa3NBY21HRzJ5QnRsbXd2Vy9nb1dD?=
 =?utf-8?B?ZHoxeHlWQWhQaitnQVBkVFhZcldKcjVLSkdyWmVrc1ZFcVVkR0hhaC9DZGEr?=
 =?utf-8?B?VS9wVUhIaW14Q0d4SzliL0tsR1lLSnV3OGFTVDJyVkdDMlFJOEJ5bnJtdHVM?=
 =?utf-8?B?T3o3ZjVJcU1NeXoyU0JJNDgyQnU2RDBxKzBtdHZrWHEyb2ZUY0tpUXZWdmxv?=
 =?utf-8?B?ZXRTL3RQdTlQWktPb2dQVklrTWFjWGVmQ3Yvam1rZWZlNEdvRmt5VjJMT0di?=
 =?utf-8?B?L21hcWdmZExGMzNLSWFHTHVLaFZEOHJVSWdZVmt0aURzOUcxcCszMUlwb1N3?=
 =?utf-8?B?eXNNanZUZytsclcvend0eG1ySXJCL2hBSU1ZSG90ck9pcHNLYVZSdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Q8NdLOQi9yYMYKasBBbNo67zJm9uNh4hLtMWkxnev74c2zqu5+1sDWFRZiUh5r4wkSlavsizCkb8kntr2Ygy506y5z85bZly9fsWn2gwOObAA8bQXMshrEQudy3CAKa79NOtP6F2d6BmlHFXfZ48hHG3r8UD1001mcUGz4TwQ39z4UBRxuWjHV7ptEx+SNoxsCYudcM+mUupzsi1qOH0lMjQB1DNmyWuK4e/D0UAdANmU9o07aoJ9o3vz3+0lKKEZgXZZOoAnFEFt6bzvnwCl+pjJWXPiBEu9kPESWP7PYx0w3e1eLuSPPochOPQveK7viDMpcMCHVfNTPEePQ5wOw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa48b2a4-2477-402e-1d24-08ded5bf9590
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2026 09:19:55.7753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6Zk9w2FrPTsdQu1AXKkBDSn0WDVIi8hvF69fqDLK3cOcM4Ko1bKqi9sodBiIfMmGPrA4+hLP1kQSgnZnB1NAlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFBADCE1465
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D79AC6D80B9

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaW5vZCBHb3ZpbmRh
cGlsbGFpDQo+IFNlbnQ6IE1vbmRheSwgMTUgSnVuZSAyMDI2IDIzLjM0DQo+IFRvOiBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEdvdmluZGFwaWxsYWksIFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT47IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAy
LzddIGRybS9pOTE1L3BtX2RlbWFuZDogaW50cm9kdWNlIEhBU19QTURFTUFORCBtYWNybw0KPiAN
Cj4gUE0gZGVtYW5kIGZlYXR1cmUgaW50cm9kdWNlcyBhIG5ldyB3YXkgdG8gc2V0IGJ3LCBwb3dl
ciBhbmQNCj4gcGVyZm9ybWFuY2UgcmVxdWlyZW1lbnRzIHRvIHBjb2RlIGZyb20gZGlzcGxheSB2
ZXJzaW9uIDE0IG9ud2FyZHMuDQo+IFVzZSBhbiBpZGVudGlmaWFibGUgbmFtZSBhcyBhIG1hY3Jv
IHRvIGRpc3Rpbmd1aXNoIHRoZSBwbSBkZW1hbmQNCj4gc3BlY2lmaWMgY2hhbmdlcyBpbiB0aGUg
Y29kZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmlu
ZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuYyAgICAgICAgICAgICB8ICA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaCB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYyAgICB8ICAyICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgfCAgNCArKy0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BtZGVtYW5kLmMgICAgICAg
fCAxMiArKysrKystLS0tLS0NCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
dy5jDQo+IGluZGV4IDQxNTM5ZmRmZWFjNS4uNDU1N2RlODVmYWRlIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC0xODQsNyArMTg0LDcgQEAgc3Rh
dGljIGludCBpY2xfcGNvZGVfcmVzdHJpY3RfcWd2X3BvaW50cyhzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSwNCj4gIHsNCj4gIAlpbnQgcmV0Ow0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIo
ZGlzcGxheSkgPj0gMTQpDQo+ICsJaWYgKEhBU19QTURFTUFORChkaXNwbGF5KSkNCj4gIAkJcmV0
dXJuIDA7DQo+IA0KPiAgCS8qIGJzcGVjIHNheXMgdG8ga2VlcCByZXRyeWluZyBmb3IgYXQgbGVh
c3QgMSBtcyAqLw0KPiBAQCAtMTIzOCw3ICsxMjM4LDcgQEAgc3RhdGljIGludCBpbnRlbF9id19j
aGVja19xZ3ZfcG9pbnRzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiANCj4gIAlk
YXRhX3JhdGUgPSBESVZfUk9VTkRfVVAoZGF0YV9yYXRlLCAxMDAwKTsNCj4gDQo+IC0JaWYgKERJ
U1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiArCWlmIChIQVNfUE1ERU1BTkQoZGlzcGxheSkp
DQo+ICAJCXJldHVybiBtdGxfZmluZF9xZ3ZfcG9pbnRzKGRpc3BsYXksIGRhdGFfcmF0ZSwgbnVt
X2FjdGl2ZV9wbGFuZXMsDQo+ICAJCQkJCSAgIG5ld19id19zdGF0ZSk7DQo+ICAJZWxzZQ0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
dmljZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rldmlj
ZS5oDQo+IGluZGV4IDEyZTVhNTIyYTI5OS4uMTNlOTNhNGI0ZjVmIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+
IEBAIC0xOTMsNiArMTkzLDcgQEAgc3RydWN0IGludGVsX2Rpc3BsYXlfcGxhdGZvcm1zIHsNCj4g
ICNkZWZpbmUgSEFTX09WRVJMQVkoX19kaXNwbGF5KQkJKERJU1BMQVlfSU5GTyhfX2Rpc3BsYXkp
LT5oYXNfb3ZlcmxheSkNCj4gICNkZWZpbmUgSEFTX1BJUEVETUMoX19kaXNwbGF5KQkJKERJU1BM
QVlfVkVSKF9fZGlzcGxheSkgPj0gMTIpDQo+ICAjZGVmaW5lIEhBU19QSVhFTF9OT1JNQUxJWkVS
KF9fZGlzcGxheSkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0gMzUpDQo+ICsjZGVmaW5lIEhB
U19QTURFTUFORChfX2Rpc3BsYXkpCQkoRElTUExBWV9WRVIoX19kaXNwbGF5KSA+PSAxNCkNCj4g
ICNkZWZpbmUgSEFTX1BTUihfX2Rpc3BsYXkpCQkoRElTUExBWV9JTkZPKF9fZGlzcGxheSktPmhh
c19wc3IpDQo+ICAjZGVmaW5lIEhBU19QU1JfSFdfVFJBQ0tJTkcoX19kaXNwbGF5KQkoRElTUExB
WV9JTkZPKF9fZGlzcGxheSktPmhhc19wc3JfaHdfdHJhY2tpbmcpDQo+ICAjZGVmaW5lIEhBU19Q
U1IyX1NFTF9GRVRDSChfX2Rpc3BsYXkpCShESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49IDEyKQ0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5j
DQo+IGluZGV4IDRhODIxYjA2NzRmZC4uYTU4YmQ1NGUyZGMzIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBAIC0xMjYy
LDcgKzEyNjIsNyBAQCBnZW44X2RlX21pc2NfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXksIHUzMiBpaXIpDQo+ICAJCX0NCj4gIAl9DQo+IA0KPiAtCWlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA+PSAxNCkgew0KPiArCWlmIChIQVNfUE1ERU1BTkQoZGlzcGxheSkpIHsN
Cj4gIAkJaWYgKGlpciAmIChYRUxQRFBfUE1ERU1BTkRfUlNQIHwNCj4gIAkJCSAgIFhFTFBEUF9Q
TURFTUFORF9SU1BUT1VUX0VSUikpIHsNCj4gIAkJCWlmIChpaXIgJiBYRUxQRFBfUE1ERU1BTkRf
UlNQVE9VVF9FUlIpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4IDJlNTFkZmNkNWRjZS4uMDNmODYwMzEzNTE1IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYw0KPiBAQCAtMTEyMiw3ICsxMTIyLDcgQEAgc3RhdGljIHZvaWQgZ2VuOV9kYnVm
X2VuYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gDQo+ICAJc2xpY2VzX21h
c2sgPSBCSVQoREJVRl9TMSkgfCBkaXNwbGF5LT5kYnVmLmVuYWJsZWRfc2xpY2VzOw0KPiANCj4g
LQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ICsJaWYgKEhBU19QTURFTUFORChk
aXNwbGF5KSkNCj4gIAkJaW50ZWxfcG1kZW1hbmRfcHJvZ3JhbV9kYnVmKGRpc3BsYXksIHNsaWNl
c19tYXNrKTsNCj4gDQo+ICAJLyoNCj4gQEAgLTExMzYsNyArMTEzNiw3IEBAIHN0YXRpYyB2b2lk
IGdlbjlfZGJ1Zl9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgew0K
PiAgCWdlbjlfZGJ1Zl9zbGljZXNfdXBkYXRlKGRpc3BsYXksIDApOw0KPiANCj4gLQlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ICsJaWYgKEhBU19QTURFTUFORChkaXNwbGF5KSkN
Cj4gIAkJaW50ZWxfcG1kZW1hbmRfcHJvZ3JhbV9kYnVmKGRpc3BsYXksIDApOw0KPiAgfQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcG1kZW1h
bmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcG1kZW1hbmQuYw0KPiBp
bmRleCA2ZDMyYzUyMjY5YTYuLmY5NjU0NWE1Yjg4MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbWRlbWFuZC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcG1kZW1hbmQuYw0KPiBAQCAtMTUyLDcgKzE1Miw3IEBA
IGludGVsX3BtZGVtYW5kX3VwZGF0ZV9waHlzX21hc2soc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXksDQo+ICB7DQo+ICAJZW51bSBwaHkgcGh5Ow0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIo
ZGlzcGxheSkgPCAxNCkNCj4gKwlpZiAoIUhBU19QTURFTUFORChkaXNwbGF5KSkNCj4gIAkJcmV0
dXJuOw0KPiANCj4gIAlpZiAoIWVuY29kZXIpDQo+IEBAIC0xNzQsNyArMTc0LDcgQEAgaW50ZWxf
cG1kZW1hbmRfdXBkYXRlX3BvcnRfY2xvY2soc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXks
DQo+ICAJCQkJIHN0cnVjdCBpbnRlbF9wbWRlbWFuZF9zdGF0ZSAqcG1kZW1hbmRfc3RhdGUsDQo+
ICAJCQkJIGVudW0gcGlwZSBwaXBlLCBpbnQgcG9ydF9jbG9jaykNCj4gIHsNCj4gLQlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPCAxNCkNCj4gKwlpZiAoIUhBU19QTURFTUFORChkaXNwbGF5KSkN
Cj4gIAkJcmV0dXJuOw0KPiANCj4gIAlwbWRlbWFuZF9zdGF0ZS0+ZGRpX2Nsb2Nrc1twaXBlXSA9
IHBvcnRfY2xvY2s7DQo+IEBAIC0zMjQsNyArMzI0LDcgQEAgaW50IGludGVsX3BtZGVtYW5kX2F0
b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAljb25zdCBz
dHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAqbmV3X2RidWZfc3RhdGU7DQo+ICAJc3RydWN0IGludGVs
X3BtZGVtYW5kX3N0YXRlICpuZXdfcG1kZW1hbmRfc3RhdGU7DQo+IA0KPiAtCWlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA8IDE0KQ0KPiArCWlmICghSEFTX1BNREVNQU5EKGRpc3BsYXkpKQ0KPiAg
CQlyZXR1cm4gMDsNCj4gDQo+ICAJaWYgKCFpbnRlbF9wbWRlbWFuZF9uZWVkc191cGRhdGUoc3Rh
dGUpKQ0KPiBAQCAtNDA0LDcgKzQwNCw3IEBAIGludGVsX3BtZGVtYW5kX2luaXRfcG1kZW1hbmRf
cGFyYW1zKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAgew0KPiAgCXUzMiByZWcx
LCByZWcyOw0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxNCkNCj4gKwlpZiAo
IUhBU19QTURFTUFORChkaXNwbGF5KSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAltdXRleF9sb2Nr
KCZkaXNwbGF5LT5wbWRlbWFuZC5sb2NrKTsNCj4gQEAgLTYzNyw3ICs2MzcsNyBAQCB2b2lkIGlu
dGVsX3BtZGVtYW5kX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpDQo+ICAJY29uc3Qgc3RydWN0IGludGVsX3BtZGVtYW5kX3N0YXRlICpvbGRfcG1kZW1h
bmRfc3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9wbWRlbWFuZF9zdGF0ZShzdGF0
ZSk7DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDE0KQ0KPiArCWlmICghSEFT
X1BNREVNQU5EKGRpc3BsYXkpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCWlmICghbmV3X3BtZGVt
YW5kX3N0YXRlIHx8DQo+IEBAIC02NjAsNyArNjYwLDcgQEAgdm9pZCBpbnRlbF9wbWRlbWFuZF9w
b3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlj
b25zdCBzdHJ1Y3QgaW50ZWxfcG1kZW1hbmRfc3RhdGUgKm9sZF9wbWRlbWFuZF9zdGF0ZSA9DQo+
ICAJCWludGVsX2F0b21pY19nZXRfb2xkX3BtZGVtYW5kX3N0YXRlKHN0YXRlKTsNCj4gDQo+IC0J
aWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTQpDQo+ICsJaWYgKCFIQVNfUE1ERU1BTkQoZGlz
cGxheSkpDQo+ICAJCXJldHVybjsNCj4gDQo+ICAJaWYgKCFuZXdfcG1kZW1hbmRfc3RhdGUgfHwN
Cj4gLS0NCj4gMi40My4wDQoNCg==
