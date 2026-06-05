Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2UxeL+DUImqueAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:53:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0175E648AA1
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:53:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YNqiQtKM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13FB112B3C;
	Fri,  5 Jun 2026 13:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5296C112B33;
 Fri,  5 Jun 2026 13:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780667612; x=1812203612;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eVCG07somLXaSD4uRBBMUgNGLXsaCvMbq3JwvVwYkao=;
 b=YNqiQtKMi8KNy6+uqoqlzzW+wtM8cB5ZrVxCf0MDtqS3v26w+CFI2CFQ
 X6HeQA1liVJtqe70jUXGlAm9eI8stVypxpje/4Jt7DH8M6ycu1K8OWBNT
 Xk9SMiFAw9ggTed+rH9RnRKnD0iuLb6tcI5yis3Jnj26pUqufMntnuIx0
 FGRbgKH3eQcUFZtss+9hv3Xw8OnIenYcOAvzQbQStNdz45AoCmDlxhg2J
 FETH0h92a3A5gjjTAxsBzwvkZOOYsuBfjzEEjieZ94nrEim+danz6TS7V
 2yjx5pbjHNIp13OLQKjqxmxHMFTNdF5gk5dJa6SImX4DSd+bpoXDNAcJM A==;
X-CSE-ConnectionGUID: bxHlqjqfTGmDoTZ0Enih+Q==
X-CSE-MsgGUID: IcCbKaWJTFiwYcDlAEgUhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81623136"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81623136"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:53:31 -0700
X-CSE-ConnectionGUID: k5Uy0WxYQkmmkvCGxMSe/g==
X-CSE-MsgGUID: Ug+14jqqTxujPyE9Ft9Tcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="240662124"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:53:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:53:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 06:53:29 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SHVpghf7m2rUawWRncWtkM0d3y6OO26Iny6CsPGHJSvlEUveq87IpKFoaHrayI3ZtbYFteZd3YcyPNzRuwPaQEZDksxSDs/0zhS1EQ1js76wLRBKzOmxuowqBM3ZHKAWugWLR3lI/nlB6Gsb53mt5rDgC9xDecPSQX1FLYR1/jRvMDOIohQBO7rnXb6v/PFWurFjWYzWeEMH1ZxxsTnDZZLKFOQsnahmh1ss/2eE89DzqpXmuX+/TIVduiIWnlt24rbnfaaSCO76Dj/J2mbQ9hUvcQHzYsaqTMCweNR+OnZh+x2ef7p3OmrBJvaVIBSnwAJ3Xfs154070Z6zWrYw4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eVCG07somLXaSD4uRBBMUgNGLXsaCvMbq3JwvVwYkao=;
 b=jl1lgxobaBwnO/ZPNvWA4oBS86dJvc7cjJYJqa0slpNUwDXjBgTPqg73f8JNHY1Z1pkAZaHJt+Gl1TV/hBYVy3UtHH9ejWGaoH/yDgshdbwvc6vpAvE7tbycUAKJOa/rq5jCICBinmtkkEXb86ZVUqa3FXVLkSA7xKk+0L9MrFCSpigWKq8vXF1DT9+ZcDKelCrRJliQ8PDaTm+quegiPLEUEoVsfT4MHJydfXNLjnmUyFofoI/u+xZ2ds+duXWeXYeU3K42mVhYJAyFtYSGsHVIY3eAAmY03Alw5ckjp+ljJcKiRktMrGAl5p6w0xCmRumrWc5eQQZjghsNY6I8Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA0PR11MB8354.namprd11.prod.outlook.com
 (2603:10b6:208:48c::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 13:53:27 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 13:53:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 10/22] drm/i915/dp_link_training: Check for pending
 autoretrain explicitly
Thread-Topic: [PATCH v2 10/22] drm/i915/dp_link_training: Check for pending
 autoretrain explicitly
