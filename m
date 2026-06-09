Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EDgwLv/kJ2oE4QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 12:03:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1837965EAF3
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 12:03:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WDY3UQJ4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC8E10E20F;
	Tue,  9 Jun 2026 10:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA94910E20F;
 Tue,  9 Jun 2026 10:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780999420; x=1812535420;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cp3u+m89aTrrVyJtfegpaPRSCrbE421XQsnKqhhRNWE=;
 b=WDY3UQJ4UeFxWw0S04bZvquZRCOlXCrBWDa5Kyu9Gae8/gJyGp5EBh1q
 y2Dbw1yws/Gyy62jzUGOimmPFwWcXqklbiMOHSnusMwFayGLrkqtG9/KP
 tUs4U1Jo9WpISFipWIWRmwYwsewoVlJxLnh0glMUOnxJdYvM9ZYgH22vM
 GJTzI1Yk00AuL+t4cu2F3OGH+omLSrZHWIvT3gXjHpi7T/PmJi5pn/I/e
 QoHqnc9n6REXdirzDaFD5Y4IWAcVWg3e9/wNDG7MNn1KRsPh/7nSBH0+1
 E1Fm7PgC8RCcJJwLyVBogbbHR3/hYXXjhIR5TD/GE2Pq2L85XGqzK6zBX A==;
