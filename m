Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C674C6E5AA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 13:00:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7CA10E23D;
	Wed, 19 Nov 2025 12:00:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QB6wevVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEDD10E23D;
 Wed, 19 Nov 2025 11:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763553599; x=1795089599;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Yg+1GKMwQjtSVKBzOrjdPfKcGyDE7aDqUFTkU0Qtq98=;
 b=QB6wevVdXxQ3yVIS53SDjjaIZ/CrwEL+k1Fp035O+8wq51yIp57Ur2zX
 ZBO0g3SlnpAtEiMNpQmtE6SweIYW+ZERw/oDpET+ESJYhELLDUj3qz2Ne
 NUK1vVSIVec8eHg1Ke59d+BnKp8srGxeTJUtf6XJfnQP3hxryH1FDUjME
 OIpr90stL/q7LNYLG0xIZU2V21v0LnTpHkMqUxC2t3WjqO2+YHrcadHPu
 CO4FbwSE9xWUbutKkKUkGObv9oTXzs74LcJ+Qumt+m1SLWACFcjpBDOsY
 mBLUpXC8Y78Gxt8LXQODX95HK3A0gf27+PTSsebRT671B6P+phbSP2vNi g==;
X-CSE-ConnectionGUID: v/zJ+xnzSmOsFVR2a1cbYQ==
X-CSE-MsgGUID: csZNyVXeSdiX8rc+eFIyqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65524602"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65524602"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:59:59 -0800
X-CSE-ConnectionGUID: QdnCrwD9S0WVxfl/vovO5Q==
X-CSE-MsgGUID: AncyqPvBT566VRZN+DyUvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191071293"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 03:59:59 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 03:59:58 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 03:59:58 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.32) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 03:59:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SjXiyavGDmPhsynKVCx5zgmmYNczcQcno4ElrgBufcsOUi6HoM0Bm2YGxyS+T4B2bltbmjc1cp4owtwzTPbTNx7Gc81pgXj3jgSWqu8ZMG3ezbrfwO3kAXhuTkj5OHLqYDzTuDyd4h7+8yL5ub8hUVawn1DVRGUYmNSJyjFnoiyIwnlN+1LcFOuFqWjgkzoNzlC+3le9Md5UGxeE3cDx08nzkWCloAIwlv+qysaTn1PqUaIwxCtJ5NbL9ypAGJysjnAIawyfcMYGmJ+teVWU8JVbRtfiYTfkadosBoeL4JrdhmfJi8CowyIP6SJxU7q0qe2QtFbTXBuOosboqmR2Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yg+1GKMwQjtSVKBzOrjdPfKcGyDE7aDqUFTkU0Qtq98=;
 b=aRhKa8VeqEk9AYZg3HgaJeisXIuQxJcy0ExLlClap6COPwOUPXxsUgUiX8cnWW2kgRTmsB2g7r+Hq1OzG53YQhR74Bi7aF7hOXtjDMa+HB4CEqZ2cOaGUXIfByL0Npls4aYLYYcZYnus57KwP8jghbMFpxJUYf/2p6Lbqp5l8qyPDQtCihRwFFhely1d8o+MAf+rufHCZcbIhTKVFZiki5SPCuou1kTMLEnROC7erVpxtX65Z8PxksWLV5BePkSNmLV/Y4uQPg6oGgOBT45CWkyolPmtoLNhcKXtygiv1QoI6KkPX+eNGe/Qke62RKh/un4WxOoXvaIrzMaULda0rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CH8PR11MB9460.namprd11.prod.outlook.com
 (2603:10b6:610:2be::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 11:59:49 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 11:59:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support dpll
 framework
Thread-Topic: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support
 dpll framework
Thread-Index: AQHcV7EzkMzmXPXB+k+2yMaDOJRwI7T56ERw
Date: Wed, 19 Nov 2025 11:59:49 +0000
Message-ID: <DS4PPF69154114FCB4F55C2DC43CBE3C59DEFD7A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CH8PR11MB9460:EE_
x-ms-office365-filtering-correlation-id: 399dad02-f548-4876-6f79-08de276323f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?aTNaY3U2eldNUnVyajFGbVVYVmVkSWlkM3VxOWh5dUlVQ2c4UjVJcVZQNm5Y?=
 =?utf-8?B?MDZjNjY3R2N5VzM1bXg1SlpzS0RPNWFOdnlSNGQrQkRCQWFUZGZDMjNtamt5?=
 =?utf-8?B?UDN2UUpqZGxWZUhpNUdQVEFxRHVZSHFsVmtFSWlTOVN3d2dheGNhdk1qRVpt?=
 =?utf-8?B?ZkQ2ekhuWFVHVmVVYXgvQnZ1M3dlWUt3bHRsU3BwT0tMV3JTQUZiTk5xY0Vt?=
 =?utf-8?B?V2QzT1Q4RTNiWUN2Zk14d2RuN3ZkVUx4SWFmUXdZUXBWUEZJa1U3Z1dPbHNu?=
 =?utf-8?B?bjZZL2pFTXIrTlpGdDlQZGViaEExcm52U0ttejR6dkJmRWdmOXd5UWE3L0Z4?=
 =?utf-8?B?SEo3d3hQRm03SWptM0FVdFpkQ1BnMGs0UGJrRjE4SDNJbGZVNDliV1E4cUV2?=
 =?utf-8?B?cTdOYWlMYXdkaGVldWJRWUM4OGpMZ1R4N0F6aytkL0U2clkrSTRzTUpvTWNq?=
 =?utf-8?B?MUxaOUlldXJHbEwrRzU1Kzc2Sm1IOVFxNEx4Wk1tb2FPb0ZXcm1ISUhhbFI3?=
 =?utf-8?B?MnBnVSs0Ylh3NTMxZHk2Ly9HVWtOaUQvM01QbnFnRUpjQzlqemZDdkRpL29Y?=
 =?utf-8?B?VGoreHBIMlNiWGF4NzB1bjFwdS82L1Zic3lna3R3WFNSM1E3TUM1ZDdzS1dZ?=
 =?utf-8?B?cXdEd0tEQy9yeS9RNDRBRVZldzBZYnRMVG5iemRFTERpUlowZ1ZTVlhtZUtP?=
 =?utf-8?B?UEtoamVhdlFXREpCUUEvcElxRDRrQTQ0WEdOWitoV1JvbWlDeG81Z1FTM2Nq?=
 =?utf-8?B?b0RzZ0JBNUN5aHhLcWJMeEpIM1pPZzVkZmU3cDZScnRpM29jRHR6NE5ncGU1?=
 =?utf-8?B?dE9tTFVBaFFRVkM2ZVo2MzFQenBzNHZvQVBUN2JsNDUwTm4wV2l5d1dmakFw?=
 =?utf-8?B?TzlyZFIrdTNRTnJ1VWZ1UElDMEw5dk9vRkZEaGhDNHRXYS9aWmRSczhRUkxD?=
 =?utf-8?B?VHNCcHhHM0Z0cjQ0NWd4ZHZVUUExdmRCaEZ3YnBKcEdEdkhIVEVoajh1a0lU?=
 =?utf-8?B?Nm85a1JoUmxxTWRDRmVlSlU2NTMwanp4VDM0Y0RBYVV6OXZLaG9hVk5HY0VM?=
 =?utf-8?B?U0NwNTd6VEJaZ2c4OHRtNWZWZllKbi80bmY3NHV4VTB5bWp2ZHROUjNxUWlr?=
 =?utf-8?B?cCt5aGxzeVBHcG1rZ1FtSXBXSm1wNjJubitSYk1IQWxRajc5R1VyeUpoWC9L?=
 =?utf-8?B?NnF5ejF6a3ZZRjJNb0JTb3FZTUNndUJWQjh4OHBYeE9zb3RyUUkxQUhSWE1Z?=
 =?utf-8?B?WXdGeXI1b3lQQVZNUXN4THVpcHhoS3ppYlVrR0hQVU0yMlpKRUNDUkdhQmJC?=
 =?utf-8?B?Q1RkZmpOdmViYkVNWUtXRDd2TENMT1h3OUdVa0Z6VTJlZ0lFbW14WHNjWDJK?=
 =?utf-8?B?bTE1OWN2OVI1UjRsRlZHU3BvV3JETUpTWWFqYnJmUW84YU5WRTNzUE4wTEtH?=
 =?utf-8?B?elhJVUZUak1SRkkwWForVVdxblRHUyttSmhwRzVORkxtYmt3c0xGNmhrQ0o5?=
 =?utf-8?B?YkdIc1JpTjViMCtPWFlwYlBvdmpTcnNwTTUwckNrMlQ4Umozajh2b2Uvam1a?=
 =?utf-8?B?M3pMMzZMS2pSbEZQUVRwaTNPMmgvL0luNmN0V0N4NlRPRS9WTlQ4ZFRaVm5s?=
 =?utf-8?B?RElEekpBaUlBeDRyUXdrS29meTl6MFNzR3VtS0pDa3I2cmRlajZORVZZbzZP?=
 =?utf-8?B?WmVxcFp4QWRWbzlDUS9VTlczaDI3RUJlY3ZZOXByRld6a2NkZTVTQ2VjcUJU?=
 =?utf-8?B?bHpQVUFBZ3pqdG41UW93d1NxVWtURWRheUxKOW5wc3ZKKzhHRVM3bDNEY3lj?=
 =?utf-8?B?bTR3TXJhR2kvVDJ5R2V2QTNCNlZscWxiem1yaU9qZFk0dDhwMGU1RU1VRG84?=
 =?utf-8?B?TTJKOWhlYkRDamZ3bGlnSTdic2xITTh6cFd0RkFLTDNJUXk5UlpUOHZmMm1F?=
 =?utf-8?B?bWx3L1k0UVAzc3pwMUZhYk1tMTYxU0diRWt0dkZIZGQ5dDVscFNJWmVNdmF2?=
 =?utf-8?B?bnJqZjIyemhaM0tkempmRW45a2ZHMUdGWTdmS0JSYUVxQmV5U2svc1paVGJP?=
 =?utf-8?Q?jOB4r4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NTJLU0dhaksxVjdnaWo0UWw3QlFZNXNoc2dkYjZZc2FHWCsyZUQrSURlejg4?=
 =?utf-8?B?UXF1Znk2dXhOQ1MxeFZ6VW9XY1BlSWRXWC9TRCsyM0JYTXo1UjhxN0JEQ1V3?=
 =?utf-8?B?TXAwekNaZkRhZytuVC9LZnYvUjFrRHFySmw4RndSclVJVmVtNFVIUjlJa0Yx?=
 =?utf-8?B?NHBPbVdjMkRkWWhVZTJQRGZFZnFSUmVYUitYK3NoeFFpbXFSaTMvT3VyUHQz?=
 =?utf-8?B?VlZIUVZ5cFF4N0ZHVWEyYkVRV1dobFBUWWoxSVp2TTIzSXBzTTJtRXJzb3hY?=
 =?utf-8?B?ZkI2T1BIWEhwUzN4SG9HQzRZVlZKMkY4QktHaWYrOFBZYnBWTDd3cmRCVHd3?=
 =?utf-8?B?U2EyWGQzRjY0MGorRE9VaFQ1OWhRcVpST3V5a3NodUtVeE55c2tQZkVRdkZ5?=
 =?utf-8?B?WVRSeE9UNEtJUnU0YzlqMnZBcVdrRkNETmFXb2NFK1BoMUMvMkJ2YkZhN3dM?=
 =?utf-8?B?YUdmc2syRkJISDJCWk1LRVc1NVFkMmlaVm14MzZvUGJnRnJHUG1JaUE2MTVM?=
 =?utf-8?B?NWh2S21ySmRMdTRLNXppVHFhS2lpVUc1SlBXWWJJaGtFZXpaMU84U2JMUHBj?=
 =?utf-8?B?OG0vSTFOWEVGNXlFbTJKcVpsaTF3VzhVUENYL01TVktzaTRkR0ZUbURGQzRP?=
 =?utf-8?B?dXhtTGtKSHFkak5HWndhaEZrQ2lBRUxrYUxkcnBRZFN5SjhDMnlqa0RSbHdR?=
 =?utf-8?B?V1RyVzh1MWVtTGdNZVMzdGl6NnBsUURaZm1kajI3ZTRrWGpENmJhbXRodzRJ?=
 =?utf-8?B?RnBUUVZiY2VvWm5jL3BmQWF1VTN5R1pPRU9mcCtQNngwN2t5REl2RWw0MGVq?=
 =?utf-8?B?NGJjVUp5U013cGRGZ1ZWM3d6b2c1U25iRTNTbGF0UlpzU1VQdWkzdXE2NWdL?=
 =?utf-8?B?c3lnOXI1T20zZFlxQ05qUWJRamk4d1FDbUhySXZaYk9IbFZ2a3B2TVA1eWt3?=
 =?utf-8?B?QlRzUCtaRXBQMFYwcXRhclcvdFgvbmlxYWZ2bWszUWRMc011RkUrYVVmUU9s?=
 =?utf-8?B?Z0RYckUwTTdySWUyaUhlcGcwN3dIQktzNFdpUm0vbVRKaFQyMGYvOVRJVyt3?=
 =?utf-8?B?OVYzT21weHZBWnVyLzdKTE9EZEcyOFg2cnJIZHlrUFF2Wmo4SlVVUXZFMGlO?=
 =?utf-8?B?K3ZFbDl0aW9Dc1g5aVFSOGpiSk0xU1podk0yQmhldUNZSHgrVFdJUHdSeGl6?=
 =?utf-8?B?aUFETzlGT05XQktHVkFHd0p0bjNLYS8xRnJNVkhUNUJVbm45WHJDNFBJcUVQ?=
 =?utf-8?B?OHR4UGVYc0JVTzc3Y2lEV2FTdWJaRGZBR0o4cVduZVhLemNpWmZWRVNuYkJI?=
 =?utf-8?B?N2hhV0NUNjMwaldZZDB3RUpYYkpwRUFXVUgrSGxnVUFKZDZWZnQvdkFBd2lC?=
 =?utf-8?B?OHRYTk1Xc1BjRG5QeTgycHhzL2p1T1c3Q2ZRMmpzSXJSNzJyajNPZFNmZnRU?=
 =?utf-8?B?bHFLOUFzZVNYZVZSeUhaNERkNTFLV3NBNnd1SnBaYVU4cmVzZ0xRcnlnM0w4?=
 =?utf-8?B?QUxkL3JwT0VnUG41Mnk3SkpzZndlZHJUZkNaV3p2ZWhMN3lSU0pOWmV6QUdU?=
 =?utf-8?B?RXVMc01KRHBnOHlpakdXZDYveG9jQ3puYlA4V2p6N3hzNEx2TjI2cVhUdWFJ?=
 =?utf-8?B?NGlsQnpXdW83ck1Fell5KzQ4ZERGWFN4K21TakcvOUpON2xGMWIxYXV0M1pl?=
 =?utf-8?B?M2c1UGxPd2pwVXRaQnM2bU5DdEpZRWpOY2hVcTd1Y243cm5NU2NmdVQ1a25X?=
 =?utf-8?B?QUh3bDF1dkM4Z3loSTJnWmRPZ1ZBeTIrY0ZWbVdFZTcyQ2pNNHdwb0RUOGs4?=
 =?utf-8?B?ZWtaSTd1TWNBUk4vRG84ZlJSQUhTNUY2TUkwdXU5WDlXblROWkhQVjdaM3d2?=
 =?utf-8?B?SmFkQjNPYmJFa2Fibnp5Qml1Sm53YjBaM2w0SWpqeGFlcjUxQkZTSEVhMGhJ?=
 =?utf-8?B?SGhYRHE3TEFsV01hRTR4dkVRckxTZWtYT0RpODV1eUh0TkpvS0pQaVBpRThZ?=
 =?utf-8?B?eEFWYjZsRm9nbmlEeEt1NkxUWkppQytwcVlwcWp2NXRCQlk3QjJESkgvUGlR?=
 =?utf-8?B?cUZxQVBrbGZBclFPUks4TGRWU0JmeDBaSW9lSVRSRTBZaG1la09qNDN1TVFo?=
 =?utf-8?Q?gWbwrMH6lAunxfDKjFk70jdGG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 399dad02-f548-4876-6f79-08de276323f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 11:59:49.1499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W5l1+u4p4betvBESpNXcnMSQG6YDdkoZE/rUUD6bXfrnlrFiouSBBuzgB4NSGEGgj1FiwpjOngFc8s2UwiHWhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9460
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYWhvbGEsIE1pa2EgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCAxNyBOb3ZlbWJlciAyMDI1IDEyLjQ2
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDAvMzJdIGRybS9pOTE1L2N4MDogQWRkIE1UTCsgcGxh
dGZvcm1zIHRvIHN1cHBvcnQgZHBsbCBmcmFtZXdvcmsNCj4gDQo+IFRoaXMgaXMgdjIgb2YgWzFd
LCB3aXRoIHRoZSBmb2xsb3dpbmcgY2hhbmdlcw0KPiANCj4gLSBjb21taXQgbWVzc2FnZSB1cGRh
dGVzDQo+IC0gVXNlIG9mIEJVSUxEX0JVR09OKCkgd2hlcmV2ZXIgcG9zc2libGUgaW5zdGVhZCBv
ZiBXQVJOX09OKCkNCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC1nZngv
MjAyNTEwMzExMDM1NDkuMTczMjA4LTEtbWlrYS5rYWhvbGFAaW50ZWwuY29tLw0KDQpUaGlzIHBs
bCByZWZhY3RvcmluZyBzZXJpZXMgaXMgbm93IG1lcmdlZC4gVGhhbmsgeW91LCBTdXJhaiwgZm9y
IHRha2luZyB0aW1lIGFuZCBlZmZvcnQgdG8gcmV2aWV3IHRoaXMgYmlnIHNlcmllcy4NCg0KLU1p
a2EtDQoNCj4gDQo+IEltcmUgRGVhayAoMTUpOg0KPiAgIGRybS9pOTE1L2N4MDogRmFjdG9yIG91
dCBDMTAgbXNnYnVzIGFjY2VzcyBzdGFydC9lbmQgaGVscGVycw0KPiAgIGRybS9pOTE1L2N4MDog
U2FuaXRpemUgc2V0dGluZyB0aGUgQ3gwIFBMTCB1c2VfYzEwIGZsYWcNCj4gICBkcm0vaTkxNS9j
eDA6IFNhbml0aXplIGNhbGN1bGF0aW5nIEMyMCBQTEwgc3RhdGUgZnJvbSB0YWJsZXMNCj4gICBk
cm0vaTkxNS9jeDA6IFRyYWNrIHRoZSBDMjAgUEhZIFZEUiBzdGF0ZSBpbiB0aGUgUExMIHN0YXRl
DQo+ICAgZHJtL2k5MTUvY3gwOiBNb3ZlIGRlZmluaXRpb24gb2YgQ3gwIFBIWSBmdW5jdGlvbnMg
ZWFybGllcg0KPiAgIGRybS9pOTE1L2N4MDogQWRkIG1hY3JvIHRvIGdldCBEREkgcG9ydCB3aWR0
aCBmcm9tIGEgcmVnaXN0ZXIgdmFsdWUNCj4gICBkcm0vaTkxNS9jeDA6IFRyYWNrIHRoZSBDeDAg
UEhZIGVuYWJsZWQgbGFuZSBjb3VudCBpbiB0aGUgUExMIHN0YXRlDQo+ICAgZHJtL2k5MTUvY3gw
OiBTYW5pdGl6ZSBDMTAgUEhZIFBMTCBTU0MgcmVnaXN0ZXIgc2V0dXANCj4gICBkcm0vaTkxNS9j
eDA6IFJlYWQgb3V0IHRoZSBDeDAgUEhZIFNTQyBlbmFibGVkIHN0YXRlDQo+ICAgZHJtL2k5MTUv
Y3gwOiBEZXRlcm1pbmUgQ3gwIFBMTCBEUCBtb2RlIGZyb20gUExMIHN0YXRlDQo+ICAgZHJtL2k5
MTUvY3gwOiBEZXRlcm1pbmUgQ3gwIFBMTCBwb3J0IGNsb2NrIGZyb20gUExMIHN0YXRlDQo+ICAg
ZHJtL2k5MTUvY3gwOiBaZXJvIEN4MCBQTEwgc3RhdGUgYmVmb3JlIGNvbXB1dGUgYW5kIEhXIHJl
YWRvdXQNCj4gICBkcm0vaTkxNS9jeDA6IFByaW50IGFkZGl0aW9uYWwgQ3gwIFBMTCBIVyBzdGF0
ZQ0KPiAgIGRybS9pOTE1L2N4MDogUExMIHZlcmlmeSBkZWJ1ZyBzdGF0ZSBwcmludA0KPiAgIGRy
bS9pOTE1L2N4MDogQWRkIE1UTCsgVGh1bmRlcmJvbHQgUExMIGhvb2tzDQo+IA0KPiBNaWthIEth
aG9sYSAoMTcpOg0KPiAgIGRybS9pOTE1L2N4MDogUmVuYW1lIFRCVCBmdW5jdGlvbnMgdG8gYmUg
SUNMIHNwZWNpZmljDQo+ICAgZHJtL2k5MTUvY3gwOiBSZW1vdmUgc3RhdGUgdmVyaWZpY2F0aW9u
DQo+ICAgZHJtL2k5MTUvY3gwOiBBZGQgUExMIGluZm9ybWF0aW9uIGZvciBNVEwrDQo+ICAgZHJt
L2k5MTUvY3gwOiBVcGRhdGUgQzEwL0MyMCBzdGF0ZSBjYWxjdWxhdGlvbg0KPiAgIGRybS9pOTE1
L2N4MDogQ29tcHV0ZSBwbGxzIGZvciBNVEwrIHBsYXRmb3JtDQo+ICAgZHJtL2k5MTUvY3gwOiBB
ZGQgTVRMKyAuZ2V0X2RwbGxzIGhvb2sNCj4gICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC5wdXRf
ZHBsbHMgaG9vaw0KPiAgIGRybS9pOTE1L2N4MDogQWRkIE1UTCsgLnVwZGF0ZV9hY3RpdmVfZHBs
bCBob29rDQo+ICAgZHJtL2k5MTUvY3gwOiBBZGQgTVRMKyAudXBkYXRlX2RwbGxfcmVmX2Nsa3Mg
aG9vaw0KPiAgIGRybS9pOTE1L2N4MDogQWRkIE1UTCsgLmR1bXBfaHdfc3RhdGUgaG9vaw0KPiAg
IGRybS9pOTE1L2N4MDogQWRkIC5jb21wYXJlX2h3X3N0YXRlIGhvb2sNCj4gICBkcm0vaTkxNS9j
eDA6IEFkZCBNVEwrIC5nZXRfaHdfc3RhdGUgaG9vaw0KPiAgIGRybS9pOTE1L2N4MDogQWRkIE1U
TCsgLmdldF9mcmVxIGhvb2sNCj4gICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC5jcnRjX2dldF9k
cGxsIGhvb2sNCj4gICBkcm0vaTkxNS9jeDA6IEFkZCBNVEwrIC5lbmFibGVfY2xvY2svLmRpc2Fi
bGUgY2xvY2sgaG9va3Mgb24gRERJDQo+ICAgZHJtL2k5MTUvY3gwOiBHZXQgZW5jb2RlciBjb25m
aWd1cmF0aW9uIGZvciBDMTAgYW5kIEMyMCBQSFkgUExMcw0KPiAgIGRybS9pOTE1L2N4MDogRW5h
YmxlIGRwbGwgZnJhbWV3b3JrIGZvciBNVEwrDQo+IA0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgODcwICsrKysrKysrKystLS0tLS0tLSAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmggIHwNCj4gMjkgKy0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA4NyArLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDMwIC0NCj4g
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaCB8ICAgNyArLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMgICAgIHwgIDI0ICst
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAzMTUg
KysrKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
IHwgICA3ICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMg
ICB8ICAgNCArLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF92ZXJpZnku
YyAgIHwgICAxIC0NCj4gIDEwIGZpbGVzIGNoYW5nZWQsIDg5MyBpbnNlcnRpb25zKCspLCA0ODEg
ZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