Thread-Index: AQHc8awYFjtlRfgYYkGNTJSiKHYDMbYwAaPg
Date: Fri, 5 Jun 2026 13:53:27 +0000
Message-ID: <DS4PPF69154114FA0BD913FC310DF8809D3EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-11-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA0PR11MB8354:EE_
x-ms-office365-filtering-correlation-id: 2f0e01b8-cc22-41c3-74fe-08dec309d18b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|22082099003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: 2QLkWmXN7W9HNV/Y/IAZ7mqWBBM8AOksi0BIblOePnpXXve+sWmCwuzX5ZzLysPYzUB17+7pjiqr7S471DlOZ0UedCOhEXgkaoxLPSMqhzP18Tm9tt/UkYCS6lKD1fU7szbN3V3VN1R4YGO+TCSDP0A7R0unGzrrkXjZP4eT+RSq9jr710DEu4Hdan7wSKLipqyaUqZkEl/5dp5Oayl68BU2fcE8xbwYSuyCWs4Tg8m71B8odueiBbwG/f3XsbJ+MIqYNsglVG4GhVv6b85yGdrhDA4xND+R76o7QtCAPFmFWk7+okcHAWTDyPz3MAXtIEUSngd9qaBY7zf+KTjE5R6ZgKZJYWKm0D3tMaIwHP43a7ezlKwPTegBl8JaIHnTNXER56zkUbs0s3y+AhfjxGJ8fyEY7eyBJhOkHwetbBYH7HL3ncPjU/l52ATv7SyPDNzIitLLmQaS5lQorrEizGClbUyZkrcEVh4wRIoh0kF90gUzds+JY56LJcuyPjGOvG77pxt4uaHWbvNPp0Ggm8DxwHCiidHX2DOlymP4LL5kSEOkOfWE2aN3mB+qDdWjU03eYlpyHkDlbqSWYm8h0vNRoQMu+5BEnEG/s6/0u5gwbKrXQhAMDQ9QKn3P4XTPVJHjcdZ9zzRWtW0KOBX+FAhQSHKGr1+1qeawFV7S0WF6A0//PGhl6lLXV3vfDLuJf7EY851ia4uK8bP3085y1jq6BbsO7HmOPGpOLC8HVZNwQVHhBMi1aBsnobeJg+Ft
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OG5ib1Azck4yMDYxbFlnS21vMzZjbXB1VEpBaXhLc0FCZ2FiWXJ6Z1lZYXBF?=
 =?utf-8?B?bkpFOExZd1UyckVYSkg0YVZLbjhCNzl6dWxnWWlLMTFkdXlaVUhFekdkYWZZ?=
 =?utf-8?B?b09hTjRoTW1xSy9ic0NvR21SUVFybG1TczFvVjVPSHZ4S0hhTEkzSE9wZVc4?=
 =?utf-8?B?YVNaQzBxd0huSVZEZk5kM3FkdXYrbjcxTGhhUFlnRG9tbFNOZVM5V2hMQm5m?=
 =?utf-8?B?T09JMWNBTG1wb29HOEhucHl5UGJ6RUhleGRVT2xvYmZSVEtNb2txazVOUTcw?=
 =?utf-8?B?anNOdVBXZjlqRXhZWEVjT2xOU01DSS9rbTN4QkM1T2xDQ2w4NVNXMmN3dEFS?=
 =?utf-8?B?L2htTWY2K2hDTGVMNEFDMENMSEFKMFFWcnNtTGZzaGFGa2lkY3RqQTJwTnRq?=
 =?utf-8?B?cS9Oand5SDB2OWRFcTE4R0F6UW5OMGplM2JBUWdpblRqV2FwWHJGQU5MWXNV?=
 =?utf-8?B?NW9ZN0xQVmloekdXZExLUjlxV011VzJJUjN0eWZoSE9Ma0NaUVJaMFBRM1M5?=
 =?utf-8?B?OS83eldaaUVXdTI2eXd1WHFxWXVsdWJoamE5L1dDVlo5Rmg3TTV3OHV2L2dw?=
 =?utf-8?B?eEIvTmhMeWxSb3d3Mm5CdWJ1bjBXdkdCRWZmc3hPa3czQjJMUkx5RzZPeG45?=
 =?utf-8?B?amRXMm1VY1BVRUFId0dOd01idG0rRzIzN1NlcGZ1WWFPRUt2dnRsTFBIS3Rm?=
 =?utf-8?B?cFBSMUhIVEhYWlhsY3cxRFBCMUlhMjVuQ0FDc0lwOC9NNENrM1dvWlNpaW8z?=
 =?utf-8?B?cEF3eEZ2R3Uxekh5RXdXT3R2NTdEQ0dJQWRXL3NVNmVTSDY2aFNJdkFVdUlB?=
 =?utf-8?B?SkFIK2QwV2ZFcExrSUZmaXpoM2srQnY4OFNZY2wzekF5Q01CUDk4OWVuTy9s?=
 =?utf-8?B?b2NhWUZuMHRLcnlIdkcwcGt3VkY3ZDZ3WDY2YlladEIwcjZiQ0QzZ3RBalhD?=
 =?utf-8?B?S3VVTEZyamU5NFpuZ2NqS1NNNmRTWU1HREMyTlBDMTc1WkVKRHBLUmY2K0Fi?=
 =?utf-8?B?YXR6RjZtSjBnbE5kNHI2bGswNjJQT1YrTzRkaEdkc0lIZjBpbHNEWTdiODF2?=
 =?utf-8?B?MXRrTFpyZ0ZqclRCTTVpeHRMS0RrMnJiRW1ETlJDaXlKbEtleTdrQlhFMER4?=
 =?utf-8?B?Y1N2QzdXMVk2ZEV5UjFTMHZuWlF0dzZ6ZVN2QUcrVVFhUTFYbGNReFhqN3NS?=
 =?utf-8?B?SE9pbWozNGIrdmFMSnA3UU9sSHRZUytMWnVIMW43Qm9EZFhjQXZzOHpDWjhj?=
 =?utf-8?B?MDdRRDZGc2I5MEI5RTRyREg5bkJQd0tLR05yeUU5Qmg0Tm5IaENBMFlxNTdX?=
 =?utf-8?B?QmV2RHVjTXhxejlUWHlvbWN5RFZSVVM2U3RlOEp4cnRhVFkySFdxTE5FeFZD?=
 =?utf-8?B?eXlTbVRsamFkdUc2ejh0R09yaE83N0liN3lOdTVoc0l0eldRSStrQkFQNDhY?=
 =?utf-8?B?bllvRXdQclRvSXZwMUJtNy9jQ2l5UUNNR2J0eEVTSFdYOWFSOHpWc3NrdXdT?=
 =?utf-8?B?NDFYT2tFOEEzUncxNzBFYXJnM3MrY3lOdXFmSnFuMStDMUFDK1dQSVJGblVB?=
 =?utf-8?B?NlVwSld1c1NtQTJQR3BKQkhTMGlIQ2lyTnFwWTFkNXFXWlhPMHJ0TG9YdUlJ?=
 =?utf-8?B?Y0VNYTJyMDlTUWpiaHpkQkJ1bUpySFZZc1dxU0ZtVEZRNTArMFF0Snd2YXlu?=
 =?utf-8?B?ODNNZGNoR0k1WVZIdU1vL2QxWm9ibjN6ZmhqMjlIK29ZZ21JM1RqY3JXcC9z?=
 =?utf-8?B?WExYVkFrQXA1cndreWRxK1JHd2xlMlNHc1NOYXNBNURpbWxxcTZXSkkzNVRG?=
 =?utf-8?B?WUh3UEhVQ2lDaXhxRVMrTDBpYXE5R3pSR0twdWZ4aDJsZDZTWjhvSDFBSTcr?=
 =?utf-8?B?NGNOajlKWEQwNlVmUXpRMFFzclppMG5adlAzNGJDT2d0QmJiR1ZNZ3FNNk5k?=
 =?utf-8?B?cWFsQ09HRjhTYkdNTHJYNnZyL285UU0wWlB6WjR0ZHlYNEZmNFc0ajhqS3pL?=
 =?utf-8?B?R1kxdVRPTFlYQ1lOYUI3MmJlbHNJNmJ2Wm5UUDUvWEY2OTFWbDBVaVJmdnZw?=
 =?utf-8?B?c0RKODUvVlJMRy9IZjlQbHZUMEI2cVVtUHhPMVBTczcxYklGTmg4N2czdVd0?=
 =?utf-8?B?MmdIU1ExVThYTmFSMktSMGQxazV0L2RubU9JSWpha21ZQkZLUFhwY3dId2kx?=
 =?utf-8?B?RFYwdXlYeGVxN1QwYXBxVm8xZ1RJemRYM1F5Y21sbzhETzVKNXVWeUhmSVgr?=
 =?utf-8?B?UE1FMlhTOWxRZWZGN1N1cit0YXFER1JMYjJya0FqbUFWR0xGMTI4MjZ5K3Iy?=
 =?utf-8?B?aWVEekJJTXR5UE96VnRadnNYaGFwb3VtZDhmYWNSSGdoaFdlRGxSUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dfNTSfIKEqtfcZi0Bxyzj82w2IvKuk7HEdjMLI5E7jZ5qmx7gFcc1MAN9hQPPCmUlqlKrnp24GxBMYxbNTS63c9cj/9GLt1jRI7SBcwhYFcbq9rI4GO0IErqjpGaVrNPsq9+5xAfAlLbi4n82g0Yg7wDqUDpzBsArDjj50Rst5Q4e1JxefjYxJNOZwklBu8KArCgnhawRh525Y+VXBGZ/1NTX0EVdjIN4UYYV/J4nldiwKUVgzl4z9TVswurX9QATepL5ijVzPTbxK5fw0nUjKctkaOzl39kIV+/EeRZGY+Eox2FFKkLffzARrxHOYSyqoyVx5FFOr5XYdsw3I84BA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f0e01b8-cc22-41c3-74fe-08dec309d18b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 13:53:27.0841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HXB9P0bePTPDwv1pMIuucI/Frk9jgN9snOT80JwJM3d1ErjVWYjnCZ27aUMRzCR5zQQEiPvtElID9x1z7kvQig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8354
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
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPF69154114F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0175E648AA1

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAxMC8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogQ2hlY2sgZm9yIHBl
bmRpbmcgYXV0b3JldHJhaW4gZXhwbGljaXRseQ0KPiANCj4gQ2hlY2sgZXhwbGljaXRseSBmb3Ig
YSBwZW5kaW5nIGF1dG9yZXRyYWluIGJ5IG1hdGNoaW5nIHNlcV90cmFpbl9mYWlsdXJlcyA9PSAx
Lg0KPiANCj4gVGhpcyBtYWtlcyB0aGUgYWN0dWFsIGNvbmRpdGlvbiBjbGVhciwgc2luY2UgYXQg
dGhlIHBvaW50IHdoZXJlIHRoZSBjb3VudGVyIGlzIGNoZWNrZWQgaXQgaXMgYWxzbyBiZWxvdyBN
QVhfU0VRX1RSQUlOX0ZBSUxVUkVTLg0KPiANCj4gVGhpcyBhbHNvIHByZXBhcmVzIGZvciByZXBs
YWNpbmcgdGhlIGNvdW50ZXIgd2l0aCBhbiBlbnVtIGluIGEgZm9sbG93LXVwIGNoYW5nZS4NCj4g
DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+
IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8
IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IGYwM2UwNWM3MzBhMjUuLmNiYWM5YTcwZThkNWIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xMzA1LDcgKzEzMDUsNyBAQCB2b2lkIGludGVsX2Rw
X3N0b3BfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiANCj4gIAlpZiAo
IWRpc3BsYXktPmhvdHBsdWcuaWdub3JlX2xvbmdfaHBkICYmDQo+ICAJICAgIGxpbmtfdHJhaW5p
bmctPnNlcV90cmFpbl9mYWlsdXJlcyA8IE1BWF9TRVFfVFJBSU5fRkFJTFVSRVMpIHsNCj4gLQkJ
aW50IGRlbGF5X21zID0gbGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzID8gMCA6IDIw
MDA7DQo+ICsJCWludCBkZWxheV9tcyA9IGxpbmtfdHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJl
cyA9PSAxID8gMCA6IDIwMDA7DQo+IA0KPiAgCQlpbnRlbF9lbmNvZGVyX2xpbmtfY2hlY2tfcXVl
dWVfd29yayhlbmNvZGVyLCBkZWxheV9tcyk7DQo+ICAJfQ0KPiBAQCAtMjAwNiw3ICsyMDA2LDcg
QEAgaW50ZWxfZHBfbmVlZHNfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
DQo+ICAJaWYgKGxpbmtfdHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcyA+PSBNQVhfU0VRX1RS
QUlOX0ZBSUxVUkVTKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAtCWlmIChsaW5rX3RyYWlu
aW5nLT5zZXFfdHJhaW5fZmFpbHVyZXMpDQo+ICsJaWYgKGxpbmtfdHJhaW5pbmctPnNlcV90cmFp
bl9mYWlsdXJlcyA9PSAxKQ0KPiAgCQlyZXR1cm4gdHJ1ZTsNCj4gDQo+ICAJLyogUmV0cmFpbiBp
ZiBsaW5rIG5vdCBvayAqLw0KPiAtLQ0KPiAyLjQ5LjENCg0K
