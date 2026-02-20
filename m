Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OSoIv0wmGkzCQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 11:01:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCD516694E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 11:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20FA710E7AC;
	Fri, 20 Feb 2026 10:01:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i5eAijgr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36C610E7AC;
 Fri, 20 Feb 2026 10:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771581691; x=1803117691;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FEFJWRFBvMLv8oqinc9klAty0smbtteH1nJFtX8PLjM=;
 b=i5eAijgrdHOK2681zKUaZirWI2WZBjRyUr7q0zHX7Zy99lsq1Xr03pig
 OxKCzskEIqjzjybRNikMZnS0lJhlG5ZyI+7br8ni6hWy43f1P3O6Jrcdq
 yrPfM+EctlQyNTt2N/Cjo8wAcU4ZIg2rogtybQ9IFhl9jePWXWhIw/4yI
 yUFNRD0IXvg1bTLbZQgL1uANxu0QHPEe0U5JIGKU8kCjDSoFLlnDv/LO9
 q5iYdedoh2aMZxEpzq13FvP+0dlTE8xZRp4vnBuG2bDI5E2LNFfWtjZnl
 f7yd/xnoZNpLYapCLbAzAPvuqiocgd3SAMRe/cBnZqZPjigmA7c3PnlTC g==;
X-CSE-ConnectionGUID: bCBYkD3UQJS6/PJlTtHlYg==
X-CSE-MsgGUID: Tr9mkHfiSI2meVwR7X/XiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="60247761"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="60247761"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 02:01:30 -0800
X-CSE-ConnectionGUID: vGgJEmDMQUyO96E4IJzpeA==
X-CSE-MsgGUID: swOTAJ0fTuetVeH46loLCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="218531448"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 02:01:30 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 02:01:29 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 02:01:29 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 02:01:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MeJYq30E5px9kH4SjiW4g3tm3hj3MPGDMpOJF/9RgNof/80hHTfIZ8PpipaVX0VJOhRKvj5wuPUV466ErUgcpOT6zXM20/bJmtaih8z2AQMVLnGzEffgdPtX+oD98+RrE1Ft4fL1kpFX3qgnyDMYPM2BXDMb73/rIitliX9qsZyogVBvX0GhST4pwpfy7M82QB10RfmpO+pi1c4kkp9upkdGxSgGugRZfIVbCQauqJw3XqpFgzzTrYdJP8yc0LJqNzXmKhYVlcmGrhNsrZJzOs6RTVmuCH4vGmyJ1+HpS3SomW7xOJePTsVWQQyv2+2KgATFHHs9WeF+3zyL3zFISw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FEFJWRFBvMLv8oqinc9klAty0smbtteH1nJFtX8PLjM=;
 b=AwC69oVX0PcH0t+KCAY7dv0kh8OM4GIEVe2hvLs/yHVGvy98fCmg3jSK81mmF6isjcCT1xqCvjn98UNKjvk9B4iGbVywmR4TnvYYquERbE/AY5gWCVgUgW2ydOvNqSxVd15jpq/bZHHgEl764FS6+HQWJQFT3Zu4BWSl+PJjerCk+edl9ivUjNTwxTOVZjWpZAU0G4ekKxpI4uq0gToxmbggjjYsU+eJxvOANYHAoOJO7W4pnQR3GDO/Gj2L07JyJ/djCMdV8PJJdEfJUO6C+B0pV48+nglINUWtFgsG4Qftq/QTePGoHaGSCRQgYImXMu3+u9IGAt/jqxK65CLA2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS4PPFA58A7783B.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Fri, 20 Feb
 2026 10:01:26 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Fri, 20 Feb 2026
 10:01:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 03/19] drm/i915/lt_phy: Add PLL information for xe3lpdp