X-CSE-ConnectionGUID: qzQfpI/+SqqbP/V0XFAUnQ==
X-CSE-MsgGUID: cHcSjXHbSySokwhg227edA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81866797"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="81866797"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 03:03:40 -0700
X-CSE-ConnectionGUID: dMAAoe4bSUa8aIV0ogDdBw==
X-CSE-MsgGUID: e8qLNbrBR12nM0uYYQFS/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="241655511"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 03:03:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 03:03:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 03:03:38 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 03:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bx/i5VNSegmKuw3KPlNqcA4pDDmSq/3ZDsbpSOBgh+W133uND8QEbGBmqmzXBK5ZNedcoHo0bRmd5+sRnIhwhlqw02oCnBDT61SpgvTWqk9+nYnvXwdgCN+roDJYoDsdYh0xviBG5aqYl8VMyjFKkUyvcNpOgi5M6kJ2V7hNMgDFEsPBQ0KVnOFuNeR7ouAH6Eei1BU8DemLMOek0z/SDHoyR/TRL2k1xL1/4Sg1aSVTmok1DPty0mtX5ATT4mzsr32NGapbK0TBc0favmiP2WGj9sU+rF3D9n4qVTFZaQpZJkBde15MhegIYACVBzRCGNiSIdz3Q42rLLceFlik0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cp3u+m89aTrrVyJtfegpaPRSCrbE421XQsnKqhhRNWE=;
 b=phSrNgAQUZDev5ZGSyb9ve/k57p0Yv43zloUmI8bMj3Ikn+JjZQzytJQbvp8vCfDt5GQBq5wSIIieSQA4EssdYNyK8xOtU3lnNvTCrPc0nU8KdeVQumrYp0Uu6+hWkl1T/wwrgr2n3bojff9j/gWzRJv7cgJ4CfLc0ZUWoonmtx0SF3kYvOG3TbW6Ls7hYKYIO4khhcHQIxk5QwMGekLESqeKq+woA70GHMGu5oRrVHnvxSw/Hs8hra1U58Dzv5+gNQn3hIAcG9FGEgNtpWDFy6HfV8p/1hUEAB4q+Q2xS34JEC3fMD1vdv6hMhxBbwIsHP2rRvbHGI4VQ5EFc7i6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW3PR11MB4555.namprd11.prod.outlook.com
 (2603:10b6:303:2e::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 10:03:35 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.011; Tue, 9 Jun 2026
 10:03:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pM00uchb4Aykuwo01m9aBgorY113gggAADAnCAAAUEAIAABeBwgAALkQCAAA3PgA==
Date: Tue, 9 Jun 2026 10:03:35 +0000
Message-ID: <DS4PPFE901A304F3D1536AECA39854BDBC0E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
 <DS4PPFE901A304FD17DE37147850239D7F9E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114FDE8A2D0F6CF1A553F281EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114FDE8A2D0F6CF1A553F281EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW3PR11MB4555:EE_
x-ms-office365-filtering-correlation-id: 841e94df-6960-4520-facb-08dec60e5ee6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|6133799003|18002099003|22082099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: E+6v7aS2daZkT493JTeXPygWHQZL2qIcFQT5zC4SxciQUZAaF16qdFRhz8AeOlQ6spQW0CmKLCAE3nnCYcyZ4x0T6RBEDPnn26thaRWJUCrIkCrOta7FFOyspyKcwUBrtvBIHlOPjxwYprMF6t43yrQDr07WTdEp8jq3s4sBjtcNEwkRosyCQ11SN5g6XYgzOKYuFH6HoOGbhnFrMuYQLmN0G64DV8aBld5eIfPHurhq6tb3Rn1QtwsMMXOuGRbxH+sEkeAWez5BtgEXHZNnmjPhzUiX+r64rZKX26PATEYjVShUdYINw68xDs0fVhDRFKYkK17kh7XR3ZEssUY77RnvTmkEpWcBXr1OjIvzWB+lovW7rqxzmQGUAXfpLnoVh3wGQSXQWK0kq6Xh6fkplwk49ihjY4iMA0gtKWgfilq6JMSkyFTAxS6BpdzsmwUrQtK+xwsJh3pBfLS3Lxvae1hyRPaeDQ7gpwPEIJSwCNVC5nWcn6aVONOM9GJiMs0OwIOBZmYRX4onjgUzTz0tvdSFjiMVlhwjA1mY6Oq8X9gA/yzI3aY5sbsUs91ljFsvh27vcJm3qLEtIKefUDr6+u4fm1u4TnqdjSSbSLUo1CovteZcm/xiw2yeUhSF8ZSr+Pqp8sS0udQdeZO30hG6ksbpUL5hqL2VGNTSKL1/7OqeCxMqYGfUlFQjDjyGw9x9rhrczYsAP5S/F/ySt9n/QiiZ5C5Q4qvrgnMxehVeeVaawAIJ1Oiy/NOP76wJjVmp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXZPRzJTRUEzeVlBZGpSOFRyTVdHMmYvMTQ2MlNnWFJTQU00Qk9Fa2txVFQ4?=
 =?utf-8?B?cW9udUVkNjI2eTFLTWRieXFqbFBSYTZ1dDJFa3JkQXdxcXpGaUVCbWxpeDdR?=
 =?utf-8?B?YmRRNEp2RCtVcmtlT3NhdFpBMExrOUtaanJEcUpDRWxVQStjWHVmdUJGbThN?=
 =?utf-8?B?WGpydWhUWjhOQjJuVnJJRjVYNFdXTzN6RnplQXNyWEpBN3JnWDZGWEs3eE9Z?=
 =?utf-8?B?OWtFUjU4bmhJdyt4amJtajdXOHVPMUY4akpQcjRWblh5dXREdzNEQ2Q2c3lH?=
 =?utf-8?B?TFJNdUFsdHg2M0NwdEhvOEJDZEE5T1Bsck1Db3Z2S29pdml4NEtxOXQvUHA5?=
 =?utf-8?B?MVI1c1VLaWtJeUZNb1pia1pHOW9mcWtIMlc3MkxYSmVKSTFJRnE1elFZMFpM?=
 =?utf-8?B?SmQ0Z1lnM2NWVnJkazg4ZjNza0dKRHc3eTRSMkVaL2JmWmJ0T2VZcGlpZURy?=
 =?utf-8?B?OFI4SU5MQk9WSzVzOHF3VDhzdFFTZGtTU2Q5cXlOSFdob2RDK0oyYUJYbXk1?=
 =?utf-8?B?anFIVVMzMkRlRzM3VjhkZXhsOTl2Qm1CZnQwZHpqUkFEVVYrY0VxRDZrb1FN?=
 =?utf-8?B?Wm5ZL0JyNld2VUVoVzZqbElVczR3c3VNaytPYWI4QVJDTlU5TCtta3Btc1Vs?=
 =?utf-8?B?WkJzTGFaSVZKcTZjandyZVkxOGt2bFJkazgranRPMThQRmcrYU5JbU9seEEw?=
 =?utf-8?B?aWEzd2w0Tmxrc3hUWWo1VEJUOXQ3MkZ2VVVyV293MTYrNjVkSHlTZldPWU1T?=
 =?utf-8?B?UjBybHJvak9BNXo3R2RLblVmUFhJdWViNlh0UWFLSzRrYlMrNERDY3VEQkcy?=
 =?utf-8?B?bWRyM0pMdjNuZjNoNVhrT0MzTHI0Z2tJbk91SWlXMVJJei9wWnBPS3R3MG5u?=
 =?utf-8?B?MklONFlzc2gyTWxoaVpsRjdheWJSM2gwNElsdDVCdTJ0cU9wQVY4cjdYc1hC?=
 =?utf-8?B?cm1VWkFGNUVLMCtORTNOUDNTYzFGdHd5VElHbTBhRmMxWThQdXB4WHFnNmJH?=
 =?utf-8?B?b1VIZHYwVTVBWmMwcElaZkdFZXVNVjJsUWNWU2pMcTE3aWFua0N5RUhWTlRy?=
 =?utf-8?B?dWNwTUo2VmNNOFdCbHNFNXNtb1doUmVTWFVRV2lnUXNhQXd3d3FreEYvbkJR?=
 =?utf-8?B?UTVVbmRpUk83MEtZTENSSmFIaHBvVEV5VnZ0M1dFZXdsY2orbldxMDlJTmdh?=
 =?utf-8?B?dE9vUWtBWVFDZzBOMzR5bnR2YWQzRlZSSE5QMGJGZFdQZDQzSHB1NjhnRjl5?=
 =?utf-8?B?WnNCM09UQWs4M3d3RkRkMFpiS3FXM3hzNC9lSzRka1RvRDE4eVczSm1ib3pQ?=
 =?utf-8?B?dDkvdWZBWHNIR0dya25ic0xtb2hYRTdwOWhUSjlGSGorT2xCR0hwZEVtZC9o?=
 =?utf-8?B?bXJCZS8xeFRBc0FyekNpN2pobk5PNDNOR1lYdjA4VmpuNlpXcDdVVUgvSGpL?=
 =?utf-8?B?cVVVVGZHd0NQYXgxZlZrSlB0TlRvZHdsbmgvcEtsbnF1bWwxMjhPLzVGcWlM?=
 =?utf-8?B?UVhjd3hWdWZLMXZlVjgya1lxOGl3Vkc1clhKamR5TkJNUkVkTFJreWN5N3VN?=
 =?utf-8?B?SFdCS0RqWjZib3hzNWNEc09xa2pVbEdmNjVNbDRKbWN0S01yYmFhWit5V25l?=
 =?utf-8?B?bXMzZlJqZlZSd3FYZ0JPdFI4UlNCb05oYzZQbWxzd3BFbkhiN0RUYTVaRGEz?=
 =?utf-8?B?eHZ1OEdKWWliSS9jQXVxeDdSN3ZISDllT3hneDRlTDZWUUtOVzZ1QWxNZnhV?=
 =?utf-8?B?Nlp0akpvL1RlMWhqLzZwTzhGbEQ2TnBDYjR4bWxNazZzSE1UVk1CQm5majZY?=
 =?utf-8?B?c1dWM1MySXBFSG1qYTdrMytOV1ZNZTl6bDRDb1RnREFobktjLy9GTnpXSndj?=
 =?utf-8?B?MjVWTUIwQTFtR0lwV1lzQ3VxTk4rcGtNODk4N1VPZEVPR2JzZzl6RFByMmtt?=
 =?utf-8?B?b0l6OGx5M0ZBeFdiM2dIc1FLOVNjRndudUdhc0pmUHpMdjVuaG10SkFPSVFh?=
 =?utf-8?B?OUN2VTJ4c05sRkR2Q0pwSUd5UytnbTdEUkNDOWdiV29Yenc1MXN1azNwQnB6?=
 =?utf-8?B?a3U0eUxzcTlNVkFIay9KR3QzUTR6Szg3S2FhNzNhazlCQTdvaXQrTno3U1NQ?=
 =?utf-8?B?Y0hVdGdxZHZBb25sOHJGSlA5OVNlNlQxbWpHMGZQVlFpd3dwcy8zb1BNaWtr?=
 =?utf-8?B?NkxUZzJGMnJabHAzcEFWZ2VDSFoxamNsWjNsbXNSVGk4aWQ4OFhBcFlJMUgr?=
 =?utf-8?B?anVrcGsxVE44WUJnc3Zrc2VHUU1qbCszYVJtMS91OE9ReURnaXpuTXFpa0M4?=
 =?utf-8?B?STNXZGVJNmh1VEdsR0ExUkRkZ0tyUXJyUkJQeDFBek1wdElvT0ZSUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: H2nzcrtIq+l7Saod2gbYbGG22jKMJrzoL109sU8/JC6RaFlmhgyarjzZ0hGtUU5tcDOkab7qTyeCoMG0+2RENbLZ30qluqA5WnQhjGNhcSfJE366+fkpHJwEPEjQY4hiYX8HwJGnEk4Z8ag1qMpValRX7q9Wvr4e7Whl5GpTPMebo1uJwycd04/Q88xEd8cMotV9eFSImYMGPG2jrGbUFyfi3LJs2UT9jHGQskisoETKx3onKLxmiOZCcmY2h9UM9U71wZ4Jw3IdH+EnfFxyPDrNQmAcGaNRtcDzUg0sB6ZzyTnUk58Ea+wzxl3pizzqKrRrKTwY1TtkPtIJOF2XFw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 841e94df-6960-4520-facb-08dec60e5ee6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 10:03:35.6720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kF+jDCL+jH+zWiYSCKpTW4uR95gseaI6ZCps+eUEoW44tCJRw2mNEdsPWpd5QtHvIEXduurgbHGfPc0hwMa8hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4555
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1837965EAF3

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2Fob2xhLCBNaWthIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgOSwgMjAyNiAyOjQw
IFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogU2tpcCBnZW5l
cmljIHBpcGUgZHBsbF9od19zdGF0ZQ0KPiBjb21wYXJlIG9uIExUIFBIWQ0KPiANCj4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEthbmRwYWwsIFN1cmFqIDxzdXJhai5r
YW5kcGFsQGludGVsLmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCA5IEp1bmUgMjAyNiAxMS4zMw0K
PiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47DQo+ID4gaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogU2tpcCBnZW5lcmlj
IHBpcGUgZHBsbF9od19zdGF0ZQ0KPiA+IGNvbXBhcmUgb24gTFQgUEhZDQo+ID4NCj4gPg0KPiA+
DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogS2Fob2xhLCBN
aWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiBTZW50OiBUdWVzZGF5LCBKdW5lIDks
IDIwMjYgMTozOCBQTQ0KPiA+ID4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGlu
dGVsLmNvbT47IGludGVsLQ0KPiA+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBTdWJqZWN0OiBSRTogW1BBVENIXSBkcm0v
aTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+ID4gZHBsbF9od19zdGF0ZSBjb21w
YXJlIG9uIExUIFBIWQ0KPiA+ID4NCj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiA+ID4gRnJvbTogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0K
PiA+ID4gPiBTZW50OiBUdWVzZGF5LCA5IEp1bmUgMjAyNiAxMC41MQ0KPiA+ID4gPiBUbzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+ID4gPiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+
ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiBTdWJq
ZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+
ID4gPiBkcGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+DQo+ID4gPiA+DQo+
ID4gPiA+DQo+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBG
cm9tOiBLYW5kcGFsLCBTdXJhag0KPiA+ID4gPiA+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgOSwgMjAy
NiAxOjEzIFBNDQo+ID4gPiA+ID4gVG86ICdNaWthIEthaG9sYScgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT47DQo+ID4gPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9p
OTE1L2Rpc3BsYXk6IFNraXAgZ2VuZXJpYyBwaXBlDQo+ID4gPiA+ID4gZHBsbF9od19zdGF0ZSBj
b21wYXJlIG9uIExUIFBIWQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBTdWJqZWN0OiBbUEFUQ0hd
IGRybS9pOTE1L2Rpc3BsYXk6IFNraXAgZ2VuZXJpYyBwaXBlDQo+ID4gPiA+ID4gPiBkcGxsX2h3
X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gTFQgUEhZ
IFBMTCByZWFkb3V0IGlzIG9ubHkgcGFydGlhbGx5IHJlbGlhYmxlLCBhbmQgdGhlIExUIFBIWQ0K
PiA+ID4gPiA+ID4gY29kZSBhbHJlYWR5IGRvY3VtZW50cyB0aGF0IG9ubHkgYSBzdWJzZXQgb2Yg
dGhlIHN0YXRlIGNhbiBiZQ0KPiA+ID4gPiA+ID4gcmVhZCBiYWNrIHJlbGlhYmx5IGFmdGVyIHBv
d2VyIGdhdGluZy4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBUaGUgZ2VuZXJpYyBwaXBlLXN0
YXRlIHZlcmlmaWNhdGlvbiBjb21wYXJlcyBkcGxsX2h3X3N0YXRlIGFzDQo+ID4gPiA+ID4gPiBw
YXJ0IG9mIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoKSwgd2hpY2ggY2FuIHRyaWdnZXINCj4g
PiA+ID4gPiA+IGZhbHNlLXBvc2l0aXZlICJwaXBlIHN0YXRlIGRvZXNuJ3QgbWF0Y2ghIiB3YXJu
aW5ncyBvbiBMVCBQSFkNCj4gcGxhdGZvcm1zLg0KPiA+ID4gPiA+ID4gRFBMTC1zcGVjaWZpYyB2
ZXJpZmljYXRpb24gYWxyZWFkeSBleGlzdHMgdmlhIGludGVsX2RwbGxfc3RhdGVfdmVyaWZ5KCku
DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gU2tpcCB0aGUgZ2VuZXJpYyBkcGxsX2h3X3N0YXRl
IHBpcGUtc3RhdGUgY29tcGFyZSBvbiBMVCBQSFkNCj4gPiA+ID4gPiA+IHBsYXRmb3JtcyBhbmQg
cmVseSBvbiB0aGUgZGVkaWNhdGVkIERQTEwgdmVyaWZpY2F0aW9uIHBhdGggaW5zdGVhZC4NCj4g
PiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4ICsrKysrKy0tDQo+ID4gPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
PiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiA+IGluZGV4IDJmYTEwZjg1ODI3
OS4uODVhZDJiYzQ5NjNkIDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gPiBAQCAtNTM3
NCw4ICs1Mzc0LDEyIEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0DQo+
ID4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4gPiA+ID4gPiA+
ICAJaWYgKGRpc3BsYXktPmRwbGwubWdyKQ0KPiA+ID4gPiA+ID4gIAkJUElQRV9DT05GX0NIRUNL
X1AoaW50ZWxfZHBsbCk7DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gLQkvKiBGSVhNRSBjb252
ZXJ0IGV2ZXJ5dGhpbmcgb3ZlciB0aGUgZHBsbF9tZ3IgKi8NCj4gPiA+ID4gPiA+IC0JaWYgKGRp
c3BsYXktPmRwbGwubWdyIHx8IEhBU19HTUNIKGRpc3BsYXkpKQ0KPiA+ID4gPiA+ID4gKwkvKg0K
PiA+ID4gPiA+ID4gKwkgKiBMVCBQSFkgUExMIHJlYWRvdXQgaXMgb25seSBwYXJ0aWFsbHkgcmVs
aWFibGUgYW5kIHRoZSBQTEwgc3RhdGUNCj4gPiA+ID4gPiA+ICsJICogaXMgYWxyZWFkeSB2ZXJp
ZmllZCB2aWEgaW50ZWxfZHBsbF9zdGF0ZV92ZXJpZnkoKS4gQXZvaWQgZmFsc2UNCj4gPiA+ID4g
PiA+ICsJICogcG9zaXRpdmVzIGZyb20gdGhlIGdlbmVyaWMgcGlwZSBzdGF0ZSBjb21wYXJpc29u
Lg0KPiA+ID4gPiA+ID4gKwkgKi8NCj4gPiA+ID4gPiA+ICsJaWYgKChkaXNwbGF5LT5kcGxsLm1n
ciB8fCBIQVNfR01DSChkaXNwbGF5KSkgJiYuDQo+ID4gPiA+ID4gPiAhSEFTX0xUX1BIWShkaXNw
bGF5KSkNCj4gPiA+ID4gPiA+ICAJCVBJUEVfQ09ORl9DSEVDS19QTEwoZHBsbF9od19zdGF0ZSk7
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBpbnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3RhdGUg
b25seSBjaGVja3MgdGhlIHJlbGlhYmxlIHN0YXRlDQo+ID4gPiA+ID4gaGVuY2Ugd2UgZG9u4oCZ
dCB3YW50IHRvIGFkZCB0aGlzIGhlcmUgY29uZmlnIDAgYW5kIGNvbmZpZyAyIGFyZQ0KPiA+ID4g
PiA+IGV4cGVjdGVkIHRvIGJlIHJlbGlhYmxlDQo+ID4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4g
SWYgeW91IGFyZSBzZWVpbmcgcGlwZSBzdGF0ZSBtaXNtYXRjaCBvbiBlaXRoZXIgb2YgdGhlc2Ug
VkRSDQo+ID4gPiA+IHJlZ2lzdGVycyB0aGVuIGl04oCZcyBhIGlzc3VlIHdoZXJlIFBIWSBpcyBu
b3QgZ2l2aW5nIHVzZSBjb3JyZWN0DQo+ID4gPiA+IHZhbHVlIHNpbmNlIHRoZXNlIHR3bw0KPiA+
ID4gcmVnaXN0ZXIgbXVzdCBhYnNvbHV0ZWx5IGJlIHJldGFpbmVkIGJ5IExUIFBIWS4NCj4gPiA+
DQo+ID4gPiBUaGlzIGVycm9yIHNob3dlZCB1cCB3aXRoIFRCVCBtb25pdG9yIHdoaWNoIHlpZWxk
cyBlbXB0eSBzdGF0ZXMgZm9yDQo+ID4gPiBmb3VuZCBhbmQgZXhwZWN0ZWQgc3RhdGVzLiBTaW5j
ZSB3ZSBjaGVjayBpbg0KPiA+ID4gdmVyaWZ5X3NpbmdsZV9kcGxsX3N0YXRlKCkgZnVuY3Rpb24g
UExMIHN0YXRlIHdpdGggLmNvbXBhcmVfaHdfc3RhdGUNCj4gPiA+IGhvb2sgSSB0aGluayB3ZSB3
b3VsZG4ndCBuZWVkIHRvIGNoZWNrIHRoZSBQTEwgc3RhdGUgaGVyZS4NCj4gPg0KPiA+IFNvIC5j
b21wYXJlX2h3X3N0YXRlIHdvdWxkIGNhbGwgaW50ZWxfbHRfcGh5X3BsbF9jb21wYXJlX2h3X3N0
YXRlDQo+ID4gV2hpY2ggbWVhbnMgZm9yIHRidCBtb2RlIGl0IHdvdWxkIHJldHVybiBlYXJseSBh
bnl3YXlzLiBTbyB3ZSBhZ2FpbiB3b250DQo+IHJlcXVpcmUgdGhpcyBjaGVjay4NCj4gPg0KPiA+
IFdlIGFscmVhZHkgaGF2ZSB0aGlzIGJpdCBvZiBjb2RlIGFzIEkgbWVudGlvbmVkIGFib3ZlIGlu
IHRoZSBmdW5jdGlvbg0KPiA+DQo+ID4gaWYgKGEtPnRidF9tb2RlIHx8IGItPnRidF9tb2RlKQ0K
PiA+ICAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsNCj4gPg0KPiBJdCBsb29rcyBsaWtlIHdl
IG1heSBiZSB2ZXJpZnlpbmcgUExMIHN0YXRlIHR3aWNlIGluIGludGVsX21vZGVzZXRfdmVyaWZ5
X2NydGMoKS4NCj4gDQo+IHZlcmlmeV9jcnRjX3N0YXRlKCkgLT4gaW50ZWxfcGlwZV9jb25maWdf
Y29tcGFyZSgpIGRvZXMNCj4gUElQRV9DT05GX0NIRUNLX1BMTChkcGxsX2h3X3N0YXRlKSwgd2hp
Y2ggaXMgYSBnZW5lcmljIGNvbXBhcmUgYW5kIGRvZXMNCj4gbm90IHNlZW0gdG8gYWNjb3VudCBm
b3IgdGhlIExUIFBIWS9UQlQgc3BlY2lhbCBjYXNlLg0KDQpTbyBQSVBFX0NPTkZfQ0hFQ0tfUExM
ICBoYXMgdGhlIGZvbGxvd2luZyBjb2RlDQojZGVmaW5lIFBJUEVfQ09ORl9DSEVDS19QTEwobmFt
ZSkgZG8geyBcDQogICAgaWYgKCFpbnRlbF9kcGxsX2NvbXBhcmVfaHdfc3RhdGUoZGlzcGxheSwg
JmN1cnJlbnRfY29uZmlnLT5uYW1lLCBcDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJnBpcGVfY29uZmlnLT5uYW1lKSkgeyBcDQogICAgICAgIC4uLg0KICAgIH0gXA0KfSB3
aGlsZSAoMCkNCg0KYm9vbCBpbnRlbF9kcGxsX2NvbXBhcmVfaHdfc3RhdGUoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSAqYSwNCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlICpiKQ0Kew0KICAgIGlm
IChkaXNwbGF5LT5kcGxsLm1ncikNCiAgICAgICAgcmV0dXJuIGRpc3BsYXktPmRwbGwubWdyLT5j
b21wYXJlX2h3X3N0YXRlKGEsIGIpOw0KICAgIC4uLg0KfQ0KDQpBbmQgY29tcGFyZV9od19zdGF0
ZSBjYWxscw0KDQpzdGF0aWMgYm9vbCB4ZTNwbHBkX2NvbXBhcmVfaHdfc3RhdGUoY29uc3Qgc3Ry
dWN0IGludGVsX2RwbGxfaHdfc3RhdGUgKl9hLA0KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlICpfYikNCnsNCiAgICBy
ZXR1cm4gaW50ZWxfbHRfcGh5X3BsbF9jb21wYXJlX2h3X3N0YXRlKCZfYS0+bHRwbGwsICZfYi0+
bHRwbGwpOw0KfQ0KDQpIZW5jZSBpdCBpcyBub3QgZ2VuZXJpYyBjb2RlIGl0IGdldHMgZGlyZWN0
ZWQgdG8gTFQgUEhZIHBvcnRpb24gb2YgY29kZS4NCklmIHlvdSBhcmUgc3RpbGwgc2VlaW5nIGEg
bWlzbWF0Y2ggbWVhbnMgc29tZW9uZSBpcyBub3Qgc2V0dGluZyB0aGUgdGJ0X21vZGUuIFRoYXQg
d291bGQgYmUgdGhlIHJvb3QgY2F1c2Ugb2YgYW55IG1pc21hdGNoIHdlIHNlZSB3aGljaCBpcw0K
d2h5IHJlbW92aW5nIHRoZSBDT05GX0NIRUNLX1BMTCgpIGlzbuKAmXQgdGhlIGNvcnJlY3Qgd2F5
IHRvIGdvDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gDQo+IEFmdGVyIHRoYXQsIGlu
dGVsX21vZGVzZXRfdmVyaWZ5X2NydGMoKSBhbHNvIGNhbGxzIGludGVsX2RwbGxfc3RhdGVfdmVy
aWZ5KCksIHdoaWNoDQo+IGZvciBMVCBQSFkgZ29lcyB0aHJvdWdoIHRoZSAuY29tcGFyZV9od19z
dGF0ZSBob29rIGFuZCB0aGVyZWZvcmUgYWxyZWFkeQ0KPiBhcHBsaWVzIHRoZSBwbGF0Zm9ybS1z
cGVjaWZpYyBoYW5kbGluZy4NCj4gDQo+IEJlY2F1c2Ugb2YgdGhhdCwgSSB3b25kZXIgaWYgdGhl
IGdlbmVyaWMgUExMIHN0YXRlIGNvbXBhcmUgaXMgcmVhbGx5IG5lZWRlZCBpbg0KPiB0aGlzIGNh
c2UuIEF0IHRoZSB2ZXJ5IGxlYXN0LCBpdCB3b3VsZCBzZWVtIHRoYXQgUElQRV9DT05GX0NIRUNL
X1BMTCgpIHNob3VsZA0KPiBhbHNvIGhhbmRsZSB0aGUgVEJUIGNhc2UgZXhwbGljaXRseSBhbmQg
cmV0dXJuIGVhcmx5IGluIHRoYXQgY2FzZSwgaW4gdGhlIHNhbWUNCj4gd2F5IGFzIHRoZSBMVCBQ
SFktc3BlY2lmaWMgLmNvbXBhcmVfaHdfc3RhdGUgcGF0aCBkb2VzLg0KPiANCj4gLU1pa2EtDQo+
IA0KPiA+IFJlZ2FyZHMsDQo+ID4gU3VyYWogS2FuZHBhbA0KPiA+DQo+ID4gPg0KPiA+ID4gLU1p
a2EtDQo+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBTdXJhaiBLYW5k
cGFsDQo+ID4gPiA+DQo+ID4gPiA+ID4gUmVnYXJkcywNCj4gPiA+ID4gPiBTdXJhaiBLYW5kcGFs
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiAgCVBJUEVfQ09ORl9DSEVDS19Y
KGRzaV9wbGwuY3RybCk7DQo+ID4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+ID4gMi40My4wDQoNCg==