Thread-Topic: [PATCH 03/19] drm/i915/lt_phy: Add PLL information for xe3lpdp
Thread-Index: AQHcnOP7QSS2N2uCIkiL7AExj2+Pm7WJXtGAgAIHACA=
Date: Fri, 20 Feb 2026 10:01:25 +0000
Message-ID: <DS4PPF69154114FC155CE610543CCBC602EEF68A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-4-mika.kahola@intel.com>
 <DM3PPF208195D8D2CEE35CAA3F55B40069DE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D2CEE35CAA3F55B40069DE36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS4PPFA58A7783B:EE_
x-ms-office365-filtering-correlation-id: aeec9a2b-3dfa-4d4b-37ad-08de70670281
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SXNRcjB1OWFsNVhtRnZXb2k2bmgzclFnUEZOME5ReUJGZE16WElYdEdaTjB4?=
 =?utf-8?B?akFlUjdleUZaTWhsMk9JV24xUXllWEtQOGN0WGZSQllCTEl6SzRNRmQySU5j?=
 =?utf-8?B?NEE2eEd2ZXc5MTdaQzlIbHl3WW1FR1pVZ0hPeTlNRFAyUC9USk9IcTZlYjRl?=
 =?utf-8?B?R3d6T3ErN1BKODljWVNBYlM2OUJudThMeTRKQ1dQRjJIS0xMSnEyak4zekNQ?=
 =?utf-8?B?ckJqSTNiWmlNYVZ1V043dVlWL2crMWZiQ2RDZ1UrSXEvVmgxRUZ0ZWhNc25E?=
 =?utf-8?B?T3NGRVgzV0N1UEp1aldLYWEzSjJ4MnVmVDA5aVRmcVh5SHZmeWczTWttdkha?=
 =?utf-8?B?N21Xb3Q1aitZMWxORVc5cUtCVU4yRGhMd0krTG5CL0tQRytGazF0bnJickdZ?=
 =?utf-8?B?TW1FbVViUzVjTEVoTjAxTlB6dmhBdC93QndDaDk1NEo1NFQwTlNLWXNKQW43?=
 =?utf-8?B?OU56S3lITGxWNTFyU0FoQk1sL0dmT3ord0FjMzNiYkp6RjFaSU5HSmZxNkhQ?=
 =?utf-8?B?Z3ZnUzZDVFNZZ3ROcmZjUlBwMVVnZVFHMmdYYzBKSzByUzV1TURNVVV1UUk5?=
 =?utf-8?B?MzRTQUV2V2NGei9kaEp2ZW9pMjFGM3FtRVU3RVNFR3N1NXRtOERwcnZvMnFD?=
 =?utf-8?B?bStVMXZ4ZGI0K3ZndnZ2MlJwUzJwZ3N3YktkVjRvMmhTWVc2Zk1vMktIL2tZ?=
 =?utf-8?B?TTd4MHhwZ2ZvQTFweTZ3TVdyamdQOU9WWXd4YXhxdnhmRkJUNmFaT3I4M0Rq?=
 =?utf-8?B?Q0RZSjJsNGgwdjJCUG5BeVlndXB1TkY5TEhvSVpTRkIzaWRYNkptMG1uMExG?=
 =?utf-8?B?aGE2SHE3ci9oNlFhaTh6bFgxQ2RCRUFYMDU0VjBwVGhNQkxuUjR1YmJSTHAv?=
 =?utf-8?B?czl5eVNXRU8vcnFBU1hXK3NCWktJbUU4NUZzTXIrSS9zTWVaZEIvM0NwNGlu?=
 =?utf-8?B?OFBkaWZTNzV0YmlRRitmOU5MK041d0pkSmZlNmh4T3FwWXRDU0ZlTlFScDZL?=
 =?utf-8?B?SG9weWZibVhEbkViSUlhVURraFFTcWFEV3FvMjZVQzZsTGltbFFGVksydUNQ?=
 =?utf-8?B?MzJ4bmVvTEtsSjFRRUxRZ1ZydGtwWnB5VTR4dWxPcG4zWDdLQ3Zqcktrd3hj?=
 =?utf-8?B?NkxKRG1wMUg4ZHdnNnVCY3hkOExYN1RHQU5SNEVlR0cxYzR0S1lUOHdZVDRj?=
 =?utf-8?B?N21MREZxb0NpekxMajVtNXRHMkVKZm82TU5rcFg3S0YrU28wOStmcnY0c1o0?=
 =?utf-8?B?Q3A4QVc4S1BRL0NlbWpYRzFFVVFUbVpnSFdqbHFoRmZYSHdOSUtlZEpQNVAz?=
 =?utf-8?B?MURydS9CYm1NSVE3NlRtNy93bmsxb1lNRVl4WlJTK0tZZERqdzZtT1pZK3pM?=
 =?utf-8?B?Umk1RmVNSFpQNU1FYUtrYjRjOHZQTnh6d2NWUVBXNE4yUzVLOVFSK2JMM1dY?=
 =?utf-8?B?bmFZalpScFpiaDJoWVBFQnNBeWxMSTBZUlUyRjMyYlRJMEYyM3ZGWkQvNDdW?=
 =?utf-8?B?Zld5MkNNeC9sYUFCbnBaOWVBQlhxNlZvVithMUdQM0s5aVhPODc3VGF5cjl0?=
 =?utf-8?B?cCtCcUxmVU5WVGJja0l4bDV3STZnd1VXazVJK05rMXRJUW5qQ3N0aTFNZkQw?=
 =?utf-8?B?ckpsZlk1TkRDbE42QVBpOGpYTTBNMktNQ0FOODhUVEUxTUJUNjZ6d0lsNEFy?=
 =?utf-8?B?NG9kTXl2MWtjZkdKeWIrNHV2NzV0OW5kMmlLeGdJL1lwcTBBODZ4Q2pCMFV2?=
 =?utf-8?B?ZUNkVkFoQ2ZucHBINTVFeGZiVW9HcHBkWnMrK0FnOWo5QzF1VEVrNENGb0o2?=
 =?utf-8?B?VVdIa2EwNklCbVdFdHFBaE5tMGE5Y0FOMVR5ZTRKWWZBMlFLWmNUMXZva1hz?=
 =?utf-8?B?d005Y0h4UGZhaEJQT2xxcWk3KzR1ZEpPeER5U3l0djMwYk9rTUhqMTZ0amxT?=
 =?utf-8?B?Q3VoNjFYWm9IeTU1eFdtcEtVc3k1Y2dlOTROdXpHR3JTN3B3Qm5sNEhFb0tF?=
 =?utf-8?B?d0xQV2tHa1JvZDR3NndzdEhkK0xwRGNEZm10QVd5Sng2YXdFQ2xvaFZRc3Mv?=
 =?utf-8?B?a1k1OVA4Sm9UVVNaLzdyQzhkYmdmRTFWeTRCWTNyWHphTi9sSmpEVEJKQ1U4?=
 =?utf-8?B?SlkxbDFTd1NjUmp4UW9wZVIvd2g4QmFwUkU3SzIvTDh0bDFhUXozOWNNTG53?=
 =?utf-8?Q?6i2qmpt/fvx2ba0w/+zNtVc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTBIaURCSGU5ckFkc01iV0pGaFZSemxZMHJXVDBLWjVXcEl6eTlqUmxFa1J1?=
 =?utf-8?B?K1FnWmpQTk95T2ZhMEh1VmYzcnJnbGkvNHV0aTVFR0FsS2pzMndOMHlMd01o?=
 =?utf-8?B?TmF4cTlKMFByZWFvcFBkTHRVdVVpRGxkcitKNm5oTUFWM1NwTjBzM0RTem56?=
 =?utf-8?B?V1RIWXY1NUZXODdjS0hjaG5ETUZTeGtGRkJmR3RwblZ1UnkvLzZqNTI3eG9Q?=
 =?utf-8?B?M1lZNWJvZDJIT3NPQ09WZFZRV1RINk85K1FuTE5NK1o4Mkxzcmc5ekFFN0lI?=
 =?utf-8?B?c3d2WVZiNmR0dkY3T2xTRUpkZmt0Qm9xNTdwWGc1VVh3ZEtXS294ZWNnS1oy?=
 =?utf-8?B?M3JOTHVPYkN3Z3F3RmdROGRMY0trZGpMVmVGNzRWakx0VTEwRnBxQU1QYmQv?=
 =?utf-8?B?YUtWU3VHZHkyWDFVSkxiQ3ZXOTFRMjZGLytiV0xqcGg5NVBmUFB3YWxBRTMw?=
 =?utf-8?B?MWNjc1YwU1FGbU1KK20wby9EN1pvT2xBVzJwRDN1aGYwRzVlZm9HMkI1dEVy?=
 =?utf-8?B?K0pGaHNZSXlJUm11dlB3UmNIYmdEdVIxUFYxRVptUWZJMDBoVEFzemtwT2xR?=
 =?utf-8?B?SDd3VTd5eUhESHFCWG1malRQeUI4MWk0SDViMXJBdWo5REQ2ZC9NMndmb1My?=
 =?utf-8?B?Y2xucGlxVjNjUWh1TTZxOGtrVW9YY0Vpa2ZPcnZoL0lIUkwrMzFLT2JLcWtx?=
 =?utf-8?B?cXdsWFJZRmRlT3pHU2Y1UHNmTEhqaUhpV1lmK3Z4ZTdicWo1ZnNxSTFvaHgz?=
 =?utf-8?B?SEV1VjA0UTloZEwwQytZWnU0SGJ1Vzc0VmFEcXpXUnRKaWlKdDNqRlFFSEpH?=
 =?utf-8?B?cHBWY2FxTTRDbDBPcE5NTytTYUZ1R3krV3o3bkZTa0hydnB0c2FROEw4NzIr?=
 =?utf-8?B?WmR1T0VSU0pHM3hRazd3MGNmMlZTbDVXb3B3M245NFdCcUJrVWFWb0FrUXRs?=
 =?utf-8?B?REdaeXNaSG1SNjVQSzZoOTZibTFRUHRNNkh5ekJ1UWFHUlpCL3d4TzBHRWxy?=
 =?utf-8?B?VnBKMmpKUnY4TE9ZUHV3ek1GSk1FbjdZQ3R6cEpiU3BDSU0ySnJPNmttNVV4?=
 =?utf-8?B?Q3hMNnl4cFQwaDM0Y1ZoVzREcDlTczhMY1oyRnFxZ0NjWW00dGpzWGRGbVZD?=
 =?utf-8?B?ZjlNVjFHcHk2a3JSM0VDRi9mOHhDcEJYNWlGNEZWZWZhbERWRklPUVhsV0xC?=
 =?utf-8?B?RDZHakp4VHVWMG5Cc01WalFrcWdSZDBlQUpUZkFpR3c0TTUzRnpzak9KRW9Y?=
 =?utf-8?B?S0ZwQnNYUnByUmpOMGt6ZlE2MDFVakhHVGtMcFV3eEZySS8wMHJzWEdrYytv?=
 =?utf-8?B?eXcwNW5CbmQvWFhpMkdqRkVnem81VXZoTVAxUGtDNFM2aE0yTkJwVityRDdt?=
 =?utf-8?B?c05kYjduTzNDUVJCNVkzVm9yMnRaQ3IyYnBnQkEyc2RMVEFpWnMzRWQ2WjVU?=
 =?utf-8?B?VW8yNHp6YW14RVlSaCtQS3N6RUVMYzFJbzBOaEgzaCtvaG9OcFBRbkRId1hK?=
 =?utf-8?B?Sm04V2k0dXM2ZFk1Z1FRNUpWN3FCV0haT1AraTBycm9kNlU3NUYrVEVkVFBU?=
 =?utf-8?B?VUVJS0sxeWEzQkpaQ1BKTWRlOFRaWmkwVitlNW81UnZ4QVJZMWM5WkpyUkc0?=
 =?utf-8?B?dTZ3SHFUUGVUby9Ga0ErSjQ5aFo1VmxzQ2tTc0REemhBZGcyWm5DSWkxMmNB?=
 =?utf-8?B?cTd0MzV1d1NER1FyMlMyM0V4N0FrOE1SME4wK1Z1OGhiaU5ZekZiN2dYTzlr?=
 =?utf-8?B?UkEvUUVaUUNZQnpmeW42enRVbDBCcW40M2dDQkNzbnRLMXRWNUdOUDRUak1n?=
 =?utf-8?B?VDRVdTNnRk96OTdNTUtJYi94S3UxUlpzRmJ3QXRWakR1SlZaWG0rajROK1RV?=
 =?utf-8?B?czN0NllqVjlucGRrZHp1Qjd3NEJXc3Rud0dpdmtyZi9uVWFtamRVRHlFTXJJ?=
 =?utf-8?B?NVFLUVZES09NWVJQeHdVcEx5K0MrRUdUNmU0VWRnejRTdU84NW1NRWEzRk54?=
 =?utf-8?B?UTdtOTJHODJYOVNIcThEM1lrdURsWHpYU09ueS9zMW9qbUpKeG5GL3BFTzZF?=
 =?utf-8?B?Z3VLRTFRZ3RrdVNRQUM1cmZQOU55OVJuV1RaZmxPblRuWFo1c281MDJJMGNF?=
 =?utf-8?B?QklBSHhWK09lNTlDN0J3TXdVL2hkenlHSjNJTDhQQWNGME9RWEJXQ20xaFd6?=
 =?utf-8?B?R2kwRzJSRE0yZUZGanlLQW1CWGxFZnp2SktHKzFIT3FhdEVmTVRwSzFwWUNo?=
 =?utf-8?B?T1VZYVk1ZW1uTzFXaEViWG1lUGdtVzRQdSt2eW8wbXZGdnNobHlIcU9CaHhG?=
 =?utf-8?B?a3RYZGl1bzQ1S1hZSkg0eGNROVF3UEdVc2RSVWRGcDZhdUppc1Nkdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeec9a2b-3dfa-4d4b-37ad-08de70670281
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 10:01:25.8497 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9RjMSQ+k89e0B6q44sGZLIMo4u01yLs7p/ajKURKvvSIHpma1eaaP2vefrK+WOTG01eByrCJmiV98wyGp3eiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA58A7783B
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EBCD516694E
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxOSBGZWJydWFyeSAyMDI2
IDUuMDMNCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UkU6IFtQQVRDSCAwMy8xOV0gZHJtL2k5MTUvbHRfcGh5OiBBZGQgUExMIGluZm9ybWF0aW9uIGZv
ciB4ZTNscGRwDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRDSCAwMy8xOV0gZHJtL2k5MTUvbHRfcGh5
OiBBZGQgUExMIGluZm9ybWF0aW9uIGZvciB4ZTNscGRwDQo+IA0KPiAqeGUzcGxwZA0KPiANCj4g
Pg0KPiA+IFN0YXJ0IGJyaW5naW5nIGluIHhlM2xwZHAgYXMgcGFydCBvZiBkcGxsIGZyYW1ld29y
ay4gVGhlIHdvcmsgaXMgc3RhcnRlZCBieQ0KPiANCj4gKnhlM3BscGQNClR5cG9zISBJIHdpbGwg
Zml4IHRoZXNlLg0KDQo+IA0KPiA+IGFkZGluZyBQTEwgaW5mb3JtYXRpb24gYW5kIHJlbGF0ZWQg
ZnVuY3Rpb24gaG9va3MuDQo+ID4NCj4gPiBCU3BlYzogNzQzMDQNCj4gPg0KPiANCj4gTm8gTGlu
ZSBiZXR3ZWVuIHRoZSBCc3BlYyBsaW5rIGFuZCBTaWduZWQtb2ZmLWJ5DQoNCk9rLg0KDQpUaGFu
a3MhDQpNaWthDQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0KPiA+IFNpZ25l
ZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE5ICsr
KysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYw0KPiA+IGluZGV4IGYzNWE5MjUyZjRlMS4uNDE4NWM4ZTEzNmRhIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+
IEBAIC00NTcxLDYgKzQ1NzEsMjUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21n
ciBtdGxfcGxsX21nciA9IHsNCj4gPiAgCS5jb21wYXJlX2h3X3N0YXRlID0gbXRsX2NvbXBhcmVf
aHdfc3RhdGUsICB9Ow0KPiA+DQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9m
dW5jcyB4ZTNwbHBkX3BsbF9mdW5jcyA9IHsgfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgZHBsbF9pbmZvIHhlM3BscGRfcGxsc1tdID0gew0KPiA+ICsJeyAubmFtZSA9ICJEUExM
IDAiLCAuZnVuY3MgPSAmeGUzcGxwZF9wbGxfZnVuY3MsIC5pZCA9DQo+ID4gRFBMTF9JRF9JQ0xf
RFBMTDAsIH0sDQo+ID4gKwl7IC5uYW1lID0gIkRQTEwgMSIsIC5mdW5jcyA9ICZ4ZTNwbHBkX3Bs
bF9mdW5jcywgLmlkID0NCj4gPiBEUExMX0lEX0lDTF9EUExMMSwgfSwNCj4gPiArCS8qIFRPRE86
IEFkZCBUQlQgKi8NCj4gPiArCXsgLm5hbWUgPSAiVEMgUExMIDEiLCAuZnVuY3MgPSAmeGUzcGxw
ZF9wbGxfZnVuY3MsIC5pZCA9DQo+ID4gRFBMTF9JRF9JQ0xfTUdQTEwxLCB9LA0KPiA+ICsJeyAu
bmFtZSA9ICJUQyBQTEwgMiIsIC5mdW5jcyA9ICZ4ZTNwbHBkX3BsbF9mdW5jcywgLmlkID0NCj4g
PiBEUExMX0lEX0lDTF9NR1BMTDIsIH0sDQo+ID4gKwl7IC5uYW1lID0gIlRDIFBMTCAzIiwgLmZ1
bmNzID0gJnhlM3BscGRfcGxsX2Z1bmNzLCAuaWQgPQ0KPiA+IERQTExfSURfSUNMX01HUExMMywg
fSwNCj4gPiArCXsgLm5hbWUgPSAiVEMgUExMIDQiLCAuZnVuY3MgPSAmeGUzcGxwZF9wbGxfZnVu
Y3MsIC5pZCA9DQo+ID4gRFBMTF9JRF9JQ0xfTUdQTEw0LCB9LA0KPiA+ICsJe30NCj4gPiArfTsN
Cj4gPiArDQo+ID4gK19fbWF5YmVfdW51c2VkDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZHBsbF9tZ3IgeGUzcGxwZF9wbGxfbWdyID0gew0KPiA+ICsJLmRwbGxfaW5mbyA9IHhlM3Bs
cGRfcGxscywNCj4gPiArfTsNCj4gPiArDQo+ID4gIC8qKg0KPiA+ICAgKiBpbnRlbF9kcGxsX2lu
aXQgLSBJbml0aWFsaXplIERQTExzDQo+ID4gICAqIEBkaXNwbGF5OiBpbnRlbF9kaXNwbGF5IGRl
dmljZQ0KPiA+IC0tDQo+ID4gMi40My4wDQoNCg==
